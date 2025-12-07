@interface IMDServiceSession
+ (id)__allServiceSessionsWeakReferenceArray;
+ (id)existingServiceSessionForService:(id)service;
+ (void)__registerNewServiceSession:(id)session;
+ (void)initialize;
- (BOOL)_alwaysAllowMarkingSent;
- (BOOL)_canHandleTransferAccept:(id)accept;
- (BOOL)_canInsertDisplayNameUpdateItemForChat:(id)chat;
- (BOOL)_canMarkMessageAsSent:(id)sent;
- (BOOL)_canUpgradeExistingMessageItem:(id)item replacementReplicatedMessageItem:(id)messageItem;
- (BOOL)_didReceiveMessageDeliveryReceiptForMessageID:(id)d attempts:(int64_t)attempts date:(id)date account:(id)account;
- (BOOL)_isMessageSWYSpamMessage:(id)message inChat:(id)chat;
- (BOOL)_processesNetworkEvents;
- (BOOL)_shouldConvergeChatParticipants:(id)participants withHandleInfo:(id)info;
- (BOOL)_shouldDropSendingMessage;
- (BOOL)_shouldShowSWYQuickActionForMessage:(id)message outAppName:(id *)name outBundleID:(id *)d;
- (BOOL)_storeMessage:(id)message chatIdentifier:(id)identifier localChat:(id)chat style:(unsigned __int8)style account:(id)account messagesToPostArray:(id)array;
- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s;
- (BOOL)accountNeedsLogin;
- (BOOL)accountNeedsPassword;
- (BOOL)accountShouldBeAlwaysLoggedIn;
- (BOOL)allowedAsChild;
- (BOOL)didReceiveMessageDeliveryReceiptForMessageID:(id)d date:(id)date;
- (BOOL)equalID:(id)d andID:(id)iD;
- (BOOL)hasValidDowngradeRequestForHandleID:(id)d;
- (BOOL)isActive;
- (BOOL)isAwaitingStorageTimer;
- (BOOL)isReplicating;
- (BOOL)messageServiceNamed:(id)named canProcessMessagesFromServiceNamed:(id)serviceNamed;
- (BOOL)networkConditionsAllowLogin;
- (BOOL)readReceiptsGloballyEnabled;
- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)ds;
- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)d;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds;
- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)d;
- (BOOL)sendNicknameUpdatesToPeerDevices:(id)devices toDestinations:(id)destinations;
- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles;
- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)dictionary;
- (BOOL)shouldSendReadReceiptsForChat:(id)chat style:(unsigned __int8)style;
- (Class)spotlightItemRecorderClass;
- (IMDAccount)replicationAccount;
- (IMDService)replicationService;
- (IMDServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (IMDServiceSession)mainSession;
- (IMDServiceSession)replicationProxy;
- (NSArray)allBuddies;
- (NSArray)replicationSessions;
- (NSDictionary)buddyProperties;
- (NSDictionary)registrationAlertInfo;
- (NSString)displayName;
- (id)_autoReplier;
- (id)_chatForMemberStatusChange:(id)change;
- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)dictionary;
- (id)_collaborationMessageProcessingQueue;
- (id)_determineResultMessageForInput:(id)input output:(id)output original:(id)original;
- (id)_downgradableServiceNames;
- (id)_fetchMessagesFromChat:(id)chat onService:(id)service numberOfMessages:(unint64_t)messages;
- (id)_guidForChat:(id)chat style:(unsigned __int8)style;
- (id)_predominantServiceForChat:(id)chat usingMessageThreshold:(unint64_t)threshold;
- (id)_revokeSiblingMessagesForReplication:(id)replication;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d;
- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d originalGroupID:(id)iD;
- (id)broadcaster;
- (id)broadcasterForACConferenceListeners;
- (id)broadcasterForAVConferenceListeners;
- (id)broadcasterForChatListeners;
- (id)broadcasterForChatListenersWithBlackholeStatus:(BOOL)status;
- (id)broadcasterForChatObserverListeners;
- (id)broadcasterForCollaborationListeners;
- (id)broadcasterForNotificationsListeners;
- (id)broadcasterForVCConferenceListeners;
- (id)canonicalFormOfID:(id)d;
- (id)canonicalFormOfID:(id)d withIDSensitivity:(int)sensitivity;
- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style;
- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account updatingAccount:(BOOL)updatingAccount;
- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style updatingAccount:(BOOL)account;
- (id)chatForItemWithGUID:(id)d;
- (id)deleteCommandDictionaryWithIncomingDictionary:(id)dictionary inferredRecoverableDeleteForLegacyCommandsWithDate:(id)date;
- (id)dictionaryForHandlesToGUIDsFromHandleInfo:(id)info;
- (id)didChangeMemberStatus:(id)status;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1 messageTime:(id)self2;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1 messageTime:(id)self2 messageID:(id)self3 silently:(BOOL)self4;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1 messageTime:(id)self2 silently:(BOOL)self3;
- (id)didChangeMemberStatus:(int)status forHandle:(id)handle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style;
- (id)existingChatForID:(id)d;
- (id)existingChatsForGroupID:(id)d;
- (id)existingChatsForIDs:(id)ds style:(unsigned __int8)style;
- (id)groupIDForChat:(id)chat;
- (id)itemWithGUID:(id)d;
- (id)localPropertiesOfBuddy:(id)buddy;
- (id)localProperty:(id)property ofBuddy:(id)buddy;
- (id)loginID;
- (id)otcUtilities;
- (id)outgoingReplicationCallerIDForChat:(id)chat;
- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts;
- (id)property:(id)property ofBuddy:(id)buddy;
- (id)sessionSpecificTransferIDForTransferID:(id)d;
- (int)registrationError;
- (int64_t)_incomingMessageIndexReason;
- (int64_t)maxSizePerAttachmentWithCount:(int)count forChat:(id)chat;
- (int64_t)registrationStatus;
- (unint64_t)capabilities;
- (unint64_t)pendingReadReceiptFromStorageCount;
- (void)__forceSetLoginStatus:(unint64_t)status oldStatus:(unint64_t)oldStatus message:(id)message reason:(int)reason properties:(id)properties account:(id)account;
- (void)_abandonPWFetcher;
- (void)_abandonSystemProxySettingsFetcher;
- (void)_autoReconnectTimer:(id)timer;
- (void)_blastDoorProcessingWithIMMessageItem:(id)item chat:(id)chat account:(id)account fromToken:(id)token fromIDSID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier participants:(id)self0 groupName:(id)self1 groupID:(id)self2 isFromMe:(BOOL)self3 isLastFromStorage:(BOOL)self4 isFromStorage:(BOOL)self5 batchID:(id)self6 hideLockScreenNotification:(BOOL)self7 wantsCheckpointing:(BOOL)self8 needsDeliveryReceipt:(id)self9 messageBalloonPayloadAttachmentDictionary:(id)dictionary inlineAttachments:(id)attachments attributionInfoArray:(id)array nicknameDictionary:(id)nicknameDictionary availabilityVerificationRecipientChannelIDPrefix:(id)prefix availabilityVerificationRecipientEncryptionValidationToken:(id)validationToken availabilityOffGridRecipientSubscriptionValidationToken:(id)subscriptionValidationToken availabilityOffGridRecipientEncryptionValidationToken:(id)encryptionValidationToken idsService:(id)service messageContext:(id)context isFromTrustedSender:(BOOL)item0 isFromSnapTrustedSender:(BOOL)item1 wasContextUsed:(BOOL)item2 isBlackholed:(BOOL)item3 shouldTrackForRequery:(BOOL)item4 isFiltered:(int64_t)item5 spamDetectionSource:(int64_t)item6 completionBlock:(id)item7;
- (void)_calculateHandleInfoOverrideIfPermittedForChatIdentifier:(id)identifier style:(unsigned __int8)style completion:(id)completion;
- (void)_callMonitorStateChanged:(id)changed;
- (void)_checkMessageForENURL:(id)l;
- (void)_clearAutoReconnectTimer;
- (void)_clearDowngradeMarkersForChat:(id)chat;
- (void)_clearNetworkMonitor;
- (void)_clearOffGridFlagForMessagesInChatWithChatIdentifier:(id)identifier account:(id)account;
- (void)_configureAccountInformationOnItem:(id)item withAccount:(id)account;
- (void)_configureIdentifierForOutgoingItem:(id)item withIdentifier:(id)identifier withStyle:(unsigned __int8)style;
- (void)_configureSessionInformationOnItem:(id)item toChat:(id)chat withStyle:(unsigned __int8)style forAccount:(id)account;
- (void)_configureSyndicationRangesForMessage:(id)message forChat:(id)chat withSyndicationStatus:(int64_t)status;
- (void)_configureTimeOnOutgoingItem:(id)item;
- (void)_data_connection_readyWithAccount:(id)account;
- (void)_didReceiveMessagePlayedForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessageReadForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block;
- (void)_didReceiveMessageSavedForMessageID:(id)d ofType:(int64_t)type forChat:(id)chat fromHandle:(id)handle fromMe:(BOOL)me date:(id)date attempts:(int64_t)attempts account:(id)self0 completionBlock:(id)self1;
- (void)_didReceivePotentialCollaborationMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)_doLoginIgnoringProxy:(BOOL)proxy;
- (void)_doLoginIgnoringProxy:(BOOL)proxy withAccount:(id)account;
- (void)_expireStateTimerFired;
- (void)_handleExpireStateDictionary:(id)dictionary;
- (void)_handleFileTransferAccepted:(id)accepted;
- (void)_handleFileTransferBatchAccepted:(id)accepted;
- (void)_handleRoutingWithDictionary:(id)dictionary;
- (void)_handleScheduledMessageFailure:(id)failure;
- (void)_handleWatchdogWithDictionary:(id)dictionary;
- (void)_login_checkUsernameAndPasswordWithAccount:(id)account;
- (void)_login_serverSettingsReadyWithAccount:(id)account;
- (void)_login_usernameAndPasswordReadyWithAccount:(id)account;
- (void)_managedPrefsNotification:(id)notification;
- (void)_mapRoomChatToGroupChat:(id *)chat style:(unsigned __int8 *)style;
- (void)_markChatAsDowngraded:(id)downgraded;
- (void)_markFromStorageIfNeeded:(id)needed messageGUID:(id)d;
- (void)_messageStoreCompletion:(BOOL)completion inputMessage:(id)message outputMessage:(id)outputMessage originalMessage:(id)originalMessage completionBlock:(id)block;
- (void)_networkChanged:(id)changed;
- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success;
- (void)_processNetworkMonitorUpdate;
- (void)_processPotentialNetworkChange;
- (void)_reconnectIfNecessary;
- (void)_reconnectIfNecessaryWithAccount:(id)account;
- (void)_removeChatGuidFromCoreDuet:(id)duet;
- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier;
- (void)_resetTransferToTapDownloadState:(id)state;
- (void)_routingTimerFired;
- (void)_setAutoReconnectTimer;
- (void)_setOutgoingFlagsOnMessage:(id)message;
- (void)_setPendingNetworkMonitorUpdate;
- (void)_setReplyGUIDOnMessage:(id)message forChat:(id)chat;
- (void)_setSortIDForMessage:(id)message forChat:(id)chat;
- (void)_storeTranscriptItem:(id)item inChat:(id)chat account:(id)account;
- (void)_updateExpireStateForMessageGUID:(id)d;
- (void)_updateExpireStateTimerWithInterval:(double)interval;
- (void)_updateInputMessage:(id)message forExistingMessage:(id)existingMessage;
- (void)_updateLastMessageTimeStampForChat:(id)chat broadcaster:(id)broadcaster;
- (void)_updateNetworkMonitorFromAccountDefaultsIgnoringProxy:(BOOL)proxy;
- (void)_updateNetworkMonitorWithRemoteHost:(id)host;
- (void)_updateRoutingForMessageGUID:(id)d chatGUID:(id)iD error:(unsigned int)error account:(id)account;
- (void)_updateRoutingTimerWithInterval:(double)interval;
- (void)_updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:(id)identifier account:(id)account;
- (void)_updateWatchdogForMessageGUID:(id)d;
- (void)_updateWatchdogTimerWithInterval:(double)interval;
- (void)_watchdogTimerFired;
- (void)_wentOfflineWithAccount:(id)account;
- (void)addAccount:(id)account;
- (void)addDelegate:(id)delegate;
- (void)appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)autoLogin;
- (void)autoReconnect;
- (void)autoReconnectWithAccount:(id)account;
- (void)autoReplier:(id)replier generatedAutoReplyText:(id)text forChat:(id)chat;
- (void)autoReplier:(id)replier receivedUrgentRequestForMessages:(id)messages;
- (void)autoReplier:(id)replier sendDeliveredQuietlyReceiptForMessages:(id)messages forIncomingMessageFromIDSID:(id)d inChat:(id)chat withWillSendToDestinationsHandler:(id)handler;
- (void)autoReplier:(id)replier sendNotifyRecipientCommandForMessages:(id)messages inChat:(id)chat;
- (void)beginBuddyChanges;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
- (void)cancelScheduledMessageWithGUID:(id)d;
- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type;
- (void)canonicalizeChatIdentifier:(id *)identifier style:(unsigned __int8 *)style;
- (void)changeLocalProperty:(id)property ofBuddy:(id)buddy to:(id)to;
- (void)changeProperty:(id)property ofBuddy:(id)buddy to:(id)to;
- (void)clearDowngradeRequestForHandleID:(id)d;
- (void)clearLocalProperties;
- (void)clearPropertiesOfBuddy:(id)buddy;
- (void)closeSessionForChat:(id)chat chatGUID:(id)d didDeleteConversation:(BOOL)conversation style:(unsigned __int8)style;
- (void)dealloc;
- (void)decrementPendingReadReceiptFromStorageCount;
- (void)deleteAllDataWithCompletionHandler:(id)handler;
- (void)deleteExistingMessageAwaitingReplacementWithFallbackHash:(id)hash chatIdentifier:(id)identifier;
- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d handleInfo:(id)info account:(id)account isBlackholed:(BOOL)blackholed;
- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d handleInfo:(id)info category:(int64_t)category account:(id)account isBlackholed:(BOOL)self0 spamDetectionSource:(int64_t)self1;
- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD handleInfo:(id)info category:(int64_t)category spamExtensionName:(id)self0;
- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID handleInfo:(id)self0;
- (void)didJoinReadOnlyChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d handleInfo:(id)info category:(int64_t)category spamExtensionName:(id)extensionName;
- (void)didLeaveChat:(id)chat style:(unsigned __int8)style account:(id)account messageID:(id)d;
- (void)didReceiveBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account;
- (void)didReceiveDisplayNameChange:(id)change fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)didReceiveDisplayNameChange:(id)change guid:(id)guid fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)didReceiveError:(unsigned int)error forMessageID:(id)d forceError:(BOOL)forceError;
- (void)didReceiveError:(unsigned int)error forMessageID:(id)d forceError:(BOOL)forceError account:(id)account;
- (void)didReceiveErrorMessage:(id)message forChat:(id)chat style:(unsigned __int8)style;
- (void)didReceiveInvitation:(id)invitation forChat:(id)chat style:(unsigned __int8)style;
- (void)didReceiveMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d;
- (void)didReceiveMessage:(id)message forChat:(id)chat style:(unsigned __int8)style fromIDSID:(id)d;
- (void)didReceiveMessageEditingSendFailure:(unsigned int)failure forMessageGUID:(id)d partIndex:(int64_t)index editType:(unint64_t)type;
- (void)didReceiveMessageEditingUnsupportedHandleIDs:(id)ds forMessageGUID:(id)d partIndex:(int64_t)index previousMessage:(id)message backwardCompatibilityMessageGUID:(id)iD;
- (void)didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block;
- (void)didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block;
- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion;
- (void)didReceiveOffGridStatus:(BOOL)status forID:(id)d messageGUID:(id)iD account:(id)account;
- (void)didReceiveReplaceMessageID:(int)d forChat:(id)chat style:(unsigned __int8)style;
- (void)didSendBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account completionBlock:(id)block;
- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d;
- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d account:(id)account;
- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage;
- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style forceDate:(id)date;
- (void)didSendMessageEditForMessageGUID:(id)d;
- (void)didSendMessagePlayedReceiptForMessageID:(id)d;
- (void)didSendMessagePlayedReceiptForMessageID:(id)d account:(id)account;
- (void)didSendMessageReadReceiptForMessageID:(id)d;
- (void)didSendMessageReadReceiptForMessageID:(id)d account:(id)account;
- (void)didSendMessageSavedReceiptForMessageID:(id)d;
- (void)didSendMessageSavedReceiptForMessageID:(id)d account:(id)account;
- (void)didSendNotifyRecipientCommandForMessageID:(id)d;
- (void)didSendNotifyRecipientCommandForMessageID:(id)d account:(id)account;
- (void)didSendSyndicationActionItem:(id)item forChat:(id)chat;
- (void)didStartSendingMessage:(id)message forChat:(id)chat style:(unsigned __int8)style;
- (void)didStartSendingMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style context:(id)context;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d lastAddressedHandle:(id)handle handleInfo:(id)info;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD handleInfo:(id)self0;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)self0 handleInfo:(id)self1;
- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)self0 handleInfo:(id)self1 account:(id)self2 category:(int64_t)self3 spamExtensionName:(id)self4 isBlackholed:(BOOL)self5 spamDetectionSource:(int64_t)self6;
- (void)didUpdateChatStatusWithContext:(id)context;
- (void)disallowReconnection;
- (void)downgradeRequestedForHandleID:(id)d expirationDate:(id)date preferredService:(id)service;
- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)endBuddyChanges;
- (void)fallbackToDownloadIfPossible:(id)possible transfer:(id)transfer;
- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)ds;
- (void)incrementPendingReadReceiptFromStorageCount;
- (void)invitePersonInfo:(id)info withMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)login;
- (void)loginWithAccount:(id)account;
- (void)logout;
- (void)logoutServiceSessionWithAccount:(id)account;
- (void)logoutWithAccount:(id)account;
- (void)markBuddiesAsChanged:(id)changed;
- (void)markItemFailedWithGUID:(id)d errorCode:(unsigned int)code;
- (void)markItemForOffGridRelay:(id)relay inChat:(id)chat;
- (void)networkMonitorDidUpdate:(id)update;
- (void)noteBadPassword;
- (void)noteItemFromStorage:(id)storage;
- (void)noteItemProcessed:(BOOL)processed batchContext:(id)context usingService:(id)service;
- (void)noteLastItemFromStorage:(id)storage;
- (void)noteLastItemProcessed;
- (void)noteSuppressedMessageUpdate:(id)update;
- (void)notifyDidSendMessageID:(id)d account:(id)account shouldNotify:(BOOL)notify wasDowngraded:(BOOL)downgraded wasInterworked:(BOOL)interworked;
- (void)notifyDidSendMessageID:(id)d shouldNotify:(BOOL)notify;
- (void)overwritePerChatReadReceiptSettingsWithGlobalValue:(BOOL)value;
- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog account:(id)account didReplaceMessageBlock:(id)block completionBlock:(id)completionBlock;
- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog completionBlock:(id)block;
- (void)receiveIncomingBlastdoorBackgroundCommand:(id)command for:(id)for sender:(id)sender senderContext:(id)context;
- (void)recoverChatsForCommandDictionary:(id)dictionary;
- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (void)refreshServiceCapabilities;
- (void)registerChat:(id)chat style:(unsigned __int8)style;
- (void)registerChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID handleInfo:(id)self0 account:(id)self1 isBlackholed:(BOOL)self2;
- (void)relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only;
- (void)removeAccount:(id)account;
- (void)removeDelegate:(id)delegate;
- (void)renewTTLForScheduledAttachmentTransfer:(id)transfer;
- (void)requestGroupPhotoIfNecessary:(id)necessary incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationTime:(id)time toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)requestTranscriptBackgroundIfNecessary:(id)necessary toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh;
- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d;
- (void)revokeSentMessage:(id)message inChat:(id)chat;
- (void)sendDeleteCommand:(id)command forChatGUID:(id)d;
- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler;
- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account;
- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0;
- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage retractingPartIndexes:(id)indexes toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendHQAttachmentsForMessage:(id)message toChatID:(id)d style:(unsigned __int8)style;
- (void)sendIncomingRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)sendLazuliSpamReport:(id)report isBot:(BOOL)bot spamType:(unint64_t)type;
- (void)sendLocationSharingInfo:(id)info toID:(id)d completionBlock:(id)block;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style destinationHandles:(id)handles;
- (void)sendNicknameInfoToChatID:(id)d;
- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only;
- (void)sendRelayDeliveryReceiptForMessageID:(id)d toChat:(id)chat;
- (void)sendRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style;
- (void)sendReportNotJunkMessageGUID:(id)d;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style;
- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers;
- (void)sentDowngradeRequestToHandleID:(id)d fromID:(id)iD;
- (void)serviceSessionDidLoginWithAccount:(id)account;
- (void)serviceSessionDidLogoutWithAccount:(id)account;
- (void)serviceSessionDidLogoutWithMessage:(id)message reason:(int)reason properties:(id)properties account:(id)account;
- (void)sessionDidBecomeActive;
- (void)sessionWillBecomeInactiveWithAccount:(id)account;
- (void)setPendingReadReceiptFromStorageCount:(unint64_t)count;
- (void)setRegistrationStatus:(int64_t)status error:(int)error alertInfo:(id)info;
- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh;
- (void)storeItem:(id)item toChat:(id)chat style:(unsigned __int8)style;
- (void)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block shouldStoreBlock:(id)storeBlock didStoreBlock:(id)didStoreBlock block:(id)a8;
- (void)storeMessages:(id)messages messagesToWithdraw:(id)withdraw messagesToPost:(id)post chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account fromIDSID:(id)d;
- (void)systemProxySettingsFetcher:(id)fetcher retrievedAccount:(id)account password:(id)password;
- (void)systemProxySettingsFetcher:(id)fetcher retrievedHost:(id)host port:(unsigned __int16)port protocol:(int64_t)protocol;
- (void)trackTimeSensitiveContentInMessageItem:(id)item chat:(id)chat;
- (void)updateBalloonPayload:(id)payload attachments:(id)attachments bundleID:(id)d forMessage:(id)message;
- (void)updateChatGUID:(id)d withLastReadTimeStamp:(int64_t)stamp withLastSeenMessageGUID:(id)iD fromMe:(BOOL)me;
- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID;
- (void)useChatRoom:(id)room forGroupChatIdentifier:(id)identifier;
- (void)userNotificationDidFinish:(id)finish;
- (void)willMoveChatToRecentlyDeleted:(id)deleted;
- (void)willRemoveChat:(id)chat;
@end

@implementation IMDServiceSession

- (unint64_t)capabilities
{
  service = [(IMDServiceSession *)self service];
  v4 = [service supportsCapability:*MEMORY[0x277D1A548]];

  if (v4)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  service2 = [(IMDServiceSession *)self service];
  v7 = [service2 supportsCapability:*MEMORY[0x277D1A580]];

  if (v7)
  {
    v5 |= 0x400uLL;
  }

  service3 = [(IMDServiceSession *)self service];
  v9 = [service3 supportsCapability:*MEMORY[0x277D1A598]];

  if (v9)
  {
    v5 |= 0x100uLL;
  }

  service4 = [(IMDServiceSession *)self service];
  v11 = [service4 supportsCapability:*MEMORY[0x277D1A538]];

  if (v11)
  {
    v5 |= 0x30uLL;
  }

  service5 = [(IMDServiceSession *)self service];
  v13 = [service5 supportsCapability:*MEMORY[0x277D1A550]];

  if (v13)
  {
    v5 |= 0x400000000000uLL;
  }

  service6 = [(IMDServiceSession *)self service];
  v15 = [service6 supportsCapability:*MEMORY[0x277D1A5A8]];

  if (v15)
  {
    v16 = v5 | 0x800000000000;
  }

  else
  {
    v16 = v5;
  }

  service7 = [(IMDServiceSession *)self service];
  v18 = [service7 supportsCapability:*MEMORY[0x277D1A588]];

  if (v18)
  {
    return v16 | 4;
  }

  else
  {
    return v16;
  }
}

- (NSDictionary)buddyProperties
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_buddies copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

+ (id)__allServiceSessionsWeakReferenceArray
{
  if (qword_281421408 != -1)
  {
    sub_22B7D0258();
  }

  array = [MEMORY[0x277CBEB18] array];
  v3 = qword_281421410;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B50EC44;
  v8[3] = &unk_2787032E8;
  v4 = array;
  v9 = v4;
  [v3 enumerateObjectsUsingBlock:v8];
  if ([v4 count])
  {
    [qword_281421410 removeObjectsInArray:v4];
  }

  v5 = qword_281421410;
  v6 = qword_281421410;

  return v5;
}

+ (void)__registerNewServiceSession:(id)session
{
  sessionCopy = session;
  __allServiceSessionsWeakReferenceArray = [self __allServiceSessionsWeakReferenceArray];
  v5 = [MEMORY[0x277CFB990] weakRefWithObject:sessionCopy];

  [__allServiceSessionsWeakReferenceArray addObject:v5];
}

+ (id)existingServiceSessionForService:(id)service
{
  serviceCopy = service;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_22B4D7630;
  v16 = sub_22B4D7870;
  v17 = 0;
  allServiceSessions = [self allServiceSessions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B50EE84;
  v9[3] = &unk_278703330;
  v6 = serviceCopy;
  v10 = v6;
  v11 = &v12;
  [allServiceSessions enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (IMDServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  v53 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  v46.receiver = self;
  v46.super_class = IMDServiceSession;
  v12 = [(IMDServiceSession *)&v46 init];
  if (v12)
  {
    [MEMORY[0x277D192E8] enableNotifications];
    if (sessionCopy)
    {
      v13 = sessionCopy;
    }

    else
    {
      v13 = v12;
    }

    objc_storeWeak(&v12->_mainSession, v13);
    pwRequestID = v12->_pwRequestID;
    v12->_pwRequestID = 0;

    v12->_buddyChangeLevel = 0;
    v12->_saveKeychainPassword = 0;
    v12->_badPass = 0;
    v15 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v12->_lock;
    v12->_lock = v15;

    [(NSRecursiveLock *)v12->_lock lock];
    reconnectTimer = v12->_reconnectTimer;
    v12->_reconnectTimer = 0;

    if (sessionCopy)
    {
      account = [(IMDServiceSession *)sessionCopy account];
      p_account = &v12->_account;
      account = v12->_account;
      v12->_account = account;

      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      accounts = v12->_accounts;
      v12->_accounts = v21;

      [(NSMutableArray *)v12->_accounts addObject:accountCopy];
      service = [(IMDServiceSession *)sessionCopy service];
      service = v12->_service;
      v12->_service = service;

      v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
      buddies = v12->_buddies;
      v12->_buddies = v25;

      objc_storeWeak(&v12->_replicationAccount, accountCopy);
      objc_storeWeak(&v12->_replicationService, serviceCopy);
    }

    else
    {
      p_account = &v12->_account;
      objc_storeStrong(&v12->_account, account);
      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = v12->_accounts;
      v12->_accounts = v27;

      [(NSMutableArray *)v12->_accounts addObject:accountCopy];
      objc_storeStrong(&v12->_service, service);
      v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:14];
      v30 = v12->_buddies;
      v12->_buddies = v29;
    }

    service2 = [(IMDServiceSession *)v12 service];
    v12->_shouldReconnect = [service2 wantsNullHostReachability];

    if (v12->_shouldReconnect)
    {
      [(IMDServiceSession *)v12 _setAutoReconnectTimer];
    }

    [(NSRecursiveLock *)v12->_lock unlock];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__managedPrefsNotification_ name:@"__kIMDManagedPreferencesChangedNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v12 selector:sel__networkChanged_ name:*MEMORY[0x277D19178] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v12 selector:sel__callMonitorStateChanged_ name:*MEMORY[0x277D190D8] object:0];

    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] setWatchesSystemLockState:1];

    mEMORY[0x277D192A8]2 = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8]2 addListener:v12];

    if (((sessionCopy == 0) & [serviceCopy supportsOneSessionForAllAccounts]) == 1)
    {
      [objc_opt_class() __registerNewServiceSession:v12];
    }

    v37 = [[IMDServiceAttachmentController alloc] initWithSession:v12];
    baseAttachmentController = v12->_baseAttachmentController;
    v12->_baseAttachmentController = v37;

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    serviceSessionDelegates = v12->_serviceSessionDelegates;
    v12->_serviceSessionDelegates = v39;

    if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        accountID = [*p_account accountID];
        internalName = [serviceCopy internalName];
        accountDefaults = [accountCopy accountDefaults];
        *buf = 138412802;
        v48 = accountID;
        v49 = 2112;
        v50 = internalName;
        v51 = 2112;
        v52 = accountDefaults;
        _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "initWithAccount: %@       service:%@  defaults: %@", buf, 0x20u);
      }
    }
  }

  return v12;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  [serviceSessionDelegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  [serviceSessionDelegates removeObject:delegateCopy];
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "DEALLOC: %@", buf, 0xCu);
    }
  }

  mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
  [mEMORY[0x277D192D8] removeListener:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:0 object:0];

  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_login object:0];
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
  [(IMDServiceSession *)self _abandonPWFetcher];
  [(IMDServiceSession *)self _clearAutoReconnectTimer];
  [(IMDServiceSession *)self _clearNetworkMonitor];
  [(NSRecursiveLock *)self->_lock lock];
  [(IMTimer *)self->_messageRoutingTimer invalidate];
  [(IMTimer *)self->_messageExpireStateTimer invalidate];
  [(IMTimer *)self->_messageWatchdogTimer invalidate];
  [(IMDAutoReplying *)self->_messageAutoReplier setReplyDelegate:0];
  [(NSRecursiveLock *)self->_lock unlock];
  v7.receiver = self;
  v7.super_class = IMDServiceSession;
  [(IMDServiceSession *)&v7 dealloc];
}

- (BOOL)accountNeedsLogin
{
  service = [(IMDServiceSession *)self service];
  needsLogin = [service needsLogin];

  return needsLogin;
}

- (BOOL)accountNeedsPassword
{
  service = [(IMDServiceSession *)self service];
  needsPassword = [service needsPassword];

  return needsPassword;
}

- (BOOL)accountShouldBeAlwaysLoggedIn
{
  service = [(IMDServiceSession *)self service];
  shouldBeAlwaysLoggedIn = [service shouldBeAlwaysLoggedIn];

  return shouldBeAlwaysLoggedIn;
}

- (void)addAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ addAccount:%@]", &v6, 0x16u);
    }
  }

  [(NSMutableArray *)self->_accounts addObject:accountCopy];
}

- (void)removeAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ removeAccount:%@]", &v6, 0x16u);
    }
  }

  [(NSMutableArray *)self->_accounts removeObject:accountCopy];
}

- (BOOL)isActive
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_accounts;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isActive])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (NSString)displayName
{
  service = [(IMDServiceSession *)self service];
  serviceProperties = [service serviceProperties];
  v4 = [serviceProperties objectForKey:*MEMORY[0x277D19058]];

  return v4;
}

- (void)markItemForOffGridRelay:(id)relay inChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  chatCopy = chat;
  [relayCopy setNeedsRelay:1];
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 storeMessage:relayCopy forceReplace:0 modifyError:1 modifyFlags:1 flagMask:0x40000000000];

  service = [relayCopy service];
  v10 = [service isEqualToString:*MEMORY[0x277D1A628]];
  v11 = IMOSLoggingEnabled();
  if (v10)
  {
    if (v11)
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        guid = [relayCopy guid];
        v16 = 138412290;
        v17 = guid;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Marking iMessage Lite message as needing relay, guid: %@", &v16, 0xCu);
      }
    }
  }

  else if (v11)
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid2 = [relayCopy guid];
      v16 = 138412290;
      v17 = guid2;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Marking SMS Satellite message as needing relay, guid: %@", &v16, 0xCu);
    }
  }

  IMSetDomainBoolForKey();
}

- (void)_processMessagesForRelayIfNeededMarkingAsRelayedUponSuccess:(BOOL)success
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Subclasses should implement.", v4, 2u);
    }
  }
}

- (BOOL)isReplicating
{
  selfCopy = self;
  mainSession = [(IMDServiceSession *)self mainSession];
  LOBYTE(selfCopy) = mainSession != selfCopy;

  return selfCopy;
}

- (NSArray)replicationSessions
{
  if ([(IMDServiceSession *)self isReplicating])
  {
    replicationSessions = MEMORY[0x277CBEBF8];
  }

  else
  {
    account = [(IMDServiceSession *)self account];
    replicationSessions = [account replicationSessions];
  }

  return replicationSessions;
}

- (IMDServiceSession)replicationProxy
{
  if ([(IMDServiceSession *)self isOutgoingReplicationEnabled])
  {
    replicationProxy = self->_replicationProxy;
    if (!replicationProxy)
    {
      replicationSessions = [(IMDServiceSession *)self replicationSessions];
      if ([replicationSessions count])
      {
        v5 = [objc_alloc(MEMORY[0x277D1A9B0]) initWithTargets:replicationSessions];
        v6 = self->_replicationProxy;
        self->_replicationProxy = v5;
      }

      replicationProxy = self->_replicationProxy;
    }

    v7 = replicationProxy;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)messageServiceNamed:(id)named canProcessMessagesFromServiceNamed:(id)serviceNamed
{
  namedCopy = named;
  serviceNamedCopy = serviceNamed;
  if ([serviceNamedCopy isEqualToString:namedCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = +[IMDServiceController sharedController];
    v9 = [v8 serviceWithName:serviceNamedCopy];

    relayMessageDelegates = [v9 relayMessageDelegates];
    v7 = [relayMessageDelegates containsObject:namedCopy];
  }

  return v7;
}

- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s
{
  v12 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Rejecting incoming replicated messages from account: %@, service session not configured for replicated messages", &v10, 0xCu);
    }
  }

  return 0;
}

- (id)outgoingReplicationCallerIDForChat:(id)chat
{
  v8 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Returning nil outgoing replication caller ID for chat %@, service session not configured for replicated messages", &v6, 0xCu);
    }
  }

  return 0;
}

- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts
{
  v11 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = serviceCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Returning nil preferred account for replication for %@, service session not configured for replicated messages", &v9, 0xCu);
    }
  }

  return 0;
}

- (id)sessionSpecificTransferIDForTransferID:(id)d
{
  dCopy = d;
  if ([(IMDServiceSession *)self isReplicating])
  {
    v5 = MEMORY[0x277CCACA8];
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    accountID = [(IMDServiceSession *)self accountID];
    dCopy = [v5 stringWithFormat:@"Replication/%@/%@/%@", internalName, accountID, dCopy];
  }

  else
  {
    dCopy = dCopy;
  }

  return dCopy;
}

- (void)sessionDidBecomeActive
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[%@ sessionDidBecomeActive]", &v9, 0xCu);
    }
  }

  self->_activated = 1;
  [(IMDServiceSession *)self _updateNetworkMonitorFromAccountDefaultsIgnoringProxy:0];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  v6 = IMOSLoggingEnabled();
  if (isUnderFirstDataProtectionLock)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Not scheduling routing, expire, watchdog timer before first unlock", &v9, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Scheduling watchdog after first unlock", &v9, 2u);
      }
    }

    [(IMDServiceSession *)self _updateWatchdogTimerWithInterval:60.0];
  }
}

- (void)sessionWillBecomeInactiveWithAccount:(id)account
{
  v10 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412546;
      selfCopy = self;
      v8 = 2112;
      v9 = accountCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ sessionWillBecomeInactiveWithAccount:%@]", &v6, 0x16u);
    }
  }

  if (![(IMDServiceSession *)self isActive])
  {
    self->_activated = 0;
    [(IMDServiceSession *)self _clearAutoReconnectTimer];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_login object:0];
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self];
  }
}

- (void)_clearNetworkMonitor
{
  v12 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      networkMonitor = self->_networkMonitor;
      v8 = 138412546;
      v9 = networkMonitor;
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "[IMDServiceSession _networkMonitor] monitor: %@:%@", &v8, 0x16u);
    }
  }

  v6 = self->_networkMonitor;
  p_networkMonitor = &self->_networkMonitor;
  [(IMNetworkMonitor *)v6 clear];
  v7 = *p_networkMonitor;
  *p_networkMonitor = 0;
}

- (void)_updateNetworkMonitorWithRemoteHost:(id)host
{
  v27 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        accountID = [(IMDAccount *)self->_account accountID];
        *buf = 138412546;
        v24 = hostCopy;
        v25 = 2112;
        v26 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_updateNetworkMonitorWithRemoteHost: %@:%@", buf, 0x16u);
      }
    }

    service = [(IMDServiceSession *)self service];
    v8 = [service supportsCapability:*MEMORY[0x277D1A5E0]];

    service2 = [(IMDServiceSession *)self service];
    wantsNullHostReachability = [service2 wantsNullHostReachability];

    networkMonitor = self->_networkMonitor;
    if (wantsNullHostReachability)
    {
      if (networkMonitor)
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            v13 = self->_networkMonitor;
            *buf = 138412290;
            v24 = v13;
            _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Already have connection monitor to global reachability: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v17 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:hostCopy delegate:self allowsUltraConstrainedNetwork:v8];
        v18 = self->_networkMonitor;
        self->_networkMonitor = v17;

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            v20 = self->_networkMonitor;
            *buf = 138412290;
            v24 = v20;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEBUG, "Creating connection monitor to global reachability: %@", buf, 0xCu);
          }
        }

        v21 = dispatch_time(0, 10000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B510A3C;
        block[3] = &unk_278702FF0;
        block[4] = self;
        dispatch_after(v21, MEMORY[0x277D85CD0], block);
      }
    }

    else
    {
      remoteHost = [(IMNetworkMonitor *)networkMonitor remoteHost];
      if ((hostCopy != 0) != (remoteHost != 0) || ([(IMNetworkMonitor *)hostCopy isEqual:remoteHost]& 1) == 0)
      {
        [(IMDServiceSession *)self _clearNetworkMonitor];
        v15 = [MEMORY[0x277D1AAC8] createNetworkMonitorWithRemoteHost:hostCopy delegate:self allowsUltraConstrainedNetwork:v8];
        v16 = self->_networkMonitor;
        self->_networkMonitor = v15;
      }
    }
  }
}

- (void)_updateNetworkMonitorFromAccountDefaultsIgnoringProxy:(BOOL)proxy
{
  if (self->_activated)
  {
    accountDefaults = [(IMDServiceSession *)self accountDefaults];
    v6 = [accountDefaults objectForKey:*MEMORY[0x277D194B0]];
    bOOLValue = [v6 BOOLValue];

    v8 = [accountDefaults objectForKey:*MEMORY[0x277D194A0]];
    bOOLValue2 = [v8 BOOLValue];

    v10 = [accountDefaults objectForKey:*MEMORY[0x277D194A8]];
    bOOLValue3 = [v10 BOOLValue];

    v12 = MEMORY[0x277D19490];
    if (bOOLValue)
    {
      v13 = MEMORY[0x277D19498];
    }

    else
    {
      v12 = MEMORY[0x277D19480];
      v13 = MEMORY[0x277D19488];
    }

    v14 = [accountDefaults objectForKey:*v12];
    v15 = [accountDefaults objectForKey:*v13];
    intValue = [v15 intValue];

    if (!proxy && bOOLValue2)
    {
      if (bOOLValue3)
      {
        [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
        v17 = objc_alloc(MEMORY[0x277D192B0]);
        server = [(IMDServiceSession *)self server];
        v19 = [v17 initWithHost:server port:intValue delegate:self];
        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v19;

        [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher retrieveProxySettings];
        v21 = 0;
      }

      else
      {
        v21 = [accountDefaults objectForKey:*MEMORY[0x277D19440]];
      }

      v14 = v21;
    }

    stringByRemovingWhitespace = [v14 stringByRemovingWhitespace];
    v23 = [stringByRemovingWhitespace length];

    if (!v23)
    {
      server2 = [(IMDServiceSession *)self server];

      v14 = server2;
    }

    [(IMDServiceSession *)self _updateNetworkMonitorWithRemoteHost:v14];
  }
}

- (void)_reconnectIfNecessary
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(accounts);
        }

        [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_reconnectIfNecessaryWithAccount:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (!self->_activated)
  {
    goto LABEL_34;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      loginID = [(IMDServiceSession *)self loginID];
      accountID = [(IMDAccount *)self->_account accountID];
      v20 = 138412546;
      v21 = loginID;
      v22 = 2112;
      v23 = accountID;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_reconnectIfNecessary: %@:%@", &v20, 0x16u);
    }
  }

  accountShouldBeAlwaysLoggedIn = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];
  if ([accountCopy loginStatus] == 1)
  {
    serviceDisconnectReason = [accountCopy serviceDisconnectReason];
    if ((serviceDisconnectReason + 1) <= 8)
    {
      v10 = 0xCAu >> (serviceDisconnectReason + 1);
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    if (!accountShouldBeAlwaysLoggedIn)
    {
      goto LABEL_11;
    }

LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  LOBYTE(v10) = 0;
  if (accountShouldBeAlwaysLoggedIn)
  {
    goto LABEL_13;
  }

LABEL_11:
  v11 = v10 | self->_shouldReconnect;
LABEL_14:
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if (accountShouldBeAlwaysLoggedIn)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      if (self->_shouldReconnect)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (v10)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      loginStatus = [accountCopy loginStatus];
      serviceDisconnectReason2 = [accountCopy serviceDisconnectReason];
      v20 = 138413314;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2048;
      v27 = loginStatus;
      v28 = 1024;
      v29 = serviceDisconnectReason2;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "  shouldAlwaysBeLoggedIn: %@    shouldReconnect: %@   wasLikelyNetworkError: %@  loginStatus: %lu  disconnectReason: %d", &v20, 0x30u);
    }
  }

  if ((v11 & 1) != 0 && [accountCopy loginStatus] != 4)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        loginID2 = [(IMDServiceSession *)self loginID];
        v20 = 138412290;
        v21 = loginID2;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "%@: we're disconnected properly - and we're supposed to try to reconnect now, ", &v20, 0xCu);
      }
    }

    [(IMDServiceSession *)self _doLoginIgnoringProxy:0 withAccount:accountCopy];
  }

LABEL_34:
}

- (void)_processNetworkMonitorUpdate
{
  v38 = *MEMORY[0x277D85DE8];
  if (!self->_activated || ![(IMDServiceSession *)self _processesNetworkEvents])
  {
    return;
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(accounts);
        }

        v5 |= [*(*(&v27 + 1) + 8 * i) loginStatus] > 2;
      }

      v4 = [accounts countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v4);

    if ((v5 & 1) == 0 || ([(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable]& 1) != 0 || [(IMDServiceSession *)self overrideNetworkAvailability])
    {
      goto LABEL_29;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@       forcing disconnect", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        server = [(IMDServiceSession *)self server];
        *buf = 138412546;
        selfCopy3 = self;
        v35 = 2112;
        v36 = server;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "%@: Network connection to %@ is down -- disconnecting", buf, 0x16u);
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v11 = [accounts countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v11)
    {
      v12 = *v24;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(accounts);
          }

          [(IMDServiceSession *)self logoutServiceSessionWithAccount:*(*(&v23 + 1) + 8 * j)];
        }

        v11 = [accounts countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v11);
    }
  }

LABEL_29:
  if (([(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable]& 1) != 0 || [(IMDServiceSession *)self overrideNetworkAvailability])
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEBUG, "%@       I can be reached", buf, 0xCu);
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    accounts2 = [(IMDServiceSession *)self accounts];
    v16 = [accounts2 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (v16)
    {
      v17 = *v20;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(accounts2);
          }

          [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:*(*(&v19 + 1) + 8 * k)];
        }

        v16 = [accounts2 countByEnumeratingWithState:&v19 objects:v31 count:16];
      }

      while (v16);
    }
  }
}

- (void)_setPendingNetworkMonitorUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__processNetworkMonitorUpdate object:0];
  if (self->_activated)
  {

    [(IMDServiceSession *)self performSelector:sel__processNetworkMonitorUpdate withObject:0 afterDelay:2.0];
  }
}

- (BOOL)_processesNetworkEvents
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(IMDServiceSession *)self isReplicating]&& (IMGetCachedDomainBoolForKey() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        networkMonitor = self->_networkMonitor;
        v8 = 138412546;
        selfCopy = self;
        v10 = 2112;
        v11 = networkMonitor;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ refuses to process network changes - networkMonitor: %@", &v8, 0x16u);
      }
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    service = [(IMDServiceSession *)self service];
    v4 = [service ignoresNetworkConnectivity] ^ 1;
  }

  return v4;
}

- (void)_processPotentialNetworkChange
{
  v51 = *MEMORY[0x277D85DE8];
  if (![(IMDServiceSession *)self _processesNetworkEvents]|| !self->_activated)
  {
    return;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v4 = [accounts countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v4)
  {
    v5 = *v35;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(accounts);
        }

        if ([*(*(&v34 + 1) + 8 * i) loginStatus] > 2)
        {
          v7 = 1;
          goto LABEL_13;
        }
      }

      v4 = [accounts countByEnumeratingWithState:&v34 objects:v50 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_13:

  v8 = ([(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable]& 1) != 0 || [(IMDServiceSession *)self overrideNetworkAvailability];
  mEMORY[0x277D19230] = [MEMORY[0x277D19230] sharedInstance];
  isOnTelephonyCall = [mEMORY[0x277D19230] isOnTelephonyCall];

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSimultaneousVoiceAndDataRightNow = [mEMORY[0x277D07DB0] supportsSimultaneousVoiceAndDataRightNow];

  if ((v8 & (isOnTelephonyCall ^ 1 | supportsSimultaneousVoiceAndDataRightNow)) == 1)
  {
    [(IMDServiceSession *)self processNetworkDataAvailabilityChange:1];
    overrideNetworkAvailability = 1;
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    overrideNetworkAvailability = [(IMDServiceSession *)self overrideNetworkAvailability];
    [(IMDServiceSession *)self processNetworkDataAvailabilityChange:0];
    if (v7 == overrideNetworkAvailability)
    {
LABEL_18:
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          *buf = 138413570;
          selfCopy2 = self;
          if (v7)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v40 = 2112;
          v41 = v16;
          if (overrideNetworkAvailability)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          v42 = 2112;
          if (isOnTelephonyCall)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v43 = v17;
          if (supportsSimultaneousVoiceAndDataRightNow)
          {
            v15 = @"YES";
          }

          v44 = 2112;
          v45 = v18;
          v46 = 2112;
          v47 = v15;
          v48 = 2112;
          v49 = v17;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@ networkMonitorDidUpdate: Currently connected: %@   (Reachable: %@  On Call: %@  Data+Voice: %@   Result: %@)", buf, 0x3Eu);
        }

LABEL_48:

        goto LABEL_49;
      }

      goto LABEL_49;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v19 = @"NO";
      *buf = 138413570;
      selfCopy2 = self;
      if (v7)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v40 = 2112;
      v41 = v20;
      if (overrideNetworkAvailability)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      v42 = 2112;
      if (isOnTelephonyCall)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v43 = v21;
      if (supportsSimultaneousVoiceAndDataRightNow)
      {
        v19 = @"YES";
      }

      v44 = 2112;
      v45 = v22;
      v46 = 2112;
      v47 = v19;
      v48 = 2112;
      v49 = v21;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "%@ networkMonitorDidUpdate: Currently connected: %@   (Reachable: %@  On Call: %@  Data+Voice: %@   Result: %@)", buf, 0x3Eu);
    }

    goto LABEL_48;
  }

LABEL_49:
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      remoteHost = [(IMNetworkMonitor *)self->_networkMonitor remoteHost];
      *buf = 138412290;
      selfCopy2 = remoteHost;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEBUG, "                                        remoteHost: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = @"NO";
      if (v8)
      {
        v26 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v26;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEBUG, "                                       isReachable: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = @"NO";
      if (isOnTelephonyCall)
      {
        v28 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v28;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEBUG, "                                          isOnCall: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = @"NO";
      if (supportsSimultaneousVoiceAndDataRightNow)
      {
        v30 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v30;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEBUG, "                  supportsSimultaneousDataAndVoice: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      immediatelyReachable = [(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable];
      v33 = @"NO";
      if (immediatelyReachable)
      {
        v33 = @"YES";
      }

      *buf = 138412290;
      selfCopy2 = v33;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_DEBUG, "                            isImmediatelyReachable: %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    [(IMDServiceSession *)self _setPendingNetworkMonitorUpdate];
  }

  else
  {
    [(IMDServiceSession *)self _processNetworkMonitorUpdate];
  }
}

- (void)networkMonitorDidUpdate:(id)update
{
  if (self->_activated)
  {
    im_dispatch_after();
  }
}

- (void)_callMonitorStateChanged:(id)changed
{
  if (self->_activated)
  {
    im_dispatch_after();
  }
}

- (void)_networkChanged:(id)changed
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    mEMORY[0x277D192E8] = [MEMORY[0x277D192E8] sharedInstance];
    if ([mEMORY[0x277D192E8] isNetworkUp])
    {
    }

    else
    {
      overrideNetworkAvailability = [(IMDServiceSession *)self overrideNetworkAvailability];

      if (!overrideNetworkAvailability)
      {
        return;
      }
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v7 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(accounts);
          }

          v11 = *(*(&v12 + 1) + 8 * i);
          [(IMDServiceSession *)self _reconnectIfNecessaryWithAccount:v11];
          [(IMDServiceSession *)self autoReconnectWithAccount:v11];
        }

        v8 = [accounts countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)networkConditionsAllowLogin
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(IMDServiceSession *)self overrideNetworkAvailability])
  {
    return 1;
  }

  if (!self->_activated)
  {
    return 0;
  }

  service = [(IMDServiceSession *)self service];
  ignoresNetworkConnectivity = [service ignoresNetworkConnectivity];

  if (ignoresNetworkConnectivity)
  {
    if (!IMOSLoggingEnabled())
    {
      return 1;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 138412546;
      *&v12[4] = @"YES";
      v13 = 2112;
      selfCopy3 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   (Ignoring network)", v12, 0x16u);
    }

LABEL_8:

    return 1;
  }

  networkMonitor = self->_networkMonitor;
  if (!networkMonitor)
  {
    if (!IMOSLoggingEnabled())
    {
      return 1;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 138412546;
      *&v12[4] = @"YES";
      v13 = 2112;
      selfCopy3 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   (Fallback)", v12, 0x16u);
    }

    goto LABEL_8;
  }

  immediatelyReachable = [(IMNetworkMonitor *)networkMonitor immediatelyReachable];
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = @"NO";
      v11 = self->_networkMonitor;
      *v12 = 138412802;
      if (immediatelyReachable)
      {
        v10 = @"YES";
      }

      *&v12[4] = v10;
      v13 = 2112;
      selfCopy3 = self;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "[IMDServiceSession networkConditionsAllowLogin]: %@ (%@)   ([[%@]_networkMonitor immediatelyReachable])", v12, 0x20u);
    }
  }

  return [(IMNetworkMonitor *)self->_networkMonitor immediatelyReachable];
}

- (BOOL)allowedAsChild
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  parentalControls = [v3 parentalControls];
  LOBYTE(self) = [parentalControls disableServiceSession:self];

  return self ^ 1;
}

- (void)_managedPrefsNotification:(id)notification
{
  if (self->_activated)
  {
    v4 = +[IMDLocalDaemon sharedDaemon];
    parentalControls = [v4 parentalControls];
    active = [parentalControls active];

    if (active)
    {
      if (![(IMDServiceSession *)self allowedAsChild])
      {

        [(IMDServiceSession *)self logout];
      }
    }
  }
}

- (id)canonicalFormOfID:(id)d
{
  dCopy = d;
  service = [(IMDServiceSession *)self service];
  v6 = -[IMDServiceSession canonicalFormOfID:withIDSensitivity:](self, "canonicalFormOfID:withIDSensitivity:", dCopy, [service idSensitivity]);

  return v6;
}

- (id)canonicalFormOfID:(id)d withIDSensitivity:(int)sensitivity
{
  dCopy = d;
  service = [(IMDServiceSession *)self service];
  [service caseInsensitivityByHandleType];
  v7 = IMCanonicalFormOfIDWithSensitivity();

  return v7;
}

- (BOOL)equalID:(id)d andID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy == iDCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (dCopy && iDCopy)
    {
      v10 = [(IMDServiceSession *)self canonicalFormOfID:dCopy];
      v11 = [(IMDServiceSession *)self canonicalFormOfID:v8];
      v9 = [v10 isEqualToString:v11];
    }
  }

  return v9;
}

- (void)refreshServiceCapabilities
{
  v10 = *MEMORY[0x277D85DE8];
  capabilities = [(IMDServiceSession *)self capabilities];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = _IMStringFromFZCapabilities();
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Refreshing capabilities: %@", &v8, 0xCu);
    }
  }

  broadcaster = [(IMDServiceSession *)self broadcaster];
  accountID = [(IMDServiceSession *)self accountID];
  [broadcaster account:accountID capabilitiesChanged:capabilities];
}

- (id)broadcaster
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForChatListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForChatListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForChatListenersWithBlackholeStatus:(BOOL)status
{
  if (status)
  {
    v4 = +[IMDBroadcastController sharedProvider];
    service = [(IMDServiceSession *)self service];
    broadcasterForChatListeners = [v4 broadcasterForBlackholeChatListenersSupportingService:service];
  }

  else
  {
    broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
  }

  return broadcasterForChatListeners;
}

- (id)broadcasterForChatObserverListeners
{
  v11[2] = *MEMORY[0x277D85DE8];
  broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
  v4 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v6 = [v4 broadcasterForSentMessageListenersSupportingService:service];

  v7 = [IMDInvocationForwarder alloc];
  v11[0] = broadcasterForChatListeners;
  v11[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [(IMDInvocationForwarder *)v7 initWithTargets:v8];

  return v9;
}

- (id)broadcasterForAVConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForAVConferenceListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForACConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForACConferenceListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForVCConferenceListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForVCConferenceListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForNotificationsListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForNotificationListenersSupportingService:service];

  return v5;
}

- (id)broadcasterForCollaborationListeners
{
  v3 = +[IMDBroadcastController sharedProvider];
  service = [(IMDServiceSession *)self service];
  v5 = [v3 broadcasterForCollaborationListenersSupportingService:service];

  return v5;
}

- (void)_clearDowngradeMarkersForChat:(id)chat
{
  chatCopy = chat;
  if (self->_activated)
  {
    v17 = chatCopy;
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    null = [MEMORY[0x277CBEB68] null];
    v7 = *MEMORY[0x277D19300];
    null2 = [MEMORY[0x277CBEB68] null];
    v9 = *MEMORY[0x277D19308];
    null3 = [MEMORY[0x277CBEB68] null];
    v11 = [v5 initWithObjectsAndKeys:{null, v7, null2, v9, null3, *MEMORY[0x277D19310], 0}];

    v12 = +[IMDChatRegistry sharedInstance];
    LODWORD(null2) = [v12 updateProperties:v11 chat:v17 style:45];

    if (null2)
    {
      v13 = [(IMDServiceSession *)self chatForChatIdentifier:v17 style:45 updatingAccount:1];
      if (v13)
      {
        broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
        guid = [v13 guid];
        properties = [v13 properties];
        [broadcasterForChatListeners chat:guid propertiesUpdated:properties];
      }
    }

    chatCopy = v17;
  }
}

- (BOOL)shouldInferRecoverableDeleteForCommandDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"isPermanentDelete"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0;
  }

  else
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"recoverableDeleteDate"];
    v6 = v7 == 0;
  }

  return v6;
}

- (id)deleteCommandDictionaryWithIncomingDictionary:(id)dictionary inferredRecoverableDeleteForLegacyCommandsWithDate:(id)date
{
  dateCopy = date;
  v6 = [dictionary mutableCopy];
  v7 = [v6 objectForKeyedSubscript:@"permanentDeleteChatMetadataArray"];
  [v6 removeObjectForKey:@"permanentDeleteChatMetadataArray"];
  [v6 setObject:v7 forKeyedSubscript:@"chat"];
  [v6 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"isPermanentDelete"];
  [v6 setObject:dateCopy forKeyedSubscript:@"recoverableDeleteDate"];

  v8 = [v6 copy];

  return v8;
}

- (void)recoverChatsForCommandDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"recoverChatMetadataArray"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * i);
        v6 = [(IMDServiceSession *)self _chatsForDeleteAndRecoveryChatMetadataDictionary:v5];
        if ([v6 count])
        {
          v7 = [v6 arrayByApplyingSelector:sel_guid];
          v8 = [(IMDServiceSession *)self broadcasterForChatListenersWithBlackholeStatus:0];
          chatRegistry = [(IMDServiceSession *)self chatRegistry];
          [chatRegistry recoverMessagesWithChatGUIDs:v7];

          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v6;
          v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v11)
          {
            v12 = *v21;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v21 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v20 + 1) + 8 * j);
                [(IMDServiceSession *)self _updateLastMessageTimeStampForChat:v14 broadcaster:v8];
                [v14 setDeletingIncomingMessages:0];
              }

              v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v11);
          }

          [v8 recoveredMessagesFromRecentlyDeletedForChatsWithGUIDs:v7];
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v5;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "IMDServiceSession | Recovery: did not find any chats for chat metadata %@", buf, 0xCu);
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v19);
  }
}

- (id)_chatsForDeleteAndRecoveryChatMetadataDictionary:(id)dictionary
{
  v49 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v34 = [dictionaryCopy objectForKeyedSubscript:@"guid"];
  v33 = [dictionaryCopy objectForKeyedSubscript:@"groupID"];
  v36 = [dictionaryCopy objectForKeyedSubscript:@"ptcpts"];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v44 = v34;
      v45 = 2112;
      v46 = v33;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finding chats for delete or recovery using guid %@ groupID %@ participants %@", buf, 0x20u);
    }
  }

  chatRegistry = [(IMDServiceSession *)self chatRegistry];
  v35 = [chatRegistry existingChatWithGUID:v34];

  if (v35)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [v35 guid];
        *buf = 138412290;
        v44 = guid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found chat with specific guid %@ for chat metadata", buf, 0xCu);
      }
    }

    guid2 = [v35 guid];
    [v5 addObject:guid2];
  }

  chatRegistry2 = [(IMDServiceSession *)self chatRegistry];
  v12 = [chatRegistry2 existingChatsWithGroupID:v33];

  if ([v12 count])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 count];
        *buf = 134218498;
        v44 = v14;
        v45 = 2112;
        v46 = v33;
        v47 = 2112;
        v48 = v12;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found %llu chats with specific group ID %@ for chat metadata: %@", buf, 0x20u);
      }
    }

    v15 = [v12 arrayByApplyingSelector:sel_guid];
    [v5 addObjectsFromArray:v15];
  }

  if ([v36 count] >= 2)
  {
    chatRegistry3 = [(IMDServiceSession *)self chatRegistry];
    service = [(IMDServiceSession *)self service];
    v18 = [chatRegistry3 existingChatsForIDs:v36 onService:service style:43];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_22B5138E4;
    v41[3] = &unk_278703100;
    v41[4] = self;
    v19 = [v18 __imArrayByFilteringWithBlock:v41];

    if ([v19 count])
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v19 count];
          *buf = 134218498;
          v44 = v21;
          v45 = 2112;
          v46 = v36;
          v47 = 2112;
          v48 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Found %llu chats with handles: %@ chats: %@", buf, 0x20u);
        }
      }

      v22 = [v19 arrayByApplyingSelector:sel_guid];
      [v5 addObjectsFromArray:v22];
    }
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = v5;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v25)
  {
    v26 = *v38;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v37 + 1) + 8 * i);
        chatRegistry4 = [(IMDServiceSession *)self chatRegistry];
        v30 = [chatRegistry4 existingChatWithGUID:v28];

        if (v30)
        {
          [v23 addObject:v30];
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v25);
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v44 = v23;
      v45 = 2112;
      v46 = v34;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Found %llu chats for delete command with guid %@", buf, 0x16u);
    }
  }

  return v23;
}

- (void)_updateLastMessageTimeStampForChat:(id)chat broadcaster:(id)broadcaster
{
  v32 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  broadcasterCopy = broadcaster;
  if (chatCopy)
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v7 lastMessageForChatWithRowID:{objc_msgSend(chatCopy, "rowID")}];
    [chatCopy setLastMessage:v8];

    lastMessage = [chatCopy lastMessage];

    if (lastMessage)
    {
      lastMessage2 = [chatCopy lastMessage];
      time = [lastMessage2 time];
      [time timeIntervalSinceReferenceDate];
      [chatCopy setLastMessageTimeStampOnLoad:v12];
    }

    else
    {
      [chatCopy setLastMessageTimeStampOnLoad:0];
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isAVLessSharePlayEnabled = [mEMORY[0x277D1A9B8] isAVLessSharePlayEnabled];

    if (isAVLessSharePlayEnabled)
    {
      v16 = +[IMDMessageStore sharedInstance];
      v17 = [v16 lastTUConversationItemForChat:chatCopy];

      if (v17)
      {
        time2 = [v17 time];

        if (time2)
        {
          time3 = [v17 time];
          [chatCopy setLastTUConversationCreatedDate:time3];
        }

        else
        {
          v20 = IMLogHandleForCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_22B7CFDFC(v17, v20);
          }
        }
      }

      else
      {
        [chatCopy setLastTUConversationCreatedDate:0];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        v23 = MEMORY[0x277CCABB0];
        lastMessage3 = [chatCopy lastMessage];
        time4 = [lastMessage3 time];
        [time4 timeIntervalSinceReferenceDate];
        v26 = [v23 numberWithDouble:?];
        v28 = 138412546;
        v29 = guid;
        v30 = 2112;
        v31 = v26;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | IMDChat: %@, updating last message timestamp on load: %@", &v28, 0x16u);
      }
    }

    guid2 = [chatCopy guid];
    [broadcasterCopy chat:guid2 lastMessageTimeStampOnLoadUpdated:{objc_msgSend(chatCopy, "lastMessageTimeStampOnLoad")}];
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | _updateLastMessageTimeStampForChat received nil chat", &v28, 2u);
    }
  }
}

- (void)sendHQAttachmentsForMessage:(id)message toChatID:(id)d style:(unsigned __int8)style
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D026C();
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02A0();
  }
}

- (void)cancelScheduledMessageWithGUID:(id)d destinations:(id)destinations cancelType:(unint64_t)type
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02A0();
  }
}

- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D02D4();
  }
}

- (void)sendEditedScheduledMessage:(id)message previousMessage:(id)previousMessage retractingPartIndexes:(id)indexes toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D0308();
  }
}

- (void)renewTTLForScheduledAttachmentTransfer:(id)transfer
{
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D033C();
  }
}

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  messagesDomain = [MEMORY[0x277CBEBD0] messagesDomain];
  v8 = MEMORY[0x277CCACA8];
  selfCopy = self;
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v11 = [v8 stringWithFormat:@"%@-ReachableHandles", internalName];
  v12 = [messagesDomain arrayForKey:v11];

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  v33 = v12;
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v14 = [v12 count] != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [requestCopy handleIDs];
  v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  v32 = requestCopy;
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    LODWORD(v19) = v14;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        v22 = objc_alloc(MEMORY[0x277D1ABA0]);
        service2 = [(IMDServiceSession *)selfCopy service];
        internalName2 = [service2 internalName];
        v25 = [v22 initWithHandleID:v21 service:internalName2 isReachable:1 supportsEncryption:0];

        if (v14)
        {
          [v25 setReachable:{objc_msgSend(v33, "containsObject:", v21)}];
        }

        v19 = v19 & [v25 isReachable];
        [v15 setObject:v25 forKeyedSubscript:v21];
      }

      v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = v14;
  }

  v26 = objc_alloc(MEMORY[0x277D1ABB0]);
  service3 = [(IMDServiceSession *)selfCopy service];
  internalName3 = [service3 internalName];
  LOBYTE(v30) = 0;
  v29 = [v26 initWithService:internalName3 error:0 handleResults:v15 isFinal:1 allAreReachable:v19 allSupportEncryption:0 didCheckServer:v30];

  [handlerCopy reachabilityRequest:v32 updatedWithResult:v29];
}

- (void)markItemFailedWithGUID:(id)d errorCode:(unsigned int)code
{
  v4 = *&code;
  dCopy = d;
  v7 = [(IMDServiceSession *)self itemWithGUID:dCopy];
  if (v7)
  {
    v8 = [(IMDServiceSession *)self chatForItemWithGUID:dCopy];
    if (v8)
    {
      if ([v7 conformsToProtocol:&unk_283FBCDD8])
      {
        [v7 setErrorCode:v4];
        v9 = +[IMDMessageStore sharedInstance];
        v10 = [v9 storeItem:v7 forceReplace:1];

        v19 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self, "broadcasterForChatListenersWithBlackholeStatus:", [v8 isBlackholed]);
        accountID = [v7 accountID];
        accountID2 = accountID;
        if (!accountID)
        {
          accountID2 = [(IMDServiceSession *)self accountID];
        }

        chatIdentifier = [v8 chatIdentifier];
        style = [v8 style];
        chatProperties = [v8 chatProperties];
        groupID = [v8 groupID];
        personCentricID = [v8 personCentricID];
        [v19 account:accountID2 chat:chatIdentifier style:style chatProperties:chatProperties groupID:groupID chatPersonCentricID:personCentricID messageReceived:v7];

        if (!accountID)
        {
        }
      }

      else
      {
        v18 = IMLogHandleForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D0370();
        }
      }
    }
  }
}

- (IMDServiceSession)mainSession
{
  WeakRetained = objc_loadWeakRetained(&self->_mainSession);

  return WeakRetained;
}

- (IMDAccount)replicationAccount
{
  WeakRetained = objc_loadWeakRetained(&self->_replicationAccount);

  return WeakRetained;
}

- (IMDService)replicationService
{
  WeakRetained = objc_loadWeakRetained(&self->_replicationService);

  return WeakRetained;
}

- (BOOL)readReceiptsGloballyEnabled
{
  if (IMGetDomainBoolForKey())
  {
    return 1;
  }

  return IMGetDomainBoolForKey();
}

- (BOOL)shouldSendReadReceiptsForChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v18 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  readReceiptsGloballyEnabled = [(IMDServiceSession *)self readReceiptsGloballyEnabled];
  v8 = [(IMDServiceSession *)self chatForChatIdentifier:chatCopy style:styleCopy updatingAccount:1];
  properties = [v8 properties];

  v10 = [properties objectForKey:*MEMORY[0x277D197F8]];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (v10)
      {
        longValue = [v10 longValue];
      }

      else
      {
        longValue = -1;
      }

      v14 = 134218240;
      v15 = readReceiptsGloballyEnabled;
      v16 = 2048;
      v17 = longValue;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "read receipt global setting: [%ld], chat setting: [%ld]", &v14, 0x16u);
    }
  }

  if (v10)
  {
    LOBYTE(readReceiptsGloballyEnabled) = [v10 BOOLValue];
  }

  return readReceiptsGloballyEnabled;
}

- (void)overwritePerChatReadReceiptSettingsWithGlobalValue:(BOOL)value
{
  valueCopy = value;
  v43 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Updating read receipt setting for local chats", buf, 2u);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = +[IMDChatRegistry sharedInstance];
  obj = [v4 chats];

  v5 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v5)
  {
    v28 = *v31;
    v7 = *MEMORY[0x277D19910];
    v29 = *MEMORY[0x277D197F8];
    v24 = valueCopy;
    *&v6 = 134218754;
    v23 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        properties = [v9 properties];
        v11 = [properties mutableCopy];

        v12 = [v11 valueForKey:v7];
        if ([v12 integerValue])
        {
          isOscarChat = [v9 isOscarChat];
          v14 = isOscarChat;
          if (isOscarChat && IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Read receipt is not going to be sent, chat filtered as junk", buf, 2u);
            }
          }

          v16 = [v11 valueForKey:v29];
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              if (v16)
              {
                longValue = [v16 longValue];
              }

              else
              {
                longValue = -1;
              }

              longValue2 = [v12 longValue];
              *buf = v23;
              v35 = v24;
              v36 = 2048;
              v37 = longValue;
              v38 = 2048;
              v39 = longValue2;
              v40 = 2112;
              v41 = v9;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Global read receipt value set to [%ld], local chat read receipt value is [%ld] with versionID [%ld] for chat: %@", buf, 0x2Au);
            }
          }

          if ((v14 & 1) != 0 || [v16 BOOLValue] != valueCopy)
          {
            [v11 removeObjectForKey:v29];
            [v11 removeObjectForKey:v7];
            [v9 updateProperties:v11];
            broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
            guid = [v9 guid];
            properties2 = [v9 properties];
            [broadcasterForChatListeners chat:guid propertiesUpdated:properties2];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v5);
  }
}

- (BOOL)_canHandleTransferAccept:(id)accept
{
  serviceFromUserInfo = [accept serviceFromUserInfo];
  v5 = [serviceFromUserInfo length];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v8 = internalName;
  if (v5)
  {
    internalName = serviceFromUserInfo;
    v9 = v8;
  }

  else
  {
    v9 = *MEMORY[0x277D1A620];
  }

  v10 = [internalName isEqualToString:v9];

  return v10;
}

- (void)_handleFileTransferAccepted:(id)accepted
{
  v33 = *MEMORY[0x277D85DE8];
  object = [accepted object];
  serviceFromUserInfo = [object serviceFromUserInfo];
  if ([(IMDServiceSession *)self _canHandleTransferAccept:object])
  {
    guid = [object guid];
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138412546;
      v28 = internalName;
      v29 = 2112;
      v30 = object;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Service(%@) File transfer accepted for: %@", buf, 0x16u);
    }

    if (guid)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B5BF3BC;
      aBlock[3] = &unk_278702B20;
      v10 = guid;
      v26 = v10;
      v11 = _Block_copy(aBlock);
      transferState = [object transferState];
      v13 = IMLogHandleForCategory();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
      if (transferState > 1)
      {
        if (v14)
        {
          *buf = 138412290;
          v28 = object;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** This was already accepted, ignoring request to fetch %@", buf, 0xCu);
        }

        if (IMIsRunningInAutomation())
        {
          v11[2](v11, 0);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 138412290;
          v28 = object;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** Accepting %@", buf, 0xCu);
        }

        [object _setNeedsWrapper:0];
        if (IMFileTransferGUIDIsTemporary())
        {
          [(IMDServiceSession *)self fallbackToDownloadIfPossible:v10 transfer:object];
        }

        else
        {
          v18 = IMLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " ** Transfer attempting download via CloudKit", buf, 2u);
          }

          v19 = +[IMDFileTransferCenter sharedInstance];
          [v19 startTransfer:v10];

          v20 = +[IMDCKAttachmentSyncController sharedInstance];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = sub_22B5BF41C;
          v21[3] = &unk_278705BB8;
          v21[4] = self;
          v22 = v10;
          v23 = object;
          v24 = v11;
          [v20 acceptFileTransfer:v23 completion:v21];
        }
      }

      service2 = v26;
    }

    else
    {
      service2 = IMLogHandleForCategory();
      if (os_log_type_enabled(service2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, service2, OS_LOG_TYPE_INFO, "**** Not accepting transfer. Did not find a guid", buf, 2u);
      }
    }

    goto LABEL_22;
  }

  guid = IMLogHandleForCategory();
  if (os_log_type_enabled(guid, OS_LOG_TYPE_INFO))
  {
    service2 = [(IMDServiceSession *)self service];
    internalName2 = [service2 internalName];
    guid2 = [object guid];
    *buf = 138412802;
    v28 = internalName2;
    v29 = 2112;
    v30 = guid2;
    v31 = 2112;
    v32 = serviceFromUserInfo;
    _os_log_impl(&dword_22B4CC000, guid, OS_LOG_TYPE_INFO, "Service(%@) Ignoring File transfer accept for: %@ transferSession %@", buf, 0x20u);

LABEL_22:
  }
}

- (void)_handleFileTransferBatchAccepted:(id)accepted
{
  v45 = *MEMORY[0x277D85DE8];
  object = [accepted object];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = object;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "File transfers batch accepted for: %@", buf, 0xCu);
  }

  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = object;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        guid = [v10 guid];
        if (!guid)
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v44 = v10;
            v15 = v13;
            v16 = "**** Not accepting transfer. Did not find a guid in %@";
            goto LABEL_17;
          }

LABEL_18:

          goto LABEL_19;
        }

        transferState = [v10 transferState];
        v13 = IMLogHandleForCategory();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (transferState > 1)
        {
          if (v14)
          {
            *buf = 138412290;
            v44 = v10;
            v15 = v13;
            v16 = " ** This transfer %@ was already accepted, ignoring";
LABEL_17:
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
          }

          goto LABEL_18;
        }

        if (v14)
        {
          *buf = 138412290;
          v44 = v10;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, " ** Accepting into batch %@", buf, 0xCu);
        }

        [v10 _setNeedsWrapper:0];
        [v29 addObject:v10];
LABEL_19:
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, " ** Transfers attempting download via CloudKit", buf, 2u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v29;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v34;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v33 + 1) + 8 * j);
        v24 = +[IMDFileTransferCenter sharedInstance];
        guid2 = [v23 guid];
        [v24 startTransfer:guid2];
      }

      v20 = [v18 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v20);
  }

  v26 = +[IMDCKAttachmentSyncController sharedInstance];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_22B5BF8CC;
  v30[3] = &unk_278703068;
  v31 = v18;
  selfCopy = self;
  v27 = v18;
  [v26 acceptFileTransfers:v27 completion:v30];
}

- (void)fallbackToDownloadIfPossible:(id)possible transfer:(id)transfer
{
  possibleCopy = possible;
  transferCopy = transfer;
  v8 = [(IMDServiceSession *)self _isTransferAvailableForDownload:transferCopy];
  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** Transfer has been synced to CloudKit, but we don't have the asset -- however we can download from MMCS", buf, 2u);
    }

    [transferCopy _setTransferState:0];
    baseAttachmentController = [(IMDServiceSession *)self baseAttachmentController];
    [baseAttachmentController acceptFileTransfer:transferCopy];
  }

  else
  {
    if (v10)
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " *** Not accepting transfer -- Transfer created Date is > 30 days old and we need to upload the asset to CloudKit", v12, 2u);
    }

    [(IMDServiceSession *)self _resetTransferToTapDownloadState:possibleCopy];
  }
}

- (void)_resetTransferToTapDownloadState:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = stateCopy;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Resetting transfer %@ to Tap To Download state", &v10, 0xCu);
  }

  v5 = +[IMDFileTransferCenter sharedInstance];
  v6 = [v5 transferForGUID:stateCopy];

  v7 = +[IMDFileTransferCenter sharedInstance];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MessageServiceSession" code:1 userInfo:0];
  [v7 resetTransfer:stateCopy andPostError:v8];

  [v6 _setTransferState:0];
  [v6 _setError:-1];
  v9 = +[IMDMessageStore sharedInstance];
  [v9 updateFileTransfer:v6];
}

- (void)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block shouldStoreBlock:(id)storeBlock didStoreBlock:(id)didStoreBlock block:(id)a8
{
  v75 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  contextCopy = context;
  blockCopy = block;
  storeBlockCopy = storeBlock;
  didStoreBlockCopy = didStoreBlock;
  v16 = a8;
  if (!v16)
  {
    goto LABEL_85;
  }

  scheduleType = [messageCopy scheduleType];
  v71 = scheduleType != 1;
  if (scheduleType == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = messageCopy;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not storing scheduled message %@", buf, 0xCu);
      }
    }

    v18 = messageCopy;
    if (!storeBlockCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v18 = 0;
  if (storeBlockCopy)
  {
LABEL_10:
    v20 = storeBlockCopy[2](storeBlockCopy, messageCopy);
    v21 = v20;
    if (messageCopy)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 0;
    }

    v23 = !v22 && scheduleType != 1;
    v71 = v23;

    messageCopy = v21;
  }

LABEL_17:
  criticalMessagingAppName = [messageCopy criticalMessagingAppName];
  v25 = [criticalMessagingAppName length];

  if (v25)
  {
    if (v71 && ([MEMORY[0x277D1A900] sharedManager], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isMessagesTheDefaultTextApp"), v26, (v27 & 1) != 0))
    {
      v71 = 1;
    }

    else
    {
      v28 = messageCopy;

      v71 = 0;
      v18 = v28;
    }
  }

  if (([messageCopy isTypingMessage] & 1) == 0)
  {
    v29 = [messageCopy scheduleType] == 1 || v25 != 0;
    if (!v29 && IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = messageCopy;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Storing message: %@", buf, 0xCu);
      }
    }
  }

  if (v71)
  {
    [contextCopy setUpdateMessageCache:1];
    v31 = +[IMDMessageStore sharedInstance];
    v32 = [v31 storeMessage:messageCopy context:contextCopy didReplaceBlock:blockCopy];

    v18 = v32;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    *buf = xmmword_2787075F8;
    v73 = *off_278707608;
    v74 = 188;
    v33 = MEMORY[0x277CCACA8];
    v34 = IMFileLocationTrimFileName();
    v35 = v74;
    v36 = MEMORY[0x277CCACA8];
    v37 = objc_opt_class();
    v38 = [v36 stringWithFormat:@"input and output message types are not the same. input message has type %@. output message has type %@", v37, objc_opt_class()];
    v39 = [v33 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"[resultMessage isKindOfClass:[message class]]", "-[IMDServiceSession(IMDServiceSession_Chat_Private) storeMessage:context:didReplaceBlock:shouldStoreBlock:didStoreBlock:block:]", v34, v35, v38];

    v40 = IMGetAssertionFailureHandler();
    if (v40)
    {
      v40(v39);
    }

    else
    {
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D732C();
      }
    }
  }

  if ([messageCopy isTapToRetry])
  {
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        guid = [v18 guid];
        *buf = 138412290;
        *&buf[4] = guid;
        _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Set tap to retry for message %@", buf, 0xCu);
      }
    }

    [v18 setIsTapToRetry:1];
  }

  if (([messageCopy isTypingMessage] & 1) == 0 && IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "  => Result message: %@", buf, 0xCu);
    }
  }

  contactsAvatarRecipeData = [messageCopy contactsAvatarRecipeData];
  if (contactsAvatarRecipeData)
  {
    contactsAvatarRecipeData2 = [v18 contactsAvatarRecipeData];
    v47 = contactsAvatarRecipeData2 == 0;

    if (v47)
    {
      if (IMOSLoggingEnabled())
      {
        v48 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          guid2 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = guid2;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Set avatar likeness data for message %@", buf, 0xCu);
        }
      }

      contactsAvatarRecipeData3 = [messageCopy contactsAvatarRecipeData];
      [v18 setContactsAvatarRecipeData:contactsAvatarRecipeData3];
    }
  }

  bizIntent = [messageCopy bizIntent];
  if (bizIntent)
  {
    bizIntent2 = [v18 bizIntent];
    v53 = bizIntent2 == 0;

    if (v53)
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          guid3 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = guid3;
          _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Set biz intent data for message %@", buf, 0xCu);
        }
      }

      bizIntent3 = [messageCopy bizIntent];
      [v18 setBizIntent:bizIntent3];
    }
  }

  locale = [messageCopy locale];
  if (locale)
  {
    locale2 = [v18 locale];
    v59 = locale2 == 0;

    if (v59)
    {
      if (IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          guid4 = [v18 guid];
          *buf = 138412290;
          *&buf[4] = guid4;
          _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Set locale data for message %@", buf, 0xCu);
        }
      }

      locale3 = [messageCopy locale];
      [v18 setLocale:locale3];
    }
  }

  collaborationInitiationRequestInfo = [messageCopy collaborationInitiationRequestInfo];

  if (collaborationInitiationRequestInfo)
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        collaborationInitiationRequestInfo2 = [messageCopy collaborationInitiationRequestInfo];
        *buf = 138412290;
        *&buf[4] = collaborationInitiationRequestInfo2;
        _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Set collaborationInitiationRequestInfo %@", buf, 0xCu);
      }
    }

    collaborationInitiationRequestInfo3 = [messageCopy collaborationInitiationRequestInfo];
    [v18 setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo3];
  }

  if (IMOSLoggingEnabled())
  {
    v67 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      guid5 = [v18 guid];
      *buf = 138412290;
      *&buf[4] = guid5;
      _os_log_impl(&dword_22B4CC000, v67, OS_LOG_TYPE_INFO, "Set meCard sharing preferences data for message %@", buf, 0xCu);
    }
  }

  [v18 setShouldSendMeCard:{objc_msgSend(messageCopy, "shouldSendMeCard")}];
  if (didStoreBlockCopy)
  {
    didStoreBlockCopy[2](didStoreBlockCopy, v18);
  }

  (v16)[2](v16, v71, messageCopy, v18);

LABEL_85:
}

- (void)useChatRoom:(id)room forGroupChatIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = [(IMDServiceSession *)self canonicalFormOfChatRoom:room];
  if (!self->_groupChatIdentifierToChatRoomMap)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    groupChatIdentifierToChatRoomMap = self->_groupChatIdentifierToChatRoomMap;
    self->_groupChatIdentifierToChatRoomMap = v7;
  }

  if (!self->_chatRoomToGroupChatIdentifierMap)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chatRoomToGroupChatIdentifierMap = self->_chatRoomToGroupChatIdentifierMap;
    self->_chatRoomToGroupChatIdentifierMap = v9;
  }

  [(NSMutableDictionary *)self->_groupChatIdentifierToChatRoomMap setObject:v11 forKey:identifierCopy];
  [(NSMutableDictionary *)self->_chatRoomToGroupChatIdentifierMap setObject:identifierCopy forKey:v11];
}

- (id)_guidForChat:(id)chat style:(unsigned __int8)style
{
  chatCopy = chat;
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v8 = IMCopyAnyServiceGUIDForChat();

  return v8;
}

- (void)_markFromStorageIfNeeded:(id)needed messageGUID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  dCopy = d;
  if (neededCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = dCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Storage context present for message with GUID %@", &v10, 0xCu);
      }
    }

    unsignedIntValue = [neededCopy unsignedIntValue];
    if (([neededCopy unsignedIntValue] & 2) != 0)
    {
      [(IMDServiceSession *)self noteLastItemFromStorage:dCopy];
    }

    else if (unsignedIntValue)
    {
      [(IMDServiceSession *)self noteItemFromStorage:dCopy];
    }
  }
}

- (id)dictionaryForHandlesToGUIDsFromHandleInfo:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(infoCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = infoCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = *MEMORY[0x277D193A8];
    v10 = *MEMORY[0x277D1A490];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 _stringForKey:{v9, v19}];
        if (v13)
        {
          v14 = [v12 _stringForKey:v10];
          v15 = v14;
          if (v14)
          {
            stringGUID = v14;
          }

          else
          {
            stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          }

          v17 = stringGUID;

          [v4 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)registerChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  chatCopy = chat;
  account = [(IMDServiceSession *)self account];
  LOBYTE(v7) = 0;
  [(IMDServiceSession *)self registerChat:chatCopy style:styleCopy displayName:0 groupID:0 originalGroupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:0 account:account isBlackholed:v7];
}

- (void)registerChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID handleInfo:(id)self0 account:(id)self1 isBlackholed:(BOOL)self2
{
  v161 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  styleCopy = style;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  mIDCopy = mID;
  infoCopy = info;
  accountCopy = account;
  if (chatCopy)
  {
    account = accountCopy;
    if (!accountCopy)
    {
      account = [(IMDServiceSession *)self account];
    }

    [(NSRecursiveLock *)self->_lock lock];
    v144 = chatCopy;
    [(IMDServiceSession *)self canonicalizeChatIdentifier:&v144 style:&styleCopy];
    v20 = v144;

    v108 = [(IMDServiceSession *)self _guidForChat:v20 style:styleCopy];
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138413570;
        v150 = v20;
        v151 = 1024;
        v152 = styleCopy;
        v153 = 2112;
        v154 = v108;
        v155 = 2112;
        v156 = infoCopy;
        v157 = 2112;
        v158 = handleCopy;
        v159 = 2112;
        v160 = mIDCopy;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Registering chat identifier: %@   style: %d  guid: %@ handleInfo: %@ lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x3Au);
      }
    }

    v22 = styleCopy;
    v134[0] = MEMORY[0x277D85DD0];
    v134[1] = 3221225472;
    v134[2] = sub_22B6796F0;
    v134[3] = &unk_278707628;
    v134[4] = self;
    v135 = v20;
    v142 = styleCopy;
    v104 = nameCopy;
    v136 = v104;
    v105 = dCopy;
    v137 = v105;
    v106 = iDCopy;
    v138 = v106;
    v102 = handleCopy;
    v139 = v102;
    v101 = mIDCopy;
    v140 = v101;
    v107 = account;
    v141 = v107;
    blackholedCopy = blackholed;
    v120 = v135;
    [(IMDServiceSession *)self _calculateHandleInfoOverrideIfPermittedForChatIdentifier:v135 style:v22 completion:v134];
    v23 = +[IMDChatRegistry sharedInstance];
    v112 = [v23 existingChatWithGUID:v108];

    if (v112)
    {
      participants = [v112 participants];
      if ([participants count])
      {
      }

      else
      {
        v51 = [infoCopy count] == 0;

        if (!v51)
        {
          if (IMOSLoggingEnabled())
          {
            v52 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v150 = infoCopy;
              _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, " => Found chat, but it had no particpants. Updating with handleInfo: %@", buf, 0xCu);
            }
          }

          goto LABEL_44;
        }
      }

      v25 = [(IMDServiceSession *)self _shouldConvergeChatParticipants:v112 withHandleInfo:infoCopy];
      v26 = IMOSLoggingEnabled();
      if (!v25)
      {
        if (v26)
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v150 = v112;
            _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, " => We already have one, nothing to do here. Chat: [%@]", buf, 0xCu);
          }
        }

        goto LABEL_98;
      }

      if (v26)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v150 = infoCopy;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, " => Found chat, but it had a different set of participants. Updating with handleInfo: %@", buf, 0xCu);
        }
      }

      v28 = objc_alloc(MEMORY[0x277CBEB58]);
      participantHandles = [v112 participantHandles];
      v30 = [v28 initWithArray:participantHandles];

      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      obj = infoCopy;
      v31 = [obj countByEnumeratingWithState:&v130 objects:v148 count:16];
      if (v31)
      {
        v32 = *v131;
        v33 = *MEMORY[0x277D193A8];
        v34 = *MEMORY[0x277D192F8];
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v131 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v130 + 1) + 8 * i);
            v37 = [v36 objectForKeyedSubscript:v33];
            [v30 removeObject:v37];
            v38 = objc_alloc_init(IMDChatMemberStatusChangeContext);
            v39 = [v36 objectForKeyedSubscript:v34];
            intValue = [v39 intValue];
            if (intValue)
            {
              v41 = intValue;
            }

            else
            {
              v41 = 2;
            }

            [(IMDChatMemberStatusChangeContext *)v38 setStatus:v41];

            [(IMDChatMemberStatusChangeContext *)v38 setHandleID:v37];
            [(IMDChatMemberStatusChangeContext *)v38 setChatIdentifier:v120];
            [(IMDChatMemberStatusChangeContext *)v38 setStyle:styleCopy];
            [(IMDChatMemberStatusChangeContext *)v38 setUnattributed:1];
            v42 = [(IMDServiceSession *)self didChangeMemberStatus:v38];
          }

          v31 = [obj countByEnumeratingWithState:&v130 objects:v148 count:16];
        }

        while (v31);
      }

      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v43 = v30;
      v44 = [v43 countByEnumeratingWithState:&v126 objects:v147 count:16];
      if (v44)
      {
        v45 = *v127;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v127 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v126 + 1) + 8 * j);
            v48 = objc_alloc_init(IMDChatMemberStatusChangeContext);
            [(IMDChatMemberStatusChangeContext *)v48 setStatus:3];
            [(IMDChatMemberStatusChangeContext *)v48 setHandleID:v47];
            [(IMDChatMemberStatusChangeContext *)v48 setChatIdentifier:v120];
            [(IMDChatMemberStatusChangeContext *)v48 setStyle:styleCopy];
            [(IMDChatMemberStatusChangeContext *)v48 setUnattributed:1];
            v49 = [(IMDServiceSession *)self didChangeMemberStatus:v48];
          }

          v44 = [v43 countByEnumeratingWithState:&v126 objects:v147 count:16];
        }

        while (v44);
      }
    }

LABEL_44:
    v53 = styleCopy;
    v54 = v120;
    if (styleCopy == 45)
    {
      v54 = 0;
    }

    v103 = v54;
    if (v53 == 43)
    {
      __imFirstObject = objc_alloc_init(MEMORY[0x277CBEB18]);
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v116 = infoCopy;
      v63 = [v116 countByEnumeratingWithState:&v122 objects:v146 count:16];
      if (v63)
      {
        obja = *v123;
        v64 = *MEMORY[0x277D193A8];
        v65 = *MEMORY[0x277D193C0];
        v66 = *MEMORY[0x277D193A0];
        do
        {
          for (k = 0; k != v63; ++k)
          {
            if (*v123 != obja)
            {
              objc_enumerationMutation(v116);
            }

            v68 = *(*(&v122 + 1) + 8 * k);
            v69 = [v68 objectForKey:v64];
            v70 = [v68 objectForKey:v65];
            v71 = [v68 objectForKey:v66];
            if (v69)
            {
              if (MEMORY[0x231897A50](v69))
              {
                v72 = IMChatCanonicalIDSIDsForAddress();
                _stripFZIDPrefix = [v72 _stripFZIDPrefix];
              }

              else
              {
                _stripFZIDPrefix = [v69 _stripFZIDPrefix];
                v72 = v69;
              }

              v74 = [[IMDHandle alloc] initWithID:_stripFZIDPrefix unformattedID:v70 countryCode:v71];
              [__imFirstObject addObject:v74];
            }
          }

          v63 = [v116 countByEnumeratingWithState:&v122 objects:v146 count:16];
        }

        while (v63);
      }

      v75 = +[IMDChatRegistry sharedInstance];
      LOBYTE(v100) = blackholed;
      v76 = [v75 chatForHandles:__imFirstObject account:v107 chatIdentifier:v120 style:43 groupID:v105 originalGroupID:v106 displayName:v104 guid:v108 lastAddressedHandle:v102 lastAddressedSIMID:v101 isBlackholed:v100];
    }

    else if (v53 == 45)
    {
      __imFirstObject = [infoCopy __imFirstObject];
      v55 = [__imFirstObject objectForKey:*MEMORY[0x277D193A8]];
      v56 = [__imFirstObject objectForKey:*MEMORY[0x277D193C0]];
      v57 = [__imFirstObject objectForKey:*MEMORY[0x277D193A0]];
      v58 = [__imFirstObject objectForKey:*MEMORY[0x277D19CE8]];
      v59 = [__imFirstObject objectForKey:*MEMORY[0x277D19778]];
      if (!v55)
      {
        v55 = v120;
      }

      bOOLValue = [v58 BOOLValue];
      v61 = [IMDHandle alloc];
      if (bOOLValue)
      {
        v62 = [(IMDHandle *)v61 initWithID:v55 unformattedID:v56 countryCode:v57 personCentricID:v59];
      }

      else
      {
        v62 = [(IMDHandle *)v61 initWithID:v55 unformattedID:v56 countryCode:v57];
      }

      v77 = v62;
      v78 = +[IMDChatRegistry sharedInstance];
      LOBYTE(v99) = blackholed;
      v76 = [v78 chatForHandle:v77 account:v107 chatIdentifier:v120 guid:v108 lastAddressedHandle:v102 lastAddressedSIMID:v101 isBlackholed:v99];
    }

    else
    {
      __imFirstObject = +[IMDChatRegistry sharedInstance];
      v76 = [__imFirstObject chatForRoom:v103 account:v107 chatIdentifier:v120 guid:v108];
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

    if (isMissingMessagesEnabled)
    {
      if ([v76 style] == 43)
      {
        [v76 assignIdentifier:v105 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        service = [v107 service];
        internalName = [service internalName];

        v83 = IMChatLookupDomainForServiceName();
        service2 = [v107 service];
        [v76 assignIdentifier:v105 forDomain:v83 isHistoricalIdentifier:{objc_msgSend(service2, "groupIDIsHistoricalIdentifier")}];

        service3 = [v107 service];
        [v76 assignIdentifier:v106 forDomain:v83 isHistoricalIdentifier:{objc_msgSend(service3, "groupIDIsHistoricalIdentifier") ^ 1}];
      }
    }

    else
    {
      [v76 setGroupID:v105];
      if (v106)
      {
        [v76 setOriginalGroupID:v106];
      }
    }

    [v76 setDisplayName:v104];
    if ([MEMORY[0x277D192C8] isEngramEnabled])
    {
      [v76 setCreateEngramGroupOnMessageSend:1];
    }

    v86 = +[IMDChatStore sharedInstance];
    [v86 storeChat:v76];

    if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled] && objc_msgSend(v76, "isBlackholed"))
    {
      participants2 = [v76 participants];
      v88 = [participants2 count] == 1;

      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      v90 = mEMORY[0x277D1AAA8];
      if (v88)
      {
        v91 = 15;
      }

      else
      {
        v91 = 16;
      }

      if (v88)
      {
        v92 = 13;
      }

      else
      {
        v92 = 14;
      }

      [mEMORY[0x277D1AAA8] trackSpamEvent:v91];

      mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]2 trackSpamEvent:v92];
    }

    if (styleCopy != 45)
    {
      goto LABEL_93;
    }

    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    if ([mEMORY[0x277D19268] isInternalInstall])
    {
      v95 = [v120 hasPrefix:@"chat"];

      if (!v95)
      {
LABEL_93:
        if (IMOSLoggingEnabled())
        {
          v98 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v150 = v76;
            _os_log_impl(&dword_22B4CC000, v98, OS_LOG_TYPE_INFO, "Created chat: %@", buf, 0xCu);
          }
        }

LABEL_98:
        [(NSRecursiveLock *)self->_lock unlock];

        accountCopy = v107;
        goto LABEL_99;
      }

      if (IMOSLoggingEnabled())
      {
        v96 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v150 = v76;
          _os_log_impl(&dword_22B4CC000, v96, OS_LOG_TYPE_INFO, "********** Created bad chat: %@ *************", buf, 0xCu);
        }
      }

      IMLogBacktrace();
      mEMORY[0x277D19268] = [MEMORY[0x277CCAC38] processInfo];
      processName = [mEMORY[0x277D19268] processName];
      IMLogSimulateCrashForProcess();
    }

    goto LABEL_93;
  }

  v120 = 0;
LABEL_99:
}

- (void)canonicalizeChatIdentifier:(id *)identifier style:(unsigned __int8 *)style
{
  v7 = *identifier;
  v8 = *style;
  if (v8 == 35)
  {
    v9 = [(IMDServiceSession *)self canonicalFormOfChatRoom:v7];
LABEL_8:
    *identifier = v9;
    goto LABEL_9;
  }

  if (v8 != 43)
  {
    if (v8 != 45)
    {
      goto LABEL_9;
    }

    v9 = [(IMDServiceSession *)self canonicalFormOfID:v7];
    goto LABEL_8;
  }

  v11 = v7;
  if ([(IMDServiceSession *)self shouldImitateGroupChatUsingChatRooms])
  {
    v10 = [(IMDServiceSession *)self chatRoomForGroupChatIdentifier:v11];
    *identifier = [(IMDServiceSession *)self canonicalFormOfChatRoom:v10];
    *style = 35;
  }

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)_mapRoomChatToGroupChat:(id *)chat style:(unsigned __int8 *)style
{
  if ([(IMDServiceSession *)self shouldImitateGroupChatUsingChatRooms]&& *style == 35)
  {
    v7 = [(IMDServiceSession *)self groupChatIdentifierForChatRoom:*chat];
    if (v7)
    {
      v7 = v7;
      *chat = v7;
      *style = 43;
    }
  }
}

- (id)existingChatsForGroupID:(id)d
{
  dCopy = d;
  v4 = +[IMDChatRegistry sharedInstance];
  uUIDString = [dCopy UUIDString];

  v6 = [v4 existingChatsWithGroupID:uUIDString];

  return v6;
}

- (id)existingChatForID:(id)d
{
  dCopy = d;
  v5 = +[IMDChatRegistry sharedInstance];
  account = [(IMDServiceSession *)self account];
  v7 = [v5 existingChatForID:dCopy account:account];

  return v7;
}

- (id)existingChatsForIDs:(id)ds style:(unsigned __int8)style
{
  styleCopy = style;
  dsCopy = ds;
  v7 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  v9 = [v7 existingChatsForIDs:dsCopy onService:service style:styleCopy];

  return v9;
}

- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style
{
  styleCopy = style;
  identifierCopy = identifier;
  account = [(IMDServiceSession *)self account];
  v8 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:styleCopy account:account updatingAccount:0];

  return v8;
}

- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style updatingAccount:(BOOL)account
{
  accountCopy = account;
  styleCopy = style;
  identifierCopy = identifier;
  account = [(IMDServiceSession *)self account];
  v10 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:styleCopy account:account updatingAccount:accountCopy];

  return v10;
}

- (id)chatForChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account updatingAccount:(BOOL)updatingAccount
{
  updatingAccountCopy = updatingAccount;
  v32 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  accountCopy = account;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(IMDServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v11 = identifierCopy;

  if (v11)
  {
    v12 = [(IMDServiceSession *)self _guidForChat:v11 style:styleCopy];
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 existingChatWithGUID:v12];

    if (v14)
    {
      account = [v14 account];
      if (account == accountCopy)
      {
        updatingAccountCopy = 0;
      }

      if (updatingAccountCopy)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            accountID = [v14 accountID];
            accountID2 = [accountCopy accountID];
            *buf = 138412546;
            v27 = accountID;
            v28 = 2112;
            v29 = accountID2;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updating account ID from: %@ => %@", buf, 0x16u);
          }
        }

        accountID3 = [accountCopy accountID];
        [v14 setAccountID:accountID3];

        v20 = +[IMDChatStore sharedInstance];
        [v20 storeChat:v14];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v27 = v12;
        v28 = 2112;
        v29 = v11;
        v30 = 1024;
        v31 = styleCopy;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Failed to find chat for guid %@ with chatIdentifier: %@, style: %c", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Failed to canonicalize chat identifier", buf, 2u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d
{
  dCopy = d;
  participantsCopy = participants;
  nameCopy = name;
  toIdentifierCopy = toIdentifier;
  identifierCopy = identifier;
  v17 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v20 = [v17 bestCandidateGroupChatWithFromIdentifier:identifierCopy toIdentifier:toIdentifierCopy displayName:nameCopy participants:participantsCopy groupID:dCopy serviceName:internalName];

  return v20;
}

- (id)bestCandidateGroupChatWithFromIdentifier:(id)identifier toIdentifier:(id)toIdentifier displayName:(id)name participants:(id)participants groupID:(id)d originalGroupID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  participantsCopy = participants;
  nameCopy = name;
  toIdentifierCopy = toIdentifier;
  identifierCopy = identifier;
  v20 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v23 = [v20 bestCandidateGroupChatWithFromIdentifier:identifierCopy toIdentifier:toIdentifierCopy displayName:nameCopy participants:participantsCopy groupID:dCopy originalGroupID:iDCopy serviceName:internalName];

  return v23;
}

- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog completionBlock:(id)block
{
  watchdogCopy = watchdog;
  styleCopy = style;
  blockCopy = block;
  chatCopy = chat;
  sendingCopy = sending;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self processMessageForSending:sendingCopy toChat:chatCopy style:styleCopy allowWatchdog:watchdogCopy account:account completionBlock:blockCopy];
}

- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog account:(id)account didReplaceMessageBlock:(id)block completionBlock:(id)completionBlock
{
  watchdogCopy = watchdog;
  v58 = *MEMORY[0x277D85DE8];
  sendingCopy = sending;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  if (sendingCopy)
  {
    if (!accountCopy)
    {
      accountCopy = [(IMDServiceSession *)self account];
    }

    v48 = chatCopy;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v48 style:&styleCopy];
    v40 = v48;

    if (watchdogCopy && ([sendingCopy isTypingMessage] & 1) == 0 && (objc_msgSend(sendingCopy, "isSuggestedActionResponse") & 1) == 0 && (objc_msgSend(sendingCopy, "isRCSEncryptionTest") & 1) == 0)
    {
      guid = [sendingCopy guid];
      [(IMDServiceSession *)self _updateWatchdogForMessageGUID:guid];
    }

    [(IMDServiceSession *)self _configureSessionInformationOnItem:sendingCopy toChat:v40 withStyle:styleCopy forAccount:accountCopy];
    [(IMDServiceSession *)self _setOutgoingFlagsOnMessage:sendingCopy];
    [sendingCopy setErrorCode:0];
    isBeingRetried = [sendingCopy isBeingRetried];
    v47 = 0;
    v21 = MEMORY[0x277D1AAB0];
    balloonBundleID = [sendingCopy balloonBundleID];
    body = [sendingCopy body];
    payloadData = [sendingCopy payloadData];
    v39 = [v21 photoShareURLFromPluginBundleID:balloonBundleID contentString:body payload:payloadData shouldAccept:&v47];

    v25 = [(IMDServiceSession *)self existingChatForID:v40];
    v26 = v25;
    if (v39 && v47 == 1)
    {
      if (v25)
      {
        v27 = +[IMDMomentShareManager sharedInstance];
        [v27 registerAndAcceptMomentShareForMessage:sendingCopy inChat:v26 resetAssetTransfers:1];
      }

      else if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          guid2 = [sendingCopy guid];
          *buf = 138412290;
          v51 = guid2;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Failed to accept moment share for message guid: %@", buf, 0xCu);
        }
      }
    }

    if ([sendingCopy containsRichLink])
    {
      v31 = [(IMDServiceSession *)self _isMessageSWYSpamMessage:sendingCopy inChat:v26];
      v45 = 0;
      v46 = 0;
      v32 = [(IMDServiceSession *)self _shouldShowSWYQuickActionForMessage:sendingCopy outAppName:&v46 outBundleID:&v45];
      v33 = v46;
      v34 = v45;
      if (v31 || v32)
      {
        [(IMDServiceSession *)self _configureSyndicationRangesForMessage:sendingCopy forChat:v26 withSyndicationStatus:2];
        [sendingCopy setWasDetectedAsSWYSpam:v31];
        [sendingCopy setSwyAppName:v33];
        [sendingCopy setSwyBundleID:v34];
        if (IMOSLoggingEnabled())
        {
          log = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v35 = @"NO";
            *buf = 138413058;
            v51 = sendingCopy;
            if (v31)
            {
              v36 = @"YES";
            }

            else
            {
              v36 = @"NO";
            }

            v52 = 2112;
            v53 = v36;
            if (v32)
            {
              v35 = @"YES";
            }

            v54 = 2112;
            v55 = v35;
            v56 = 2112;
            v57 = v33;
            _os_log_impl(&dword_22B4CC000, log, OS_LOG_TYPE_INFO, "Configuring Syndication Ranges for Message: %@. isSWYSpam %@, showQuickAction: %@ swyAppName: %@", buf, 0x2Au);
          }
        }
      }
    }

    if ([v26 isChatBot])
    {
      [sendingCopy setBalloonBundleID:*MEMORY[0x277D196D8]];
    }

    v37 = objc_alloc_init(IMDMessageStorageContext);
    [(IMDMessageStorageContext *)v37 setForceReplace:isBeingRetried ^ 1u];
    [(IMDMessageStorageContext *)v37 setModifyError:isBeingRetried ^ 1u];
    [(IMDMessageStorageContext *)v37 setModifyFlags:isBeingRetried ^ 1u];
    [(IMDMessageStorageContext *)v37 setFlagMask:557068];
    [(IMDMessageStorageContext *)v37 setChat:v26];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_22B67A764;
    v42[3] = &unk_278707650;
    v42[4] = self;
    v43 = sendingCopy;
    v44 = completionBlockCopy;
    [(IMDServiceSession *)self storeMessage:v43 context:v37 didReplaceBlock:blockCopy shouldStoreBlock:0 didStoreBlock:0 block:v42];

    chatCopy = v40;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "No message in prepare", buf, 2u);
      }
    }

    (*(completionBlockCopy + 2))(completionBlockCopy, 0);
  }
}

- (void)_configureAccountInformationOnItem:(id)item withAccount:(id)account
{
  accountCopy = account;
  itemCopy = item;
  service = [accountCopy service];
  internalName = [service internalName];
  [itemCopy setService:internalName];

  accountID = [accountCopy accountID];
  [itemCopy setAccountID:accountID];

  loginID = [accountCopy loginID];

  [itemCopy setAccount:loginID];
}

- (void)_configureTimeOnOutgoingItem:(id)item
{
  itemCopy = item;
  time = [itemCopy time];

  if (!time)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [itemCopy setTime:date];
  }
}

- (void)_configureIdentifierForOutgoingItem:(id)item withIdentifier:(id)identifier withStyle:(unsigned __int8)style
{
  if (style == 45)
  {
    [item setHandle:identifier];
  }

  else
  {
    [item setRoomName:identifier];
  }
}

- (void)_configureSessionInformationOnItem:(id)item toChat:(id)chat withStyle:(unsigned __int8)style forAccount:(id)account
{
  styleCopy = style;
  accountCopy = account;
  chatCopy = chat;
  itemCopy = item;
  [(IMDServiceSession *)self _configureTimeOnOutgoingItem:itemCopy];
  [(IMDServiceSession *)self _configureAccountInformationOnItem:itemCopy withAccount:accountCopy];

  [(IMDServiceSession *)self _configureIdentifierForOutgoingItem:itemCopy withIdentifier:chatCopy withStyle:styleCopy];
}

- (void)_setOutgoingFlagsOnMessage:(id)message
{
  messageCopy = message;
  [messageCopy setFlags:{objc_msgSend(messageCopy, "flags") & 0xFFFFFFFFFFFF7FFBLL | 4}];
}

- (void)_messageStoreCompletion:(BOOL)completion inputMessage:(id)message outputMessage:(id)outputMessage originalMessage:(id)originalMessage completionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  outputMessageCopy = outputMessage;
  originalMessageCopy = originalMessage;
  blockCopy = block;
  if (completion || [messageCopy scheduleType] == 1 || (objc_msgSend(messageCopy, "criticalMessagingAppName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
  {
    if (([messageCopy isTypingMessage] & 1) == 0 && objc_msgSend(messageCopy, "scheduleType") != 1 && IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = messageCopy;
        v23 = 2112;
        v24 = outputMessageCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "  => Message was stored. Input: %@   Output: %@", &v21, 0x16u);
      }
    }

    v19 = [(IMDServiceSession *)self _determineResultMessageForInput:messageCopy output:outputMessageCopy original:originalMessageCopy];
    consumedSessionPayloads = [originalMessageCopy consumedSessionPayloads];
    if (![(IMDServiceSession *)self _shouldDropSendingMessage])
    {
      if (consumedSessionPayloads)
      {
        [v19 setConsumedSessionPayloads:consumedSessionPayloads];
      }

      [v19 setShouldNotifyOnSend:{objc_msgSend(originalMessageCopy, "shouldNotifyOnSend")}];
      [v19 setSentViaRemoteIntent:{objc_msgSend(originalMessageCopy, "sentViaRemoteIntent")}];
      if (blockCopy)
      {
        blockCopy[2](blockCopy, v19);
      }
    }
  }
}

- (id)_determineResultMessageForInput:(id)input output:(id)output original:(id)original
{
  v19 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  outputCopy = output;
  originalCopy = original;
  v10 = outputCopy;
  if (outputCopy)
  {
LABEL_2:
    v11 = v10;
    goto LABEL_4;
  }

  v11 = inputCopy;
  if (!v11)
  {
    v15 = IMOSLoggingEnabled();
    v10 = originalCopy;
    if (v15)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = originalCopy;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "  => No result? Using the requested message: %@", &v17, 0xCu);
      }

      v10 = originalCopy;
    }

    goto LABEL_2;
  }

LABEL_4:
  if ([originalCopy isBeingRetried])
  {
    [v11 setIsBeingRetried:1];
  }

  retryToParticipant = [originalCopy retryToParticipant];

  if (retryToParticipant)
  {
    retryToParticipant2 = [originalCopy retryToParticipant];
    [v11 setRetryToParticipant:retryToParticipant2];
  }

  return v11;
}

- (BOOL)_shouldDropSendingMessage
{
  v2 = IMGetCachedDomainBoolForKey();
  if (v2 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, " ** DropSendingMessage is enabled, failing send message", v5, 2u);
    }
  }

  return v2;
}

- (id)itemWithGUID:(id)d
{
  dCopy = d;
  v4 = +[IMDMessageStore sharedInstance];
  v5 = [v4 itemWithGUID:dCopy];

  return v5;
}

- (id)chatForItemWithGUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
  v6 = [_sharedMessageStore chatForMessageGUID:dCopy];

  if (!v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for itemGUID: %@", &v9, 0xCu);
    }
  }

  return v6;
}

- (int64_t)_incomingMessageIndexReason
{
  if ([(IMDServiceSession *)self isAwaitingStorageTimer])
  {
    return 1012;
  }

  else
  {
    return 1000;
  }
}

- (void)storeItem:(id)item toChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v34[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  if (itemCopy)
  {
    v10 = [(IMDServiceSession *)self chatForChatIdentifier:chatCopy style:styleCopy updatingAccount:1];
    if ([itemCopy type] == 6)
    {
      properties = [v10 properties];
      if (!properties || ([v10 properties], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", @"lastTUConversationCreatedDate"), v13 = objc_claimAutoreleasedReturnValue(), v13, v12, properties, !v13))
      {
        properties2 = [v10 properties];
        if (properties2)
        {
          properties3 = [v10 properties];
          v16 = [properties3 mutableCopy];
        }

        else
        {
          v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        date = [MEMORY[0x277CBEAA8] date];
        [v16 setValue:date forKey:@"lastTUConversationCreatedDate"];

        v18 = [v16 copy];
        [v10 updateProperties:v18];
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

    v20 = +[IMDMessageStore sharedInstance];
    v21 = [v20 storeItem:itemCopy forceReplace:0];

    v22 = +[IMDChatStore sharedInstance];
    guid = [itemCopy guid];
    [v22 addMessageWithGUID:guid toChat:v10 reason:-[IMDServiceSession _incomingMessageIndexReason](self skipIndexing:{"_incomingMessageIndexReason"), skipIndexing}];

    if (v21)
    {
      v34[0] = v21;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      v25 = IMCreateSerializedItemsFromArray();

      v26 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self, "broadcasterForChatListenersWithBlackholeStatus:", [v10 isBlackholed]);
      accountID = [v10 accountID];
      chatIdentifier = [v10 chatIdentifier];
      [v26 account:accountID chat:chatIdentifier style:styleCopy messagesUpdated:v25];

      guid2 = [v10 guid];
      properties4 = [v10 properties];
      [v26 chat:guid2 propertiesUpdated:properties4];
    }

    else if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = 138412290;
        v33 = itemCopy;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Failed to store item %@", &v32, 0xCu);
      }
    }
  }
}

- (void)sendRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8904(self);
  }
}

- (void)sendIncomingRelayMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8904(self);
  }
}

- (void)sendRelayDeliveryReceiptForMessageID:(id)d toChat:(id)chat
{
  v5 = IMLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D89A0(self);
  }
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  chatCopy = chat;
  messageCopy = message;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self sendMessage:messageCopy toChat:chatCopy style:styleCopy account:account];
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style destinationHandles:(id)handles
{
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8A3C();
  }
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  if (messageCopy)
  {
    if ([messageCopy isBeingRetried])
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          guid = [messageCopy guid];
          *buf = 138412290;
          v31 = guid;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Not sending message up to client because this message is being retried. Guid %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v28 = chatCopy;
      [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v28 style:&styleCopy];
      v15 = v28;

      [(IMDServiceSession *)self _configureSessionInformationOnItem:messageCopy toChat:v15 withStyle:styleCopy forAccount:accountCopy];
      [(IMDServiceSession *)self _setOutgoingFlagsOnMessage:messageCopy];
      v16 = [(IMDServiceSession *)self chatForChatIdentifier:v15 style:styleCopy account:accountCopy updatingAccount:1];
      if ([messageCopy scheduleType] == 1)
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            guid2 = [messageCopy guid];
            *buf = 138412290;
            v31 = guid2;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Not storing scheduled message or notifying client about message with GUID: %@ ", buf, 0xCu);
          }
        }
      }

      else
      {
        v19 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v19 setForceReplace:1];
        [(IMDMessageStorageContext *)v19 setModifyError:1];
        [(IMDMessageStorageContext *)v19 setModifyFlags:1];
        [(IMDMessageStorageContext *)v19 setFlagMask:0x2000000800CLL];
        [(IMDMessageStorageContext *)v19 setChat:v16];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = sub_22B67B8F4;
        v26[3] = &unk_278707678;
        v27 = v16;
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = sub_22B67BB4C;
        v20[3] = &unk_2787076A0;
        v21 = v27;
        selfCopy = self;
        v23 = accountCopy;
        v24 = v15;
        v25 = styleCopy;
        [(IMDServiceSession *)self storeMessage:messageCopy context:v19 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:v26 block:v20];
      }

      chatCopy = v15;
    }
  }
}

- (void)revokeSentMessage:(id)message inChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      displayName = [(IMDServiceSession *)self displayName];
      guid = [messageCopy guid];
      guid2 = [chatCopy guid];
      v12 = 138412802;
      v13 = displayName;
      v14 = 2112;
      v15 = guid;
      v16 = 2112;
      v17 = guid2;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "%@ Service session does not support message revocation for %@ in chat %@", &v12, 0x20u);
    }
  }
}

- (void)relayLegacySatelliteMessage:(id)message toChat:(id)chat localWatchOnly:(BOOL)only
{
  messageCopy = message;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Service session does not support legacy satellite relay", v9, 2u);
    }
  }
}

- (void)downgradeRequestedForHandleID:(id)d expirationDate:(id)date preferredService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138413058;
      v24 = v13;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = dateCopy;
      v29 = 2112;
      v30 = serviceCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ setting downgrade flag for %@ (expiration: %@) to %@", buf, 0x2Au);
    }
  }

  v14 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45 updatingAccount:1];
  if (!v14)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = dCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, " => No chat for %@, joining chat", buf, 0xCu);
      }
    }

    v16 = *MEMORY[0x277D192F8];
    v21[0] = *MEMORY[0x277D193A8];
    v21[1] = v16;
    v22[0] = dCopy;
    v22[1] = &unk_283F4ECA8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v20 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(IMDServiceSession *)self didJoinChat:dCopy style:45 displayName:0 groupID:0 lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:v18];

    v14 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45];
  }

  [v14 setRequestedDowngradeService:serviceCopy];
  if (dateCopy)
  {
    [v14 setRequestedDowngradeExpirationDate:dateCopy];
  }

  else
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v14 setRequestedDowngradeExpirationDate:v19];
  }
}

- (void)clearDowngradeRequestForHandleID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "%@ clearing downgrade flag for %@", &v11, 0x16u);
    }
  }

  v8 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45 updatingAccount:1];
  v9 = v8;
  if (v8)
  {
    [v8 setRequestedDowngradeService:0];
    [v9 setRequestedDowngradeExpirationDate:0];
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, " => No existing chat, no change to downgrade flag", &v11, 2u);
    }
  }
}

- (BOOL)hasValidDowngradeRequestForHandleID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(IMDServiceSession *)self chatForChatIdentifier:dCopy style:45 updatingAccount:0];
  v6 = v5;
  if (v5)
  {
    requestedDowngradeService = [v5 requestedDowngradeService];
    requestedDowngradeExpirationDate = [v6 requestedDowngradeExpirationDate];
    v9 = 0;
    if ([requestedDowngradeService length] && requestedDowngradeExpirationDate)
    {
      v10 = [MEMORY[0x277CBEAA8] now];
      v11 = [requestedDowngradeExpirationDate laterDate:v10];

      if (v11 == v10)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = 138412546;
            v24 = requestedDowngradeService;
            v25 = 2112;
            v26 = requestedDowngradeExpirationDate;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Previous downgrade request to %@ expired on %@, clearing", &v23, 0x16u);
          }
        }

        [v6 setRequestedDowngradeService:0];
        [v6 setRequestedDowngradeExpirationDate:0];
        v9 = 0;
      }

      else
      {
        v12 = +[IMDMessageStore sharedInstance];
        service = [(IMDServiceSession *)self service];
        internalName = [service internalName];
        v15 = [v12 lastIncomingMessageForChatWithIdentifier:dCopy chatStyle:45 onService:internalName];

        v16 = +[IMDMessageStore sharedInstance];
        v17 = [v16 lastIncomingMessageForChatWithIdentifier:dCopy chatStyle:45 onService:requestedDowngradeService];

        time = [v15 time];
        time2 = [v17 time];
        if (v17)
        {
          if (v15)
          {
            v20 = [time laterDate:time2];
            v9 = v20 != time;
          }

          else
          {
            v9 = 1;
          }
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sentDowngradeRequestToHandleID:(id)d fromID:(id)iD
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Downgrade request was sent to %@", &v8, 0xCu);
    }
  }
}

- (void)sendReadReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style reflectOnly:(BOOL)only
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageReadReceiptForMessageID:guid account:account];
}

- (void)sendDeliveredQuietlyReceiptForMessage:(id)message forIncomingMessageFromIDSID:(id)d toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style withWillSendToDestinationsHandler:(id)handler
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:guid account:account];
}

- (void)sendNotifyRecipientCommandForMessage:(id)message toChatGuid:(id)guid identifier:(id)identifier style:(unsigned __int8)style
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendNotifyRecipientCommandForMessageID:guid account:account];
}

- (void)sendPlayedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessagePlayedReceiptForMessageID:guid account:account];
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  accountCopy = account;
  guid = [message guid];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:guid account:accountCopy];
}

- (void)sendSavedReceiptForMessage:(id)message toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style
{
  guid = [message guid];
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:guid account:account];
}

- (void)sendSyndicationAction:(id)action toChatsWithIdentifiers:(id)identifiers
{
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D8A7C();
  }
}

- (void)sendDeliveryReceiptForMessageID:(id)d toID:(id)iD deliveryContext:(id)context needsDeliveryReceipt:(id)receipt callerID:(id)callerID account:(id)account
{
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  receiptCopy = receipt;
  callerIDCopy = callerID;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not sending delivery receipt", v20, 2u);
    }
  }
}

- (void)_blastDoorProcessingWithIMMessageItem:(id)item chat:(id)chat account:(id)account fromToken:(id)token fromIDSID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier participants:(id)self0 groupName:(id)self1 groupID:(id)self2 isFromMe:(BOOL)self3 isLastFromStorage:(BOOL)self4 isFromStorage:(BOOL)self5 batchID:(id)self6 hideLockScreenNotification:(BOOL)self7 wantsCheckpointing:(BOOL)self8 needsDeliveryReceipt:(id)self9 messageBalloonPayloadAttachmentDictionary:(id)dictionary inlineAttachments:(id)attachments attributionInfoArray:(id)array nicknameDictionary:(id)nicknameDictionary availabilityVerificationRecipientChannelIDPrefix:(id)prefix availabilityVerificationRecipientEncryptionValidationToken:(id)validationToken availabilityOffGridRecipientSubscriptionValidationToken:(id)subscriptionValidationToken availabilityOffGridRecipientEncryptionValidationToken:(id)encryptionValidationToken idsService:(id)service messageContext:(id)context isFromTrustedSender:(BOOL)item0 isFromSnapTrustedSender:(BOOL)item1 wasContextUsed:(BOOL)item2 isBlackholed:(BOOL)item3 shouldTrackForRequery:(BOOL)item4 isFiltered:(int64_t)item5 spamDetectionSource:(int64_t)item6 completionBlock:(id)item7
{
  v72 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  accountCopy = account;
  tokenCopy = token;
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  participantsCopy = participants;
  nameCopy = name;
  iDCopy = iD;
  batchIDCopy = batchID;
  receiptCopy = receipt;
  dictionaryCopy = dictionary;
  attachmentsCopy = attachments;
  arrayCopy = array;
  nicknameDictionaryCopy = nicknameDictionary;
  prefixCopy = prefix;
  validationTokenCopy = validationToken;
  subscriptionValidationTokenCopy = subscriptionValidationToken;
  encryptionValidationTokenCopy = encryptionValidationToken;
  serviceCopy = service;
  contextCopy = context;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v49 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = participantsCopy;
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138543362;
      v71 = internalName;
      _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Not handling, blastdoor not supported in %{public}@ yet", buf, 0xCu);

      participantsCopy = v50;
    }
  }
}

- (void)requestGroupPhotoIfNecessary:(id)necessary incomingParticipantVersion:(int64_t)version incomingGroupPhotoCreationTime:(id)time toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  necessaryCopy = necessary;
  timeCopy = time;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Not requesting group photo, subclass for iMessage should handle", v16, 2u);
    }
  }
}

- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh
{
  backgroundCopy = background;
  identifierCopy = identifier;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not setting transcript background, subclass for iMessage should handle.", v13, 2u);
    }
  }
}

- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not requesting transcript background, subclass for iMessage should handle.", v13, 2u);
    }
  }
}

- (void)requestTranscriptBackgroundIfNecessary:(id)necessary toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Not requesting transcript background, subclass for iMessage should handle.", v12, 2u);
    }
  }
}

- (void)receiveIncomingBlastdoorBackgroundCommand:(id)command for:(id)for sender:(id)sender senderContext:(id)context
{
  commandCopy = command;
  forCopy = for;
  senderCopy = sender;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Not handling incoming transcript background command, subclass for iMessage should handle.", v14, 2u);
    }
  }
}

- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Not re-fetching transcript background, subclass for iMessage should handle.", v6, 2u);
    }
  }
}

- (void)sendLocationSharingInfo:(id)info toID:(id)d completionBlock:(id)block
{
  if (block)
  {
    (*(block + 2))(block, 0);
  }
}

- (void)fetchIncomingPendingMessagesFromHandlesIDs:(id)ds
{
  v8 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Service session %@ does not support message fetching", &v6, 0xCu);
    }
  }
}

- (void)trackTimeSensitiveContentInMessageItem:(id)item chat:(id)chat
{
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  otcUtilities = [(IMDServiceSession *)self otcUtilities];
  body = [itemCopy body];
  sender = [itemCopy sender];
  guid = [itemCopy guid];
  v12 = [otcUtilities createOTCFromMessageBody:body sender:sender guid:guid];

  if (v12)
  {
    v13 = +[IMDOneTimeCodeManager sharedInstance];
    [v13 startTrackingCode:v12];

    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A238]];
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

  if (isPriorityMessagesEnabled)
  {
    if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled])
    {
      if (v12 && (([MEMORY[0x277D1AB08] timeSensitivePriorityEnabled] & 1) != 0 || objc_msgSend(MEMORY[0x277D1AB08], "verificationCodesPriorityEnabled")))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          guid2 = [itemCopy guid];
          *buf = 138412290;
          v34 = guid2;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: onetime pass code", buf, 0xCu);
        }

        goto LABEL_35;
      }

      filterCategory = [chatCopy filterCategory];
      if (filterCategory == 4)
      {
        if ([MEMORY[0x277D1AB08] transactionsPriorityEnabled])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_36;
          }

          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            guid3 = [itemCopy guid];
            *buf = 138412290;
            v34 = guid3;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category transactional", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }

      else if (filterCategory == 3)
      {
        if ([MEMORY[0x277D1AB08] promotionsPriorityEnabled])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_36;
          }

          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            guid4 = [itemCopy guid];
            *buf = 138412290;
            v34 = guid4;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category promotional", buf, 0xCu);
          }

          goto LABEL_35;
        }
      }

      else if (filterCategory == 1 && [MEMORY[0x277D1AB08] personalPriorityEnabled])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          guid5 = [itemCopy guid];
          *buf = 138412290;
          v34 = guid5;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: filter category unknown sender", buf, 0xCu);
        }

        goto LABEL_35;
      }
    }

    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    if ([mEMORY[0x277D19268] isInternalInstall])
    {
      messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
      v25 = [messagesAppDomain BOOLForKey:@"ForcePriorityMessage"];

      if (v25)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          guid6 = [itemCopy guid];
          *buf = 138412290;
          v34 = guid6;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Marking message.guid: %@, as sensitive due to: internal bypass", buf, 0xCu);
        }

LABEL_35:

LABEL_36:
        time = [itemCopy time];
        if (time)
        {
          [itemCopy setIsTimeSensitive:1];
          v28 = +[IMDMessageStore sharedInstance];
          LOBYTE(v32) = 0;
          v29 = [v28 storeMessage:itemCopy forceReplace:1 modifyError:0 modifyFlags:1 flagMask:0 updateMessageCache:1 calculateUnreadCount:v32];

          [chatCopy updateTimeSensitiveExpirationDateWithMessageTime:time hasOneTimeCode:v12 != 0];
        }

        else
        {
          v31 = IMLogHandleForCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D8ABC(itemCopy);
          }
        }

LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      time = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(time, OS_LOG_TYPE_INFO))
      {
        guid7 = [itemCopy guid];
        *buf = 138412290;
        v34 = guid7;
        _os_log_impl(&dword_22B4CC000, time, OS_LOG_TYPE_INFO, "No time sensitive content found for message.guid: %@", buf, 0xCu);
      }

      goto LABEL_46;
    }
  }

LABEL_47:
}

- (void)didLeaveChat:(id)chat style:(unsigned __int8)style account:(id)account messageID:(id)d
{
  styleCopy = style;
  v38 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  accountCopy = account;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v33 = chatCopy;
      v34 = 1024;
      v35 = styleCopy;
      v36 = 1024;
      v37 = 3;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Did leave chat: %@  style: %c setting state: %d", buf, 0x18u);
    }
  }

  v25 = objc_alloc_init(IMDChatStatusChangeContext);
  [(IMDChatStatusChangeContext *)v25 setMessageID:dCopy];
  [(IMDChatStatusChangeContext *)v25 setAccount:accountCopy];
  [(IMDServiceSession *)self didUpdateChatStatus:3 chat:chatCopy style:styleCopy context:v25];
  v11 = [(IMDServiceSession *)self _guidForChat:chatCopy style:styleCopy];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = +[IMDChatRegistry sharedInstance];
  v13 = [v12 allExistingChatsWithIdentifier:chatCopy style:styleCopy];

  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = 0;
  v16 = *v28;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v27 + 1) + 8 * i);
      guid = [v18 guid];
      v20 = [guid isEqualToString:v11];

      if ((v20 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = v18;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Leaving sibling chat %@", buf, 0xCu);
          }
        }

        [v18 setState:0];
        v22 = +[IMDChatStore sharedInstance];
        [v22 storeChat:v18];

        v15 = 1;
      }
    }

    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v14);

  if (v15)
  {
    v13 = +[IMDMessageStore sharedInstance];
    [v13 updateStampForGUID:v11];
LABEL_20:
  }
}

- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)mID handleInfo:(id)self0
{
  styleCopy = style;
  v40 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  handleCopy = handle;
  mIDCopy = mID;
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138414082;
      v25 = chatCopy;
      v26 = 1024;
      v27 = styleCopy;
      v28 = 1024;
      v29 = 2;
      v30 = 2112;
      v31 = nameCopy;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2112;
      v35 = iDCopy;
      v36 = 2112;
      v37 = handleCopy;
      v38 = 2112;
      v39 = mIDCopy;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Did join chat: %@  style: %c setting state: %d   name: %@   groupID: %@ originalGroupID: %@ lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x4Au);
    }
  }

  [(IMDServiceSession *)self didUpdateChatStatus:2 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy originalGroupID:iDCopy lastAddressedHandle:handleCopy lastAddressedSIMID:mIDCopy handleInfo:infoCopy];
}

- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD handleInfo:(id)info category:(int64_t)category spamExtensionName:(id)self0
{
  styleCopy = style;
  v38 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  nameCopy = name;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  extensionNameCopy = extensionName;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413826;
      v25 = chatCopy;
      v26 = 1024;
      v27 = styleCopy;
      v28 = 1024;
      v29 = 2;
      v30 = 2112;
      v31 = nameCopy;
      v32 = 2112;
      v33 = dCopy;
      v34 = 2048;
      categoryCopy = category;
      v36 = 2112;
      v37 = extensionNameCopy;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Did join chat: %@  style: %c setting state: %d   name: %@   groupID: %@  category %ld extensionName %@", buf, 0x40u);
    }
  }

  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didUpdateChatStatus:2 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy originalGroupID:iDCopy handleInfo:infoCopy account:account category:category spamExtensionName:extensionNameCopy];
}

- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d handleInfo:(id)info account:(id)account isBlackholed:(BOOL)blackholed
{
  styleCopy = style;
  v32 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  nameCopy = name;
  dCopy = d;
  infoCopy = info;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v23 = chatCopy;
      v24 = 1024;
      v25 = styleCopy;
      v26 = 1024;
      v27 = 2;
      v28 = 2112;
      v29 = nameCopy;
      v30 = 2112;
      v31 = dCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Did join chat: %@  style: %c setting state: %d   name: %@   groupID: %@", buf, 0x2Cu);
    }
  }

  LOBYTE(v21) = blackholed;
  [(IMDServiceSession *)self didUpdateChatStatus:2 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy handleInfo:infoCopy account:accountCopy isBlackholed:v21];
}

- (void)didJoinChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d handleInfo:(id)info category:(int64_t)category account:(id)account isBlackholed:(BOOL)self0 spamDetectionSource:(int64_t)self1
{
  styleCopy = style;
  v34 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  nameCopy = name;
  dCopy = d;
  infoCopy = info;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v25 = chatCopy;
      v26 = 1024;
      v27 = styleCopy;
      v28 = 1024;
      v29 = 2;
      v30 = 2112;
      v31 = nameCopy;
      v32 = 2112;
      v33 = dCopy;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Did join chat: %@  style: %c setting state: %d   name: %@   groupID: %@", buf, 0x2Cu);
    }
  }

  LOBYTE(v23) = blackholed;
  [(IMDServiceSession *)self didUpdateChatStatus:2 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy handleInfo:infoCopy account:accountCopy category:category isBlackholed:v23 spamDetectionSource:source];
}

- (void)didJoinReadOnlyChat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d handleInfo:(id)info category:(int64_t)category spamExtensionName:(id)extensionName
{
  styleCopy = style;
  v36 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  nameCopy = name;
  dCopy = d;
  infoCopy = info;
  extensionNameCopy = extensionName;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413826;
      v23 = chatCopy;
      v24 = 1024;
      v25 = styleCopy;
      v26 = 1024;
      v27 = 7;
      v28 = 2112;
      v29 = nameCopy;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2048;
      categoryCopy = category;
      v34 = 2112;
      v35 = extensionNameCopy;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Did join chat: %@  style: %c setting state: %d   name: %@   groupID: %@  category %ld extensionName %@", buf, 0x40u);
    }
  }

  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didUpdateChatStatus:7 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy originalGroupID:0 handleInfo:infoCopy account:account category:category spamExtensionName:extensionNameCopy];
}

- (void)didReceiveReplaceMessageID:(int)d forChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v6 = *&d;
  chatCopy = chat;
  if (styleCopy == 45)
  {
    v13 = chatCopy;
    v9 = +[IMDMessageStore sharedInstance];
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    v12 = [v9 deleteMessagesWithReplaceMessageID:v6 fromHandle:v13 onService:internalName];

    chatCopy = v13;
  }
}

- (void)didReceiveErrorMessage:(id)message forChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  chatCopy = chat;
  chatCopy2 = chat;
  messageCopy = message;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&chatCopy style:&styleCopy];
  v9 = chatCopy;

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  v11 = [v10 initWithObjectsAndKeys:{messageCopy, *MEMORY[0x277CCA450], 0}];

  v12 = objc_alloc(MEMORY[0x277CCA9B8]);
  v13 = [v12 initWithDomain:*MEMORY[0x277D190E0] code:0 userInfo:v11];
  if (![(IMDServiceSession *)self isAwaitingStorageTimer])
  {
    broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
    accountID = [(IMDServiceSession *)self accountID];
    [broadcasterForChatListeners account:accountID chat:v9 style:styleCopy chatProperties:0 error:v13];
  }
}

- (void)didReceiveError:(unsigned int)error forMessageID:(id)d forceError:(BOOL)forceError
{
  forceErrorCopy = forceError;
  v6 = *&error;
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didReceiveError:v6 forMessageID:dCopy forceError:forceErrorCopy account:account];
}

- (void)didReceiveError:(unsigned int)error forMessageID:(id)d forceError:(BOOL)forceError account:(id)account
{
  forceErrorCopy = forceError;
  v8 = *&error;
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = @"NO";
      *v36 = 67109634;
      *&v36[4] = v8;
      *&v36[8] = 2112;
      if (forceErrorCopy)
      {
        v13 = @"YES";
      }

      *&v36[10] = dCopy;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "error: %d  message: %@  force error: %@", v36, 0x1Cu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v16 = [IMDMessageStore sharedInstance:*v36];
      v17 = [v16 messageWithGUID:dCopy];

      if (v17)
      {
        _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
        v19 = [_sharedMessageStore chatForMessage:v17];

        if (!v19 && IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v36 = 138412290;
            *&v36[4] = v17;
            _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for message: %@", v36, 0xCu);
          }
        }

        if (forceErrorCopy || ![v17 isDelivered])
        {
          if (IMOSLoggingEnabled())
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *v36 = 138412546;
              *&v36[4] = v17;
              *&v36[12] = 1024;
              *&v36[14] = v8;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Found old message: %@  for error: %d", v36, 0x12u);
            }
          }

          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isLQMHQEnabled = [mEMORY[0x277D1A9B8] isLQMHQEnabled];

          if (!isLQMHQEnabled || ((v26 = [v17 isHQTransfer], v8) ? (v27 = v26) : (v27 = 0), (v27 & 1) == 0))
          {
            [v17 setErrorCode:v8];
          }

          scheduleType = [v17 scheduleType];
          if (v8 && scheduleType == 2)
          {
            [(IMDServiceSession *)self _handleScheduledMessageFailure:v17];
          }

          v29 = +[IMDMessageStore sharedInstance];
          v30 = [v29 storeMessage:v17 forceReplace:0 modifyError:1 modifyFlags:0 flagMask:0];

          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *v36 = 138412290;
              *&v36[4] = v30;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Updated message: %@", v36, 0xCu);
            }
          }

          if ([(IMDServiceSession *)self isAwaitingStorageTimer])
          {
            guid = [v30 guid];
            [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid];
          }

          else
          {
            guid = [(IMDServiceSession *)self broadcasterForChatListeners];
            accountID = [accountCopy accountID];
            chatIdentifier = [v19 chatIdentifier];
            [guid account:accountID chat:chatIdentifier style:objc_msgSend(v19 messageUpdated:{"style"), v30}];
          }

          guid2 = [v30 guid];
          sub_22B67EEDC(guid2);

          v17 = v30;
        }

        else if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v36 = 138412290;
            *&v36[4] = v17;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Message is already delivered, and we're not forcing an error here (%@)", v36, 0xCu);
          }
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v36 = 67109378;
          *&v36[4] = v8;
          *&v36[8] = 2112;
          *&v36[10] = dCopy;
          _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Unable to mark error: %d, no messages found for guid: %@", v36, 0x12u);
        }
      }
    }
  }
}

- (void)didReceiveOffGridStatus:(BOOL)status forID:(id)d messageGUID:(id)iD account:(id)account
{
  statusCopy = status;
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = @"NO";
      *v24 = 138412802;
      if (statusCopy)
      {
        v14 = @"YES";
      }

      *&v24[4] = v14;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = iDCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Received off grid status %@ for %@ sending %@", v24, 0x20u);
    }
  }

  if (!accountCopy)
  {
    accountCopy = [(IMDServiceSession *)self account];
  }

  v15 = +[IMDMessageStore sharedInstance];
  v16 = [v15 messageWithGUID:iDCopy];

  if (v16)
  {
    service = [v16 service];
    if ([service isEqualToString:*MEMORY[0x277D1A620]])
    {
      isPendingSatelliteSend = [v16 isPendingSatelliteSend];

      if (isPendingSatelliteSend == statusCopy)
      {
        v20 = v16;
        if (statusCopy)
        {
          goto LABEL_17;
        }

        goto LABEL_22;
      }

      [v16 setIsPendingSatelliteSend:statusCopy];
      v19 = +[IMDMessageStore sharedInstance];
      v20 = [v19 storeMessage:v16 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

      service = [(IMDServiceSession *)self broadcasterForChatListeners];
      accountID = [accountCopy accountID];
      [service account:accountID chat:0 style:0 messageUpdated:v20];
    }

    else
    {
      v20 = v16;
    }

    if (statusCopy)
    {
      goto LABEL_17;
    }

LABEL_22:
    [(IMDServiceSession *)self _clearOffGridFlagForMessagesInChatWithChatIdentifier:dCopy account:accountCopy];
    goto LABEL_23;
  }

  v20 = 0;
  if (!statusCopy)
  {
    goto LABEL_22;
  }

LABEL_17:
  time = [v20 time];
  if (time)
  {
    IMSetDomainValueForKey();
  }

  else
  {
    v23 = [MEMORY[0x277CBEAA8] now];
    IMSetDomainValueForKey();
  }

  [(IMDServiceSession *)self _updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:dCopy account:accountCopy];
LABEL_23:
}

- (void)_updateUndeliveredMessagesPendingSatelliteSendForChatWithIdentifier:(id)identifier account:(id)account
{
  v46[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  v36 = identifierCopy;
  v37 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:45 updatingAccount:1];
  if (v37)
  {
    v7 = +[IMDMessageStore sharedInstance];
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    v35 = [v7 lastIncomingMessageForChatWithIdentifier:identifierCopy chatStyle:45 onService:internalName];

    time = [v35 time];
    v11 = time;
    if (time)
    {
      distantPast = time;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v13 = distantPast;

    v32 = v13;
    v34 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", *MEMORY[0x277D19F88], v13];
    v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC38]];
    v14 = objc_alloc(MEMORY[0x277D18ED8]);
    guid = [v37 guid];
    v16 = [v14 initWithAssociatedChatGUID:guid];

    v17 = MEMORY[0x277CCA920];
    v46[0] = v34;
    v46[1] = v33;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    v19 = [v17 andPredicateWithSubpredicates:v18];
    [v16 setPredicate:v19];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v20 = v16;
    v21 = [v20 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v21)
    {
      v22 = *v40;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v39 + 1) + 8 * i), 0, 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v24;
            if ([v25 expectedOffGridCapableDeliveries] && (objc_msgSend(v25, "isRead") & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v27 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  guid2 = [v25 guid];
                  *buf = 138412290;
                  v44 = guid2;
                  _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Updating pending flag for %@", buf, 0xCu);
                }
              }

              [v25 setIsPendingSatelliteSend:1];
              v29 = +[IMDMessageStore sharedInstance];
              v26 = [v29 storeMessage:v25 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

              broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
              accountID = [accountCopy accountID];
              [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v26];
            }

            else
            {
              v26 = v25;
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v21);
    }
  }
}

- (void)_clearOffGridFlagForMessagesInChatWithChatIdentifier:(id)identifier account:(id)account
{
  v38[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  accountCopy = account;
  v28 = identifierCopy;
  v29 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:45 updatingAccount:1];
  if (v29)
  {
    v7 = MEMORY[0x277CBEC38];
    v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D19FB0], MEMORY[0x277CBEC38]];
    v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], v7];
    v8 = objc_alloc(MEMORY[0x277D18ED8]);
    guid = [v29 guid];
    v10 = [v8 initWithAssociatedChatGUID:guid];

    v11 = MEMORY[0x277CCA920];
    v38[0] = v27;
    v38[1] = v26;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];
    [v10 setPredicate:v13];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v31 + 1) + 8 * i), 0, 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                guid2 = [v19 guid];
                *buf = 138412290;
                v36 = guid2;
                _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Clearing pending flag for %@", buf, 0xCu);
              }
            }

            [v19 setIsPendingSatelliteSend:0];
            [v19 setExpectedOffGridCapableDeliveries:0];
            v22 = +[IMDMessageStore sharedInstance];
            v23 = [v22 storeMessage:v19 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x20000000000];

            broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
            accountID = [accountCopy accountID];
            [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v23];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v15);
    }
  }
}

- (void)didReceiveMessageEditingUnsupportedHandleIDs:(id)ds forMessageGUID:(id)d partIndex:(int64_t)index previousMessage:(id)message backwardCompatibilityMessageGUID:(id)iD
{
  dsCopy = ds;
  dCopy = d;
  iDCopy = iD;
  if ([dsCopy count])
  {
    v13 = +[IMDMessageStore sharedInstance];
    v14 = [v13 messageWithGUID:dCopy];
    if (v14)
    {
      v15 = v14;
      indexCopy = index;
      messageSummaryInfo = [v14 messageSummaryInfo];
      v17 = messageSummaryInfo;
      v18 = MEMORY[0x277CBEC10];
      if (messageSummaryInfo)
      {
        v18 = messageSummaryInfo;
      }

      v19 = v18;

      v20 = [v19 mutableCopy];
      v21 = *MEMORY[0x277D1A018];
      v22 = [v19 objectForKeyedSubscript:*MEMORY[0x277D1A018]];

      v23 = MEMORY[0x277CBEBF8];
      if (v22)
      {
        v23 = v22;
      }

      v24 = v23;

      v25 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v24];
      [v25 addObjectsFromArray:dsCopy];
      array = [v25 array];
      [v20 setObject:array forKeyedSubscript:v21];
      v48 = v20;
      v27 = [v20 copy];
      [v15 setMessageSummaryInfo:v27];

      if ([iDCopy length])
      {
        v47 = array;
        v28 = [v15 historyForMessagePart:indexCopy];
        if ([v28 count])
        {
          v29 = [v28 mutableCopy];
          lastObject = [v29 lastObject];
          v44 = v25;
          v31 = objc_alloc(MEMORY[0x277D1AA90]);
          [lastObject messagePartText];
          v32 = v45 = v13;
          messagePartTranslation = [lastObject messagePartTranslation];
          [lastObject dateSent];
          v34 = v46 = iDCopy;
          v35 = [v31 initWithMessagePartText:v32 messagePartTranslation:messagePartTranslation dateSent:v34 backwardCompatibleMessageGUID:v46];

          v13 = v45;
          [v29 removeLastObject];
          [v29 addObject:v35];
          v36 = [v29 copy];
          [v15 setHistory:v36 forMessagePart:indexCopy];

          iDCopy = v46;
          v25 = v44;
        }

        array = v47;
      }

      v37 = [v13 storeMessage:v15 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

      if ([(IMDServiceSession *)self isAwaitingStorageTimer])
      {
        [(IMDServiceSession *)self noteSuppressedMessageUpdate:dCopy];
      }

      else
      {
        [(IMDServiceSession *)self account];
        v39 = v38 = iDCopy;
        [v39 accountID];
        v40 = v25;
        v42 = v41 = v13;
        broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
        [broadcasterForChatListeners account:v42 chat:0 style:0 messageUpdated:v37];

        v13 = v41;
        v25 = v40;

        iDCopy = v38;
      }

      sub_22B67EEDC(dCopy);
    }

    else
    {
      v37 = IMLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8B44();
      }
    }
  }
}

- (void)didReceiveMessageEditingSendFailure:(unsigned int)failure forMessageGUID:(id)d partIndex:(int64_t)index editType:(unint64_t)type
{
  dCopy = d;
  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 messageWithGUID:dCopy];
  if (v11)
  {
    v12 = v11;
    if (type == 2)
    {
      [v11 addFailedRetractPartIndex:index];
    }

    else if (type == 1)
    {
      [v11 addFailedEditPartIndex:index];
    }

    v13 = [v10 storeMessage:v12 forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

    if ([(IMDServiceSession *)self isAwaitingStorageTimer])
    {
      [(IMDServiceSession *)self noteSuppressedMessageUpdate:dCopy];
    }

    else
    {
      account = [(IMDServiceSession *)self account];
      accountID = [account accountID];
      broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
      [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v13];
    }

    sub_22B67EEDC(dCopy);
  }

  else
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D8BB4();
    }
  }
}

- (void)didSendMessageEditForMessageGUID:(id)d
{
  dCopy = d;
  v5 = +[IMDMessageStore sharedInstance];
  v6 = [v5 messageWithGUID:dCopy];
  if (v6)
  {
    v7 = v6;
    messageSummaryInfo = [v6 messageSummaryInfo];
    v9 = messageSummaryInfo;
    v10 = MEMORY[0x277CBEC10];
    if (messageSummaryInfo)
    {
      v10 = messageSummaryInfo;
    }

    v11 = v10;

    v12 = *MEMORY[0x277D1A010];
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D1A010]];
    v14 = *MEMORY[0x277D1A038];
    v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277D1A038]];
    if ([v13 count] || objc_msgSend(v15, "count"))
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D8C24();
      }

      v17 = [v11 mutableCopy];
      [v17 removeObjectForKey:v12];
      [v17 removeObjectForKey:v14];
      v18 = [v17 copy];
      [v7 setMessageSummaryInfo:v18];

      v19 = [v5 storeMessage:v7 forceReplace:1 modifyError:1 modifyFlags:0 flagMask:0];

      if ([(IMDServiceSession *)self isAwaitingStorageTimer])
      {
        [(IMDServiceSession *)self noteSuppressedMessageUpdate:dCopy];
      }

      else
      {
        account = [(IMDServiceSession *)self account];
        accountID = [account accountID];
        broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
        [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v19];
      }

      sub_22B67EEDC(dCopy);
    }

    else
    {
      v19 = v7;
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D8C94();
    }
  }
}

- (void)didSendMessageReadReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageReadReceiptForMessageID:dCopy account:account];
}

- (void)didSendMessageReadReceiptForMessageID:(id)d account:(id)account
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v27 = 138412290;
      v28 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v27, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_26;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for read receipt: %@", &v27, 0xCu);
          }
        }

        timeRead = [v12 timeRead];
        v18 = timeRead == 0;

        if (v18)
        {
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x2000}];
          __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          [v12 setTimeRead:__im_dateWithCurrentServerTime];

          v20 = +[IMDMessageStore sharedInstance];
          v21 = [v20 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x2000];

          v12 = v21;
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v27 = 138412290;
            v28 = v12;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Updated message: %@", &v27, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          guid = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid];
        }

        else
        {
          guid = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid2 = [v12 guid];
        sub_22B67EEDC(guid2);

        goto LABEL_36;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v27 = 138412546;
          v28 = service2;
          v29 = 2112;
          v30 = internalName;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable to mark send of read receipt, message is on a different service: %@ vs %@", &v27, 0x16u);
        }
      }

      else
      {
LABEL_26:
        if (!IMOSLoggingEnabled())
        {
LABEL_36:

          goto LABEL_37;
        }

        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v27 = 138412290;
          v28 = dCopy;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Unable to mark send of read receipt, no messages found for guid: %@", &v27, 0xCu);
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:
}

- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendDeliveredQuietlyReceiptForMessageID:dCopy account:account];
}

- (void)didSendDeliveredQuietlyReceiptForMessageID:(id)d account:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v26, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_31;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for delivered quietly receipt: %@", &v26, 0xCu);
          }
        }

        if (([v12 isFromMe] & 1) == 0 && (objc_msgSend(v12, "wasDeliveredQuietly") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              guid = [v12 guid];
              v26 = 138412290;
              v27 = guid;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting was delivered quietly flag on local device for message: %@", &v26, 0xCu);
            }
          }

          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x400000000}];
          v19 = +[IMDMessageStore sharedInstance];
          v20 = [v19 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x400000000];

          v12 = v20;
        }

        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v12;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Updated message: %@", &v26, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          guid2 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid2];
        }

        else
        {
          guid2 = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid2 account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid3 = [v12 guid];
        sub_22B67EEDC(guid3);

        goto LABEL_41;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_41;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = 138412546;
          v27 = service2;
          v28 = 2112;
          v29 = internalName;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly, message is on a different service: %@ vs %@", &v26, 0x16u);
        }
      }

      else
      {
LABEL_31:
        if (!IMOSLoggingEnabled())
        {
LABEL_41:

          goto LABEL_42;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = dCopy;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message delivered quietly, no messages found for guid: %@", &v26, 0xCu);
        }
      }

      goto LABEL_41;
    }
  }

LABEL_42:
}

- (void)didSendNotifyRecipientCommandForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendNotifyRecipientCommandForMessageID:dCopy account:account];
}

- (void)didSendNotifyRecipientCommandForMessageID:(id)d account:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v26 = 138412290;
      v27 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v26, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_31;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for notify recipient command: %@", &v26, 0xCu);
          }
        }

        if (([v12 isFromMe] & 1) == 0 && (objc_msgSend(v12, "didNotifyRecipient") & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              guid = [v12 guid];
              v26 = 138412290;
              v27 = guid;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Setting did notify recipient flag on local device for message: %@", &v26, 0xCu);
            }
          }

          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x800000000}];
          v19 = +[IMDMessageStore sharedInstance];
          v20 = [v19 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x800000000];

          v12 = v20;
        }

        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v26 = 138412290;
            v27 = v12;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Updated message: %@", &v26, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          guid2 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid2];
        }

        else
        {
          guid2 = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid2 account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid3 = [v12 guid];
        sub_22B67EEDC(guid3);

        goto LABEL_41;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_41;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = 138412546;
          v27 = service2;
          v28 = 2112;
          v29 = internalName;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message notified command, message is on a different service: %@ vs %@", &v26, 0x16u);
        }
      }

      else
      {
LABEL_31:
        if (!IMOSLoggingEnabled())
        {
LABEL_41:

          goto LABEL_42;
        }

        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = dCopy;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Unable to mark message notified command, no messages found for guid: %@", &v26, 0xCu);
        }
      }

      goto LABEL_41;
    }
  }

LABEL_42:
}

- (void)didSendMessagePlayedReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessagePlayedReceiptForMessageID:dCopy account:account];
}

- (void)didSendMessagePlayedReceiptForMessageID:(id)d account:(id)account
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v31 = 138412290;
      v32 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v31, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_25;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for played receipt: %@", &v31, 0xCu);
          }
        }

        if ([v12 isExpirable] && (objc_msgSend(v12, "isFromMe") & 1) == 0 && objc_msgSend(v12, "expireState") <= 0)
        {
          if (IMOSLoggingEnabled())
          {
            v29 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              guid = [v12 guid];
              v31 = 138412290;
              v32 = guid;
              _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Expire received message played on local device: %@", &v31, 0xCu);
            }
          }

          [v12 setExpireState:1];
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        timePlayed = [v12 timePlayed];
        v19 = timePlayed == 0;

        if (v19)
        {
          [v12 setFlags:{objc_msgSend(v12, "flags") | 0x400000}];
          date = [MEMORY[0x277CBEAA8] date];
          [v12 setTimePlayed:date];
        }

        else if (!v17)
        {
          goto LABEL_35;
        }

        v22 = +[IMDMessageStore sharedInstance];
        v23 = [v22 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:1 flagMask:0x400000];

        v12 = v23;
LABEL_35:
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = v12;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Updated message: %@", &v31, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          guid2 = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid2];
        }

        else
        {
          guid2 = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid2 account:accountID chat:0 style:0 messageUpdated:v12];
        }

        if (v17)
        {
          guid3 = [v12 guid];
          [(IMDServiceSession *)self _updateExpireStateForMessageGUID:guid3];
        }

        guid4 = [v12 guid];
        sub_22B67EEDC(guid4);

        goto LABEL_45;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_45;
        }

        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v31 = 138412546;
          v32 = service2;
          v33 = 2112;
          v34 = internalName;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to mark send of played receipt, message is on a different service: %@ vs %@", &v31, 0x16u);
        }
      }

      else
      {
LABEL_25:
        if (!IMOSLoggingEnabled())
        {
LABEL_45:

          goto LABEL_46;
        }

        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v31 = 138412290;
          v32 = dCopy;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to mark send of played receipt, no messages found for guid: %@", &v31, 0xCu);
        }
      }

      goto LABEL_45;
    }
  }

LABEL_46:
}

- (void)didSendMessageSavedReceiptForMessageID:(id)d
{
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessageSavedReceiptForMessageID:dCopy account:account];
}

- (void)didSendMessageSavedReceiptForMessageID:(id)d account:(id)account
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "message: %@", &v24, 0xCu);
    }
  }

  if (dCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      v11 = +[IMDMessageStore sharedInstance];
      v12 = [v11 messageWithGUID:dCopy];

      service2 = [v12 service];
      service3 = [(IMDServiceSession *)self service];
      internalName = [service3 internalName];

      if (!v12 || !service2 || !internalName)
      {
        goto LABEL_26;
      }

      if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v24 = 138412290;
            v25 = v12;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Found old message for saved receipt: %@", &v24, 0xCu);
          }
        }

        if ([v12 expireState] != 3)
        {
          [v12 setExpireState:3];
          v17 = +[IMDMessageStore sharedInstance];
          v18 = [v17 storeMessage:v12 forceReplace:0 modifyError:0 modifyFlags:0 flagMask:0];

          v12 = v18;
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v24 = 138412290;
            v25 = v12;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Updated message: %@", &v24, 0xCu);
          }
        }

        if ([(IMDServiceSession *)self isAwaitingStorageTimer])
        {
          guid = [v12 guid];
          [(IMDServiceSession *)self noteSuppressedMessageUpdate:guid];
        }

        else
        {
          guid = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [accountCopy accountID];
          [guid account:accountID chat:0 style:0 messageUpdated:v12];
        }

        guid2 = [v12 guid];
        sub_22B67EEDC(guid2);

        goto LABEL_36;
      }

      if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_36;
        }

        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v24 = 138412546;
          v25 = service2;
          v26 = 2112;
          v27 = internalName;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Unable to mark send of saved receipt, message is on a different service: %@ vs %@", &v24, 0x16u);
        }
      }

      else
      {
LABEL_26:
        if (!IMOSLoggingEnabled())
        {
LABEL_36:

          goto LABEL_37;
        }

        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = dCopy;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Unable to mark send of saved receipt, no messages found for guid: %@", &v24, 0xCu);
        }
      }

      goto LABEL_36;
    }
  }

LABEL_37:
}

- (void)didSendSyndicationActionItem:(id)item forChat:(id)chat
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  if (itemCopy)
  {
    service = [(IMDServiceSession *)self service];
    supportsDatabase = [service supportsDatabase];

    if (supportsDatabase)
    {
      if (!chatCopy)
      {
        v13 = IMLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D8D04();
        }

        goto LABEL_32;
      }

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          guid = [chatCopy guid];
          v30 = 138412546;
          v31 = itemCopy;
          v32 = 2112;
          v33 = guid;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Received didSendSyndicationAction: %@ for Chat: %@", &v30, 0x16u);
        }
      }

      syndicatedItemType = [itemCopy syndicatedItemType];
      if (syndicatedItemType == 2)
      {
        v13 = itemCopy;
        v22 = [chatCopy updateDonationStateWithSyndicationAction:v13];
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            isAutoDonatingMessages = [v13 isAutoDonatingMessages];
            chatGUID = [v13 chatGUID];
            v26 = chatGUID;
            v27 = @"NO";
            if (v22)
            {
              v28 = @"YES";
            }

            else
            {
              v28 = @"NO";
            }

            v30 = 138412802;
            if (isAutoDonatingMessages)
            {
              v27 = @"YES";
            }

            v31 = v27;
            v32 = 2112;
            v33 = v28;
            v34 = 2112;
            v35 = chatGUID;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Updated syndication state to: %@ was successful: %@ for chat with GUID: %@", &v30, 0x20u);
          }
        }

        goto LABEL_32;
      }

      if (syndicatedItemType == 1)
      {
        v13 = itemCopy;
        v14 = +[IMDMessageStore sharedInstance];
        v15 = [v14 updateSyndicatedMessageWithSyndicationMessageAction:v13];

        v16 = IMOSLoggingEnabled();
        if (v15)
        {
          if (v16)
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              messagePartGUID = [v13 messagePartGUID];
              v30 = 138412546;
              v31 = messagePartGUID;
              v32 = 2112;
              v33 = v13;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Updated message: %@ with action item: %@", &v30, 0x16u);
            }
          }

          broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
          accountID = [chatCopy accountID];
          chatIdentifier = [chatCopy chatIdentifier];
          [broadcasterForChatListeners account:accountID chat:chatIdentifier style:objc_msgSend(chatCopy messageUpdated:{"style"), v15}];
        }

        else if (v16)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = 138412290;
            v31 = v13;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Message not update updated for SyndicationAction - doing nothing with syndication action: %@", &v30, 0xCu);
          }
        }

LABEL_32:
      }
    }
  }
}

- (BOOL)didReceiveMessageDeliveryReceiptForMessageID:(id)d date:(id)date
{
  dateCopy = date;
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  LOBYTE(self) = [(IMDServiceSession *)self _didReceiveMessageDeliveryReceiptForMessageID:dCopy attempts:0 date:dateCopy account:account];

  return self;
}

- (BOOL)_didReceiveMessageDeliveryReceiptForMessageID:(id)d attempts:(int64_t)attempts date:(id)date account:(id)account
{
  v39 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = dCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "message: %@", buf, 0xCu);
    }
  }

  if (dCopy && (-[IMDServiceSession service](self, "service"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 supportsDatabase], v14, v15))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B68277C;
    aBlock[3] = &unk_2787076C8;
    v16 = dCopy;
    v33 = v16;
    selfCopy = self;
    v27 = dateCopy;
    v35 = v27;
    v17 = accountCopy;
    v36 = v17;
    v28 = _Block_copy(aBlock);
    v18 = +[IMDMessageStore sharedInstance];
    v19 = [v18 hasStoredMessageWithGUID:v16];

    if (v19)
    {
      v20 = v28[2]();
    }

    else
    {
      v21 = IMOSLoggingEnabled();
      if (attempts >= 6)
      {
        if (v21)
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v16;
            _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as read, bailing", buf, 0xCu);
          }
        }
      }

      else
      {
        if (v21)
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v38 = v16;
            _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as delivered, trying again in a bit", buf, 0xCu);
          }
        }

        if (attempts == 5)
        {
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
            }
          }
        }

        else if (attempts == 4 && IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
          }
        }

        v29 = v16;
        v30 = v27;
        v31 = v17;
        im_dispatch_after();
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_handleScheduledMessageFailure:(id)failure
{
  failureCopy = failure;
  v4 = +[IMDMessageStore sharedInstance];
  guid = [failureCopy guid];
  v6 = [v4 messageWithGUID:guid];

  if ([v6 scheduleType] == 2)
  {
    scheduleState = [v6 scheduleState];
    switch(scheduleState)
    {
      case 3:
        [failureCopy setScheduleType:{objc_msgSend(v6, "scheduleType")}];
        [failureCopy setScheduleState:{objc_msgSend(v6, "scheduleState")}];
        messageSummaryInfo = [v6 messageSummaryInfo];
        [failureCopy setMessageSummaryInfo:messageSummaryInfo];

        body = [v6 body];
        [failureCopy setBody:body];

        [failureCopy setErrorCode:{objc_msgSend(v6, "errorCode")}];
        break;
      case 2:
        [failureCopy setErrorCode:0];
        editedPartIndexes = [failureCopy editedPartIndexes];
        [failureCopy setFailedEditPartIndexes:editedPartIndexes];

        retractedPartIndexes = [failureCopy retractedPartIndexes];
        [failureCopy setFailedRetractPartIndexes:retractedPartIndexes];

        retractedPartIndexes2 = [failureCopy retractedPartIndexes];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = sub_22B683360;
        v19[3] = &unk_278707718;
        v13 = failureCopy;
        v20 = v13;
        [retractedPartIndexes2 enumerateIndexesUsingBlock:v19];

        retractedPartIndexes3 = [v13 retractedPartIndexes];
        v15 = [retractedPartIndexes3 count];

        if (v15)
        {
          scheduledMessageOriginalTransferGUIDs = [v13 scheduledMessageOriginalTransferGUIDs];
          [v13 setFileTransferGUIDs:scheduledMessageOriginalTransferGUIDs];
        }

        break;
      case 1:
        [failureCopy setScheduleState:4];
        guid2 = [failureCopy guid];
        [IMDScheduledMessageCoordinator notifyPeersWithScheduledMessageUpdate:guid2 scheduleState:4];

        break;
    }
  }

  else
  {
    [failureCopy setScheduleType:{objc_msgSend(v6, "scheduleType")}];
    [failureCopy setScheduleState:{objc_msgSend(v6, "scheduleState")}];
    [failureCopy setErrorCode:{objc_msgSend(v6, "errorCode")}];
    messageSummaryInfo2 = [v6 messageSummaryInfo];
    [failureCopy setMessageSummaryInfo:messageSummaryInfo2];
  }
}

- (void)updateChatGUID:(id)d withLastReadTimeStamp:(int64_t)stamp withLastSeenMessageGUID:(id)iD fromMe:(BOOL)me
{
  meCopy = me;
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v10 = +[IMDMessageStore sharedInstance];
  v11 = [v10 chatsForMessageGUID:dCopy];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Found chats to mark as read: %@", buf, 0xCu);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [(__CFString *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = *v24;
    v16 = @"NO";
    if (meCopy)
    {
      v16 = @"YES";
    }

    v22 = v16;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v28 = v22;
            v29 = 2112;
            v30 = v18;
            _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Updating local chat (fromMe: %@): %@", buf, 0x16u);
          }
        }

        if (meCopy)
        {
          [v18 updateLastReadMessageTimeStampIfNeeded:stamp];
          [v18 updateLastSeenMessageGuidIfNeeded:iDCopy];
        }

        v20 = +[IMDChatRegistry sharedInstance];
        [v20 updateStateForChat:v18 hintMessage:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:meCopy];
      }

      v14 = [(__CFString *)v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)_didReceiveMessageReadForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v51 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B683DB0;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v41 = v17;
      selfCopy = self;
      v35 = dateCopy;
      v43 = v35;
      v18 = v13;
      v44 = v18;
      v37 = _Block_copy(aBlock);
      v19 = +[IMDMessageStore sharedInstance];
      v20 = [v19 hasStoredMessageWithGUID:v17];

      if (v20)
      {
        v37[2](v37);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (attempts >= 6)
        {
          if (v22)
          {
            v26 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v46 = v17;
              _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as read, bailing", buf, 0xCu);
            }
          }

          _IDSService = [(IMDServiceSession *)self _IDSService];
          [_IDSService _IMDTrackMetric:10401 ForMessageGUID:v17];
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v46 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as read, trying again in a bit", buf, 0xCu);
            }
          }

          _IDSService2 = [(IMDServiceSession *)self _IDSService];
          [_IDSService2 _IMDTrackMetric:10401 ForMessageGUID:v17];

          if (attempts == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v28 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (attempts == 4 && IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v38 = v17;
          v39 = v36;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else
    {
      if (v13)
      {
        v13[2](v13);
      }

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          service = [(IMDServiceSession *)self service];
          supportsDatabase = [service supportsDatabase];
          service2 = [(IMDServiceSession *)self service];
          v33 = service2;
          v34 = @"NO";
          *buf = 138412802;
          v46 = dCopy;
          v47 = 2112;
          if (supportsDatabase)
          {
            v34 = @"YES";
          }

          v48 = v34;
          v49 = 2112;
          v50 = service2;
          _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Returning early in _didReceiveMessageReadForMessageID because messageID: %@, [[self service] supportsDatabase]: %@, service: %@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Returning early in _didReceiveMessageReadForMessageID because !_activated", buf, 2u);
      }
    }
  }
}

- (void)_didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B684D2C;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v31 = v17;
      selfCopy = self;
      v27 = dateCopy;
      v33 = v27;
      v18 = v13;
      v34 = v18;
      v19 = _Block_copy(aBlock);
      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 hasStoredMessageWithGUID:v17];

      if (v21)
      {
        v19[2](v19);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (attempts >= 6)
        {
          if (v22)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v17;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as read, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as read, trying again in a bit", buf, 0xCu);
            }
          }

          if (attempts == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (attempts == 4 && IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v28 = v17;
          v29 = v27;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else if (v13)
    {
      v13[2](v13);
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)didReceiveMessageReadReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block
{
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v10 = blockCopy;
  if (self->_activated)
  {
    [(IMDServiceSession *)self _didReceiveMessageReadReceiptForMessageID:dCopy date:dateCopy attempts:0 completionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy);
  }
}

- (void)_didReceiveMessagePlayedForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B6857B8;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v31 = v17;
      selfCopy = self;
      v27 = dateCopy;
      v33 = v27;
      v18 = v13;
      v34 = v18;
      v19 = _Block_copy(aBlock);
      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 hasStoredMessageWithGUID:v17];

      if (v21)
      {
        v19[2](v19);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (attempts >= 6)
        {
          if (v22)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v17;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as played, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as played, trying again in a bit", buf, 0xCu);
            }
          }

          if (attempts == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (attempts == 4 && IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v28 = v17;
          v29 = v27;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else if (v13)
    {
      v13[2](v13);
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)_didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date attempts:(int64_t)attempts completionBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  blockCopy = block;
  v13 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 supportsDatabase], v15, (v16 & 1) != 0))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B6867AC;
      aBlock[3] = &unk_278702F50;
      v17 = dCopy;
      v31 = v17;
      selfCopy = self;
      v27 = dateCopy;
      v33 = v27;
      v18 = v13;
      v34 = v18;
      v19 = _Block_copy(aBlock);
      v20 = +[IMDMessageStore sharedInstance];
      v21 = [v20 hasStoredMessageWithGUID:v17];

      if (v21)
      {
        v19[2](v19);
      }

      else
      {
        v22 = IMOSLoggingEnabled();
        if (attempts >= 6)
        {
          if (v22)
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v17;
              _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as played, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v22)
          {
            v23 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v36 = v17;
              _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as played, trying again in a bit", buf, 0xCu);
            }
          }

          if (attempts == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (attempts == 4 && IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v28 = v17;
          v29 = v27;
          im_dispatch_after();
        }

        if (v18)
        {
          v18[2](v18);
        }
      }
    }

    else if (v13)
    {
      v13[2](v13);
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)didReceiveMessagePlayedReceiptForMessageID:(id)d date:(id)date completionBlock:(id)block
{
  if (self->_activated)
  {
    MEMORY[0x2821F9670](self, sel__didReceiveMessagePlayedReceiptForMessageID_date_attempts_completionBlock_);
  }
}

- (void)_didReceiveMessageSavedForMessageID:(id)d ofType:(int64_t)type forChat:(id)chat fromHandle:(id)handle fromMe:(BOOL)me date:(id)date attempts:(int64_t)attempts account:(id)self0 completionBlock:(id)self1
{
  meCopy = me;
  v73 = *MEMORY[0x277D85DE8];
  dCopy = d;
  chatCopy = chat;
  handleCopy = handle;
  dateCopy = date;
  accountCopy = account;
  blockCopy = block;
  v17 = blockCopy;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v72 = dCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy && (-[IMDServiceSession service](self, "service"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 supportsDatabase], v19, (v20 & 1) != 0))
    {
      if (!accountCopy)
      {
        accountCopy = [(IMDServiceSession *)self account];
      }

      _stripFZIDPrefix = [handleCopy _stripFZIDPrefix];
      v22 = meCopy;
      if (!meCopy)
      {
        v23 = +[IMDMessageStore sharedInstance];
        v24 = [v23 messageActionItemsForOriginalMessageGUID:dCopy];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v25 = v24;
        v26 = [v25 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v26)
        {
          v27 = *v67;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v67 != v27)
              {
                objc_enumerationMutation(v25);
              }

              sender = [*(*(&v66 + 1) + 8 * i) sender];
              v30 = [sender isEqualToString:_stripFZIDPrefix];

              if (v30)
              {

                if (IMOSLoggingEnabled())
                {
                  v39 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "   Message was already marked as saved, ignoring", buf, 2u);
                  }
                }

                if (v17)
                {
                  v17[2](v17);
                }

                goto LABEL_54;
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v66 objects:v70 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v22 = meCopy;
      }

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_22B687370;
      aBlock[3] = &unk_278707768;
      v31 = dCopy;
      v65 = v22;
      v57 = v31;
      selfCopy = self;
      v42 = chatCopy;
      v59 = v42;
      v60 = _stripFZIDPrefix;
      v44 = dateCopy;
      v61 = v44;
      typeCopy = type;
      v43 = accountCopy;
      v62 = v43;
      v32 = v17;
      v63 = v32;
      v33 = _Block_copy(aBlock);
      v34 = +[IMDMessageStore sharedInstance];
      v35 = [v34 hasStoredMessageWithGUID:v31];

      if (v35 | !meCopy)
      {
        v33[2](v33);
      }

      else
      {
        v36 = IMOSLoggingEnabled();
        if (attempts >= 6)
        {
          if (v36)
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = v31;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "No message ever found for guid: %@ to mark as saved, bailing", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v36)
          {
            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v72 = v31;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "No message found for guid: %@ to mark as saved, trying again in a bit", buf, 0xCu);
            }
          }

          if (attempts == 5)
          {
            if (IMOSLoggingEnabled())
            {
              v41 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Last try, waiting a lot longer", buf, 2u);
              }
            }
          }

          else if (attempts == 4 && IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Second to last try, waiting longer", buf, 2u);
            }
          }

          v51 = v31;
          v52 = v42;
          v53 = handleCopy;
          v54 = v44;
          v55 = v43;
          im_dispatch_after();
        }

        if (v32)
        {
          v32[2](v32);
        }
      }

LABEL_54:
    }

    else if (v17)
    {
      v17[2](v17);
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

- (void)didStartSendingMessage:(id)message forChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  chatCopy = chat;
  messageCopy = message;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didStartSendingMessage:messageCopy forChat:chatCopy style:styleCopy account:account];
}

- (void)didStartSendingMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  v51 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  account = accountCopy;
  if (!self->_activated)
  {
    goto LABEL_69;
  }

  if (!accountCopy)
  {
    account = [(IMDServiceSession *)self account];
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v50 = messageCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
    }
  }

  if (!messageCopy)
  {
LABEL_69:
    v15 = chatCopy;
    goto LABEL_70;
  }

  v47 = chatCopy;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v47 style:&styleCopy];
  v15 = v47;

  service = [(IMDServiceSession *)self service];
  supportsDatabase = [service supportsDatabase];

  isTypingMessage = [messageCopy isTypingMessage];
  isSuggestedActionResponse = [messageCopy isSuggestedActionResponse];
  isRCSEncryptionTest = [messageCopy isRCSEncryptionTest];
  errorCode = [messageCopy errorCode];
  if (supportsDatabase)
  {
    v18 = +[IMDMessageStore sharedInstance];
    guid = [messageCopy guid];
    v20 = [v18 messageWithGUID:guid];
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = messageCopy;
  }

  v22 = v21;
  if (![(IMDServiceSession *)self isReplicating]|| ![(IMDServiceSession *)self _canUpgradeExistingMessageItem:v20 replacementReplicatedMessageItem:messageCopy])
  {
    goto LABEL_22;
  }

  v23 = +[IMDMessageStore sharedInstance];
  guid2 = [v20 guid];
  v25 = [v23 wasMessageDeduplicatedWithGUID:guid2];

  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        guid3 = [messageCopy guid];
        *buf = 138412290;
        v50 = guid3;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade but existing message was already marked as deduplicated", buf, 0xCu);
      }
    }

LABEL_22:
    v29 = v22;
    goto LABEL_23;
  }

  if (v26)
  {
    v34 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      guid4 = [messageCopy guid];
      *buf = 138412290;
      v50 = guid4;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade", buf, 0xCu);
    }
  }

  v29 = messageCopy;

  v36 = +[IMDMessageStore sharedInstance];
  [v36 markMessageAsDeduplicated:v29];

LABEL_23:
  if (!errorCode && v20 && [v20 isFinished] && (objc_msgSend(messageCopy, "isFinished") & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        guid5 = [messageCopy guid];
        *buf = 138412290;
        v50 = guid5;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and we've already stored a completed message", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

  else if ([messageCopy isSuggestedActionResponse])
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "[didStartSendingMessage] Not notifying for suggested action response.", buf, 2u);
      }

LABEL_51:
    }
  }

  else if (isRCSEncryptionTest)
  {
    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "[didStartSendingMessage] Not notifying for RCS Encryption test messages.", buf, 2u);
      }

      goto LABEL_51;
    }
  }

  else
  {
    if (!errorCode || ![messageCopy isTypingMessage])
    {
      [v29 setErrorCode:{objc_msgSend(messageCopy, "errorCode")}];
      if (v20 || ((isTypingMessage | isSuggestedActionResponse) & 1) == 0) && (supportsDatabase)
      {
        v32 = [v20 scheduleType] == 2 && objc_msgSend(v20, "scheduleState") != 0;
        v38 = +[IMDMessageStore sharedInstance];
        v37 = [v38 storeMessage:v29 forceReplace:v32 modifyError:-[IMDServiceSession _shouldBroadcastSendFailures](self modifyFlags:"_shouldBroadcastSendFailures") flagMask:{1, 12}];
      }

      else
      {
        v37 = v29;
      }

      if ([messageCopy isBeingRetried])
      {
        [v37 setIsBeingRetried:1];
      }

      retryToParticipant = [messageCopy retryToParticipant];

      if (retryToParticipant)
      {
        retryToParticipant2 = [messageCopy retryToParticipant];
        [v37 setRetryToParticipant:retryToParticipant2];
      }

      v41 = [(IMDServiceSession *)self chatForChatIdentifier:v15 style:styleCopy account:account updatingAccount:1];
      if (((isTypingMessage | isSuggestedActionResponse) & (v20 == 0)) == 0 && ((supportsDatabase ^ 1) & 1) == 0)
      {
        v42 = +[IMDChatRegistry sharedInstance];
        [v42 addMessage:messageCopy toChat:v41 reason:{-[IMDServiceSession _incomingMessageIndexReason](self, "_incomingMessageIndexReason")}];
      }

      goto LABEL_68;
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        guid6 = [messageCopy guid];
        *buf = 138412290;
        v50 = guid6;
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and it failed", buf, 0xCu);
      }

      goto LABEL_51;
    }
  }

LABEL_68:

LABEL_70:
}

- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style forceDate:(id)date
{
  styleCopy = style;
  dateCopy = date;
  chatCopy = chat;
  messageCopy = message;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didSendMessage:messageCopy forChat:chatCopy style:styleCopy account:account forceDate:dateCopy];
}

- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage
{
  storageCopy = storage;
  v185[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  dateCopy = date;
  if (self->_activated)
  {
    if (!accountCopy)
    {
      accountCopy = [(IMDServiceSession *)self account];
    }

    v157 = accountCopy;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v175 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (messageCopy)
    {
      v171 = chatCopy;
      [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v171 style:&styleCopy];
      v156 = v171;

      service = [(IMDServiceSession *)self service];
      supportsDatabase = [service supportsDatabase];

      isTypingMessage = [(__CFString *)messageCopy isTypingMessage];
      isSuggestedActionResponse = [(__CFString *)messageCopy isSuggestedActionResponse];
      isRCSEncryptionTest = [(__CFString *)messageCopy isRCSEncryptionTest];
      errorCode = [(__CFString *)messageCopy errorCode];
      flags = [(__CFString *)messageCopy flags];
      if (supportsDatabase)
      {
        v20 = +[IMDMessageStore sharedInstance];
        guid = [(__CFString *)messageCopy guid];
        v22 = [v20 messageWithGUID:guid];
      }

      else
      {
        v22 = 0;
      }

      v23 = messageCopy;
      v153 = v22;
      if (v22)
      {
        v23 = v22;
      }

      v24 = v23;
      if ([(IMDServiceSession *)self isReplicating]&& [(IMDServiceSession *)self _canUpgradeExistingMessageItem:v22 replacementReplicatedMessageItem:messageCopy])
      {
        v25 = +[IMDMessageStore sharedInstance];
        guid2 = [(__CFString *)v22 guid];
        v27 = [v25 wasMessageDeduplicatedWithGUID:guid2];

        v28 = IMOSLoggingEnabled();
        if ((v27 & 1) == 0)
        {
          if (v28)
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              guid3 = [(__CFString *)messageCopy guid];
              *buf = 138412290;
              v175 = guid3;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade", buf, 0xCu);
            }
          }

          v31 = messageCopy;

          v47 = +[IMDMessageStore sharedInstance];
          [v47 markMessageAsDeduplicated:v31];

LABEL_24:
          if ([(__CFString *)v22 scheduleType]== 2 && [(__CFString *)v22 scheduleState])
          {
            v152 = messageCopy;

            cloudKitRecordID = [(__CFString *)v22 cloudKitRecordID];
            if (cloudKitRecordID)
            {
              v33 = [(__CFString *)v152 scheduleType]== 2;

              if (!v33)
              {
                [(__CFString *)v152 setCloudKitSyncState:0];
                synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
                guid4 = [(__CFString *)v153 guid];
                cloudKitRecordID2 = [(__CFString *)v153 cloudKitRecordID];
                [synchronousDatabase addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:guid4 recordID:cloudKitRecordID2];
              }
            }
          }

          else
          {
            v152 = v31;
          }

          if (!errorCode && v153 && [(__CFString *)v153 isFinished]&& ([(__CFString *)messageCopy isFinished]& 1) == 0)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              guid5 = [(__CFString *)messageCopy guid];
              *buf = 138412290;
              v175 = guid5;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and we've already stored a completed message", buf, 0xCu);
            }

            goto LABEL_49;
          }

          if ([(__CFString *)messageCopy isSuggestedActionResponse])
          {
            if (!IMOSLoggingEnabled())
            {
LABEL_221:

              goto LABEL_222;
            }

            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "[didSendMessage] Not notifying for suggested action response.", buf, 2u);
            }

LABEL_38:

            goto LABEL_221;
          }

          if (isRCSEncryptionTest)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v37 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "[didSendMessage] Not notifying for RCS encryption test messages.", buf, 2u);
            }

            goto LABEL_38;
          }

          if (errorCode && [(__CFString *)messageCopy isTypingMessage])
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_221;
            }

            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              guid6 = [(__CFString *)messageCopy guid];
              *buf = 138412290;
              v175 = guid6;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Not notifying for message: %@   this is a typing indicator, and it failed", buf, 0xCu);
            }

LABEL_49:

            goto LABEL_221;
          }

          time = [(__CFString *)v152 time];
          date = [MEMORY[0x277CBEAA8] date];
          if (time)
          {
            [date timeIntervalSinceDate:time];
            v41 = v40;
            if (v40 > 0.0)
            {
              mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
              v43 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
              [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A348] withStatistic:v43];
            }
          }

          if (errorCode)
          {
            [(IMDServiceSession *)self _configureSessionInformationOnItem:v152 toChat:v156 withStyle:styleCopy forAccount:v157];
            v44 = 4;
          }

          else
          {
            if (([(__CFString *)v152 flags]& 0x8000) == 0)
            {
              service2 = [(IMDServiceSession *)self service];
              internalName = [service2 internalName];
              v51 = [internalName isEqualToString:*MEMORY[0x277D1A610]];

              if (v51)
              {
                [(__CFString *)v152 setTime:date];
              }
            }

            [(IMDServiceSession *)self _configureSessionInformationOnItem:v152 toChat:v156 withStyle:styleCopy forAccount:v157];
            if ([(IMDServiceSession *)self isReplicating])
            {
              v44 = 4;
            }

            else
            {
              v44 = 32772;
            }
          }

          [(__CFString *)v152 setFlags:[(__CFString *)v152 flags]| v44];
          if ((flags & 0x80000000000) != 0)
          {
            [(__CFString *)v152 setFlags:[(__CFString *)v152 flags]| 0x80000000000];
          }

          if (!errorCode && [(__CFString *)v152 isExpirable]&& [(__CFString *)v152 isFromMe]&& [(__CFString *)v152 expireState]<= 0)
          {
            HIDWORD(v143) = IMMessageItemShouldAutomaticallySave();
            v75 = IMOSLoggingEnabled();
            if (HIDWORD(v143))
            {
              if (v75)
              {
                v76 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
                {
                  guid7 = [(__CFString *)v152 guid];
                  *buf = 138412290;
                  v175 = guid7;
                  _os_log_impl(&dword_22B4CC000, v76, OS_LOG_TYPE_INFO, "Automatically saving message sent from local device: %@", buf, 0xCu);
                }
              }

              v78 = 3;
            }

            else
            {
              if (v75)
              {
                v80 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
                {
                  guid8 = [(__CFString *)v152 guid];
                  *buf = 138412290;
                  v175 = guid8;
                  _os_log_impl(&dword_22B4CC000, v80, OS_LOG_TYPE_INFO, "Expire message sent from local device: %@", buf, 0xCu);
                }
              }

              v78 = 1;
            }

            [(__CFString *)v152 setExpireState:v78];
            LODWORD(v143) = HIDWORD(v143) ^ 1;
          }

          else
          {
            v143 = 0;
          }

          [(__CFString *)v152 setErrorCode:[(__CFString *)messageCopy errorCode]];
          consumedSessionPayloads = [(__CFString *)messageCopy consumedSessionPayloads];
          if (dateCopy)
          {
            if (IMOSLoggingEnabled())
            {
              v52 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                guid9 = [(__CFString *)v152 guid];
                *buf = 138412546;
                v175 = guid9;
                v176 = 2112;
                v177 = dateCopy;
                _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Updating date on message guid %@ to be: %@", buf, 0x16u);
              }
            }

            [(__CFString *)v152 setTime:dateCopy];
          }

          v147 = [(IMDServiceSession *)self chatForChatIdentifier:v156 style:styleCopy account:v157 updatingAccount:1];
          criticalMessagingAppName = [(__CFString *)v152 criticalMessagingAppName];
          v55 = [criticalMessagingAppName length] == 0;

          mEMORY[0x277D1A900] = [MEMORY[0x277D1A900] sharedManager];
          isMessagesTheDefaultTextApp = [mEMORY[0x277D1A900] isMessagesTheDefaultTextApp];

          v58 = isTypingMessage | isSuggestedActionResponse;
          if (v153 != 0 || ((isTypingMessage | isSuggestedActionResponse) & 1) == 0) && ((v55 | isMessagesTheDefaultTextApp) & 1) != 0 && (supportsDatabase)
          {
            v59 = 0x2786FF000uLL;
            if ([(IMDServiceSession *)self isReplicating])
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  isSent = [(__CFString *)v153 isSent];
                  isSent2 = [(__CFString *)v152 isSent];
                  v63 = @"NO";
                  if (isSent)
                  {
                    v64 = @"YES";
                  }

                  else
                  {
                    v64 = @"NO";
                  }

                  if (isSent2)
                  {
                    v63 = @"YES";
                  }

                  *buf = 138412546;
                  v175 = v64;
                  v176 = 2112;
                  v177 = v63;
                  _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "This is the replicating session. It should not modify sent state. Existing message sent: %@, messageToUpdate sent: %@", buf, 0x16u);
                }
              }

              v65 = 12;
            }

            else
            {
              v65 = 32780;
            }

            v66 = objc_alloc_init(IMDMessageStorageContext);
            [(IMDMessageStorageContext *)v66 setForceReplace:1];
            [(IMDMessageStorageContext *)v66 setModifyError:[(IMDServiceSession *)self _shouldBroadcastSendFailures]];
            [(IMDMessageStorageContext *)v66 setModifyFlags:1];
            [(IMDMessageStorageContext *)v66 setFlagMask:v65];
            [(IMDMessageStorageContext *)v66 setUpdateMessageCache:1];
            [(IMDMessageStorageContext *)v66 setChat:v147];
            v67 = +[IMDMessageStore sharedInstance];
            v170[0] = MEMORY[0x277D85DD0];
            v170[1] = 3221225472;
            v170[2] = sub_22B68A214;
            v170[3] = &unk_2787077B8;
            v170[4] = self;
            v149 = [v67 storeMessage:v152 context:v66 didReplaceBlock:v170];
          }

          else
          {
            v149 = v152;
            v59 = 0x2786FF000;
          }

          if ([(__CFString *)messageCopy isBeingRetried])
          {
            [(__CFString *)v149 setIsBeingRetried:1];
          }

          retryToParticipant = [(__CFString *)messageCopy retryToParticipant];

          if (retryToParticipant)
          {
            retryToParticipant2 = [(__CFString *)messageCopy retryToParticipant];
            [(__CFString *)v149 setRetryToParticipant:retryToParticipant2];
          }

          if ((v58 & (v153 == 0)) == 0 && ((supportsDatabase ^ 1) & 1) == 0)
          {
            v70 = +[IMDChatRegistry sharedInstance];
            [v70 addMessage:messageCopy toChat:v147 reason:{-[IMDServiceSession _incomingMessageIndexReason](self, "_incomingMessageIndexReason")}];
          }

          if (!v147 || ![(__CFString *)messageCopy isFromMe]|| ([(__CFString *)messageCopy isTypingMessage]& 1) != 0 || ([(__CFString *)messageCopy isSuggestedActionResponse]& 1) != 0 || ([(__CFString *)messageCopy isRCSEncryptionTest]& 1) != 0)
          {
LABEL_142:
            if (IMOSLoggingEnabled())
            {
              v83 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v175 = v149;
                _os_log_impl(&dword_22B4CC000, v83, OS_LOG_TYPE_INFO, "Posting sent message: %@", buf, 0xCu);
              }
            }

            if (consumedSessionPayloads)
            {
              [(__CFString *)v149 setConsumedSessionPayloads:consumedSessionPayloads];
            }

            if (!storageCopy || ![(IMDServiceSession *)self isAwaitingStorageTimer])
            {
              sharedInstance = [*(v59 + 2728) sharedInstance];
              guid10 = [(__CFString *)v149 guid];
              v86 = [sharedInstance messageWithGUID:guid10];
              v87 = v86;
              v88 = v149;
              if (v86)
              {
                v88 = v86;
              }

              v89 = v88;

              broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
              accountID = [v157 accountID];
              v92 = styleCopy;
              groupID = [v147 groupID];
              personCentricID = [v147 personCentricID];
              [broadcasterForChatListeners account:accountID chat:v156 style:v92 chatProperties:0 groupID:groupID chatPersonCentricID:personCentricID messageSent:v89];
            }

            if ([(__CFString *)messageCopy isFinished])
            {
              service3 = [(__CFString *)messageCopy service];
              v96 = [service3 isEqual:*MEMORY[0x277D1A620]];

              if (v96)
              {
                guid11 = [(__CFString *)messageCopy guid];
                fileTransferGUIDs = [(__CFString *)messageCopy fileTransferGUIDs];
                [fileTransferGUIDs count];
                _signpostSendMessage();
              }
            }

            if ([(__CFString *)messageCopy shouldNotifyOnSend])
            {
              if (IMOSLoggingEnabled())
              {
                v99 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
                {
                  guid12 = [(__CFString *)messageCopy guid];
                  if (errorCode)
                  {
                    v101 = @"NO";
                  }

                  else
                  {
                    v101 = @"YES";
                  }

                  v102 = guid12;
                  *buf = 138412546;
                  v175 = v101;
                  v176 = 2112;
                  v177 = v102;
                  _os_log_impl(&dword_22B4CC000, v99, OS_LOG_TYPE_INFO, "Posting distributed notification of send result %@ for message %@", buf, 0x16u);
                }
              }

              v184[0] = *MEMORY[0x277D19FE8];
              guid13 = [(__CFString *)messageCopy guid];
              v185[0] = guid13;
              v184[1] = *MEMORY[0x277D19FF0];
              v104 = [MEMORY[0x277CCABB0] numberWithInt:errorCode == 0];
              v185[1] = v104;
              v105 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];

              DistributedCenter = CFNotificationCenterGetDistributedCenter();
              CFNotificationCenterPostNotification(DistributedCenter, *MEMORY[0x277D19FE0], 0, v105, 1u);
            }

            if ([(__CFString *)messageCopy sentViaRemoteIntent])
            {
              guid14 = [(__CFString *)messageCopy guid];
              IMMessageSoundStartSuppressingSendSoundForMessageGUID();
            }

            if (v143)
            {
              guid15 = [(__CFString *)messageCopy guid];
              [(IMDServiceSession *)self _updateExpireStateForMessageGUID:guid15];
            }

            if (HIDWORD(v143))
            {
              [(IMDServiceSession *)self sendSavedReceiptForMessage:messageCopy toChatID:0 identifier:v156 style:styleCopy account:v157];
            }

            v109 = ([(__CFString *)messageCopy isTypingMessage]& 1) == 0 && ([(__CFString *)messageCopy isDelivered]& 1) == 0 && [(__CFString *)messageCopy scheduleType]!= 2;
            v110 = ([v157 canMakeDowngradeRoutingChecks] & 1) != 0 || -[__CFString errorCode](messageCopy, "errorCode") == 22;
            if (IMOSLoggingEnabled())
            {
              v111 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
              {
                service4 = [v157 service];
                v113 = service4;
                v114 = @"NO";
                *buf = 138413314;
                if (v110)
                {
                  v115 = @"YES";
                }

                else
                {
                  v115 = @"NO";
                }

                if (v109)
                {
                  v114 = @"YES";
                }

                v175 = v114;
                v176 = 2112;
                v177 = v115;
                v178 = 2112;
                v179 = messageCopy;
                v180 = 2112;
                v181 = v157;
                v182 = 2112;
                v183 = service4;
                _os_log_impl(&dword_22B4CC000, v111, OS_LOG_TYPE_INFO, "Determining routing eligibilityisRoutableMessage: %@, canMakeDowngradeRoutingCheck: %@\nmessage: %@\naccount: %@\naccount.service: %@\n", buf, 0x34u);
              }
            }

            if (v109 && v110)
            {
              if (IMOSLoggingEnabled())
              {
                v116 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v116, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v116, OS_LOG_TYPE_INFO, "Routable message can make downgrade check", buf, 2u);
                }
              }

              guid16 = [(__CFString *)messageCopy guid];
              guid17 = [v147 guid];
              [(IMDServiceSession *)self _updateRoutingForMessageGUID:guid16 chatGUID:guid17 error:[(__CFString *)messageCopy errorCode] account:v157];
            }

            else
            {
              if (v110 || !v109)
              {
                goto LABEL_197;
              }

              guid16 = IMLogHandleForCategory();
              if (os_log_type_enabled(guid16, OS_LOG_TYPE_ERROR))
              {
                sub_22B7D8D74();
              }
            }

LABEL_197:
            if (!isTypingMessage || v153)
            {
              guid18 = [(__CFString *)messageCopy guid];
              sub_22B67EEDC(guid18);
            }

            if ([(__CFString *)messageCopy isAssociatedMessageItem])
            {
              v120 = [(__CFString *)messageCopy associatedMessageType]& 0xFFFFFFFFFFFFFFF8;
              if (v120 == 3000 || v120 == 2000)
              {
                v121 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                {
                  guid19 = [(__CFString *)messageCopy guid];
                  associatedMessageGUID = [(__CFString *)messageCopy associatedMessageGUID];
                  *buf = 138412546;
                  v175 = guid19;
                  v176 = 2112;
                  v177 = associatedMessageGUID;
                  _os_log_impl(&dword_22B4CC000, v121, OS_LOG_TYPE_INFO, "Replacing previous message acknowledgements with new acknowledgment for sent message; sender: '%@':'%@'", buf, 0x16u);
                }

                sharedInstance2 = [*(v59 + 2728) sharedInstance];
                guid20 = [(__CFString *)messageCopy guid];
                associatedMessageGUID2 = [(__CFString *)messageCopy associatedMessageGUID];
                v127 = [sharedInstance2 replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:guid20 associatedMessageGUID:associatedMessageGUID2 sender:0];
              }
            }

            if ([(__CFString *)messageCopy isAssociatedMessageItem]&& [(__CFString *)messageCopy associatedMessageType]== 4000)
            {
              v128 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
              {
                guid21 = [(__CFString *)messageCopy guid];
                associatedMessageGUID3 = [(__CFString *)messageCopy associatedMessageGUID];
                *buf = 138412546;
                v175 = guid21;
                v176 = 2112;
                v177 = associatedMessageGUID3;
                _os_log_impl(&dword_22B4CC000, v128, OS_LOG_TYPE_INFO, "Replacing previous custom acknowledgements with new acknowledgment for sent message; sender: '%@':'%@'", buf, 0x16u);
              }

              sharedInstance3 = [*(v59 + 2728) sharedInstance];
              guid22 = [(__CFString *)messageCopy guid];
              associatedMessageGUID4 = [(__CFString *)messageCopy associatedMessageGUID];
              v134 = [sharedInstance3 replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:guid22 associatedMessageGUID:associatedMessageGUID4 sender:0];
            }

            v168 = 0u;
            v169 = 0u;
            v166 = 0u;
            v167 = 0u;
            serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
            v136 = [serviceSessionDelegates countByEnumeratingWithState:&v166 objects:v173 count:16];
            if (v136)
            {
              v137 = *v167;
              v138 = MEMORY[0x277D85CD0];
              do
              {
                for (i = 0; i != v136; ++i)
                {
                  if (*v167 != v137)
                  {
                    objc_enumerationMutation(serviceSessionDelegates);
                  }

                  v140 = *(*(&v166 + 1) + 8 * i);
                  if (objc_opt_respondsToSelector())
                  {
                    v141 = v138;
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 3221225472;
                    block[2] = sub_22B68A224;
                    block[3] = &unk_2787077E0;
                    block[4] = v140;
                    v160 = messageCopy;
                    v161 = v156;
                    v164 = styleCopy;
                    v162 = v157;
                    v163 = dateCopy;
                    v165 = storageCopy;
                    dispatch_async(v138, block);
                  }
                }

                v136 = [serviceSessionDelegates countByEnumeratingWithState:&v166 objects:v173 count:16];
              }

              while (v136);
            }

            v142 = +[IMDChatRegistry sharedInstance];
            [v142 updateLastMessageForChat:v147 hintMessage:v149];

            goto LABEL_221;
          }

          [v147 updateNumberOfTimesRespondedToThread];
          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

          if (isIntroductionsEnabled)
          {
            if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled])
            {
              goto LABEL_142;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_141;
            }

            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              chatIdentifier = [v147 chatIdentifier];
              *buf = 138412290;
              v175 = chatIdentifier;
              _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Updating isFiltered to NO, replying to chatId: %@", buf, 0xCu);
            }
          }

          else if ([v147 isFiltered] > 1 || (objc_msgSend(v147, "isSMSSpam") & 1) != 0)
          {
            if (![v147 isOscarChat])
            {
              goto LABEL_142;
            }

            if (!IMOSLoggingEnabled())
            {
              goto LABEL_141;
            }

            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              chatIdentifier2 = [v147 chatIdentifier];
              *buf = 138412290;
              v175 = chatIdentifier2;
              _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "iMessage junk chat, updating isFiltered to NO, replying to chatId: %@", buf, 0xCu);
            }
          }

          else
          {
            if (!IMOSLoggingEnabled())
            {
LABEL_141:
              [v147 updateIsFiltered:0];
              goto LABEL_142;
            }

            v73 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
            {
              chatIdentifier3 = [v147 chatIdentifier];
              *buf = 138412290;
              v175 = chatIdentifier3;
              _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Updating isFiltered to NO, replying to chatId: %@", buf, 0xCu);
            }
          }

          goto LABEL_141;
        }

        if (v28)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            guid23 = [(__CFString *)messageCopy guid];
            *buf = 138412290;
            v175 = guid23;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Replicated message %@ is permitted to upgrade but existing message was already marked as deduplicated", buf, 0xCu);
          }
        }
      }

      v31 = v24;
      goto LABEL_24;
    }
  }

  else
  {
    v157 = accountCopy;
  }

  v156 = chatCopy;
LABEL_222:
}

- (void)notifyDidSendMessageID:(id)d shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  dCopy = d;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self notifyDidSendMessageID:dCopy account:account shouldNotify:notifyCopy];
}

- (BOOL)_alwaysAllowMarkingSent
{
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v3 = IMGetDomainBoolForKey();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_canMarkMessageAsSent:(id)sent
{
  if (([sent isSent] & 1) == 0 && !-[IMDServiceSession isReplicating](self, "isReplicating"))
  {
    return 1;
  }

  return [(IMDServiceSession *)self _alwaysAllowMarkingSent];
}

- (void)notifyDidSendMessageID:(id)d account:(id)account shouldNotify:(BOOL)notify wasDowngraded:(BOOL)downgraded wasInterworked:(BOOL)interworked
{
  interworkedCopy = interworked;
  notifyCopy = notify;
  v60 = *MEMORY[0x277D85DE8];
  dCopy = d;
  accountCopy = account;
  if (self->_activated)
  {
    if (!self->_account)
    {
      account = [(IMDServiceSession *)self account];

      accountCopy = account;
    }

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = dCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "message: %@", buf, 0xCu);
      }
    }

    if (dCopy)
    {
      service = [(IMDServiceSession *)self service];
      supportsDatabase = [service supportsDatabase];

      if (supportsDatabase)
      {
        v18 = +[IMDMessageStore sharedInstance];
        v19 = [v18 messageWithGUID:dCopy];

        service2 = [v19 service];
        service3 = [(IMDServiceSession *)self service];
        internalName = [service3 internalName];

        if (!v19 || !service2 || !internalName)
        {
          goto LABEL_20;
        }

        if ([(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2]|| [(IMDServiceSession *)self _alwaysAllowMarkingSent])
        {
          v54 = [(IMDServiceSession *)self _canMarkMessageAsSent:v19]|| interworkedCopy;
          if (!v54)
          {
            v24 = 0;
LABEL_29:
            v36 = MEMORY[0x277CCABB0];
            time = [v19 time];
            [time timeIntervalSinceNow];
            v55 = [v36 numberWithDouble:fabs(v38)];

            if (IMOSLoggingEnabled())
            {
              v39 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v57 = v19;
                v58 = 2112;
                v59 = v55;
                _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Updated sent message: %@   duration: %@", buf, 0x16u);
              }
            }

            if (v54)
            {
              broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
              accountID = [accountCopy accountID];
              [broadcasterForChatListeners account:accountID chat:0 style:0 messageUpdated:v19];
            }

            if (v24)
            {
              v42 = +[IMDMessageStore sharedInstance];
              v43 = [v42 chatForMessage:v19];

              chatIdentifier = [v43 chatIdentifier];
              if ([chatIdentifier length])
              {
                if (IMOSLoggingEnabled())
                {
                  v45 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v57 = chatIdentifier;
                    _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Notifying chat listeners of service switch request for chat %@", buf, 0xCu);
                  }
                }

                broadcasterForChatListeners2 = [(IMDServiceSession *)self broadcasterForChatListeners];
                [broadcasterForChatListeners2 serviceSwitchRequestReceivedForChatWithIdentifier:chatIdentifier];
              }
            }

            if (([v19 flags] & 0x8000) != 0)
            {
              if ([v19 isFromMe])
              {
                if (([v19 isTypingMessage] & 1) == 0 && !objc_msgSend(v19, "errorCode") && notifyCopy)
                {
                  broadcasterForChatObserverListeners = [(IMDServiceSession *)self broadcasterForChatObserverListeners];
                  accountID2 = [accountCopy accountID];
                  [broadcasterForChatObserverListeners account:accountID2 chat:0 style:0 notifySentMessage:v19 sendTime:v55 isReplicating:{-[IMDServiceSession isReplicating](self, "isReplicating")}];

                  if (![(IMDServiceSession *)self isReplicating])
                  {
                    [IMDSoundUtilities playMessageSentSoundIfNeeded:v19];
                  }
                }
              }
            }

            goto LABEL_47;
          }

          if (interworkedCopy)
          {
            goto LABEL_17;
          }

          if (![(IMDServiceSession *)self _messageUpgradesWhenSentFromCurrentService:v19])
          {
            if (downgraded || [(IMDServiceSession *)self _messageDowngradesWhenSentFromCurrentService:v19])
            {
              v32 = 557056;
              if (([v19 wasDowngraded] & 1) == 0)
              {
                originalServiceName = [v19 originalServiceName];
                if (!originalServiceName || (v48 = [(IMDServiceSession *)self _messageDowngradesWhenSentFromCurrentService:v19], originalServiceName, v48))
                {
                  service4 = [v19 service];
                  [v19 setOriginalServiceName:service4];
                }

                service5 = [(IMDServiceSession *)self service];
                internalName2 = [service5 internalName];
                [v19 setService:internalName2];
              }

              v24 = 1;
              goto LABEL_28;
            }

            v24 = 0;
LABEL_27:
            v32 = 0x8000;
LABEL_28:
            [v19 setFlags:{objc_msgSend(v19, "flags") | v32}];
            [v19 setErrorCode:0];
            v33 = +[IMDMessageStore sharedInstance];
            v34 = [v33 storeMessage:v19 forceReplace:0 modifyError:1 modifyFlags:1 flagMask:v32];

            guid = [v34 guid];
            sub_22B67EEDC(guid);

            v19 = v34;
            goto LABEL_29;
          }

          originalServiceName2 = [v19 originalServiceName];
          v27 = originalServiceName2 == 0;

          if (v27)
          {
LABEL_17:
            service6 = [v19 service];
            [v19 setOriginalServiceName:service6];
          }

          service7 = [(IMDServiceSession *)self service];
          internalName3 = [service7 internalName];
          [v19 setService:internalName3];

          account2 = [(IMDServiceSession *)self account];
          accountID3 = [account2 accountID];
          [v19 setAccountID:accountID3];

          [v19 setWasInterworked:interworkedCopy];
          v24 = 1;
          goto LABEL_27;
        }

        if (![(IMDServiceSession *)self messageServiceNamed:internalName canProcessMessagesFromServiceNamed:service2])
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_47;
          }

          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v57 = service2;
            v58 = 2112;
            v59 = internalName;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Unable notify about message, message is on an incompatible service: %@ vs %@", buf, 0x16u);
          }
        }

        else
        {
LABEL_20:
          if (!IMOSLoggingEnabled())
          {
LABEL_47:

            goto LABEL_48;
          }

          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v57 = dCopy;
            _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Unable notify about message, no messages found for guid: %@", buf, 0xCu);
          }
        }

        goto LABEL_47;
      }
    }
  }

LABEL_48:
}

- (void)sendDeleteCommand:(id)command forChatGUID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = commandCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Can't delete on this service %@", &v8, 0xCu);
    }
  }
}

- (void)didReceiveDisplayNameChange:(id)change fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  v14 = MEMORY[0x277CCACA8];
  accountCopy = account;
  chatCopy = chat;
  identifierCopy = identifier;
  dCopy = d;
  changeCopy = change;
  stringGUID = [v14 stringGUID];
  [(IMDServiceSession *)self didReceiveDisplayNameChange:changeCopy guid:stringGUID fromID:dCopy toIdentifier:identifierCopy forChat:chatCopy style:styleCopy account:accountCopy];
}

- (void)didReceiveDisplayNameChange:(id)change guid:(id)guid fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  v69 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  guidCopy = guid;
  dCopy = d;
  identifierCopy = identifier;
  chatCopy = chat;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v60 = dCopy;
      v61 = 2112;
      v62 = changeCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "didReceiveDisplayNameChange from: %@, toName: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v60 = changeCopy;
      v61 = 2112;
      v62 = dCopy;
      v63 = 2112;
      v64 = identifierCopy;
      v65 = 2112;
      v66 = chatCopy;
      v67 = 1024;
      v68 = styleCopy;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "name: %@   fromID: %@  toIdentifier:%@  identifier: %@ style: %d", buf, 0x30u);
    }
  }

  if (styleCopy != 45 && self->_activated)
  {
    v57 = styleCopy;
    v56 = chatCopy;
    v19 = chatCopy;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v56 style:&v57];
    v47 = v56;

    v20 = [(IMDServiceSession *)self chatForChatIdentifier:v47 style:v57 updatingAccount:1];
    if (!v20)
    {
      v21 = changeCopy;
LABEL_50:

      goto LABEL_51;
    }

    v21 = IMSharedHelperTruncatedGroupDisplayName();

    displayName = [v20 displayName];
    v23 = IMSharedHelperAreObjectsLogicallySame();

    if (v23)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Ignoring name update, already the current name", buf, 2u);
        }
      }

      goto LABEL_50;
    }

    displayName2 = [v20 displayName];
    v46 = displayName2;
    if (displayName2)
    {
      v45 = [displayName2 length] == 0;
      if (v21)
      {
LABEL_21:
        v44 = [v21 length] == 0;
LABEL_24:
        v26 = +[IMDChatRegistry sharedInstance];
        v27 = [v26 allExistingChatsWithIdentifier:v47 style:v57];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v28 = v27;
        v29 = [v28 countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v29)
        {
          v30 = *v53;
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v53 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = *(*(&v52 + 1) + 8 * i);
              style = [v32 style];
              if (style == [v20 style])
              {
                [v32 updateDisplayName:v21 sender:dCopy];
                isFiltered = [v32 isFiltered];
                participants = [v32 participants];
                LOBYTE(isFiltered) = [(IMDServiceSession *)self shouldDisplayGroupNameAndPhotoWith:isFiltered handles:participants];

                if (isFiltered)
                {
                  v36 = 1;
                  goto LABEL_35;
                }
              }
            }

            v29 = [v28 countByEnumeratingWithState:&v52 objects:v58 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

        v36 = 0;
LABEL_35:

        v37 = IMOSLoggingEnabled();
        if (v21 == 0 && v45 || v46 == 0 && v44)
        {
          if (v37)
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Don't create a change stamp, since the name hasn't meaningfully changed.", buf, 2u);
            }
          }
        }

        else
        {
          if (v37)
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v60 = v21;
              _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Generating group name change item with new group name: %@", buf, 0xCu);
            }
          }

          v40 = +[IMDMessageStore sharedInstance];
          v41 = [v40 itemWithGUID:guidCopy];

          if (v41)
          {
            stringGUID = [MEMORY[0x277CCACA8] stringGUID];

            guidCopy = stringGUID;
          }

          v43 = [objc_alloc(MEMORY[0x277D1A9F0]) initWithSender:dCopy time:0 guid:guidCopy type:2];
          if (v36)
          {
            [(IMDServiceSession *)self _configureSessionInformationOnItem:v43 toChat:v47 withStyle:v57 forAccount:accountCopy];
            [v43 setSender:dCopy];
            [v43 setDestinationCallerID:identifierCopy];
            [v43 setTitle:v21];
            [(IMDServiceSession *)self _storeTranscriptItem:v43 inChat:v20 account:accountCopy];
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      v45 = 0;
      if (v21)
      {
        goto LABEL_21;
      }
    }

    v44 = 0;
    goto LABEL_24;
  }

  v21 = changeCopy;
LABEL_51:
}

- (void)_updateInputMessage:(id)message forExistingMessage:(id)existingMessage
{
  v15 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  existingMessageCopy = existingMessage;
  if ([existingMessageCopy isRead])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "The existing message was read, let's mark the new one is read", &v13, 2u);
      }
    }

    [messageCopy setFlags:{objc_msgSend(messageCopy, "flags") | 0x2000}];
  }

  time = [existingMessageCopy time];
  v9 = time == 0;

  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        time2 = [existingMessageCopy time];
        v13 = 138412290;
        v14 = time2;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "The existing message has a time: %@, so lets set the new message to have the same time", &v13, 0xCu);
      }
    }

    time3 = [existingMessageCopy time];
    [messageCopy setTime:time3];
  }
}

- (void)didReceiveMessage:(id)message forChat:(id)chat style:(unsigned __int8)style fromIDSID:(id)d
{
  styleCopy = style;
  dCopy = d;
  chatCopy = chat;
  messageCopy = message;
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self didReceiveMessage:messageCopy forChat:chatCopy style:styleCopy account:account fromIDSID:dCopy];
}

- (void)didReceiveMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d
{
  styleCopy = style;
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v12 = MEMORY[0x277CBEA60];
  dCopy = d;
  accountCopy = account;
  chatCopy = chat;
  messageCopy2 = message;
  v17 = [v12 arrayWithObjects:&messageCopy count:1];

  [(IMDServiceSession *)self didReceiveMessages:v17 forChat:chatCopy style:styleCopy account:accountCopy fromIDSID:dCopy completion:&unk_283F1ABC8, messageCopy, v19];
}

- (void)_setReplyGUIDOnMessage:(id)message forChat:(id)chat
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  replyToGUID = [messageCopy replyToGUID];
  if (!replyToGUID || ([messageCopy replyToGUID], v8 = objc_claimAutoreleasedReturnValue(), v8, replyToGUID, !v8))
  {
    lastMessage = [chatCopy lastMessage];
    guid = [lastMessage guid];

    if ([guid length])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          guid2 = [messageCopy guid];
          v13 = 138412546;
          v14 = guid2;
          v15 = 2112;
          v16 = guid;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "We are setting the reply to guid for message %@ to be %@ as a reply to guid has not been set", &v13, 0x16u);
        }
      }

      [messageCopy setReplyToGUID:guid];
    }
  }
}

- (void)_setSortIDForMessage:(id)message forChat:(id)chat
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
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Assigning sort id %@ to message %@ for chat %@", &v12, 0x20u);
      }
    }
  }
}

- (id)_collaborationMessageProcessingQueue
{
  if (qword_27D8D0018 != -1)
  {
    sub_22B7D8DB4();
  }

  v3 = qword_27D8D0010;

  return v3;
}

- (void)_didReceivePotentialCollaborationMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  messageCopy = message;
  chatCopy = chat;
  accountCopy = account;
  v13 = objc_alloc_init(MEMORY[0x277D1A988]);
  payloadData = [messageCopy payloadData];
  [v13 setData:payloadData];

  guid = [messageCopy guid];
  [v13 setMessageGUID:guid];

  [v13 setIsFromMe:{objc_msgSend(messageCopy, "isFromMe")}];
  v16 = MEMORY[0x277CBEBC0];
  body = [messageCopy body];
  string = [body string];
  v19 = [v16 URLWithString:string];
  [v13 setUrl:v19];

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v21 = [fileTransferGUIDs __imArrayByApplyingBlock:&unk_283F1AC08];
  [v13 setAttachments:v21];

  _collaborationMessageProcessingQueue = [(IMDServiceSession *)self _collaborationMessageProcessingQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22B68BD88;
  v27[3] = &unk_278707828;
  v28 = v13;
  v29 = messageCopy;
  selfCopy = self;
  v31 = chatCopy;
  styleCopy = style;
  v32 = accountCopy;
  v23 = accountCopy;
  v24 = chatCopy;
  v25 = messageCopy;
  v26 = v13;
  dispatch_async(_collaborationMessageProcessingQueue, v27);
}

- (id)_revokeSiblingMessagesForReplication:(id)replication
{
  v24 = *MEMORY[0x277D85DE8];
  replicationCopy = replication;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(replicationCopy, "count")}];
  v5 = objc_alloc_init(MEMORY[0x277D18ED8]);
  replicationCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", *MEMORY[0x277D19F90], replicationCopy];
  [v5 setPredicate:replicationCopy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        guid = [*(*(&v17 + 1) + 8 * i) guid];
        [v4 addObject:guid];
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = +[IMDMessageStore sharedInstance];
  v13 = [v12 deleteMessageGUIDs:v4];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "   deleted messages: %@", buf, 0xCu);
    }
  }

  v15 = [v4 copy];

  return v15;
}

- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion
{
  v130 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v117 = messagesCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "messages: %@", buf, 0xCu);
    }
  }

  if ([messagesCopy count] && -[IMDServiceSession _isActivated](self, "_isActivated"))
  {
    styleCopy = style;
    v113 = chatCopy;
    v14 = chatCopy;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v113 style:&styleCopy];
    v79 = v113;

    v111[0] = 0;
    v111[1] = v111;
    v111[2] = 0x2020000000;
    v112 = 1;
    if ([(IMDServiceSession *)self isReplicating])
    {
      v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v76 = 0;
    }

    v83 = [(IMDServiceSession *)self chatForChatIdentifier:v79 style:styleCopy updatingAccount:1];
    v80 = [[IMDIncomingMessageTranslator alloc] initWithChat:v83];
    v75 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(messagesCopy, "count")}];
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = messagesCopy;
    v78 = [obj countByEnumeratingWithState:&v107 objects:v129 count:16];
    if (v78)
    {
      v74 = *v108;
      *&v15 = 138412546;
      v68 = v15;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v108 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v84 = *(*(&v107 + 1) + 8 * i);
          [(IMDIncomingMessageTranslator *)v80 beginProcessingMessage:v68, dCopy];
          if ([v84 isFromMe] && objc_msgSend(v83, "state") != 3)
          {
            v16 = +[IMDChatRegistry sharedInstance];
            v17 = [v16 allExistingChatsWithIdentifier:v79 style:styleCopy];

            array = [MEMORY[0x277CBEB18] array];
            v105 = 0u;
            v106 = 0u;
            v103 = 0u;
            v104 = 0u;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v103 objects:v128 count:16];
            if (v20)
            {
              v21 = *v104;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v104 != v21)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v23 = *(*(&v103 + 1) + 8 * j);
                  if ([v23 state] != 3)
                  {
                    [v23 setState:3];
                    [v23 setCloudKitSyncState:0];
                    guid = [v23 guid];
                    v25 = guid;
                    if (guid)
                    {
                      v26 = guid;
                    }

                    else
                    {
                      v26 = @"<nil>";
                    }

                    v27 = v26;

                    [array addObject:v27];
                    v28 = +[IMDChatStore sharedInstance];
                    [v28 storeChat:v23];
                  }
                }

                v20 = [v19 countByEnumeratingWithState:&v103 objects:v128 count:16];
              }

              while (v20);
            }

            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = [array componentsJoinedByString:{@", "}];
                *buf = 138412290;
                v117 = v30;
                _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Fixed chat join states for chats with guids: %@", buf, 0xCu);
              }
            }
          }

          v31 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v83, "lastReadMessageTimeStamp")}];
          __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          time = [v84 time];
          if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v83, "lastReadMessageTimeStamp")}];
              lastSeenMessageGuid = [v83 lastSeenMessageGuid];
              v37 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(time, "__im_nanosecondTimeInterval")}];
              *buf = 138413570;
              v117 = v35;
              v118 = 2112;
              v119 = lastSeenMessageGuid;
              v120 = 2112;
              v121 = v31;
              v122 = 2112;
              v123 = time;
              v124 = 2112;
              v125 = v37;
              v126 = 2112;
              v127 = __im_dateWithCurrentServerTime;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Chat's last read message time date (%@) guid (%@) timestamp: (%@) Messages time date (%@) timestamp: (%@) Server timestamp: (%@)", buf, 0x3Eu);
            }
          }

          if ([v31 compare:time] == 1)
          {
            v38 = [__im_dateWithCurrentServerTime dateByAddingTimeInterval:60.0];
            if ([v31 compare:v38] == 1)
            {
              if (IMOSLoggingEnabled())
              {
                v39 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                {
                  guid2 = [v84 guid];
                  *buf = 138412290;
                  v117 = guid2;
                  _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Last read message time is in the future. Not marking incoming message %@ as read", buf, 0xCu);
                }
              }
            }

            else
            {
              if ([v84 sentOrReceivedOffGrid])
              {
                v41 = [__im_dateWithCurrentServerTime dateByAddingTimeInterval:3600.0];
                if ([v31 compare:v41] == -1)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v62 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
                    {
                      guid3 = [v84 guid];
                      *buf = v68;
                      v117 = v41;
                      v118 = 2112;
                      v119 = guid3;
                      _os_log_impl(&dword_22B4CC000, v62, OS_LOG_TYPE_INFO, "Satellite message time for GUID %@ is within grace period (%@). Not marking it as read.", buf, 0x16u);
                    }
                  }

                  goto LABEL_58;
                }

                if (IMOSLoggingEnabled())
                {
                  v42 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                  {
                    guid4 = [v84 guid];
                    *buf = 138412290;
                    v117 = guid4;
                    _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "Satellite message with GUID %@ will be marked as read because it's time is older than the chat's last read message time including the grace period.", buf, 0xCu);
                  }
                }
              }

              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  guid5 = [v84 guid];
                  *buf = 138412290;
                  v117 = guid5;
                  _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Setting message %@ as read as incoming message is older than the chat's last read message time", buf, 0xCu);
                }
              }

              [v84 setFlags:{objc_msgSend(v84, "flags") | 0x2000}];
            }

LABEL_58:
          }

          [(IMDServiceSession *)self _setReplyGUIDOnMessage:v84 forChat:v83];
          [(IMDServiceSession *)self _setSortIDForMessage:v84 forChat:v83];
          if ([(IMDServiceSession *)self isReplicating])
          {
            v46 = +[IMDMessageStore sharedInstance];
            guid6 = [v84 guid];
            v48 = [v46 messageWithGUID:guid6];

            service = [v48 service];
            service2 = [(IMDServiceSession *)self service];
            internalName = [service2 internalName];
            v52 = [service isEqualToString:internalName];

            if (v52)
            {
              replicatedFallbackGUIDs = [v84 replicatedFallbackGUIDs];
            }

            else
            {
              replicatedFallbackGUIDs = 0;
            }
          }

          else
          {
            replicatedFallbackGUIDs = 0;
          }

          mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
          isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

          if (isIntroductionsEnabled)
          {
            if ([v83 isFiltered])
            {
              v56 = MEMORY[0x277D1AC58];
              sender = [v84 sender];
              LODWORD(v56) = [v56 isKnownContact:sender];

              if (v56)
              {
                [v83 updateIsFiltered:0 fromContact:1];
              }
            }

            if ([MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled] && (objc_msgSend(v84, "isRead") & 1) == 0 && (objc_msgSend(v84, "isTypingMessage") & 1) == 0 && objc_msgSend(v83, "isFiltered") && objc_msgSend(v83, "isFiltered") != 2)
            {
              guid7 = [v83 guid];

              if (guid7)
              {
                v59 = +[IMDChatRegistry sharedInstance];
                guid8 = [v83 guid];
                v115 = guid8;
                v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v115 count:1];
                [v59 updatePendingReviewForChatsWithGUIDs:v61 pendingReview:1];
              }

              else
              {
                v59 = IMLogHandleForCategory();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v117 = v83;
                  _os_log_error_impl(&dword_22B4CC000, v59, OS_LOG_TYPE_ERROR, "Couldn't get chat guid from local chat %@", buf, 0xCu);
                }
              }
            }
          }

          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = sub_22B68D14C;
          v94[3] = &unk_278707850;
          v94[4] = self;
          v94[5] = v84;
          v95 = v79;
          v96 = v83;
          v102 = styleCopy;
          v97 = accountCopy;
          v98 = v75;
          v101 = v111;
          v99 = v76;
          v64 = replicatedFallbackGUIDs;
          v100 = v64;
          [(IMDIncomingMessageTranslator *)v80 finishProcessingMessage:v84 completion:v94];
        }

        v78 = [obj countByEnumeratingWithState:&v107 objects:v129 count:16];
      }

      while (v78);
    }

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = sub_22B68D1CC;
    v85[3] = &unk_278707878;
    v92 = completionCopy;
    v93 = v111;
    v85[4] = self;
    v86 = obj;
    v65 = v76;
    v87 = v65;
    v66 = v75;
    v88 = v66;
    v67 = v83;
    v89 = v67;
    v90 = accountCopy;
    v91 = dCopy;
    [(IMDIncomingMessageTranslator *)v80 processedAllMessagesWithCompletion:v85];

    _Block_object_dispose(v111, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)storeMessages:(id)messages messagesToWithdraw:(id)withdraw messagesToPost:(id)post chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account fromIDSID:(id)d
{
  messagesCopy = messages;
  withdrawCopy = withdraw;
  postCopy = post;
  identifierCopy = identifier;
  accountCopy = account;
  dCopy = d;
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22B68D464;
    v21[3] = &unk_2787078A0;
    v22 = withdrawCopy;
    selfCopy = self;
    v24 = identifierCopy;
    styleCopy = style;
    v25 = postCopy;
    v26 = accountCopy;
    v27 = messagesCopy;
    v28 = dCopy;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }
}

- (BOOL)_storeMessage:(id)message chatIdentifier:(id)identifier localChat:(id)chat style:(unsigned __int8)style account:(id)account messagesToPostArray:(id)array
{
  styleCopy = style;
  v71 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  chatCopy = chat;
  accountCopy = account;
  arrayCopy = array;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = sub_22B4D77B0;
  v66[4] = sub_22B4D793C;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_22B4D77B0;
  v64[4] = sub_22B4D793C;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_22B4D77B0;
  v62[4] = sub_22B4D793C;
  v63 = 0;
  [(IMDServiceSession *)self _configureSessionInformationOnItem:messageCopy toChat:identifierCopy withStyle:styleCopy forAccount:accountCopy];
  consumedSessionPayloads = [messageCopy consumedSessionPayloads];
  if (([messageCopy isFromMe] & 1) == 0)
  {
    [messageCopy setFlags:{objc_msgSend(messageCopy, "flags") | 0x1000}];
  }

  v34 = arrayCopy;
  if (![messageCopy isExpirable] || !objc_msgSend(messageCopy, "isFromMe") || objc_msgSend(messageCopy, "expireState") > 0)
  {
    v33 = 0;
LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  if (!IMMessageItemShouldAutomaticallySave())
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        guid = [messageCopy guid];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = guid;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_DEBUG, "Expire message sent from linked device: %@", &buf, 0xCu);
      }
    }

    [messageCopy setExpireState:1];
    v33 = 1;
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      guid2 = [messageCopy guid];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = guid2;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEBUG, "Automatically saving message sent from linked device: %@", &buf, 0xCu);
    }
  }

  [messageCopy setExpireState:3];
  v33 = 0;
  v19 = 1;
LABEL_8:
  *&buf = 0;
  *(&buf + 1) = &buf;
  v69 = 0x2020000000;
  v70 = 0;
  v20 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v20 setModifyError:1];
  [(IMDMessageStorageContext *)v20 setModifyFlags:1];
  [(IMDMessageStorageContext *)v20 setFlagMask:0x81000003009];
  [(IMDMessageStorageContext *)v20 setChat:chatCopy];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_22B68DDEC;
  v52[3] = &unk_2787078C8;
  p_buf = &buf;
  v59 = v64;
  v57 = v66;
  v52[4] = self;
  v21 = chatCopy;
  v53 = v21;
  v60 = v62;
  v54 = identifierCopy;
  v61 = styleCopy;
  v55 = accountCopy;
  v56 = messageCopy;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = sub_22B68F2F0;
  v46[3] = &unk_2787078F0;
  v50 = &buf;
  v47 = v56;
  selfCopy = self;
  v49 = v54;
  v51 = styleCopy;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_22B68F4A4;
  v36[3] = &unk_278707918;
  v22 = v47;
  v37 = v22;
  selfCopy2 = self;
  v23 = v49;
  v39 = v23;
  v43 = styleCopy;
  v24 = consumedSessionPayloads;
  v40 = v24;
  v25 = v34;
  v41 = v25;
  v44 = v33;
  v26 = v55;
  v42 = v26;
  v45 = v19;
  [(IMDServiceSession *)self storeMessage:v22 context:v20 didReplaceBlock:0 shouldStoreBlock:v52 didStoreBlock:v46 block:v36];
  v27 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  return v27 & 1;
}

- (BOOL)_canUpgradeExistingMessageItem:(id)item replacementReplicatedMessageItem:(id)messageItem
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  messageItemCopy = messageItem;
  if (![(IMDServiceSession *)self isReplicating])
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        v25 = 138412290;
        v26 = guid;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of message %@, session is not replicating", &v25, 0xCu);
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v8 = 0;
  if (itemCopy && messageItemCopy)
  {
    guid2 = [itemCopy guid];
    guid3 = [messageItemCopy guid];
    v11 = [guid2 isEqualToString:guid3];

    if (v11)
    {
      isFromMe = [itemCopy isFromMe];
      if (isFromMe == [messageItemCopy isFromMe])
      {
        if ([itemCopy isFromMe] & 1) != 0 || (objc_msgSend(itemCopy, "sender"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(messageItemCopy, "sender"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToString:", v20), v20, v19, (v21))
        {
          v8 = 1;
          goto LABEL_19;
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_18;
        }

        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          guid4 = [itemCopy guid];
          sender = [itemCopy sender];
          sender2 = [messageItemCopy sender];
          v25 = 138412802;
          v26 = guid4;
          v27 = 2112;
          v28 = sender;
          v29 = 2112;
          v30 = sender2;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of %@, different senders (%@ and %@)", &v25, 0x20u);
        }

        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          guid5 = [itemCopy guid];
          v25 = 138412290;
          v26 = guid5;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of %@", &v25, 0xCu);
        }

LABEL_17:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        guid6 = [itemCopy guid];
        guid7 = [messageItemCopy guid];
        v25 = 138412546;
        v26 = guid6;
        v27 = 2112;
        v28 = guid7;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Disallowing upgrade of message %@, replacement has guid %@", &v25, 0x16u);
      }

      goto LABEL_17;
    }

LABEL_18:
    v8 = 0;
  }

LABEL_19:

  return v8;
}

- (void)didReceiveInvitation:(id)invitation forChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v39 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = invitationCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEBUG, "message: %@", buf, 0xCu);
    }
  }

  if (invitationCopy && [(IMDServiceSession *)self _isActivated])
  {
    accountID = [(IMDServiceSession *)self accountID];
    v12 = ![(IMDServiceSession *)self shouldImitateGroupChatUsingChatRooms];
    if (styleCopy != 35)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      v16 = 0;
    }

    else if ([chatCopy roomNameIsProbablyAutomaticallyGenerated])
    {
      v13 = chatCopy;
      [(IMDServiceSession *)self useChatRoom:v13 forGroupChatIdentifier:v13];
      v14 = MEMORY[0x277CBEAC0];
      v15 = [v13 dataUsingEncoding:4];
      v16 = [v14 dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277D19328], 0}];

      styleCopy = 43;
    }

    else
    {
      v16 = 0;
      styleCopy = 35;
    }

    account = [(IMDServiceSession *)self account];
    [(IMDServiceSession *)self _configureSessionInformationOnItem:invitationCopy toChat:chatCopy withStyle:styleCopy forAccount:account];

    v18 = [(IMDServiceSession *)self chatForChatIdentifier:chatCopy style:styleCopy updatingAccount:1];
    if ([invitationCopy isTypingMessage] & 1) != 0 || (objc_msgSend(invitationCopy, "isFromMe"))
    {
      goto LABEL_25;
    }

    service = [(IMDServiceSession *)self service];
    if ([service supportsDatabase])
    {
      v20 = +[IMDDaemonPropertyManager sharedManager];
      v21 = [v20 valueOfPersistentProperty:*MEMORY[0x277D19320]];
      v28 = [v21 intValue] == 0;

      if (!v28)
      {
LABEL_25:
        v24 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v24 setModifyFlags:1];
        [(IMDMessageStorageContext *)v24 setFlagMask:9];
        [(IMDMessageStorageContext *)v24 setChat:v18];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = sub_22B690798;
        v35[3] = &unk_278707678;
        v36 = v18;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = sub_22B690830;
        v29[3] = &unk_278707940;
        v29[4] = self;
        v34 = styleCopy;
        v30 = chatCopy;
        v31 = v36;
        v32 = accountID;
        v33 = v16;
        v25 = v16;
        v26 = accountID;
        v27 = v36;
        [(IMDServiceSession *)self storeMessage:invitationCopy context:v24 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:v35 block:v29];

        goto LABEL_26;
      }
    }

    else
    {
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "  Ensuring the app is alive here", buf, 2u);
      }
    }

    v23 = +[IMDLocalDaemon sharedDaemon];
    [v23 launchListenerForCapability:*MEMORY[0x277D19358]];

    goto LABEL_25;
  }

LABEL_26:
}

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d lastAddressedHandle:(id)handle handleInfo:(id)info
{
  styleCopy = style;
  v14 = *&status;
  infoCopy = info;
  handleCopy = handle;
  dCopy = d;
  nameCopy = name;
  chatCopy = chat;
  account = [(IMDServiceSession *)self account];
  LOBYTE(v21) = 0;
  [(IMDServiceSession *)self didUpdateChatStatus:v14 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy lastAddressedHandle:handleCopy lastAddressedSIMID:0 handleInfo:infoCopy account:account isBlackholed:v21];
}

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD handleInfo:(id)self0
{
  styleCopy = style;
  v15 = *&status;
  infoCopy = info;
  iDCopy = iD;
  handleCopy = handle;
  dCopy = d;
  nameCopy = name;
  chatCopy = chat;
  account = [(IMDServiceSession *)self account];
  LOBYTE(v23) = 0;
  [(IMDServiceSession *)self didUpdateChatStatus:v15 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy lastAddressedHandle:handleCopy lastAddressedSIMID:iDCopy handleInfo:infoCopy account:account isBlackholed:v23];
}

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)self0 handleInfo:(id)self1
{
  styleCopy = style;
  v16 = *&status;
  infoCopy = info;
  mIDCopy = mID;
  handleCopy = handle;
  iDCopy = iD;
  dCopy = d;
  nameCopy = name;
  chatCopy = chat;
  account = [(IMDServiceSession *)self account];
  LOBYTE(v25) = 0;
  [(IMDServiceSession *)self didUpdateChatStatus:v16 chat:chatCopy style:styleCopy displayName:nameCopy groupID:dCopy originalGroupID:iDCopy lastAddressedHandle:handleCopy lastAddressedSIMID:mIDCopy handleInfo:infoCopy account:account isBlackholed:v25];
}

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style displayName:(id)name groupID:(id)d originalGroupID:(id)iD lastAddressedHandle:(id)handle lastAddressedSIMID:(id)self0 handleInfo:(id)self1 account:(id)self2 category:(int64_t)self3 spamExtensionName:(id)self4 isBlackholed:(BOOL)self5 spamDetectionSource:(int64_t)self6
{
  styleCopy = style;
  extensionNameCopy = extensionName;
  accountCopy = account;
  infoCopy = info;
  mIDCopy = mID;
  handleCopy = handle;
  iDCopy = iD;
  dCopy = d;
  nameCopy = name;
  chatCopy = chat;
  v32 = objc_alloc_init(IMDChatStatusChangeContext);
  [(IMDChatStatusChangeContext *)v32 setDisplayName:nameCopy];

  [(IMDChatStatusChangeContext *)v32 setGroupID:dCopy];
  [(IMDChatStatusChangeContext *)v32 setOriginalGroupID:iDCopy];

  [(IMDChatStatusChangeContext *)v32 setLastAddressedHandle:handleCopy];
  [(IMDChatStatusChangeContext *)v32 setLastAddressedSIMID:mIDCopy];

  [(IMDChatStatusChangeContext *)v32 setHandleInfo:infoCopy];
  [(IMDChatStatusChangeContext *)v32 setAccount:accountCopy];

  [(IMDChatStatusChangeContext *)v32 setCategory:category];
  [(IMDChatStatusChangeContext *)v32 setExtensionName:extensionNameCopy];

  [(IMDChatStatusChangeContext *)v32 setIsBlackholed:blackholed];
  [(IMDChatStatusChangeContext *)v32 setSpamDetectionSource:source];
  [(IMDServiceSession *)self didUpdateChatStatus:status chat:chatCopy style:styleCopy context:v32];
}

- (void)didUpdateChatStatus:(int)status chat:(id)chat style:(unsigned __int8)style context:(id)context
{
  styleCopy = style;
  v8 = *&status;
  contextCopy = context;
  chatCopy = chat;
  [contextCopy setChatStatus:v8];
  [contextCopy setChatIdentifier:chatCopy];

  [contextCopy setChatStyle:styleCopy];
  [(IMDServiceSession *)self didUpdateChatStatusWithContext:contextCopy];
}

- (void)didUpdateChatStatusWithContext:(id)context
{
  v120 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  chatIdentifier = [contextCopy chatIdentifier];
  chatStyle = [contextCopy chatStyle];
  if ([chatIdentifier length])
  {
    if (!self->_activated)
    {
      goto LABEL_89;
    }

    account = [contextCopy account];
    if (account)
    {
      [contextCopy setAccount:account];
    }

    else
    {
      account2 = [(IMDServiceSession *)self account];
      [contextCopy setAccount:account2];
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        chatStatus = [contextCopy chatStatus];
        lastAddressedHandle = [contextCopy lastAddressedHandle];
        lastAddressedSIMID = [contextCopy lastAddressedSIMID];
        *buf = 138413314;
        v111 = chatIdentifier;
        v112 = 1024;
        v113 = chatStatus;
        v114 = 1024;
        v115 = chatStyle;
        v116 = 2112;
        v117 = lastAddressedHandle;
        v118 = 2112;
        v119 = lastAddressedSIMID;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Chat: %@  status update: %d  style: %c lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x2Cu);
      }
    }

    v106 = chatIdentifier;
    [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v106 style:&chatStyle];
    v92 = v106;

    v85 = 0;
    v11 = [contextCopy chatStatus] + 1;
    if (v11 > 8)
    {
      v84 = 0;
      goto LABEL_55;
    }

    if (((1 << v11) & 0x73) != 0)
    {
      v87 = [(IMDServiceSession *)self chatForChatIdentifier:v92 style:chatStyle updatingAccount:1];
      state = [v87 state];
      v84 = (state & 0xFFFFFFFFFFFFFFFELL) == 2;
      if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
        groupID = [v87 groupID];
        [mEMORY[0x277D1AB78] informOfKickFromGroup:groupID];
      }

      [v87 setState:0];
      guid = [v87 guid];
      [(IMDServiceSession *)self _removeChatGuidFromCoreDuet:guid];

      v85 = v84;
LABEL_54:
      if (v87)
      {
LABEL_56:
        v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (chatStyle == 45)
        {
          v39 = MEMORY[0x277CBEAC0];
          obj = [MEMORY[0x277CCABB0] numberWithInt:2];
          v40 = [v39 dictionaryWithObjectsAndKeys:{v92, *MEMORY[0x277D193A8], obj, *MEMORY[0x277D192F8], 0}];
          [v90 addObject:v40];
        }

        else
        {
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          obj = [contextCopy handleInfo];
          v41 = [obj countByEnumeratingWithState:&v102 objects:v109 count:16];
          if (v41)
          {
            v91 = *v103;
            v42 = *MEMORY[0x277D193A8];
            v43 = *MEMORY[0x277D193C0];
            v44 = *MEMORY[0x277D193A0];
            v89 = *MEMORY[0x277D192F8];
            do
            {
              for (i = 0; i != v41; ++i)
              {
                if (*v103 != v91)
                {
                  objc_enumerationMutation(obj);
                }

                v46 = *(*(&v102 + 1) + 8 * i);
                v47 = [v46 objectForKey:v42];
                v48 = [v46 objectForKey:v43];
                v49 = [v46 objectForKey:v44];
                if (v47)
                {
                  v50 = MEMORY[0x277CBEAC0];
                  v51 = [MEMORY[0x277CCABB0] numberWithInt:2];
                  v52 = [v50 dictionaryWithObjectsAndKeys:{v47, v42, v51, v89, v48, v43, v49, v44, 0}];
                  [v90 addObject:v52];
                }
              }

              v41 = [obj countByEnumeratingWithState:&v102 objects:v109 count:16];
            }

            while (v41);
          }
        }

        v53 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self, "broadcasterForChatListenersWithBlackholeStatus:", [v87 isBlackholed]);
        account3 = [contextCopy account];
        accountID = [account3 accountID];
        v56 = chatStyle;
        chatProperties = [v87 chatProperties];
        groupID2 = [v87 groupID];
        personCentricID = [v87 personCentricID];
        LODWORD(v82) = [contextCopy chatStatus];
        [v53 account:accountID chat:v92 style:v56 chatProperties:chatProperties groupID:groupID2 chatPersonCentricID:personCentricID statusChanged:v82 handleInfo:v90];

        if (chatStyle != 45 && v85)
        {
          messageID = [contextCopy messageID];
          v62 = messageID;
          if (messageID)
          {
            stringGUID = messageID;
          }

          else
          {
            stringGUID = [MEMORY[0x277CCACA8] stringGUID];
          }

          v64 = stringGUID;

          v65 = +[IMDMessageStore sharedInstance];
          v66 = [v65 itemWithGUID:v64];

          if (v66)
          {
            stringGUID2 = [MEMORY[0x277CCACA8] stringGUID];

            v64 = stringGUID2;
          }

          v68 = [objc_alloc(MEMORY[0x277D1A9E0]) initWithSender:0 time:0 guid:v64 type:3];
          v69 = chatStyle;
          account4 = [contextCopy account];
          [(IMDServiceSession *)self _configureSessionInformationOnItem:v68 toChat:v92 withStyle:v69 forAccount:account4];

          [v68 setSender:0];
          [v68 setActionType:0];
          account5 = [v87 account];
          loginID = [account5 loginID];
          _stripFZIDPrefix = [loginID _stripFZIDPrefix];

          [v68 setDestinationCallerID:_stripFZIDPrefix];
          account6 = [contextCopy account];
          [(IMDServiceSession *)self _storeTranscriptItem:v68 inChat:v87 account:account6];
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
        v76 = [serviceSessionDelegates countByEnumeratingWithState:&v98 objects:v108 count:16];
        if (v76)
        {
          v77 = *v99;
          v78 = MEMORY[0x277D85CD0];
          do
          {
            for (j = 0; j != v76; ++j)
            {
              if (*v99 != v77)
              {
                objc_enumerationMutation(serviceSessionDelegates);
              }

              v80 = *(*(&v98 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = sub_22B691EA0;
                block[3] = &unk_2787073E8;
                block[4] = v80;
                v95 = contextCopy;
                v96 = v92;
                v97 = chatStyle;
                dispatch_async(v78, block);
              }
            }

            v76 = [serviceSessionDelegates countByEnumeratingWithState:&v98 objects:v108 count:16];
          }

          while (v76);
        }

        if (v84)
        {
          [v87 setCloudKitSyncState:0];
          v81 = +[IMDChatStore sharedInstance];
          [v81 storeChat:v87];
        }

        chatIdentifier = v92;
        goto LABEL_89;
      }

LABEL_55:
      v87 = [(IMDServiceSession *)self chatForChatIdentifier:v92 style:chatStyle];
      goto LABEL_56;
    }

    if (((1 << v11) & 0x108) == 0)
    {
      v84 = 0;
      if (v11 != 2)
      {
        goto LABEL_55;
      }

      v87 = [(IMDServiceSession *)self chatForChatIdentifier:v92 style:chatStyle];
      if ([v87 state] != 2)
      {
        [v87 setState:2];
LABEL_53:
        v84 = 1;
        v85 = 0;
        goto LABEL_54;
      }

      v84 = 0;
LABEL_50:
      v85 = 0;
      goto LABEL_54;
    }

    v16 = chatStyle;
    displayName = [contextCopy displayName];
    groupID3 = [contextCopy groupID];
    originalGroupID = [contextCopy originalGroupID];
    lastAddressedHandle2 = [contextCopy lastAddressedHandle];
    lastAddressedSIMID2 = [contextCopy lastAddressedSIMID];
    handleInfo = [contextCopy handleInfo];
    account7 = [contextCopy account];
    LOBYTE(v83) = [contextCopy isBlackholed];
    [(IMDServiceSession *)self registerChat:v92 style:v16 displayName:displayName groupID:groupID3 originalGroupID:originalGroupID lastAddressedHandle:lastAddressedHandle2 lastAddressedSIMID:lastAddressedSIMID2 handleInfo:handleInfo account:account7 isBlackholed:v83];

    v24 = chatStyle;
    account8 = [contextCopy account];
    v87 = [(IMDServiceSession *)self chatForChatIdentifier:v92 style:v24 account:account8 updatingAccount:1];

    isFiltered = [v87 isFiltered];
    if (isFiltered == [contextCopy category] || objc_msgSend(contextCopy, "category") != 2)
    {
      v84 = 0;
    }

    else
    {
      [v87 setSpamDetectionSource:{objc_msgSend(contextCopy, "spamDetectionSource")}];
      [v87 updateIsFiltered:{objc_msgSend(contextCopy, "category")}];
      v84 = 1;
    }

    v27 = [contextCopy chatStatus] == 2;
    state2 = [v87 state];
    if (v27)
    {
      if (state2 != 3)
      {
        [v87 setState:3];
        v84 = 1;
      }

      mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

      if (!isIntroductionsEnabled || ![contextCopy isMessageSentFromMe])
      {
        goto LABEL_37;
      }

      isFiltered2 = [v87 isFiltered];
      v32 = contextCopy;
      if (!isFiltered2)
      {
        goto LABEL_38;
      }

      [v87 updateIsFiltered:0];
    }

    else
    {
      v32 = contextCopy;
      if (state2 == 4)
      {
        goto LABEL_38;
      }

      [v87 setState:4];
    }

    v84 = 1;
LABEL_37:
    v32 = contextCopy;
LABEL_38:
    if ([v32 category] == 2 || objc_msgSend(contextCopy, "category") == 3 || objc_msgSend(contextCopy, "category") == 4)
    {
      spamExtensionName = [v87 spamExtensionName];
      extensionName = [contextCopy extensionName];
      v35 = [spamExtensionName isEqualToString:extensionName];

      if ((v35 & 1) == 0)
      {
        extensionName2 = [contextCopy extensionName];
        [v87 updateSMSSpamExtensionNameChatProperty:extensionName2];

        v84 = 1;
      }
    }

    if (MEMORY[0x231897A20](v92) && [v87 isFiltered])
    {
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          chatIdentifier2 = [v87 chatIdentifier];
          *buf = 138412290;
          v111 = chatIdentifier2;
          _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Updating isFiltered to NO, chat ID is a business chat: %@", buf, 0xCu);
        }
      }

      [v87 updateIsFiltered:0];
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Invalid chat identifier, ignoring", buf, 2u);
    }
  }

LABEL_89:
}

- (void)willRemoveChat:(id)chat
{
  v18 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat: %@ being removed.", buf, 0xCu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  v7 = [serviceSessionDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(serviceSessionDelegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 serviceSession:self willRemoveChat:chatCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [serviceSessionDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)willMoveChatToRecentlyDeleted:(id)deleted
{
  v18 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = deletedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Chat: %@ being moved to recently deleted.", buf, 0xCu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  serviceSessionDelegates = [(IMDServiceSession *)self serviceSessionDelegates];
  v7 = [serviceSessionDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(serviceSessionDelegates);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 serviceSession:self willMoveChatToRecentlyDeleted:deletedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [serviceSessionDelegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID
{
  v43 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  messageIDCopy = messageID;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = displayNameCopy;
      v41 = 2112;
      v42 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Asked to update display name from %@ to %@", buf, 0x16u);
    }
  }

  v16 = IMGetCachedDomainBoolForKey();
  v17 = +[IMDChatRegistry sharedInstance];
  v18 = [v17 existingChatWithGUID:iDCopy];

  displayName = [v18 displayName];
  if ((v16 & 1) == 0)
  {
    [v18 updateDisplayName:nameCopy];
  }

  if (![(IMDServiceSession *)self _canInsertDisplayNameUpdateItemForChat:v18])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_33;
    }

    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v18;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Cannot insert display name update item for chat. Bailing. %@", buf, 0xCu);
    }

LABEL_15:

    goto LABEL_33;
  }

  v20 = +[IMDMessageStore sharedInstance];
  v21 = [v20 hasStoredMessageWithGUID:messageIDCopy];

  if (v21)
  {
    goto LABEL_33;
  }

  if (displayName)
  {
    v22 = [displayName length] == 0;
    if (nameCopy)
    {
LABEL_11:
      v23 = [nameCopy length] != 0;
      goto LABEL_18;
    }
  }

  else
  {
    v22 = 0;
    if (nameCopy)
    {
      goto LABEL_11;
    }
  }

  v23 = 1;
LABEL_18:
  v25 = IMAreObjectsLogicallySame();
  v26 = IMOSLoggingEnabled();
  if ((((v25 | (nameCopy == 0 && v22)) ^ 1) & (displayName != 0 || v23) & 1) == 0)
  {
    if (!v26)
    {
      goto LABEL_33;
    }

    v24 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Asked to update display name to existing name. Bailing. Name: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (v26)
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = nameCopy;
      v41 = 2112;
      v42 = v18;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Creating stamp item for new name: %@ on chat: %@", buf, 0x16u);
    }
  }

  v28 = [objc_alloc(MEMORY[0x277D1A9F0]) initWithSender:0 time:0 guid:messageIDCopy type:2];
  [v28 setTitle:nameCopy];
  account = [(IMDServiceSession *)self account];
  service = [account service];
  internalName = [service internalName];
  [v28 setService:internalName];

  [v28 setDestinationCallerID:dCopy];
  if (v16)
  {
    [v28 setErrorCode:4];
  }

  account2 = [v18 account];
  if (account2)
  {
    [(IMDServiceSession *)self _storeTranscriptItem:v28 inChat:v18 account:account2];
  }

  else
  {
    account3 = [(IMDServiceSession *)self account];
    [(IMDServiceSession *)self _storeTranscriptItem:v28 inChat:v18 account:account3];
  }

LABEL_33:
}

- (BOOL)_canInsertDisplayNameUpdateItemForChat:(id)chat
{
  chatCopy = chat;
  if ([chatCopy style] == 45 || (objc_msgSend(chatCopy, "isBusinessChat") & 1) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [chatCopy isStewieChat] ^ 1;
  }

  return v4;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v12 = *&status;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  handleCopy = handle;
  v18 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v18 setStatus:v12];
  [(IMDChatMemberStatusChangeContext *)v18 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v18 setUnformattedNumber:numberCopy];
  [(IMDChatMemberStatusChangeContext *)v18 setCountryCode:codeCopy];

  [(IMDChatMemberStatusChangeContext *)v18 setChatIdentifier:chatCopy];
  [(IMDChatMemberStatusChangeContext *)v18 setStyle:styleCopy];
  v19 = [(IMDServiceSession *)self didChangeMemberStatus:v18];

  return v19;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style
{
  v13 = *&status;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v20 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v20 setStatus:v13];
  [(IMDChatMemberStatusChangeContext *)v20 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v20 setFromHandleID:fromHandleCopy];
  [(IMDChatMemberStatusChangeContext *)v20 setUnformattedNumber:numberCopy];

  [(IMDChatMemberStatusChangeContext *)v20 setCountryCode:codeCopy];
  [(IMDChatMemberStatusChangeContext *)v20 setChatIdentifier:chatCopy];

  [(IMDChatMemberStatusChangeContext *)v20 setStyle:style];
  v21 = [(IMDServiceSession *)self didChangeMemberStatus:v20];

  return v21;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0
{
  v15 = *&status;
  accountCopy = account;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v22 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v22 setStatus:v15];
  [(IMDChatMemberStatusChangeContext *)v22 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v22 setFromHandleID:fromHandleCopy];
  [(IMDChatMemberStatusChangeContext *)v22 setUnformattedNumber:numberCopy];

  [(IMDChatMemberStatusChangeContext *)v22 setCountryCode:codeCopy];
  [(IMDChatMemberStatusChangeContext *)v22 setChatIdentifier:chatCopy];

  [(IMDChatMemberStatusChangeContext *)v22 setStyle:style];
  [(IMDChatMemberStatusChangeContext *)v22 setAccount:accountCopy];

  v23 = [(IMDServiceSession *)self didChangeMemberStatus:v22];

  return v23;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1
{
  v16 = *&status;
  dCopy = d;
  accountCopy = account;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v24 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v24 setStatus:v16];
  [(IMDChatMemberStatusChangeContext *)v24 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v24 setFromHandleID:fromHandleCopy];
  [(IMDChatMemberStatusChangeContext *)v24 setUnformattedNumber:numberCopy];

  [(IMDChatMemberStatusChangeContext *)v24 setCountryCode:codeCopy];
  [(IMDChatMemberStatusChangeContext *)v24 setChatIdentifier:chatCopy];

  [(IMDChatMemberStatusChangeContext *)v24 setStyle:style];
  [(IMDChatMemberStatusChangeContext *)v24 setAccount:accountCopy];

  [(IMDChatMemberStatusChangeContext *)v24 setDestinationCallerID:dCopy];
  v25 = [(IMDServiceSession *)self didChangeMemberStatus:v24];

  return v25;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1 messageTime:(id)self2
{
  v17 = *&status;
  timeCopy = time;
  dCopy = d;
  accountCopy = account;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v25 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v25 setStatus:v17];
  [(IMDChatMemberStatusChangeContext *)v25 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v25 setFromHandleID:fromHandleCopy];
  [(IMDChatMemberStatusChangeContext *)v25 setUnformattedNumber:numberCopy];

  [(IMDChatMemberStatusChangeContext *)v25 setCountryCode:codeCopy];
  [(IMDChatMemberStatusChangeContext *)v25 setChatIdentifier:chatCopy];

  [(IMDChatMemberStatusChangeContext *)v25 setStyle:style];
  [(IMDChatMemberStatusChangeContext *)v25 setAccount:accountCopy];

  [(IMDChatMemberStatusChangeContext *)v25 setDestinationCallerID:dCopy];
  [(IMDChatMemberStatusChangeContext *)v25 setMessageTime:timeCopy];

  v26 = [(IMDServiceSession *)self didChangeMemberStatus:v25];

  return v26;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1 messageTime:(id)self2 silently:(BOOL)self3
{
  v18 = *&status;
  timeCopy = time;
  dCopy = d;
  accountCopy = account;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v26 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v26 setStatus:v18];
  [(IMDChatMemberStatusChangeContext *)v26 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v26 setFromHandleID:fromHandleCopy];
  [(IMDChatMemberStatusChangeContext *)v26 setUnformattedNumber:numberCopy];

  [(IMDChatMemberStatusChangeContext *)v26 setCountryCode:codeCopy];
  [(IMDChatMemberStatusChangeContext *)v26 setChatIdentifier:chatCopy];

  [(IMDChatMemberStatusChangeContext *)v26 setStyle:style];
  [(IMDChatMemberStatusChangeContext *)v26 setAccount:accountCopy];

  [(IMDChatMemberStatusChangeContext *)v26 setDestinationCallerID:dCopy];
  [(IMDChatMemberStatusChangeContext *)v26 setMessageTime:timeCopy];

  [(IMDChatMemberStatusChangeContext *)v26 setSilently:silently];
  v27 = [(IMDServiceSession *)self didChangeMemberStatus:v26];

  return v27;
}

- (id)didChangeMemberStatus:(int)status forHandle:(id)handle fromHandle:(id)fromHandle unformattedNumber:(id)number countryCode:(id)code forChat:(id)chat style:(unsigned __int8)style account:(id)self0 destinationCallerID:(id)self1 messageTime:(id)self2 messageID:(id)self3 silently:(BOOL)self4
{
  v19 = *&status;
  iDCopy = iD;
  timeCopy = time;
  dCopy = d;
  accountCopy = account;
  chatCopy = chat;
  codeCopy = code;
  numberCopy = number;
  fromHandleCopy = fromHandle;
  handleCopy = handle;
  v27 = objc_alloc_init(IMDChatMemberStatusChangeContext);
  [(IMDChatMemberStatusChangeContext *)v27 setStatus:v19];
  [(IMDChatMemberStatusChangeContext *)v27 setHandleID:handleCopy];

  [(IMDChatMemberStatusChangeContext *)v27 setFromHandleID:fromHandleCopy];
  [(IMDChatMemberStatusChangeContext *)v27 setUnformattedNumber:numberCopy];

  [(IMDChatMemberStatusChangeContext *)v27 setCountryCode:codeCopy];
  [(IMDChatMemberStatusChangeContext *)v27 setChatIdentifier:chatCopy];

  [(IMDChatMemberStatusChangeContext *)v27 setStyle:style];
  [(IMDChatMemberStatusChangeContext *)v27 setAccount:accountCopy];

  [(IMDChatMemberStatusChangeContext *)v27 setDestinationCallerID:dCopy];
  [(IMDChatMemberStatusChangeContext *)v27 setMessageTime:timeCopy];

  [(IMDChatMemberStatusChangeContext *)v27 setMessageID:iDCopy];
  [(IMDChatMemberStatusChangeContext *)v27 setSilently:silently];
  v28 = [(IMDServiceSession *)self didChangeMemberStatus:v27];

  return v28;
}

- (id)_chatForMemberStatusChange:(id)change
{
  changeCopy = change;
  chatIdentifier = [changeCopy chatIdentifier];
  style = [changeCopy style];
  v13 = chatIdentifier;
  [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v13 style:&style];
  v6 = v13;

  chatIdentifier2 = [changeCopy chatIdentifier];
  style2 = [changeCopy style];

  v9 = [(IMDServiceSession *)self _guidForChat:chatIdentifier2 style:style2];

  v10 = +[IMDChatRegistry sharedInstance];
  v11 = [v10 existingChatWithGUID:v9];

  return v11;
}

- (id)didChangeMemberStatus:(id)status
{
  v130 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  v5 = statusCopy;
  selfCopy = self;
  if (!self->_activated)
  {
    guid3 = 0;
    goto LABEL_45;
  }

  account = [statusCopy account];
  v7 = account;
  if (account)
  {
    account2 = account;
  }

  else
  {
    account2 = [(IMDServiceSession *)selfCopy account];
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      chatIdentifier = [v5 chatIdentifier];
      handleID = [v5 handleID];
      fromHandleID = [v5 fromHandleID];
      unformattedNumber = [v5 unformattedNumber];
      countryCode = [v5 countryCode];
      *buf = 138413826;
      v117 = chatIdentifier;
      v118 = 2112;
      v119 = handleID;
      v120 = 2112;
      v121 = fromHandleID;
      v122 = 2112;
      v123 = unformattedNumber;
      v124 = 2112;
      v125 = countryCode;
      v126 = 1024;
      status = [v5 status];
      v128 = 1024;
      style = [v5 style];
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat: %@  member: %@ from member: %@ unformated: %@ country: %@ status update: %d  style: %c", buf, 0x40u);
    }
  }

  v15 = [(IMDServiceSession *)selfCopy _chatForMemberStatusChange:v5];
  v16 = [IMDHandle alloc];
  handleID2 = [v5 handleID];
  unformattedNumber2 = [v5 unformattedNumber];
  countryCode2 = [v5 countryCode];
  v20 = [(IMDHandle *)v16 initWithID:handleID2 unformattedID:unformattedNumber2 countryCode:countryCode2];

  participantHandles = [v15 participantHandles];
  handleID3 = [v5 handleID];
  v100 = [participantHandles containsObject:handleID3];

  participants = [v15 participants];
  v99 = [participants __imArrayByApplyingBlock:&unk_283F1AC28];

  v23 = [v5 status] + 1;
  if (v23 > 6)
  {
    v100 = 0;
LABEL_36:
    HIDWORD(v98) = 1;
    goto LABEL_37;
  }

  if (v23 == 3)
  {
    v34 = +[IMDChatRegistry sharedInstance];
    chatIdentifier2 = [v15 chatIdentifier];
    v36 = [v34 allExistingChatsWithIdentifier:chatIdentifier2 style:{objc_msgSend(v15, "style")}];

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v37 = v36;
    v38 = [v37 countByEnumeratingWithState:&v109 objects:v115 count:16];
    if (v38)
    {
      v39 = *v110;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v110 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v109 + 1) + 8 * i);
          style2 = [v41 style];
          if (style2 == [v15 style])
          {
            [v41 addParticipant:v20];
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v109 objects:v115 count:16];
      }

      while (v38);
    }

    v100 ^= 1u;
    goto LABEL_36;
  }

  v24 = +[IMDChatRegistry sharedInstance];
  chatIdentifier3 = [v15 chatIdentifier];
  v26 = [v24 allExistingChatsWithIdentifier:chatIdentifier3 style:{objc_msgSend(v15, "style")}];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v105 objects:v114 count:16];
  if (!v28)
  {

    if ((v100 & 1) == 0)
    {
      goto LABEL_43;
    }

    HIDWORD(v98) = 0;
    goto LABEL_41;
  }

  v29 = 0;
  v30 = *v106;
  do
  {
    for (j = 0; j != v28; ++j)
    {
      if (*v106 != v30)
      {
        objc_enumerationMutation(v27);
      }

      v32 = *(*(&v105 + 1) + 8 * j);
      style3 = [v32 style];
      if (style3 == [v15 style])
      {
        v29 |= [v32 removeParticipant:v20];
      }
    }

    v28 = [v27 countByEnumeratingWithState:&v105 objects:v114 count:16];
  }

  while (v28);

  HIDWORD(v98) = 0;
  if ((v29 & 1) == 0)
  {
LABEL_40:
    if (!v100)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

LABEL_37:
  broadcasterForChatListeners = [(IMDServiceSession *)selfCopy broadcasterForChatListeners];
  accountID = [account2 accountID];
  chatIdentifier4 = [v15 chatIdentifier];
  style4 = [v15 style];
  chatProperties = [v15 chatProperties];
  personCentricID = [v15 personCentricID];
  handleInfo = [(IMDHandle *)v20 handleInfo];
  LODWORD(v98) = [v5 status];
  [broadcasterForChatListeners account:accountID chat:chatIdentifier4 style:style4 chatProperties:chatProperties chatPersonCentricID:personCentricID member:handleInfo statusChanged:v98];

  if ([v15 style] != 43)
  {
    goto LABEL_40;
  }

  participants2 = [v15 participants];
  v51 = [participants2 __imArrayByApplyingBlock:&unk_283F1AC48];

  v52 = +[IMDChatRegistry sharedInstance];
  v113[0] = v99;
  v113[1] = v51;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
  [v52 _remergeChatsWithParticipantIDsSets:v53];

  if ((v100 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_41:
  if ([v15 style] != 45 && (objc_msgSend(v5, "silently") & 1) == 0)
  {
    if ((v98 & 0x100000000) != 0)
    {
      v55 = 0;
    }

    else
    {
      fromHandleID2 = [v5 fromHandleID];
      handleID4 = [v5 handleID];
      v55 = [fromHandleID2 isEqualToIgnoringCase:handleID4];
    }

    messageID = [v5 messageID];
    v59 = messageID;
    if (messageID)
    {
      stringGUID = messageID;
    }

    else
    {
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    }

    v61 = stringGUID;

    v62 = +[IMDMessageStore sharedInstance];
    v101 = [v62 itemWithGUID:v61];

    if (v101)
    {
      stringGUID2 = [MEMORY[0x277CCACA8] stringGUID];

      v61 = stringGUID2;
    }

    if (v55)
    {
      v64 = objc_alloc(MEMORY[0x277D1A9E0]);
      fromHandleID3 = [v5 fromHandleID];
      v66 = [v64 initWithSender:fromHandleID3 time:0 guid:v61 type:3];

      chatIdentifier5 = [v15 chatIdentifier];
      -[IMDServiceSession _configureSessionInformationOnItem:toChat:withStyle:forAccount:](selfCopy, "_configureSessionInformationOnItem:toChat:withStyle:forAccount:", v66, chatIdentifier5, [v15 style], account2);

      unformattedNumber3 = [v5 unformattedNumber];
      [v66 setOtherUnformattedID:unformattedNumber3];

      countryCode3 = [v5 countryCode];
      [v66 setOtherCountryCode:countryCode3];

      [v66 setActionType:0];
      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          otherHandle = [v66 otherHandle];
          *buf = 138412290;
          v117 = otherHandle;
          _os_log_impl(&dword_22B4CC000, v70, OS_LOG_TYPE_INFO, "Storing participant leave: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v72 = objc_alloc(MEMORY[0x277D1AB28]);
      fromHandleID4 = [v5 fromHandleID];
      messageTime = [v5 messageTime];
      v75 = [v72 initWithSender:fromHandleID4 time:messageTime guid:v61 type:1];

      chatIdentifier6 = [v15 chatIdentifier];
      -[IMDServiceSession _configureSessionInformationOnItem:toChat:withStyle:forAccount:](selfCopy, "_configureSessionInformationOnItem:toChat:withStyle:forAccount:", v75, chatIdentifier6, [v15 style], account2);

      handleID5 = [v5 handleID];
      [v75 setOtherHandle:handleID5];

      unformattedNumber4 = [v5 unformattedNumber];
      [v75 setOtherUnformattedID:unformattedNumber4];

      countryCode4 = [v5 countryCode];
      [v75 setOtherCountryCode:countryCode4];

      [v75 setUnattributed:{objc_msgSend(v5, "unattributed")}];
      [v75 setChangeType:HIDWORD(v98) ^ 1u];
      if (IMOSLoggingEnabled())
      {
        v80 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
        {
          if (HIDWORD(v98))
          {
            v81 = @"invite";
          }

          else
          {
            v81 = @"remove";
          }

          sender = [v75 sender];
          otherHandle2 = [v75 otherHandle];
          *buf = 138412802;
          v117 = v81;
          v118 = 2112;
          v119 = sender;
          v120 = 2112;
          v121 = otherHandle2;
          _os_log_impl(&dword_22B4CC000, v80, OS_LOG_TYPE_INFO, "Storing %@ participant change item  %@ => %@", buf, 0x20u);
        }
      }

      v66 = v75;
      if ([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled] && objc_msgSend(v15, "isBlackholed") && objc_msgSend(v5, "status") == 2)
      {
        v84 = MEMORY[0x277D1AC58];
        handleID6 = [v5 handleID];
        LODWORD(v84) = [v84 isKnownContact:handleID6];

        v86 = IMOSLoggingEnabled();
        if (v84)
        {
          if (v86)
          {
            v87 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              handleID7 = [v5 handleID];
              guid = [v15 guid];
              *buf = 138412546;
              v117 = handleID7;
              v118 = 2112;
              v119 = guid;
              _os_log_impl(&dword_22B4CC000, v87, OS_LOG_TYPE_INFO, "Hawking: New participant (%@) added to chat (%@) is a known contact.", buf, 0x16u);
            }
          }

          [v15 updateIsBlackholed:0];
          participants3 = [v15 participants];
          v91 = [participants3 count] == 1;

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          v93 = mEMORY[0x277D1AAA8];
          if (v91)
          {
            [mEMORY[0x277D1AAA8] trackSpamEvent:24];
          }

          else
          {
            [mEMORY[0x277D1AAA8] trackSpamEvent:25];
          }
        }

        else if (v86)
        {
          v94 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            guid2 = [v15 guid];
            handleID8 = [v5 handleID];
            *buf = 138412546;
            v117 = guid2;
            v118 = 2112;
            v119 = handleID8;
            _os_log_impl(&dword_22B4CC000, v94, OS_LOG_TYPE_INFO, "Hawking: New participant (%@) added to chat (%@) is not a known contact.", buf, 0x16u);
          }
        }
      }
    }

    destinationCallerID = [v5 destinationCallerID];
    [v66 setDestinationCallerID:destinationCallerID];

    [(IMDServiceSession *)selfCopy _storeTranscriptItem:v66 inChat:v15 account:account2];
    guid3 = [v66 guid];

    goto LABEL_44;
  }

LABEL_43:
  guid3 = 0;
LABEL_44:

LABEL_45:

  return guid3;
}

- (void)_storeTranscriptItem:(id)item inChat:(id)chat account:(id)account
{
  v36 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  accountCopy = account;
  service = [(IMDServiceSession *)self service];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v31 = sub_22B694464;
  v32 = &unk_278707968;
  v33 = chatCopy;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v24 = sub_22B6944F8;
  v25 = &unk_278707990;
  v26 = itemCopy;
  selfCopy = self;
  v12 = v33;
  v28 = v12;
  v13 = accountCopy;
  v29 = v13;
  v14 = service;
  v15 = v26;
  v16 = v30;
  v17 = v23;
  v18 = v15;
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v18;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Storing item: %@", buf, 0xCu);
    }
  }

  v20 = +[IMDMessageStore sharedInstance];
  v21 = [v20 storeItem:v18 forceReplace:0];

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v35 = v21;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "  => Result item: %@", buf, 0xCu);
    }
  }

  v31(v16, v21);
  v24(v17, 1, v18, v21);
}

- (Class)spotlightItemRecorderClass
{
  if (qword_27D8D0028 != -1)
  {
    sub_22B7D8DC8();
  }

  v3 = qword_27D8D0020;

  return v3;
}

- (void)_removeChatGuidFromCoreDuet:(id)duet
{
  v13 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = duetCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Going to remove chat guid from core duet %@", buf, 0xCu);
    }
  }

  if ([duetCopy length])
  {
    spotlightItemRecorder = [(objc_class *)[(IMDServiceSession *)self spotlightItemRecorderClass] spotlightItemRecorder];
    v10 = duetCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B694A10;
    v8[3] = &unk_278704138;
    v9 = duetCopy;
    [spotlightItemRecorder deleteSearchableItemsWithDomainIdentifiers:v7 bundleID:@"com.apple.MobileSMS" withCompletion:v8];
  }
}

- (void)_markChatAsDowngraded:(id)downgraded
{
  downgradedCopy = downgraded;
  v5 = downgradedCopy;
  if (downgradedCopy)
  {
    properties = [downgradedCopy properties];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = MEMORY[0x277CCABB0];
    [date timeIntervalSince1970];
    v10 = [v9 numberWithDouble:?];
    [v7 setObject:v10 forKey:*MEMORY[0x277D19308]];
    v11 = *MEMORY[0x277D19300];
    v12 = [properties objectForKey:*MEMORY[0x277D19300]];
    v13 = v12;
    if (v12 && ([v12 isNull] & 1) == 0)
    {
      v14 = [v13 unsignedIntegerValue] + 1;
    }

    else
    {
      v14 = 1;
    }

    v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v14];
    [v7 setObject:v15 forKey:v11];

    v16 = +[IMDChatRegistry sharedInstance];
    chatIdentifier = [v5 chatIdentifier];
    v18 = [v16 updateProperties:v7 chat:chatIdentifier style:{objc_msgSend(v5, "style")}];

    if (v18)
    {
      broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
      guid = [v5 guid];
      properties2 = [v5 properties];
      [broadcasterForChatListeners chat:guid propertiesUpdated:properties2];
    }

LABEL_12:
    goto LABEL_13;
  }

  if (IMOSLoggingEnabled())
  {
    properties = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(properties, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&dword_22B4CC000, properties, OS_LOG_TYPE_INFO, "No chat to update downgrade properties for.", v22, 2u);
    }

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_handleRoutingWithDictionary:(id)dictionary
{
  v9 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = dictionaryCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling routing dictionary: %@", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B694EA8;
  v6[3] = &unk_278706958;
  v6[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v6];
}

- (id)_downgradableServiceNames
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceNamesSupportingCapability:*MEMORY[0x277D1A5D0]];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)_updateRoutingForMessageGUID:(id)d chatGUID:(id)iD error:(unsigned int)error account:(id)account
{
  dCopy = d;
  iDCopy = iD;
  if (self->_activated)
  {
    canMakeDowngradeRoutingChecks = [account canMakeDowngradeRoutingChecks];
    if (error == 22 || canMakeDowngradeRoutingChecks)
    {
      v13 = dCopy;
      v14 = iDCopy;
      im_dispatch_after();
    }
  }
}

- (void)_updateRoutingTimerWithInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  if (interval > 0.0 && self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        intervalCopy = interval;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Scheduling a routing check with interval: %f", &v10, 0xCu);
      }
    }

    messageRoutingTimer = self->_messageRoutingTimer;
    if (messageRoutingTimer)
    {
      [(IMTimer *)messageRoutingTimer invalidate];
      v7 = self->_messageRoutingTimer;
      self->_messageRoutingTimer = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-routing-timer" name:1 shouldWake:self target:sel__routingTimerFired selector:0 userInfo:interval];
    v9 = self->_messageRoutingTimer;
    self->_messageRoutingTimer = v8;
  }
}

- (void)_routingTimerFired
{
  [(IMTimer *)self->_messageRoutingTimer invalidate];
  messageRoutingTimer = self->_messageRoutingTimer;
  self->_messageRoutingTimer = 0;

  if (self->_activated)
  {
    mEMORY[0x277D18E40] = [MEMORY[0x277D18E40] sharedInstance];
    _downgradableServiceNames = [(IMDServiceSession *)self _downgradableServiceNames];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_22B696310;
    v6[3] = &unk_2787079E0;
    v6[4] = self;
    [mEMORY[0x277D18E40] requestRoutingWithDowngradableServices:_downgradableServiceNames completion:v6];
  }
}

- (void)_handleExpireStateDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = dictionaryCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling expire state dictionary: %@", buf, 0xCu);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_22B69662C;
  v16 = &unk_278707A58;
  selfCopy = self;
  v7 = v6;
  v18 = v7;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v7 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "   delete expired messages: %@", buf, 0xCu);
      }
    }

    _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
    v10 = [_sharedMessageStore deleteMessageGUIDs:v7];

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v10;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "   deleted expired messages: %@", buf, 0xCu);
      }
    }

    if ([v10 count])
    {
      broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
      [broadcasterForChatListeners historicalMessageGUIDsDeleted:v10 chatGUIDs:0 queryID:0];
    }
  }
}

- (void)_updateExpireStateForMessageGUID:(id)d
{
  dCopy = d;
  if (self->_activated && [(IMDServiceSession *)self canMakeExpireStateChecks])
  {
    v5 = dCopy;
    im_dispatch_after();
  }
}

- (void)_updateExpireStateTimerWithInterval:(double)interval
{
  v26 = *MEMORY[0x277D85DE8];
  if (interval > 0.0 && self->_activated)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    messageExpireStateTimer = self->_messageExpireStateTimer;
    if (messageExpireStateTimer && (v7 = v5, -[IMTimer fireDate](messageExpireStateTimer, "fireDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 + interval, [v8 timeIntervalSinceReferenceDate], v11 = v10, v8, v9 > v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          fireDate = [(IMTimer *)self->_messageExpireStateTimer fireDate];
          [fireDate timeIntervalSinceReferenceDate];
          v15 = v14;
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v22 = 134218240;
          intervalCopy2 = interval;
          v24 = 2048;
          v25 = v15 - v16;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Don't schedule expire state check with interval: %f, one is already scheduled with interval: %f", &v22, 0x16u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = 134217984;
          intervalCopy2 = interval;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Scheduling an expire state check with interval: %f", &v22, 0xCu);
        }
      }

      v18 = self->_messageExpireStateTimer;
      if (v18)
      {
        [(IMTimer *)v18 invalidate];
        v19 = self->_messageExpireStateTimer;
        self->_messageExpireStateTimer = 0;
      }

      v20 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-expire-state-timer" name:1 shouldWake:self target:sel__expireStateTimerFired selector:0 userInfo:interval];
      v21 = self->_messageExpireStateTimer;
      self->_messageExpireStateTimer = v20;
    }
  }
}

- (void)_expireStateTimerFired
{
  [(IMTimer *)self->_messageExpireStateTimer invalidate];
  messageExpireStateTimer = self->_messageExpireStateTimer;
  self->_messageExpireStateTimer = 0;

  if (self->_activated)
  {
    mEMORY[0x277D18E40] = [MEMORY[0x277D18E40] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B697118;
    v5[3] = &unk_2787079E0;
    v5[4] = self;
    [mEMORY[0x277D18E40] requestExpireStateWithCompletion:v5];
  }
}

- (void)_handleWatchdogWithDictionary:(id)dictionary
{
  v9 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = dictionaryCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Handling watchdog dictionary: %@", buf, 0xCu);
    }
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B6972BC;
  v6[3] = &unk_278707A80;
  v6[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v6];
}

- (void)_updateWatchdogForMessageGUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self->_activated)
  {
    v6 = dCopy;
    im_dispatch_after();
  }
}

- (void)_updateWatchdogTimerWithInterval:(double)interval
{
  v26 = *MEMORY[0x277D85DE8];
  if (interval > 0.0 && self->_activated)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    messageWatchdogTimer = self->_messageWatchdogTimer;
    if (messageWatchdogTimer && (v7 = v5, -[IMTimer fireDate](messageWatchdogTimer, "fireDate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = v7 + interval, [v8 timeIntervalSinceReferenceDate], v11 = v10, v8, v9 > v11))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          fireDate = [(IMTimer *)self->_messageWatchdogTimer fireDate];
          [fireDate timeIntervalSinceReferenceDate];
          v15 = v14;
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v22 = 134218240;
          intervalCopy2 = interval;
          v24 = 2048;
          v25 = v15 - v16;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Don't schedule watchdog check with interval: %f, one is already scheduled with interval: %f", &v22, 0x16u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = 134217984;
          intervalCopy2 = interval;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Scheduling a watchdog check with interval: %f", &v22, 0xCu);
        }
      }

      v18 = self->_messageWatchdogTimer;
      if (v18)
      {
        [(IMTimer *)v18 invalidate];
        v19 = self->_messageWatchdogTimer;
        self->_messageWatchdogTimer = 0;
      }

      v20 = [objc_alloc(MEMORY[0x277D192B8]) initWithTimeInterval:@"message-watchdog-timer" name:1 shouldWake:self target:sel__watchdogTimerFired selector:0 userInfo:interval];
      v21 = self->_messageWatchdogTimer;
      self->_messageWatchdogTimer = v20;
    }
  }
}

- (void)_watchdogTimerFired
{
  [(IMTimer *)self->_messageWatchdogTimer invalidate];
  messageWatchdogTimer = self->_messageWatchdogTimer;
  self->_messageWatchdogTimer = 0;

  if (self->_activated)
  {
    mEMORY[0x277D18E40] = [MEMORY[0x277D18E40] sharedInstance];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B697864;
    v5[3] = &unk_2787079E0;
    v5[4] = self;
    [mEMORY[0x277D18E40] requestWatchdogWithCompletion:v5];
  }
}

- (id)_autoReplier
{
  messageAutoReplier = self->_messageAutoReplier;
  if (!messageAutoReplier)
  {
    v4 = objc_alloc_init(IMDAvailabilityAutoReplier);
    v5 = self->_messageAutoReplier;
    self->_messageAutoReplier = v4;

    [(IMDAutoReplying *)self->_messageAutoReplier setReplyDelegate:self];
    messageAutoReplier = self->_messageAutoReplier;
  }

  return messageAutoReplier;
}

- (void)autoReplier:(id)replier generatedAutoReplyText:(id)text forChat:(id)chat
{
  textCopy = text;
  chatCopy = chat;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6979FC;
  block[3] = &unk_2787038F8;
  v12 = textCopy;
  selfCopy = self;
  v14 = chatCopy;
  v9 = chatCopy;
  v10 = textCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)autoReplier:(id)replier receivedUrgentRequestForMessages:(id)messages
{
  messagesCopy = messages;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B697B5C;
  v7[3] = &unk_278702FA0;
  v8 = messagesCopy;
  selfCopy = self;
  v6 = messagesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)autoReplier:(id)replier sendDeliveredQuietlyReceiptForMessages:(id)messages forIncomingMessageFromIDSID:(id)d inChat:(id)chat withWillSendToDestinationsHandler:(id)handler
{
  messagesCopy = messages;
  dCopy = d;
  chatCopy = chat;
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B697DAC;
  block[3] = &unk_278702F78;
  v20 = chatCopy;
  v21 = messagesCopy;
  selfCopy = self;
  v23 = dCopy;
  v24 = handlerCopy;
  v15 = handlerCopy;
  v16 = dCopy;
  v17 = messagesCopy;
  v18 = chatCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)autoReplier:(id)replier sendNotifyRecipientCommandForMessages:(id)messages inChat:(id)chat
{
  messagesCopy = messages;
  chatCopy = chat;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B698070;
  block[3] = &unk_2787038F8;
  v12 = chatCopy;
  v13 = messagesCopy;
  selfCopy = self;
  v9 = messagesCopy;
  v10 = chatCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)otcUtilities
{
  otcUtilities = self->_otcUtilities;
  if (!otcUtilities)
  {
    v4 = objc_alloc_init(MEMORY[0x277D1AB18]);
    v5 = self->_otcUtilities;
    self->_otcUtilities = v4;

    otcUtilities = self->_otcUtilities;
  }

  return otcUtilities;
}

- (void)_checkMessageForENURL:(id)l
{
  lCopy = l;
  v5 = +[IMDExposureNotificationManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B698384;
  v7[3] = &unk_278707AA8;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  [v5 processMessageItemForENURL:v6 withCompletionHandler:v7];
}

- (void)didSendBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account completionBlock:(id)block
{
  payloadCopy = payload;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  blockCopy = block;
  if (payloadCopy)
  {
    if (d)
    {
      dCopy = d;
      _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
      v20 = [_sharedMessageStore messageWithGUID:dCopy];

      if (v20)
      {
        v33 = chatCopy;
        [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v33 style:&styleCopy];
        v21 = v33;

        v22 = [(IMDServiceSession *)self chatForChatIdentifier:v21 style:styleCopy updatingAccount:1];
        v23 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v23 setForceReplace:1];
        [(IMDMessageStorageContext *)v23 setModifyError:1];
        [(IMDMessageStorageContext *)v23 setModifyFlags:1];
        [(IMDMessageStorageContext *)v23 setCalculateUnreadCount:1];
        [(IMDMessageStorageContext *)v23 setReindexMessage:1];
        [(IMDMessageStorageContext *)v23 setReindexReason:1014];
        [(IMDMessageStorageContext *)v23 setFlagMask:32780];
        [(IMDMessageStorageContext *)v23 setChat:v22];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = sub_22B698918;
        v25[3] = &unk_278707AD0;
        v26 = v22;
        v27 = payloadCopy;
        selfCopy = self;
        v29 = accountCopy;
        chatCopy = v21;
        v30 = chatCopy;
        v32 = styleCopy;
        v31 = blockCopy;
        v24 = v22;
        [(IMDServiceSession *)self storeMessage:v27 context:v23 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v25];
      }
    }
  }
}

- (void)didReceiveBalloonPayload:(id)payload forChat:(id)chat style:(unsigned __int8)style messageGUID:(id)d account:(id)account
{
  payloadCopy = payload;
  chatCopy = chat;
  styleCopy = style;
  accountCopy = account;
  if (payloadCopy)
  {
    if (d)
    {
      dCopy = d;
      _sharedMessageStore = [(IMDServiceSession *)self _sharedMessageStore];
      v17 = [_sharedMessageStore messageWithGUID:dCopy];

      if (v17)
      {
        v29 = chatCopy;
        [(IMDServiceSession *)self _mapRoomChatToGroupChat:&v29 style:&styleCopy];
        v18 = v29;

        v19 = [(IMDServiceSession *)self chatForChatIdentifier:v18 style:styleCopy updatingAccount:1];
        v20 = objc_alloc_init(IMDMessageStorageContext);
        [(IMDMessageStorageContext *)v20 setForceReplace:1];
        [(IMDMessageStorageContext *)v20 setModifyError:1];
        [(IMDMessageStorageContext *)v20 setModifyFlags:1];
        [(IMDMessageStorageContext *)v20 setCalculateUnreadCount:1];
        [(IMDMessageStorageContext *)v20 setFlagMask:32780];
        [(IMDMessageStorageContext *)v20 setReindexMessage:1];
        [(IMDMessageStorageContext *)v20 setReindexReason:1014];
        [(IMDMessageStorageContext *)v20 setChat:v19];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_22B698C54;
        v22[3] = &unk_278707940;
        v23 = v19;
        v24 = payloadCopy;
        selfCopy = self;
        v26 = accountCopy;
        chatCopy = v18;
        v27 = chatCopy;
        v28 = styleCopy;
        v21 = v19;
        [(IMDServiceSession *)self storeMessage:v24 context:v20 didReplaceBlock:0 shouldStoreBlock:0 didStoreBlock:0 block:v22];
      }
    }
  }
}

- (void)noteItemFromStorage:(id)storage
{
  storageCopy = storage;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteItemFromStorage:storageCopy];
}

- (void)noteSuppressedMessageUpdate:(id)update
{
  updateCopy = update;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteSuppressedMessageUpdate:updateCopy];
}

- (void)noteLastItemFromStorage:(id)storage
{
  storageCopy = storage;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteLastItemFromStorage:storageCopy];
}

- (void)noteLastItemProcessed
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteLastItemProcessed];
}

- (void)noteItemProcessed:(BOOL)processed batchContext:(id)context usingService:(id)service
{
  processedCopy = processed;
  serviceCopy = service;
  contextCopy = context;
  storageController = [(IMDServiceSession *)self storageController];
  [storageController noteItemProcessed:processedCopy batchContext:contextCopy usingService:serviceCopy];
}

- (BOOL)isAwaitingStorageTimer
{
  storageController = [(IMDServiceSession *)self storageController];
  isAwaitingStorageTimer = [storageController isAwaitingStorageTimer];

  return isAwaitingStorageTimer;
}

- (void)incrementPendingReadReceiptFromStorageCount
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController incrementPendingReadReceiptFromStorageCount];
}

- (void)decrementPendingReadReceiptFromStorageCount
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController decrementPendingReadReceiptFromStorageCount];
}

- (unint64_t)pendingReadReceiptFromStorageCount
{
  storageController = [(IMDServiceSession *)self storageController];
  pendingReadReceiptFromStorageCount = [storageController pendingReadReceiptFromStorageCount];

  return pendingReadReceiptFromStorageCount;
}

- (void)setPendingReadReceiptFromStorageCount:(unint64_t)count
{
  storageController = [(IMDServiceSession *)self storageController];
  [storageController setPendingReadReceiptFromStorageCount:count];
}

- (BOOL)_isMessageSWYSpamMessage:(id)message inChat:(id)chat
{
  v23 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  service = [messageCopy service];
  v9 = [service isEqualToString:*MEMORY[0x277D1A610]];

  if (v9 && [messageCopy containsRichLink] && (objc_msgSend(messageCopy, "body"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "string"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "im_matchesSOSMapURL"), v11, v10, (v12 & 1) == 0))
  {
    v15 = [(IMDServiceSession *)self _predominantServiceForChat:chatCopy usingMessageThreshold:50];
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = 138412802;
        v18 = messageCopy;
        v19 = 2112;
        v20 = chatCopy;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Predominant service check for incoming message:%@ in chat:%@ was determined to be %@", &v17, 0x20u);
      }
    }

    v13 = [v15 isEqualToString:*MEMORY[0x277D1A620]];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_shouldShowSWYQuickActionForMessage:(id)message outAppName:(id *)name outBundleID:(id *)d
{
  v39 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v31 = messageCopy;
  if ([messageCopy containsRichLink])
  {
    dCopy = d;
    nameCopy = name;
    [messageCopy richLinkURLs];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    obj = v35 = 0u;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
          v16 = [mEMORY[0x277D1AC40] lsAppRecordForURL:v14 checkInstalledAppsOnly:1];

          if (!v16 || ([v16 localizedName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "length") == 0, v17, v18))
          {
            localizedName = [v16 localizedName];
            v24 = [localizedName length] == 0;

            if (v24 && IMOSLoggingEnabled())
            {
              v25 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Not showing quick action since we did not get an AppName", buf, 2u);
              }
            }
          }

          else
          {
            mEMORY[0x277D1AC40]2 = [MEMORY[0x277D1AC40] sharedManager];
            bundleIdentifier = [v16 bundleIdentifier];
            v10 = [mEMORY[0x277D1AC40]2 showPinningStatusTextForBundleID:bundleIdentifier];

            localizedName2 = [v16 localizedName];

            bundleIdentifier2 = [v16 bundleIdentifier];

            v8 = bundleIdentifier2;
            v9 = localizedName2;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v11);
    }

    if (nameCopy && v9)
    {
      v26 = v9;
      *nameCopy = v9;
    }

    if (dCopy && v8)
    {
      v27 = v8;
      *dCopy = v8;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v10 & 1;
}

- (id)_predominantServiceForChat:(id)chat usingMessageThreshold:(unint64_t)threshold
{
  v21 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v7 = IMOSLoggingEnabled();
  if (chatCopy && threshold)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        guid = [chatCopy guid];
        v19 = 138412290;
        v20 = guid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Identifying the predominant service for chat: %@", &v19, 0xCu);
      }
    }

    v10 = MEMORY[0x277D1A610];
    v11 = [(IMDServiceSession *)self _fetchMessagesFromChat:chatCopy onService:*MEMORY[0x277D1A610] numberOfMessages:50];
    v12 = MEMORY[0x277D1A620];
    v13 = [(IMDServiceSession *)self _fetchMessagesFromChat:chatCopy onService:*MEMORY[0x277D1A620] numberOfMessages:50];
    v14 = [v11 count];
    if (v14 <= [v13 count])
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }

    v16 = *v15;
  }

  else
  {
    if (v7)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Invalid chat or incorrect number of messages", &v19, 2u);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (id)_fetchMessagesFromChat:(id)chat onService:(id)service numberOfMessages:(unint64_t)messages
{
  v47 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  serviceCopy = service;
  v9 = serviceCopy;
  v34 = chatCopy;
  if (chatCopy && messages && [serviceCopy length])
  {
    v33 = v9;
    if ([chatCopy style] == 45)
    {
      participants = [chatCopy participants];
      if ([participants count] == 1)
      {
        participants2 = [chatCopy participants];
        firstObject = [participants2 firstObject];

        if (firstObject)
        {
          v13 = +[IMDChatStore sharedInstance];
          groupID = [firstObject ID];
          v15 = [v13 chatsWithHandle:groupID onService:v33];
LABEL_16:
          v19 = v15;

LABEL_18:
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          obj = v19;
          v17 = 0;
          v20 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v20)
          {
            v21 = *v37;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v37 != v21)
                {
                  objc_enumerationMutation(obj);
                }

                v23 = *(*(&v36 + 1) + 8 * i);
                v24 = objc_alloc(MEMORY[0x277D18ED8]);
                guid = [v23 guid];
                v26 = [v24 initWithAssociatedChatGUID:guid];

                [v26 setBatchSize:messages];
                nextBatch = [v26 nextBatch];
                if (!nextBatch && IMOSLoggingEnabled())
                {
                  v28 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                  {
                    guid2 = [v23 guid];
                    *buf = 134218242;
                    messagesCopy = messages;
                    v43 = 2112;
                    v44 = guid2;
                    _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to fetch %lu number of messages from chat %@", buf, 0x16u);
                  }
                }

                if (!v17)
                {
                  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(nextBatch, "count")}];
                }

                [v17 addObjectsFromArray:{nextBatch, v33}];
              }

              v20 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
            }

            while (v20);
          }

          goto LABEL_44;
        }
      }

      else
      {
      }

      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          messagesCopy = v34;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Incorrect chat %@, has more than the number of participants we expected!", buf, 0xCu);
        }
      }
    }

    else
    {
      if ([chatCopy style] != 43)
      {
        v19 = 0;
        goto LABEL_18;
      }

      participants3 = [chatCopy participants];
      firstObject = [participants3 __imArrayByApplyingBlock:&unk_283F1AC88];

      if ([firstObject count] > 1)
      {
        v13 = +[IMDChatStore sharedInstance];
        groupID = [chatCopy groupID];
        v15 = [v13 chatsWithHandles:firstObject onService:v33 displayName:0 groupID:groupID style:43];
        goto LABEL_16;
      }

      if (IMOSLoggingEnabled())
      {
        v31 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          messagesCopy = chatCopy;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Chat %@, has the wrong number of participants than what was expected!", buf, 0xCu);
        }
      }
    }

    v17 = 0;
LABEL_44:
    v9 = v33;
    goto LABEL_45;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      messagesCopy = chatCopy;
      v43 = 2112;
      v44 = v9;
      v45 = 2048;
      messagesCopy2 = messages;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Invalid parameter. chatGUID: %@ service: %@ number of messages:%lu", buf, 0x20u);
    }
  }

  v17 = 0;
LABEL_45:

  return v17;
}

- (void)_configureSyndicationRangesForMessage:(id)message forChat:(id)chat withSyndicationStatus:(int64_t)status
{
  v41 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  autoDonationBehavior = [chatCopy autoDonationBehavior];
  v7 = IMOSLoggingEnabled();
  if (autoDonationBehavior == 2)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Chat opted out of Auto donation. Not configuring syndication ranges", buf, 2u);
      }
    }
  }

  else
  {
    if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        guid2 = [chatCopy guid];
        *buf = 138412546;
        v38 = guid;
        v39 = 2112;
        v40 = guid2;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Configuring syndication ranges for incoming message:%@ in chat:%@", buf, 0x16u);
      }
    }

    v12 = objc_alloc(MEMORY[0x277D1AA58]);
    body = [messageCopy body];
    guid3 = [messageCopy guid];
    v27 = [v12 initWithMessageBody:body messageGUID:guid3];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v27 messageParts];
    v15 = 0;
    v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = *v33;
      do
      {
        v18 = 0;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v32 + 1) + 8 * v18);
          v20 = objc_alloc(MEMORY[0x277D1AA98]);
          messagePartRange = [v19 messagePartRange];
          v23 = v22;
          __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
          v25 = [v20 initWithSyndicationType:0 messagePartRange:messagePartRange syndicationStartDate:v23 syndicationStatus:__im_dateWithCurrentServerTime assetDescriptor:{status, 0}];

          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v15 addObject:v25];

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    v26 = [v15 copy];
    [messageCopy setSyndicationRanges:v26];
  }
}

- (void)updateBalloonPayload:(id)payload attachments:(id)attachments bundleID:(id)d forMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  dCopy = d;
  messageCopy = message;
  if ([payloadCopy length])
  {
    v14 = +[IMDMessageStore sharedInstance];
    v15 = [v14 chatForMessage:messageCopy];

    if (v15)
    {
      if (dCopy)
      {
        [messageCopy setBalloonBundleID:dCopy];
      }

      [messageCopy setPayloadData:payloadCopy];
      if ([attachmentsCopy count])
      {
        v16 = +[IMDFileTransferCenter sharedInstance];
        guid = [messageCopy guid];
        v18 = [v16 guidsForStoredAttachmentPayloadData:attachmentsCopy messageGUID:guid];
        [messageCopy setFileTransferGUIDs:v18];
      }

      chatIdentifier = [v15 chatIdentifier];
      style = [v15 style];
      guid2 = [messageCopy guid];
      accountID = [v15 accountID];
      [(IMDServiceSession *)self didReceiveBalloonPayload:messageCopy forChat:chatIdentifier style:style messageGUID:guid2 account:accountID];
    }

    else if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Chat: Could not find a chat for message: %@", &v25, 0xCu);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      guid3 = [messageCopy guid];
      v25 = 138412290;
      v26 = guid3;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Chat: Could not update balloon payload for missing payload: %@", &v25, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)deleteExistingMessageAwaitingReplacementWithFallbackHash:(id)hash chatIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  identifierCopy = identifier;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingiMessageChatForID:identifierCopy];

  v9 = +[IMDMessageStore sharedInstance];
  v10 = [v9 sortedMessageItemsWithFallbackHash:hashCopy inChat:v8 limit:1];
  firstObject = [v10 firstObject];

  if (firstObject)
  {
    guid = [firstObject guid];
    expectedServiceForCrossServiceReplacement = [firstObject expectedServiceForCrossServiceReplacement];
    v14 = [expectedServiceForCrossServiceReplacement isEqualToString:*MEMORY[0x277D1A628]];

    if (v14)
    {
      v15 = +[IMDMessageStore sharedInstance];
      v24 = guid;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
      v17 = [v15 deleteMessageGUIDs:v16 inChat:v8];

      if ([v17 count])
      {
        v18 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatListeners = [v18 broadcasterForChatListeners];
        [broadcasterForChatListeners historicalMessageGUIDsDeleted:v17 chatGUIDs:0 queryID:0];

        v20 = +[IMDChatRegistry sharedInstance];
        [v20 updateNotificationUnreadCountForChat:v8];
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = guid;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Failed to delete message with GUID %@", buf, 0xCu);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = guid;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Message with GUID %@ not awaiting cross service replacement for iMessageLite", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = hashCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Failed to find message with fallback hash %@ to delete", buf, 0xCu);
    }
  }
}

- (BOOL)_shouldConvergeChatParticipants:(id)participants withHandleInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  infoCopy = info;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v8 = IMGetDomainBoolForKeyWithDefaultValue();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (![infoCopy count])
  {
LABEL_16:
    LOBYTE(v13) = 0;
    goto LABEL_21;
  }

  v9 = [infoCopy __imArrayByApplyingBlock:&unk_283F1ACA8];
  participantHandles = [participantsCopy participantHandles];
  v11 = [v9 count];
  if (v11 == [participantHandles count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = participantHandles;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if (![v9 containsObject:{*(*(&v17 + 1) + 8 * i), v17}])
          {
            LOBYTE(v13) = 1;
            goto LABEL_19;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    LOBYTE(v13) = 1;
  }

LABEL_21:
  return v13;
}

- (void)_calculateHandleInfoOverrideIfPermittedForChatIdentifier:(id)identifier style:(unsigned __int8)style completion:(id)completion
{
  styleCopy = style;
  v52 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (styleCopy == 43 && isInternalInstall)
  {
    v34 = IMGetCachedDomainValueForKey();
    IMSetDomainValueForKey();
    objc_opt_class();
    v9 = v34;
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      obj = v34;
      v11 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v11)
      {
        v12 = *v44;
        v13 = *MEMORY[0x277D193A8];
        v14 = *MEMORY[0x277D193C0];
        v15 = *MEMORY[0x277D192F8];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v44 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v43 + 1) + 8 * i);
            v49[0] = v13;
            v49[1] = v14;
            v50[0] = v17;
            v50[1] = v17;
            v49[2] = v15;
            v50[2] = &unk_283F4ECA8;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
            [v10 addObject:v18];
          }

          v11 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v11);
      }

      mEMORY[0x277D192D8] = [MEMORY[0x277D192D8] sharedInstance];
      v20 = MEMORY[0x277D192D0];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v23 = MEMORY[0x277CCACA8];
      v24 = [obj componentsJoinedByString:{@", "}];
      v25 = [v23 stringWithFormat:@"I am overriding chat participants for %@ to %@. This was triggered by a regression test.", identifierCopy, v24];
      v26 = [v20 userNotificationWithIdentifier:uUIDString title:@"I am doing something sneaky." message:v25 defaultButton:@"I did it!" alternateButton:@"I did not do that." otherButton:0];

      *v39 = 0;
      v40 = v39;
      v41 = 0x2020000000;
      v42 = 0;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = sub_22B69ADD4;
      v38[3] = &unk_278707B18;
      v38[4] = v39;
      [mEMORY[0x277D192D8] addUserNotification:v26 listener:0 completionHandler:v38];
      while ((v40[24] & 1) == 0)
      {
        mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
        v28 = [MEMORY[0x277CBEAA8] now];
        v29 = [v28 dateByAddingTimeInterval:0.5];
        [mainRunLoop runUntilDate:v29];
      }

      if ([v26 response])
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, " => rejected participant override", buf, 2u);
          }
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = [obj componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v48 = v33;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, " => !!! Overriding participants to %@ !!!", buf, 0xCu);
          }
        }

        completionCopy[2](completionCopy, v10);
      }

      _Block_object_dispose(v39, 8);
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_29:

        goto LABEL_30;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *v39 = 0;
        _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, " => invalid chat override defaults set, ignoring", v39, 2u);
      }
    }

    v9 = v34;
    goto LABEL_29;
  }

LABEL_30:
}

- (NSArray)allBuddies
{
  [(NSRecursiveLock *)self->_lock lock];
  allKeys = [(NSMutableDictionary *)self->_buddies allKeys];
  v4 = [allKeys copy];

  [(NSRecursiveLock *)self->_lock unlock];

  return v4;
}

- (void)markBuddiesAsChanged:(id)changed
{
  lock = self->_lock;
  changedCopy = changed;
  [(NSRecursiveLock *)lock lock];
  [(IMDServiceSession *)self beginBuddyChanges];
  [(NSMutableSet *)self->_changedBuddies addObjectsFromArray:changedCopy];

  [(IMDServiceSession *)self endBuddyChanges];
  v6 = self->_lock;

  [(NSRecursiveLock *)v6 unlock];
}

- (void)beginBuddyChanges
{
  [(NSRecursiveLock *)self->_lock lock];
  buddyChangeLevel = self->_buddyChangeLevel;
  self->_buddyChangeLevel = buddyChangeLevel + 1;
  if (!buddyChangeLevel)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    changedBuddies = self->_changedBuddies;
    self->_changedBuddies = v4;
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)changeProperty:(id)property ofBuddy:(id)buddy to:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  buddyCopy = buddy;
  toCopy = to;
  v11 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];
  if ([buddyCopy length])
  {
    if ([propertyCopy length])
    {
      v12 = *MEMORY[0x277D193A8];
      if ([propertyCopy isEqualToString:*MEMORY[0x277D193A8]])
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v17 = 138412290;
            v18 = buddyCopy;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change IDProperty for buddy ID: %@   bailing", &v17, 0xCu);
          }

LABEL_15:
        }
      }

      else
      {
        [(NSRecursiveLock *)self->_lock lock];
        v14 = [(NSMutableDictionary *)self->_buddies objectForKey:v11];
        dictionary = v14;
        if (v14)
        {
          v16 = [v14 objectForKey:propertyCopy];
        }

        else
        {
          if (!toCopy)
          {
            [(NSRecursiveLock *)self->_lock unlock];
            goto LABEL_28;
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:buddyCopy forKey:v12];
          [(NSMutableDictionary *)self->_buddies setObject:dictionary forKey:v11];
          v16 = 0;
        }

        if (v16 != toCopy && ([toCopy isEqual:v16] & 1) == 0)
        {
          if (toCopy)
          {
            [dictionary setObject:toCopy forKey:propertyCopy];
          }

          else
          {
            [dictionary removeObjectForKey:propertyCopy];
          }

          [(IMDServiceSession *)self beginBuddyChanges];
          [(NSMutableSet *)self->_changedBuddies addObject:v11];
          [(IMDServiceSession *)self endBuddyChanges];
        }

        [(NSRecursiveLock *)self->_lock unlock];
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = buddyCopy;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change empty property for buddy ID: %@", &v17, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = propertyCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Tried to change property %@ with nil buddy ID", &v17, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_28:
}

- (void)clearPropertiesOfBuddy:(id)buddy
{
  v23 = *MEMORY[0x277D85DE8];
  buddyCopy = buddy;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];
  v6 = [(NSMutableDictionary *)self->_buddies objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    allKeys = [v6 allKeys];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v16 = 8;
      v17 = buddyCopy;
      v11 = 0;
      v12 = *v19;
      v13 = *MEMORY[0x277D193A8];
      do
      {
        v14 = 0;
        v15 = v11;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v18 + 1) + 8 * v14);

          if (v11 != v13)
          {
            [v7 removeObjectForKey:v11];
          }

          ++v14;
          v15 = v11;
        }

        while (v10 != v14);
        v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);

      buddyCopy = v17;
    }

    [(IMDServiceSession *)self beginBuddyChanges:v16];
    [(NSMutableSet *)self->_changedBuddies addObject:v5];
    [(IMDServiceSession *)self endBuddyChanges];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)endBuddyChanges
{
  v22 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  buddyChangeLevel = self->_buddyChangeLevel;
  if (buddyChangeLevel <= 0)
  {
    sub_22B7D9794(a2, self, &self->_buddyChangeLevel, &v20);
    buddyChangeLevel = v20;
  }

  v5 = buddyChangeLevel - 1;
  self->_buddyChangeLevel = v5;
  if (!v5)
  {
    if ([(NSMutableSet *)self->_changedBuddies count])
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      allObjects = [(NSMutableSet *)self->_changedBuddies allObjects];
      v8 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
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
              objc_enumerationMutation(allObjects);
            }

            v12 = [(NSMutableDictionary *)self->_buddies objectForKey:*(*(&v16 + 1) + 8 * i)];
            if (v12)
            {
              [v6 addObject:v12];
            }
          }

          v9 = [allObjects countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v9);
      }

      broadcaster = [(IMDServiceSession *)self broadcaster];
      accountID = [(IMDServiceSession *)self accountID];
      [broadcaster account:accountID buddyPropertiesChanged:v6];
    }

    changedBuddies = self->_changedBuddies;
    self->_changedBuddies = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)property:(id)property ofBuddy:(id)buddy
{
  lock = self->_lock;
  buddyCopy = buddy;
  propertyCopy = property;
  [(NSRecursiveLock *)lock lock];
  buddies = self->_buddies;
  v10 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];

  v11 = [(NSMutableDictionary *)buddies objectForKey:v10];
  v12 = [v11 objectForKey:propertyCopy];

  [(NSRecursiveLock *)self->_lock unlock];

  return v12;
}

- (id)localProperty:(id)property ofBuddy:(id)buddy
{
  lock = self->_lock;
  buddyCopy = buddy;
  propertyCopy = property;
  [(NSRecursiveLock *)lock lock];
  localProperties = self->_localProperties;
  v10 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];

  v11 = [(NSMutableDictionary *)localProperties objectForKey:v10];
  v12 = [v11 objectForKey:propertyCopy];

  [(NSRecursiveLock *)self->_lock unlock];

  return v12;
}

- (void)clearLocalProperties
{
  [(NSRecursiveLock *)self->_lock lock];
  localProperties = self->_localProperties;
  self->_localProperties = 0;

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (id)localPropertiesOfBuddy:(id)buddy
{
  lock = self->_lock;
  buddyCopy = buddy;
  [(NSRecursiveLock *)lock lock];
  v6 = [(IMDServiceSession *)self canonicalFormOfID:buddyCopy];

  localProperties = self->_localProperties;
  if (!localProperties)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_localProperties;
    self->_localProperties = v8;

    localProperties = self->_localProperties;
  }

  v10 = [(NSMutableDictionary *)localProperties objectForKey:v6];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_localProperties setObject:v10 forKey:v6];
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v10;
}

- (void)changeLocalProperty:(id)property ofBuddy:(id)buddy to:(id)to
{
  toCopy = to;
  lock = self->_lock;
  buddyCopy = buddy;
  propertyCopy = property;
  [(NSRecursiveLock *)lock lock];
  v11 = [(IMDServiceSession *)self localPropertiesOfBuddy:buddyCopy];

  if (toCopy)
  {
    [v11 setObject:toCopy forKey:propertyCopy];
  }

  else
  {
    [v11 removeObjectForKey:propertyCopy];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (int64_t)maxSizePerAttachmentWithCount:(int)count forChat:(id)chat
{
  v4 = *&count;
  chatCopy = chat;
  lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
  lastAddressedSIMID = [chatCopy lastAddressedSIMID];

  v9 = [(IMDServiceSession *)self maxSizePerAttachmentWithCount:v4 lastAddressedHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID];
  return v9;
}

- (void)setRegistrationStatus:(int64_t)status error:(int)error alertInfo:(id)info
{
  v5 = *&error;
  value = info;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:status];
  if (v9)
  {
    CFDictionarySetValue(v8, *MEMORY[0x277D19470], v9);
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  if (v10)
  {
    CFDictionarySetValue(v8, *MEMORY[0x277D19460], v10);
  }

  if (value)
  {
    CFDictionarySetValue(v8, *MEMORY[0x277D19458], value);
  }

  account = [(IMDServiceSession *)self account];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v8 forKey:*MEMORY[0x277D19468]];
  [account writeAccountDefaults:v12];
}

- (int64_t)registrationStatus
{
  account = [(IMDServiceSession *)self account];
  registrationStatus = [account registrationStatus];

  return registrationStatus;
}

- (int)registrationError
{
  account = [(IMDServiceSession *)self account];
  registrationError = [account registrationError];

  return registrationError;
}

- (NSDictionary)registrationAlertInfo
{
  account = [(IMDServiceSession *)self account];
  registrationAlertInfo = [account registrationAlertInfo];

  return registrationAlertInfo;
}

- (id)loginID
{
  account = [(IMDServiceSession *)self account];
  accountDefaults = [account accountDefaults];
  v5 = [accountDefaults objectForKey:*MEMORY[0x277D19420]];
  v6 = [(IMDServiceSession *)self canonicalFormOfID:v5];

  return v6;
}

- (void)noteBadPassword
{
  self->_badPass = 1;
  password = self->_password;
  self->_password = 0;

  [(IMDServiceSession *)self disallowReconnection];
}

- (void)_abandonPWFetcher
{
  v16 = *MEMORY[0x277D85DE8];
  pwRequestID = self->_pwRequestID;
  v4 = IMOSLoggingEnabled();
  if (pwRequestID)
  {
    if (v4)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = self->_pwRequestID;
        v12 = 138412546;
        selfCopy2 = v6;
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Abandoning password fetcher with request ID: %@  session: %@", &v12, 0x16u);
      }
    }

    mEMORY[0x277D07DE0] = [MEMORY[0x277D07DE0] sharedInstance];
    v8 = self->_pwRequestID;
    displayName = [(IMDServiceSession *)self displayName];
    [mEMORY[0x277D07DE0] cancelRequestID:v8 serviceIdentifier:displayName];

    v10 = self->_pwRequestID;
    self->_pwRequestID = 0;
  }

  else if (v4)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No pending password fetch requests for session: %@", &v12, 0xCu);
    }
  }
}

- (void)_abandonSystemProxySettingsFetcher
{
  [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher setDelegate:0];
  systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
  self->_systemProxySettingsFetcher = 0;
}

- (void)invitePersonInfo:(id)info withMessage:(id)message toChat:(id)chat style:(unsigned __int8)style
{
  styleCopy = style;
  v29 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  messageCopy = message;
  chatCopy = chat;
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v14, sel_invitePersonInfo_withMessage_toChat_style_);
  if (class_getInstanceMethod(v13, sel_invitePersonInfo_withMessage_toChat_style_) == InstanceMethod)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = infoCopy;
    v16 = infoCopy;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      v20 = *MEMORY[0x277D193A8];
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(*(&v24 + 1) + 8 * v21) objectForKey:v20];
          [(IMDServiceSession *)self invitePerson:v22 withMessage:messageCopy toChat:chatCopy style:styleCopy];

          ++v21;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    infoCopy = v23;
  }
}

- (void)appendTranslation:(id)translation toMessageItem:(id)item partIndex:(int64_t)index toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v34 = *MEMORY[0x277D85DE8];
  translationCopy = translation;
  itemCopy = item;
  styleCopy = style;
  accountCopy = account;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [(IMDServiceSession *)self canonicalizeChatIdentifier:&identifierCopy style:&styleCopy];
  v18 = identifierCopy;

  v19 = [(IMDServiceSession *)self chatForChatIdentifier:v18 style:styleCopy updatingAccount:1];
  if (v19)
  {
    v20 = +[IMDMessageStore sharedInstance];
    [v20 storeTranslation:translationCopy onMessage:itemCopy partIndex:index chat:v19];

    v29 = itemCopy;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    v22 = IMCreateSerializedItemsFromArray();

    broadcasterForChatListeners = [(IMDServiceSession *)self broadcasterForChatListeners];
    account = [(IMDServiceSession *)self account];
    accountID = [account accountID];
    [broadcasterForChatListeners account:accountID chat:v18 style:styleCopy messagesUpdated:v22];
  }

  else if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v31 = itemCopy;
      v32 = 2112;
      v33 = 0;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Could not find chat for translated message. message: %@ chat: %@", buf, 0x16u);
    }
  }
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  updateCopy = update;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "/*-------calling into sendGroupPhotoUpdate from legacy service session, please file a radar-------*/", v15, 2u);
    }
  }
}

- (void)_requestGroupPhotoResendForChatGUID:(id)d fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier
{
  dCopy = d;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "/*-------calling into _requestGroupPhotoResendForChatGUID from legacy service session, please file a radar-------*/", v11, 2u);
    }
  }
}

- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh
{
  uploadCopy = upload;
  dCopy = d;
  identifierCopy = identifier;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "/*-------calling into retryGroupPhotoUpload from legacy service session, please file a radar-------*/", v16, 2u);
    }
  }
}

- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d
{
  uploadCopy = upload;
  identifierCopy = identifier;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "/*-------calling into retryTranscriptBackgroundUpload from legacy service session, please file a radar-------*/", v12, 2u);
    }
  }
}

- (void)sendLazuliSpamReport:(id)report isBot:(BOOL)bot spamType:(unint64_t)type
{
  reportCopy = report;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "/*-------calling into sendLazuliSpamReport from legacy service session, please file a radar-------*/", v7, 2u);
    }
  }
}

- (void)closeSessionForChat:(id)chat chatGUID:(id)d didDeleteConversation:(BOOL)conversation style:(unsigned __int8)style
{
  chatCopy = chat;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "/*-------calling into closeSessionForChat from legacy service session, please file a radar-------*/", v10, 2u);
    }
  }
}

- (void)sendReportNotJunkMessageGUID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(IMDSpamMessageCreator);
  [(IMDSpamMessageCreator *)v4 reportNotJunkToTrustKitForMessageGUID:dCopy];
}

- (BOOL)sendNicknameUpdatesToPeerDevices:(id)devices toDestinations:(id)destinations
{
  devicesCopy = devices;
  destinationsCopy = destinations;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "/*-------calling into sendNicknameUpdatesToPeerDevices: from service that doesn't support it. File a radar-------*/", v9, 2u);
    }
  }

  return 0;
}

- (void)sendNicknameInfoToChatID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into sendNicknameInfoToChatID: from service that doesn't support it. File a radar-------*/", v5, 2u);
    }
  }
}

- (BOOL)reflectMarkUnreadToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into reflectMarkUnreadToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectRecoverChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into reflectRecoverChatToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectAcceptChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into acceptChatToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectMarkAsReviewedToPeerDevicesForChatGUIDs:(id)ds
{
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into reflectMarkAsReviewedToPeerDevicesForChatGUIDs: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectJunkChatToPeerDevicesForMessageGUID:(id)d
{
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into junkChatToPeerDevicesForMessageGUID: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "/*-------calling into priorityMessageToPeerDevicesForMessageGUIDs: from service that doesn't support it. File a radar-------*/", v6, 2u);
    }
  }

  return 0;
}

- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0
{
  messageCopy = message;
  previousMessageCopy = previousMessage;
  identifierCopy = identifier;
  accountCopy = account;
  textCopy = text;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "/*-------calling into sendEditedMessage: from service that doesn't support it. File a radar-------*/", v18, 2u);
    }
  }
}

- (id)groupIDForChat:(id)chat
{
  v22 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if ([(IMDServiceSession *)self isReplicating])
  {
    mainSession = [(IMDServiceSession *)self mainSession];
    groupID3 = [mainSession groupIDForChat:chatCopy];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    if ((isOneChatEnabled & 1) == 0)
    {
      groupID = [chatCopy groupID];
      v10 = [groupID3 isEqualToString:groupID];

      if ((v10 & 1) == 0)
      {
        v11 = +[IMDChatRegistry sharedInstance];
        [v11 _setGroupID:groupID3 forChatAndAllSiblings:chatCopy];
      }
    }
  }

  else
  {
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

    if (!isMissingMessagesEnabled || ([chatCopy latestIdentifierForDomain:*MEMORY[0x277D19780]], (groupID3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      groupID2 = [chatCopy groupID];

      if (groupID2)
      {
        groupID3 = [chatCopy groupID];
      }

      else
      {
        groupID3 = [chatCopy generateNewGroupID];
        [chatCopy assignIdentifier:groupID3 forDomain:*MEMORY[0x277D19780] isHistoricalIdentifier:0];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            guid = [chatCopy guid];
            v18 = 138412546;
            v19 = guid;
            v20 = 2112;
            v21 = groupID3;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "The chat with guid %@ has no iMessageGroupID and therefore, a new groupID must be created. This could fork the chat. New GroupID: %@", &v18, 0x16u);
          }
        }
      }
    }
  }

  return groupID3;
}

- (void)userNotificationDidFinish:(id)finish
{
  finishCopy = finish;
  identifier = [finishCopy identifier];
  if ([identifier isEqual:@"__ksFirewallUserNotificationIdentifier"])
  {
    [(IMDServiceSession *)self _handleFirewallUserNotificationDidFinish:finishCopy];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = qword_2814212B8[0];
    qword_2814212B8[0] = @"Not Connected";

    v3 = qword_2814212C0;
    qword_2814212C0 = @"Unexpectedly disconnected";

    v4 = qword_2814212C8;
    qword_2814212C8 = @"Disconnecting...";

    v5 = qword_2814212D0;
    qword_2814212D0 = @"Connecting...";

    v6 = qword_2814212D8;
    qword_2814212D8 = @"Connecfted";
  }
}

- (void)disallowReconnection
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      accountID = [(IMDAccount *)self->_account accountID];
      v5 = 138412290;
      v6 = accountID;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[IMDServiceSession disallowReconnection] %@", &v5, 0xCu);
    }
  }

  self->_shouldReconnect = 0;
  [(IMDServiceSession *)self _clearAutoReconnectTimer];
}

- (void)autoReconnect
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    accounts = [(IMDServiceSession *)self accounts];
    v4 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(accounts);
          }

          [(IMDServiceSession *)self autoReconnectWithAccount:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [accounts countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)autoReconnectWithAccount:(id)account
{
  v18 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [accountCopy loginID];
        accountID = [accountCopy accountID];
        v14 = 138412546;
        v15 = loginID;
        v16 = 2112;
        v17 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Auto-Reconnect Request: %@:%@", &v14, 0x16u);
      }
    }

    if ([(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn])
    {
      if ([(IMDServiceSession *)self networkConditionsAllowLogin])
      {
        if ([accountCopy loginStatus] <= 2)
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              loginID2 = [accountCopy loginID];
              accountID2 = [accountCopy accountID];
              v14 = 138412546;
              v15 = loginID2;
              v16 = 2112;
              v17 = accountID2;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Reconnecting account: %@:%@", &v14, 0x16u);
            }
          }

          [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_loginWithAccount_ object:0];
          [(IMDServiceSession *)self performSelector:sel_loginWithAccount_ withObject:accountCopy afterDelay:1.0];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          loginID3 = [accountCopy loginID];
          accountID3 = [accountCopy accountID];
          v14 = 138412546;
          v15 = loginID3;
          v16 = 2112;
          v17 = accountID3;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "Auto-Reconnect failed (Network conditions don't allow it): %@:%@", &v14, 0x16u);
        }
      }
    }
  }
}

- (void)_doLoginIgnoringProxy:(BOOL)proxy
{
  proxyCopy = proxy;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accounts = [(IMDServiceSession *)self accounts];
  v6 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(accounts);
        }

        [(IMDServiceSession *)self _doLoginIgnoringProxy:proxyCopy withAccount:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [accounts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_doLoginIgnoringProxy:(BOOL)proxy withAccount:(id)account
{
  v77 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    proxyCopy = proxy;
    [(NSRecursiveLock *)self->_lock lock];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        loginID = [accountCopy loginID];
        accountID = [accountCopy accountID];
        *buf = 138412802;
        v72 = loginID;
        v73 = 2112;
        v74 = accountID;
        v75 = 2048;
        loginStatus = [accountCopy loginStatus];
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "Do Login: %@:%@  (serviceLoginStatus: %lu)", buf, 0x20u);
      }
    }

    if ([accountCopy loginStatus] > 1)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          loginID2 = [(IMDServiceSession *)self loginID];
          accountID2 = [(IMDAccount *)self->_account accountID];
          loginStatus2 = [(IMDAccount *)self->_account loginStatus];
          *buf = 138412802;
          v72 = loginID2;
          v73 = 2112;
          v74 = accountID2;
          v75 = 2048;
          loginStatus = loginStatus2;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEBUG, "Ignoring Login: %@:%@  (serviceLoginStatus: %lu)", buf, 0x20u);
        }
      }

      goto LABEL_61;
    }

    [(IMDServiceSession *)self refreshServiceCapabilities];
    loginID = self->_loginID;
    self->_loginID = 0;

    serverHost = self->_serverHost;
    self->_serverHost = 0;

    proxyHost = self->_proxyHost;
    self->_proxyHost = 0;

    proxyAccount = self->_proxyAccount;
    self->_proxyAccount = 0;

    proxyPassword = self->_proxyPassword;
    self->_proxyPassword = 0;

    accountDefaults = [(IMDServiceSession *)self accountDefaults];
    loginID3 = [(IMDServiceSession *)self loginID];
    v17 = self->_loginID;
    self->_loginID = loginID3;

    v18 = [accountDefaults objectForKey:*MEMORY[0x277D194B0]];
    self->_useSSL = [v18 BOOLValue];

    if (self->_useSSL)
    {
      v68 = *MEMORY[0x277D19490];
      v19 = [accountDefaults objectForKey:?];
      stringByRemovingWhitespace = [v19 stringByRemovingWhitespace];

      v67 = *MEMORY[0x277D19498];
      v21 = [accountDefaults objectForKey:?];
      service = [(IMDServiceSession *)self service];
      if ([stringByRemovingWhitespace length])
      {
        v22 = 0;
      }

      else
      {
        defaultAccountSettings = [service defaultAccountSettings];
        v34 = [defaultAccountSettings objectForKey:v68];
        stringByRemovingWhitespace2 = [v34 stringByRemovingWhitespace];

        v22 = [stringByRemovingWhitespace2 length] != 0;
        stringByRemovingWhitespace = stringByRemovingWhitespace2;
      }

      if ([stringByRemovingWhitespace length])
      {
        stringByRemovingWhitespace3 = stringByRemovingWhitespace;
      }

      else
      {
        v41 = [accountDefaults objectForKey:*MEMORY[0x277D19480]];
        stringByRemovingWhitespace3 = [v41 stringByRemovingWhitespace];

        if ([stringByRemovingWhitespace3 length])
        {
          v22 = 1;
        }
      }

      if ([stringByRemovingWhitespace3 length])
      {
        stringByRemovingWhitespace4 = stringByRemovingWhitespace3;
      }

      else
      {
        defaultAccountSettings2 = [service defaultAccountSettings];
        v46 = [defaultAccountSettings2 objectForKey:*MEMORY[0x277D19480]];
        stringByRemovingWhitespace4 = [v46 stringByRemovingWhitespace];

        if ([stringByRemovingWhitespace4 length])
        {
          v22 = 1;
        }
      }

      if ([v21 intValue])
      {
        v47 = v21;
      }

      else
      {
        defaultAccountSettings3 = [service defaultAccountSettings];
        v47 = [defaultAccountSettings3 objectForKey:v67];

        if ([v47 intValue])
        {
          v22 = 1;
        }
      }

      if ([v47 intValue])
      {
        v49 = v47;
      }

      else
      {
        v49 = [accountDefaults objectForKey:*MEMORY[0x277D19488]];

        if ([v49 intValue])
        {
          v22 = 1;
        }
      }

      if ([v49 intValue])
      {
        v40 = v49;
      }

      else
      {
        defaultAccountSettings4 = [service defaultAccountSettings];
        v40 = [defaultAccountSettings4 objectForKey:*MEMORY[0x277D19488]];

        if ([v40 intValue])
        {
          v22 = 1;
        }
      }

      objc_storeStrong(&self->_serverHost, stringByRemovingWhitespace4);
      self->_serverPort = [v40 intValue];
      if (stringByRemovingWhitespace4)
      {
        v51 = v22;
      }

      else
      {
        v51 = 0;
      }

      if (!v51 || !v40)
      {
        goto LABEL_55;
      }

      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{stringByRemovingWhitespace4, v68, v40, v67, 0}];
    }

    else
    {
      v27 = *MEMORY[0x277D19480];
      v28 = [accountDefaults objectForKey:*MEMORY[0x277D19480]];
      stringByRemovingWhitespace4 = [v28 stringByRemovingWhitespace];

      v30 = *MEMORY[0x277D19488];
      v31 = [accountDefaults objectForKey:*MEMORY[0x277D19488]];
      service = [(IMDServiceSession *)self service];
      if ([stringByRemovingWhitespace4 length])
      {
        v32 = 0;
      }

      else
      {
        defaultAccountSettings5 = [service defaultAccountSettings];
        v38 = [defaultAccountSettings5 objectForKey:v27];
        stringByRemovingWhitespace5 = [v38 stringByRemovingWhitespace];

        v32 = [stringByRemovingWhitespace5 length] != 0;
        stringByRemovingWhitespace4 = stringByRemovingWhitespace5;
      }

      if ([v31 intValue])
      {
        v40 = v31;
      }

      else
      {
        defaultAccountSettings6 = [service defaultAccountSettings];
        v40 = [defaultAccountSettings6 objectForKey:v30];

        if ([v40 intValue])
        {
          v32 = 1;
        }
      }

      objc_storeStrong(&self->_serverHost, stringByRemovingWhitespace4);
      self->_serverPort = [v40 intValue];
      if (stringByRemovingWhitespace4)
      {
        v43 = v32;
      }

      else
      {
        v43 = 0;
      }

      if (!v43 || !v40)
      {
        goto LABEL_55;
      }

      v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{stringByRemovingWhitespace4, v27, v40, v30, 0}];
    }

    v52 = v44;
    account = [(IMDServiceSession *)self account];
    [account writeAccountDefaults:v52];

LABEL_55:
    if (proxyCopy || ([accountDefaults objectForKey:*MEMORY[0x277D194A0]], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v54, "BOOLValue"), v54, !v55))
    {
      self->_proxyType = 4;
      [(IMDServiceSession *)self _login_serverSettingsReadyWithAccount:accountCopy];
    }

    else
    {
      v56 = [accountDefaults objectForKey:*MEMORY[0x277D194A8]];
      bOOLValue = [v56 BOOLValue];

      if (bOOLValue)
      {
        [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
        v58 = objc_alloc(MEMORY[0x277D192B0]);
        server = [(IMDServiceSession *)self server];
        v60 = [v58 initWithHost:server port:self->_serverPort delegate:self];
        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v60;

        [(IMSystemProxySettingsFetcher *)self->_systemProxySettingsFetcher retrieveProxySettings];
      }

      else
      {
        v62 = [accountDefaults objectForKey:*MEMORY[0x277D19450]];
        self->_proxyType = [v62 intValue];

        v63 = [accountDefaults objectForKey:*MEMORY[0x277D19440]];
        stringByRemovingWhitespace6 = [v63 stringByRemovingWhitespace];
        v65 = self->_proxyHost;
        self->_proxyHost = stringByRemovingWhitespace6;

        v66 = [accountDefaults objectForKey:*MEMORY[0x277D19448]];
        self->_proxyPort = [v66 intValue];

        [(IMDServiceSession *)self _login_serverSettingsReadyWithAccount:accountCopy];
      }
    }

LABEL_61:
    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (void)_login_serverSettingsReadyWithAccount:(id)account
{
  v25 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v21 = 138412546;
        selfCopy = loginID;
        v23 = 2112;
        v24 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_serverSettingsReadyWithAccount: %@:%@", &v21, 0x16u);
      }
    }

    server = [(IMDServiceSession *)self server];
    service = [(IMDServiceSession *)self service];
    requiresHost = [service requiresHost];

    if ((([server length] == 0) & requiresHost) == 1)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"The account name or server is not valid." value:&stru_283F23018 table:@"DaemonCoreLocalizable"];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "  setting service status to disconnected, account or server is invalid", &v21, 2u);
        }
      }

      [accountCopy _forceSetLoginStatus:1 message:v12 reason:0 properties:0];
      [(IMDServiceSession *)self disallowReconnection];

      goto LABEL_22;
    }

    networkMonitor = self->_networkMonitor;
    if (!networkMonitor)
    {
      goto LABEL_16;
    }

    if (([(IMNetworkMonitor *)networkMonitor immediatelyReachable]& 1) == 0)
    {
      overrideNetworkAvailability = [(IMDServiceSession *)self overrideNetworkAvailability];
      if (!overrideNetworkAvailability)
      {
        v19 = IMDaemonCoreBundle(overrideNetworkAvailability);
        v20 = [v19 localizedStringForKey:@"A network error occurred.\n" value:&stru_283F23018 table:@"DaemonCoreLocalizable"];

        [accountCopy _forceSetLoginStatus:0 message:v20 reason:0 properties:0];
        goto LABEL_22;
      }
    }

    if (!self->_networkMonitor)
    {
LABEL_16:
      service2 = [(IMDServiceSession *)self service];
      ignoresNetworkConnectivity = [service2 ignoresNetworkConnectivity];

      if ((ignoresNetworkConnectivity & 1) == 0 && IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "****** No IMNetworkMonitor for login of account: %@", &v21, 0xCu);
        }
      }
    }

    [(IMDServiceSession *)self _data_connection_readyWithAccount:accountCopy];
LABEL_22:
  }
}

- (void)_data_connection_readyWithAccount:(id)account
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        *buf = 138412546;
        v16 = loginID;
        v17 = 2112;
        v18 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_data_connection_ready: %@:%@", buf, 0x16u);
      }
    }

    if (!self->_shouldReconnect)
    {
      password = self->_password;
      self->_password = 0;
    }

    if ([(IMDServiceSession *)self accountNeedsPassword]&& !self->_password)
    {
      [(IMDServiceSession *)self _abandonPWFetcher];
      mEMORY[0x277D07DE0] = [MEMORY[0x277D07DE0] sharedInstance];
      loginID = self->_loginID;
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_22B6D6704;
      v13[3] = &unk_2787085D0;
      v13[4] = self;
      v14 = accountCopy;
      [mEMORY[0x277D07DE0] fetchPasswordForProfileID:0 username:loginID service:internalName outRequestID:0 completionBlock:v13];
    }

    else
    {
      [(IMDServiceSession *)self _login_usernameAndPasswordReadyWithAccount:accountCopy];
    }
  }
}

- (void)_login_usernameAndPasswordReadyWithAccount:(id)account
{
  v15 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [accountCopy loginID];
        accountID = [accountCopy accountID];
        v11 = 138412546;
        v12 = loginID;
        v13 = 2112;
        v14 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_usernameAndPasswordReady: %@:%@", &v11, 0x16u);
      }
    }

    if (self->_proxyType == 4)
    {
      [(IMDServiceSession *)self _login_checkUsernameAndPasswordWithAccount:accountCopy];
    }

    else
    {
      systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      if (!systemProxySettingsFetcher)
      {
        v9 = [objc_alloc(MEMORY[0x277D192B0]) initWithProxyProtocol:self->_proxyType proxyHost:self->_proxyHost proxyPort:self->_proxyPort delegate:self];
        v10 = self->_systemProxySettingsFetcher;
        self->_systemProxySettingsFetcher = v9;

        systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      }

      [(IMSystemProxySettingsFetcher *)systemProxySettingsFetcher retrieveProxyAccountSettings];
    }
  }
}

- (void)_login_checkUsernameAndPasswordWithAccount:(id)account
{
  v40 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v8 = [(NSString *)self->_password length];
        v9 = @"YES";
        badPass = self->_badPass;
        if (v8)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        *buf = 138413058;
        if (!badPass)
        {
          v9 = @"NO";
        }

        selfCopy = loginID;
        v34 = 2112;
        v35 = accountID;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v9;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "_login_checkUsernameAndPassword: %@:%@  has pass: %@   bad pass: %@", buf, 0x2Au);
      }
    }

    if (([(NSString *)self->_password length]|| ![(IMDServiceSession *)self accountNeedsPassword]) && ([(NSString *)self->_loginID length]|| ![(IMDServiceSession *)self accountNeedsLogin]) && !self->_badPass)
    {
      if ([(IMDServiceSession *)self networkConditionsAllowLogin])
      {
        if ([accountCopy loginStatus] > 3)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_30;
          }

          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEBUG, "Strange, we're here, but already logged in", buf, 2u);
          }
        }

        else
        {
          if (self->_activated)
          {
            [accountCopy setLoginStatus:3 message:0];
            [(IMDServiceSession *)self loginServiceSessionWithAccount:accountCopy];
            goto LABEL_30;
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_30;
          }

          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEBUG, "Skipping login, we're not activated", buf, 2u);
          }
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_30;
        }

        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEBUG, "_login_checkUsernameAndPassword: networkMonitor says we're not reachable", buf, 2u);
        }
      }

      goto LABEL_30;
    }

    if ([(IMDServiceSession *)self accountNeedsPassword])
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(NSString *)self->_password length];
          v14 = [(NSString *)self->_loginID length];
          v15 = @"YES";
          v16 = self->_badPass;
          if (v13)
          {
            v17 = @"YES";
          }

          else
          {
            v17 = @"NO";
          }

          *buf = 138413058;
          if (v14)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          selfCopy = self;
          v34 = 2112;
          if (!v16)
          {
            v15 = @"NO";
          }

          v35 = v17;
          v36 = 2112;
          v37 = v18;
          v38 = 2112;
          v39 = v15;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Building password notification dialog for: %@   (has pass: %@   has login: %@  bad pass: %@)", buf, 0x2Au);
        }
      }

      capabilities = [(IMDServiceSession *)self capabilities];
      displayName = [(IMDServiceSession *)self displayName];
      v20 = self->_pwRequestID;
      [(IMDServiceSession *)self _abandonPWFetcher];
      mEMORY[0x277D07DE0] = [MEMORY[0x277D07DE0] sharedInstance];
      loginID = self->_loginID;
      v23 = self->_badPass;
      v31 = v20;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_22B6D6F88;
      v29[3] = &unk_2787085F8;
      v29[4] = self;
      v30 = accountCopy;
      [mEMORY[0x277D07DE0] requestPasswordForUsername:loginID service:displayName badPassword:v23 showForgotPassword:(capabilities >> 31) & 1 shouldRememberPassword:1 outRequestID:&v31 completionBlock:v29];
      v24 = v31;

      pwRequestID = self->_pwRequestID;
      self->_pwRequestID = v24;
      v26 = v24;

      self->_badPass = 0;
    }
  }

LABEL_30:
}

- (void)systemProxySettingsFetcher:(id)fetcher retrievedHost:(id)host port:(unsigned __int16)port protocol:(int64_t)protocol
{
  fetcherCopy = fetcher;
  hostCopy = host;
  if (self->_activated)
  {
    if (protocol == 4)
    {
      systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
      self->_systemProxySettingsFetcher = 0;

      [(IMDServiceSession *)self _updateNetworkMonitorFromAccountDefaultsIgnoringProxy:1];
    }

    else
    {
      [(IMDServiceSession *)self _updateNetworkMonitorWithRemoteHost:hostCopy];
    }

    self->_proxyType = protocol;
    objc_storeStrong(&self->_proxyHost, host);
    self->_proxyPort = port;
    im_dispatch_after();
  }
}

- (void)systemProxySettingsFetcher:(id)fetcher retrievedAccount:(id)account password:(id)password
{
  accountCopy = account;
  passwordCopy = password;
  if (self->_activated)
  {
    objc_storeStrong(&self->_proxyAccount, account);
    objc_storeStrong(&self->_proxyPassword, password);
    systemProxySettingsFetcher = self->_systemProxySettingsFetcher;
    self->_systemProxySettingsFetcher = 0;

    v10 = +[IMDAccountController sharedAccountController];
    account = [v10 accountForAccountID:accountCopy];

    if (!account)
    {
      account = [(IMDServiceSession *)self account];
    }

    [(IMDServiceSession *)self _login_checkUsernameAndPasswordWithAccount:account];
  }
}

- (void)autoLogin
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v10 = 138412546;
        v11 = loginID;
        v12 = 2112;
        v13 = accountID;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "autoLogin: %@:%@", &v10, 0x16u);
      }
    }

    accountID2 = [(IMDServiceSession *)self accountID];
    if (![accountID2 length])
    {

      return;
    }

    accountDefaults = [(IMDServiceSession *)self accountDefaults];
    v8 = [accountDefaults objectForKey:*MEMORY[0x277D193F8]];
    if ([v8 BOOLValue])
    {
    }

    else
    {
      accountShouldBeAlwaysLoggedIn = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];

      if (!accountShouldBeAlwaysLoggedIn)
      {
        return;
      }
    }

    [(IMDServiceSession *)self login];
  }
}

- (void)login
{
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self loginWithAccount:account];
}

- (void)loginWithAccount:(id)account
{
  v12 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_loginWithAccount_ object:0];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        loginID = [(IMDServiceSession *)self loginID];
        accountID = [(IMDAccount *)self->_account accountID];
        v8 = 138412546;
        v9 = loginID;
        v10 = 2112;
        v11 = accountID;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Login request: %@:%@ (Setting should reconnect flag = YES)", &v8, 0x16u);
      }
    }

    self->_shouldReconnect = 1;
    [(IMDServiceSession *)self _setAutoReconnectTimer];
    [(IMDServiceSession *)self _doLoginIgnoringProxy:0 withAccount:accountCopy];
  }
}

- (void)logoutServiceSessionWithAccount:(id)account
{
  v16 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        selfCopy = self;
        v14 = 2112;
        v15 = accountCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[IMDServiceSession logoutServiceSession]: %@, account:%@", &v12, 0x16u);
      }
    }

    if (self->_systemProxySettingsFetcher)
    {
      [(IMDServiceSession *)self _abandonSystemProxySettingsFetcher];
      [accountCopy _forceSetLoginStatus:0 message:0 reason:0 properties:0];
    }

    [(IMDServiceSession *)self _abandonPWFetcher];
    if ([accountCopy loginStatus])
    {
      [accountCopy _forceSetLoginStatus:0 message:0 reason:0 properties:0];
    }

    if (!self->_shouldReconnect)
    {
      password = self->_password;
      self->_password = 0;

      serverHost = self->_serverHost;
      self->_serverHost = 0;
    }

    loginID = self->_loginID;
    self->_loginID = 0;

    proxyHost = self->_proxyHost;
    self->_proxyHost = 0;

    proxyAccount = self->_proxyAccount;
    self->_proxyAccount = 0;

    proxyPassword = self->_proxyPassword;
    self->_proxyPassword = 0;

    self->_saveKeychainPassword = 0;
    if ([(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn])
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_login object:0];
      [(IMDServiceSession *)self performSelector:sel_login withObject:0 afterDelay:1.0];
    }

    if (self->_shouldReconnect)
    {
      [(IMDServiceSession *)self _setAutoReconnectTimer];
    }

    else
    {
      [(IMDServiceSession *)self _clearAutoReconnectTimer];
    }
  }
}

- (void)logout
{
  account = [(IMDServiceSession *)self account];
  [(IMDServiceSession *)self logoutWithAccount:account];
}

- (void)logoutWithAccount:(id)account
{
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      activated = self->_activated;
      *v16 = 138412802;
      if (activated)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      *&v16[4] = self;
      v17 = 2112;
      v18 = accountCopy;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[%@ logoutWithAccount:%@] (activated = %@)", v16, 0x20u);
    }
  }

  if (self->_activated)
  {
    accountShouldBeAlwaysLoggedIn = [(IMDServiceSession *)self accountShouldBeAlwaysLoggedIn];
    v9 = IMOSLoggingEnabled();
    if (accountShouldBeAlwaysLoggedIn)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          loginID = [(IMDServiceSession *)self loginID];
          *v16 = 138412290;
          *&v16[4] = loginID;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Tried to logout: %@  but we're not supposed to, reflecting this!", v16, 0xCu);
        }
      }

      if ([accountCopy loginStatus])
      {
        broadcaster = [(IMDServiceSession *)self broadcaster];
        accountID = [accountCopy accountID];
        [broadcaster account:accountID loginStatusChanged:4 message:@"<<Connected>>" reason:0xFFFFFFFFLL properties:0];
      }
    }

    else
    {
      if (v9)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          loginID2 = [(IMDServiceSession *)self loginID];
          *v16 = 138412290;
          *&v16[4] = loginID2;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "** %@: clearing _shouldReconnectFlag at logout", v16, 0xCu);
        }
      }

      [(IMDServiceSession *)self disallowReconnection];
      [(IMDServiceSession *)self logoutServiceSessionWithAccount:accountCopy];
    }
  }
}

- (void)serviceSessionDidLoginWithAccount:(id)account
{
  if (self->_activated)
  {
    [account _forceSetLoginStatus:4 message:0 reason:0xFFFFFFFFLL properties:0];
    [(IMDServiceSession *)self _clearAutoReconnectTimer];

    [(IMDServiceSession *)self _abandonPWFetcher];
  }
}

- (void)serviceSessionDidLogoutWithAccount:(id)account
{
  if (self->_activated)
  {
    [account _forceSetLoginStatus:0 message:0 reason:0xFFFFFFFFLL properties:0];

    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)serviceSessionDidLogoutWithMessage:(id)message reason:(int)reason properties:(id)properties account:(id)account
{
  if (self->_activated)
  {
    [account _forceSetLoginStatus:0 message:message reason:*&reason properties:properties];

    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)_wentOfflineWithAccount:(id)account
{
  if (self->_activated)
  {
    lock = self->_lock;
    accountCopy = account;
    [(NSRecursiveLock *)lock lock];
    [(NSMutableDictionary *)self->_buddies removeAllObjects];
    [(NSMutableDictionary *)self->_localProperties removeAllObjects];
    [(NSRecursiveLock *)self->_lock unlock];
    [(IMDServiceSession *)self autoReconnectWithAccount:accountCopy];
  }
}

- (void)__forceSetLoginStatus:(unint64_t)status oldStatus:(unint64_t)oldStatus message:(id)message reason:(int)reason properties:(id)properties account:(id)account
{
  v10 = *&reason;
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  propertiesCopy = properties;
  accountCopy = account;
  if (status > 3 || oldStatus < 4)
  {
    if (status == 4)
    {
      [(IMDServiceSession *)self _abandonPWFetcher];
      [(IMDServiceSession *)self _clearAutoReconnectTimer];
      if (self->_saveKeychainPassword)
      {
        if ([(NSString *)self->_password length])
        {
          service = [(IMDServiceSession *)self service];
          internalName = [service internalName];
          IMSetKeychainPassword();

          self->_saveKeychainPassword = 0;
        }
      }
    }
  }

  else
  {
    [(IMDServiceSession *)self _wentOfflineWithAccount:accountCopy];
    [(IMDServiceSession *)self autoReconnectWithAccount:accountCopy];
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = v21;
      statusCopy = 4;
      if (status < 4)
      {
        statusCopy = status;
      }

      v24 = qword_2814212B8[statusCopy];
      *v29 = 138412802;
      *&v29[4] = v21;
      *&v29[12] = 2112;
      *&v29[14] = v24;
      if (messageCopy)
      {
        v25 = messageCopy;
      }

      else
      {
        v25 = &stru_283F23018;
      }

      *&v29[22] = 2112;
      v30 = v25;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "%@: Login status changed to %@ (%@)", v29, 0x20u);
    }
  }

  v26 = [(IMDServiceSession *)self broadcaster:*v29];
  accountID = [accountCopy accountID];
  [v26 account:accountID loginStatusChanged:status message:messageCopy reason:v10 properties:propertiesCopy];

  if ([accountCopy isActive])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMDBadgeUtilitiesLoginStatusChangedNotification", 0, 0, 1u);
  }

  if (status == 1)
  {
    [(IMDServiceSession *)self _setAutoReconnectTimer];
  }
}

- (void)_setAutoReconnectTimer
{
  if (!self->_activated)
  {
    [(IMDServiceSession *)self _clearAutoReconnectTimer];
  }
}

- (void)_autoReconnectTimer:(id)timer
{
  v12 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  if (self->_activated)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "[IMDServiceSession _autoReconnectTimer]: %@", &v10, 0xCu);
      }
    }

    networkConditionsAllowLogin = [(IMDServiceSession *)self networkConditionsAllowLogin];
    v7 = IMOSLoggingEnabled();
    if (networkConditionsAllowLogin)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, " => Network appears to be up, we'll try to auto reconnect", &v10, 2u);
        }
      }

      [(IMDServiceSession *)self autoReconnect];
      [(IMDServiceSession *)self _reconnectIfNecessary];
    }

    else if (v7)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** Network does not appear to be up, we'll skip this attempt", &v10, 2u);
      }
    }
  }
}

- (void)_clearAutoReconnectTimer
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "[IMDServiceSession _clearAutoReconnectTimer]: %@", &v5, 0xCu);
    }
  }

  [(NSTimer *)self->_reconnectTimer invalidate];
  reconnectTimer = self->_reconnectTimer;
  self->_reconnectTimer = 0;
}

- (void)deleteAllDataWithCompletionHandler:(id)handler
{
  v5 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22B7DBA58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22B7F8D00;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22B7F8D08;
  v12[5] = v11;
  selfCopy = self;
  sub_22B7C0EFC(0, 0, v7, &unk_22B7F8D10, v12);
}

- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with handles:(id)handles
{
  sub_22B6EFD80();
  v4 = sub_22B7DB918();
  sub_22B7DAF08();
  v5 = sub_22B7DAEF8();
  v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
  return v5 & 1;
}

- (void)downloadTranslationAssetsForLanguageCodes:(id)codes messageItemsToTranslateLocally:(id)locally chatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  v9 = sub_22B6F0AD4(&qword_27D8CD5C0, &qword_22B7F8CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_22B7DB918();
  sub_22B733994();
  v13 = sub_22B7DB918();
  v14 = sub_22B7DB6A8();
  v16 = v15;
  v17 = sub_22B7DBA58();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  sub_22B7DBA18();
  selfCopy = self;
  v19 = sub_22B7DBA08();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  *(v20 + 32) = v12;
  *(v20 + 40) = v14;
  *(v20 + 48) = v16;
  *(v20 + 56) = style;
  *(v20 + 64) = selfCopy;
  *(v20 + 72) = v13;
  sub_22B722F28(0, 0, v11, &unk_22B7FA6B0, v20);
}

@end