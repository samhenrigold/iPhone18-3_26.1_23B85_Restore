@interface IMDFilteringController
+ (IMDFilteringController)sharedInstance;
- (BOOL)_areAllParticipantsUnknown:(id)unknown fromSender:(id)sender;
- (BOOL)_shouldCheckChatForSMSSpam:(id)spam participants:(id)participants sender:(id)sender chat:(id)chat fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory;
- (BOOL)_shouldCheckSMSForCategoryFromFirstPartyFilter;
- (BOOL)_storeSpamCompletionBlock:(id)block forMessageGUID:(id)d;
- (IMDFilteringController)initWithIdentityLookupDecisioningManager:(id)manager trustKitDecisioningManager:(id)decisioningManager communicationTrustManager:(id)trustManager relayPushHandler:(id)handler;
- (NSMutableSet)pendingPriorityMessageGUIDs;
- (id)_createNewChatIdentifierFromChatIdentifier:(id)identifier andCategoryLabel:(id)label;
- (id)_getSpamExtensionID;
- (id)_getSpamExtensionName;
- (id)_newSMSFilteringSettingsDictForFilterState:(int64_t)state;
- (id)account;
- (int64_t)_numberOfRepliesFor:(id)for fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory;
- (void)_categorizeRelayMessageWithCategory:(int64_t)category subCategory:(int64_t)subCategory deviceID:(id)d completion:(id)completion;
- (void)_checkAndUpdateFilterParamsForFilterExtension;
- (void)_checkAndUpdateSMSFilteringSettingsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name;
- (void)_checkAndUpdateSMSSpamFilterExtensionForUnregisteredOrUpdatedPlugins:(id)plugins arePluginsRegistered:(BOOL)registered;
- (void)_checkIfMessageIsSpam:(id)spam fromSender:(id)sender withGuid:(id)guid receiverISOCountryCode:(id)code receivedViaRelay:(BOOL)relay containsOneTimeCode:(BOOL)timeCode;
- (void)_clearSpamMapForMessageGUID:(id)d;
- (void)_configureSyncedDefaultsWithOverride:(BOOL)override;
- (void)_disableSpamFiltering;
- (void)_disableSpamFilteringAndRelay;
- (void)_enableSpamFiltering;
- (void)_executeSpamCompletionBlockForMessageGuid:(id)guid category:(int64_t)category subCategory:(int64_t)subCategory filterExtensionMetadata:(id)metadata receivedViaRelay:(BOOL)relay spamDetectionSource:(int64_t)source;
- (void)_processReceivedSMSFilteringSettingsDictionaryInBlastDoor:(id)door deviceID:(id)d;
- (void)_processReceivedSMSFilteringSettingsMessage:(id)message deviceID:(id)d;
- (void)_relayCurrentSMSFilteringSettings;
- (void)_relaySMSFilteringSettingsForFilterState:(int64_t)state;
- (void)_removeAppliedPriorityMessages:(id)messages;
- (void)_smsSpamCheck:(id)check withMessageBody:(id)body withGuid:(id)guid sender:(id)sender receiverISOCountryCode:(id)code receivedViaRelay:(BOOL)relay containsOneTimeCode:(BOOL)timeCode;
- (void)_updateFilterParamsForFilterExtension;
- (void)_updateSpamFilteringState:(int64_t)state;
- (void)categorizeIncomingMessage:(id)message deviceID:(id)d category:(int64_t)category subCategory:(int64_t)subCategory messageGUID:(id)iD sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)self0 participants:(id)self1 checkingForSpam:(BOOL *)self2 trustIndicator:(id)self3 myReceiverISOCountryCode:(id)self4 messageBody:(id)self5 foundChat:(id)self6 service:(id)self7 containsOneTimeCode:(BOOL)self8 completion:(id)self9;
- (void)categorizeIncomingRCSMessageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam trustIndicator:(id)indicator myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5;
- (void)categorizeIncomingSMSMessage:(id)message messageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5;
- (void)disableFilteringIfNeeded;
- (void)handleTrustKitDecisioningForSender:(id)sender service:(id)service trustIndicator:(id)indicator messageBody:(id)body myReceiverISOCountryCode:(id)code containsOneTimeCode:(BOOL)timeCode foundChat:(id)chat fallbackFilterCategory:(int64_t)self0 fallbackFilterSubCategory:(int64_t)self1 filteringProcessingBlock:(id)self2 processDictCompletionBlock:(id)self3;
- (void)handler:(id)handler incomingSMSFilteringSettingsMessage:(id)message fromToken:(id)token;
- (void)recordFilteringMetricsForMessageItem:(id)item filteredToChat:(id)chat filterExtensionMetadata:(id)metadata;
- (void)relayPriorityMessageFor:(id)for;
@end

@implementation IMDFilteringController

- (void)recordFilteringMetricsForMessageItem:(id)item filteredToChat:(id)chat filterExtensionMetadata:(id)metadata
{
  itemCopy = item;
  chatCopy = chat;
  metadataCopy = metadata;
  if (metadataCopy)
  {
    _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
    if (![_getSpamExtensionID isEqualToString:@"com.apple.smsFilter.extension"])
    {
LABEL_27:

      goto LABEL_28;
    }

    v11 = [metadataCopy mutableCopy];
    serviceName = [chatCopy serviceName];
    v13 = [serviceName isEqualToString:*MEMORY[0x277D1A608]];

    if (v13)
    {
      if ([chatCopy isChatBot])
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }

LABEL_14:
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      [v11 setObject:v19 forKeyedSubscript:*MEMORY[0x277D1A1A8]];

      filterCategory = [chatCopy filterCategory];
      if (filterCategory > 2)
      {
        if (filterCategory == 3)
        {
          v21 = 6;
          goto LABEL_26;
        }

        if (filterCategory == 4)
        {
          filterSubCategory = [chatCopy filterSubCategory];
          if ((filterSubCategory - 2) >= 3)
          {
            v21 = 5;
          }

          else
          {
            v21 = filterSubCategory;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (filterCategory == 1)
        {
          v21 = 1;
          goto LABEL_26;
        }

        if (filterCategory == 2)
        {
          v21 = 7;
LABEL_26:
          v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
          [v11 setObject:v23 forKeyedSubscript:*MEMORY[0x277D1A198]];

          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A188] withDictionary:v11];

          goto LABEL_27;
        }
      }

      v21 = 0;
      goto LABEL_26;
    }

    serviceName2 = [chatCopy serviceName];
    v16 = [serviceName2 isEqualToString:*MEMORY[0x277D1A610]];

    if (!v16)
    {
      v14 = 0;
      goto LABEL_14;
    }

    subject = [itemCopy subject];
    if (![subject length])
    {
      fileTransferGUIDs = [itemCopy fileTransferGUIDs];
      if (![fileTransferGUIDs count])
      {
        style = [chatCopy style];

        if (style == 45)
        {
          v14 = 2;
          goto LABEL_14;
        }

LABEL_12:
        v14 = 3;
        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

LABEL_28:
}

- (void)handleTrustKitDecisioningForSender:(id)sender service:(id)service trustIndicator:(id)indicator messageBody:(id)body myReceiverISOCountryCode:(id)code containsOneTimeCode:(BOOL)timeCode foundChat:(id)chat fallbackFilterCategory:(int64_t)self0 fallbackFilterSubCategory:(int64_t)self1 filteringProcessingBlock:(id)self2 processDictCompletionBlock:(id)self3
{
  senderCopy = sender;
  serviceCopy = service;
  indicatorCopy = indicator;
  bodyCopy = body;
  codeCopy = code;
  chatCopy = chat;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  trustKitDecisioningManager = [(IMDFilteringController *)self trustKitDecisioningManager];
  if ([trustKitDecisioningManager shouldSkipTrustKitDecisioningForChat:chatCopy sender:senderCopy])
  {
    if (chatCopy)
    {
      v27 = blockCopy;
      isFiltered = [chatCopy isFiltered];
      spamDetectionSource = [chatCopy spamDetectionSource];
      v30 = isFiltered;
      blockCopy = v27;
      (*(completionBlockCopy + 2))(completionBlockCopy, v30, 0, 0, 0, 0, spamDetectionSource);
    }

    else
    {
      blockCopy[2](blockCopy, 0);
    }
  }

  else
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v45[3] = category;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v44 = 0;
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_22B4D77C0;
    v41[4] = sub_22B4D7944;
    v42 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_22B69B444;
    v33[3] = &unk_278707B68;
    v37 = v43;
    v34 = chatCopy;
    v38 = v45;
    v39 = v41;
    v35 = completionBlockCopy;
    subCategoryCopy = subCategory;
    v36 = blockCopy;
    LOBYTE(v31) = timeCode;
    [trustKitDecisioningManager requestDecisionForSender:senderCopy service:serviceCopy trustIndicator:indicatorCopy messageBody:bodyCopy countryCode:codeCopy requestReason:0 containsOneTimeCode:v31 completionHandler:v33];

    _Block_object_dispose(v41, 8);
    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
  }
}

- (void)_processReceivedSMSFilteringSettingsDictionaryInBlastDoor:(id)door deviceID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  doorCopy = door;
  dCopy = d;
  if ([dCopy length])
  {
    if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
    {
      untrustedContext = [MEMORY[0x277D1AB80] untrustedContext];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_22B6CED44;
      v10[3] = &unk_2787083D8;
      v10[4] = self;
      v11 = dCopy;
      [IMBlastdoor sendDictionary:doorCopy senderContext:untrustedContext withCompletionBlock:v10];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = dCopy;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Received invalid deviceID:%@. Not checking if we need to update filterCapabilities", buf, 0xCu);
    }
  }
}

- (void)_processReceivedSMSFilteringSettingsMessage:(id)message deviceID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Device is supporting incoming sms relay filtering. Checking if we need to update filterCapbilities from relayed message", &v12, 2u);
      }
    }

    filterExtensionName = [messageCopy filterExtensionName];
    smsFilterCapabilitiesOptions = [messageCopy smsFilterCapabilitiesOptions];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412802;
        v13 = filterExtensionName;
        v14 = 2048;
        v15 = smsFilterCapabilitiesOptions;
        v16 = 2112;
        v17 = dCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received filterExtensionName: %@, smsFilterCapabilitiesOptions: %lu from deviceID:%@. Checking if we need to update filterCapabilities", &v12, 0x20u);
      }
    }

    [(IMDFilteringController *)self _checkAndUpdateSMSFilteringSettingsForDeviceID:dCopy smsFilterCapabilitiesOptions:smsFilterCapabilitiesOptions filterExtensionName:filterExtensionName];
  }
}

+ (IMDFilteringController)sharedInstance
{
  if (qword_2814210D0 != -1)
  {
    sub_22B7D9940();
  }

  v3 = qword_281420F40;

  return v3;
}

- (IMDFilteringController)initWithIdentityLookupDecisioningManager:(id)manager trustKitDecisioningManager:(id)decisioningManager communicationTrustManager:(id)trustManager relayPushHandler:(id)handler
{
  managerCopy = manager;
  decisioningManagerCopy = decisioningManager;
  trustManagerCopy = trustManager;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = IMDFilteringController;
  v15 = [(IMDFilteringController *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identityLookupDecisioningManager, manager);
    objc_storeStrong(&v16->_trustKitDecisioningManager, decisioningManager);
    objc_storeStrong(&v16->_communicationTrustManager, trustManager);
    objc_storeStrong(&v16->_relayPushHandler, handler);
    v17 = im_primary_queue();
    processingQueue = v16->_processingQueue;
    v16->_processingQueue = v17;

    [(IMDRelayPushHandling *)v16->_relayPushHandler addListener:v16];
    [(IMDRelayPushHandling *)v16->_relayPushHandler setRegistered:1];
    v19 = +[IMDSyncedSettingsServiceManager sharedManager];
    syncedSettingsManager = v16->_syncedSettingsManager;
    v16->_syncedSettingsManager = v19;

    [(IMDFilteringController *)v16 _configureSyncedDefaultsWithOverride:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v22 = [defaultCenter addObserverForName:@"SSFirstPartyTextMessageFilterAvailableNotification" object:0 queue:0 usingBlock:&unk_283F1B2C8];

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v16, sub_22B6CF44C, @"com.apple.LaunchServices.pluginsunregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v24 = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(v24, v16, sub_22B6CF588, @"com.apple.LaunchServices.pluginsregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v16, sub_22B6CF6C4, @"_SMSFilterExtensionParamsChangeDistributedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v26, v16, sub_22B6CF7B0, *MEMORY[0x277D1A4E8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v16;
}

- (id)_createNewChatIdentifierFromChatIdentifier:(id)identifier andCategoryLabel:(id)label
{
  identifierCopy = identifier;
  labelCopy = label;
  if ([labelCopy length])
  {
    labelCopy = [identifierCopy stringByAppendingFormat:@"(%@)", labelCopy];
  }

  else
  {
    labelCopy = identifierCopy;
  }

  v8 = labelCopy;

  return v8;
}

- (void)_categorizeRelayMessageWithCategory:(int64_t)category subCategory:(int64_t)subCategory deviceID:(id)d completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy length] && -[IMDFilteringController _isMessageCategorized:](self, "_isMessageCategorized:", category))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v17 = 134218240;
        subCategoryCopy2 = category;
        v19 = 2048;
        categoryCopy2 = subCategory;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Relayed message was categorized on iPhone. Received category: %ld and subCategory: %ld.", &v17, 0x16u);
      }
    }

    if (subCategory && ([MEMORY[0x277D1AB68] isValidSubActionForDeviceID:dCopy action:category subAction:subCategory] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v17 = 134218240;
          subCategoryCopy2 = subCategory;
          v19 = 2048;
          categoryCopy2 = category;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%ld is not a valid subAction for category: %ld. Resetting subCategory to None", &v17, 0x16u);
        }
      }

      subCategory = 0;
    }

    v14 = [MEMORY[0x277D1AB68] fetchFilterExtensionNameForDeviceID:dCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Relayed message was not categorized on iPhone or device ID is invalid.", &v17, 2u);
      }
    }

    v14 = 0;
    subCategory = 0;
    category = 0;
  }

  if (![v14 length])
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received Device ID has no extension Name. Resetting category and subCategory to None", &v17, 2u);
      }
    }

    subCategory = 0;
    category = 0;
  }

  (*(completionCopy + 2))(completionCopy, category, subCategory, v14, 0, 0, 0);
}

- (void)_smsSpamCheck:(id)check withMessageBody:(id)body withGuid:(id)guid sender:(id)sender receiverISOCountryCode:(id)code receivedViaRelay:(BOOL)relay containsOneTimeCode:(BOOL)timeCode
{
  relayCopy = relay;
  codeCopy = code;
  senderCopy = sender;
  guidCopy = guid;
  bodyCopy = body;
  [(IMDFilteringController *)self _storeSpamCompletionBlock:check forMessageGUID:guidCopy];
  [(IMDFilteringController *)self _checkIfMessageIsSpam:bodyCopy fromSender:senderCopy withGuid:guidCopy receiverISOCountryCode:codeCopy receivedViaRelay:relayCopy containsOneTimeCode:timeCode];
}

- (BOOL)_shouldCheckChatForSMSSpam:(id)spam participants:(id)participants sender:(id)sender chat:(id)chat fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory
{
  v35 = *MEMORY[0x277D85DE8];
  spamCopy = spam;
  participantsCopy = participants;
  senderCopy = sender;
  chatCopy = chat;
  v18 = IMGetDomainIntForKey();
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v20 = v18 < 1;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {

    goto LABEL_13;
  }

  if (v18 > 3)
  {
LABEL_13:
    if ([MEMORY[0x277D1AC58] isFilterUnknownSendersEnabled] && (-[IMDFilteringController _shouldCheckSMSForCategoryFromFirstPartyFilter](self, "_shouldCheckSMSForCategoryFromFirstPartyFilter") || (objc_msgSend(MEMORY[0x277D1AB08], "isTextMessageExtensionEnabled") & 1) != 0))
    {
      if ([(IMDFilteringController *)self _areAllParticipantsUnknown:participantsCopy fromSender:senderCopy])
      {
        if ([(IMDFilteringController *)self _numberOfRepliesFor:spamCopy fallbackFilterCategory:category fallbackFilterSubCategory:subCategory]< 3)
        {
          if (chatCopy)
          {
            chatProperties = [chatCopy chatProperties];
            v26 = *MEMORY[0x277D19848];
            v27 = [chatProperties objectForKeyedSubscript:*MEMORY[0x277D19848]];
            if (v27)
            {
              chatProperties2 = [chatCopy chatProperties];
              v29 = [chatProperties2 objectForKeyedSubscript:v26];
              longLongValue = [v29 longLongValue];

              if (!longLongValue)
              {
                if (!IMOSLoggingEnabled())
                {
                  goto LABEL_30;
                }

                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  v31 = 138412290;
                  v32 = spamCopy;
                  _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking sms spam, chat is not filtered: %@", &v31, 0xCu);
                }

                goto LABEL_29;
              }
            }

            else
            {
            }
          }

          if (!IMOSLoggingEnabled())
          {
            goto LABEL_12;
          }

          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = spamCopy;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: checking SMS spam for chatid %@", &v31, 0xCu);
          }

          goto LABEL_11;
        }

        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v31 = 138412290;
            v32 = spamCopy;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking sms spam, chatid %@ has 3 replies or more", &v31, 0xCu);
          }

LABEL_29:
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v31 = 138412290;
          v32 = spamCopy;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking sms spam, chatid %@ has known participants", &v31, 0xCu);
        }

        goto LABEL_29;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v31) = 0;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: not checking for sms spam, filter is off", &v31, 2u);
      }

      goto LABEL_29;
    }

LABEL_30:
    v22 = 0;
    goto LABEL_31;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v31 = 138412546;
      v32 = @"IncomingMessageAlertSpamForcedCategory";
      v33 = 2048;
      v34 = v18;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: default %@ set, forcing category %ld", &v31, 0x16u);
    }

LABEL_11:
  }

LABEL_12:
  v22 = 1;
LABEL_31:

  return v22;
}

- (int64_t)_numberOfRepliesFor:(id)for fallbackFilterCategory:(int64_t *)category fallbackFilterSubCategory:(int64_t *)subCategory
{
  categoryCopy = category;
  subCategoryCopy = subCategory;
  v47[4] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v47[0] = &stru_283F23018;
  v47[1] = @"smsft";
  v47[2] = @"smsfp";
  v47[3] = @"filtered";
  [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  v6 = 0;
  subCategoryCopy = 0;
  v8 = 0;
  action = 0;
  if (v34)
  {
    v32 = *v42;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        v11 = action;
        v12 = subCategoryCopy;
        v13 = v6;
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        subCategoryCopy = [(IMDFilteringController *)self _createNewChatIdentifierFromChatIdentifier:forCopy andCategoryLabel:v14, categoryCopy, subCategoryCopy];

        v15 = +[IMDChatRegistry sharedInstance];
        account = [(IMDFilteringController *)self account];
        v6 = [v15 existingChatForID:subCategoryCopy account:account];

        action = v11;
        if (v6)
        {
          v17 = v11 == 0;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          if ([v14 isEqualToString:&stru_283F23018])
          {
            action = 1;
          }

          else if ([v14 isEqualToString:@"smsft"])
          {
            action = 4;
          }

          else if ([v14 isEqualToString:@"smsfp"])
          {
            action = 3;
          }

          else
          {
            action = 2;
          }
        }

        v8 += [v6 getNumberOfTimesRespondedToThread];
      }

      v34 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v34);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  fetchSMSFilterExtensionParams = [MEMORY[0x277D1AB70] fetchSMSFilterExtensionParams];
  v35 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v35)
  {
    subAction = 0;
    v33 = *v38;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(fetchSMSFilterExtensionParams);
        }

        v19 = *(*(&v37 + 1) + 8 * j);
        if ([v19 subAction])
        {
          label = [v19 label];
          v21 = [(IMDFilteringController *)self _createNewChatIdentifierFromChatIdentifier:forCopy andCategoryLabel:label];

          v22 = +[IMDChatRegistry sharedInstance];
          account2 = [(IMDFilteringController *)self account];
          v24 = [v22 existingChatForID:v21 account:account2];

          if (v24)
          {
            v25 = action == 0;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            action = [v19 action];
            subAction = [v19 subAction];
          }

          v8 += [v24 getNumberOfTimesRespondedToThread];
          v6 = v24;
          subCategoryCopy = v21;
        }
      }

      v35 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v35);
  }

  else
  {
    subAction = 0;
  }

  if (v8 >= 3)
  {
    *categoryCopy = action;
    *subCategoryCopy = subAction;
  }

  return v8;
}

- (BOOL)_areAllParticipantsUnknown:(id)unknown fromSender:(id)sender
{
  v10[1] = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  v6 = senderCopy;
  if (unknown)
  {
    LOBYTE(v7) = IMDAreAllAliasesUnknown();
  }

  else
  {
    v10[0] = senderCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    v7 = IMDAreAllAliasesUnknown();
  }

  return v7;
}

- (id)account
{
  v2 = +[IMDServiceController sharedController];
  v3 = [v2 serviceWithName:*MEMORY[0x277D1A610]];

  v4 = +[IMDAccountController sharedAccountController];
  v5 = [v4 accountsForService:v3];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (BOOL)_shouldCheckSMSForCategoryFromFirstPartyFilter
{
  if ([(IMDFilteringController *)self _isSpamFilteringEnabled])
  {
    v3 = 1;
  }

  else
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

    if (isPriorityMessagesEnabled && [MEMORY[0x277D1AC58] receiverIsCandidateForAppleSMSFilter])
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Account is eligible for showing Apple SMS Filter.", v15, 2u);
        }
      }

      v7 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:5];
      bOOLValue = [v7 BOOLValue];

      v9 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:6];
      bOOLValue2 = [v9 BOOLValue];

      v11 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:7];
      bOOLValue3 = [v11 BOOLValue];

      v13 = [(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingValueForKey:8];
      LOBYTE(v11) = [v13 BOOLValue];

      v3 = bOOLValue | bOOLValue2 | bOOLValue3 | v11;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

- (id)_getSpamExtensionID
{
  v3 = IMGetCachedDomainValueForKey();
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isPriorityMessagesEnabled = [mEMORY[0x277D1A9B8] isPriorityMessagesEnabled];

  if (isPriorityMessagesEnabled && ![v3 length] && -[IMDFilteringController _shouldCheckSMSForCategoryFromFirstPartyFilter](self, "_shouldCheckSMSForCategoryFromFirstPartyFilter"))
  {
    v6 = @"com.apple.smsFilter.extension";
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_getSpamExtensionName
{
  v2 = IMGetDomainIntForKey();
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v4 = v2 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
  }

  else
  {

    if (v2 < 4)
    {
      v5 = @"DefaultsOverrideExtension";
      goto LABEL_10;
    }
  }

  v5 = IMGetCachedDomainValueForKey();
LABEL_10:

  return v5;
}

- (void)_checkAndUpdateFilterParamsForFilterExtension
{
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    _isSpamFilteringEnabled = [(IMDFilteringController *)self _isSpamFilteringEnabled];
    v4 = IMOSLoggingEnabled();
    if (_isSpamFilteringEnabled)
    {
      if (v4)
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS Filtering was enabled. Updating Filter Params", buf, 2u);
        }
      }

      [(IMDFilteringController *)self _updateFilterParamsForFilterExtension];
    }

    else
    {
      if (v4)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v7 = 0;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "SMS Filtering was disabled. Clearing Filter Params", v7, 2u);
        }
      }

      [(IMDFilteringController *)self _disableSpamFilteringAndRelay];
    }
  }
}

- (void)_updateFilterParamsForFilterExtension
{
  _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
  if (_getSpamExtensionID)
  {
    identityLookupDecisioningManager = [(IMDFilteringController *)self identityLookupDecisioningManager];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_22B6D0B94;
    v5[3] = &unk_278708420;
    v6 = _getSpamExtensionID;
    selfCopy = self;
    [identityLookupDecisioningManager requestFilterCapabilitiesForExtensionID:v6 withCompletion:v5];
  }
}

- (void)_checkIfMessageIsSpam:(id)spam fromSender:(id)sender withGuid:(id)guid receiverISOCountryCode:(id)code receivedViaRelay:(BOOL)relay containsOneTimeCode:(BOOL)timeCode
{
  timeCodeCopy = timeCode;
  relayCopy = relay;
  v57 = *MEMORY[0x277D85DE8];
  spamCopy = spam;
  senderCopy = sender;
  guidCopy = guid;
  codeCopy = code;
  v16 = IMGetDomainIntForKey();
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v18 = v16 < 1;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {

    goto LABEL_13;
  }

  if (v16 > 4)
  {
LABEL_13:
    _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
    v22 = [_getSpamExtensionID isEqualToString:@"com.apple.smsFilter.extension"];
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v51 = guidCopy;
        v52 = 2112;
        v53 = _getSpamExtensionID;
        v54 = 1024;
        *v55 = v22;
        *&v55[4] = 1024;
        *&v55[6] = timeCodeCopy;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Guid: %@, Checking for spam using spamExtensionID: %@, isUsingFirstPartyFilter: %{BOOL}d, containsOneTimeCode: %{BOOL}d", buf, 0x22u);
      }
    }

    v24 = v22 ^ 1;
    if (!_getSpamExtensionID)
    {
      v24 = 0;
    }

    if ((v24 & 1) != 0 || !timeCodeCopy)
    {
      if (!spamCopy || !senderCopy)
      {
        goto LABEL_36;
      }

      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = sub_22B6D15A4;
      v42 = &unk_278706650;
      selfCopy = self;
      v44 = guidCopy;
      v45 = relayCopy;
      im_dispatch_after();
      identityLookupDecisioningManager = [(IMDFilteringController *)self identityLookupDecisioningManager];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_22B6D15C4;
      v33[3] = &unk_2787084C0;
      v34 = _getSpamExtensionID;
      v37 = v22;
      v28 = v44;
      v35 = v28;
      selfCopy2 = self;
      v38 = relayCopy;
      v29 = [identityLookupDecisioningManager filterMessage:spamCopy fromSender:senderCopy receiverISOCountryCode:codeCopy extensionID:v34 withCompletion:v33];

      if ((v29 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v51 = v28;
            _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "IdentityLookup framework not found, guid: %@", buf, 0xCu);
          }
        }

        [(IMDFilteringController *)self _executeSpamCompletionBlockForMessageGuid:v28 category:0 subCategory:0 filterExtensionMetadata:0 receivedViaRelay:relayCopy spamDetectionSource:0];
      }

      v26 = &v44;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v51 = guidCopy;
          v52 = 2048;
          v53 = 4;
          v54 = 2048;
          *v55 = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Found one time code in message guid: %@, forcing category %ld sub category %ld", buf, 0x20u);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B6D1588;
      block[3] = &unk_278708448;
      block[4] = self;
      v26 = &v47;
      v47 = guidCopy;
      v48 = xmmword_22B7F87F0;
      v49 = relayCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

LABEL_36:
    goto LABEL_37;
  }

  v19 = IMGetDomainIntForKey();
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v51 = guidCopy;
      v52 = 2112;
      v53 = @"IncomingMessageAlertSpamForcedCategory";
      v54 = 2048;
      *v55 = v16;
      *&v55[8] = 2048;
      v56 = v19;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "_shouldCheckForSMSSpam: message.guid: %@ default %@ set, forcing category %ld sub category %ld", buf, 0x2Au);
    }
  }

  [(IMDFilteringController *)self _executeSpamCompletionBlockForMessageGuid:guidCopy category:v16 subCategory:v19 filterExtensionMetadata:0 receivedViaRelay:relayCopy spamDetectionSource:0];
LABEL_37:
}

- (void)_checkAndUpdateSMSSpamFilterExtensionForUnregisteredOrUpdatedPlugins:(id)plugins arePluginsRegistered:(BOOL)registered
{
  registeredCopy = registered;
  v29 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  if (pluginsCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Plugins have been deleted. Checking if current spam filter extension was deleted", buf, 2u);
      }
    }

    _getSpamExtensionID = [(IMDFilteringController *)self _getSpamExtensionID];
    if (_getSpamExtensionID)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = pluginsCopy;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        v10 = *v23;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [v8 objectForKey:*(*(&v22 + 1) + 8 * i)];
            v13 = [v12 objectForKey:@"NSExtensionIdentifier"];

            if (v13 && [_getSpamExtensionID isEqualToString:v13])
            {
              v15 = IMOSLoggingEnabled();
              if (registeredCopy)
              {
                if (v15)
                {
                  v16 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v27 = _getSpamExtensionID;
                    _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Spam extension installed matches current spam extension %@. Checking for new spam filter capabilities", buf, 0xCu);
                  }
                }

                v19[8] = 1;
                [v19 _updateFilterParamsForFilterExtension];
              }

              else
              {
                if (v15)
                {
                  v17 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v27 = _getSpamExtensionID;
                    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Spam extension deleted matches current spam extension %@.", buf, 0xCu);
                  }
                }

                v20 = _getSpamExtensionID;
                v21 = v13;
                im_dispatch_after();
              }

              goto LABEL_33;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_33:
    }

    else if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No spam extension currently selected. Not doing anything", buf, 2u);
      }
    }
  }
}

- (void)_relaySMSFilteringSettingsForFilterState:(int64_t)state
{
  v22 = *MEMORY[0x277D85DE8];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        stateCopy = state;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Received request to relay SMS filtering settings for filterState: %ld", buf, 0xCu);
      }
    }

    v6 = [(IMDFilteringController *)self _newSMSFilteringSettingsDictForFilterState:state];
    v7 = [v6 mutableCopy];

    [v7 setObject:@"1" forKey:@"sV"];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        stateCopy = v7;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Created SMSFilteringSettings dictionary: %@", buf, 0xCu);
      }
    }

    v9 = JWEncodeDictionary();
    _FTCopyGzippedData = [v9 _FTCopyGzippedData];
    v11 = MEMORY[0x277CBEB38];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:139];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D18828]];
    v14 = [v11 dictionaryWithObjectsAndKeys:{*MEMORY[0x277D18660], MEMORY[0x277CBEC38], *MEMORY[0x277D18648], v12, *MEMORY[0x277D18588], _FTCopyGzippedData, *MEMORY[0x277D18598], v13, *MEMORY[0x277D18650], 0}];

    relayController = [(IMDFilteringController *)self relayController];
    myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    v17 = [relayController sendDataToPeers:v14 forcedCallerID:myCTPhoneNumber shouldFilterRecepients:1 requestProxySend:0 dontSendTo:0];

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
        stateCopy = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Relayed SMSFilteringSettings dictionary: %@", buf, 0xCu);
      }
    }
  }
}

- (id)_newSMSFilteringSettingsDictForFilterState:(int64_t)state
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Creating SMSFilteringSettings dictionary", buf, 2u);
    }
  }

  if (state == 1)
  {
    v6 = IMGetCachedDomainValueForKey();
    fetchSMSFilterCapabilitiesOptions = [MEMORY[0x277D1AB68] fetchSMSFilterCapabilitiesOptions];
    v8 = v6;
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterExtensionNameKey, v8);
    }
  }

  else
  {
    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

    if (isInternalInstall && (IMGetDomainIntForKey() - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Forcing SMSFilteringSettings dict", v15, 2u);
        }
      }

      CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterExtensionNameKey, @"DefaultsOverrideExtension");
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      if (v12)
      {
        goto LABEL_12;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_22B7D9954();
      }

      goto LABEL_15;
    }

    fetchSMSFilterCapabilitiesOptions = 1;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:fetchSMSFilterCapabilitiesOptions];
  if (v12)
  {
LABEL_12:
    CFDictionarySetValue(v4, SMSRelayFilteringSettingsFilterCapabilitiesOptionsKey, v12);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_22B7D9954();
  }

LABEL_15:

  return v4;
}

- (void)_checkAndUpdateSMSFilteringSettingsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  if (![dCopy length] || !objc_msgSend(MEMORY[0x277D1AB70], "supportsIncomingSMSRelayFiltering"))
  {
    goto LABEL_23;
  }

  _isSpamFilteringEnabled = [(IMDFilteringController *)self _isSpamFilteringEnabled];
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v17 = 138413058;
      v18 = dCopy;
      v19 = 2048;
      v20 = (options >> 1) & 1;
      v21 = 2048;
      optionsCopy = options;
      v23 = 2112;
      v24 = nameCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received SMSFilteringSettings from iPhone:%@ with filterState: %ld, smsFilterCapabilitiesOptions:%lu, filterExtensionName:%@. Checking if we need to update filter params.", &v17, 0x2Au);
    }
  }

  if ([MEMORY[0x277D1AB68] isValidSMSFilterCapabilitiesOptions:options])
  {
    if ((options & 2) != 0)
    {
      if (_isSpamFilteringEnabled)
      {
        v14 = [MEMORY[0x277D1AB68] shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:dCopy smsFilterCapabilitiesOptions:options filterExtensionName:nameCopy];
      }

      else
      {
        [(IMDFilteringController *)self _enableSpamFiltering];
        if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(v17) = 0;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "SMS Filtering state changed from disabled to enabled. Need to update filter params.", &v17, 2u);
          }
        }

        v14 = 1;
      }

      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Received values not present in SMSFilterSyncDeviceParams array. Need to update filter params.", &v17, 2u);
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!_isSpamFilteringEnabled)
      {
        goto LABEL_23;
      }

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "SMS Filtering state changed from enabled to disabled. Need to update filter params.", &v17, 2u);
        }
      }
    }
  }

  else
  {
    options = 0;
  }

  [MEMORY[0x277D1AB68] updateSMSFilterCapabilitiesOptionsForDeviceID:dCopy smsFilterCapabilitiesOptions:options filterExtensionName:nameCopy];
LABEL_16:
  if (_isSpamFilteringEnabled && ([MEMORY[0x277D1AB68] isSMSFilteringEnabledInSMSFilterCapabilitiesOptions] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "SMS Filtering state changed from enabled to disabled. Need to update filter params.", &v17, 2u);
      }
    }

    [(IMDFilteringController *)self _disableSpamFiltering];
  }

LABEL_23:
}

- (void)_enableSpamFiltering
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Enabling Spam Filtering", v4, 2u);
    }
  }

  [(IMDFilteringController *)self _updateSpamFilteringState:1];
}

- (void)_disableSpamFilteringAndRelay
{
  [(IMDFilteringController *)self _disableSpamFiltering];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "SMS Filtering was disabled. Relaying to peers.", buf, 2u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6D2A04;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_disableSpamFiltering
{
  CFPreferencesSetAppValue(@"spamFilterExtensionParams", 0, @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"spamFiltrationExtensionID", 0, @"com.apple.MobileSMS");
  CFPreferencesSetAppValue(@"spamFiltrationExtensionName", 0, @"com.apple.MobileSMS");

  [(IMDFilteringController *)self _updateSpamFilteringState:0];
}

- (void)_updateSpamFilteringState:(int64_t)state
{
  CFPreferencesSetAppValue(@"IncomingMessageAlertSpamFiltration", [MEMORY[0x277CCABB0] numberWithInteger:state], @"com.apple.MobileSMS");
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if ([MEMORY[0x277D1AC58] isFilterUnknownSendersEnabled])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncomingMessageAlertSpamFiltration.changed", 0, 0, 1u);
  }
}

- (void)handler:(id)handler incomingSMSFilteringSettingsMessage:(id)message fromToken:(id)token
{
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  tokenCopy = token;
  if ([MEMORY[0x277D1AB70] supportsIncomingSMSRelayFiltering])
  {
    relayController = [(IMDFilteringController *)self relayController];
    enrollmentController = [relayController enrollmentController];
    [enrollmentController _approveSelfForSMSRelay];

    relayController2 = [(IMDFilteringController *)self relayController];
    v14 = [relayController2 idsDeviceFromPushToken:tokenCopy];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        name = [v14 name];
        v18 = 138412290;
        v19 = name;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Incoming SMSFilteringSettings message from %@", &v18, 0xCu);
      }
    }

    uniqueIDOverride = [v14 uniqueIDOverride];
    [(IMDFilteringController *)self _processReceivedSMSFilteringSettingsDictionary:messageCopy deviceID:uniqueIDOverride];
  }
}

- (BOOL)_storeSpamCompletionBlock:(id)block forMessageGUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  dCopy = d;
  v8 = [dCopy length];
  if (blockCopy)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = [(NSMutableDictionary *)self->_spamBlockMap objectForKey:dCopy];
    if (v11 && IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Using existing mapping mapping from %@ to %@", &v21, 0x16u);
      }
    }

    spamBlockMap = self->_spamBlockMap;
    if (!spamBlockMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v16 = self->_spamBlockMap;
      p_spamBlockMap = &self->_spamBlockMap;
      *p_spamBlockMap = Mutable;

      spamBlockMap = *p_spamBlockMap;
    }

    v17 = [blockCopy copy];
    [(NSMutableDictionary *)spamBlockMap setObject:v17 forKey:dCopy];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = _Block_copy(blockCopy);
        v21 = 138412546;
        v22 = dCopy;
        v23 = 2112;
        v24 = v19;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Generated mapping from %@ to %@", &v21, 0x16u);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cannot store completion block for guid as either guid or completion block is invalid", &v21, 2u);
    }

    goto LABEL_23;
  }

LABEL_24:

  return v10;
}

- (void)_executeSpamCompletionBlockForMessageGuid:(id)guid category:(int64_t)category subCategory:(int64_t)subCategory filterExtensionMetadata:(id)metadata receivedViaRelay:(BOOL)relay spamDetectionSource:(int64_t)source
{
  v20 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  metadataCopy = metadata;
  v15 = [(NSMutableDictionary *)self->_spamBlockMap objectForKey:guidCopy];
  if (v15)
  {
    if ([(IMDFilteringController *)self _isMessageCategorized:category])
    {
      _getSpamExtensionName = [(IMDFilteringController *)self _getSpamExtensionName];
    }

    else
    {
      _getSpamExtensionName = 0;
    }

    (v15)[2](v15, category, subCategory, _getSpamExtensionName, 0, metadataCopy, source);
    [(IMDFilteringController *)self _clearSpamMapForMessageGUID:guidCopy];
  }

  else if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = guidCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "executeSpamCompletionBlockForMessageGuid: %@ Aready ran completion block, not doing anything", &v18, 0xCu);
    }
  }
}

- (void)_clearSpamMapForMessageGUID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = dCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing spam block mapping for %@", &v7, 0xCu);
    }
  }

  if (dCopy)
  {
    [(NSMutableDictionary *)self->_spamBlockMap removeObjectForKey:dCopy];
    if (![(NSMutableDictionary *)self->_spamBlockMap count])
    {
      spamBlockMap = self->_spamBlockMap;
      self->_spamBlockMap = 0;
    }
  }
}

- (void)categorizeIncomingSMSMessage:(id)message messageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5
{
  messageCopy = message;
  completionCopy = completion;
  serviceCopy = service;
  chatCopy = chat;
  bodyCopy = body;
  codeCopy = code;
  participantsCopy = participants;
  identifierCopy = identifier;
  senderCopy = sender;
  dCopy = d;
  if ([messageCopy has_spamCategory])
  {
    spamCategory = [messageCopy spamCategory];
  }

  else
  {
    spamCategory = 0;
  }

  smsFilteringSettings = [messageCopy smsFilteringSettings];
  originatedDeviceUniqueID = [messageCopy originatedDeviceUniqueID];
  filterSubCategory = [messageCopy filterSubCategory];
  if ((filterSubCategory - 1) >= 0xC)
  {
    v23 = 0;
  }

  else
  {
    v23 = filterSubCategory;
  }

  LOBYTE(v25) = timeCode;
  LOBYTE(v24) = relayed;
  [(IMDFilteringController *)self categorizeIncomingMessage:smsFilteringSettings deviceID:originatedDeviceUniqueID category:spamCategory subCategory:v23 messageGUID:dCopy sender:senderCopy wasRelayed:v24 chatIdentifier:identifierCopy participants:participantsCopy checkingForSpam:spam trustIndicator:0 myReceiverISOCountryCode:codeCopy messageBody:bodyCopy foundChat:chatCopy service:serviceCopy containsOneTimeCode:v25 completion:completionCopy];
}

- (void)categorizeIncomingRCSMessageGUID:(id)d sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)identifier participants:(id)participants checkingForSpam:(BOOL *)spam trustIndicator:(id)indicator myReceiverISOCountryCode:(id)self0 messageBody:(id)self1 foundChat:(id)self2 service:(id)self3 containsOneTimeCode:(BOOL)self4 completion:(id)self5
{
  LOBYTE(v16) = timeCode;
  LOBYTE(v15) = relayed;
  [(IMDFilteringController *)self categorizeIncomingMessage:0 deviceID:0 category:0 subCategory:0 messageGUID:d sender:sender wasRelayed:v15 chatIdentifier:identifier participants:participants checkingForSpam:spam trustIndicator:indicator myReceiverISOCountryCode:code messageBody:body foundChat:chat service:service containsOneTimeCode:v16 completion:completion];
}

- (void)categorizeIncomingMessage:(id)message deviceID:(id)d category:(int64_t)category subCategory:(int64_t)subCategory messageGUID:(id)iD sender:(id)sender wasRelayed:(BOOL)relayed chatIdentifier:(id)self0 participants:(id)self1 checkingForSpam:(BOOL *)self2 trustIndicator:(id)self3 myReceiverISOCountryCode:(id)self4 messageBody:(id)self5 foundChat:(id)self6 service:(id)self7 containsOneTimeCode:(BOOL)self8 completion:(id)self9
{
  v106 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  senderCopy = sender;
  identifierCopy = identifier;
  participantsCopy = participants;
  subCategoryCopy = subCategory;
  indicatorCopy = indicator;
  codeCopy = code;
  bodyCopy = body;
  chatCopy = chat;
  serviceCopy = service;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = iDCopy;
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Looking at message with guid %@ for chatid %@, will check if it needs to be sent to spam extension app", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v105 = 0;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x2020000000;
  v103[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B6D3BD4;
  aBlock[3] = &unk_278708510;
  v59 = completionCopy;
  v95 = v59;
  v43 = dCopy;
  v85 = v43;
  v42 = messageCopy;
  v86 = v42;
  selfCopy = self;
  categoryCopy = category;
  subCategoryCopy2 = subCategory;
  v46 = identifierCopy;
  v88 = v46;
  v50 = participantsCopy;
  v89 = v50;
  v54 = senderCopy;
  v90 = v54;
  v29 = chatCopy;
  v91 = v29;
  v96 = buf;
  v97 = v103;
  spamCopy = spam;
  v30 = bodyCopy;
  v92 = v30;
  v57 = iDCopy;
  v93 = v57;
  v31 = codeCopy;
  v94 = v31;
  relayedCopy = relayed;
  timeCodeCopy = timeCode;
  v32 = _Block_copy(aBlock);
  if (category == 2)
  {
    (*(v59 + 2))(v59, 2, subCategoryCopy, 0, 0, 0, 0);
  }

  else
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

    if (isIntroductionsEnabled)
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = sub_22B6D3F48;
      v72[3] = &unk_278708538;
      v72[4] = self;
      v52 = v54;
      v73 = v52;
      v74 = serviceCopy;
      v75 = indicatorCopy;
      v76 = v30;
      v77 = v31;
      timeCodeCopy2 = timeCode;
      v35 = v29;
      v78 = v35;
      v81 = buf;
      v82 = v103;
      v36 = v32;
      v79 = v36;
      v48 = v59;
      v80 = v48;
      v61 = _Block_copy(v72);
      trustKitDecisioningManager = [(IMDFilteringController *)self trustKitDecisioningManager];
      isJunkFilteringEnabled = [trustKitDecisioningManager isJunkFilteringEnabled];

      if (isJunkFilteringEnabled)
      {
        if (v35 && (![v35 isFiltered] || objc_msgSend(v35, "isFiltered") == 2))
        {
          v61[2]();
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *v68 = 0;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Calling Communication Trust", v68, 2u);
            }
          }

          communicationTrustManager = [(IMDFilteringController *)self communicationTrustManager];
          *v68 = 0;
          v69 = v68;
          v70 = 0x2020000000;
          v71 = *(*&buf[8] + 24);
          *spam = 1;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = sub_22B6D3FA4;
          v62[3] = &unk_278708588;
          v63 = v35;
          v66 = v68;
          v64 = v48;
          v67 = v103;
          v65 = v61;
          [communicationTrustManager requestDecisionForSender:v52 completion:v62];

          _Block_object_dispose(v68, 8);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *v68 = 0;
            _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "Junk filtering disabled", v68, 2u);
          }
        }

        (*(v36 + 2))(v36, 0);
      }
    }

    else
    {
      (*(v32 + 2))(v32, 0);
    }
  }

  _Block_object_dispose(v103, 8);
  _Block_object_dispose(buf, 8);
}

- (void)disableFilteringIfNeeded
{
  if (-[IMDFilteringController _isSpamFilteringEnabled](self, "_isSpamFilteringEnabled") && ([MEMORY[0x277D1AB68] isSMSFilteringEnabledInSMSFilterCapabilitiesOptions] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "No more relay devices available. SMS Filtering state changed from enabled to disabled. Need to update filter params.", v4, 2u);
      }
    }

    [(IMDFilteringController *)self _disableSpamFiltering];
  }
}

- (void)_relayCurrentSMSFilteringSettings
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Received request to relay current SMS filtering settings", v4, 2u);
    }
  }

  [(IMDFilteringController *)self _relaySMSFilteringSettingsForFilterState:[(IMDFilteringController *)self _isSpamFilteringEnabled]];
}

- (NSMutableSet)pendingPriorityMessageGUIDs
{
  pendingPriorityMessageGUIDs = self->_pendingPriorityMessageGUIDs;
  if (!pendingPriorityMessageGUIDs)
  {
    v4 = objc_opt_new();
    v5 = self->_pendingPriorityMessageGUIDs;
    self->_pendingPriorityMessageGUIDs = v4;

    pendingPriorityMessageGUIDs = self->_pendingPriorityMessageGUIDs;
  }

  return pendingPriorityMessageGUIDs;
}

- (void)_removeAppliedPriorityMessages:(id)messages
{
  v16 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [messagesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(messagesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        pendingPriorityMessageGUIDs = [(IMDFilteringController *)self pendingPriorityMessageGUIDs];
        [pendingPriorityMessageGUIDs removeObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [messagesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)relayPriorityMessageFor:(id)for
{
  v27 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = objc_opt_new();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B6D48CC;
  v20[3] = &unk_278706590;
  v5 = v4;
  v21 = v5;
  v15 = forCopy;
  [forCopy enumerateObjectsUsingBlock:v20];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [v5 allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:v10];
        v12 = +[IMDAccountController sharedInstance];
        v13 = [v12 anySessionForServiceName:v10];

        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v23 = v10;
              v24 = 2112;
              v25 = v11;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Relaying priority messages to peers with %@: %@", buf, 0x16u);
            }
          }

          [v13 reflectPriorityMessageToPeerDevicesForMessageGUIDs:v11];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v7);
  }
}

- (void)_configureSyncedDefaultsWithOverride:(BOOL)override
{
  v19 = *MEMORY[0x277D85DE8];
  if ((IMSharedHelperDeviceIsiPad() & 1) == 0 && (override || ([(IMSyncedSettingsManaging *)self->_syncedSettingsManager settingExplicitlySetForKey:12]& 1) == 0))
  {
    relayController = [(IMDFilteringController *)self relayController];
    peerDevices = [relayController peerDevices];
    v7 = [MEMORY[0x277CCAC30] predicateWithBlock:&unk_283F1B2E8];
    v8 = [peerDevices filteredArrayUsingPredicate:v7];
    v9 = [v8 count];

    if (v9)
    {
      receiverIsCandidateForAppleSMSFilter = 0;
    }

    else
    {
      receiverIsCandidateForAppleSMSFilter = [MEMORY[0x277D1AC58] receiverIsCandidateForAppleSMSFilter];
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        if (receiverIsCandidateForAppleSMSFilter)
        {
          v12 = @"YES";
        }

        v15 = 138412546;
        v16 = v12;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updating FirstPartyTextMessageFilterAvailable to %@, numberOfOtherPhonesOnAccount=%lu", &v15, 0x16u);
      }
    }

    syncedSettingsManager = self->_syncedSettingsManager;
    v14 = [MEMORY[0x277CCABB0] numberWithBool:receiverIsCandidateForAppleSMSFilter];
    [(IMSyncedSettingsManaging *)syncedSettingsManager setSettingValue:v14 forKey:12];
  }
}

@end