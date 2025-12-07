@interface IMDNotificationsController
+ (BOOL)_isFacetimeHighlighted:(id)highlighted;
+ (id)_addressBookNameForAddress:(id)address orContact:(id)contact;
+ (id)_addressForHandle:(id)handle;
+ (id)_displayNameForBusinessChatAddress:(id)address businessNameManager:(id)manager;
+ (id)_displayNameForChatRecord:(id)record;
+ (id)_displayNameForHandle:(id)handle andContact:(id)contact businessNameManager:(id)manager suggestionProvider:(id)provider;
+ (id)_lpLinkMetadataForMessage:(id)message attachmentPaths:(id)paths originalURL:(id)l;
+ (id)_pluginPayloadAttachmentPathsForMessage:(id)message;
+ (id)_truncateNameIfNeeded:(id)needed;
+ (id)logger;
+ (id)sharedInstance;
+ (int)reminderAlertCount;
+ (int)validateAlertCount:(int)count;
- (BOOL)_UTITypeMightBeAnimated:(id)animated;
- (BOOL)_amIMentionedInMessage:(id)message;
- (BOOL)_areAllMessagePartsRetractedForMessageDictionary:(id)dictionary;
- (BOOL)_chatHasCategoryMuted:(id)muted isFromContact:(BOOL)contact;
- (BOOL)_chatIsMuted:(id)muted;
- (BOOL)_chatIsMutedBasedOnChatGUID:(id)d chatIdentifier:(id)identifier groupID:(id)iD domainIdentifiers:(id)identifiers handles:(id)handles lastAddressedHandleString:(id)string originalGroupID:(id)groupID style:(int64_t)self0;
- (BOOL)_contentBodyHasLocationURL:(id)l;
- (BOOL)_deviceIsElgibileToBeForcedIntoFilteringUnknownSenders;
- (BOOL)_deviceUnderFirstUnlock;
- (BOOL)_filteringSettingConfirmed;
- (BOOL)_handleIsSpokenMessageAllowlisted:(id)allowlisted chat:(id)chat message:(id)message;
- (BOOL)_isChatbotChat:(id)chat;
- (BOOL)_isMostActiveDevice;
- (BOOL)_isRaiseGestureEnabled;
- (BOOL)_isUnknownSenders:(id)senders;
- (BOOL)_messageIsBusiness:(id)business;
- (BOOL)_messageIsFromFavorite:(id)favorite;
- (BOOL)_messageIsFromKnownContact:(id)contact;
- (BOOL)_messageIsSOSMapURL:(id)l;
- (BOOL)_messageIsStewieEmergency:(id)emergency;
- (BOOL)_messageShouldBeSilentlyDeliveredForBusinessChat:(id)chat;
- (BOOL)_messageShouldBeSpoken:(id)spoken chatDictionary:(id)dictionary;
- (BOOL)_notificationIsFromAFilteredSender:(id)sender messageDictionary:(id)dictionary;
- (BOOL)_shouldOverrideChatSilencingBecauseImMentioned:(id)mentioned;
- (BOOL)_shouldPostNotificationForChat:(id)chat messageDictionary:(id)dictionary;
- (BOOL)_shouldPostNotificationRequest:(id)request withCurrentlyPostedNotifications:(id)notifications;
- (BOOL)_shouldRepostNotification:(id)notification withAlreadyPostedNotification:(id)postedNotification;
- (BOOL)areMyTokens:(id)tokens inMessage:(id)message;
- (BOOL)copyFirstFrameOfMultiFrameImageAtFileURL:(id)l toFileURL:(id)rL;
- (BOOL)imagePreviewIsMultiFrameAtFileURL:(id)l;
- (BOOL)isFromChatBotNotOTC:(id)c;
- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with participants:(id)participants;
- (IMDNotificationsController)init;
- (UNUserNotificationCenter)notificationCenter;
- (id)RCSCategoryWithIdentifier:(id)identifier actions:(id)actions;
- (id)SMSCategoryWithIdentifier:(id)identifier actions:(id)actions;
- (id)_adaptiveImageGlyphForAttachment:(id)attachment;
- (id)_attachmentRecordsForAssociatedMessagePartText:(id)text;
- (id)_attributedMessageBodyByInsertingAdaptiveImageGlyphsInMessageBody:(id)body attachments:(id)attachments;
- (id)_attributedSummaryOfTapback:(id)tapback messageDictionary:(id)dictionary senderDisplayName:(id)name;
- (id)_chatDictionaryForChatRecord:(id)record;
- (id)_chatDictionaryForMessageRecord:(id)record;
- (id)_coreSpotlightChatParticipantsFromChatDictionary:(id)dictionary senderHandleID:(id)d;
- (id)_dateForMessage:(id)message;
- (id)_displayNameForHandle:(id)handle;
- (id)_displayNameForHandle:(id)handle andContact:(id)contact fallbackName:(id)name;
- (id)_failedMessageRecordsAfterDateInNanoseconds:(int64_t)nanoseconds;
- (id)_fallbackNameOfChatbotFrom:(id)from;
- (id)_generateNotificationRequestForDeliveryError:(id)error isCarouselUITriggered:(BOOL)triggered;
- (id)_generateNotificationRequestForMessageRecord:(id)record isUrgentMessageTrigger:(BOOL)trigger isCarouselUITriggered:(BOOL)triggered shouldAdvanceLastAlertedMessageDate:(BOOL *)date;
- (id)_generateNotificationRequestForMessageRecord:(id)record messageDictionary:(id)dictionary chatDictionary:(id)chatDictionary isUrgentMessageTrigger:(BOOL)trigger isCarouselUITriggered:(BOOL)triggered shouldAdvanceLastAlertedMessageDate:(BOOL *)date;
- (id)_groupPhotoInternalFilePathForGroupPhotoGuid:(id)guid;
- (id)_handleIDsForChatDictionary:(id)dictionary;
- (id)_interactionDonationContextWithContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary isUrgentMessageTrigger:(BOOL)trigger;
- (id)_lastMessageTimeForChat:(id)chat;
- (id)_lastTwoMessagesForChat:(id)chat;
- (id)_makeNotificationCategories;
- (id)_messageDictionaryForMessageRecord:(id)record copyThreadOriginator:(BOOL)originator;
- (id)_messagePredicateForNewMessagesAfterDate:(int64_t)date;
- (id)_messages:(id)_messages newerThanDate:(int64_t)date;
- (id)_nicknameDisplayNameForID:(id)d;
- (id)_notificationsSafePreviewFileURLForTransferURL:(id)l utiType:(id)type knownSender:(BOOL)sender;
- (id)_requestForNonMostActiveDeviceRequest:(id)request;
- (id)_senderDisplayNameForTapback:(id)tapback sendMessageIntent:(id)intent chatParticipants:(id)participants;
- (id)_stickerTapbackTransferGUIDFromMessageDictionary:(id)dictionary;
- (id)_synthesizedMessagingNotificationContentWithContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary isUrgentMessageTrigger:(BOOL)trigger;
- (id)_tapbackFromMessageDictionary:(id)dictionary;
- (id)_userNotificationForParticipantChangeMessageRecord:(id)record;
- (id)_userNotificationsForFailedDeliveryMessageRecords:(id)records isCarouselUITriggered:(BOOL)triggered;
- (id)_userNotificationsForMessageRecords:(id)records newerThanDate:(int64_t)date isUrgentMessageTrigger:(BOOL)trigger isCarouselUITriggered:(BOOL)triggered;
- (id)allTokens;
- (id)contactForHandleRecord:(id)record;
- (id)madridBusinessCategoryWithIdentifier:(id)identifier actions:(id)actions;
- (id)madridCategoryWithIdentifier:(id)identifier actions:(id)actions;
- (id)madridGroupCategoryWithIdentifier:(id)identifier actions:(id)actions;
- (id)noRelayCategoryWithIdentifier:(id)identifier actions:(id)actions;
- (int64_t)_legacyDateForMessageWithRowIDPreference:(int64_t)preference;
- (int64_t)lastAlertedFailedMessageDate;
- (int64_t)lastAlertedMessageDate;
- (unint64_t)_getMessagesSpokenAllowlistLevel:(BOOL *)level;
- (unint64_t)_getSpokenMessageAllowlistLevelVersion;
- (unint64_t)screenTimeNotificationOptionsForChatDictionary:(id)dictionary;
- (unint64_t)screenTimeNotificationOptionsForContext:(id)context;
- (void)__postNotificationRequests:(id)requests isMostActiveDevice:(BOOL)device;
- (void)__postNotifications;
- (void)_migrateLastedPostedPreferencesIfNeeded;
- (void)_populateAttachmentsForNotificationContent:(id)content messageDictionary:(id)dictionary messageRecord:(id)record knownSender:(BOOL)sender;
- (void)_populateBasicNotificationIdentifyingContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary isCarouselUITriggered:(BOOL)triggered;
- (void)_populateBodyAndTitleForSendFailedNotificationContent:(id)content messageDictionary:(id)dictionary;
- (void)_populateBodyAndTitleForSendReceivedAsJunkNotificationContent:(id)content messageDictionary:(id)dictionary;
- (void)_populateBodyForNotificationContent:(id)content messageDictionary:(id)dictionary;
- (void)_populateIgnoresDoNotDisturb:(id)disturb chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_populateNotificationContentForTranscriptSharing:(id)sharing chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_populateRealertCountForNotificationContent:(id)content;
- (void)_populateSoundAndDisplayActivationForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_populateSubtitleForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_populateTimeSensitiveOrCriticalForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_populateTitleForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_populateUserInfoForMessageContent:(id)content messageDictionary:(id)dictionary messageIsAddressedToMe:(BOOL)me;
- (void)_populateUserInfoOnContentForWatch:(id)watch messageDictionary:(id)dictionary chatDictionary:(id)chatDictionary isCarouselUITriggered:(BOOL)triggered;
- (void)_postNotificationRequests:(id)requests isMostActiveDevice:(BOOL)device;
- (void)_postUnreadNotificationRequests:(id)requests failedNotificationRequests:(id)notificationRequests;
- (void)_postUrgentNotificationRequests:(id)requests;
- (void)_removeAllDeliveredMessageNotifications;
- (void)_setContactInMessageDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
- (void)_setMessagesSpokenAllowlistLevelInPreferences:(unint64_t)preferences;
- (void)_setSpokenMessageAllowlistLevelVersion:(unint64_t)version;
- (void)_setUpNotificationCenter;
- (void)_setupBusinessNameManager;
- (void)_setupCriticalNotifications;
- (void)_setupFirstLoad;
- (void)_setupMeContactAndTokens;
- (void)_storeLastAlertedFailedMessageDate:(int64_t)date;
- (void)_storeLastAlertedMessageDate:(int64_t)date;
- (void)advanceLastAlertedFailedMessageDate:(int64_t)date;
- (void)advanceLastAlertedMessageDate:(int64_t)date;
- (void)postFirstUnlockMessage:(id)message forIdentifier:(id)identifier;
- (void)postNotificationsWithContext:(id)context;
- (void)postSharePlayNotificationForChatGUID:(id)d faceTimeConversationUUID:(id)iD handleIdentifier:(id)identifier localizedApplicationName:(id)name;
- (void)postUrgentNotificationForMessages:(id)messages withContext:(id)context;
- (void)repostNotificationsFromFirstUnlockWithContext:(id)context;
- (void)retractNotificationsForReadMessages:(id)messages;
- (void)setLastAlertedFailedMessageDate:(int64_t)date;
- (void)setLastAlertedMessageDate:(int64_t)date;
- (void)updatePostedNotificationsForMessages:(id)messages withContext:(id)context;
@end

@implementation IMDNotificationsController

+ (id)sharedInstance
{
  v3 = IMSupportsUserNotifications();
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7B09E14;
    block[3] = &unk_1E7CB6A70;
    block[4] = self;
    if (qword_1EDBE62B0 != -1)
    {
      dispatch_once(&qword_1EDBE62B0, block);
    }

    v4 = qword_1EDBE7928;
  }

  else
  {
    v5 = IMDNotificationsControllerLogHandle(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Tried to access IMDNotificationsController on unsupported platform, returning nil.", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (BOOL)_isMostActiveDevice
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v2 = objc_alloc_init(MEMORY[0x1E69CDE80]);
  objc_msgSend_setType_(v2, v3, 1, v4);
  if (qword_1EBA53BF8 != -1)
  {
    sub_1B7CECFE8();
  }

  v5 = qword_1EBA53BF0;
  objc_msgSend_setDispatchQueue_(v2, v6, v5, v7);

  v8 = v2;
  v9 = dispatch_semaphore_create(0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1B7AF8670;
  v23[3] = &unk_1E7CB6CD0;
  v26 = &v27;
  v10 = v8;
  v24 = v10;
  v11 = v9;
  v25 = v11;
  objc_msgSend_setCompletionHandler_(v10, v12, v23, v13);
  objc_msgSend_start(v10, v14, v15, v16);
  v17 = dispatch_time(0, 3000000000);
  v18 = dispatch_semaphore_wait(v11, v17);
  if (v18)
  {
    v19 = IMDNotificationsControllerLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "timeout waiting for completionHandler from SFCoordinatedAlertRequest", v22, 2u);
    }
  }

  v20 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v20;
}

- (UNUserNotificationCenter)notificationCenter
{
  sub_1B7AF61B8(1);
  notificationCenter = self->_notificationCenter;

  return notificationCenter;
}

+ (id)logger
{
  if (qword_1EBA53ED8 != -1)
  {
    sub_1B7CECAB8();
  }

  v3 = qword_1EBA53ED0;

  return v3;
}

- (IMDNotificationsController)init
{
  v20.receiver = self;
  v20.super_class = IMDNotificationsController;
  v2 = [(IMDNotificationsController *)&v20 init];
  v6 = v2;
  if (v2)
  {
    objc_msgSend__setupFirstLoad(v2, v3, v4, v5);
    objc_msgSend__setUpNotificationCenter(v6, v7, v8, v9);
    objc_msgSend__setupCriticalNotifications(v6, v10, v11, v12);
    objc_msgSend__setupBusinessNameManager(v6, v13, v14, v15);
    objc_msgSend__setupMeContactAndTokens(v6, v16, v17, v18);
  }

  return v6;
}

- (void)_setupBusinessNameManager
{
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F40], a2, v2, v3);
  objc_msgSend_setBusinessNameManager_(self, v5, v7, v6);
}

- (void)_setUpNotificationCenter
{
  v3 = objc_alloc(MEMORY[0x1E6983308]);
  v6 = objc_msgSend_initWithBundleIdentifier_(v3, v4, @"com.apple.MobileSMS", v5);
  notificationCenter = self->_notificationCenter;
  self->_notificationCenter = v6;

  v13 = objc_msgSend__makeNotificationCategories(self, v8, v9, v10);
  objc_msgSend_setNotificationCategories_(self->_notificationCenter, v11, v13, v12);
}

- (id)_makeNotificationCategories
{
  v60[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v60[0] = *MEMORY[0x1E696E698];
  v5 = v60[0];
  v60[1] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v60, 2);
  v9 = MEMORY[0x1E695E0F0];
  v58 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_options_(v4, v10, @"MessageExtension", MEMORY[0x1E695E0F0], v8, 14);

  objc_msgSend_addObject_(v3, v11, v58, v12);
  v57 = objc_msgSend_madridCategoryWithIdentifier_actions_(self, v13, @"MessageExtension-Madrid", v9);
  objc_msgSend_addObject_(v3, v14, v57, v15);
  v56 = objc_msgSend_madridGroupCategoryWithIdentifier_actions_(self, v16, @"MessageExtension-MadridGroup", v9);
  objc_msgSend_addObject_(v3, v17, v56, v18);
  v55 = objc_msgSend_madridBusinessCategoryWithIdentifier_actions_(self, v19, @"MessageExtension-MadridBusiness", v9);
  objc_msgSend_addObject_(v3, v20, v55, v21);
  v23 = objc_msgSend_SMSCategoryWithIdentifier_actions_(self, v22, @"MessageExtension-SMS", v9);
  objc_msgSend_addObject_(v3, v24, v23, v25);
  v27 = objc_msgSend_noRelayCategoryWithIdentifier_actions_(self, v26, @"MessageExtension-NoRelay", v9);
  objc_msgSend_addObject_(v3, v28, v27, v29);
  v31 = objc_msgSend_RCSCategoryWithIdentifier_actions_(self, v30, @"MessageExtension-RCS", v9);
  objc_msgSend_addObject_(v3, v32, v31, v33);
  v34 = MEMORY[0x1E6983218];
  v59[0] = v5;
  v59[1] = v6;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v35, v59, 2);
  v38 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_options_(v34, v37, @"MessageExtension-AudioRaise", v9, v36, 33554446);

  objc_msgSend_addObject_(v3, v39, v38, v40);
  v44 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v41, v42, v43);
  v48 = objc_msgSend_notificationCategories(v44, v45, v46, v47);
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v9;
  }

  v51 = v50;

  objc_msgSend_addObjectsFromArray_(v3, v52, v51, v53);

  return v3;
}

- (void)_setupCriticalNotifications
{
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2, v3);
  isCriticalAlertingEnabled = objc_msgSend_isCriticalAlertingEnabled(v5, v6, v7, v8);

  if (isCriticalAlertingEnabled)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B0A3A4;
    v10[3] = &unk_1E7CB6AE0;
    v10[4] = self;
    sub_1B7AF6150(v10);
  }
}

- (void)_setupMeContactAndTokens
{
  v5 = objc_msgSend__IMDContactStore(self, a2, v2, v3);
  v6 = IMMentionContactKeysForMe();
  v14 = 0;
  v8 = objc_msgSend__crossPlatformUnifiedMeContactWithKeysToFetch_error_(v5, v7, v6, &v14);

  v9 = IMMentionMeTokensForContact();
  objc_msgSend_setMeTokens_(self, v10, v9, v11);
  objc_msgSend_setMeContact_(self, v12, v8, v13);
}

- (id)madridCategoryWithIdentifier:(id)identifier actions:(id)actions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v19[0] = *MEMORY[0x1E696E698];
  v19[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  actionsCopy = actions;
  identifierCopy = identifier;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v19, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"MADRID_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, identifierCopy, actionsCopy, v11, v13, v15, 14);

  return v17;
}

- (id)madridGroupCategoryWithIdentifier:(id)identifier actions:(id)actions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v19[0] = *MEMORY[0x1E696E698];
  v19[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  actionsCopy = actions;
  identifierCopy = identifier;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v19, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"MADRID_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"GROUP_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, identifierCopy, actionsCopy, v11, v13, v15, 14);

  return v17;
}

- (id)madridBusinessCategoryWithIdentifier:(id)identifier actions:(id)actions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v19[0] = *MEMORY[0x1E696E698];
  v19[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  actionsCopy = actions;
  identifierCopy = identifier;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v19, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"MADRID_BUSINESS_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, identifierCopy, actionsCopy, v11, v13, v15, 14);

  return v17;
}

- (id)SMSCategoryWithIdentifier:(id)identifier actions:(id)actions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v19[0] = *MEMORY[0x1E696E698];
  v19[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  actionsCopy = actions;
  identifierCopy = identifier;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v19, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"TEXT_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, identifierCopy, actionsCopy, v11, v13, v15, 14);

  return v17;
}

- (id)RCSCategoryWithIdentifier:(id)identifier actions:(id)actions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v19[0] = *MEMORY[0x1E696E698];
  v19[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  actionsCopy = actions;
  identifierCopy = identifier;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v19, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"TEXT_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, identifierCopy, actionsCopy, v11, v13, v15, 14);

  return v17;
}

- (id)noRelayCategoryWithIdentifier:(id)identifier actions:(id)actions
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6983218];
  v6 = *MEMORY[0x1E696E6A0];
  v19[0] = *MEMORY[0x1E696E698];
  v19[1] = v6;
  v7 = MEMORY[0x1E695DEC8];
  actionsCopy = actions;
  identifierCopy = identifier;
  v11 = objc_msgSend_arrayWithObjects_count_(v7, v10, v19, 2);
  v13 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v12, @"TEXT_MESSAGE_FORMAT", 0);
  v15 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v14, @"SINGLE_SUMMARY_FORMAT", 0);
  v17 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v5, v16, identifierCopy, actionsCopy, v11, v13, v15, 14);

  return v17;
}

- (int64_t)_legacyDateForMessageWithRowIDPreference:(int64_t)preference
{
  v3 = IMDMessageRecordCopyMessageForRowID(preference);
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_rawDate(v3, v4, v5, v6);
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)_migrateLastedPostedPreferencesIfNeeded
{
  v39 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend__hasMigratedPreferences(self, a2, v2, v3) & 1) == 0)
  {
    v8 = objc_msgSend__legacyDatePreference(self, v5, v6, v7);
    v9 = IMDNotificationsControllerLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v35 = 138412290;
      v36 = v8;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "We have not migrated the SMSBBPlugin preferences to the new UserNotifications domain...doing so now with last posted date %@", &v35, 0xCu);
    }

    if (v8 && (v13 = objc_msgSend_integerValue(v8, v10, v11, v12)) != 0)
    {
      v14 = IMDNotificationsControllerLogHandle(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 138412290;
        v36 = v8;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "We are setting the date to be %@", &v35, 0xCu);
      }

      objc_msgSend__setLastPostedDateFromMigration_(self, v15, v8, v16);
    }

    else
    {
      v17 = objc_msgSend__legacyRowIDPreference(self, v10, v11, v12);
      v18 = IMDNotificationsControllerLogHandle(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "The SMSBBPlugin last posted date was null, so migrating the rowid", &v35, 2u);
      }

      if (v17 >= 1)
      {
        v21 = objc_msgSend__legacyDateForMessageWithRowIDPreference_(self, v19, v17, v20);
        v22 = IMDNotificationsControllerLogHandle(v21);
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v21 == -1)
        {
          if (v23)
          {
            v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v24, v17, v25);
            v35 = 138412290;
            v36 = v34;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "lastAlertedMessage is null for the old rowid: %@ -- this device hasn't posted any message notifications", &v35, 0xCu);
          }
        }

        else
        {
          if (v23)
          {
            v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v24, v17, v25);
            v29 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v27, v21, v28);
            v35 = 138412546;
            v36 = v26;
            v37 = 2112;
            v38 = v29;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "The last posted rowid is %@ and the date for that message is %@", &v35, 0x16u);
          }

          v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v30, v21, v31);
          objc_msgSend__setLastPostedDateFromMigration_(self, v32, v22, v33);
        }
      }
    }
  }

  objc_msgSend__setHasMigratedPreferenceTrue(self, v5, v6, v7);
}

- (void)_setupFirstLoad
{
  v29 = *MEMORY[0x1E69E9840];
  objc_msgSend__migrateLastedPostedPreferencesIfNeeded(self, a2, v2, v3);
  v5 = IMGetCachedDomainValueForKey();
  v9 = objc_msgSend_longLongValue(v5, v6, v7, v8);

  v10 = IMGetCachedDomainValueForKey();
  v14 = objc_msgSend_longLongValue(v10, v11, v12, v13);

  MostRecentMessageDate = IMDMessageRecordGetMostRecentMessageDate();
  if (v9 >= MostRecentMessageDate)
  {
    v16 = MostRecentMessageDate;
  }

  else
  {
    v16 = v9;
  }

  if (v14 >= MostRecentMessageDate)
  {
    v17 = MostRecentMessageDate;
  }

  else
  {
    v17 = v14;
  }

  if (MostRecentMessageDate == -1)
  {
    v16 = v9;
    v17 = v14;
  }

  self->_lastAlertedMessageDate = v16;
  self->_lastAlertedFailedMessageDate = v17;
  v18 = IMDNotificationsControllerLogHandle(MostRecentMessageDate);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v19, self->_lastAlertedMessageDate, v20);
    v24 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, self->_lastAlertedFailedMessageDate, v23);
    v25 = 138412546;
    v26 = v21;
    v27 = 2112;
    v28 = v24;
    _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Setup first load lastAlertedMessageDate %@ lastAlertedFailedMessageDate %@", &v25, 0x16u);
  }
}

- (int64_t)lastAlertedMessageDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastAlertedMessageDate = selfCopy->_lastAlertedMessageDate;
  objc_sync_exit(selfCopy);

  return lastAlertedMessageDate;
}

- (int64_t)lastAlertedFailedMessageDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastAlertedFailedMessageDate = selfCopy->_lastAlertedFailedMessageDate;
  objc_sync_exit(selfCopy);

  return lastAlertedFailedMessageDate;
}

- (void)_storeLastAlertedMessageDate:(int64_t)date
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B0B420;
  block[3] = &unk_1E7CB6A70;
  block[4] = date;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_storeLastAlertedFailedMessageDate:(int64_t)date
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B0B4F8;
  block[3] = &unk_1E7CB6A70;
  block[4] = date;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setLastAlertedMessageDate:(int64_t)date
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_lastAlertedMessageDate = date;
  AlertedMessageDate = objc_msgSend__storeLastAlertedMessageDate_(selfCopy, v5, date, v6);
  v8 = IMDNotificationsControllerLogHandle(AlertedMessageDate);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, selfCopy->_lastAlertedMessageDate, v10);
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "setting last alerted message date to %@", &v12, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (void)advanceLastAlertedMessageDate:(int64_t)date
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lastAlertedMessageDate < date)
  {
    objc_msgSend_setLastAlertedMessageDate_(obj, v4, date, v5);
  }

  objc_sync_exit(obj);
}

- (void)setLastAlertedFailedMessageDate:(int64_t)date
{
  obj = self;
  objc_sync_enter(obj);
  obj->_lastAlertedFailedMessageDate = date;
  objc_msgSend__storeLastAlertedFailedMessageDate_(obj, v4, date, v5);
  objc_sync_exit(obj);
}

- (void)advanceLastAlertedFailedMessageDate:(int64_t)date
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_lastAlertedFailedMessageDate < date)
  {
    objc_msgSend_setLastAlertedFailedMessageDate_(obj, v4, date, v5);
  }

  objc_sync_exit(obj);
}

- (id)_messages:(id)_messages newerThanDate:(int64_t)date
{
  v4 = MEMORY[0x1E696AE18];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B0B980;
  v13[3] = &unk_1E7CB6B20;
  v13[4] = date;
  _messagesCopy = _messages;
  v8 = objc_msgSend_predicateWithBlock_(v4, v6, v13, v7);
  v11 = objc_msgSend_filteredArrayUsingPredicate_(_messagesCopy, v9, v8, v10);

  return v11;
}

- (id)_userNotificationForParticipantChangeMessageRecord:(id)record
{
  v119 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  isKindOfClass = IMDCreateIMItemFromIMDMessageRecord(recordCopy, 0, 1, 0);
  v6 = isKindOfClass;
  if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v14 = IMDNotificationsControllerLogHandle(isKindOfClass);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECD5C();
    }

    goto LABEL_8;
  }

  v10 = objc_msgSend_changeType(v6, v7, v8, v9);
  if (v10)
  {
    v14 = IMDNotificationsControllerLogHandle(v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CECB70(v6, v14, v15, v16);
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v19 = objc_msgSend_isFromMe(v6, v11, v12, v13);
  if (v19)
  {
    v14 = IMDNotificationsControllerLogHandle(v19);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_1B7CECCE8();
    }

    goto LABEL_8;
  }

  v14 = objc_msgSend_chatRecord(recordCopy, v20, v21, v22);
  if (!v14)
  {
    v101 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECC50(recordCopy, v101, v102, v103);
    }

    goto LABEL_8;
  }

  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  v26 = objc_msgSend_synchronousDatabase(IMDDatabase, v23, v24, v25);
  v30 = objc_msgSend_guid(v14, v27, v28, v29);
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = sub_1B7B0BFEC;
  v108[3] = &unk_1E7CB6860;
  v108[4] = &v109;
  objc_msgSend_fetchScheduledMessageRecordsForChatRecordWithGUID_limit_completionHandler_(v26, v31, v30, 2, v108);

  if (v110[3])
  {
    v36 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v33, v34, v35);
    v40 = objc_msgSend_guid(recordCopy, v37, v38, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v41, v40, @"__kmessageGUIDKey");

    v45 = objc_msgSend_handleRecord(recordCopy, v42, v43, v44);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v46, v45, @"__kmessageHandleKey");

    v50 = objc_msgSend_handleRecord(recordCopy, v47, v48, v49);
    v53 = objc_msgSend__displayNameForHandle_(self, v51, v50, v52);

    v57 = objc_msgSend_otherHandleRecord(recordCopy, v54, v55, v56);
    v60 = objc_msgSend__displayNameForHandle_(self, v58, v57, v59);

    v61 = v110[3];
    v62 = MEMORY[0x1E696AEC0];
    v63 = IMSharedUtilitiesFrameworkBundle();
    v65 = v63;
    if (v61 <= 1)
    {
      objc_msgSend_localizedStringForKey_value_table_(v63, v64, @"NOTIFICATION_PARTICIPANT_CHANGE_SCHEDULED_MESSAGE_SINGULAR", &stru_1F2FA9728, @"IMSharedUtilities");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v63, v64, @"NOTIFICATION_PARTICIPANT_CHANGE_SCHEDULED_MESSAGE_PLURAL", &stru_1F2FA9728, @"IMSharedUtilities");
    }
    v66 = ;
    v69 = objc_msgSend_localizedStringWithFormat_(v62, v67, v66, v68, v53, v60);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v70, v69, @"__kmessageTextKey");

    v71 = MEMORY[0x1E696AD98];
    v75 = objc_msgSend_rawDate(recordCopy, v72, v73, v74);
    v78 = objc_msgSend_numberWithLongLong_(v71, v76, v75, v77);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v79, v78, @"__kmessageDateKey");

    v80 = MEMORY[0x1E696AD98];
    v84 = objc_msgSend_rawDate(recordCopy, v81, v82, v83);
    v87 = objc_msgSend_numberWithLongLong_(v80, v85, v84, v86);
    objc_msgSend_setObject_forKeyedSubscript_(v36, v88, v87, @"__kmessageDateDeliveredKey");

    v92 = objc_msgSend_handleRecord(recordCopy, v89, v90, v91);
    objc_msgSend__setContactInMessageDictionary_messageDictionary_(self, v93, v92, v36);

    v95 = IMDNotificationsControllerLogHandle(v94);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = v110[3];
      *buf = 138412802;
      v114 = v53;
      v115 = 2112;
      v116 = v60;
      v117 = 2048;
      v118 = v96;
      _os_log_impl(&dword_1B7AD5000, v95, OS_LOG_TYPE_DEFAULT, "%@ added %@ and chat has scheduled message count: %lu", buf, 0x20u);
    }

    buf[0] = 1;
    v99 = objc_msgSend__chatDictionaryForChatRecord_(self, v97, v14, v98);
    v17 = objc_msgSend__generateNotificationRequestForMessageRecord_messageDictionary_chatDictionary_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v100, 0, v36, v99, 0, 0, buf);
  }

  else
  {
    v36 = IMDNotificationsControllerLogHandle(v32);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v107 = objc_msgSend_guid(v14, v104, v105, v106);
      sub_1B7CECBF8(v107, buf, v36);
    }

    v17 = 0;
  }

  _Block_object_dispose(&v109, 8);
LABEL_9:

  return v17;
}

- (id)_userNotificationsForMessageRecords:(id)records newerThanDate:(int64_t)date isUrgentMessageTrigger:(BOOL)trigger isCarouselUITriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  triggerCopy = trigger;
  v89 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = triggerCopy;
  v73 = recordsCopy;
  if (triggerCopy)
  {
    v10 = recordsCopy;
  }

  else
  {
    v10 = objc_msgSend__messages_newerThanDate_(self, v9, recordsCopy, date);
  }

  v13 = objc_msgSend__messagesSortedByDate_(self, v11, v10, v12, v10);
  v17 = objc_msgSend_count(v13, v14, v15, v16);
  if (v17)
  {
    v21 = v17;
    v22 = 0;
    selfCopy = self;
    do
    {
      v23 = objc_autoreleasePoolPush();
      v26 = objc_msgSend_objectAtIndex_(v13, v24, v22, v25);
      v30 = objc_msgSend_rawDate(v26, v27, v28, v29);
      v31 = IMDNotificationsControllerLogHandle(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v32, v33, v34, v30);
        v39 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v36, v37, v38, date);
        *buf = 134218754;
        v82 = v30;
        v83 = 2112;
        v84 = v35;
        v85 = 2048;
        dateCopy = date;
        v87 = 2112;
        v88 = v39;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "iterating new messages for newMessageDate: [%lld]-[%@], last alerted date: [%lld]-[%@]", buf, 0x2Au);
      }

      v80 = 1;
      if (objc_msgSend_itemType(v26, v40, v41, v42) == 1)
      {
        objc_msgSend__userNotificationForParticipantChangeMessageRecord_(self, v43, v26, v44);
      }

      else
      {
        objc_msgSend__generateNotificationRequestForMessageRecord_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v43, v26, v75, triggeredCopy, &v80);
      }
      v45 = ;
      v48 = v45;
      if (v45)
      {
        v49 = IMDNotificationsControllerLogHandle(v45);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_identifier(v48, v50, v51, v52);
          v53 = v78 = v23;
          v57 = objc_msgSend_content(v48, v54, v55, v56);
          objc_msgSend_categoryIdentifier(v57, v58, v59, v60);
          v61 = v21;
          v63 = v62 = v13;
          *buf = 138412546;
          v82 = v53;
          v83 = 2112;
          v84 = v63;
          _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_DEFAULT, "Generated notification request for identifier %@ with category identifier %@", buf, 0x16u);

          self = selfCopy;
          v13 = v62;
          v21 = v61;

          v23 = v78;
        }

        objc_msgSend_advanceLastAlertedMessageDate_(self, v64, v30, v65);
        objc_msgSend_addObject_(v79, v66, v48, v67);
      }

      else if (v80 == 1)
      {
        objc_msgSend_advanceLastAlertedMessageDate_(self, v46, v30, v47);
      }

      objc_autoreleasePoolPop(v23);
      ++v22;
    }

    while (v21 != v22);
  }

  if (sub_1B7B0C380(v17, v18, v19, v20))
  {
    objc_msgSend_removeAllObjects(v79, v68, v69, v70);
  }

  return v79;
}

- (id)_userNotificationsForFailedDeliveryMessageRecords:(id)records isCarouselUITriggered:(BOOL)triggered
{
  v6 = objc_msgSend__messagesSortedByDate_(self, a2, records, triggered);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B0C4C0;
  v13[3] = &unk_1E7CB6B48;
  v13[4] = self;
  triggeredCopy = triggered;
  v8 = v7;
  v14 = v8;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v6, v9, 2, v13);
  v10 = v14;
  v11 = v8;

  return v8;
}

- (id)_messagePredicateForNewMessagesAfterDate:(int64_t)date
{
  v32[5] = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], a2, @"%K == 0", v3, *MEMORY[0x1E69A7190]);
  v32[0] = v6;
  v9 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v7, @"%K == 1", v8, *MEMORY[0x1E69A7180]);
  v32[1] = v9;
  v12 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v10, @"%K == 0", v11, *MEMORY[0x1E69A7188]);
  v32[2] = v12;
  v15 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v13, @"%K == 0", v14, *MEMORY[0x1E69A71B0]);
  v32[3] = v15;
  v18 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v16, @"%K == 0", v17, *MEMORY[0x1E69A71A0]);
  v32[4] = v18;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v32, 5);

  if (objc_msgSend__useDateInPredicate(self, v21, v22, v23))
  {
    v26 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v24, @"%K > %ld", v25, *MEMORY[0x1E69A7148], date);
    v29 = objc_msgSend_arrayByAddingObject_(v20, v27, v26, v28);

    v20 = v29;
  }

  v30 = objc_msgSend_andPredicateWithSubpredicates_(MEMORY[0x1E696AB28], v24, v20, v25);

  return v30;
}

- (void)__postNotifications
{
  v103 = *MEMORY[0x1E69E9840];
  v3 = IMDNotificationsControllerLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Post notifications after coalescing, background threading", buf, 2u);
  }

  FailedMessageDate = IMDMessageRecordLastFailedMessageDate();
  v80 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  AlertedMessageDate = objc_msgSend_lastAlertedMessageDate(self, v5, v6, v7);
  AlertedFailedMessageDate = objc_msgSend_lastAlertedFailedMessageDate(self, v9, v10, v11);
  v13 = IMGetCachedDomainValueForKey();
  v17 = objc_msgSend___im_nanosecondTimeInterval(v13, v14, v15, v16);

  v19 = IMDNotificationsControllerLogHandle(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_msgSend_count(v80, v20, v21, v22);
    v27 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v24, v25, v26, AlertedMessageDate);
    v31 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v28, v29, v30, AlertedFailedMessageDate);
    v35 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v32, v33, v34, FailedMessageDate);
    *buf = 134219522;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = AlertedMessageDate;
    *&buf[22] = 2112;
    v97 = v27;
    *v98 = 2048;
    *&v98[2] = AlertedFailedMessageDate;
    *&v98[10] = 2112;
    *&v98[12] = v31;
    v99 = 2048;
    v100 = FailedMessageDate;
    v101 = 2112;
    v102 = v35;
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "new participant changes number: [%lu] lastAlertedDate: [%lld]-[%@] lastFailedMessageAlertDate: [%lld]-[%@] lastFailedMessageDate: [%lld]-[%@]", buf, 0x48u);
  }

  if (FailedMessageDate > AlertedFailedMessageDate || v17 > AlertedFailedMessageDate)
  {
    v39 = objc_msgSend__failedMessageRecordsAfterDateInNanoseconds_(self, v36, AlertedFailedMessageDate, v37);
    v38 = objc_msgSend__userNotificationsForFailedDeliveryMessageRecords_isCarouselUITriggered_(self, v40, v39, 0);
  }

  else
  {
    v38 = 0;
  }

  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v97 = sub_1B7AE18F4;
  *v98 = sub_1B7AE2470;
  *&v98[8] = MEMORY[0x1E695E0F0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B0CE80;
  aBlock[3] = &unk_1E7CB6B70;
  v86 = &v89;
  aBlock[4] = self;
  v41 = v80;
  v87 = buf;
  v88 = AlertedMessageDate;
  v85 = v41;
  v42 = _Block_copy(aBlock);
  if (objc_msgSend__useBatchFetcherForNotificationPosting(self, v43, v44, v45))
  {
    v46 = [IMDMessageRecordBatchFetcher alloc];
    v50 = objc_msgSend__chatPredicateForNewMessages(self, v47, v48, v49);
    v52 = objc_msgSend_initWithChatPredicate_sortAscending_(v46, v51, v50, 0);

    v55 = objc_msgSend__messagePredicateForNewMessagesAfterDate_(self, v53, AlertedMessageDate, v54);
    objc_msgSend_setPredicate_(v52, v56, v55, v57);

    do
    {
      v61 = objc_msgSend_nextBatch(v52, v58, v59, v60);
      v62 = v42[2](v42, v61);
    }

    while ((v62 & 1) != 0);
  }

  else
  {
    v52 = IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID(-1, 0);
    v42[2](v42, v52);
  }

  v64 = IMDNotificationsControllerLogHandle(v63);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    v65 = v90[3];
    LODWORD(v93) = 134217984;
    *(&v93 + 4) = v65;
    _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_DEFAULT, "new messages number: [%lu]", &v93, 0xCu);
  }

  if (v90[3] <= 0 && !objc_msgSend_count(v38, v66, v67, v68))
  {
    *&v93 = 0;
    *(&v93 + 1) = &v93;
    v94 = 0x2020000000;
    v95 = 0;
    v71 = objc_msgSend__useBatchFetcherForNotificationPosting(self, v66, v69, v70);
    if (v71)
    {
      v75 = objc_msgSend_synchronousDatabase(IMDDatabase, v72, v73, v74);
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = sub_1B7B0CF4C;
      v83[3] = &unk_1E7CB6B98;
      v83[4] = &v93;
      objc_msgSend_fetchUnreadIncomingMessagesCount_(v75, v76, v83, v77);

      if (!*(*(&v93 + 1) + 24))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v78 = v90[3];
      *(*(&v93 + 1) + 24) = v78;
      if (!v78)
      {
LABEL_24:
        v79 = IMDNotificationsControllerLogHandle(v71);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *v82 = 0;
          _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_DEFAULT, "Queuing retraction of all delivered notifications, as we had nothing unread.", v82, 2u);
        }

        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = sub_1B7B0CF5C;
        v81[3] = &unk_1E7CB6AE0;
        v81[4] = self;
        sub_1B7AF6150(v81);
      }
    }

    _Block_object_dispose(&v93, 8);
    goto LABEL_19;
  }

  objc_msgSend__postUnreadNotificationRequests_failedNotificationRequests_(self, v66, *(*&buf[8] + 40), v38);
LABEL_19:

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v89, 8);
}

- (void)_removeAllDeliveredMessageNotifications
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = IMDNotificationsControllerLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Retracting all unread message notifications", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  selfCopy = self;
  v8 = objc_msgSend_notificationCenter(self, v5, v6, v7);
  v12 = objc_msgSend_deliveredNotifications(v8, v9, v10, v11);

  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v51, v56, 16);
  if (v14)
  {
    v18 = v14;
    v19 = *v52;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v52 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v51 + 1) + 8 * i);
        v22 = objc_msgSend_request(v21, v15, v16, v17);
        v26 = objc_msgSend_content(v22, v23, v24, v25);

        v30 = objc_msgSend_categoryIdentifier(v26, v27, v28, v29);
        hasPrefix = objc_msgSend_hasPrefix_(v30, v31, @"MessageExtension", v32);

        if (hasPrefix)
        {
          v37 = objc_msgSend_request(v21, v34, v35, v36);
          v41 = objc_msgSend_identifier(v37, v38, v39, v40);
          objc_msgSend_addObject_(v4, v42, v41, v43);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v51, v56, 16);
    }

    while (v18);
  }

  v47 = objc_msgSend_notificationCenter(selfCopy, v44, v45, v46);
  objc_msgSend_removeDeliveredNotificationsWithIdentifiers_(v47, v48, v4, v49);
}

- (id)_failedMessageRecordsAfterDateInNanoseconds:(int64_t)nanoseconds
{
  v40[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = IMDMessageRecordCopyNewestFailedOutgoingMessagesToLimitAfterDate(10, nanoseconds);
  objc_msgSend_addObjectsFromArray_(v4, v6, v5, v7);
  v10 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v8, @"%K = %@", v9, *MEMORY[0x1E69A71C8], MEMORY[0x1E695E118]);
  v11 = MEMORY[0x1E696AE18];
  v12 = *MEMORY[0x1E69A7148];
  v16 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v13, v14, v15, nanoseconds);
  v19 = objc_msgSend_predicateWithFormat_(v11, v17, @"%K > %@", v18, v12, v16);

  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v24 = objc_msgSend_synchronousDatabase(IMDDatabase, v21, v22, v23);
  v25 = MEMORY[0x1E696AB28];
  v40[0] = v10;
  v40[1] = v19;
  v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v40, 2);
  v30 = objc_msgSend_andPredicateWithSubpredicates_(v25, v28, v27, v29);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1B7B0D394;
  v37[3] = &unk_1E7CB6BC0;
  v38 = v20;
  v31 = v4;
  v39 = v31;
  v32 = v20;
  objc_msgSend_fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_limit_completionHandler_(v24, v33, v30, 0, 10, v37);

  v34 = v39;
  v35 = v31;

  return v31;
}

- (void)_postUnreadNotificationRequests:(id)requests failedNotificationRequests:(id)notificationRequests
{
  requestsCopy = requests;
  notificationRequestsCopy = notificationRequests;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B0D5C4;
  v10[3] = &unk_1E7CB6798;
  v11 = requestsCopy;
  v12 = notificationRequestsCopy;
  selfCopy = self;
  v8 = notificationRequestsCopy;
  v9 = requestsCopy;
  sub_1B7AF6150(v10);
}

- (void)_postUrgentNotificationRequests:(id)requests
{
  requestsCopy = requests;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B0D6F0;
  v6[3] = &unk_1E7CB6770;
  v6[4] = self;
  v7 = requestsCopy;
  v5 = requestsCopy;
  sub_1B7AF6150(v6);
}

- (void)_postNotificationRequests:(id)requests isMostActiveDevice:(BOOL)device
{
  requestsCopy = requests;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B0D7CC;
  v8[3] = &unk_1E7CB6BE8;
  v8[4] = self;
  v9 = requestsCopy;
  deviceCopy = device;
  v7 = requestsCopy;
  sub_1B7AF6150(v8);
}

- (void)__postNotificationRequests:(id)requests isMostActiveDevice:(BOOL)device
{
  v54 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v10 = objc_msgSend_notificationCenter(self, v7, v8, v9);
  v14 = objc_msgSend_deliveredNotifications(v10, v11, v12, v13);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = requestsCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v49, v53, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v50;
    v42 = v46;
    do
    {
      v19 = 0;
      do
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * v19);
        if (!device)
        {
          v23 = objc_msgSend__requestForNonMostActiveDeviceRequest_(self, v20, v22, v21, v42);

          v22 = v23;
        }

        if (objc_msgSend__shouldPostNotificationRequest_withCurrentlyPostedNotifications_(self, v20, v22, v14, v42))
        {
          v24 = dispatch_semaphore_create(0);
          v28 = objc_msgSend_notificationCenter(self, v25, v26, v27);
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v46[0] = sub_1B7B0DA84;
          v46[1] = &unk_1E7CB6C10;
          v29 = v22;
          v47 = v29;
          v30 = v24;
          v48 = v30;
          objc_msgSend_addNotificationRequest_withCompletionHandler_(v28, v31, v29, v45);

          v32 = dispatch_time(0, 3000000000);
          v33 = dispatch_semaphore_wait(v30, v32);
          if (v33)
          {
            v34 = IMDNotificationsControllerLogHandle(v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_DEFAULT, "timeout waiting for completionHandler from UNNotificationCenter", buf, 2u);
            }
          }
        }

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v35, &v49, v53, 16);
    }

    while (v17);
  }

  v39 = objc_msgSend_notificationCenter(self, v36, v37, v38);
  objc_msgSend_getNotificationSettingsWithCompletionHandler_(v39, v40, &unk_1F2FA0910, v41);
}

- (id)_requestForNonMostActiveDeviceRequest:(id)request
{
  requestCopy = request;
  v7 = objc_msgSend_content(requestCopy, v4, v5, v6);
  v11 = objc_msgSend_mutableCopy(v7, v8, v9, v10);

  v13 = IMDNotificationsControllerLogHandle(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Coordinated Alerts -- this is not the most active device, suppressing the screen from lighting up and not playing sound for message", buf, 2u);
  }

  objc_msgSend_setShouldIgnoreDoNotDisturb_(v11, v14, 0, v15);
  objc_msgSend_setShouldSuppressScreenLightUp_(v11, v16, 1, v17);
  v20 = objc_msgSend_setSound_(v11, v18, 0, v19);
  v21 = IMDNotificationsControllerLogHandle(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 0;
    _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "Coordinated Alerts -- this is not the most active device, suppressing spoken messages", v46, 2u);
  }

  if (objc_msgSend_interruptionLevel(v11, v22, v23, v24) == 3)
  {
    objc_msgSend_setShouldSuppressScreenLightUp_(v11, v25, 0, v27);
    v31 = objc_msgSend_sound(v11, v28, v29, v30);
    if (!v31 || (v32 = v31, objc_msgSend_sound(v11, v25, v26, v27), v33 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend_alertType(v33, v34, v35, v36), v33, v32, v37 == 2))
    {
      v38 = objc_msgSend_defaultCriticalSound(MEMORY[0x1E69832B8], v25, v26, v27);
      objc_msgSend_setSound_(v11, v39, v38, v40);
    }
  }

  v41 = MEMORY[0x1E6983298];
  v42 = objc_msgSend_identifier(requestCopy, v25, v26, v27);
  v44 = objc_msgSend_requestWithIdentifier_content_trigger_destinations_(v41, v43, v42, v11, 0, 15);

  return v44;
}

- (void)postNotificationsWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = IMDNotificationsControllerLogHandle(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = contextCopy;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Post notifications called from client with context %@", &v19, 0xCu);
  }

  if (objc_msgSend__haveMigrated(self, v6, v7, v8))
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(contextCopy, v9, @"IMActiveAccountAliasesKey", v10);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v12, v11, v14);
      objc_msgSend_setActiveAccountAliases_(self, v16, v15, v17);
    }

    objc_msgSend___postNotifications(self, v12, v13, v14);
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "We don't post notifications during system migration", &v19, 2u);
    }
  }
}

- (void)retractNotificationsForReadMessages:(id)messages
{
  v11 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v5 = IMDNotificationsControllerLogHandle(messagesCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = messagesCopy;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Withdrawing message notifications for message guids %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B0E0F0;
  v7[3] = &unk_1E7CB6770;
  v7[4] = self;
  v8 = messagesCopy;
  v6 = messagesCopy;
  sub_1B7AF6150(v7);
}

- (void)repostNotificationsFromFirstUnlockWithContext:(id)context
{
  contextCopy = context;
  v5 = IMDNotificationsControllerLogHandle(contextCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Retract and re-post iMessage notifications sent before first unlock", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B0E294;
  v7[3] = &unk_1E7CB6770;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  sub_1B7AF6150(v7);
}

- (void)postUrgentNotificationForMessages:(id)messages withContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  contextCopy = context;
  v8 = IMDNotificationsControllerLogHandle(contextCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = messagesCopy;
    v20 = 2112;
    v21 = contextCopy;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "We need to post these urgent message requests %@ with context %@", &v18, 0x16u);
  }

  v9 = IMDMessageRecordCopyMessagesForGUIDs(messagesCopy);
  AlertedMessageDate = objc_msgSend_lastAlertedMessageDate(self, v10, v11, v12);
  v15 = objc_msgSend__userNotificationsForMessageRecords_newerThanDate_isUrgentMessageTrigger_isCarouselUITriggered_(self, v14, v9, AlertedMessageDate, 1, 0);
  objc_msgSend__postUrgentNotificationRequests_(self, v16, v15, v17);
}

- (void)updatePostedNotificationsForMessages:(id)messages withContext:(id)context
{
  v54 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  v6 = IMDNotificationsControllerLogHandle(messagesCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = messagesCopy;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Updating posted notifications for messages %@", buf, 0xCu);
  }

  v41 = messagesCopy;
  v7 = IMDMessageRecordCopyMessagesForGUIDs(messagesCopy);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v47, v51, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v48;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v46 = 0;
        v17 = objc_msgSend__generateNotificationRequestForMessageRecord_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v12, v16, 0, 0, &v46, v41);
        v21 = v17;
        if (v17)
        {
          v22 = objc_msgSend_identifier(v17, v18, v19, v20);
          v23 = IMDNotificationsControllerLogHandle(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v22;
            _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Generated an updated notification request for notification: %@", buf, 0xCu);
          }

          v27 = objc_msgSend_content(v21, v24, v25, v26);
          if (objc_msgSend_length(v22, v28, v29, v30))
          {
            v32 = v27 == 0;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v8, v31, v27, v22);
          }
        }

        else
        {
          v22 = objc_msgSend_guid(v16, v18, v19, v20);
          v33 = IMDNotificationsControllerLogHandle(v22);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v22;
            _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_DEFAULT, "Could not generate an updated notification request for edited message, message may have been retracted. Retracting outstanding notifications for messageGUID: %@", buf, 0xCu);
          }

          if (objc_msgSend_length(v22, v34, v35, v36))
          {
            objc_msgSend_addObject_(v42, v37, v22, v38);
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v47, v51, 16);
    }

    while (v13);
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1B7B0E7B8;
  v43[3] = &unk_1E7CB6798;
  v43[4] = self;
  v44 = v8;
  v45 = v42;
  v39 = v42;
  v40 = v8;
  sub_1B7AF6150(v43);
}

- (void)postFirstUnlockMessage:(id)message forIdentifier:(id)identifier
{
  v49 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  if ((sub_1B7B0C380(identifierCopy, v8, v9, v10) & 1) == 0)
  {
    if (messageCopy)
    {
      v11 = IMSharedUtilitiesFrameworkBundle();
      v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"MADRID_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities");

      v14 = objc_alloc_init(MEMORY[0x1E6983220]);
      objc_msgSend_setTitle_(v14, v15, identifierCopy, v16);
      objc_msgSend_setBody_(v14, v17, v13, v18);
      objc_msgSend_setCategoryIdentifier_(v14, v19, @"MessageExtension-Madrid", v20);
      objc_msgSend_setThreadIdentifier_(v14, v21, identifierCopy, v22);
      v26 = objc_msgSend_userInfo(v14, v23, v24, v25);
      Mutable = objc_msgSend_mutableCopy(v26, v27, v28, v29);

      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      CFDictionarySetValue(Mutable, @"CKBBContextKeyMessageGUID", messageCopy);
      CFDictionarySetValue(Mutable, @"CKBBContextKeyIsFirstUnlock", MEMORY[0x1E695E118]);
      objc_msgSend_setUserInfo_(v14, v31, Mutable, v32);
      v35 = objc_msgSend_triggerWithTimeInterval_repeats_(MEMORY[0x1E6983300], v33, 0, v34, 0.1);
      v37 = objc_msgSend_requestWithIdentifier_content_trigger_(MEMORY[0x1E6983298], v36, messageCopy, v14, v35);
      v38 = IMDNotificationsControllerLogHandle(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v46 = v37;
        v47 = 2112;
        v48 = v14;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "adding notification request under first unlock %@ with content %@", buf, 0x16u);
      }

      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = sub_1B7B0EDB4;
      v42[3] = &unk_1E7CB6798;
      v42[4] = self;
      v43 = v37;
      v44 = v14;
      v39 = v14;
      v40 = v37;
      sub_1B7AF6150(v42);
    }

    else if (IMOSLoggingEnabled())
    {
      v41 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v46 = "[IMDNotificationsController postFirstUnlockMessage:forIdentifier:]";
        _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "IMDNotificationsController - %s asked to post notification with nil messageGUID", buf, 0xCu);
      }
    }
  }
}

- (void)postSharePlayNotificationForChatGUID:(id)d faceTimeConversationUUID:(id)iD handleIdentifier:(id)identifier localizedApplicationName:(id)name
{
  v115 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  nameCopy = name;
  v14 = IMDNotificationsControllerLogHandle(nameCopy);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (dCopy && iDCopy && identifierCopy)
  {
    if (v15)
    {
      buf = 138412802;
      v110 = dCopy;
      v111 = 2112;
      v112 = identifierCopy;
      v113 = 2112;
      v114 = nameCopy;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Posting SharePlay notification for chat GUID %@ and handle identifier %@ with app name %@", &buf, 0x20u);
    }

    v16 = IMDChatRecordCopyChatForGUID(dCopy);
    v14 = v16;
    if (!v16)
    {
      v27 = IMDNotificationsControllerLogHandle(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        buf = 138412290;
        v110 = dCopy;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "No chat record for guid: %@", &buf, 0xCu);
      }

      goto LABEL_38;
    }

    v100 = nameCopy;
    v101 = dCopy;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v20 = objc_msgSend_handleRecords(v16, v17, v18, v19);
    v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v103, v108, 16);
    if (v22)
    {
      v26 = v22;
      v98 = iDCopy;
      selfCopy = self;
      v27 = 0;
      v28 = *v104;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v104 != v28)
          {
            objc_enumerationMutation(v20);
          }

          v30 = *(*(&v103 + 1) + 8 * i);
          v31 = objc_msgSend_canonicalizedURIString(v30, v23, v24, v25);
          isEqualToString = objc_msgSend_isEqualToString_(v31, v32, identifierCopy, v33);

          if (isEqualToString)
          {
            v35 = v30;

            v27 = v35;
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v103, v108, 16);
      }

      while (v26);

      iDCopy = v98;
      if (v27)
      {
        v40 = objc_msgSend_date(MEMORY[0x1E695DF00], v37, v38, v39);
        v97 = objc_msgSend___im_nanosecondTimeInterval(v40, v41, v42, v43);

        v47 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v44, v45, v46);
        v50 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v48, @"%@-%@", v49, v101, v98);
        objc_msgSend_setObject_forKeyedSubscript_(v47, v51, v50, @"__kmessageGUIDKey");

        objc_msgSend_setObject_forKeyedSubscript_(v47, v52, v27, @"__kmessageHandleKey");
        if (v100)
        {
          v53 = MEMORY[0x1E696AEC0];
          v54 = IMSharedUtilitiesFrameworkBundle();
          v56 = objc_msgSend_localizedStringForKey_value_table_(v54, v55, @"SharePlay “%@” Together", &stru_1F2FA9728, @"IMSharedUtilities");
          v59 = objc_msgSend_localizedStringWithFormat_(v53, v57, v56, v58, v100);
          objc_msgSend_setObject_forKeyedSubscript_(v47, v60, v59, @"__kmessageTextKey");
        }

        else
        {
          v54 = IMSharedUtilitiesFrameworkBundle();
          v56 = objc_msgSend_localizedStringForKey_value_table_(v54, v61, @"SharePlay Together", &stru_1F2FA9728, @"IMSharedUtilities");
          objc_msgSend_setObject_forKeyedSubscript_(v47, v62, v56, @"__kmessageTextKey");
        }

        v65 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v63, v97, v64);
        objc_msgSend_setObject_forKeyedSubscript_(v47, v66, v65, @"__kmessageDateKey");

        v69 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v67, v97, v68);
        objc_msgSend_setObject_forKeyedSubscript_(v47, v70, v69, @"__kmessageDateDeliveredKey");

        objc_msgSend__setContactInMessageDictionary_messageDictionary_(selfCopy, v71, v27, v47);
        v74 = objc_msgSend__chatDictionaryForChatRecord_(selfCopy, v72, v14, v73);
        v102 = 1;
        v76 = objc_msgSend__generateNotificationRequestForMessageRecord_messageDictionary_chatDictionary_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(selfCopy, v75, 0, v47, v74, 0, 0, &v102);
        v77 = IMDNotificationsControllerLogHandle(v76);
        v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
        if (v76)
        {
          v96 = v74;
          dCopy = v101;
          if (v78)
          {
            v82 = objc_msgSend_identifier(v76, v79, v80, v81);
            v95 = objc_msgSend_content(v76, v83, v84, v85);
            v89 = objc_msgSend_categoryIdentifier(v95, v86, v87, v88);
            buf = 138412546;
            v110 = v82;
            v111 = 2112;
            v112 = v89;
            _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_DEFAULT, "Generated notification request for identifier %@ with category identifier %@", &buf, 0x16u);
          }

          v107 = v76;
          v91 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v90, &v107, 1);
          objc_msgSend__postNotificationRequests_isMostActiveDevice_(selfCopy, v92, v91, 1);

          v74 = v96;
          if (v102 == 1)
          {
            objc_msgSend_advanceLastAlertedMessageDate_(selfCopy, v93, v97, v94);
          }
        }

        else
        {
          dCopy = v101;
          if (v78)
          {
            buf = 138412546;
            v110 = v101;
            v111 = 2112;
            v112 = identifierCopy;
            _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_DEFAULT, "Failed to generate SharePlay notification request for chat GUID %@ and handle identifier %@", &buf, 0x16u);
          }
        }

LABEL_37:
        nameCopy = v100;
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
    }

    v27 = IMDNotificationsControllerLogHandle(v36);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      buf = 138412290;
      v110 = identifierCopy;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "No handle record for identifier: %@", &buf, 0xCu);
    }

    dCopy = v101;
    goto LABEL_37;
  }

  if (v15)
  {
    buf = 138412802;
    v110 = dCopy;
    v111 = 2112;
    v112 = iDCopy;
    v113 = 2112;
    v114 = identifierCopy;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Not posting SharePlay notification because chatGUID (%@), faceTimeConversationUUID (%@), or handleIdentifier (%@) were missing.", &buf, 0x20u);
  }

LABEL_39:
}

- (BOOL)_isRaiseGestureEnabled
{
  v4 = objc_msgSend_defaultsSharedInstance(self, a2, v2, v3);
  v6 = objc_msgSend_getValueFromDomain_forKey_(v4, v5, @"com.apple.MobileSMS", @"RaiseToListenEnabled");

  if (v6)
  {
    v11 = objc_msgSend_BOOLValue(v6, v8, v9, v10);
  }

  else
  {
    v12 = IMDNotificationsControllerLogHandle(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "We have never set the raise to listen default, marking it as enabled", v14, 2u);
    }

    v11 = 1;
  }

  return v11;
}

- (id)_dateForMessage:(id)message
{
  v4 = objc_msgSend_objectForKey_(message, a2, @"__kmessageDateKey", v3);
  v8 = objc_msgSend_longLongValue(v4, v5, v6, v7);

  v12 = MEMORY[0x1E695DF00];

  return objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(v12, v9, v10, v11, v8);
}

- (void)_populateBasicNotificationIdentifyingContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary isCarouselUITriggered:(BOOL)triggered
{
  v117 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  v109 = objc_msgSend__dateForMessage_(self, v12, messageDictionaryCopy, v13);
  objc_msgSend_setDate_(contentCopy, v14, v109, v15);
  v110 = dictionaryCopy;
  v18 = objc_msgSend_objectForKey_(dictionaryCopy, v16, @"__kchatChatIdentifierKey", v17);
  v21 = objc_msgSend_objectForKey_(messageDictionaryCopy, v19, @"__kmessageServiceKey", v20);
  isEqualToString = objc_msgSend_isEqualToString_(v21, v22, *MEMORY[0x1E69A7AE0], v23);

  v27 = objc_msgSend_objectForKey_(messageDictionaryCopy, v25, @"__kmessageServiceKey", v26);
  v30 = objc_msgSend_isEqualToString_(v27, v28, *MEMORY[0x1E69A7AD8], v29);

  IsBusiness = objc_msgSend__messageIsBusiness_(self, v31, messageDictionaryCopy, v32);
  v36 = IsBusiness;
  v37 = 0;
  v38 = isEqualToString | v30;
  if ((v38 & 1) == 0 && (IsBusiness & 1) == 0)
  {
    if (objc_msgSend__amIMentionedInMessage_(self, v34, messageDictionaryCopy, v35))
    {
      objc_msgSend_objectForKey_(messageDictionaryCopy, v39, @"__kmessageGUIDKey", v40);
      v37 = LABEL_7:;
      goto LABEL_12;
    }

    v41 = objc_msgSend_objectForKey_(messageDictionaryCopy, v39, @"__kmessageAssociatedMessageTypeKey", v40);
    v45 = objc_msgSend_longLongValue(v41, v42, v43, v44);

    if ((v45 - 2000) <= 0x3EE)
    {
      objc_msgSend_objectForKey_(messageDictionaryCopy, v46, @"__kmessageAssociatedMessageGUIDKey", v47);
      goto LABEL_7;
    }

    v48 = objc_msgSend_objectForKey_(messageDictionaryCopy, v46, @"__kmessageBalloonBundleIDKey", v47);
    v49 = IMBalloonExtensionIDWithSuffix();
    v107 = v48;
    LODWORD(v48) = objc_msgSend_isEqualToString_(v48, v50, v49, v51);

    v37 = 0;
    if (v48 && v45 == 4000)
    {
      v37 = objc_msgSend_objectForKey_(messageDictionaryCopy, v52, @"__kmessageAssociatedMessageGUIDKey", v53);
    }
  }

LABEL_12:
  v108 = v37;
  v54 = objc_msgSend___im_URLForChatIdentifier_entryBody_messageGUID_sourceID_(MEMORY[0x1E695DFF8], v34, v18, 0, v37, @"notification");
  v57 = objc_msgSend_objectForKey_(messageDictionaryCopy, v55, @"__kmessageFlagsKey", v56);
  v61 = objc_msgSend_unsignedLongLongValue(v57, v58, v59, v60);

  if ((v61 & 0x200000) == 0)
  {
    v65 = v54;
    objc_msgSend_setDefaultActionURL_(contentCopy, v62, v54, v64);
LABEL_18:
    v78 = objc_msgSend_objectForKey_(v110, v66, @"__kchatStyleKey", v67);
    v82 = objc_msgSend_longLongValue(v78, v79, v80, v81);

    if (v38)
    {
      if (isEqualToString)
      {
        objc_msgSend_setCategoryIdentifier_(contentCopy, v83, @"MessageExtension-SMS", v84);
      }

      else
      {
        objc_msgSend_setCategoryIdentifier_(contentCopy, v83, @"MessageExtension-RCS", v84);
      }

      v85 = MEMORY[0x1B8CAF9D0](v18);
      v54 = v65;
      if (v85)
      {
        v86 = IMDNotificationsControllerLogHandle(v85);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v86, OS_LOG_TYPE_DEFAULT, "Do not relay notification", buf, 2u);
        }

        v85 = objc_msgSend_setCategoryIdentifier_(contentCopy, v87, @"MessageExtension-NoRelay", v88);
      }
    }

    else if (v36)
    {
      v85 = objc_msgSend_setCategoryIdentifier_(contentCopy, v83, @"MessageExtension-MadridBusiness", v84);
      v54 = v65;
    }

    else
    {
      v54 = v65;
      if (v82 == 43)
      {
        v85 = objc_msgSend_setCategoryIdentifier_(contentCopy, v83, @"MessageExtension-MadridGroup", v84);
      }

      else
      {
        v85 = objc_msgSend_setCategoryIdentifier_(contentCopy, v83, @"MessageExtension-Madrid", v84);
      }
    }

    v89 = IMDNotificationsControllerLogHandle(v85);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v89, OS_LOG_TYPE_DEFAULT, "This was not an audio message", buf, 2u);
    }

    goto LABEL_34;
  }

  isRaiseGestureEnabled = objc_msgSend__isRaiseGestureEnabled(self, v62, v63, v64);
  v65 = v54;
  v71 = objc_msgSend_setDefaultActionURL_(contentCopy, v69, v54, v70);
  if (!isRaiseGestureEnabled)
  {
    goto LABEL_18;
  }

  v72 = IMDNotificationsControllerLogHandle(v71);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_DEFAULT, "We got an audio message and raise to listen is enabled setting audio notification category", buf, 2u);
  }

  objc_msgSend_setCategoryIdentifier_(contentCopy, v73, @"MessageExtension-AudioRaise", v74);
LABEL_34:
  if (objc_msgSend_length(v18, v75, v76, v77))
  {
    v92 = objc_msgSend_setThreadIdentifier_(contentCopy, v90, v18, v91);
  }

  else
  {
    v93 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CECF08();
    }
  }

  v94 = IMDNotificationsControllerLogHandle(v92);
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    v98 = objc_msgSend_date(contentCopy, v95, v96, v97);
    v102 = objc_msgSend_categoryIdentifier(contentCopy, v99, v100, v101);
    v106 = objc_msgSend_threadIdentifier(contentCopy, v103, v104, v105);
    *buf = 138412802;
    v112 = v98;
    v113 = 2112;
    v114 = v102;
    v115 = 2112;
    v116 = v106;
    _os_log_impl(&dword_1B7AD5000, v94, OS_LOG_TYPE_DEFAULT, "Setting the date %@ category identifier %@ thread identifier %@", buf, 0x20u);
  }
}

- (void)_populateBodyForNotificationContent:(id)content messageDictionary:(id)dictionary
{
  v75 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"__kmessageAttributedBodyKey", v8);
  v16 = objc_msgSend___im_richCardsPreviewText(v9, v10, v11, v12);
  if (!v16)
  {
    v19 = objc_msgSend___im_suggestedReplyPreviewText(v9, v13, v14, v15);
    if (v19)
    {
      objc_msgSend_setBody_(contentCopy, v17, v19, v18);
LABEL_18:

      goto LABEL_19;
    }

    v20 = objc_msgSend_objectForKey_(dictionaryCopy, v17, @"__kmessageExpressiveSendStyleIDKey", v18);
    if (objc_msgSend_isEqualToString_(v20, v21, *MEMORY[0x1E69A7088], v22))
    {
      v72 = v20;
      v25 = MEMORY[0x1E696AEC0];
      v26 = IMSharedUtilitiesFrameworkBundle();
      v28 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Message sent with Invisible Ink", &stru_1F2FA9728, @"IMSharedUtilities");
      v31 = objc_msgSend_localizedStringWithFormat_(v25, v29, v28, v30);

      v33 = *MEMORY[0x1E69A5F00];
      v34 = *MEMORY[0x1E69A5F20];
    }

    else
    {
      v31 = objc_msgSend_objectForKey_(dictionaryCopy, v23, @"__kmessageTextKey", v24);
      if (!objc_msgSend_length(v31, v48, v49, v50))
      {
        v69 = objc_msgSend_objectForKey_(dictionaryCopy, v51, @"__kmessageGUIDKey", v52);
        v70 = v69;
        if (v69)
        {
          v71 = IMDNotificationsControllerLogHandle(v69);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = v70;
            _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_DEFAULT, "We don't have a message body for message guid %@", buf, 0xCu);
          }
        }

        else
        {
          v71 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CECF78();
          }
        }

        goto LABEL_17;
      }

      v72 = v20;
      v41 = objc_alloc_init(MEMORY[0x1E696AD48]);
      v33 = *MEMORY[0x1E69A5F00];
      objc_msgSend_addCharactersInString_(v41, v53, *MEMORY[0x1E69A5F00], v54);
      v34 = *MEMORY[0x1E69A5F20];
      objc_msgSend_addCharactersInString_(v41, v55, *MEMORY[0x1E69A5F20], v56);
      if (!objc_msgSend_length(v31, v57, v58, v59))
      {
LABEL_14:
        v47 = 0;
        goto LABEL_15;
      }

      v62 = 0;
      while (1)
      {
        v63 = objc_msgSend_characterAtIndex_(v31, v60, v62, v61);
        if ((objc_msgSend_characterIsMember_(v41, v64, v63, v65) & 1) == 0)
        {
          break;
        }

        if (++v62 >= objc_msgSend_length(v31, v66, v67, v68))
        {
          goto LABEL_14;
        }
      }
    }

    v35 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v31, v32, v33, @" ");
    v37 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v35, v36, v34, &stru_1F2FA9728);
    v39 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v37, v38, *MEMORY[0x1E69A6CF0], &stru_1F2FA9728);
    v41 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v39, v40, *MEMORY[0x1E69A78B0], &stru_1F2FA9728);

    if (objc_msgSend_length(v41, v42, v43, v44) < 0x3E9)
    {
LABEL_16:
      objc_msgSend_setBody_(contentCopy, v45, v41, v46);

      v20 = v72;
LABEL_17:

      goto LABEL_18;
    }

    v47 = objc_msgSend_substringToIndex_(v41, v45, 1000, v46);
LABEL_15:

    v41 = v47;
    goto LABEL_16;
  }

  objc_msgSend_setBody_(contentCopy, v13, v16, v15);
LABEL_19:
}

- (void)_populateSubtitleForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v147 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  v134 = objc_msgSend_objectForKey_(messageDictionaryCopy, v7, @"__kmessageHandleKey", v8);
  v9 = objc_opt_class();
  v129 = objc_msgSend__addressForHandle_(v9, v10, v134, v11);
  if (v129 && (MEMORY[0x1B8CAF990]() & 1) != 0)
  {
    v126 = 0;
    v14 = 0;
  }

  else
  {
    v15 = dictionaryCopy;
    if (objc_msgSend__isChatbotChat_(self, v12, dictionaryCopy, v13))
    {
      v126 = 0;
      v14 = 0;
      goto LABEL_8;
    }

    v126 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v12, @"__kchatGroupNameKey", v13);
    v14 = 1;
  }

  v15 = dictionaryCopy;
LABEL_8:
  v127 = objc_msgSend_objectForKeyedSubscript_(v15, v12, @"__kchatHandlesForChatKey", v13);
  v16 = v126;
  if (!objc_msgSend_length(v126, v17, v18, v19) && objc_msgSend_count(v127, v20, v21, v22))
  {
    v63 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v20, @"__kchatStyleKey", v22);
    v67 = objc_msgSend_longLongValue(v63, v64, v65, v66);

    v69 = v14 ^ 1;
    if (v67 == 45)
    {
      v69 = 1;
    }

    if (v69)
    {
      v16 = v126;
    }

    else
    {
      v70 = objc_msgSend_array(MEMORY[0x1E695DF70], v20, v68, v22);
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v71 = v127;
      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v72, &v139, v146, 16);
      if (v76)
      {
        v77 = *v140;
        do
        {
          for (i = 0; i != v76; ++i)
          {
            if (*v140 != v77)
            {
              objc_enumerationMutation(v71);
            }

            v79 = *(*(&v139 + 1) + 8 * i);
            v80 = objc_msgSend_rowID(v79, v73, v74, v75);
            if (v80 != objc_msgSend_rowID(v134, v81, v82, v83))
            {
              v86 = objc_msgSend__displayNameForHandle_andContact_(self, v73, v79, 0);
              if (v86)
              {
                objc_msgSend_addObject_(v70, v84, v86, v85);
              }

              else if (IMOSLoggingEnabled())
              {
                v87 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                {
                  v90 = objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v88, @"__kmessageGUIDKey", v89);
                  *buf = 138412290;
                  v145 = v90;
                  _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_INFO, "Unable to create formatted display string for other recipient handle from messageGUID %@", buf, 0xCu);
                }
              }
            }
          }

          v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v71, v73, &v139, v146, 16);
        }

        while (v76);
      }

      v91 = IMSharedUtilitiesFrameworkBundle();
      v16 = objc_msgSend_localizedStringForKey_value_table_(v91, v92, @"PARTICIPANT_ADDRESS_TO_YOU_ITEM", &stru_1F2FA9728, @"IMSharedUtilities");

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v93 = v70;
      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v135, v143, 16);
      if (v98)
      {
        v99 = 0;
        v100 = *v136;
        do
        {
          v101 = 0;
          v102 = v16;
          v131 = v99;
          do
          {
            if (*v136 != v100)
            {
              objc_enumerationMutation(v93);
            }

            v103 = *(*(&v135 + 1) + 8 * v101);
            v104 = v99 == objc_msgSend_count(v93, v95, v96, v97) - 1;
            v105 = MEMORY[0x1E696AEC0];
            v106 = IMSharedUtilitiesFrameworkBundle();
            v108 = v106;
            if (v104)
            {
              objc_msgSend_localizedStringForKey_value_table_(v106, v107, @"PARTICIPANT_ADDRESS_FINAL_ITEM", &stru_1F2FA9728, @"IMSharedUtilities");
            }

            else
            {
              objc_msgSend_localizedStringForKey_value_table_(v106, v107, @"PARTICIPANT_ADDRESS_NON_FINAL_ITEM", &stru_1F2FA9728, @"IMSharedUtilities");
            }
            v109 = ;
            v112 = objc_msgSend_localizedStringWithFormat_(v105, v110, v109, v111, v103);
            v16 = objc_msgSend_stringByAppendingString_(v102, v113, v112, v114);

            ++v99;
            ++v101;
            v102 = v16;
          }

          while (v98 != v101);
          v99 = v131 + v98;
          v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v95, &v135, v143, 16);
        }

        while (v98);
      }
    }
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v20, @"__kmessageThreadOriginatorKey", v22);
  v26 = objc_msgSend_objectForKey_(messageDictionaryCopy, v24, @"__kmessageServiceKey", v25);
  isEqualToString = objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x1E69A7AE0], v28);

  v32 = objc_msgSend__amIMentionedInMessage_(self, v30, messageDictionaryCopy, v31);
  if (!objc_msgSend_length(v16, v33, v34, v35))
  {
    goto LABEL_17;
  }

  if (!(isEqualToString & 1 | ((v32 & 1) == 0)))
  {
    v115 = MEMORY[0x1E696AEC0];
    v39 = IMSharedUtilitiesFrameworkBundle();
    v50 = objc_msgSend_localizedStringForKey_value_table_(v39, v116, @"GROUP_MENTION_RECEIVED_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");
    v59 = objc_msgSend_localizedStringWithFormat_(v115, v117, v50, v118, v16);
LABEL_54:

    goto LABEL_55;
  }

  if (!v23)
  {
LABEL_17:
    v59 = v16;
    v60 = objc_msgSend_length(v16, v36, v37, v38);
    goto LABEL_56;
  }

  v39 = objc_msgSend_objectForKey_(v23, v36, @"__kmessageHandleKey", v38);
  v42 = objc_msgSend_objectForKey_(v23, v40, @"__kmessageFlagsKey", v41);
  v46 = objc_msgSend_unsignedLongLongValue(v42, v43, v44, v45);

  if (v39)
  {
    v49 = (v46 & 4) == 0;
  }

  else
  {
    v49 = 0;
  }

  if (v49)
  {
    v50 = objc_msgSend_objectForKey_(v23, v47, @"__kmessageCNContactForSenderKey", v48);
    v52 = objc_msgSend__displayNameForHandle_andContact_(self, v51, v39, v50);
    v53 = MEMORY[0x1E696AEC0];
    v54 = IMSharedUtilitiesFrameworkBundle();
    v56 = objc_msgSend_localizedStringForKey_value_table_(v54, v55, @"GROUP_REPLY_RECEIVED_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");
    v59 = objc_msgSend_localizedStringWithFormat_(v53, v57, v56, v58, v52, v16);

LABEL_53:
    v16 = v52;
    goto LABEL_54;
  }

  if ((v46 & 4) != 0)
  {
    v119 = MEMORY[0x1E696AEC0];
    v50 = IMSharedUtilitiesFrameworkBundle();
    v52 = objc_msgSend_localizedStringForKey_value_table_(v50, v120, @"GROUP_REPLY_RECEIVED_TO_YOU_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");
    v59 = objc_msgSend_localizedStringWithFormat_(v119, v121, v52, v122, v16);
    v54 = v16;
    goto LABEL_53;
  }

  v59 = v16;
LABEL_55:

  v60 = objc_msgSend_length(v59, v123, v124, v125);
LABEL_56:
  if (v60)
  {
    objc_msgSend_setSubtitle_(contentCopy, v61, v59, v62);
  }
}

- (void)_populateBodyAndTitleForSendReceivedAsJunkNotificationContent:(id)content messageDictionary:(id)dictionary
{
  v69 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  v8 = IMSharedUtilitiesFrameworkBundle();
  v10 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"MESSAGE_SEND_RECEIVED_AS_JUNK_DEFAULT", &stru_1F2FA9728, @"IMSharedUtilities");

  v11 = IMSharedUtilitiesFrameworkBundle();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"MESSAGE_SEND_RECEIVED_AS_JUNK_BODY_DEFAULT", &stru_1F2FA9728, @"IMSharedUtilities");

  v17 = objc_msgSend_userInfo(contentCopy, v14, v15, v16);
  Mutable = objc_msgSend_mutableCopy(v17, v18, v19, v20);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v26 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v22, @"__kmessageHandleKey", v23);
  if (v26)
  {
    v27 = objc_msgSend_objectForKey_(dictionaryCopy, v24, @"__kmessageCNContactForSenderKey", v25);
    v29 = objc_msgSend__displayNameForHandle_andContact_(self, v28, v26, v27);

    if (v29)
    {
      v30 = MEMORY[0x1E696AEC0];
      v31 = IMSharedUtilitiesFrameworkBundle();
      v33 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, @"MESSAGE_SEND_TO_%@_RECEIVED_AS_JUNK", &stru_1F2FA9728, @"IMSharedUtilities");
      v36 = objc_msgSend_localizedStringWithFormat_(v30, v34, v33, v35, v29);

      objc_msgSend_setObject_forKey_(Mutable, v37, v29, @"CKBBContextKeySenderName");
      v10 = v36;
    }
  }

  v38 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v24, @"__kmessageDestinationCallerIDKey", v25);
  if (!v38)
  {
    v48 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v49 = "Sender (self) ID not found (senderID is NULL). Displaying default summary for received-as-junk notification";
      v50 = v48;
      v51 = 2;
LABEL_16:
      _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (!IMStringIsEmail())
  {
    v52 = MEMORY[0x1B8CAF9C0](v38);
    if (v52)
    {
      v53 = IMFormattedDisplayStringForNumber();
      v65 = MEMORY[0x1E696AEC0];
      v66 = v53;
      v54 = IMSharedUtilitiesFrameworkBundle();
      v56 = objc_msgSend_localizedStringForKey_value_table_(v54, v55, @"MESSAGE_SEND_RECEIVED_AS_JUNK_BODY_PHONE_NUMBER_%@", &stru_1F2FA9728, @"IMSharedUtilities");
      v59 = objc_msgSend_localizedStringWithFormat_(v65, v57, v56, v58, v53);

      v13 = v59;
      goto LABEL_18;
    }

    v48 = IMDNotificationsControllerLogHandle(v52);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v38;
      v49 = "Sender (self) ID %@ type not identified as email or phone number. Displaying default summary for received-as-junk notification";
      v50 = v48;
      v51 = 12;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v39 = MEMORY[0x1E696AEC0];
  v40 = IMSharedUtilitiesFrameworkBundle();
  v42 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"MESSAGE_SEND_RECEIVED_AS_JUNK_BODY_EMAIL_ADDRESS_%@", &stru_1F2FA9728, @"IMSharedUtilities");
  v45 = objc_msgSend_localizedStringWithFormat_(v39, v43, v42, v44, v38);

  v13 = v45;
LABEL_18:
  objc_msgSend_setTitle_(contentCopy, v46, v10, v47);
  objc_msgSend_setBody_(contentCopy, v60, v13, v61);
  objc_msgSend_setObject_forKey_(Mutable, v62, MEMORY[0x1E695E118], @"CKBBContextKeyIsFailedMessage");
  objc_msgSend_setUserInfo_(contentCopy, v63, Mutable, v64);
}

- (BOOL)_contentBodyHasLocationURL:(id)l
{
  v4 = objc_msgSend_objectForKeyedSubscript_(l, a2, @"__kmessageAttributedBodyKey", v3);
  v8 = objc_msgSend___im_dataDetectedURLsFromAttributes(v4, v5, v6, v7);
  if (!objc_msgSend_count(v8, v9, v10, v11))
  {
LABEL_10:
    v47 = 0;
    goto LABEL_11;
  }

  v14 = 0;
  while (1)
  {
    v15 = objc_msgSend_objectAtIndex_(v8, v12, v14, v13);
    v19 = objc_msgSend_scheme(v15, v16, v17, v18);
    v23 = objc_msgSend_lowercaseString(v19, v20, v21, v22);
    v27 = objc_msgSend_trimmedString(v23, v24, v25, v26);
    isEqualToString = objc_msgSend_isEqualToString_(v27, v28, @"http", v29);

    v33 = objc_msgSend_locationInfoFromURL_(MEMORY[0x1E69A8100], v31, v15, v32);
    v37 = v33;
    if (!isEqualToString)
    {
      goto LABEL_8;
    }

    v41 = objc_msgSend_location(v33, v34, v35, v36);
    if (!v41)
    {

LABEL_8:
      goto LABEL_9;
    }

    v42 = objc_msgSend_address(v37, v38, v39, v40);

    if (!v42)
    {
      break;
    }

LABEL_9:
    if (++v14 >= objc_msgSend_count(v8, v43, v44, v45))
    {
      goto LABEL_10;
    }
  }

  v47 = 1;
LABEL_11:

  return v47;
}

- (void)_populateNotificationContentForTranscriptSharing:(id)sharing chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v152 = *MEMORY[0x1E69E9840];
  sharingCopy = sharing;
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  v13 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v10, v11, v12);
  LODWORD(dictionary) = objc_msgSend_isTranscriptSharingEnabled(v13, v14, v15, v16);

  if (!dictionary)
  {
    goto LABEL_31;
  }

  v19 = MEMORY[0x1E69A8270];
  v20 = objc_msgSend_objectForKey_(dictionaryCopy, v17, @"__kchatEmergencyUserInfo", v18);
  v22 = objc_msgSend_infoFromDictionary_isStewieTranscriptSharingMessage_(v19, v21, v20, 0);

  v141 = v22;
  if (!v22)
  {
    goto LABEL_31;
  }

  v138 = sharingCopy;
  v25 = objc_msgSend_objectForKey_(messageDictionaryCopy, v23, @"__kmessageIsInitialTranscriptSharingItem", v24);
  v134 = objc_msgSend_BOOLValue(v25, v26, v27, v28);

  v140 = messageDictionaryCopy;
  v31 = objc_msgSend_objectForKey_(messageDictionaryCopy, v29, @"__kmessageHandleKey", v30);
  v32 = objc_opt_class();
  v136 = v31;
  v35 = objc_msgSend__addressForHandle_(v32, v33, v31, v34);
  v36 = *MEMORY[0x1E69A6EA0];
  v135 = v35;
  hasSuffix = objc_msgSend_hasSuffix_(v35, v37, *MEMORY[0x1E69A6EA0], v38);
  v137 = dictionaryCopy;
  objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, @"__kchatHandlesForChatKey", v40);
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v148 = 0u;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v145, v151, 16);
  if (!v42)
  {
    v44 = 0;
    v143 = 0;
    goto LABEL_22;
  }

  v43 = v42;
  v44 = 0;
  v143 = 0;
  v45 = *v146;
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v146 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v47 = *(*(&v145 + 1) + 8 * i);
      v48 = objc_opt_class();
      v51 = objc_msgSend__addressForHandle_(v48, v49, v47, v50);
      v52 = _IMDCoreSpotlightCNContactForHandle(v47);
      if (objc_msgSend_hasSuffix_(v51, v53, v36, v54))
      {
        v58 = IMSharedUtilitiesFrameworkBundle();
        v60 = objc_msgSend_localizedStringForKey_value_table_(v58, v59, @"TS_NOTIFICATION_EMERGENCY_SUBTITLE_DISPLAYNAME", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");

        v44 = v60;
        goto LABEL_18;
      }

      v61 = v44;
      if (v52 || (objc_msgSend_emergencyUserPersona(v141, v55, v56, v57), v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend_suggestedDisplayName(v66, v67, v68, v69), v70 = objc_claimAutoreleasedReturnValue(), v70, v66, !v70))
      {
        v62 = objc_msgSend__displayNameForHandle_andContact_(self, v55, v47, v52);

        v58 = IMDNotificationsControllerLogHandle(v63);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v150 = v62;
          v64 = v58;
          v65 = "Not using suggested display name for user in emergency. Using display name = %@";
LABEL_16:
          _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_DEFAULT, v65, buf, 0xCu);
        }
      }

      else
      {
        v73 = objc_msgSend_emergencyUserPersona(v141, v55, v71, v72);
        v62 = objc_msgSend_suggestedDisplayName(v73, v74, v75, v76);

        v58 = IMDNotificationsControllerLogHandle(v77);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v150 = v62;
          v64 = v58;
          v65 = "Using suggested display name for user in emergency = %@";
          goto LABEL_16;
        }
      }

      v143 = v62;
      v44 = v61;
LABEL_18:
    }

    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v78, &v145, v151, 16);
  }

  while (v43);
LABEL_22:
  v79 = MEMORY[0x1E696AEC0];
  v80 = IMSharedUtilitiesFrameworkBundle();
  v82 = objc_msgSend_localizedStringForKey_value_table_(v80, v81, @"TS_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  v85 = objc_msgSend_localizedStringWithFormat_(v79, v83, v82, v84);

  v86 = MEMORY[0x1E696AEC0];
  v87 = IMSharedUtilitiesFrameworkBundle();
  v89 = objc_msgSend_localizedStringForKey_value_table_(v87, v88, @"TS_EMERGENCY_USER_BODY_FIRST_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  v92 = objc_msgSend_stringWithFormat_(v86, v90, v89, v91, v143);

  v93 = MEMORY[0x1E696AEC0];
  v94 = IMSharedUtilitiesFrameworkBundle();
  v96 = objc_msgSend_localizedStringForKey_value_table_(v94, v95, @"TS_EMERGENCY_USER_SUBTITLE_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  v99 = objc_msgSend_localizedStringWithFormat_(v93, v97, v96, v98, v44, v143);

  if ((hasSuffix & 1) == 0)
  {
    v102 = MEMORY[0x1E696AEC0];
    v103 = IMSharedUtilitiesFrameworkBundle();
    v105 = objc_msgSend_localizedStringForKey_value_table_(v103, v104, @"TS_EMERGENCY_USER_SUBTITLE_MESSAGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v108 = objc_msgSend_stringWithFormat_(v102, v106, v105, v107, v143, v44);

    v99 = v108;
  }

  sharingCopy = v138;
  if (v134)
  {
    v109 = MEMORY[0x1E696AEC0];
    v110 = IMSharedUtilitiesFrameworkBundle();
    v112 = objc_msgSend_localizedStringForKey_value_table_(v110, v111, @"TS_NOTIFICATION_EMERGENCY_SUBTITLE_DISPLAYNAME_FIRST_MESSASGE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v113 = v143;
    v116 = objc_msgSend_stringWithFormat_(v109, v114, v112, v115, v143);

    objc_msgSend_setBody_(v138, v117, v92, v118);
    v99 = v116;
    goto LABEL_29;
  }

  if (hasSuffix & 1 | ((objc_msgSend__contentBodyHasLocationURL_(self, v100, v140, v101) & 1) == 0))
  {
    v121 = v136;
    dictionaryCopy = v137;
    v122 = v135;
    v113 = v143;
  }

  else
  {
    v123 = MEMORY[0x1E696AEC0];
    v124 = IMSharedUtilitiesFrameworkBundle();
    v126 = objc_msgSend_localizedStringForKey_value_table_(v124, v125, @"TS_LOCATION_SHARED", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v113 = v143;
    v129 = objc_msgSend_stringWithFormat_(v123, v127, v126, v128, v143);
    objc_msgSend_setBody_(v138, v130, v129, v131);

LABEL_29:
    v121 = v136;
    dictionaryCopy = v137;
    v122 = v135;
  }

  objc_msgSend_setTitle_(v138, v119, v85, v120);
  objc_msgSend_setSubtitle_(v138, v132, v99, v133);

  messageDictionaryCopy = v140;
LABEL_31:
}

- (void)_populateBodyAndTitleForSendFailedNotificationContent:(id)content messageDictionary:(id)dictionary
{
  contentCopy = content;
  dictionaryCopy = dictionary;
  v7 = IMSharedUtilitiesFrameworkBundle();
  v9 = objc_msgSend_localizedStringForKey_value_table_(v7, v8, @"MESSAGE_SEND_FAILED", &stru_1F2FA9728, @"IMSharedUtilities");

  v10 = IMSharedUtilitiesFrameworkBundle();
  v12 = objc_msgSend_localizedStringForKey_value_table_(v10, v11, @"MESSAGE_SEND_TO_UNKNOWN_FAILED", &stru_1F2FA9728, @"IMSharedUtilities");

  v16 = objc_msgSend_userInfo(contentCopy, v13, v14, v15);
  Mutable = objc_msgSend_mutableCopy(v16, v17, v18, v19);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v21, @"__kmessageHandleKey", v22);
  v26 = objc_msgSend_objectForKey_(dictionaryCopy, v24, @"__kmessageServiceKey", v25);
  isEqualToString = objc_msgSend_isEqualToString_(v26, v27, *MEMORY[0x1E69A7AF8], v28);

  v32 = objc_msgSend_objectForKey_(dictionaryCopy, v30, @"__kmessageServiceKey", v31);
  v35 = objc_msgSend_isEqualToString_(v32, v33, *MEMORY[0x1E69A7AE8], v34);

  if ((isEqualToString & 1) != 0 || v35)
  {
    v38 = IMSharedUtilitiesFrameworkBundle();
    v40 = objc_msgSend_localizedStringForKey_value_table_(v38, v39, @"MESSAGE_SEND_FAILURE_VIA_SATELLITE_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");

    v9 = v40;
  }

  if (v23)
  {
    v41 = objc_msgSend_objectForKey_(dictionaryCopy, v36, @"__kmessageCNContactForSenderKey", v37);
    v43 = objc_msgSend__displayNameForHandle_andContact_(self, v42, v23, v41);

    if (v43)
    {
      v83 = v23;
      v44 = MEMORY[0x1E696AEC0];
      v45 = IMSharedUtilitiesFrameworkBundle();
      v47 = objc_msgSend_localizedStringForKey_value_table_(v45, v46, @"MESSAGE_SEND_TO_PERSON_FAILED_FORMAT", &stru_1F2FA9728, @"IMSharedUtilities");
      v50 = objc_msgSend_localizedStringWithFormat_(v44, v48, v47, v49, v43);

      objc_msgSend_setObject_forKey_(Mutable, v51, v43, @"CKBBContextKeySenderName");
      v54 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v52, @"__kmessageFlagsKey", v53);
      v58 = objc_msgSend_unsignedLongLongValue(v54, v55, v56, v57);

      v61 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v59, @"__kmessageItemTypeKey", v60);
      v65 = v61;
      if ((v58 & 0x20000000000) != 0 && !((objc_msgSend_longValue(v61, v62, v63, v64) != 0) | isEqualToString & 1 | v35 & 1))
      {
        v66 = IMSharedUtilitiesFrameworkBundle();
        v68 = objc_msgSend_localizedStringForKey_value_table_(v66, v67, @"MESSAGE_SEND_FAILED_USER_OFFGRID", &stru_1F2FA9728, @"IMSharedUtilities");

        v69 = MEMORY[0x1E696AEC0];
        v70 = IMSharedUtilitiesFrameworkBundle();
        v72 = objc_msgSend_localizedStringForKey_value_table_(v70, v71, @"MESSAGE_SEND_TO_PERSON_FAILED_FORMAT_USER_OFFGRID", &stru_1F2FA9728, @"IMSharedUtilities");
        v75 = objc_msgSend_localizedStringWithFormat_(v69, v73, v72, v74, v43);

        v50 = v75;
        v9 = v68;
      }

      v23 = v83;

      v12 = v50;
    }
  }

  objc_msgSend_setTitle_(contentCopy, v36, v9, v37);
  objc_msgSend_setBody_(contentCopy, v76, v12, v77);
  objc_msgSend_setInterruptionLevel_(contentCopy, v78, 2, v79);
  objc_msgSend_setObject_forKey_(Mutable, v80, MEMORY[0x1E695E118], @"CKBBContextKeyIsFailedMessage");
  objc_msgSend_setUserInfo_(contentCopy, v81, Mutable, v82);
}

- (void)_populateTitleForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v117 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  v12 = objc_msgSend_objectForKey_(messageDictionaryCopy, v10, @"__kmessageHandleKey", v11);
  v13 = MEMORY[0x1E69A8270];
  v16 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"__kchatEmergencyUserInfo", v15);
  v113 = objc_msgSend_infoFromDictionary_isStewieTranscriptSharingMessage_(v13, v17, v16, 0);

  if (v12)
  {
    v18 = objc_opt_class();
    v21 = objc_msgSend__addressForHandle_(v18, v19, v12, v20);
    if (objc_msgSend_length(v21, v22, v23, v24))
    {
      v28 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v25, v26, v27);
      v32 = objc_msgSend_stewieEnabled(v28, v29, v30, v31);

      if (v32 && (MEMORY[0x1B8CAF9D0](v21) & 1) != 0)
      {
        v111 = 1;
        v112 = 0;
      }

      else
      {
        v111 = MEMORY[0x1B8CAF990](v21) ^ 1;
        v112 = 1;
      }

      v36 = objc_msgSend_objectForKey_(messageDictionaryCopy, v33, @"__kmessageCNContactForSenderKey", v34);
      v39 = objc_msgSend__fallbackNameOfChatbotFrom_(self, v37, dictionaryCopy, v38);
      v35 = objc_msgSend__displayNameForHandle_andContact_fallbackName_(self, v40, v12, v36, v39);

      if (v35 && objc_msgSend_length(v35, v41, v42, v43))
      {
        objc_msgSend_setTitle_(contentCopy, v44, v35, v45);
        v49 = objc_msgSend_userInfo(contentCopy, v46, v47, v48);
        Mutable = objc_msgSend_mutableCopy(v49, v50, v51, v52);

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        objc_msgSend_setObject_forKey_(Mutable, v54, v35, @"CKBBContextKeySenderName");
        v108 = Mutable;
        objc_msgSend_setUserInfo_(contentCopy, v55, Mutable, v56);
        v110 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v57, @"__kchatHandlesForChatKey", v58);
        v109 = objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v59, @"__kmessageThreadOriginatorKey", v60);
        if (objc_msgSend_count(v110, v61, v62, v63) < 2)
        {
          v72 = 0;
        }

        else
        {
          v67 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v64, @"__kchatStyleKey", v66);
          v72 = objc_msgSend_longLongValue(v67, v68, v69, v70) != 45 && (v111 & v112) != 0;
        }

        v77 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v64, v65, v66);
        isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v77, v78, v79, v80);

        if (isTranscriptSharingEnabled)
        {
          v72 &= v113 == 0;
        }

        v84 = objc_msgSend_objectForKey_(messageDictionaryCopy, v82, @"__kmessageServiceKey", v83);
        isEqualToString = objc_msgSend_isEqualToString_(v84, v85, *MEMORY[0x1E69A7AE0], v86);

        v90 = objc_msgSend__amIMentionedInMessage_(self, v88, messageDictionaryCopy, v89);
        if (v72)
        {
          goto LABEL_35;
        }

        if (isEqualToString & 1 | ((v90 & 1) == 0))
        {
          if (!v109)
          {
            goto LABEL_35;
          }

          v93 = objc_msgSend_objectForKey_(v109, v91, @"__kmessageFlagsKey", v92);
          v97 = objc_msgSend_unsignedLongLongValue(v93, v94, v95, v96);

          if ((v97 & 4) == 0)
          {
            goto LABEL_35;
          }

          v98 = @"REPLY_RECEIVED_TITLE";
        }

        else
        {
          v98 = @"MENTION_RECEIVED_TITLE";
        }

        v99 = MEMORY[0x1E696AEC0];
        v100 = IMSharedUtilitiesFrameworkBundle();
        v102 = objc_msgSend_localizedStringForKey_value_table_(v100, v101, v98, &stru_1F2FA9728, @"IMSharedUtilities");
        v105 = objc_msgSend_localizedStringWithFormat_(v99, v103, v102, v104, v35);
        objc_msgSend_setTitle_(contentCopy, v106, v105, v107);

LABEL_35:
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v73 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v76 = objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v74, @"__kmessageGUIDKey", v75);
          *buf = 138412290;
          v116 = v76;
          _os_log_impl(&dword_1B7AD5000, v73, OS_LOG_TYPE_INFO, "Unable to create formatted display string for handle from messageGUID %@", buf, 0xCu);
        }
      }

      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
    v21 = 0;
  }
}

- (void)_populateSoundAndDisplayActivationForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v87 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  messageDictionaryCopy = messageDictionary;
  v10 = objc_msgSend_soundWithAlertType_(MEMORY[0x1E6983238], v8, 2, v9);
  v13 = objc_msgSend_objectForKey_(messageDictionaryCopy, v11, @"__kmessageCNContactForSenderKey", v12);
  v16 = v13;
  if (v13)
  {
    v17 = objc_msgSend_valueForKey_(v13, v14, *MEMORY[0x1E695C3F8], v15);
    v21 = v17;
    if (v17)
    {
      v22 = objc_msgSend_vibration(v17, v18, v19, v20);
      objc_msgSend_setVibrationIdentifier_(v10, v23, v22, v24);

      v28 = objc_msgSend_sound(v21, v25, v26, v27);
      objc_msgSend_setToneIdentifier_(v10, v29, v28, v30);

      v34 = objc_msgSend_ignoreMute(v21, v31, v32, v33);
      objc_msgSend_setShouldIgnoreRingerSwitch_(v10, v35, v34, v36);
      v40 = objc_msgSend_ignoreMute(v21, v37, v38, v39);
      objc_msgSend_setShouldIgnoreDoNotDisturb_(contentCopy, v41, v40, v42);
      v46 = objc_msgSend_ignoreMute(v21, v43, v44, v45);
      if (v46)
      {
        v47 = IMDNotificationsControllerLogHandle(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v81) = 0;
          _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_DEFAULT, "ignoreMute is YES. Contact is Emergency Broadcast enabled. Expecting notification to bypass system mute and/or system DND.", &v81, 2u);
        }
      }
    }
  }

  else
  {
    v21 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v81) = 0;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "messageCNContactForSenderKey not found in messageDictionary.", &v81, 2u);
    }
  }

  v50 = objc_msgSend_objectForKey_(messageDictionaryCopy, v48, @"__kmessageAssociatedMessageGUIDKey", v49);
  v54 = objc_msgSend_length(v50, v51, v52, v53);

  if (v54)
  {
    v57 = objc_msgSend_objectForKey_(messageDictionaryCopy, v55, @"__kmessageAssociatedMessageTypeKey", v56);
    v61 = objc_msgSend_longLongValue(v57, v58, v59, v60);
    if ((v61 - 2000) <= 5)
    {
      objc_msgSend_setAlertTopic_(v10, v62, **(&unk_1E7CB6EF8 + v61 - 2000), v63);
    }
  }

  objc_msgSend_setShouldSuppressScreenLightUp_(contentCopy, v55, 0, v56);
  v66 = objc_msgSend_setSound_(contentCopy, v64, v10, v65);
  v67 = IMDNotificationsControllerLogHandle(v66);
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v71 = objc_msgSend_sound(contentCopy, v68, v69, v70);
    if (objc_msgSend_shouldIgnoreDoNotDisturb(contentCopy, v72, v73, v74))
    {
      v78 = @"YES";
    }

    else
    {
      v78 = @"NO";
    }

    shouldSuppressScreenLightUp = objc_msgSend_shouldSuppressScreenLightUp(contentCopy, v75, v76, v77);
    v81 = 138412802;
    if (shouldSuppressScreenLightUp)
    {
      v80 = @"YES";
    }

    else
    {
      v80 = @"NO";
    }

    v82 = v71;
    v83 = 2112;
    v84 = v78;
    v85 = 2112;
    v86 = v80;
    _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_DEFAULT, "Populating sound and display sound %@ ignoreDND %@ suppress screen light up %@", &v81, 0x20u);
  }
}

- (void)_populateIgnoresDoNotDisturb:(id)disturb chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v31 = *MEMORY[0x1E69E9840];
  disturbCopy = disturb;
  messageDictionaryCopy = messageDictionary;
  v11 = objc_msgSend_objectForKey_(dictionary, v9, @"__kchatChatIdentifierKey", v10);
  v12 = MEMORY[0x1B8CAF9D0]();
  if (v12)
  {
    v15 = IMDNotificationsControllerLogHandle(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_objectForKey_(messageDictionaryCopy, v16, @"__kmessageGUIDKey", v17);
      v29 = 138412290;
      v30 = v18;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Chat is flagged as Stewie for message %@ punching through DND", &v29, 0xCu);
    }

    hasPrefix = objc_msgSend_hasPrefix_(v11, v19, *MEMORY[0x1E69A7DB0], v20);
    if ((hasPrefix & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    hasPrefix = objc_msgSend_hasPrefix_(v11, v13, *MEMORY[0x1E69A7DB0], v14);
    if (!hasPrefix)
    {
      goto LABEL_13;
    }
  }

  v22 = IMDNotificationsControllerLogHandle(hasPrefix);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_msgSend_objectForKey_(messageDictionaryCopy, v23, @"__kmessageGUIDKey", v24);
    v29 = 138412290;
    v30 = v25;
    _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "Chat is flagged as Stewie TS for message %@ punching through DND", &v29, 0xCu);
  }

LABEL_10:
  v26 = IMDNotificationsControllerLogHandle(hasPrefix);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_DEFAULT, "Setting ShouldIgnoreDoNotDisturb = YES", &v29, 2u);
  }

  objc_msgSend_setShouldIgnoreDoNotDisturb_(disturbCopy, v27, 1, v28);
LABEL_13:
}

- (void)_populateTimeSensitiveOrCriticalForNotificationContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v121 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  messageDictionaryCopy = messageDictionary;
  v11 = objc_msgSend_objectForKey_(messageDictionaryCopy, v9, @"__kmessageFlagsKey", v10);
  v15 = objc_msgSend_unsignedLongLongValue(v11, v12, v13, v14);

  if ((v15 & 0x8000000000) == 0)
  {
    IsSOSMapURL = objc_msgSend__messageIsSOSMapURL_(self, v17, messageDictionaryCopy, v18);
    if (!IsSOSMapURL)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  v19 = IMDNotificationsControllerLogHandle(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_DEFAULT, "Message has an SOS flag", buf, 2u);
  }

  IsSOSMapURL = objc_msgSend__messageIsSOSMapURL_(self, v20, messageDictionaryCopy, v21);
  if (IsSOSMapURL)
  {
LABEL_7:
    v25 = IMDNotificationsControllerLogHandle(IsSOSMapURL);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "Message has an SOS URL match", buf, 2u);
    }

    v29 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v26, v27, v28);
    objc_msgSend_trackEvent_(v29, v30, *MEMORY[0x1E69A75B8], v31);

    v106 = 1;
    goto LABEL_10;
  }

  v106 = 0;
LABEL_10:
  v32 = objc_msgSend_objectForKey_(messageDictionaryCopy, v23, @"__kmessageFlagsKey", v24);
  v36 = objc_msgSend_unsignedLongLongValue(v32, v33, v34, v35) & 0x4000000000;

  sub_1B7B124D4(v37, v38, v39, v40);
  v41 = objc_opt_respondsToSelector();
  v107 = messageDictionaryCopy;
  if (v41)
  {
    v45 = sub_1B7B124D4(v41, v42, v43, v44);
    isSOSMessagesUrgentAlertingEnabled = objc_msgSend_isSOSMessagesUrgentAlertingEnabled(v45, v46, v47, v48);
    v52 = objc_msgSend__messageIsFromKnownContact_(self, v50, messageDictionaryCopy, v51);
    v56 = v52;
    v57 = 1;
    v58 = 2;
    if (v36 && isSOSMessagesUrgentAlertingEnabled && v52)
    {
      if (objc_msgSend_realertCount(contentCopy, v53, v54, v55) >= 4)
      {
        v62 = objc_msgSend_realertCount(contentCopy, v59, v60, v61);
        v52 = objc_msgSend_setRealertCount_(contentCopy, v63, v62, v64);
      }

      else
      {
        v52 = objc_msgSend_setRealertCount_(contentCopy, v59, 4, v61);
      }

      v57 = 0;
      v105 = 1;
      v58 = 3;
    }

    else
    {
      v105 = 0;
    }
  }

  else
  {
    v52 = objc_msgSend__messageIsFromKnownContact_(self, v42, messageDictionaryCopy, v44);
    v56 = v52;
    isSOSMessagesUrgentAlertingEnabled = 0;
    v105 = 0;
    v57 = 1;
    v58 = 2;
  }

  v65 = IMDNotificationsControllerLogHandle(v52);
  v108 = contentCopy;
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v69 = objc_msgSend_realertCount(contentCopy, v66, v67, v68);
    *buf = 67110144;
    v112 = v36 >> 38;
    v113 = 1024;
    v114 = isSOSMessagesUrgentAlertingEnabled;
    v115 = 1024;
    v116 = v56;
    v117 = 2048;
    v118 = v58;
    v119 = 2048;
    v120 = v69;
    _os_log_impl(&dword_1B7AD5000, v65, OS_LOG_TYPE_DEFAULT, "SOS Message - hasCriticalFlag:%{BOOL}d, prefEnabled:%{BOOL}d, isFromContact:%{BOOL}d => interruptionLevel:%tu, realertCount:%tu", buf, 0x28u);
  }

  v70 = (v15 >> 39) & 1;

  objc_msgSend_setInterruptionLevel_(contentCopy, v71, v58, v72);
  v76 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v73, v74, v75);
  v104 = *MEMORY[0x1E69A75A0];
  v109[0] = @"markedSOS";
  v79 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v77, v70, v78);
  v110[0] = v79;
  v109[1] = @"markedCritical";
  v82 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v80, v36 != 0, v81);
  v110[1] = v82;
  v109[2] = @"sosMapURL";
  v85 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v83, v106, v84);
  v110[2] = v85;
  v109[3] = @"sosCriticalPrefEnabled";
  v88 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v86, isSOSMessagesUrgentAlertingEnabled, v87);
  v110[3] = v88;
  v109[4] = @"receivedFromContact";
  v91 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v89, v56, v90);
  v110[4] = v91;
  v109[5] = @"interruptionLevel";
  v94 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v92, v58, v93);
  v110[5] = v94;
  v109[6] = @"interruptionLevelTimeSensitive";
  v97 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v95, v57, v96);
  v110[6] = v97;
  v109[7] = @"interruptionLevelCritical";
  v100 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v98, v105, v99);
  v110[7] = v100;
  v102 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v101, v110, v109, 8);
  objc_msgSend_trackEvent_withDictionary_(v76, v103, v104, v102);

  contentCopy = v108;
  messageDictionaryCopy = v107;
LABEL_23:
}

- (BOOL)_messageIsSOSMapURL:(id)l
{
  lCopy = l;
  v6 = objc_msgSend_objectForKeyedSubscript_(lCopy, v4, @"__kmessageServiceKey", v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x1E69A7AE0], v8);

  if (isEqualToString)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(lCopy, v10, @"__kmessageTextKey", v11);
    v16 = objc_msgSend_im_matchesSOSMapURL(v12, v13, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isFromChatBotNotOTC:(id)c
{
  v27 = *MEMORY[0x1E69E9840];
  cCopy = c;
  v6 = objc_msgSend_objectForKeyedSubscript_(cCopy, v4, @"__kmessageBalloonBundleIDKey", v5);
  if (objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x1E69A68F0], v8))
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(cCopy, v9, @"__kmessageAttributedBodyKey", v10);
    v14 = objc_msgSend_objectForKeyedSubscript_(cCopy, v12, @"__kmessageGUIDKey", v13);
    v15 = v14;
    v16 = 1;
    if (!v11 || !v14)
    {
      goto LABEL_12;
    }

    v17 = objc_alloc_init(MEMORY[0x1E69A81B0]);
    OTCFromMessageBody_sender_guid = objc_msgSend_createOTCFromMessageBody_sender_guid_(v17, v18, v11, @"sender", v15);

    v16 = OTCFromMessageBody_sender_guid == 0;
    v21 = IMDNotificationsControllerLogHandle(v20);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (OTCFromMessageBody_sender_guid)
    {
      if (v22)
      {
        v25 = 138412290;
        v26 = v15;
        v23 = "message %@ is from a chat bot and is OTC";
LABEL_10:
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, v23, &v25, 0xCu);
      }
    }

    else if (v22)
    {
      v25 = 138412290;
      v26 = v15;
      v23 = "message %@ is from a chat bot but is not OTC";
      goto LABEL_10;
    }

LABEL_12:
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)_populateUserInfoOnContentForWatch:(id)watch messageDictionary:(id)dictionary chatDictionary:(id)chatDictionary isCarouselUITriggered:(BOOL)triggered
{
  v168[1] = *MEMORY[0x1E69E9840];
  watchCopy = watch;
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  if (objc_msgSend_isFromChatBotNotOTC_(self, v12, dictionaryCopy, v13))
  {
    goto LABEL_61;
  }

  v17 = objc_msgSend_userInfo(watchCopy, v14, v15, v16);
  Mutable = objc_msgSend_mutableCopy(v17, v18, v19, v20);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v24 = objc_msgSend_objectForKey_(dictionaryCopy, v22, @"__kmessageGUIDKey", v23);
  if (v24)
  {
    CFDictionarySetValue(Mutable, @"CKBBContextKeyMessageGUID", v24);
  }

  v27 = objc_msgSend_objectForKey_(chatDictionaryCopy, v25, @"__kchatChatIdentifierKey", v26);
  if (v27)
  {
    CFDictionarySetValue(Mutable, @"CKBBUserInfoKeyChatIdentifier", v27);
  }

  v30 = objc_msgSend_objectForKey_(chatDictionaryCopy, v28, @"__kchatChatGUIDKey", v29);

  if (v30)
  {
    v33 = objc_msgSend_objectForKey_(chatDictionaryCopy, v31, @"__kchatChatGUIDKey", v32);
    v168[0] = v33;
    v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v34, v168, 1);

    v36 = v35;
    if (v36)
    {
      v37 = v36;
      CFDictionarySetValue(Mutable, @"CKBBContextKeyChatGUIDs", v36);
    }
  }

  v38 = objc_msgSend_objectForKey_(chatDictionaryCopy, v31, @"__kchatStyleKey", v32);
  if (objc_msgSend_integerValue(v38, v39, v40, v41) == 43)
  {
    v44 = objc_msgSend_objectForKey_(chatDictionaryCopy, v42, @"__kchatGroupIDKey", v43);
    if (v44)
    {
      CFDictionarySetValue(Mutable, @"CKBBContextKeyChatGroupID", v44);
    }
  }

  else
  {
    v44 = objc_msgSend_objectForKey_(dictionaryCopy, v42, @"__kmessageCNContactForSenderKey", v43);
    v48 = objc_msgSend_identifier(v44, v45, v46, v47);
    if (v48)
    {
      CFDictionarySetValue(Mutable, @"CKBBContextKeySenderPersonCentricID", v48);
    }
  }

  v51 = objc_msgSend_objectForKey_(dictionaryCopy, v49, @"__kmessageAssociatedMessageGUIDKey", v50);
  v55 = objc_msgSend_length(v51, v52, v53, v54);

  if (v55)
  {
    v58 = objc_msgSend_objectForKey_(dictionaryCopy, v56, @"__kmessageAssociatedMessageTypeKey", v57);
    v62 = objc_msgSend_longLongValue(v58, v59, v60, v61);
    if ((v62 & 0xFFFFFFFFFFFFFFF8) == 0x7D0)
    {
      objc_msgSend_setObject_forKey_(Mutable, v63, MEMORY[0x1E695E118], @"CKBBContextKeyIsAcknowledgment");
    }

    else if (v62 == 1000)
    {
      objc_msgSend_setObject_forKey_(Mutable, v63, MEMORY[0x1E695E118], @"CKBBContextKeyIsSticker");
    }
  }

  v64 = objc_msgSend_objectForKey_(dictionaryCopy, v56, @"__kmessageBalloonBundleIDKey", v57);
  if (objc_msgSend_length(v64, v65, v66, v67))
  {
    objc_msgSend_setObject_forKey_(Mutable, v68, MEMORY[0x1E695E118], @"CKBBContextKeyIsBalloonPluginBulletin");
    objc_msgSend_setObject_forKey_(Mutable, v70, v64, @"CKBBContextKeyBalloonBundleID");
  }

  v71 = objc_msgSend_objectForKey_(dictionaryCopy, v68, @"__kmessageExpressiveSendStyleIDKey", v69);
  if (objc_msgSend_containsString_(v71, v72, *MEMORY[0x1E69A7080], v73))
  {
  }

  else
  {
    v78 = objc_msgSend_objectForKey_(dictionaryCopy, v74, @"__kmessageExpressiveSendStyleIDKey", v75);
    v81 = objc_msgSend_containsString_(v78, v79, *MEMORY[0x1E69A7028], v80);

    if (!v81)
    {
      v84 = 0;
      goto LABEL_30;
    }
  }

  v82 = objc_msgSend_objectForKey_(dictionaryCopy, v76, @"__kmessageExpressiveSendStyleIDKey", v77);
  objc_msgSend_setObject_forKey_(Mutable, v83, v82, @"CKBBContextKeyEffectIdentifier");

  v84 = 1;
LABEL_30:
  v85 = objc_msgSend_objectForKey_(dictionaryCopy, v76, @"__kmessageAttachmentsKey", v77);
  if (objc_msgSend_count(v85, v86, v87, v88))
  {
    v147 = v64;
    v148 = v38;
    selfCopy = self;
    v151 = chatDictionaryCopy;
    v152 = dictionaryCopy;
    if (v84)
    {
      objc_msgSend_setObject_forKey_(Mutable, v89, MEMORY[0x1E695E118], @"CKBBContextKeyIsAttachmentWithEffectBulletin");
    }

    v153 = watchCopy;
    v92 = objc_msgSend_body(watchCopy, v89, v90, v91);
    v150 = Mutable;
    objc_msgSend_setObject_forKey_(Mutable, v93, v92, @"CKBBContentKeyAttachmentSummary");

    v94 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v146 = v85;
    v95 = v85;
    v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v161, v167, 16);
    if (v97)
    {
      v101 = v97;
      v102 = *v162;
      v155 = *MEMORY[0x1E69A83C0];
      v154 = *MEMORY[0x1E69A83B0];
      v156 = *MEMORY[0x1E69A83B8];
      v157 = *MEMORY[0x1E69A83A8];
      v158 = *MEMORY[0x1E69A8408];
      v159 = *MEMORY[0x1E69A8418];
      v160 = *MEMORY[0x1E69A8410];
      v103 = *MEMORY[0x1E69A8400];
      do
      {
        for (i = 0; i != v101; ++i)
        {
          if (*v162 != v102)
          {
            objc_enumerationMutation(v95);
          }

          v105 = objc_msgSend_utiString(*(*(&v161 + 1) + 8 * i), v98, v99, v100);
          IsImage = IMUTTypeIsImage();
          v107 = v103;
          if ((IsImage & 1) == 0)
          {
            IsMovie = IMUTTypeIsMovie();
            v107 = v160;
            if ((IsMovie & 1) == 0)
            {
              IsPass = IMUTTypeIsPass();
              v107 = v159;
              if ((IsPass & 1) == 0)
              {
                IsMap = IMUTTypeIsMap();
                v107 = v158;
                if ((IsMap & 1) == 0)
                {
                  IsAudio = IMUTTypeIsAudio();
                  v107 = v157;
                  if ((IsAudio & 1) == 0)
                  {
                    IsVCard = IMUTTypeIsVCard();
                    v107 = v156;
                    if ((IsVCard & 1) == 0)
                    {
                      IsCalendar = IMUTTypeIsCalendar();
                      v107 = v155;
                      if (IsCalendar)
                      {
                        v107 = v154;
                      }
                    }
                  }
                }
              }
            }
          }

          v116 = v107;
          if (v116)
          {
            v117 = objc_msgSend_objectForKey_(v94, v114, v116, v115);
            v121 = v117;
            if (v117)
            {
              v122 = MEMORY[0x1E696AD98];
              v123 = objc_msgSend_unsignedIntegerValue(v117, v118, v119, v120);
              v126 = objc_msgSend_numberWithUnsignedInteger_(v122, v124, v123 + 1, v125);
              objc_msgSend_setObject_forKey_(v94, v127, v126, v116);
            }

            else
            {
              objc_msgSend_setObject_forKey_(v94, v118, &unk_1F2FCA260, v116);
            }
          }
        }

        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v98, &v161, v167, 16);
      }

      while (v101);
    }

    Mutable = v150;
    if (objc_msgSend_count(v94, v128, v129, v130))
    {
      v134 = MEMORY[0x1E696AD98];
      v135 = objc_msgSend_count(v95, v131, v132, v133);
      v138 = objc_msgSend_numberWithUnsignedInteger_(v134, v136, v135, v137);
      objc_msgSend_setObject_forKey_(v150, v139, v138, @"CKBBContentKeyAttachmentCount");

      objc_msgSend_setObject_forKey_(v150, v140, v94, @"CKBBContentKeyCountByAttachmentType");
    }

    dictionaryCopy = v152;
    watchCopy = v153;
    chatDictionaryCopy = v151;
    v38 = v148;
    self = selfCopy;
    v85 = v146;
    v64 = v147;
  }

  v141 = objc_msgSend__amIMentionedInMessage_(self, v89, dictionaryCopy, v91);
  if (v141)
  {
    v141 = objc_msgSend_setObject_forKey_(Mutable, v142, MEMORY[0x1E695E118], @"messageMentionsMe");
  }

  v143 = IMDNotificationsControllerLogHandle(v141);
  if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v166 = Mutable;
    _os_log_impl(&dword_1B7AD5000, v143, OS_LOG_TYPE_DEFAULT, "Set userInfo for dictionaries %@", buf, 0xCu);
  }

  objc_msgSend_setUserInfo_(watchCopy, v144, Mutable, v145);
LABEL_61:
}

- (void)_populateUserInfoForMessageContent:(id)content messageDictionary:(id)dictionary messageIsAddressedToMe:(BOOL)me
{
  meCopy = me;
  v22 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  v10 = objc_msgSend_userInfo(contentCopy, v7, v8, v9);
  v14 = objc_msgSend_mutableCopy(v10, v11, v12, v13);

  if (v14)
  {
    if (!meCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = Mutable;
  if (meCopy)
  {
LABEL_3:
    Mutable = objc_msgSend_setObject_forKey_(v14, v16, MEMORY[0x1E695E118], @"messageIsAddressedToMe");
  }

LABEL_4:
  v17 = IMDNotificationsControllerLogHandle(Mutable);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v14;
    _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Set userInfo for message content dictionaries %@", &v20, 0xCu);
  }

  objc_msgSend_setUserInfo_(contentCopy, v18, v14, v19);
}

- (void)_populateAttachmentsForNotificationContent:(id)content messageDictionary:(id)dictionary messageRecord:(id)record knownSender:(BOOL)sender
{
  senderCopy = sender;
  v177 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  recordCopy = record;
  v142 = dictionaryCopy;
  v141 = objc_msgSend_objectForKey_(dictionaryCopy, v9, @"__kmessageAttributedBodyKey", v10);
  if ((objc_msgSend___im_isRichCardsOrSuggestedReply(v141, v11, v12, v13) & 1) == 0)
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v14, @"__kmessageExpressiveSendStyleIDKey", v15);

    if (!v16 || (objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v17, @"__kmessageExpressiveSendStyleIDKey", v18), v19 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v19, v20, *MEMORY[0x1E69A7088], v21), v19, (isEqualToString & 1) == 0))
    {
      v23 = objc_msgSend_objectForKeyedSubscript_(v142, v17, @"__kmessageAttachmentsKey", v18);
      v145 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26);
      v156 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v27, v28, v29);
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      obj = v23;
      v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v162, v176, 16);
      if (v157)
      {
        v143 = 0;
        v34 = 0;
        v155 = *v163;
        inConformsToUTI = *MEMORY[0x1E6963788];
        v147 = *MEMORY[0x1E69833D8];
        do
        {
          for (i = 0; i != v157; ++i)
          {
            if (*v163 != v155)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v162 + 1) + 8 * i);
            inUTI = objc_msgSend_utiString(v36, v31, v32, v33);
            v40 = objc_msgSend_path(v36, v37, v38, v39);
            v44 = objc_msgSend_guid(v36, v41, v42, v43);
            v48 = objc_msgSend_transferState(v36, v45, v46, v47);
            objc_msgSend_setObject_forKeyedSubscript_(v156, v49, v36, v44);
            if (objc_msgSend_length(v40, v50, v51, v52))
            {
              v56 = v48 == 5;
            }

            else
            {
              v56 = 0;
            }

            if (v56)
            {
              v57 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v53, v40, 0);
              v58 = UTTypeConformsTo(inUTI, inConformsToUTI);
              if (!v34)
              {
                if (v58)
                {
                  v148 = IMPreviewCachesDirectoryWithAttachmentURL();
                  v149 = objc_msgSend_lastPathComponent(v57, v59, v60, v61);
                  v63 = objc_msgSend_URLByAppendingPathComponent_isDirectory_(v148, v62, v149, 0);
                  v150 = objc_msgSend_URLByAppendingPathExtension_(v63, v64, @"plist", v65);

                  v161 = 0;
                  v67 = objc_msgSend_dictionaryWithContentsOfURL_error_(MEMORY[0x1E695DF20], v66, v150, &v161);
                  v68 = v161;
                  v69 = IMDNotificationsControllerLogHandle(v68);
                  v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
                  v146 = v68;
                  if (v67)
                  {
                    if (v70)
                    {
                      *buf = 138412290;
                      v167 = v150;
                      _os_log_impl(&dword_1B7AD5000, v69, OS_LOG_TYPE_DEFAULT, "Successfully loaded contact plist at: %@", buf, 0xCu);
                    }

                    v73 = objc_msgSend_objectForKeyedSubscript_(v67, v71, @"contactFormatterTitle", v72);
                    v76 = objc_msgSend_objectForKeyedSubscript_(v67, v74, @"organizationNameTitle", v75);
                    if (objc_msgSend_length(v76, v77, v78, v79))
                    {
                      v82 = v76;

                      v73 = v82;
                    }

                    v69 = objc_msgSend__truncateNameIfNeeded_(IMDNotificationsController, v80, v73, v81);

                    if (v69)
                    {
                      objc_msgSend_setBody_(contentCopy, v83, v69, v84);
                      v143 = 1;
                    }

                    v34 = v36;
                  }

                  else
                  {
                    if (v70)
                    {
                      *buf = 138412546;
                      v167 = v150;
                      v168 = 2112;
                      v169 = v68;
                      _os_log_impl(&dword_1B7AD5000, v69, OS_LOG_TYPE_DEFAULT, "Failed to load contact plist at: %@ (error: %@)", buf, 0x16u);
                    }

                    v34 = 0;
                  }
                }

                else
                {
                  v34 = 0;
                }
              }
            }

            if (objc_msgSend_length(v40, v53, v54, v55) != 0 && v48 == 5)
            {
              v86 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v85, v40, 0);
              v88 = objc_msgSend__notificationsSafePreviewFileURLForTransferURL_utiType_knownSender_(self, v87, v86, inUTI, senderCopy);
              isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(v36, v89, v90, v91);
              isAdaptiveImageGlyph = objc_msgSend_isAdaptiveImageGlyph(v36, v93, v94, v95);
              if (IMOSLoggingEnabled())
              {
                v98 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                {
                  v101 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v99, isCommSafetySensitive, v100);
                  *buf = 138412290;
                  v167 = v101;
                  _os_log_impl(&dword_1B7AD5000, v98, OS_LOG_TYPE_INFO, "CommSafety Sensitive value on the record: %@", buf, 0xCu);
                }
              }

              if ((v88 == 0) | (isCommSafetySensitive | isAdaptiveImageGlyph) & 1)
              {
                if (IMOSLoggingEnabled())
                {
                  v102 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v167 = v86;
                    _os_log_impl(&dword_1B7AD5000, v102, OS_LOG_TYPE_INFO, "We didn't generate a previewFileURL for transfer %@ to generate a notification preview", buf, 0xCu);
                  }
                }
              }

              else
              {
                v174 = v147;
                v175 = @"public.jpeg";
                v107 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v97, &v175, &v174, 1);
                v160 = 0;
                v109 = objc_msgSend_attachmentWithIdentifier_URL_options_error_(MEMORY[0x1E6983268], v108, v44, v88, v107, &v160);
                v110 = v160;
                v111 = IMDNotificationsControllerLogHandle(v110);
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138413058;
                  v167 = v88;
                  v168 = 2112;
                  v169 = v86;
                  v170 = 2112;
                  v171 = v109;
                  v172 = 2112;
                  v173 = v110;
                  _os_log_impl(&dword_1B7AD5000, v111, OS_LOG_TYPE_DEFAULT, "generated previewfile url %@ for transfer %@ as unnotificationattachment %@ with error %@", buf, 0x2Au);
                }

                if (v109)
                {
                  objc_msgSend_addObject_(v145, v112, v109, v113);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v103 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
              {
                v106 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v104, v48, v105);
                *buf = 138412802;
                v167 = v40;
                v168 = 2112;
                v169 = v106;
                v170 = 2112;
                v171 = v44;
                _os_log_impl(&dword_1B7AD5000, v103, OS_LOG_TYPE_INFO, "Filename was null (%@) or transfer state was not finished (%@) for file transfer %@ -- did not generate attachment preview", buf, 0x20u);
              }
            }
          }

          v157 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v162, v176, 16);
        }

        while (v157);
      }

      else
      {
        v143 = 0;
        v34 = 0;
      }

      v117 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(recordCopy, 0, 1, 0);
      if (v117)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v118 = objc_msgSend_objectForKey_(v142, v114, @"__kmessageHandleKey", v116);
          v121 = objc_msgSend_objectForKey_(v142, v119, @"__kmessageCNContactForSenderKey", v120);
          v123 = objc_msgSend__displayNameForHandle_andContact_(self, v122, v118, v121);
          v126 = objc_msgSend_firstNameForCNContact_(MEMORY[0x1E69A7FD0], v124, v121, v125);
          if (!objc_msgSend_length(v126, v127, v128, v129))
          {
            v130 = v123;

            v126 = v130;
          }

          v159 = v156;
          v131 = IMSharedMessageSummaryCreateWithShortName();
          v135 = v131;
          if ((v143 & 1) == 0 && objc_msgSend_length(v131, v132, v133, v134))
          {
            objc_msgSend_setBody_(contentCopy, v136, v135, v137);
          }
        }
      }

      if (objc_msgSend_count(v145, v114, v115, v116))
      {
        objc_msgSend_setAttachments_(contentCopy, v138, v145, v139);
      }
    }
  }
}

+ (int)validateAlertCount:(int)count
{
  if (count > 0xB)
  {
    return 2;
  }

  else
  {
    return dword_1B7D09430[count];
  }
}

+ (int)reminderAlertCount
{
  result = dword_1EDBE1D60;
  if (dword_1EDBE1D60 == -1)
  {
    if ((byte_1EDBE5C40 & 1) == 0)
    {
      byte_1EDBE5C40 = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_1B7B13CAC, @"com.apple.MobileSMS.IncomingMessageAlertCount.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    keyExistsAndHasValidFormat = 0;
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IncomingMessageAlertCount", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat == 1)
    {
      result = objc_msgSend_validateAlertCount_(self, v6, AppIntegerValue, v7);
    }

    else
    {
      result = 2;
    }

    dword_1EDBE1D60 = result;
  }

  return result;
}

- (void)_populateRealertCountForNotificationContent:(id)content
{
  v14 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_class();
    v8 = objc_msgSend_reminderAlertCount(v4, v5, v6, v7);
    v9 = v8 - 1;
    v10 = IMDNotificationsControllerLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 67109120;
      v13[1] = v9;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Setting repeat alert count to %d", v13, 8u);
    }

    objc_msgSend_setRealertCount_(contentCopy, v11, v9, v12);
  }
}

- (BOOL)_messageShouldBeSpoken:(id)spoken chatDictionary:(id)dictionary
{
  v22 = *MEMORY[0x1E69E9840];
  spokenCopy = spoken;
  dictionaryCopy = dictionary;
  v12 = objc_msgSend_objectForKey_(spokenCopy, v8, @"__kmessageHandleKey", v9);
  if (v12)
  {
    IsMuted = objc_msgSend__chatIsMuted_(self, v10, dictionaryCopy, v11);
    if (IsMuted)
    {
      v15 = IMDNotificationsControllerLogHandle(IsMuted);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = @"YES";
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Chat has isMuted set %@, not marking as spoken message allowlisted", &v18, 0xCu);
      }

      LOBYTE(IsSpokenMessageAllowlisted_chat_message) = 0;
    }

    else
    {
      IsSpokenMessageAllowlisted_chat_message = objc_msgSend__handleIsSpokenMessageAllowlisted_chat_message_(self, v14, v12, dictionaryCopy, spokenCopy);
      v15 = IMDNotificationsControllerLogHandle(IsSpokenMessageAllowlisted_chat_message);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412546;
        v19 = v12;
        v20 = 1024;
        v21 = IsSpokenMessageAllowlisted_chat_message;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Contact %@ isSpokenMessageAllowlisted: %d", &v18, 0x12u);
      }
    }
  }

  else
  {
    LOBYTE(IsSpokenMessageAllowlisted_chat_message) = 0;
  }

  return IsSpokenMessageAllowlisted_chat_message;
}

- (BOOL)_UTITypeMightBeAnimated:(id)animated
{
  animatedCopy = animated;
  v4 = animatedCopy;
  v5 = animatedCopy && (UTTypeConformsTo(animatedCopy, *MEMORY[0x1E69637D8]) || UTTypeConformsTo(v4, *MEMORY[0x1E6963860]));

  return v5;
}

- (id)_notificationsSafePreviewFileURLForTransferURL:(id)l utiType:(id)type knownSender:(BOOL)sender
{
  v65 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  lCopy = l;
  v9 = IMPreviewExtension();
  v10 = IMAttachmentPreviewFileURL();

  if (!v10)
  {
    goto LABEL_16;
  }

  if (objc_msgSend__UTITypeMightBeAnimated_(self, v11, typeCopy, v12))
  {
    IsMultiFrameAtFileURL = objc_msgSend_imagePreviewIsMultiFrameAtFileURL_(self, v13, v10, v15);
    if (IsMultiFrameAtFileURL)
    {
      v17 = IMDNotificationsControllerLogHandle(IsMultiFrameAtFileURL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "The image is animated - lets copy the first frame", buf, 2u);
      }

      v21 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19, v20);
      v25 = objc_msgSend_lastPathComponent(v10, v22, v23, v24);
      v28 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v21, v26, v25, v27);

      if (v28)
      {
        if (objc_msgSend_copyFirstFrameOfMultiFrameImageAtFileURL_toFileURL_(self, v30, v10, v28))
        {
          goto LABEL_21;
        }

        v32 = IMDNotificationsControllerLogHandle(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED010();
        }
      }

      else
      {
        v32 = IMDNotificationsControllerLogHandle(v29);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED04C();
        }
      }

      v28 = 0;
      goto LABEL_20;
    }
  }

  v33 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v13, v14, v15);
  v37 = objc_msgSend_path(v10, v34, v35, v36);
  v40 = objc_msgSend_fileExistsAtPath_(v33, v38, v37, v39);

  if (!v40)
  {
LABEL_16:
    v28 = 0;
    goto LABEL_21;
  }

  v41 = IMSafeTemporaryDirectory();
  v45 = objc_msgSend_path(v41, v42, v43, v44);
  v49 = objc_msgSend_lastPathComponent(v10, v46, v47, v48);
  v52 = objc_msgSend_stringByAppendingPathComponent_(v45, v50, v49, v51);

  v28 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v53, v52, 0);
  v57 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v54, v55, v56);
  v62 = 0;
  objc_msgSend_copyItemAtURL_toURL_error_(v57, v58, v10, v28, &v62);
  v32 = v62;

  if (v32)
  {
    v60 = IMDNotificationsControllerLogHandle(v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = v32;
      _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_DEFAULT, "Error when copy preview image: [%@]", buf, 0xCu);
    }
  }

LABEL_20:
LABEL_21:

  return v28;
}

- (BOOL)_handleIsSpokenMessageAllowlisted:(id)allowlisted chat:(id)chat message:(id)message
{
  v53 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  messageCopy = message;
  MessagesSpokenAllowlistLevel = objc_msgSend__getMessagesSpokenAllowlistLevel_(self, v9, 0, v10);
  v12 = IMDNotificationsControllerLogHandle(MessagesSpokenAllowlistLevel);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 134217984;
    v50 = *&MessagesSpokenAllowlistLevel;
    _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "SpokenMessageAllowlistLevel: %lu", &v49, 0xCu);
  }

  if (MessagesSpokenAllowlistLevel == 3)
  {
LABEL_9:
    isDateInYesterday = 1;
    goto LABEL_23;
  }

  if (MessagesSpokenAllowlistLevel != 2)
  {
    if (MessagesSpokenAllowlistLevel != 1)
    {
      v13 = objc_msgSend__messageIsFromKnownContact_(self, v14, messageCopy, v15);
      if (v13)
      {
        if (MessagesSpokenAllowlistLevel == 4)
        {
          v13 = objc_msgSend__messageIsFromFavorite_(self, v16, messageCopy, v17);
          isDateInYesterday = v13;
          goto LABEL_23;
        }

        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

  v19 = objc_msgSend_objectForKey_(chatCopy, v14, @"__kchatLastMessageTimestamp", v15);
  v23 = objc_msgSend_longLongValue(v19, v20, v21, v22);

  v25 = IMDNotificationsControllerLogHandle(v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 134217984;
    v50 = v23;
    _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "Last message timestamp: %f", &v49, 0xCu);
  }

  if (!v23)
  {
    v40 = IMDNotificationsControllerLogHandle(v26);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_msgSend_valueForKey_(chatCopy, v41, @"__kchatChatGUIDKey", v42);
      v49 = 138412290;
      v50 = *&v43;
      _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_DEFAULT, "Missing last read date for chatID %@", &v49, 0xCu);
    }

LABEL_20:
    isDateInYesterday = 0;
    goto LABEL_23;
  }

  v30 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v27, v28, v29, v23);
  v31 = IMDNotificationsControllerLogHandle(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138412290;
    v50 = *&v30;
    _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "Last message date: %@", &v49, 0xCu);
  }

  v35 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v32, v33, v34);
  if (objc_msgSend_isDateInToday_(v35, v36, v30, v37))
  {
    isDateInYesterday = 1;
  }

  else
  {
    isDateInYesterday = objc_msgSend_isDateInYesterday_(v35, v38, v30, v39);
  }

LABEL_23:
  v44 = IMDNotificationsControllerLogHandle(v13);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_msgSend_valueForKey_(messageCopy, v45, @"__kmessageGUIDKey", v46);
    v49 = 138412546;
    v50 = *&v47;
    v51 = 1024;
    v52 = isDateInYesterday;
    _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_DEFAULT, "Message: %@ is spoken message allowlisted: %d", &v49, 0x12u);
  }

  return isDateInYesterday;
}

- (unint64_t)_getSpokenMessageAllowlistLevelVersion
{
  v4 = objc_msgSend_defaultsSharedInstance(self, a2, v2, v3);
  v6 = objc_msgSend_getValueFromDomain_forKey_(v4, v5, @"com.apple.MobileSMS", @"kSpokenMessageWhitelistLevelVersion");
  v10 = objc_msgSend_unsignedIntegerValue(v6, v7, v8, v9);

  return v10;
}

- (void)_setSpokenMessageAllowlistLevelVersion:(unint64_t)version
{
  v9 = objc_msgSend_defaultsSharedInstance(self, a2, version, v3);
  v7 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v5, version, v6);
  objc_msgSend_setValue_forDomain_forKey_(v9, v8, v7, @"com.apple.MobileSMS", @"kSpokenMessageWhitelistLevelVersion");
}

- (id)_lastMessageTimeForChat:(id)chat
{
  v4 = objc_msgSend__lastTwoMessagesForChat_(self, a2, chat, v3);
  if (objc_msgSend_count(v4, v5, v6, v7) == 2)
  {
    v11 = objc_msgSend_firstObject(v4, v8, v9, v10);
    v15 = objc_msgSend_date(v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_lastTwoMessagesForChat:(id)chat
{
  v3 = IMDChatRecordCopyMessagesWithLimit(chat, 2);

  return v3;
}

- (BOOL)_messageIsFromFavorite:(id)favorite
{
  favoriteCopy = favorite;
  v7 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v4, v5, v6);
  v10 = objc_msgSend_objectForKey_(favoriteCopy, v8, @"__kmessageCNContactForSenderKey", v9);

  LOBYTE(favoriteCopy) = objc_msgSend_isCNContactFavorited_(v7, v11, v10, v12);
  return favoriteCopy;
}

- (unint64_t)_getMessagesSpokenAllowlistLevel:(BOOL *)level
{
  CFPreferencesAppSynchronize(@"com.apple.MobileSMS");
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"kSpokenMessageWhitelistLevel", @"com.apple.MobileSMS", &keyExistsAndHasValidFormat);
  if (level)
  {
    *level = keyExistsAndHasValidFormat == 0;
  }

  return result;
}

- (void)_setMessagesSpokenAllowlistLevelInPreferences:(unint64_t)preferences
{
  v9 = objc_msgSend_defaultsSharedInstance(self, a2, preferences, v3);
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v5, preferences, v6);
  objc_msgSend_setValue_forDomain_forKey_(v9, v8, v7, @"com.apple.MobileSMS", @"kSpokenMessageWhitelistLevel");
}

+ (id)_truncateNameIfNeeded:(id)needed
{
  neededCopy = needed;
  v8 = neededCopy;
  if (objc_msgSend_length(neededCopy, v4, v5, v6) >= 0xC9)
  {
    v8 = objc_msgSend_substringWithRange_(neededCopy, v7, 0, 200);
  }

  return v8;
}

+ (id)_addressBookNameForAddress:(id)address orContact:(id)contact
{
  v26 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  contactCopy = contact;
  v10 = contactCopy;
  if (contactCopy)
  {
    goto LABEL_7;
  }

  v11 = IMDNotificationsControllerLogHandle(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "We don't have a contact to use. Fetching one", &v22, 2u);
  }

  v15 = objc_msgSend__stripFZIDPrefix(addressCopy, v12, v13, v14);
  v10 = objc_msgSend__IMDCoreSpotlightCNContactForAddress_(self, v16, v15, v17);
  v18 = IMDNotificationsControllerLogHandle(v10);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v15;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Stripped address: %@, contactToUse: %@", &v22, 0x16u);
  }

  if (v10)
  {
LABEL_7:
    v19 = objc_msgSend_displayNameForContact_(MEMORY[0x1E69A7FD0], v7, v10, v8);
    v20 = IMDNotificationsControllerLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = v19;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "Contact to use valid. AddressBookName : %@", &v22, 0xCu);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_addressForHandle:(id)handle
{
  handleCopy = handle;
  v8 = objc_msgSend_canonicalizedURIString(handleCopy, v5, v6, v7);
  v12 = v8;
  if (!v8 || !objc_msgSend_length(v8, v9, v10, v11))
  {
    v13 = objc_msgSend__uncanonicalizedAddressForHandle_(self, v9, handleCopy, v11);

    v12 = v13;
  }

  return v12;
}

+ (id)_displayNameForHandle:(id)handle andContact:(id)contact businessNameManager:(id)manager suggestionProvider:(id)provider
{
  v108 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  managerCopy = manager;
  providerCopy = provider;
  v14 = objc_opt_class();
  v17 = objc_msgSend__addressForHandle_(v14, v15, handleCopy, v16);
  v21 = objc_msgSend_im_stripCategoryLabel(v17, v18, v19, v20);

  if (objc_msgSend_hasSuffix_(v21, v22, *MEMORY[0x1E69A6EA0], v23))
  {
    v27 = IMSharedUtilitiesFrameworkBundle();
    v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"TS_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v24, v25, v26);
  v34 = objc_msgSend_stewieEnabled(v30, v31, v32, v33);

  if (v34)
  {
    if (IMIsStringStewieEmergency())
    {
      v38 = IMSharedUtilitiesFrameworkBundle();
      objc_msgSend_localizedStringForKey_value_table_(v38, v39, @"STEWIE_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
      goto LABEL_7;
    }

    if (IMIsStringStewieRoadside())
    {
      v41 = objc_msgSend__database(self, v35, v36, v37);
      v44 = objc_msgSend_chatRecordsWithIdentifier_(v41, v42, v21, v43);
      v38 = objc_msgSend_firstObject(v44, v45, v46, v47);

      if (v38)
      {
        v50 = objc_msgSend__displayNameForChatRecord_(self, v48, v38, v49);

        v29 = v50;
      }

      if (v29)
      {
        goto LABEL_12;
      }

      v29 = IMSharedUtilitiesFrameworkBundle();
      objc_msgSend_localizedStringForKey_value_table_(v29, v101, @"STEWIE_NOTIFICATION_ROADSIDE_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-Avocet");
      v40 = LABEL_7:;

      v29 = v40;
LABEL_12:
    }
  }

  if (!objc_msgSend_length(v29, v35, v36, v37) && ((MEMORY[0x1B8CAF990](v21) & 1) != 0 || objc_msgSend___im_isChatBot(v21, v54, v55, v56)))
  {
    v57 = objc_opt_class();
    v59 = objc_msgSend__displayNameForBusinessChatAddress_businessNameManager_(v57, v58, v21, managerCopy);

    v29 = v59;
  }

  isCNContactAKnownContact = objc_msgSend_length(v29, v51, v52, v53);
  if (!isCNContactAKnownContact)
  {
    if (!contactCopy || (isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v61, contactCopy, v62), isCNContactAKnownContact))
    {
      v63 = objc_opt_class();
      v65 = objc_msgSend__addressBookNameForAddress_orContact_(v63, v64, v21, contactCopy);

      v29 = v65;
    }
  }

  v66 = IMDNotificationsControllerLogHandle(isCNContactAKnownContact);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 138412802;
    v103 = v21;
    v104 = 2112;
    v105 = v29;
    v106 = 2112;
    v107 = contactCopy;
    _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_DEFAULT, "Address: %@, displayName = %@. Contact = %@", &v102, 0x20u);
  }

  v70 = objc_msgSend_length(v29, v67, v68, v69);
  if (providerCopy && !v70)
  {
    v74 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v102) = 0;
      _os_log_impl(&dword_1B7AD5000, v74, OS_LOG_TYPE_DEFAULT, "We don't have an address book name, so going to try and suggest a name", &v102, 2u);
    }

    v75 = providerCopy[2](providerCopy, v21);

    v29 = v75;
  }

  v76 = objc_msgSend_length(v29, v71, v72, v73);
  if (!v76)
  {
    v77 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v102) = 0;
      _os_log_impl(&dword_1B7AD5000, v77, OS_LOG_TYPE_DEFAULT, "Defaulting to the handle for the display name", &v102, 2u);
    }

    v78 = objc_opt_class();
    v81 = objc_msgSend__countryCodeForHandle_(v78, v79, handleCopy, v80);
    v82 = objc_opt_class();
    v84 = objc_msgSend__formattedDisplayStringForAddress_countryCode_(v82, v83, v21, v81);

    v85 = objc_opt_class();
    v88 = objc_msgSend__uncanonicalizedAddressForHandle_(v85, v86, handleCopy, v87);
    v92 = objc_msgSend_lowercaseString(v88, v89, v90, v91);
    isEqualToString = objc_msgSend_isEqualToString_(v84, v93, v92, v94);

    if (isEqualToString)
    {
      v97 = IMDNotificationsControllerLogHandle(v96);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v102) = 0;
        _os_log_impl(&dword_1B7AD5000, v97, OS_LOG_TYPE_DEFAULT, "Handle display name is equal to lowercase uncanonicalized address, falling back to preserve case", &v102, 2u);
      }

      v98 = v88;
      v84 = v98;
    }

    v29 = v84;
  }

  v99 = IMDNotificationsControllerLogHandle(v76);
  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
  {
    v102 = 138412290;
    v103 = v29;
    _os_log_impl(&dword_1B7AD5000, v99, OS_LOG_TYPE_DEFAULT, "Display name = %@", &v102, 0xCu);
  }

  return v29;
}

- (BOOL)_isChatbotChat:(id)chat
{
  chatCopy = chat;
  v8 = objc_msgSend_objectForKey_(chatCopy, v4, *MEMORY[0x1E69A7870], v5);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_msgSend_objectForKey_(chatCopy, v6, *MEMORY[0x1E69A6A60], v7);
    v9 = v10 != 0;
  }

  return v9;
}

- (id)_fallbackNameOfChatbotFrom:(id)from
{
  fromCopy = from;
  if (objc_msgSend__isChatbotChat_(self, v5, fromCopy, v6))
  {
    v9 = objc_msgSend_objectForKey_(fromCopy, v7, @"__kchatGroupNameKey", v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_displayNameForHandle:(id)handle andContact:(id)contact fallbackName:(id)name
{
  nameCopy = name;
  contactCopy = contact;
  handleCopy = handle;
  v11 = objc_opt_class();
  v15 = objc_msgSend_businessNameManager(self, v12, v13, v14);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1B7B15368;
  v20[3] = &unk_1E7CB6CF8;
  v20[4] = self;
  v21 = nameCopy;
  v16 = nameCopy;
  v18 = objc_msgSend__displayNameForHandle_andContact_businessNameManager_suggestionProvider_(v11, v17, handleCopy, contactCopy, v15, v20);

  return v18;
}

- (id)_displayNameForHandle:(id)handle
{
  handleCopy = handle;
  v7 = objc_msgSend_contactForHandleRecord_(self, v5, handleCopy, v6);
  v9 = objc_msgSend__displayNameForHandle_andContact_(self, v8, handleCopy, v7);

  return v9;
}

- (id)_nicknameDisplayNameForID:(id)d
{
  v3 = _IMDCoreSpotlightNicknameForAddress(d);
  v4 = _IMDContactNameForNickname(v3, 1);

  return v4;
}

+ (id)_displayNameForBusinessChatAddress:(id)address businessNameManager:(id)manager
{
  addressCopy = address;
  managerCopy = manager;
  v7 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1B7AE18F4;
  v29 = sub_1B7AE2470;
  v30 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1B7B15720;
  v22[3] = &unk_1E7CB6D20;
  v24 = &v25;
  v8 = v7;
  v23 = v8;
  v10 = objc_msgSend_businessNameForUID_updateHandler_(managerCopy, v9, addressCopy, v22);
  v11 = v10;
  if (v10)
  {
    v12 = v10;
LABEL_3:
    v13 = v12;
    goto LABEL_12;
  }

  v14 = dispatch_time(0, 3000000000);
  if (dispatch_semaphore_wait(v8, v14))
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Business name lookup timed out", v21, 2u);
      }
    }
  }

  else
  {
    v16 = v26[5];
    if (v16)
    {
      v12 = v16;
      goto LABEL_3;
    }
  }

  v17 = IMSharedUtilitiesFrameworkBundle();
  v13 = objc_msgSend_localizedStringForKey_value_table_(v17, v18, @"BUSINESS_NOTIFICATION_TITLE", &stru_1F2FA9728, @"IMSharedUtilities");

LABEL_12:
  v19 = v13;

  _Block_object_dispose(&v25, 8);

  return v19;
}

- (BOOL)_filteringSettingConfirmed
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = IMSharedHelperDeviceIsiPad();
  v7 = objc_msgSend_defaultsSharedInstance(self, v4, v5, v6);
  BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v7, v8, @"com.apple.carrier", @"ShowMessagesConversationListFilteringPrompt");

  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    v13 = objc_msgSend_IMMessagesFilteringSettingForPreferedSubscription(MEMORY[0x1E69A7F58], v10, v11, v12);
  }

  else
  {
    v13 = v3 | BoolFromDomain_forKey;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      if (v3)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (v13)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v25 = 138412802;
      v26 = v19;
      v27 = 2112;
      v28 = v20;
      if (BoolFromDomain_forKey)
      {
        v18 = @"YES";
      }

      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, " deviceIsiPad %@ allowPromptToConfirmSetting %@ carrier setting %@", &v25, 0x20u);
    }
  }

  if ((v13 & 1) == 0)
  {
    return 1;
  }

  v21 = objc_msgSend_defaultsSharedInstance(self, v14, v15, v16);
  v23 = objc_msgSend_getBoolFromDomain_forKey_(v21, v22, @"com.apple.MobileSMS", @"MessageFilteringSettingsConfirmed");

  return v23;
}

- (BOOL)_deviceIsElgibileToBeForcedIntoFilteringUnknownSenders
{
  IsEligibleToBeForcedIntoFilteringUnknownSender = objc_msgSend_IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender(MEMORY[0x1E69A8020], a2, v2, v3);
  if (IsEligibleToBeForcedIntoFilteringUnknownSender)
  {
    LOBYTE(IsEligibleToBeForcedIntoFilteringUnknownSender) = objc_msgSend__filteringSettingConfirmed(self, v6, v7, v8) ^ 1;
  }

  return IsEligibleToBeForcedIntoFilteringUnknownSender;
}

- (BOOL)_messageIsFromKnownContact:(id)contact
{
  v4 = objc_msgSend_objectForKey_(contact, a2, @"__kmessageCNContactForSenderKey", v3);
  isCNContactAKnownContact = objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v5, v4, v6);

  return isCNContactAKnownContact;
}

- (BOOL)_messageIsBusiness:(id)business
{
  v4 = objc_msgSend_objectForKey_(business, a2, @"__kmessageHandleKey", v3);
  v5 = objc_opt_class();
  v8 = objc_msgSend__addressForHandle_(v5, v6, v4, v7);
  v9 = v8;
  if (v8)
  {
    if (MEMORY[0x1B8CAF990](v8))
    {
      isChatBot = 1;
    }

    else
    {
      isChatBot = objc_msgSend___im_isChatBot(v9, v10, v11, v12);
    }
  }

  else
  {
    isChatBot = 0;
  }

  return isChatBot;
}

- (BOOL)_messageIsStewieEmergency:(id)emergency
{
  v26 = *MEMORY[0x1E69E9840];
  emergencyCopy = emergency;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
  v11 = objc_msgSend_stewieEnabled(v7, v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_objectForKey_(emergencyCopy, v12, @"__kmessageHandleKey", v13);
    v15 = objc_opt_class();
    v18 = objc_msgSend__addressForHandle_(v15, v16, v14, v17);
    v19 = v18;
    if (v18)
    {
      v20 = MEMORY[0x1B8CAF9D0](v18);
      v21 = IMDNotificationsControllerLogHandle(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = @"NO";
        if (v20)
        {
          v22 = @"YES";
        }

        v24 = 138412290;
        v25 = v22;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "Sender is Stewie emergency: %@", &v24, 0xCu);
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (BOOL)_notificationIsFromAFilteredSender:(id)sender messageDictionary:(id)dictionary
{
  v95 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  dictionaryCopy = dictionary;
  v10 = objc_msgSend_objectForKey_(dictionaryCopy, v8, @"__kmessageServiceKey", v9);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, *MEMORY[0x1E69A7AE0], v12);
  isFilterUnknownSendersEnabled = objc_msgSend_isFilterUnknownSendersEnabled(MEMORY[0x1E69A8198], v14, v15, v16);
  isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v17, v18, v19);
  v23 = objc_msgSend_objectForKey_(senderCopy, v21, @"__kchatIsFilteredKey", v22);
  v82 = @"YES";
  if ((objc_msgSend_BOOLValue(v23, v24, v25, v26) & 1) == 0)
  {
    v29 = objc_msgSend_objectForKey_(senderCopy, v27, @"__kchatWasReportedAsiMessageSpamKey", v28);
    if (objc_msgSend_BOOLValue(v29, v30, v31, v32))
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v82 = v33;
  }

  v36 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v34, @"__kmessageFlagsKey", v35);
  v40 = objc_msgSend_unsignedLongLongValue(v36, v37, v38, v39);

  v43 = objc_msgSend_objectForKey_(senderCopy, v41, @"__kchatSMSCategoryKey", v42);
  if (objc_msgSend_intValue(v43, v44, v45, v46) == 1)
  {
    v49 = 1;
  }

  else
  {
    v80 = v10;
    v50 = isTextMessageExtensionEnabled;
    v51 = objc_msgSend_objectForKey_(senderCopy, v47, @"__kchatWasDetectedAsSMSSpamKey", v48);
    if (objc_msgSend_BOOLValue(v51, v52, v53, v54))
    {
      v49 = 1;
    }

    else
    {
      v57 = objc_msgSend_objectForKey_(senderCopy, v55, @"__kchatWasReportedAsiMessageSpamKey", v56);
      if (objc_msgSend_BOOLValue(v57, v58, v59, v60))
      {
        v49 = 1;
      }

      else
      {
        objc_msgSend_objectForKey_(senderCopy, v61, @"__kchatWasDetectedAsiMessageSpamKey", v62);
        v63 = v79 = self;
        v49 = objc_msgSend_BOOLValue(v63, v64, v65, v66) | (v40 >> 27) & 1;

        self = v79;
      }
    }

    isTextMessageExtensionEnabled = v50;
    v10 = v80;
  }

  v69 = objc_msgSend__messageIsFromKnownContact_(self, v67, dictionaryCopy, v68);
  v70 = v69;
  v71 = IMDNotificationsControllerLogHandle(v69);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = @"NO";
    if (isEqualToString)
    {
      v73 = @"YES";
    }

    else
    {
      v73 = @"NO";
    }

    *buf = 138413570;
    if (isFilterUnknownSendersEnabled)
    {
      v74 = @"YES";
    }

    else
    {
      v74 = @"NO";
    }

    v84 = v73;
    v85 = 2112;
    if (isTextMessageExtensionEnabled)
    {
      v75 = @"YES";
    }

    else
    {
      v75 = @"NO";
    }

    v86 = v74;
    if (v49)
    {
      v76 = @"YES";
    }

    else
    {
      v76 = @"NO";
    }

    v87 = 2112;
    if (v70)
    {
      v72 = @"YES";
    }

    v88 = v75;
    v89 = 2112;
    v90 = v82;
    v91 = 2112;
    v92 = v76;
    v93 = 2112;
    v94 = v72;
    _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_DEFAULT, "isSMS %@ unknownFilterinOn %@ smsSpamFilteringOn %@ chatIsFiltered %@ isSpam %@ isContact %@", buf, 0x3Eu);
  }

  if (isEqualToString & 1 | ((v49 & 1) == 0))
  {
    v77 = isEqualToString & isTextMessageExtensionEnabled & v49 & (v70 ^ 1);
  }

  else
  {
    v77 = v70 ^ 1;
  }

  return v77;
}

- (BOOL)_chatIsMuted:(id)muted
{
  v4 = objc_msgSend_objectForKeyedSubscript_(muted, a2, @"__kchatIsMutedKey", v3);
  v8 = objc_msgSend_BOOLValue(v4, v5, v6, v7);

  return v8;
}

- (BOOL)_chatHasCategoryMuted:(id)muted isFromContact:(BOOL)contact
{
  v5 = MEMORY[0x1E69A8198];
  mutedCopy = muted;
  isFilterUnknownSendersEnabled = objc_msgSend_isFilterUnknownSendersEnabled(v5, v7, v8, v9);
  isTextMessageExtensionEnabled = objc_msgSend_isTextMessageExtensionEnabled(MEMORY[0x1E69A8198], v11, v12, v13);
  v17 = objc_msgSend_objectForKey_(mutedCopy, v15, @"__kchatIsFilteredKey", v16);

  v21 = objc_msgSend_intValue(v17, v18, v19, v20) & 0xF;
  if (v21 <= 2)
  {
    if (v21 != 1)
    {
      return v21 == 2;
    }

    v35 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23, v24);
    isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v35, v36, v37, v38);

    if (isPriorityMessagesEnabled)
    {
      result = 0;
      if (isFilterUnknownSendersEnabled && !contact)
      {
        v34 = objc_msgSend_personalPriorityEnabled(MEMORY[0x1E69A8198], v40, v41, v42);
        return v34 ^ 1;
      }

      return result;
    }

    if (!contact)
    {
      v34 = objc_msgSend_hideUnknownSenders(MEMORY[0x1E69A8198], v40, v41, v42);
      return v34 ^ 1;
    }

    return 0;
  }

  if (v21 == 3)
  {
    v43 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23, v24);
    v47 = objc_msgSend_isPriorityMessagesEnabled(v43, v44, v45, v46);

    result = 0;
    if (v47)
    {
      if (isFilterUnknownSendersEnabled && !contact)
      {
        v34 = objc_msgSend_promotionsPriorityEnabled(MEMORY[0x1E69A8198], v48, v49, v50);
        return v34 ^ 1;
      }
    }

    else if ((isFilterUnknownSendersEnabled & isTextMessageExtensionEnabled) == 1 && !contact)
    {
      v52 = MEMORY[0x1E69A8198];

      return MEMORY[0x1EEE66B58](v52, sel_hidePromotionalMessages, v49, v50);
    }

    return result;
  }

  if (v21 != 4)
  {
    return 0;
  }

  v26 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23, v24);
  v30 = objc_msgSend_isPriorityMessagesEnabled(v26, v27, v28, v29);

  result = 0;
  if (v30)
  {
    if (isFilterUnknownSendersEnabled && !contact)
    {
      v34 = objc_msgSend_transactionsPriorityEnabled(MEMORY[0x1E69A8198], v31, v32, v33);
      return v34 ^ 1;
    }
  }

  else if ((isFilterUnknownSendersEnabled & isTextMessageExtensionEnabled) == 1 && !contact)
  {
    v51 = MEMORY[0x1E69A8198];

    return MEMORY[0x1EEE66B58](v51, sel_hideTransactionalMessages, v32, v33);
  }

  return result;
}

- (BOOL)_shouldPostNotificationForChat:(id)chat messageDictionary:(id)dictionary
{
  v86 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  dictionaryCopy = dictionary;
  v11 = objc_msgSend_sharedManager(MEMORY[0x1E69A7EE8], v8, v9, v10);
  if (!objc_msgSend_shouldFilterIncomingMessages(v11, v12, v13, v14))
  {
    v21 = 1;
    if (!chatCopy)
    {
      goto LABEL_50;
    }

LABEL_9:
    if (!v21)
    {
      goto LABEL_50;
    }

    v23 = objc_msgSend_objectForKeyedSubscript_(chatCopy, v15, @"__kchatMarkedAsKnownDateKey", v16);
    v26 = objc_msgSend__dateForMessage_(self, v24, dictionaryCopy, v25);
    v29 = v26;
    if (v23 && v26 && objc_msgSend_compare_(v26, v27, v23, v28) == -1)
    {
      v48 = IMDNotificationsControllerLogHandle(-1);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v52 = "We are not posting the notification because the message was received before the chat was marked as known";
        v58 = v48;
        v59 = 2;
LABEL_47:
        _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_DEFAULT, v52, buf, v59);
      }
    }

    else
    {
      IsMuted = objc_msgSend__chatIsMuted_(self, v27, chatCopy, v28);
      v32 = objc_msgSend__notificationIsFromAFilteredSender_messageDictionary_(self, v31, chatCopy, dictionaryCopy);
      v36 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v33, v34, v35);
      isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v36, v37, v38, v39);

      if (isPriorityMessagesEnabled)
      {
        v78 = IsMuted;
        v79 = v32;
        if (IsMuted)
        {
          LODWORD(v43) = 0;
          v32 = 1;
        }

        else
        {
          v53 = objc_msgSend_objectForKey_(dictionaryCopy, v41, @"__kmessageFlagsKey", v42);
          v57 = objc_msgSend_unsignedLongLongValue(v53, v54, v55, v56);

          if ((v57 & 0x100000000000) != 0)
          {
            IMSharedHelperMessagePriorityTimeout();
            v63 = objc_msgSend_dateByAddingTimeInterval_(v29, v60, v61, v62);
            v67 = objc_msgSend_date(MEMORY[0x1E695DF00], v64, v65, v66);
            LODWORD(v43) = objc_msgSend_compare_(v63, v68, v67, v69) != -1;
          }

          else
          {
            v43 = (v57 >> 44) & 1;
          }
        }

        v70 = objc_msgSend__messageIsFromKnownContact_(self, v41, dictionaryCopy, v42);
        v72 = objc_msgSend__chatHasCategoryMuted_isFromContact_(self, v71, chatCopy, v70);
        LOBYTE(v21) = 1;
        if (v43)
        {
          goto LABEL_49;
        }

        v73 = v72;
        if (((v32 | v72) & 1) == 0)
        {
          goto LABEL_49;
        }

        v48 = IMDNotificationsControllerLogHandle(v72);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_48;
        }

        v74 = @"NO";
        if (v78)
        {
          v75 = @"YES";
        }

        else
        {
          v75 = @"NO";
        }

        if (v79)
        {
          v76 = @"YES";
        }

        else
        {
          v76 = @"NO";
        }

        *buf = 138412802;
        v81 = v75;
        v82 = 2112;
        v83 = v76;
        if (v73)
        {
          v74 = @"YES";
        }

        v84 = 2112;
        v85 = v74;
        v52 = "We are not posting the notification because chat is muted (%@)                                                 or it's from a filtered unknown sender (%@)                                                 or the chat category is muted (%@)";
        goto LABEL_46;
      }

      v44 = objc_msgSend__messageIsFromKnownContact_(self, v41, dictionaryCopy, v42);
      v46 = objc_msgSend__chatHasCategoryMuted_isFromContact_(self, v45, chatCopy, v44);
      v47 = v46;
      if (((IsMuted | v32) & 1) == 0 && !v46)
      {
        LOBYTE(v21) = 1;
LABEL_49:

        goto LABEL_50;
      }

      v48 = IMDNotificationsControllerLogHandle(v46);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = @"NO";
        if (IsMuted)
        {
          v50 = @"YES";
        }

        else
        {
          v50 = @"NO";
        }

        if (v32)
        {
          v51 = @"YES";
        }

        else
        {
          v51 = @"NO";
        }

        *buf = 138412802;
        v81 = v50;
        v82 = 2112;
        v83 = v51;
        if (v47)
        {
          v49 = @"YES";
        }

        v84 = 2112;
        v85 = v49;
        v52 = "We are not posting the notification because chat is muted (%@)                                                 or it's from a filtered unknown sender (%@)                                                 or the chat category is muted (%@)";
LABEL_46:
        v58 = v48;
        v59 = 32;
        goto LABEL_47;
      }
    }

LABEL_48:

    LOBYTE(v21) = 0;
    goto LABEL_49;
  }

  v17 = objc_msgSend__handleIDsForChatDictionary_(self, v15, chatCopy, v16);
  v20 = objc_msgSend_allowsConversationWithHandleIDs_(v11, v18, v17, v19);
  v21 = v20;
  if ((v20 & 1) == 0)
  {
    v22 = IMDNotificationsControllerLogHandle(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "We are not posting the notification in Assistive Access because this conversation is not allowed.", buf, 2u);
    }
  }

  if (chatCopy)
  {
    goto LABEL_9;
  }

LABEL_50:

  return v21;
}

- (BOOL)_isUnknownSenders:(id)senders
{
  if (!senders)
  {
    return 0;
  }

  v4 = objc_msgSend_objectForKey_(senders, a2, @"__kchatIsFilteredKey", v3);
  v8 = objc_msgSend_intValue(v4, v5, v6, v7);

  return v8 == 1;
}

- (id)allTokens
{
  v5 = objc_msgSend_meTokens(self, a2, v2, v3);
  v9 = objc_msgSend_activeAccountAliases(self, v6, v7, v8);
  v12 = objc_msgSend_setByAddingObjectsFromSet_(v5, v10, v9, v11);

  return v12;
}

- (BOOL)_amIMentionedInMessage:(id)message
{
  messageCopy = message;
  v8 = objc_msgSend_allTokens(self, v5, v6, v7);
  v12 = objc_msgSend_mutableCopy(v8, v9, v10, v11);

  v15 = objc_msgSend_objectForKey_(messageCopy, v13, @"__kmessageDestinationCallerIDKey", v14);
  v19 = v15;
  if (v15 && objc_msgSend_length(v15, v16, v17, v18))
  {
    objc_msgSend_addObject_(v12, v16, v19, v18);
  }

  if (objc_msgSend_count(v12, v16, v17, v18))
  {
    v21 = objc_msgSend_areMyTokens_inMessage_(self, v20, v12, messageCopy);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)areMyTokens:(id)tokens inMessage:(id)message
{
  tokensCopy = tokens;
  messageCopy = message;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v9 = objc_msgSend_objectForKey_(messageCopy, v7, @"__kmessageAttributedBodyKey", v8);
  v13 = objc_msgSend_length(v9, v10, v11, v12);
  v14 = *MEMORY[0x1E69A70F8];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1B7B1679C;
  v18[3] = &unk_1E7CB6D48;
  v15 = tokensCopy;
  v19 = v15;
  v20 = &v21;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v9, v16, v14, 0, v13, 0, v18);
  LOBYTE(v13) = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  return v13;
}

- (BOOL)_shouldOverrideChatSilencingBecauseImMentioned:(id)mentioned
{
  v31 = *MEMORY[0x1E69E9840];
  mentionedCopy = mentioned;
  v7 = objc_msgSend_objectForKey_(mentionedCopy, v5, @"__kmessageServiceKey", v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x1E69A7AE0], v9);

  IsBusiness = objc_msgSend__messageIsBusiness_(self, v11, mentionedCopy, v12);
  v17 = IsBusiness;
  if ((isEqualToString & 1) != 0 || (IsBusiness & 1) != 0 || (IsBusiness = objc_msgSend__overrideDNDForMessagesAddressingMe(self, v14, v15, v16), !IsBusiness))
  {
    v21 = IMDNotificationsControllerLogHandle(IsBusiness);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"NO";
      if (isEqualToString)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v25 = 138412802;
      v26 = @"NO";
      v27 = 2112;
      v28 = v23;
      if (v17)
      {
        v22 = @"YES";
      }

      v29 = 2112;
      v30 = v22;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "not overriding chat silencing because override message mentions me is (%@) isSMS (%@) isBusinessChat (%@).", &v25, 0x20u);
    }

    v20 = 0;
  }

  else
  {
    v20 = objc_msgSend__amIMentionedInMessage_(self, v18, mentionedCopy, v19);
  }

  return v20;
}

- (BOOL)_shouldPostNotificationRequest:(id)request withCurrentlyPostedNotifications:(id)notifications
{
  v55 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  notificationsCopy = notifications;
  if (sub_1B7B0C380(notificationsCopy, v8, v9, v10))
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_identifier(requestCopy, v11, v12, v13);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v16 = notificationsCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v44, v54, 16);
    if (v21)
    {
      selfCopy = self;
      v43 = notificationsCopy;
      v22 = *v45;
LABEL_5:
      v23 = 0;
      while (1)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v44 + 1) + 8 * v23);
        v25 = objc_msgSend_request(v24, v18, v19, v20, selfCopy);
        v29 = objc_msgSend_identifier(v25, v26, v27, v28);
        isEqualToString = objc_msgSend_isEqualToString_(v29, v30, v15, v31);

        if (isEqualToString)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v44, v54, 16);
          if (v21)
          {
            goto LABEL_5;
          }

          notificationsCopy = v43;
          goto LABEL_18;
        }
      }

      v21 = v24;
      v33 = IMDNotificationsControllerLogHandle(v21);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v49 = v15;
        v50 = 2112;
        v51 = v25;
        v52 = 2112;
        v53 = requestCopy;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_DEFAULT, "Request %@ is already delivered {deliveredRequest: %@ currentRequest: %@}", buf, 0x20u);
      }

      if (!v21)
      {
        notificationsCopy = v43;
        goto LABEL_20;
      }

      shouldRepostNotification_withAlreadyPostedNotification = objc_msgSend__shouldRepostNotification_withAlreadyPostedNotification_(selfCopy, v35, requestCopy, v21);
      v37 = shouldRepostNotification_withAlreadyPostedNotification;
      v16 = IMDNotificationsControllerLogHandle(shouldRepostNotification_withAlreadyPostedNotification);
      v38 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      notificationsCopy = v43;
      if (v37)
      {
        if (v38)
        {
          *buf = 138412290;
          v49 = v15;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Re-posting notification %@ that has already been delivered", buf, 0xCu);
        }

        goto LABEL_18;
      }

      if (v38)
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Not re-posting notification %@ that has already been delivered", buf, 0xCu);
      }

      v39 = IMDNotificationsControllerLogHandle(v41);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_DEFAULT, "We will NOT post the notification request %@", buf, 0xCu);
      }

      v14 = 0;
    }

    else
    {
LABEL_18:

LABEL_20:
      v39 = IMDNotificationsControllerLogHandle(v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v15;
        _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_DEFAULT, "We will post the notification request %@", buf, 0xCu);
      }

      v14 = 1;
    }
  }

  return v14;
}

- (BOOL)_shouldRepostNotification:(id)notification withAlreadyPostedNotification:(id)postedNotification
{
  v87 = *MEMORY[0x1E69E9840];
  postedNotificationCopy = postedNotification;
  notificationCopy = notification;
  v10 = objc_msgSend_identifier(notificationCopy, v7, v8, v9);
  v14 = objc_msgSend_request(postedNotificationCopy, v11, v12, v13);

  v18 = objc_msgSend_content(v14, v15, v16, v17);

  v22 = objc_msgSend_content(notificationCopy, v19, v20, v21);

  v26 = objc_msgSend_interruptionLevel(v18, v23, v24, v25);
  v30 = objc_msgSend_interruptionLevel(v22, v27, v28, v29);
  v34 = v30;
  if (v30 > v26)
  {
    v35 = IMDNotificationsControllerLogHandle(v30);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v81 = 138412802;
      v82 = v10;
      v83 = 2048;
      v84 = v34;
      v85 = 2048;
      v86 = v26;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because the requestedInterruptionLevel:%ld has been escalated above postedInterruptionLevel:%ld", &v81, 0x20u);
    }
  }

  v36 = objc_msgSend_communicationContext(v18, v31, v32, v33);
  v40 = objc_msgSend_communicationContext(v22, v37, v38, v39);
  v44 = objc_msgSend_notifyRecipientAnyway(v36, v41, v42, v43);
  v48 = objc_msgSend_notifyRecipientAnyway(v40, v45, v46, v47);
  if ((v44 & 1) == 0 && v48)
  {
    v52 = IMDNotificationsControllerLogHandle(v48);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v81 = 138412290;
      v82 = v10;
      _os_log_impl(&dword_1B7AD5000, v52, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because the notification has been escalated to notifyAnyway", &v81, 0xCu);
    }

LABEL_21:
    v53 = 1;
LABEL_28:

    goto LABEL_29;
  }

  if (v34 <= v26)
  {
    v52 = objc_msgSend_body(v18, v49, v50, v51);
    v57 = objc_msgSend_body(v22, v54, v55, v56);
    if (objc_msgSend_length(v52, v58, v59, v60))
    {
      isEqualToString = objc_msgSend_isEqualToString_(v52, v61, v57, v62);
      if ((isEqualToString & 1) == 0)
      {
        v78 = IMDNotificationsControllerLogHandle(isEqualToString);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          v81 = 138412290;
          v82 = v10;
          _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because the message content has been edited", &v81, 0xCu);
        }

        goto LABEL_21;
      }
    }

    v67 = objc_msgSend_attachments(v18, v64, v65, v66);
    v71 = objc_msgSend_attachments(v22, v68, v69, v70);
    v52 = v67;
    v72 = v71;
    v75 = v72;
    v53 = v52 != v72;
    if (v52 == v72)
    {

      v79 = v52;
    }

    else
    {
      if (v52 && v72)
      {
        isEqualToArray = objc_msgSend_isEqualToArray_(v52, v73, v72, v74);

        if (isEqualToArray)
        {
          v53 = 0;
LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
      }

      v79 = IMDNotificationsControllerLogHandle(v77);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        v81 = 138412290;
        v82 = v10;
        _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_DEFAULT, "Will re-post notification request %@ because attachment are different", &v81, 0xCu);
      }
    }

    goto LABEL_27;
  }

  v53 = 1;
LABEL_29:

  return v53;
}

- (unint64_t)screenTimeNotificationOptionsForContext:(id)context
{
  contextCopy = context;
  if (objc_msgSend_allowedByScreenTime(contextCopy, v4, v5, v6))
  {
    if (objc_msgSend_applicationCurrentlyLimited(contextCopy, v7, v8, v9))
    {
      shouldBeAllowedByScreenTimeWhenLimited = objc_msgSend_shouldBeAllowedByScreenTimeWhenLimited(contextCopy, v10, v11, v12);
      v14 = shouldBeAllowedByScreenTimeWhenLimited;
      v15 = IMDNotificationsControllerLogHandle(shouldBeAllowedByScreenTimeWhenLimited);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          *buf = 0;
          v17 = 2;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Disallowing notifications during ScreenTime Downtime", buf, 2u);
        }

        else
        {
          v17 = 2;
        }
      }

      else
      {
        if (v16)
        {
          *v19 = 0;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "Disallowing notifications during ScreenTime Comm Limits", v19, 2u);
        }

        v17 = 4;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 4;
  }

  return v17;
}

- (unint64_t)screenTimeNotificationOptionsForChatDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  if (!dictionary)
  {
    return 1;
  }

  v5 = objc_msgSend__handleIDsForChatDictionary_(self, a2, dictionary, v3);
  v6 = IMDNotificationsControllerLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "fetch screenTimeNotificationOption for handleIDs: [%@]", &v22, 0xCu);
  }

  if (qword_1EDBE79A0 != -1)
  {
    sub_1B7CED088();
  }

  if (objc_msgSend_count(v5, v7, v8, v9))
  {
    v10 = [qword_1EDBE7990 alloc];
    inited = objc_msgSend_initSynchronouslyWithBundleIdentifier_(v10, v11, @"com.apple.MobileSMS", v12);
    v16 = objc_msgSend_allowableByContactsHandles_(inited, v14, v5, v15);
    v19 = objc_msgSend_screenTimeNotificationOptionsForContext_(self, v17, v16, v18);
    v20 = IMDNotificationsControllerLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 134217984;
      v23 = v19;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "get screenTimeNotificationOption: [%tu]", &v22, 0xCu);
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (id)_handleIDsForChatDictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v8, @"__kchatHandlesForChatKey", v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
  if (v12)
  {
    v16 = v12;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v10);
        }

        v21 = objc_msgSend_canonicalizedURIString(*(*(&v23 + 1) + 8 * i), v13, v14, v15);
        if (v21)
        {
          objc_msgSend_addObject_(v7, v19, v21, v20);
        }
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v23, v27, 16);
    }

    while (v16);
  }

  return v7;
}

- (id)_coreSpotlightChatParticipantsFromChatDictionary:(id)dictionary senderHandleID:(id)d
{
  v51 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = objc_msgSend_objectForKey_(dictionary, v5, @"__kchatParticipantsKey", v6);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v9 = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v46, v50, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v47;
    v14 = 0x1E7CB4000uLL;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v47 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v46 + 1) + 8 * i);
        v17 = _IMDCoreSpotlightHandleID(v16);
        if (v17)
        {
          v18 = _IMDCoreSpotlightCNContactForHandle(v16);
          v22 = objc_msgSend_count(v9, v19, v20, v21);
          isEqualToString = objc_msgSend_isEqualToString_(dCopy, v23, v17, v24);
          v27 = v22 == 1;
          isEqualToContact = (v22 == 1) | isEqualToString;
          if (v27 && (isEqualToString & 1) == 0)
          {
            v29 = v14;
            v30 = _IMDCoreSpotlightCNContactForHandleID(dCopy, v26);
            v33 = v30;
            if (v30)
            {
              isEqualToContact = objc_msgSend__im_isEqualToContact_(v30, v31, v18, v32);
            }

            else
            {
              isEqualToContact = 0;
            }

            v14 = v29;
          }

          v34 = objc_alloc(*(v14 + 4088));
          isSender = objc_msgSend_initWithHandleID_contact_isSender_(v34, v35, v17, v18, isEqualToContact & 1);
          objc_msgSend_addObject_(v8, v37, isSender, v38);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v39, &v46, v50, 16);
    }

    while (v12);
  }

  v43 = objc_msgSend_copy(v8, v40, v41, v42);

  return v43;
}

- (id)_groupPhotoInternalFilePathForGroupPhotoGuid:(id)guid
{
  guidCopy = guid;
  if (objc_msgSend_length(guidCopy, v4, v5, v6))
  {
    v7 = IMDAttachmentRecordCopyAttachmentForGUID(guidCopy);
    v11 = objc_msgSend_path(v7, v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_interactionDonationContextWithContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary isUrgentMessageTrigger:(BOOL)trigger
{
  contentCopy = content;
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  v162 = objc_msgSend_objectForKey_(messageDictionaryCopy, v13, @"__kmessageGUIDKey", v14);
  v160 = contentCopy;
  v163 = objc_msgSend_body(contentCopy, v15, v16, v17);
  v20 = objc_msgSend_objectForKey_(messageDictionaryCopy, v18, @"__kmessageDateKey", v19);
  v24 = objc_msgSend_longLongValue(v20, v21, v22, v23);

  v161 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v25, v26, v27, v24);
  v159 = objc_msgSend_objectForKey_(messageDictionaryCopy, v28, @"__kmessageServiceKey", v29);
  v32 = objc_msgSend_objectForKey_(messageDictionaryCopy, v30, @"__kmessageHandleKey", v31);
  v157 = objc_msgSend_uncanonicalizedURIString(v32, v33, v34, v35);
  v158 = v32;
  v36 = _IMDCoreSpotlightHandleID(v32);
  v156 = objc_msgSend_objectForKey_(dictionaryCopy, v37, @"__kchatChatGUIDKey", v38);
  v41 = objc_msgSend_objectForKey_(dictionaryCopy, v39, @"__kchatChatIdentifierKey", v40);
  v44 = objc_msgSend_objectForKey_(dictionaryCopy, v42, @"__kchatStyleKey", v43);
  v153 = objc_msgSend_intValue(v44, v45, v46, v47);

  v50 = objc_msgSend_objectForKey_(dictionaryCopy, v48, @"__kchatLastAddressedHandleStringKey", v49);
  v155 = objc_msgSend__stripFZIDPrefix(v50, v51, v52, v53);

  v56 = objc_msgSend_objectForKey_(dictionaryCopy, v54, @"__kchatIsFilteredKey", v55);
  v60 = objc_msgSend_intValue(v56, v57, v58, v59);

  v154 = objc_msgSend__coreSpotlightChatParticipantsFromChatDictionary_senderHandleID_(self, v61, dictionaryCopy, v36);
  if (objc_msgSend_shouldDisplayGroupNameAndPhotoWith_participants_(self, v62, v60, v154))
  {
    v151 = objc_msgSend_objectForKey_(dictionaryCopy, v63, @"__kchatGroupPhotoGuidKey", v64);
    v152 = objc_msgSend__groupPhotoInternalFilePathForGroupPhotoGuid_(self, v65, v151, v66);
    v69 = objc_msgSend_objectForKey_(dictionaryCopy, v67, @"__kchatGroupNameKey", v68);
  }

  else
  {
    v69 = 0;
    v152 = 0;
    v151 = 0;
  }

  v149 = objc_msgSend__amIMentionedInMessage_(self, v63, messageDictionaryCopy, v64);
  v150 = objc_msgSend_objectForKey_(messageDictionaryCopy, v70, @"__kmessageThreadOriginatorKey", v71);
  v74 = objc_msgSend_objectForKey_(v150, v72, @"__kmessageFlagsKey", v73);
  v78 = objc_msgSend_unsignedLongLongValue(v74, v75, v76, v77);

  if (trigger)
  {
    v148 = 1;
  }

  else
  {
    v81 = objc_msgSend_objectForKey_(messageDictionaryCopy, v79, @"__kmessageFlagsKey", v80);
    v148 = (objc_msgSend_unsignedLongLongValue(v81, v82, v83, v84) >> 35) & 1;
  }

  v85 = objc_msgSend_objectForKey_(dictionaryCopy, v79, @"__kchatIsMergedBusinessThread", v80);
  v147 = objc_msgSend_BOOLValue(v85, v86, v87, v88);

  v92 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v89, v90, v91);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v92, v93, v94, v95);

  if (isTranscriptSharingEnabled && objc_msgSend_hasPrefix_(v41, v97, *MEMORY[0x1E69A7DB0], v98))
  {
    v102 = v41;
    v103 = objc_msgSend_subtitle(v160, v99, v100, v101);

    v107 = objc_msgSend_body(v160, v104, v105, v106);

    v36 = @"stewie:eServices";
    v69 = v103;
    v163 = v107;
  }

  else
  {
    v102 = v41;
  }

  v146 = (v78 >> 2) & 1;
  v108 = objc_alloc_init(IMDINInteractionDonationContext);
  objc_msgSend_setMessageGUID_(v108, v109, v162, v110);
  objc_msgSend_setMessagePlainBody_(v108, v111, v163, v112);
  objc_msgSend_setMessageDate_(v108, v113, v161, v114);
  objc_msgSend_setServiceName_(v108, v115, v159, v116);
  objc_msgSend_setSenderHandleID_(v108, v117, v36, v118);
  objc_msgSend_setUncanonicalizedSenderHandleID_(v108, v119, v157, v120);
  objc_msgSend_setChatGUID_(v108, v121, v156, v122);
  objc_msgSend_setChatIdentifier_(v108, v123, v102, v124);
  objc_msgSend_setChatDisplayName_(v108, v125, v69, v126);
  objc_msgSend_setChatStyle_(v108, v127, v153, v128);
  objc_msgSend_setChatParticipants_(v108, v129, v154, v130);
  objc_msgSend_setChatLastAddressedLocaleHandle_(v108, v131, v155, v132);
  objc_msgSend_setGroupPhotoGuid_(v108, v133, v151, v134);
  objc_msgSend_setGroupPhotoInternalFilePath_(v108, v135, v152, v136);
  objc_msgSend_setIsMergedBusinessThread_(v108, v137, v147, v138);
  objc_msgSend_setIsMentionOfMe_(v108, v139, v149, v140);
  objc_msgSend_setIsReplyToMe_(v108, v141, v146, v142);
  objc_msgSend_setIsNotifyAnyway_(v108, v143, v148, v144);

  return v108;
}

- (id)_synthesizedMessagingNotificationContentWithContent:(id)content chatDictionary:(id)dictionary messageDictionary:(id)messageDictionary isUrgentMessageTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  v126 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  isChatbotChat = objc_msgSend__isChatbotChat_(self, v13, dictionaryCopy, v14);
  if (isChatbotChat)
  {
    v18 = IMDNotificationsControllerLogHandle(isChatbotChat);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Chat has chatbot info, we should not synthesize notification content from intent", buf, 2u);
    }

LABEL_8:

    v21 = contentCopy;
    goto LABEL_45;
  }

  IsBusiness = objc_msgSend__messageIsBusiness_(self, v16, messageDictionaryCopy, v17);
  if (IsBusiness)
  {
    v18 = IMDNotificationsControllerLogHandle(IsBusiness);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_DEFAULT, "Not synthesizing notification content from intent, message is a business chat message", buf, 2u);
    }

    goto LABEL_8;
  }

  v107 = objc_msgSend__interactionDonationContextWithContent_chatDictionary_messageDictionary_isUrgentMessageTrigger_(self, v20, contentCopy, dictionaryCopy, messageDictionaryCopy, triggerCopy);
  v25 = objc_msgSend_sharedController(IMDINInteractionDonationController, v22, v23, v24);
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = sub_1B7B18500;
  v115[3] = &unk_1E7CB6AE0;
  v115[4] = self;
  v27 = objc_msgSend_createInteractionWithContext_updateHandler_(v25, v26, v107, v115);

  isKindOfClass = objc_msgSend_intent(v27, v28, v29, v30);
  v32 = isKindOfClass;
  if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
  {
    v104 = v32;
    v36 = objc_msgSend_userInfo(contentCopy, v33, v34, v35);
    v106 = objc_msgSend_objectForKey_(v36, v37, *MEMORY[0x1E69A7820], v38);

    v105 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v39, v106, v40);
    v121 = 0;
    v122 = &v121;
    v123 = 0x2050000000;
    v44 = qword_1EBA53B10;
    v124 = qword_1EBA53B10;
    if (!qword_1EBA53B10)
    {
      *buf = MEMORY[0x1E69E9820];
      v117 = 3221225472;
      v118 = sub_1B7B1CC98;
      v119 = &unk_1E7CB6EA8;
      v120 = &v121;
      sub_1B7B1CC98(buf, v41, v42, v43);
      v44 = v122[3];
    }

    v45 = v44;
    _Block_object_dispose(&v121, 8);
    v48 = objc_msgSend_messageTypeFromURL_(v44, v46, v105, v47);
    if ((objc_opt_respondsToSelector() & (v48 == 3)) == 1)
    {
      v21 = objc_msgSend_mutableCopy(contentCopy, v49, v50, v51);
      v53 = objc_msgSend_iconNamed_shouldSuppressMask_(MEMORY[0x1E6983290], v52, @"zelkovaTriggerNotificationIcon", 1);
      objc_msgSend_setIcon_(v21, v54, v53, v55);
      objc_msgSend_setShouldShowSubordinateIcon_(v21, v56, 1, v57);
    }

    else
    {
      v103 = objc_msgSend__tapbackFromMessageDictionary_(self, v49, messageDictionaryCopy, v51);
      if (v103)
      {
        v62 = objc_msgSend_chatParticipants(v107, v59, v60, v61);
        v64 = objc_msgSend__senderDisplayNameForTapback_sendMessageIntent_chatParticipants_(self, v63, v103, v104, v62);

        v102 = objc_msgSend__attributedSummaryOfTapback_messageDictionary_senderDisplayName_(self, v65, v103, messageDictionaryCopy, v64);
      }

      else
      {
        v102 = 0;
      }

      objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v59, @"__kmessageAttachmentsKey", v61);
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v66 = v112 = 0u;
      v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v67, &v111, v125, 16);
      if (v71)
      {
        v72 = *v112;
        while (2)
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v112 != v72)
            {
              objc_enumerationMutation(v66);
            }

            if (objc_msgSend_isAdaptiveImageGlyph(*(*(&v111 + 1) + 8 * i), v68, v69, v70))
            {
              v100 = 0;
              goto LABEL_31;
            }
          }

          v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v66, v68, &v111, v125, 16);
          if (v71)
          {
            continue;
          }

          break;
        }
      }

      v100 = 1;
LABEL_31:

      v76 = objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v74, @"__kmessageExpressiveSendStyleIDKey", v75);
      isEqualToString = objc_msgSend_isEqualToString_(v76, v77, *MEMORY[0x1E69A7088], v78);

      v82 = objc_msgSend_objectForKeyedSubscript_(messageDictionaryCopy, v80, @"__kmessageAttributedBodyKey", v81);
      v86 = v82;
      if (v102)
      {
        v87 = MEMORY[0x1B8CAFAC0](@"UNNotificationAttributedMessageContext", @"UserNotifications");
        v89 = objc_msgSend_contextWithSendMessageIntent_attributedContent_(v87, v88, v104, v102);
        v110 = 0;
        v91 = objc_msgSend_contentByUpdatingWithAttributedMessageContext_error_(contentCopy, v90, v89, &v110);
        v53 = v110;
      }

      else if ((v100 | isEqualToString) & 1) == 0 && objc_msgSend_length(v82, v83, v84, v85) && (objc_opt_respondsToSelector())
      {
        v101 = objc_msgSend__attributedMessageBodyByInsertingAdaptiveImageGlyphsInMessageBody_attachments_(self, v83, v86, v66);
        v93 = MEMORY[0x1B8CAFAC0](@"UNNotificationAttributedMessageContext", @"UserNotifications");
        v95 = objc_msgSend_contextWithSendMessageIntent_attributedContent_(v93, v94, v104, v101);
        v109 = 0;
        v91 = objc_msgSend_contentByUpdatingWithAttributedMessageContext_error_(contentCopy, v96, v95, &v109);
        v53 = v109;
      }

      else
      {
        v108 = 0;
        v91 = objc_msgSend_contentByUpdatingWithProvider_error_(contentCopy, v83, v104, &v108, v100);
        v92 = v108;
        v53 = v92;
      }

      v97 = v91;
      if (v53)
      {
        v98 = IMDNotificationsControllerLogHandle(v92);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED120();
        }

        v97 = contentCopy;
      }

      v21 = v97;
    }
  }

  else
  {
    v58 = IMDNotificationsControllerLogHandle(isKindOfClass);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_DEFAULT, "Not synthesizing notification content from intent, intent was not generated for message", buf, 2u);
    }

    v21 = contentCopy;
  }

LABEL_45:

  return v21;
}

- (id)_attributedSummaryOfTapback:(id)tapback messageDictionary:(id)dictionary senderDisplayName:(id)name
{
  v90 = *MEMORY[0x1E69E9840];
  tapbackCopy = tapback;
  dictionaryCopy = dictionary;
  nameCopy = name;
  v11 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v9, @"__kmessageFlagsKey", v10);
  v66 = objc_msgSend_unsignedLongLongValue(v11, v12, v13, v14);

  v69 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v15, @"__kmessageSummaryInfoDataKey", v16);
  v17 = JWDecodeDictionary();
  v20 = objc_msgSend___imami_attributedStringForKey_(v17, v18, *MEMORY[0x1E69A7218], v19);
  v71 = dictionaryCopy;
  v21 = dictionaryCopy;
  selfCopy = self;
  v25 = objc_msgSend_objectForKeyedSubscript_(v21, v23, @"__kmessageAttachmentsKey", v24);
  v68 = v20;
  v28 = objc_msgSend__attachmentRecordsForAssociatedMessagePartText_(selfCopy, v26, v20, v27);
  v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v30 = v25;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v84, v89, 16);
  if (v32)
  {
    v36 = v32;
    v37 = *v85;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v85 != v37)
        {
          objc_enumerationMutation(v30);
        }

        v39 = *(*(&v84 + 1) + 8 * i);
        v41 = objc_msgSend_guid(v39, v33, v34, v35);
        if (v41)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v29, v40, v39, v41);
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v84, v89, 16);
    }

    while (v36);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v42 = v28;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v80, v88, 16);
  if (v44)
  {
    v48 = v44;
    v49 = *v81;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v81 != v49)
        {
          objc_enumerationMutation(v42);
        }

        v51 = *(*(&v80 + 1) + 8 * j);
        v53 = objc_msgSend_guid(v51, v45, v46, v47);
        if (v53)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v29, v52, v51, v53);
        }
      }

      v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v45, &v80, v88, 16);
    }

    while (v48);
  }

  v57 = objc_msgSend_copy(v29, v54, v55, v56);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B7B189C4;
  aBlock[3] = &unk_1E7CB6DC0;
  v58 = v57;
  v79 = v58;
  v59 = _Block_copy(aBlock);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = sub_1B7B18A04;
  v76[3] = &unk_1E7CB6DC0;
  v60 = v58;
  v77 = v60;
  v61 = _Block_copy(v76);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = sub_1B7B18A44;
  v73[3] = &unk_1E7CB6DE8;
  v74 = v60;
  v75 = selfCopy;
  v62 = v60;
  v63 = _Block_copy(v73);
  v67 = objc_msgSend_previewAttributedStringWithMessageSummaryInfo_isAdaptiveImageGlyphProvider_isCommSafetySensitiveProvider_adaptiveImageGlyphProvider_senderDisplayName_isFromMe_effectString_(tapbackCopy, v64, v17, v59, v61, v63, nameCopy, (v66 >> 2) & 1, 0);

  return v67;
}

- (id)_attachmentRecordsForAssociatedMessagePartText:(id)text
{
  v26 = *MEMORY[0x1E69E9840];
  if (text)
  {
    v4 = objc_msgSend___im_transferGUIDsInAttributedString(text, a2, text, v3);
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
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
            objc_enumerationMutation(v6);
          }

          v14 = IMDAttachmentRecordCopyAttachmentForGUID(*(*(&v21 + 1) + 8 * i));
          if (v14)
          {
            objc_msgSend_addObject_(v5, v12, v14, v13, v21);
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v21, v25, 16);
      }

      while (v9);
    }

    v19 = objc_msgSend_copy(v5, v16, v17, v18);
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

- (id)_senderDisplayNameForTapback:(id)tapback sendMessageIntent:(id)intent chatParticipants:(id)participants
{
  v57 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  participantsCopy = participants;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(participantsCopy, v8, &v52, v56, 16);
  if (v12)
  {
    v13 = *v53;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v53 != v13)
      {
        objc_enumerationMutation(participantsCopy);
      }

      v15 = *(*(&v52 + 1) + 8 * v14);
      if (objc_msgSend_isSender(v15, v9, v10, v11, v52))
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(participantsCopy, v9, &v52, v56, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v15;

    if (!v12)
    {
      v16 = 0;
      v38 = objc_msgSend_length(0, v18, v19, v20, v52);
      goto LABEL_22;
    }

    v17 = objc_msgSend_contact(v12, v18, v19, v20);
    if (v17 && objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v21, v17, v22))
    {
      v26 = objc_msgSend_sharedDefaults(MEMORY[0x1E695CE40], v23, v24, v25);
      if (objc_msgSend_shortNameFormatPrefersNicknames(v26, v27, v28, v29))
      {
        v16 = objc_msgSend_nickname(v17, v30, v31, v32);
        v36 = objc_msgSend_length(v16, v33, v34, v35);
      }

      else
      {
        v16 = 0;
        v36 = objc_msgSend_length(0, v30, v31, v32);
      }

      if (!v36)
      {
        v42 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v37, v17, 1000);

        v16 = v42;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
LABEL_9:
    v16 = 0;
    v17 = participantsCopy;
  }

  v38 = objc_msgSend_length(v16, v43, v44, v45, v52);
LABEL_22:
  if (!v38)
  {
    v46 = objc_msgSend_sender(intentCopy, v39, v40, v41);
    v50 = objc_msgSend_displayName(v46, v47, v48, v49);

    v16 = v50;
  }

  return v16;
}

- (id)_adaptiveImageGlyphForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if (objc_msgSend_transferState(attachmentCopy, v4, v5, v6) == 5)
  {
    v10 = objc_msgSend_path(attachmentCopy, v7, v8, v9);
    if (objc_msgSend_length(v10, v11, v12, v13))
    {
      v15 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v14, v10, 0);
      v16 = IMAttachmentEmojiImagePreviewFileURL();
      v24 = 0;
      v18 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v17, v16, 1, &v24);
      if (v18)
      {
        v19 = objc_alloc(MEMORY[0x1E69DB780]);
        v22 = objc_msgSend_initWithImageContent_(v19, v20, v18, v21);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)_attributedMessageBodyByInsertingAdaptiveImageGlyphsInMessageBody:(id)body attachments:(id)attachments
{
  v53 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  attachmentsCopy = attachments;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = attachmentsCopy;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v48, v52, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v49;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        v20 = objc_msgSend_guid(v18, v12, v13, v14);
        if (v20)
        {
          objc_msgSend_setObject_forKey_(v8, v19, v18, v20);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v48, v52, 16);
    }

    while (v15);
  }

  v24 = objc_msgSend_length(bodyCopy, v21, v22, v23);
  v28 = objc_msgSend_mutableCopy(bodyCopy, v25, v26, v27);
  v29 = *MEMORY[0x1E69A5F68];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1B7B191C8;
  v43[3] = &unk_1E7CB6E10;
  v44 = v8;
  selfCopy = self;
  v46 = bodyCopy;
  v30 = v28;
  v47 = v30;
  v31 = bodyCopy;
  v32 = v8;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v31, v33, v29, 0, v24, 0, v43);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1B7B19388;
  v41[3] = &unk_1E7CB6E60;
  v42 = v30;
  v34 = v30;
  objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v34, v35, 0, v24, 0, v41);
  v39 = objc_msgSend_copy(v34, v36, v37, v38);

  return v39;
}

- (id)_generateNotificationRequestForMessageRecord:(id)record isUrgentMessageTrigger:(BOOL)trigger isCarouselUITriggered:(BOOL)triggered shouldAdvanceLastAlertedMessageDate:(BOOL *)date
{
  triggeredCopy = triggered;
  triggerCopy = trigger;
  recordCopy = record;
  v12 = objc_msgSend__messageDictionaryForMessageRecord_copyThreadOriginator_(self, v11, recordCopy, 1);
  v15 = objc_msgSend__chatDictionaryForMessageRecord_(self, v13, recordCopy, v14);
  v17 = objc_msgSend__generateNotificationRequestForMessageRecord_messageDictionary_chatDictionary_isUrgentMessageTrigger_isCarouselUITriggered_shouldAdvanceLastAlertedMessageDate_(self, v16, recordCopy, v12, v15, triggerCopy, triggeredCopy, date);

  return v17;
}

- (id)_generateNotificationRequestForMessageRecord:(id)record messageDictionary:(id)dictionary chatDictionary:(id)chatDictionary isUrgentMessageTrigger:(BOOL)trigger isCarouselUITriggered:(BOOL)triggered shouldAdvanceLastAlertedMessageDate:(BOOL *)date
{
  triggeredCopy = triggered;
  v149 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  triggerCopy = trigger;
  v17 = objc_alloc_init(MEMORY[0x1E6983220]);
  ShouldBeSilentlyDeliveredForBusinessChat = objc_msgSend__messageShouldBeSilentlyDeliveredForBusinessChat_(self, v18, dictionaryCopy, v19);
  v24 = objc_msgSend_count(chatDictionaryCopy, v21, v22, v23);
  if (!v24)
  {
    v31 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_msgSend_objectForKey_(dictionaryCopy, v32, @"__kmessageGUIDKey", v33);
      *buf = 138412290;
      v146 = v34;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "This notification %@ hasn't been associated with a chat yet", buf, 0xCu);
    }

LABEL_8:

    if (date)
    {
      *date = 0;
    }

    goto LABEL_18;
  }

  if (ShouldBeSilentlyDeliveredForBusinessChat)
  {
    v27 = IMDNotificationsControllerLogHandle(v24);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"__kmessageGUIDKey", v29);
      *buf = 138412290;
      v146 = v30;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Not notifying for %@ because it is a silent business chat message", buf, 0xCu);
    }

LABEL_17:

LABEL_18:
    v49 = 0;
    goto LABEL_19;
  }

  v35 = objc_msgSend__areAllMessagePartsRetractedForMessageDictionary_(self, v25, dictionaryCopy, v26);
  if (v35)
  {
    v27 = IMDNotificationsControllerLogHandle(v35);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_msgSend_objectForKey_(dictionaryCopy, v36, @"__kmessageGUIDKey", v37);
      *buf = 138412290;
      v146 = v38;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Not generating notification request for %@ because all message parts have been retracted", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v39 = objc_opt_class();
  isFacetimeHighlighted = objc_msgSend__isFacetimeHighlighted_(v39, v40, dictionaryCopy, v41);
  if (isFacetimeHighlighted)
  {
    v27 = IMDNotificationsControllerLogHandle(isFacetimeHighlighted);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v48 = objc_msgSend_objectForKey_(dictionaryCopy, v46, @"__kmessageGUIDKey", v47);
      *buf = 138412290;
      v146 = v48;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Not generating notification request for %@ because it's already highlighted in an ongoing FaceTime call", buf, 0xCu);
    }

    goto LABEL_17;
  }

  Unlock = objc_msgSend__deviceUnderFirstUnlock(self, v43, v44, v45);
  if (Unlock)
  {
    v54 = IMDNotificationsControllerLogHandle(Unlock);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_DEFAULT, "Device under first unlock, skip checking screentime", buf, 2u);
    }
  }

  else
  {
    v55 = objc_msgSend_screenTimeNotificationOptionsForChatDictionary_(self, v52, chatDictionaryCopy, v53);
    if ((v55 & 4) != 0)
    {
      v27 = IMDNotificationsControllerLogHandle(v55);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v132 = objc_msgSend_objectForKey_(dictionaryCopy, v130, @"__kmessageGUIDKey", v131);
        *buf = 138412290;
        v146 = v132;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Not notifying for %@ because it is not allowed by Screen Time", buf, 0xCu);
      }

      goto LABEL_17;
    }

    ShouldIgnoreDowntime = objc_msgSend_setShouldIgnoreDowntime_(v17, v56, (v55 >> 1) & 1, v57);
    v54 = IMDNotificationsControllerLogHandle(ShouldIgnoreDowntime);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v61 = objc_msgSend_objectForKey_(dictionaryCopy, v59, @"__kmessageGUIDKey", v60);
      v65 = objc_msgSend_shouldIgnoreDowntime(v17, v62, v63, v64);
      v66 = @"NO";
      if (v65)
      {
        v66 = @"YES";
      }

      *buf = 138412546;
      v146 = v61;
      v147 = 2112;
      v148 = v66;
      _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_DEFAULT, "shouldIgnoreDowntime for %@ : %@ ", buf, 0x16u);
    }
  }

  if (objc_msgSend__shouldOverrideChatSilencingBecauseImMentioned_(self, v67, dictionaryCopy, v68))
  {
    IsStewieEmergency = 1;
  }

  else
  {
    IsStewieEmergency = objc_msgSend__messageIsStewieEmergency_(self, v69, dictionaryCopy, v70);
  }

  objc_msgSend__messageShouldBeSpoken_chatDictionary_(self, v69, dictionaryCopy, chatDictionaryCopy);
  if (!triggeredCopy && ((objc_msgSend__shouldPostNotificationForChat_messageDictionary_(self, v72, chatDictionaryCopy, dictionaryCopy) | IsStewieEmergency) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v135 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
      {
        v138 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v136, @"__kmessageGUIDKey", v137);
        *buf = 138412290;
        v146 = v138;
        _os_log_impl(&dword_1B7AD5000, v135, OS_LOG_TYPE_INFO, "suppressed notification generation for silenced message %@.", buf, 0xCu);
      }
    }

    isUnknownSenders = objc_msgSend__isUnknownSenders_(self, v133, chatDictionaryCopy, v134);
    if (!isUnknownSenders)
    {
      goto LABEL_18;
    }

    v31 = IMDNotificationsControllerLogHandle(isUnknownSenders);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v142 = objc_msgSend_objectForKey_(dictionaryCopy, v140, @"__kmessageGUIDKey", v141);
      *buf = 138412290;
      v146 = v142;
      _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "This notification %@ mark as sending from unknown senders", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_msgSend__populateBasicNotificationIdentifyingContent_chatDictionary_messageDictionary_isCarouselUITriggered_(self, v72, v17, chatDictionaryCopy, dictionaryCopy, triggeredCopy);
  objc_msgSend__populateBodyForNotificationContent_messageDictionary_(self, v73, v17, dictionaryCopy);
  objc_msgSend__populateTitleForNotificationContent_chatDictionary_messageDictionary_(self, v74, v17, chatDictionaryCopy, dictionaryCopy);
  objc_msgSend__populateSubtitleForNotificationContent_chatDictionary_messageDictionary_(self, v75, v17, chatDictionaryCopy, dictionaryCopy);
  objc_msgSend__populateSoundAndDisplayActivationForNotificationContent_chatDictionary_messageDictionary_(self, v76, v17, chatDictionaryCopy, dictionaryCopy);
  objc_msgSend__populateIgnoresDoNotDisturb_chatDictionary_messageDictionary_(self, v77, v17, chatDictionaryCopy, dictionaryCopy);
  if (recordCopy)
  {
    v80 = objc_msgSend__messageIsFromKnownContact_(self, v78, dictionaryCopy, v79);
    objc_msgSend__populateAttachmentsForNotificationContent_messageDictionary_messageRecord_knownSender_(self, v81, v17, dictionaryCopy, recordCopy, v80);
  }

  objc_msgSend__populateUserInfoOnContentForWatch_messageDictionary_chatDictionary_isCarouselUITriggered_(self, v78, v17, dictionaryCopy, chatDictionaryCopy, triggeredCopy);
  objc_msgSend__populateNotificationCategoryContent_messageDictionary_chatDictionary_(self, v82, v17, dictionaryCopy, chatDictionaryCopy);
  objc_msgSend__populateUserInfoForMessageContent_messageDictionary_messageIsAddressedToMe_(self, v83, v17, dictionaryCopy, IsStewieEmergency);
  objc_msgSend__populateRealertCountForNotificationContent_(self, v84, v17, v85);
  objc_msgSend__populateNotificationContentForTranscriptSharing_chatDictionary_messageDictionary_(self, v86, v17, chatDictionaryCopy, dictionaryCopy);
  objc_msgSend__populateTimeSensitiveOrCriticalForNotificationContent_chatDictionary_messageDictionary_(self, v87, v17, chatDictionaryCopy, dictionaryCopy);
  v90 = objc_msgSend_objectForKey_(dictionaryCopy, v88, @"__kmessageGUIDKey", v89);
  v143 = 0;
  v94 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v91, v92, v93);
  v97 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v95, @"__kmessageBalloonBundleIDKey", v96);
  v100 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v98, @"__kmessagePayloadDataKey", v99);
  v103 = objc_msgSend_objectForKey_(chatDictionaryCopy, v101, @"__kchatChatIdentifierKey", v102);
  objc_msgSend_populateUserInfoForNotificationContent_messageBalloonBundleID_payloadData_chatIdentifier_isUrgentMessageTrigger_shouldSuppressNotification_(v94, v104, v17, v97, v100, v103, &triggerCopy, &v143);

  if (v143)
  {
    v109 = IMDNotificationsControllerLogHandle(v105);
    if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
    {
      v112 = objc_msgSend_objectForKey_(dictionaryCopy, v110, @"__kmessageGUIDKey", v111);
      *buf = 138412290;
      v146 = v112;
      _os_log_impl(&dword_1B7AD5000, v109, OS_LOG_TYPE_DEFAULT, "Suppressing notification for messageGUID %@", buf, 0xCu);
    }

    v49 = 0;
  }

  else
  {
    if (objc_msgSend_interruptionLevel(v17, v106, v107, v108) == 3)
    {
      objc_msgSend_setShouldSuppressScreenLightUp_(v17, v113, 0, v114);
      v120 = objc_msgSend_sound(v17, v115, v116, v117);
      if (!v120 || (objc_msgSend_sound(v17, v113, v118, v119), v121 = objc_claimAutoreleasedReturnValue(), v125 = objc_msgSend_alertType(v121, v122, v123, v124) == 2, v121, v120, v125))
      {
        v126 = objc_msgSend_defaultCriticalSound(MEMORY[0x1E69832B8], v113, v118, v119);
        objc_msgSend_setSound_(v17, v127, v126, v128);
      }
    }

    v109 = objc_msgSend__synthesizedMessagingNotificationContentWithContent_chatDictionary_messageDictionary_isUrgentMessageTrigger_(self, v113, v17, chatDictionaryCopy, dictionaryCopy, triggerCopy);
    v49 = objc_msgSend_requestWithIdentifier_content_trigger_destinations_(MEMORY[0x1E6983298], v129, v90, v109, 0, 15);
  }

LABEL_19:

  return v49;
}

- (BOOL)_areAllMessagePartsRetractedForMessageDictionary:(id)dictionary
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v4, @"__kmessageBalloonBundleIDKey", v5);
  v10 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v7, v8, v9);
  canPopulateUserInfoForMessageBalloonBundleID = objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(v10, v11, v6, v12);

  if (canPopulateUserInfoForMessageBalloonBundleID)
  {
    v16 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"__kmessageGUIDKey", v15);
    v17 = IMDNotificationsControllerLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 138412546;
      v46 = v6;
      v47 = 2112;
      v48 = v16;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Delegating retracted check to IMExtensionNotificationManager for BalloonBundleID %@ messageGUID %@", &v45, 0x16u);
    }

    v21 = objc_msgSend_sharedInstance(IMExtensionNotificationManager, v18, v19, v20);
    shouldRetractedMessageForBalloonBundleID = objc_msgSend_shouldRetractedMessageForBalloonBundleID_(v21, v22, v6, v23);
  }

  else
  {
    v16 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v14, @"__kmessageAttributedBodyKey", v15);
    v21 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v25, @"__kmessageTextKey", v26);
    if (objc_msgSend_length(v16, v27, v28, v29) || objc_msgSend_length(v21, v30, v31, v32) || (objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"__kmessageDateEditedKey", v34), v36 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend_longLongValue(v36, v37, v38, v39), v36, v40 < 1))
    {
      shouldRetractedMessageForBalloonBundleID = 0;
    }

    else
    {
      v43 = objc_msgSend_objectForKey_(dictionaryCopy, v41, @"__kmessageGUIDKey", v42);
      v44 = IMDNotificationsControllerLogHandle(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = 138412290;
        v46 = v43;
        _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_DEFAULT, "Determined that all message parts have been retracted for messageGUID %@", &v45, 0xCu);
      }

      shouldRetractedMessageForBalloonBundleID = 1;
    }
  }

  return shouldRetractedMessageForBalloonBundleID;
}

+ (BOOL)_isFacetimeHighlighted:(id)highlighted
{
  v76 = *MEMORY[0x1E69E9840];
  highlightedCopy = highlighted;
  v65 = objc_msgSend__pluginPayloadAttachmentPathsForMessage_(self, v4, highlightedCopy, v5);
  v66 = objc_msgSend_objectForKeyedSubscript_(highlightedCopy, v6, @"__kmessageTextKey", v7);
  v10 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v8, v66, v9);
  v67 = objc_msgSend__lpLinkMetadataForMessage_attachmentPaths_originalURL_(self, v11, highlightedCopy, v65, v10);

  v15 = objc_msgSend_collaborationMetadata(v67, v12, v13, v14);

  v17 = IMDNotificationsControllerLogHandle(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    if (!v15)
    {
      v18 = @"NO";
    }

    *buf = 138412290;
    v75 = v18;
    _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Message has collaboration meta data: %@", buf, 0xCu);
  }

  if (v15)
  {
    v22 = objc_msgSend_collaborationMetadata(v67, v19, v20, v21);
    v26 = objc_msgSend_collaborationIdentifier(v22, v23, v24, v25);

    v28 = IMDNotificationsControllerLogHandle(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v26;
      _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_DEFAULT, "Read collaborationIdentifier from message: %@", buf, 0xCu);
    }

    if (objc_msgSend_length(v26, v29, v30, v31))
    {
      v35 = objc_msgSend_sharedInstance(MEMORY[0x1E69D8A58], v32, v33, v34);
      v64 = objc_msgSend_conversationManager(v35, v36, v37, v38);

      objc_msgSend_activeConversations(v64, v39, v40, v41);
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v42 = v70 = 0u;
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, &v69, v73, 16);
      v45 = v44;
      if (v44)
      {
        v46 = *v70;
        while (2)
        {
          v47 = 0;
          do
          {
            if (*v70 != v46)
            {
              objc_enumerationMutation(v42);
            }

            v48 = *(*(&v69 + 1) + 8 * v47);
            v49 = IMDNotificationsControllerLogHandle(v44);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v53 = objc_msgSend_highlightIdentifiers(v48, v50, v51, v52);
              *buf = 138412290;
              v75 = v53;
              _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_DEFAULT, "Read highlightIdentifiers from current FaceTime call: %@", buf, 0xCu);
            }

            v57 = objc_msgSend_highlightIdentifiers(v48, v54, v55, v56);
            v60 = objc_msgSend_containsObject_(v57, v58, v26, v59);

            if (v60)
            {

              v62 = 1;
              goto LABEL_23;
            }

            ++v47;
          }

          while (v45 != v47);
          v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v61, &v69, v73, 16);
          v45 = v44;
          if (v44)
          {
            continue;
          }

          break;
        }
      }
    }

    v62 = 0;
LABEL_23:
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

+ (id)_pluginPayloadAttachmentPathsForMessage:(id)message
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKey_(message, a2, @"__kmessageRowIDKey", v3);
  v8 = objc_msgSend_longLongValue(v4, v5, v6, v7);
  v9 = IMDMessageRecordCopyAttachmentsForIDWithLock(v8);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v29, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        if (v20)
        {
          v23 = objc_msgSend_path(v20, v14, v15, v16, v25);
          if (v23)
          {
            objc_msgSend_addObject_(v10, v21, v23, v22);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v29, 16);
    }

    while (v17);
  }

  return v10;
}

+ (id)_lpLinkMetadataForMessage:(id)message attachmentPaths:(id)paths originalURL:(id)l
{
  v63 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  pathsCopy = paths;
  lCopy = l;
  if (MEMORY[0x1B8CAFAC0](@"LPLinkMetadataPresentationTransformer", @"LinkPresentation"))
  {
    v12 = objc_msgSend_objectForKey_(messageCopy, v10, @"__kmessagePayloadDataKey", v11);
    v13 = objc_alloc_init(MEMORY[0x1E69A8010]);
    v56 = v12;
    objc_msgSend_setData_(v13, v14, v12, v15);
    v55 = objc_msgSend_objectForKey_(messageCopy, v16, @"__kmessageGUIDKey", v17);
    objc_msgSend_setMessageGUID_(v13, v18, v55, v19);
    v22 = objc_msgSend_objectForKey_(messageCopy, v20, @"__kmessageFlagsKey", v21);
    v26 = (objc_msgSend_unsignedLongLongValue(v22, v23, v24, v25) >> 2) & 1;

    objc_msgSend_setIsFromMe_(v13, v27, v26, v28);
    objc_msgSend_setUrl_(v13, v29, lCopy, v30);
    v34 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32, v33);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v57 = pathsCopy;
    v35 = pathsCopy;
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v58, v62, 16);
    if (v37)
    {
      v40 = v37;
      v41 = *v59;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v59 != v41)
          {
            objc_enumerationMutation(v35);
          }

          v43 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v38, *(*(&v58 + 1) + 8 * i), v39);
          v44 = v43;
          if (v34 && v43)
          {
            CFArrayAppendValue(v34, v43);
          }
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v58, v62, 16);
      }

      while (v40);
    }

    objc_msgSend_setAttachments_(v13, v45, v34, v46);
    v49 = objc_msgSend_linkMetadataForPluginPayload_(MEMORY[0x1E69A8278], v47, v13, v48);
    v53 = objc_msgSend_copy(v49, v50, v51, v52);

    pathsCopy = v57;
  }

  else
  {
    v53 = 0;
  }

  return v53;
}

- (BOOL)_deviceUnderFirstUnlock
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8328], a2, v2, v3);
  isUnderFirstDataProtectionLock = objc_msgSend_isUnderFirstDataProtectionLock(v4, v5, v6, v7);

  return isUnderFirstDataProtectionLock;
}

- (id)_generateNotificationRequestForDeliveryError:(id)error isCarouselUITriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  v49 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v9 = objc_msgSend__messageDictionaryForMessageRecord_(self, v7, errorCopy, v8);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"__kmessageErrorKey", v11);
  v16 = objc_msgSend_longLongValue(v12, v13, v14, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v9, v17, @"__kmessageFlagsKey", v18);
  v23 = objc_msgSend_unsignedLongLongValue(v19, v20, v21, v22);

  v26 = objc_msgSend_objectForKeyedSubscript_(v9, v24, @"__kmessageItemTypeKey", v25);
  v30 = v26;
  if (v16 | v23 & 0x20000000000 && !objc_msgSend_longValue(v26, v27, v28, v29))
  {
    v33 = objc_alloc_init(MEMORY[0x1E6983220]);
    v37 = objc_msgSend__chatDictionaryForMessageRecord_(self, v35, errorCopy, v36);
    objc_msgSend__populateBasicNotificationIdentifyingContent_chatDictionary_messageDictionary_isCarouselUITriggered_(self, v38, v33, v37, v9, triggeredCopy);
    if (v16 == 43)
    {
      objc_msgSend__populateBodyAndTitleForSendReceivedAsJunkNotificationContent_messageDictionary_(self, v39, v33, v9);
    }

    else
    {
      objc_msgSend__populateBodyAndTitleForSendFailedNotificationContent_messageDictionary_(self, v39, v33, v9);
    }

    objc_msgSend__populateUserInfoOnContentForWatch_messageDictionary_chatDictionary_isCarouselUITriggered_(self, v40, v33, v9, v37, triggeredCopy);
    objc_msgSend__populateRealertCountForNotificationContent_(self, v41, v33, v42);
    v45 = objc_msgSend_objectForKey_(v9, v43, @"__kmessageGUIDKey", v44);
    v32 = objc_msgSend_requestWithIdentifier_content_trigger_(MEMORY[0x1E6983298], v46, v45, v33, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v47 = 138412290;
        v48 = v9;
        _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_INFO, "We don't notify for delivery non-failures or failures of non-messages for messageDictionary %@", &v47, 0xCu);
      }
    }

    v32 = 0;
    v33 = 0;
  }

  return v32;
}

- (id)_messageDictionaryForMessageRecord:(id)record copyThreadOriginator:(BOOL)originator
{
  originatorCopy = originator;
  recordCopy = record;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = objc_msgSend_initWithCapacity_(v6, v7, 20, v8);
  v181 = 0;
  v182 = -1;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v178 = 0;
  v175 = 0;
  v176 = 0;
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v171 = 0;
  v169 = 0;
  v170 = 0;
  v167 = 0;
  v168 = 0;
  v166 = 0;
  v165 = 0u;
  v163 = 0;
  v164 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v149 = recordCopy;
  IMDMessageRecordBulkCopy(recordCopy, &v181, &v182, 0, &v177, &v180, &v179, &v178, 0, &v176, &v157, &v172, &v174, &v159, 0, &v167, &v175, &v169, &v170, &v171, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v166, &v168, &v165, &v173, &v161, &v162, 0, &v164, 0, 0, 0, 0, &v160, 0, 0, &v158, 0, 0, 0, 0, &v156, &v155, &v154, 0, &v163, &v153, &v152, 0);
  v11 = v176;
  v10 = v177;
  v12 = v174;
  v13 = v175;
  v102 = v173;
  v139 = v172;
  v145 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v14, v171 != 0, v15);
  v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v16, v169, v17);
  v114 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v19, v170, v20);
  v137 = v166;
  v131 = v163;
  v150 = v164;
  v135 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v21, v168, v22);
  v129 = v162;
  v127 = v161;
  v133 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v23, v165, *(&v165 + 1));
  v26 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v24, v182, v25);
  v29 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v27, v181, v28);
  value = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v30, v180, v31);
  v143 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v32, v178, v33);
  v141 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v34, v179, v35);
  v112 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v36, v156, v37);
  v116 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v38, v155, v39);
  v117 = v160;
  v123 = v159;
  v120 = v158;
  v104 = v154;
  v106 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v40, v153, v41);
  v108 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v42, v152, v43);
  v122 = v157;
  if (v157)
  {
    v47 = JWDecodeCodableObjectWithStandardAllowlist();
    if (v47)
    {
      CFDictionarySetValue(v9, @"__kmessageAttributedBodyKey", v47);
    }
  }

  v125 = objc_msgSend_handleRecord(v149, v44, v45, v46);
  if (originatorCopy)
  {
    v53 = IMDMessageRecordCopyMessageForGUID(v120);
    if (v53)
    {
      v110 = objc_msgSend__messageDictionaryForMessageRecord_(self, v51, v53, v52);
    }

    else
    {
      v110 = 0;
    }
  }

  else
  {
    v110 = 0;
  }

  if (v171)
  {
    v54 = objc_msgSend_attachmentRecords(v149, v48, v49, v50);
  }

  else
  {
    v54 = 0;
  }

  v55 = v10;
  if (v55)
  {
    CFDictionarySetValue(v9, @"__kmessageGUIDKey", v55);
  }

  v56 = v11;
  if (v56)
  {
    CFDictionarySetValue(v9, @"__kmessageTextKey", v56);
  }

  v57 = v13;
  if (v57)
  {
    CFDictionarySetValue(v9, @"__kmessageSubjectKey", v57);
  }

  v58 = v12;
  if (v58)
  {
    CFDictionarySetValue(v9, @"__kmessageServiceKey", v58);
  }

  v59 = v102;
  if (v59)
  {
    CFDictionarySetValue(v9, @"__kmessageBalloonBundleIDKey", v59);
  }

  v60 = v18;
  if (v60)
  {
    CFDictionarySetValue(v9, @"__kmessageErrorKey", v60);
  }

  v61 = v26;
  if (v61)
  {
    CFDictionarySetValue(v9, @"__kmessageRowIDKey", v61);
  }

  v62 = v29;
  if (v62)
  {
    CFDictionarySetValue(v9, @"__kmessageItemTypeKey", v62);
  }

  v63 = value;
  valuea = v63;
  if (v63)
  {
    CFDictionarySetValue(v9, @"__kmessageDateKey", v63);
    v63 = valuea;
  }

  v64 = v143;
  v144 = v64;
  if (v64)
  {
    CFDictionarySetValue(v9, @"__kmessageDateDeliveredKey", v64);
    v64 = v144;
  }

  v65 = v141;
  v142 = v65;
  if (v65)
  {
    CFDictionarySetValue(v9, @"__kmessageDateReadKey", v65);
    v65 = v142;
  }

  v66 = v145;
  v146 = v66;
  if (v66)
  {
    CFDictionarySetValue(v9, @"__kmessageHasAttachmentsKey", v66);
    v66 = v146;
  }

  v67 = v54;
  if (v67)
  {
    CFDictionarySetValue(v9, @"__kmessageAttachmentsKey", v67);
  }

  v101 = v67;

  v68 = v139;
  if (v68)
  {
    CFDictionarySetValue(v9, @"__kmessageFlagsKey", v68);
  }

  v69 = v114;
  v140 = v69;
  if (v69)
  {
    CFDictionarySetValue(v9, @"__kmessageMadridTypeKey", v69);
    v69 = v140;
  }

  v70 = v137;
  v138 = v70;
  if (v70)
  {
    CFDictionarySetValue(v9, @"__kmessageAssociatedMessageGUIDKey", v70);
    v70 = v138;
  }

  v71 = v135;
  v136 = v71;
  if (v71)
  {
    CFDictionarySetValue(v9, @"__kmessageAssociatedMessageTypeKey", v71);
    v71 = v136;
  }

  v72 = v133;
  v134 = v72;
  if (v72)
  {
    CFDictionarySetValue(v9, @"__kmessageAssociatedMessageRangeKey", v72);
    v72 = v134;
  }

  v73 = v131;
  v132 = v73;
  if (v73)
  {
    CFDictionarySetValue(v9, @"__kmessageAssociatedMessageEmojiKey", v73);
    v73 = v132;
  }

  v74 = v150;
  v151 = v74;
  if (v74)
  {
    CFDictionarySetValue(v9, @"__kmessageSummaryInfoDataKey", v74);
    v74 = v151;
  }

  v75 = v129;
  v130 = v75;
  if (v75)
  {
    CFDictionarySetValue(v9, @"__kmessageExpressiveSendStyleIDKey", v75);
    v75 = v130;
  }

  v115 = v59;

  v76 = v127;
  if (v76)
  {
    CFDictionarySetValue(v9, @"__kmessagePayloadDataKey", v76);
  }

  v77 = v125;
  v126 = v77;
  if (v77)
  {
    CFDictionarySetValue(v9, @"__kmessageHandleKey", v77);
    v77 = v126;
  }

  v78 = v117;
  v128 = v78;
  if (v78)
  {
    CFDictionarySetValue(v9, @"__kmessageDestinationCallerIDKey", v78);
    v78 = v128;
  }

  v79 = v123;
  v124 = v79;
  if (v79)
  {
    CFDictionarySetValue(v9, @"__kmessageAccountKey", v79);
    v79 = v124;
  }

  v103 = v68;

  v80 = v120;
  if (v80)
  {
    CFDictionarySetValue(v9, @"__kmessageThreadOriginatorGUIDKey", v80);
  }

  v118 = v57;

  v81 = v110;
  if (v81)
  {
    CFDictionarySetValue(v9, @"__kmessageThreadOriginatorKey", v81);
  }

  v111 = v60;
  v100 = v81;

  v82 = v104;
  if (v82)
  {
    CFDictionarySetValue(v9, @"__kbiaReferenceIDKey", v82);
  }

  v121 = v56;

  v83 = v106;
  if (v83)
  {
    CFDictionarySetValue(v9, @"__kscheduleTypeKey", v83);
  }

  v105 = v76;
  v107 = v62;

  v84 = v108;
  if (v84)
  {
    CFDictionarySetValue(v9, @"__kscheduleStateKey", v84);
  }

  v85 = v58;
  v109 = v61;

  v86 = v112;
  if (v86)
  {
    CFDictionarySetValue(v9, @"__kmessageDateEditedKey", v86);
  }

  v87 = v55;

  v88 = v116;
  if (v88)
  {
    CFDictionarySetValue(v9, @"__kmessageDateRecoveredKey", v88);
  }

  v90 = v151;
  if (v151)
  {
    v113 = v87;
    v91 = JWDecodeDictionary();
    v94 = objc_msgSend_objectForKey_(v91, v92, *MEMORY[0x1E69A7268], v93);
    if (v94)
    {
      CFDictionarySetValue(v9, @"__kmessageIsInitialTranscriptSharingItem", v94);
    }

    v97 = objc_msgSend_objectForKey_(v91, v95, *MEMORY[0x1E69A7270], v96);
    if (v97)
    {
      CFDictionarySetValue(v9, @"__kmessageTranscriptSharingMessageType", v97);
    }

    v87 = v113;
    v90 = v151;
  }

  objc_msgSend__setContactInMessageDictionary_messageDictionary_(self, v89, v126, v9);
  v98 = v9;

  return v98;
}

- (id)_chatDictionaryForMessageRecord:(id)record
{
  v20 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v10 = objc_msgSend_chatRecord(recordCopy, v5, v6, v7);
  if (v10)
  {
    v11 = objc_msgSend__chatDictionaryForChatRecord_(self, v8, v10, v9);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = recordCopy;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "We didn't get any chat records for message record %@", &v18, 0xCu);
      }
    }

    v13 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = objc_msgSend_initWithCapacity_(v13, v14, 10, v15);
  }

  v16 = v11;

  return v16;
}

+ (id)_displayNameForChatRecord:(id)record
{
  v5 = 0;
  if (record)
  {
    _IMDChatRecordBulkCopy(record, 0, 0, 0, 0, 0, 0, 0, 0, &v5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v3 = v5;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_chatDictionaryForChatRecord:(id)record
{
  v161 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = objc_msgSend_initWithCapacity_(v5, v6, 10, v7);
  v157 = 0;
  v158 = 0;
  v155 = 0;
  v156 = 0;
  v153 = 0;
  v154 = 0;
  v151 = 0;
  v152 = 0;
  v150 = 0;
  if (recordCopy)
  {
    _IMDChatRecordBulkCopy(recordCopy, &v151, 0, 0, &v152, &v158, 0, &v157, 0, &v156, &v153, 0, &v155, 0, &v150, 0, 0, 0, 0, &v154, 0, 0, 0, 0, 0, 0, 0, 0);
    v147 = v157;
    v148 = v158;
    v145 = v156;
    v139 = v155;
    v146 = v153;
    v149 = v152;
    v12 = IMDChatRecordCopyChatLookupRecords(recordCopy, v9, v10, v11);
    v15 = objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x1E69A6AD8], v14);
    v19 = objc_msgSend_firstObject(v15, v16, v17, v18);

    v23 = v149;
    if (!v19)
    {
      v24 = v139;
      v19 = v24;
      if (v151 == 43)
      {
        v25 = IMDNotificationsControllerLogHandle(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v160 = v148;
          _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "No latest identifier in the iMessage Group ID domain for chat: %@", buf, 0xCu);
        }

        v23 = v149;
      }
    }

    if (v23)
    {
      v26 = JWDecodeDictionary();
      v29 = objc_msgSend_valueForKey_(v26, v27, @"wasAutoDetectedForSpam", v28);
      HIDWORD(v138) = objc_msgSend_BOOLValue(v29, v30, v31, v32);

      v35 = objc_msgSend_valueForKey_(v26, v33, @"wasDetectedAsiMessageSpam", v34);
      LODWORD(v138) = objc_msgSend_BOOLValue(v35, v36, v37, v38);

      v41 = objc_msgSend_valueForKey_(v26, v39, @"wasDetectedAsSMSSpam", v40);
      v137 = objc_msgSend_BOOLValue(v41, v42, v43, v44);

      value = objc_msgSend_objectForKey_(v26, v45, *MEMORY[0x1E69A6B80], v46);
      v49 = objc_msgSend_valueForKey_(v26, v47, @"SMSCategory", v48);
      v53 = objc_msgSend_intValue(v49, v50, v51, v52);

      v56 = objc_msgSend_valueForKey_(v26, v54, @"SMSSubCategory", v55);
      v60 = objc_msgSend_intValue(v56, v57, v58, v59);

      v144 = objc_msgSend_objectForKey_(v26, v61, *MEMORY[0x1E69A7870], v62);
      v143 = objc_msgSend_objectForKey_(v26, v63, *MEMORY[0x1E69A6A60], v64);
      v68 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v65, v66, v67);
      isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v68, v69, v70, v71);

      if (isTranscriptSharingEnabled)
      {
        v141 = objc_msgSend_objectForKey_(v26, v73, *MEMORY[0x1E69A6B58], v74);
      }

      else
      {
        v141 = 0;
      }

      v75 = objc_msgSend_objectForKey_(v26, v73, *MEMORY[0x1E69A6BC8], v74);
      v134 = objc_msgSend_BOOLValue(v75, v76, v77, v78);

      v140 = objc_msgSend_objectForKey_(v26, v79, *MEMORY[0x1E69A6C40], v80);

      v135 = v60;
      v136 = v53;
    }

    else
    {
      v143 = 0;
      v144 = 0;
      v140 = 0;
      v141 = 0;
      v134 = 0;
      v138 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      value = 0;
    }

    v81 = objc_msgSend_handleRecords(recordCopy, v20, v21, v22);
    if (objc_msgSend_count(v81, v82, v83, v84))
    {
      if (v81)
      {
        CFDictionarySetValue(v8, @"__kchatHandlesForChatKey", v81);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v85 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v160 = v147;
        _os_log_impl(&dword_1B7AD5000, v85, OS_LOG_TYPE_INFO, "We got 0 handles back for chatRecord with guid %@", buf, 0xCu);
      }
    }

    IMSharedHelperCatalystNotificationDisabled();
    IsMutedBasedOnChatGUID_chatIdentifier_groupID_domainIdentifiers_handles_lastAddressedHandleString_originalGroupID_style = objc_msgSend__chatIsMutedBasedOnChatGUID_chatIdentifier_groupID_domainIdentifiers_handles_lastAddressedHandleString_originalGroupID_style_(self, v86, v147, v148, v19, v12, v81, v146, 0, v151);
    v90 = objc_msgSend__lastMessageTimeForChat_(self, v88, recordCopy, v89);
    v94 = v90;
    if (v90)
    {
      v95 = MEMORY[0x1E696AD98];
      v96 = objc_msgSend___im_nanosecondTimeInterval(v90, v91, v92, v93);
      v99 = objc_msgSend_numberWithLongLong_(v95, v97, v96, v98);
      if (v99)
      {
        CFDictionarySetValue(v8, @"__kchatLastMessageTimestamp", v99);
      }
    }

    v100 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v91, v151, v93);
    if (v100)
    {
      CFDictionarySetValue(v8, @"__kchatStyleKey", v100);
    }

    if (v149)
    {
      CFDictionarySetValue(v8, @"__kchatPropertiesDataKey", v149);
    }

    if (v148)
    {
      CFDictionarySetValue(v8, @"__kchatChatIdentifierKey", v148);
    }

    if (v147)
    {
      CFDictionarySetValue(v8, @"__kchatChatGUIDKey", v147);
    }

    if (v145)
    {
      CFDictionarySetValue(v8, @"__kchatGroupNameKey", v145);
    }

    if (value)
    {
      CFDictionarySetValue(v8, @"__kchatGroupPhotoGuidKey", value);
    }

    if (v144)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A7870], v144);
    }

    if (v143)
    {
      CFDictionarySetValue(v8, *MEMORY[0x1E69A6A60], v143);
    }

    if (v81)
    {
      CFDictionarySetValue(v8, @"__kchatParticipantsKey", v81);
    }

    if (v19)
    {
      CFDictionarySetValue(v8, @"__kchatGroupIDKey", v19);
    }

    if (v146)
    {
      CFDictionarySetValue(v8, @"__kchatLastAddressedHandleStringKey", v146);
    }

    v103 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v101, v150, v102);
    if (v103)
    {
      CFDictionarySetValue(v8, @"__kchatIsFilteredKey", v103);
    }

    v106 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v104, HIDWORD(v138), v105);
    if (v106)
    {
      CFDictionarySetValue(v8, @"__kchatWasReportedAsiMessageSpamKey", v106);
    }

    v109 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v107, v138, v108);
    if (v109)
    {
      CFDictionarySetValue(v8, @"__kchatWasDetectedAsiMessageSpamKey", v109);
    }

    v112 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v110, v137, v111);
    if (v112)
    {
      CFDictionarySetValue(v8, @"__kchatWasDetectedAsSMSSpamKey", v112);
    }

    v115 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v113, v136, v114);
    if (v115)
    {
      CFDictionarySetValue(v8, @"__kchatSMSCategoryKey", v115);
    }

    v118 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v116, v135, v117);
    if (v118)
    {
      CFDictionarySetValue(v8, @"__kchatSMSSubCategoryKey", v118);
    }

    v121 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v119, IsMutedBasedOnChatGUID_chatIdentifier_groupID_domainIdentifiers_handles_lastAddressedHandleString_originalGroupID_style, v120);
    if (v121)
    {
      CFDictionarySetValue(v8, @"__kchatIsMutedKey", v121);
    }

    v125 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v122, v123, v124);
    v129 = objc_msgSend_isTranscriptSharingEnabled(v125, v126, v127, v128);

    if (v129)
    {
      if (v141)
      {
        CFDictionarySetValue(v8, @"__kchatEmergencyUserInfo", v141);
      }

      v132 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v130, v134, v131);
      if (v132)
      {
        CFDictionarySetValue(v8, @"__kchatIsMergedBusinessThread", v132);
      }

      if (v140)
      {
        CFDictionarySetValue(v8, @"__kchatMarkedAsKnownDateKey", v140);
      }
    }

    if (v12)
    {
      CFDictionarySetValue(v8, @"__kchatDomainIdentifiersKey", v12);
    }
  }

  return v8;
}

- (BOOL)_messageShouldBeSilentlyDeliveredForBusinessChat:(id)chat
{
  chatCopy = chat;
  v4 = objc_opt_class();
  v7 = objc_msgSend_objectForKeyedSubscript_(chatCopy, v5, @"__kmessageHandleKey", v6);
  v10 = objc_msgSend__addressForHandle_(v4, v8, v7, v9);
  v11 = MEMORY[0x1B8CAF990]();

  if (v11)
  {
    v14 = objc_msgSend_objectForKey_(chatCopy, v12, @"__kmessageSummaryInfoDataKey", v13);
    v15 = JWDecodeDictionary();
    v18 = objc_msgSend_objectForKey_(v15, v16, *MEMORY[0x1E69A83C8], v17);
    v22 = objc_msgSend_BOOLValue(v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_chatIsMutedBasedOnChatGUID:(id)d chatIdentifier:(id)identifier groupID:(id)iD domainIdentifiers:(id)identifiers handles:(id)handles lastAddressedHandleString:(id)string originalGroupID:(id)groupID style:(int64_t)self0
{
  v15 = MEMORY[0x1E69A8180];
  groupIDCopy = groupID;
  stringCopy = string;
  handlesCopy = handles;
  identifiersCopy = identifiers;
  iDCopy = iD;
  identifierCopy = identifier;
  v25 = objc_msgSend_sharedList(v15, v22, v23, v24);
  v28 = objc_msgSend___imArrayByApplyingBlock_(handlesCopy, v26, &unk_1F2FA0950, v27);

  v30 = objc_msgSend_muteIdentifiersForChatStyle_groupID_domainIdentifiers_participantIDs_lastAddressedHandleID_originalGroupID_chatIdentifier_(v25, v29, style, iDCopy, identifiersCopy, v28, stringCopy, groupIDCopy, identifierCopy);

  LOBYTE(groupIDCopy) = objc_msgSend_isMutedChatForMuteIdentifiers_(v25, v31, v30, v32);
  return groupIDCopy;
}

- (id)contactForHandleRecord:(id)record
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (record)
  {
    recordCopy = record;
    v4 = objc_opt_class();
    v7 = objc_msgSend__addressForHandle_(v4, v5, recordCopy, v6);

    if (MEMORY[0x1B8CAF990](v7))
    {
      v11 = 0;
    }

    else
    {
      v12 = objc_msgSend__stripFZIDPrefix(v7, v8, v9, v10);
      v13 = *MEMORY[0x1E695C330];
      v18[0] = *MEMORY[0x1E695C3F8];
      v18[1] = v13;
      v14 = *MEMORY[0x1E695C200];
      v18[2] = *MEMORY[0x1E695C208];
      v18[3] = v14;
      v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v15, v18, 4);
      v11 = _IMDCoreSpotlightCNContactForAddressWithAdditionalPropertyKeys(v12, v16);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setContactInMessageDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  messageDictionaryCopy = messageDictionary;
  v9 = objc_msgSend_contactForHandleRecord_(self, v7, dictionary, v8);
  v10 = v9;
  if (v9)
  {
    CFDictionarySetValue(messageDictionaryCopy, @"__kmessageCNContactForSenderKey", v9);
  }

  v11 = IMDNotificationsControllerLogHandle(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_msgSend_objectForKey_(messageDictionaryCopy, v12, @"__kmessageCNContactForSenderKey", v13);
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "CNContact for sender %@", &v15, 0xCu);
  }
}

- (id)_stickerTapbackTransferGUIDFromMessageDictionary:(id)dictionary
{
  v4 = objc_msgSend_objectForKeyedSubscript_(dictionary, a2, @"__kmessageAttachmentsKey", v3);
  v8 = objc_msgSend_count(v4, v5, v6, v7);
  if (v8 == 1)
  {
    v12 = objc_msgSend_firstObject(v4, v9, v10, v11);
    v16 = objc_msgSend_guid(v12, v13, v14, v15);

    if (objc_msgSend_length(v16, v17, v18, v19))
    {
      goto LABEL_9;
    }

    v20 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED280();
    }
  }

  else
  {
    v20 = IMDNotificationsControllerLogHandle(v8);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED244();
    }

    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (id)_tapbackFromMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"__kmessageAssociatedMessageTypeKey", v6);
  v11 = v7;
  if (!v7)
  {
    v16 = 0;
    goto LABEL_30;
  }

  v12 = objc_msgSend_integerValue(v7, v8, v9, v10);
  v15 = v12;
  v16 = 0;
  if (v12 > 2999)
  {
    if ((v12 - 3000) >= 6)
    {
      if (v12 == 3006)
      {
        v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"__kmessageAssociatedMessageEmojiKey", v14);
        if (objc_msgSend_length(v17, v37, v38, v39))
        {
          v40 = objc_alloc(MEMORY[0x1E69A8060]);
          isRemoved = objc_msgSend_initWithEmoji_isRemoved_(v40, v41, v17, 1);
          goto LABEL_19;
        }

        v42 = IMDNotificationsControllerLogHandle(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED2F8();
        }
      }

      else
      {
        if (v12 != 3007)
        {
          goto LABEL_30;
        }

        v17 = objc_msgSend__stickerTapbackTransferGUIDFromMessageDictionary_(self, v13, dictionaryCopy, v14);
        if (objc_msgSend_length(v17, v27, v28, v29))
        {
          v30 = objc_alloc(MEMORY[0x1E69A82C8]);
          isRemoved = objc_msgSend_initWithTransferGUID_isRemoved_(v30, v31, v17, 1);
          goto LABEL_19;
        }

        v42 = IMDNotificationsControllerLogHandle(0);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CED334();
        }
      }

LABEL_28:

      v16 = 0;
      goto LABEL_29;
    }

LABEL_10:
    v24 = objc_alloc(MEMORY[0x1E69A7FB0]);
    v16 = objc_msgSend_initWithAssociatedMessageType_(v24, v25, v15, v26);
    goto LABEL_30;
  }

  if ((v12 - 2000) < 6)
  {
    goto LABEL_10;
  }

  if (v12 == 2006)
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"__kmessageAssociatedMessageEmojiKey", v14);
    if (objc_msgSend_length(v17, v32, v33, v34))
    {
      v35 = objc_alloc(MEMORY[0x1E69A8060]);
      isRemoved = objc_msgSend_initWithEmoji_isRemoved_(v35, v36, v17, 0);
      goto LABEL_19;
    }

    v42 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED2BC();
    }

    goto LABEL_28;
  }

  if (v12 != 2007)
  {
    goto LABEL_30;
  }

  v17 = objc_msgSend__stickerTapbackTransferGUIDFromMessageDictionary_(self, v13, dictionaryCopy, v14);
  if (!objc_msgSend_length(v17, v18, v19, v20))
  {
    v42 = IMDNotificationsControllerLogHandle(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CED280();
    }

    goto LABEL_28;
  }

  v21 = objc_alloc(MEMORY[0x1E69A82C8]);
  isRemoved = objc_msgSend_initWithTransferGUID_isRemoved_(v21, v22, v17, 0);
LABEL_19:
  v16 = isRemoved;
LABEL_29:

LABEL_30:

  return v16;
}

- (BOOL)imagePreviewIsMultiFrameAtFileURL:(id)l
{
  v3 = sub_1B7CFDFF0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDFB0();
  v7 = sub_1B7C2052C(v6);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (BOOL)copyFirstFrameOfMultiFrameImageAtFileURL:(id)l toFileURL:(id)rL
{
  v5 = sub_1B7CFDFF0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1B7CFDFB0();
  sub_1B7CFDFB0();
  selfCopy = self;
  v13 = sub_1B7C1F8F0(v11);

  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);
  return v13 & 1;
}

- (BOOL)shouldDisplayGroupNameAndPhotoWith:(int64_t)with participants:(id)participants
{
  sub_1B7C81604();
  sub_1B7CFECE0();
  sub_1B7CFE300();
  v4 = sub_1B7CFE2F0();

  return v4 & 1;
}

@end