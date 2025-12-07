@interface IMDTelephonyServiceSession
+ (id)backwardCompatibilityPrefixForLanguageCode:(id)code;
+ (id)createCompatibleBodyForMessage:(id)message processedMessageItem:(id)item;
+ (id)getPlainTextForMessage:(id)message processedMessageItem:(id)item;
+ (void)createFallbackTextForMessage:(id)message processedMessageItem:(id)item leadingFallbackText:(id)text trailingFallbackText:(id)fallbackText;
- (BOOL)_allowedToProcessMessageFromToken:(id)token fromID:(id)d reflectOnly:(BOOL)only isInProxyMode:(BOOL)mode;
- (BOOL)_canLocallySendWithPhoneNumber:(id)number;
- (BOOL)_canSendWithCallerID:(id)d;
- (BOOL)_disableScreenTimeRestrictionsForMessageItem:(id)item chat:(id)chat watchSendsOverCellular:(BOOL)cellular emergencyNumbersFoundInRecipients:(int64_t *)recipients;
- (BOOL)_hasRegisteredLocalPhoneNumberForHandle:(id)handle;
- (BOOL)_newFeatureRequiredByMessageItem:(id)item chatIdentifier:(id)identifier;
- (BOOL)_replicationDisabledByServerBag;
- (BOOL)_replicationRequiredForFeaturesUsedByMessageBody:(id)body;
- (BOOL)_shouldForceReplicationForStaleChatWithLastKnownReplicationDate:(id)date;
- (BOOL)_shouldReplicateMessageItem:(id)item chatStyle:(unsigned __int8)style lastKnownReplicationDate:(id)date callerID:(id)d;
- (BOOL)_sosReplicationDisabledByServerBag;
- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s;
- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat;
- (BOOL)incomingMessageHasTooManyRecipients:(id)recipients;
- (BOOL)isGroupMessagingEnabledFor:(id)for;
- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds;
- (BOOL)replicateMessage:(id)message chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style lastKnownReplicationDate:(id)date callerID:(id)d;
- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item;
- (BOOL)responsibleForMessageID:(id)d;
- (IMDRelayEnrollmentController)relayEnrollmentController;
- (IMDTelephonyServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session;
- (double)_periodicReplicationTimeInterval;
- (id)_businessNameForIndiaShortCodeSender:(id)sender;
- (id)_callerIDForChatWithChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style foundChat:(id)chat;
- (id)_callerIDUsingFromIdentifier:(id)identifier;
- (id)_chatForGroupID:(id)d originalGroupID:(id)iD;
- (id)_chatForSendingMessageItem:(id)item chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (id)_countryCodeForIncomingTextMessage:(id)message;
- (id)_identifierForMergedBusinessThread:(id)thread;
- (id)_messageDictionaryToRelayWithIncomingMessageDictionary:(id)dictionary smsMessage:(id)message;
- (id)_phoneNumberForRegisteredSimID:(id)d;
- (id)_replicatedMessageGUIDToReleaseFromMessageDictionary:(id)dictionary;
- (id)_resolveHandlesFor:(id)for withMessage:(id)message;
- (id)_resolvedCallerIDForLastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)d saveResolvedCallerIDToChat:(BOOL *)chat;
- (id)_sendingHandleForOutgoingMessageInChat:(id)chat fromIdentifier:(id)identifier;
- (id)_updatedMessageContextForJunkProcessing:(id)processing;
- (id)chatForIncomingMessageContext:(id)context createIfNotExists:(BOOL)exists;
- (id)chatForOutgoingMessage:(id)message fromIdentifier:(id)identifier isInProxyMode:(BOOL)mode createIfNotExists:(BOOL)exists;
- (id)compatibleMessageToSendForMessageItem:(id)item;
- (id)createHandleInfoFor:(id)for;
- (id)createHandleInfoForParticipants:(id)participants unformattedIDs:(id)ds countryCodes:(id)codes isGroupChat:(BOOL)chat;
- (id)findChatAndLinkMessage:(id)message context:(id)context;
- (id)getLabelFor:(int64_t)for subCategory:(int64_t)category;
- (id)outgoingReplicationCallerIDForChat:(id)chat;
- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts;
- (id)replicationPhoneNumbers;
- (id)subscriptionContextForChat:(id)chat;
- (int64_t)_iMessageCapabilityForSIMID:(id)d;
- (int64_t)maxSizePerAttachmentWithCount:(int)count lastAddressHandle:(id)handle lastAddressedSIMID:(id)d;
- (unint64_t)_sendingDecisionForMessageItem:(id)item callerID:(id)d lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)iD;
- (unint64_t)maxRecipientsForPhoneNumber:(id)number simID:(id)d;
- (void)_addOriginatedMessage:(id)message;
- (void)_carrierReportJunkMetricsForSMSWithSubject:(id)subject isGroupchat:(BOOL)groupchat hasAttachments:(BOOL)attachments;
- (void)_clearInactivityTimer;
- (void)_clearTimoutTimerForRelayMessageID:(id)d;
- (void)_deferredReplicatedMessageReleaseWithAllowedMessage:(id)message outgoingProxyBlock:(id)block;
- (void)_enqueueBlock:(id)block withTimeout:(double)timeout;
- (void)_findUnsubscribeTextForChat:(id)chat inMessageBody:(id)body;
- (void)_finishSendingMessageItem:(id)item chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style foundChat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication shouldForceFail:(BOOL)fail watchSendsOverCellular:(BOOL)self0 forceReflection:(BOOL)self1 forceRelay:(BOOL)self2 callerID:(id)self3;
- (void)_generatePreviewForTransfer:(id)transfer message:(id)message;
- (void)_markMessageAsSent:(id)sent wasInterworked:(BOOL)interworked;
- (void)_messageTimedOut:(id)out;
- (void)_processReceivedDictionaryInBlastDoor:(id)door storageContext:(id)context receivedViaRelay:(BOOL)relay withCompletionBlock:(id)block;
- (void)_processReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block;
- (void)_registerChatForIncomingMessageWithContext:(id)context;
- (void)_registerForCTNotifications;
- (void)_registerForIncomingMessages:(id)messages;
- (void)_relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0;
- (void)_releasePendingMessagesAndProcessReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block;
- (void)_removeOriginatedMessage:(id)message;
- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat;
- (void)_resetAndBroadcastBlackholeErrorStateIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (void)_setClearMessageSendTimer;
- (void)_setTimeoutTimerForRelayMessageID:(id)d timeout:(double)timeout;
- (void)_setupCoreTelephonyObservation;
- (void)_teardownCoreTelephonyObservation;
- (void)_updateCategoryForChat:(id)chat andMessage:(id)message category:(int64_t)category subCategory:(int64_t)subCategory spamExtensionName:(id)name;
- (void)_updateLastAddressedIDsIfNeededForChatWithIdentifier:(id)identifier style:(unsigned __int8)style lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d iMessageCapability:(int64_t)capability;
- (void)_updatePhoneNumberCallerID;
- (void)_updateShouldForceToSMSForChatWithIdentifier:(id)identifier style:(unsigned __int8)style shouldForceToSMS:(BOOL)s;
- (void)didReceiveDisplayNameChange:(id)change guid:(id)guid fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account shouldRelay:(BOOL)self0;
- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion;
- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage;
- (void)enrollDeviceInSMSRelay:(id)relay;
- (void)enrollSelfDeviceInSMSRelay;
- (void)handler:(id)handler incomingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler incomingGroupMutationMessage:(id)message timeStamp:(id)stamp storageContext:(id)context fromToken:(id)token fromID:(id)d isInProxyMode:(BOOL)mode;
- (void)handler:(id)handler incomingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler localFileRequest:(id)request storageContext:(id)context;
- (void)handler:(id)handler localFileResponse:(id)response storageContext:(id)context;
- (void)handler:(id)handler localIncomingDownloadMessage:(id)message storageContext:(id)context;
- (void)handler:(id)handler localIncommingMessage:(id)message storageContext:(id)context;
- (void)handler:(id)handler localMessageError:(id)error storageContext:(id)context;
- (void)handler:(id)handler localOutgoingDownloadMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context;
- (void)handler:(id)handler localOutgoingMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context;
- (void)handler:(id)handler messageGUIDToReport:(id)report;
- (void)handler:(id)handler messageIDRead:(id)read readByMe:(BOOL)me timeStamp:(id)stamp toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token reflectOnly:(BOOL)self0 storageContext:(id)self1;
- (void)handler:(id)handler messageIDSendFailure:(id)failure toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler messageIDSent:(id)sent wasInterworked:(BOOL)interworked toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context;
- (void)handler:(id)handler outgoingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2;
- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2;
- (void)handler:(id)handler receivedPriorityMessageCommand:(id)command fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier fromToken:(id)token;
- (void)joinChat:(id)chat handleInfo:(id)info style:(unsigned __int8)style groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD joinProperties:(id)properties;
- (void)loginServiceSessionWithAccount:(id)account;
- (void)logoutServiceSessionWithAccount:(id)account;
- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog completionBlock:(id)block;
- (void)processMessageSendFailure:(id)failure;
- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style;
- (void)relayDisplayNameChange:(id)change forChat:(id)chat fromID:(id)d messageID:(id)iD didOccurLocally:(BOOL)locally;
- (void)requestTranscriptBackground:(id)background toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage;
- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh;
- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d;
- (void)sendBrandLogoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendDeleteCommand:(id)command forChatGUID:(id)d;
- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0;
- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account;
- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style account:(id)account;
- (void)sendMessageFromIMMessageItem:(id)item forChat:(id)chat chat:(id)a5 style:(unsigned __int8)style;
- (void)sendRecoverCommand:(id)command forChatGUID:(id)d;
- (void)sendReportJunkMessageGUID:(id)d shouldRelay:(BOOL)relay;
- (void)sendRepositionStickerMessage:(id)message chatIdentifier:(id)identifier accountID:(id)d style:(unsigned __int8)style;
- (void)sendUnapproveToToken:(id)token messageGUID:(id)d completion:(id)completion;
- (void)setServiceCompatibleContentOn:(id)on forChat:(id)chat style:(unsigned __int8)style from:(id)from completionBlock:(id)block;
- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh;
- (void)unEnrollDeviceInSMSRelay:(id)relay;
- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID;
@end

@implementation IMDTelephonyServiceSession

+ (id)getPlainTextForMessage:(id)message processedMessageItem:(id)item
{
  itemCopy = item;
  messageCopy = message;
  v8 = [self createCompatibleBodyForMessage:messageCopy processedMessageItem:itemCopy];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v10 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [self createFallbackTextForMessage:messageCopy processedMessageItem:itemCopy leadingFallbackText:v9 trailingFallbackText:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v9, v8, v10];

  return v11;
}

+ (id)createCompatibleBodyForMessage:(id)message processedMessageItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  itemCopy = item;
  if ([itemCopy sendAlternateLayoutAsText])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        *buf = 138412290;
        v21 = guid;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Replacing message body with text for layout (sendAlternateLayoutAsText):%@", buf, 0xCu);
      }
    }

    payloadData = [messageCopy payloadData];
    v10 = IMBalloonPluginFallbackText();
  }

  else
  {
    payloadData = [messageCopy body];
    v11 = +[IMDFileTransferCenter sharedInstance];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_22B54DE90;
    aBlock[3] = &unk_2787033A8;
    v19 = v11;
    v12 = v11;
    v13 = _Block_copy(aBlock);
    v17 = 0;
    v14 = [payloadData __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingFileTransferProvider:v13 replacementTextProvider:&unk_283F19AC8 removedTransferGUIDsOut:&v17];
    string = [v14 string];
    v10 = _IMStringStrippingControlCharacters();
  }

  return v10;
}

+ (void)createFallbackTextForMessage:(id)message processedMessageItem:(id)item leadingFallbackText:(id)text trailingFallbackText:(id)fallbackText
{
  v62 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  itemCopy = item;
  textCopy = text;
  fallbackTextCopy = fallbackText;
  v51 = itemCopy;
  expressiveSendStyleID = [itemCopy expressiveSendStyleID];
  v11 = [expressiveSendStyleID length];

  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        *buf = 138412290;
        v61 = guid;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Appending expressive send style id for message %@", buf, 0xCu);
      }
    }

    _localizedBackwardsCompatibleExpressiveSendText = [messageCopy _localizedBackwardsCompatibleExpressiveSendText];
    if ([_localizedBackwardsCompatibleExpressiveSendText length])
    {
      [fallbackTextCopy appendFormat:@"\n%@", _localizedBackwardsCompatibleExpressiveSendText];
    }
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isAutomaticIncomingTranslationEnabled = [mEMORY[0x277D1A9B8] isAutomaticIncomingTranslationEnabled];

  if (isAutomaticIncomingTranslationEnabled)
  {
    messageSummaryInfo = [itemCopy messageSummaryInfo];
    v17 = *MEMORY[0x277D1A058];
    v18 = [messageSummaryInfo objectForKey:*MEMORY[0x277D1A058]];

    if (v18)
    {
      messageSummaryInfo2 = [itemCopy messageSummaryInfo];
      v46 = [messageSummaryInfo2 objectForKeyedSubscript:v17];

      if (v46)
      {
        translationMessagePartClasses = [MEMORY[0x277D1AA70] translationMessagePartClasses];
        v58 = 0;
        v43 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:translationMessagePartClasses fromData:v46 error:&v58];
        v42 = v58;
        v20 = v43;
        if (v43)
        {
          allValues = [v43 allValues];
          firstObject = [allValues firstObject];

          if (firstObject)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            obj = firstObject;
            v23 = 0;
            v24 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
            if (v24)
            {
              v25 = *v55;
              v26 = &stru_283F23018;
              do
              {
                v27 = 0;
                v28 = v23;
                v29 = v26;
                do
                {
                  if (*v55 != v25)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v30 = *(*(&v54 + 1) + 8 * v27);
                  v31 = MEMORY[0x277CCACA8];
                  v32 = [v30 objectForKey:@"translatedText"];
                  string = [v32 string];
                  v26 = [v31 stringWithFormat:@"%@%@", v29, string, v42];

                  v23 = [v30 objectForKey:@"translationLanguage"];

                  ++v27;
                  v28 = v23;
                  v29 = v26;
                }

                while (v24 != v27);
                v24 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
              }

              while (v24);
            }

            else
            {
              v26 = &stru_283F23018;
            }

            v35 = [self backwardCompatibilityPrefixForLanguageCode:v23];
            v53 = 0;
            v34 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v35 validFormatSpecifiers:@"%@" error:&v53, v26];

            [fallbackTextCopy appendFormat:@"\n\n%@", v34];
          }

          else
          {
            v34 = &stru_283F23018;
          }

          v20 = v43;
        }

        else
        {
          v34 = &stru_283F23018;
        }
      }

      else
      {
        v34 = &stru_283F23018;
      }
    }
  }

  threadIdentifier = [v51 threadIdentifier];
  v37 = [threadIdentifier length] == 0;

  if (!v37)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        guid2 = [v51 guid];
        *buf = 138412290;
        v61 = guid2;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Formatting plain text reply message for message %@", buf, 0xCu);
      }
    }

    v40 = IMSharedUtilitiesFrameworkBundle();
    v41 = [v40 localizedStringForKey:@"REPLIED_BACKWARD_COMPATIBILITY" value:&stru_283F23018 table:@"IMSharedUtilities"];
    [textCopy appendFormat:@"%@\n", v41];
  }
}

- (IMDTelephonyServiceSession)initWithAccount:(id)account service:(id)service replicatingForSession:(id)session
{
  accountCopy = account;
  serviceCopy = service;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = IMDTelephonyServiceSession;
  v11 = [(IMDServiceSession *)&v18 initWithAccount:accountCopy service:serviceCopy replicatingForSession:sessionCopy];
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Setting up base telephony service", v17, 2u);
      }
    }

    v13 = [[IMDRelayAttachmentController alloc] initWithSession:v11];
    [(IMDTelephonyServiceSession *)v11 setAttachmentController:v13];

    [(IMDTelephonyServiceSession *)v11 _updatePhoneNumberCallerID];
    [(IMDTelephonyServiceSession *)v11 _setupCoreTelephonyObservation];
    v14 = +[IMDPlainTextTapbackInterpreter sharedInstance];
    tapbackInterpreter = v11->_tapbackInterpreter;
    v11->_tapbackInterpreter = v14;
  }

  return v11;
}

- (void)_updatePhoneNumberCallerID
{
  v20 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Updating", &v18, 2u);
    }
  }

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctPhoneNumber = [mEMORY[0x277D1A908] ctPhoneNumber];
  v6 = [ctPhoneNumber copy];

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Default phone number from telephony is: %@", &v18, 0xCu);
    }
  }

  if (!v6)
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    dominentPhoneNumberAlias = [relayController dominentPhoneNumberAlias];
    v6 = [dominentPhoneNumberAlias copy];

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No phone number from telephony, adopting relay phone number %@", &v18, 0xCu);
      }
    }

    if (!v6)
    {
      v6 = [&stru_283F23018 copy];
    }
  }

  registration = [MEMORY[0x277D19298] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&dword_22B4CC000, registration, OS_LOG_TYPE_DEFAULT, "Updating SMS service with number: %@", &v18, 0xCu);
  }

  account = [(IMDServiceSession *)self account];
  v13 = MEMORY[0x277CBEAC0];
  v14 = IMGenerateLoginID();
  v15 = [v13 dictionaryWithObject:v14 forKey:*MEMORY[0x277D19420]];
  [account writeAccountDefaults:v15];

  account2 = [(IMDServiceSession *)self account];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D19408]];
  [account2 writeAccountDefaults:v17];
}

- (id)_callerIDUsingFromIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if ([identifierCopy hasPrefix:@"device:"])
  {
    _stripFZIDPrefix = 0;
  }

  else
  {
    _stripFZIDPrefix = [identifierCopy _stripFZIDPrefix];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = _stripFZIDPrefix;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stripping FZIDPrefix, after: %@", &v7, 0xCu);
      }
    }
  }

  return _stripFZIDPrefix;
}

- (void)loginServiceSessionWithAccount:(id)account
{
  v9 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS: %@", &v7, 0xCu);
    }
  }

  [(IMDServiceSession *)self refreshServiceCapabilities];
  [(IMDServiceSession *)self serviceSessionDidLoginWithAccount:accountCopy];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@: Log in.", &v7, 0xCu);
    }
  }
}

- (void)logoutServiceSessionWithAccount:(id)account
{
  v9 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "SMS: %@", &v7, 0xCu);
    }
  }

  if ([accountCopy loginStatus] != 2)
  {
    [accountCopy setLoginStatus:0 message:0];
    [(IMDServiceSession *)self serviceSessionDidLogoutWithAccount:accountCopy];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%@: Logging out.", &v7, 0xCu);
      }
    }
  }
}

- (id)compatibleMessageToSendForMessageItem:(id)item
{
  v34 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  balloonBundleID = [itemCopy balloonBundleID];
  v5 = IMBalloonExtensionIDWithSuffix();
  v6 = [balloonBundleID isEqualToString:v5];

  if (v6)
  {
    v7 = IMExtensionPayloadUnarchivingClasses();
    v8 = objc_alloc(MEMORY[0x277CCAAC8]);
    payloadData = [itemCopy payloadData];
    v31 = 0;
    v10 = [v8 initForReadingFromData:payloadData error:&v31];
    v11 = v31;

    v12 = [v10 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];
    if (v11 && IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v33 = v11;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Failed to unarchive attributionInfo. Error: %@", buf, 0xCu);
      }
    }

    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v12 objectForKey:*MEMORY[0x277D19D60]];
      v15 = [v14 objectForKey:@"messageText"];
      v16 = v15 == 0;

      if (!v16)
      {
        v17 = objc_alloc(MEMORY[0x277CCAB48]);
        v18 = [v14 objectForKey:@"messageText"];
        v19 = [v17 initWithString:v18];

        if (v19)
        {
          v29 = objc_alloc(MEMORY[0x277D1AA70]);
          sender = [itemCopy sender];
          time = [itemCopy time];
          flags = [itemCopy flags];
          guid = [itemCopy guid];
          v23 = [v29 initWithSender:sender time:time body:v19 attributes:0 fileTransferGUIDs:0 flags:flags error:0 guid:guid threadIdentifier:0];

          if (IMOSLoggingEnabled())
          {
            v24 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              guid2 = [v23 guid];
              *buf = 138412290;
              v33 = guid2;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Sending activity sharing fallback for message %@", buf, 0xCu);
            }
          }

          v26 = 0;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Activity sharing payload doesn't have message text to send. Bailing", buf, 2u);
      }
    }

    v23 = itemCopy;
    v19 = 0;
    v26 = 1;
LABEL_23:

    if (v26)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v23 = itemCopy;
LABEL_24:
  v23 = v23;
  itemCopy = v23;
LABEL_25:

  return itemCopy;
}

- (BOOL)allowedToSendMessage:(id)message toChat:(id)chat
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  LODWORD(self) = [(IMDTelephonyServiceSession *)self _newFeatureRequiredByMessageItem:messageCopy chatIdentifier:chatIdentifier];

  if (self)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        v17 = 138412290;
        v18 = guid;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, " ** New Feature, and backwards compat is not enabled for message %@", &v17, 0xCu);
      }
    }

    [messageCopy setErrorCode:5];
  }

  else
  {
    if (([messageCopy scheduleType] - 1) > 1)
    {
      v15 = 1;
      goto LABEL_15;
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        guid2 = [messageCopy guid];
        v17 = 138412290;
        v18 = guid2;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Received attempt to send a scheduled message through the telephony service session, message guid: %@", &v17, 0xCu);
      }
    }

    [messageCopy setErrorCode:5];
    [messageCopy setScheduleState:4];
    v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.messages.TelephonyServiceSessionSendFailure" code:5 userInfo:0];
    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Invalid scheduled message send" errorPayload:v13];
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)_newFeatureRequiredByMessageItem:(id)item chatIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  associatedMessageType = [itemCopy associatedMessageType];
  if (associatedMessageType != 2006 && associatedMessageType != 3006)
  {
    associatedMessageType2 = [itemCopy associatedMessageType];
    if (associatedMessageType2 != 3007 && associatedMessageType2 != 2007)
    {
      goto LABEL_14;
    }
  }

  v9 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v10 = [v9 objectForKey:@"backwards-compat-enabled-etap"];
  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall)
  {
    messagesAppDomain = [MEMORY[0x277CBEBD0] messagesAppDomain];
    v14 = [messagesAppDomain arrayForKey:@"chat-id-allow-list"];

    if ([v14 containsObject:identifierCopy])
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v36 = identifierCopy;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Ignoring backwards compat check and allowing sending message to %@", buf, 0xCu);
        }
      }

      goto LABEL_27;
    }
  }

  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
LABEL_14:
    fileTransferGUIDs = [itemCopy fileTransferGUIDs];
    v10 = +[IMDFileTransferCenter sharedInstance];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = fileTransferGUIDs;
    v18 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = *v31;
LABEL_16:
      v20 = 0;
      while (1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v9);
        }

        v21 = [v10 transferForGUID:{*(*(&v30 + 1) + 8 * v20), v30}];
        isAdaptiveImageGlyph = [v21 isAdaptiveImageGlyph];

        if (isAdaptiveImageGlyph)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v18)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v24 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
      v25 = [v24 objectForKey:@"backwards-compat-enabled-adaptive-image-glyphs"];
      bOOLValue2 = [v25 BOOLValue];

      if ((bOOLValue2 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_22:
    }

    if ([itemCopy associatedMessageType] == 4000)
    {
      v27 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
      v28 = IMSharedHelperCustomAcknowledgementBackwardsCompatibilityEnabled();

      if (!v28)
      {
LABEL_28:
        v23 = 1;
        goto LABEL_29;
      }
    }

LABEL_27:
    v23 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v23 = 1;
LABEL_30:

  return v23;
}

- (id)_chatForSendingMessageItem:(id)item chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  v7.receiver = self;
  v7.super_class = IMDTelephonyServiceSession;
  v5 = [(IMDServiceSession *)&v7 chatForChatIdentifier:identifier style:style updatingAccount:1];

  return v5;
}

- (void)_markMessageAsSent:(id)sent wasInterworked:(BOOL)interworked
{
  interworkedCopy = interworked;
  originatedMessages = self->_originatedMessages;
  sentCopy = sent;
  if ([(NSMutableSet *)originatedMessages containsObject:?])
  {
    [(IMDTelephonyServiceSession *)self _clearTimoutTimerForRelayMessageID:sentCopy];
    [(IMDServiceSession *)self notifyDidSendMessageID:sentCopy account:0 shouldNotify:1 wasDowngraded:0 wasInterworked:interworkedCopy];
    [(IMDTelephonyServiceSession *)self _removeOriginatedMessage:sentCopy];
  }

  else
  {
    [(IMDServiceSession *)self notifyDidSendMessageID:sentCopy account:0 shouldNotify:0 wasDowngraded:0 wasInterworked:interworkedCopy];
    [(IMDTelephonyServiceSession *)self _clearTimoutTimerForRelayMessageID:sentCopy];
  }
}

- (void)_updateLastAddressedIDsIfNeededForChatWithIdentifier:(id)identifier style:(unsigned __int8)style lastAddressedHandle:(id)handle lastAddressedSIMID:(id)d iMessageCapability:(int64_t)capability
{
  styleCopy = style;
  v63 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  handleCopy = handle;
  dCopy = d;
  if ([handleCopy length] || objc_msgSend(dCopy, "length"))
  {
    capabilityCopy = capability;
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v13 allExistingSupportedServiceChatsWithIdentifier:identifierCopy style:styleCopy];

    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v59 = identifierCopy;
        v60 = 1024;
        *v61 = styleCopy;
        *&v61[4] = 2112;
        *&v61[6] = handleCopy;
        *&v61[14] = 2112;
        *&v61[16] = dCopy;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Checking if chats with chatIdentifier %@ and style %hhu need to have their last addressed handle updated to %@ or their last addressed sim id updated to %@", buf, 0x26u);
      }
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v14;
    v16 = 0;
    v17 = 0;
    v18 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v18)
    {
      v52 = 0;
      v53 = *v55;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v55 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v54 + 1) + 8 * i);
          chatIdentifier = [v20 chatIdentifier];
          v22 = [chatIdentifier length] == 0;

          if (!v22)
          {
            if ([dCopy length])
            {
              lastAddressedSIMID = [v20 lastAddressedSIMID];
              v24 = [lastAddressedSIMID isEqualToString:dCopy];

              v17 |= v24 ^ 1;
            }

            lastAddressedLocalHandle = [v20 lastAddressedLocalHandle];
            v26 = MEMORY[0x231897D30](lastAddressedLocalHandle, handleCopy);

            if ((v26 & 1) == 0)
            {
              if ([handleCopy length] || (objc_msgSend(v20, "serviceName"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277D1A620]), v27, !v28))
              {
                v16 = 1;
              }

              else if (IMOSLoggingEnabled())
              {
                v29 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Last address handle is nil, not updating iMessage to nil last addressed handle", buf, 2u);
                }
              }
            }

            if (v17 & v16)
            {
              if (IMOSLoggingEnabled())
              {
                v30 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                {
                  guid = [v20 guid];
                  lastAddressedLocalHandle2 = [v20 lastAddressedLocalHandle];
                  *buf = 138413058;
                  v59 = guid;
                  v60 = 2112;
                  *v61 = handleCopy;
                  *&v61[8] = 2112;
                  *&v61[10] = lastAddressedLocalHandle2;
                  *&v61[18] = 2112;
                  *&v61[20] = dCopy;
                  _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "  ** Updating both caller ID for chat with guid %@ to be: %@ from %@ and sim ID to be: %@", buf, 0x2Au);
                }
              }

              [v20 updateLastAddressedHandle:handleCopy forceUpdateHandle:0 lastAddressedSIMID:dCopy];
            }

            else if (v17)
            {
              if (IMOSLoggingEnabled())
              {
                v33 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                {
                  guid2 = [v20 guid];
                  *buf = 138412546;
                  v59 = guid2;
                  v60 = 2112;
                  *v61 = dCopy;
                  _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "  ** Updating sim ID for chat with guid %@ to be: %@", buf, 0x16u);
                }
              }

              [v20 updateLastAddressedSIMID:dCopy];
            }

            else if (v16)
            {
              if (IMOSLoggingEnabled())
              {
                v35 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  guid3 = [v20 guid];
                  lastAddressedLocalHandle3 = [v20 lastAddressedLocalHandle];
                  *buf = 138412802;
                  v59 = guid3;
                  v60 = 2112;
                  *v61 = handleCopy;
                  *&v61[8] = 2112;
                  *&v61[10] = lastAddressedLocalHandle3;
                  _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "  ** Updating caller ID for chat with guid %@ to be: %@ from %@", buf, 0x20u);
                }
              }

              [v20 updateLastAddressedHandle:handleCopy];
            }

            serviceName = [v20 serviceName];
            v39 = [serviceName isEqualToString:*MEMORY[0x277D1A610]];

            if (v39)
            {
              v40 = v20;

              v52 = v40;
            }

            if (capabilityCopy == 2)
            {
              if (IMOSLoggingEnabled())
              {
                v44 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  guid4 = [v20 guid];
                  *buf = 138412290;
                  v59 = guid4;
                  _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Updating chat with guid %@ to have shouldForceToSMS = YES", buf, 0xCu);
                }
              }

              v43 = 1;
            }

            else
            {
              if (capabilityCopy != 1)
              {
                continue;
              }

              if (IMOSLoggingEnabled())
              {
                v41 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  guid5 = [v20 guid];
                  *buf = 138412290;
                  v59 = guid5;
                  _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Updating chat with guid %@ to have shouldForceToSMS = NO", buf, 0xCu);
                }
              }

              v43 = 0;
            }

            [v20 updateShouldForceToSMS:v43];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (!v18)
        {
          goto LABEL_60;
        }
      }
    }

    v52 = 0;
LABEL_60:

    if (!(v16 & 1 | ((IMSharedHelperDeviceHasMultipleSubscriptions() & v17 & 1) == 0)) && v52)
    {
      if (IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          guid6 = [v52 guid];
          *buf = 138412546;
          v59 = guid6;
          v60 = 2112;
          *v61 = dCopy;
          _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Updated simID on chat %@ to %@ but phoneNumber is nil so force updating IMChat to have nil lastAddressedHandle", buf, 0x16u);
        }
      }

      [v52 updateLastAddressedHandle:0 forceUpdate:1];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v48 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v59 = identifierCopy;
      v60 = 1024;
      *v61 = styleCopy;
      _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Not updating chats with identifier %@ and style %hhu as both last addressed handle and last addressed sim id are nil", buf, 0x12u);
    }
  }
}

- (void)didReceiveMessages:(id)messages forChat:(id)chat style:(unsigned __int8)style account:(id)account fromIDSID:(id)d completion:(id)completion
{
  styleCopy = style;
  v57 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  chatCopy = chat;
  accountCopy = account;
  dCopy = d;
  completionCopy = completion;
  v15 = +[IMDChatRegistry sharedInstance];
  selfCopy = self;
  account = [(IMDServiceSession *)self account];
  v40 = chatCopy;
  v17 = [v15 existingChatWithIdentifier:chatCopy account:account];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = messagesCopy;
  v18 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v43 = *v52;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v51 + 1) + 8 * i);
        service = [accountCopy service];
        internalName = [service internalName];

        mEMORY[0x277D1AB48] = [MEMORY[0x277D1AB48] sharedInstance];
        guid = [v21 guid];
        sender = [v21 sender];
        destinationCallerID = [v21 destinationCallerID];
        [mEMORY[0x277D1AB48] logMessageReceivedWithGUID:guid fromIdentifier:sender toIdentifier:destinationCallerID conversationType:objc_msgSend(v17 messageType:"powerLogConversationType") messageProtocol:{objc_msgSend(v21, "powerLogMessageType"), internalName}];

        body = [v21 body];
        string = [body string];
        [(IMDTelephonyServiceSession *)selfCopy _findUnsubscribeTextForChat:v17 inMessageBody:string];
      }

      v19 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v19);
  }

  v50.receiver = selfCopy;
  v50.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v50 didReceiveMessages:obj forChat:v40 style:styleCopy account:accountCopy fromIDSID:dCopy completion:completionCopy];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v30 = obj;
  v31 = [v30 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v46 + 1) + 8 * j);
        v36 = +[IMDRelayPushHandler sharedInstance];
        guid2 = [v35 guid];
        [v36 _handleMessageProcessedWithGUID:guid2];
      }

      v32 = [v30 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v32);
  }
}

- (void)didSendMessage:(id)message forChat:(id)chat style:(unsigned __int8)style account:(id)account forceDate:(id)date itemIsComingFromStorage:(BOOL)storage
{
  styleCopy = style;
  dateCopy = date;
  accountCopy = account;
  chatCopy = chat;
  messageCopy = message;
  v13 = +[IMDChatRegistry sharedInstance];
  v25 = [v13 existingChatWithIdentifier:chatCopy account:accountCopy];

  service = [messageCopy service];
  mEMORY[0x277D1AB48] = [MEMORY[0x277D1AB48] sharedInstance];
  guid = [messageCopy guid];
  sender = [messageCopy sender];
  destinationCallerID = [messageCopy destinationCallerID];
  powerLogConversationType = [v25 powerLogConversationType];
  powerLogMessageType = [messageCopy powerLogMessageType];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(messageCopy, "errorCode")}];
  [mEMORY[0x277D1AB48] logMessageSentWithGUID:guid fromIdentifier:sender toIdentifier:destinationCallerID conversationType:powerLogConversationType messageType:powerLogMessageType sendDuration:0 errorCode:v21 messageProtocol:service];

  v29.receiver = self;
  v29.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v29 didSendMessage:messageCopy forChat:chatCopy style:styleCopy account:accountCopy forceDate:dateCopy itemIsComingFromStorage:0];

  v22 = +[IMDRelayPushHandler sharedInstance];
  guid2 = [messageCopy guid];

  [v22 _handleMessageProcessedWithGUID:guid2];
}

- (id)_resolvedCallerIDForLastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)d saveResolvedCallerIDToChat:(BOOL *)chat
{
  v50 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  _callerIDForRelay = [relayController _callerIDForRelay];

  if ([(__CFString *)_callerIDForRelay _appearsToBePhoneNumber])
  {
    relayController2 = [(IMDTelephonyServiceSession *)self relayController];
    v13 = [relayController2 isAliasRelayCapable:_callerIDForRelay];
  }

  else
  {
    v13 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = handleCopy;
      v48 = 2112;
      v49 = dCopy;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "The Last Addressed Handle For This Chat is %@ and lastAddressedSIMID is %@", buf, 0x16u);
    }
  }

  HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
  HasMultipleSubscriptionsWithAtLeastOneActive = IMSharedHelperDeviceHasMultipleSubscriptionsWithAtLeastOneActive();
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      if (HasMultipleActiveSubscriptions)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      if (HasMultipleSubscriptionsWithAtLeastOneActive)
      {
        v18 = @"YES";
      }

      *buf = 138412546;
      v47 = v19;
      v48 = 2112;
      v49 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Has multiple active subscriptions %@, has at least one active %@", buf, 0x16u);
    }
  }

  if (HasMultipleSubscriptionsWithAtLeastOneActive && ![(__CFString *)handleCopy length]&& [(__CFString *)dCopy length])
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v35 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy];

    phoneNumber = [v35 phoneNumber];

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v47 = phoneNumber;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Last addressed handle was nil but found it a phone number on the context so using that phone number %@", buf, 0xCu);
      }
    }
  }

  else
  {
    phoneNumber = handleCopy;
  }

  if ([(__CFString *)phoneNumber length])
  {
    relayController3 = [(IMDTelephonyServiceSession *)self relayController];
    v22 = [relayController3 isAliasActiveAndRelayCapable:phoneNumber];

    if (![(__CFString *)phoneNumber length])
    {
      goto LABEL_33;
    }

    if (v22)
    {
      goto LABEL_26;
    }
  }

  else if (![(__CFString *)phoneNumber length])
  {
    goto LABEL_33;
  }

  if (MEMORY[0x231897D30](myCTPhoneNumber, phoneNumber))
  {
LABEL_26:
    if (!IMOSLoggingEnabled())
    {
LABEL_30:
      if (chat)
      {
        *chat = 1;
      }

      v24 = phoneNumber;
      goto LABEL_77;
    }

    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = phoneNumber;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We have a last addressed alias for this chat, and its one of our active aliases, setting callerID to %@", buf, 0xCu);
    }

LABEL_29:

    goto LABEL_30;
  }

LABEL_33:
  if (!HasMultipleActiveSubscriptions)
  {
    goto LABEL_58;
  }

  if ([(__CFString *)phoneNumber length]&& [(__CFString *)phoneNumber _appearsToBePhoneNumber])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = phoneNumber;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "We have a last addressed alias for this chat with at least one subscription active, setting callerID to %@", buf, 0xCu);
    }

    goto LABEL_29;
  }

  v25 = [(__CFString *)dCopy length]== 0;
  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Neither the last-addressed simID nor phoneNumber are valid to send with", buf, 2u);
      }
    }

LABEL_58:
    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v47 = _callerIDForRelay;
          _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Updating last address handle to be %@", buf, 0xCu);
        }
      }

      if (chat)
      {
        *chat = 1;
      }
    }

    else
    {
      if (myCTPhoneNumber)
      {
        v39 = MEMORY[0x231897D30](myCTPhoneNumber, phoneNumber) ^ 1;
        if (!phoneNumber)
        {
          LOBYTE(v39) = 0;
        }

        if ((v39 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v47 = myCTPhoneNumber;
              _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Updating last address handle to be my phone number %@", buf, 0xCu);
            }
          }

          if (chat)
          {
            *chat = 1;
          }
        }

        v24 = myCTPhoneNumber;
        goto LABEL_77;
      }

      relayController4 = [(IMDTelephonyServiceSession *)self relayController];
      dominentPhoneNumberAlias = [relayController4 dominentPhoneNumberAlias];

      if (dominentPhoneNumberAlias)
      {
        relayController5 = [(IMDTelephonyServiceSession *)self relayController];
        dominentPhoneNumberAlias2 = [relayController5 dominentPhoneNumberAlias];

        goto LABEL_78;
      }
    }

    v24 = _callerIDForRelay;
LABEL_77:
    dominentPhoneNumberAlias2 = v24;
    goto LABEL_78;
  }

  chatCopy2 = chat;
  if (v26)
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v47 = phoneNumber;
      v48 = 2112;
      v49 = dCopy;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "We do not have a valid lastAddressedHandle %@ so using lastAddressedSIMID to send %@", buf, 0x16u);
    }

    chatCopy2 = chat;
  }

  if (chatCopy2)
  {
    *chatCopy2 = 1;
  }

  mEMORY[0x277D1A908]2 = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo2 = [mEMORY[0x277D1A908]2 ctSubscriptionInfo];
  v31 = [ctSubscriptionInfo2 __im_subscriptionContextForForSimID:dCopy];

  dominentPhoneNumberAlias2 = [v31 phoneNumber];

LABEL_78:

  return dominentPhoneNumberAlias2;
}

- (id)_callerIDForChatWithChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style foundChat:(id)chat
{
  styleCopy = style;
  identifierCopy = identifier;
  chatCopy = chat;
  v16 = 0;
  lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
  lastAddressedSIMID = [chatCopy lastAddressedSIMID];
  v12 = [(IMDTelephonyServiceSession *)self _resolvedCallerIDForLastAddressedLocalHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID saveResolvedCallerIDToChat:&v16];

  if (v16 == 1)
  {
    v13 = [identifierCopy length];
    if (styleCopy)
    {
      if (v13)
      {
        lastAddressedSIMID2 = [chatCopy lastAddressedSIMID];
        [(IMDTelephonyServiceSession *)self _updateLastAddressedIDsIfNeededForChatWithIdentifier:identifierCopy style:styleCopy lastAddressedHandle:v12 lastAddressedSIMID:lastAddressedSIMID2];
      }
    }
  }

  return v12;
}

- (id)createHandleInfoFor:(id)for
{
  v37 = *MEMORY[0x277D85DE8];
  forCopy = for;
  style = [forCopy style];
  v26 = style;
  v5 = IMDTelephonyServiceLogHandle(style);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    participants = [forCopy participants];
    *buf = 138412290;
    v36 = participants;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Participants: %@", buf, 0xCu);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = forCopy;
  obj = [forCopy participants];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    goto LABEL_27;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *v31;
  do
  {
    v13 = 0;
    do
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v30 + 1) + 8 * v13);
      v15 = IMDTelephonyServiceLogHandle(v7);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 ID];
        *buf = 138412290;
        v36 = v16;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "  Recipient: %@", buf, 0xCu);
      }

      if (v11)
      {
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!v10)
        {
LABEL_22:
          v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v9)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }
      }

      if (v9)
      {
        goto LABEL_13;
      }

LABEL_23:
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
LABEL_13:
      v17 = [v14 ID];
      [v11 addObject:v17];

      unformattedID = [v14 unformattedID];
      v19 = unformattedID;
      if (unformattedID)
      {
        v20 = unformattedID;
      }

      else
      {
        v20 = &stru_283F23018;
      }

      [v10 addObject:v20];

      countryCode = [v14 countryCode];
      v22 = countryCode;
      if (countryCode)
      {
        v23 = countryCode;
      }

      else
      {
        v23 = @"us";
      }

      [v9 addObject:v23];

      ++v13;
    }

    while (v8 != v13);
    v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v8 = v7;
  }

  while (v7);
LABEL_27:

  v24 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v11 unformattedIDs:v10 countryCodes:v9 isGroupChat:v26 == 43];

  return v24;
}

- (id)createHandleInfoForParticipants:(id)participants unformattedIDs:(id)ds countryCodes:(id)codes isGroupChat:(BOOL)chat
{
  participantsCopy = participants;
  dsCopy = ds;
  codesCopy = codes;
  v35 = codesCopy;
  if (chat)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([participantsCopy count])
    {
      v13 = 0;
      v34 = *MEMORY[0x277D192F8];
      v33 = *MEMORY[0x277D193A8];
      v32 = *MEMORY[0x277D193C0];
      v14 = *MEMORY[0x277D193A0];
      do
      {
        v15 = [participantsCopy objectAtIndex:v13];
        v16 = [dsCopy objectAtIndex:v13];
        v17 = [codesCopy objectAtIndex:v13];
        v18 = MEMORY[0x277CBEAC0];
        [MEMORY[0x277CCABB0] numberWithInt:2];
        v20 = v19 = dsCopy;
        v21 = [v18 dictionaryWithObjectsAndKeys:{v20, v34, v15, v33, v16, v32, v17, v14, 0}];

        dsCopy = v19;
        [v12 addObject:v21];

        codesCopy = v35;
        ++v13;
      }

      while (v13 < [participantsCopy count]);
    }
  }

  else
  {
    v22 = MEMORY[0x277CBEAC0];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v24 = *MEMORY[0x277D192F8];
    firstObject = [participantsCopy firstObject];
    v26 = *MEMORY[0x277D193A8];
    firstObject2 = [dsCopy firstObject];
    v28 = *MEMORY[0x277D193C0];
    firstObject3 = [codesCopy firstObject];
    v30 = [v22 dictionaryWithObjectsAndKeys:{v23, v24, firstObject, v26, firstObject2, v28, firstObject3, *MEMORY[0x277D193A0], 0}];

    codesCopy = v35;
    v12 = IMSingleObjectArray();
  }

  return v12;
}

- (void)sendMessage:(id)message toChat:(id)chat style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  v53 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  v48 = styleCopy;
  accountCopy = account;
  if (![(IMDTelephonyServiceSession *)self _shouldFailSMSMessageForTesting:messageCopy chatIdentifier:chatCopy chatStyle:styleCopy])
  {
    v46 = chatCopy;
    [(IMDServiceSession *)self canonicalizeChatIdentifier:&v46 style:&v48];
    v13 = v46;

    if (!v13)
    {
      chatCopy = 0;
      goto LABEL_23;
    }

    v14 = [(IMDTelephonyServiceSession *)self _chatForSendingMessageItem:messageCopy chatIdentifier:v13 chatStyle:v48];
    if (![(IMDTelephonyServiceSession *)self allowedToSendMessage:messageCopy toChat:v14])
    {
      v45.receiver = self;
      v45.super_class = IMDTelephonyServiceSession;
      [(IMDServiceSession *)&v45 sendMessage:messageCopy toChat:v13 style:v48 account:accountCopy];
      [(IMDServiceSession *)self didSendMessage:messageCopy forChat:v13 style:v48];
LABEL_22:

      chatCopy = v13;
      goto LABEL_23;
    }

    [(IMDServiceSession *)self _configureSessionInformationOnItem:messageCopy toChat:v13 withStyle:v48 forAccount:accountCopy];
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        criticalMessagingAppName = [messageCopy criticalMessagingAppName];
        *buf = 138413058;
        *&buf[4] = guid;
        *&buf[12] = 2112;
        *&buf[14] = v13;
        *&buf[22] = 2112;
        v50 = criticalMessagingAppName;
        v51 = 2112;
        v52 = v14;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "send message guid: %@  to identifier: %@  critical app name: %@   chat: %@", buf, 0x2Au);
      }
    }

    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A218]];

    v32 = [(IMDTelephonyServiceSession *)self _callerIDForChatWithChatIdentifier:v13 chatStyle:v48 foundChat:v14];
    [messageCopy setDestinationCallerID:v32];
    v31 = [(IMDTelephonyServiceSession *)self compatibleMessageToSendForMessageItem:messageCopy];
    lastAddressedLocalHandle = [v14 lastAddressedLocalHandle];
    lastAddressedSIMID = [v14 lastAddressedSIMID];
    v21 = [(IMDTelephonyServiceSession *)self _sendingDecisionForMessageItem:v31 callerID:v32 lastAddressedLocalHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID];

    if ((v21 & 3) != 0)
    {
      v22 = v48;
      lastReplicationSinceLoadDate = [v14 lastReplicationSinceLoadDate];
      v24 = [(IMDTelephonyServiceSession *)self replicateMessage:messageCopy chatIdentifier:v13 chatStyle:v22 lastKnownReplicationDate:lastReplicationSinceLoadDate callerID:v32];

      if (v24)
      {
        v25 = [MEMORY[0x277CBEAA8] now];
        [v14 setLastReplicationSinceLoadDate:v25];
      }

      v26 = IMGetCachedDomainBoolForKey();
      mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
      isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

      if ((isInternalInstall & v26) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "** Skipping true SMS send, DisableNonReplicationSMSSend is set", buf, 2u);
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v50) = [v31 useStandalone];
    v30 = v48;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_22B551A54;
    v33[3] = &unk_2787041D0;
    v33[4] = self;
    v39 = buf;
    v34 = v31;
    v35 = v32;
    v40 = v21;
    v36 = v14;
    v41 = 0;
    v37 = v13;
    v42 = v48;
    v38 = accountCopy;
    v43 = v24;
    v44 = 0;
    [(IMDTelephonyServiceSession *)self processMessageForSending:v34 toChat:v37 style:v30 allowWatchdog:1 completionBlock:v33];

    _Block_object_dispose(buf, 8);
LABEL_21:

    messageCopy = v31;
    goto LABEL_22;
  }

  v47.receiver = self;
  v47.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v47 sendMessage:messageCopy toChat:chatCopy style:styleCopy account:accountCopy];
LABEL_23:
}

- (void)processMessageForSending:(id)sending toChat:(id)chat style:(unsigned __int8)style allowWatchdog:(BOOL)watchdog completionBlock:(id)block
{
  watchdogCopy = watchdog;
  styleCopy = style;
  sendingCopy = sending;
  chatCopy = chat;
  blockCopy = block;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B55216C;
  v19[3] = &unk_2787041F8;
  v19[4] = self;
  v20 = chatCopy;
  v23 = styleCopy;
  v21 = sendingCopy;
  v22 = blockCopy;
  v18.receiver = self;
  v18.super_class = IMDTelephonyServiceSession;
  v15 = blockCopy;
  v16 = sendingCopy;
  v17 = chatCopy;
  [(IMDServiceSession *)&v18 processMessageForSending:v16 toChat:v17 style:styleCopy allowWatchdog:watchdogCopy completionBlock:v19];
}

- (void)setServiceCompatibleContentOn:(id)on forChat:(id)chat style:(unsigned __int8)style from:(id)from completionBlock:(id)block
{
  styleCopy = style;
  v71 = *MEMORY[0x277D85DE8];
  onCopy = on;
  chatCopy = chat;
  fromCopy = from;
  blockCopy = block;
  v43 = onCopy;
  balloonBundleID = [onCopy balloonBundleID];
  payloadData = [onCopy payloadData];
  if ([balloonBundleID length] && objc_msgSend(payloadData, "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "We have a 3rd party message and need to transcode the payload data", buf, 2u);
      }
    }

    fileTransferGUIDs = [fromCopy fileTransferGUIDs];
    obj = [fileTransferGUIDs __imArrayByApplyingBlock:&unk_283F19AE8];

    mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_22B552874;
    v64[3] = &unk_278704240;
    v65 = balloonBundleID;
    v66 = onCopy;
    v67 = blockCopy;
    [mEMORY[0x277D1ADE0] transcodeFallbackFileTransferPayloadData:payloadData balloonBundleID:v65 attachments:obj completionBlock:v64];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "We have transfers for this message and this is not a 3rd party message, so let's try and transcode them", buf, 2u);
      }
    }

    obj = objc_alloc_init(MEMORY[0x277CBEB18]);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    fileTransferGUIDs2 = [fromCopy fileTransferGUIDs];
    v17 = [fileTransferGUIDs2 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v17)
    {
      v18 = *v61;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(fileTransferGUIDs2);
          }

          v20 = *(*(&v60 + 1) + 8 * i);
          v21 = +[IMDFileTransferCenter sharedInstance];
          v22 = [v21 transferForGUID:v20];

          if ([v22 isAutoloopVideo])
          {
            [obj addObject:v22];
          }
        }

        v17 = [fileTransferGUIDs2 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v17);
    }

    if ([obj count])
    {
      fileTransferGUIDs3 = [fromCopy fileTransferGUIDs];
      v24 = [fileTransferGUIDs3 count];

      v37 = [(IMDServiceSession *)self chatForChatIdentifier:chatCopy style:styleCopy updatingAccount:1];
      v25 = [(IMDServiceSession *)self maxSizePerAttachmentWithCount:v24 forChat:v37];
      v26 = dispatch_group_create();
      v27 = objc_alloc_init(MEMORY[0x277CCA9E8]);
      v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(obj, "count")}];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = obj;
      v29 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
      if (v29)
      {
        v30 = *v57;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v57 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v56 + 1) + 8 * j);
            dispatch_group_enter(v26);
            localURL = [v32 localURL];
            v54 = v25;
            v55 = 0;
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = sub_22B552AFC;
            v51[3] = &unk_278704290;
            v51[4] = v32;
            v51[5] = self;
            v52 = v28;
            v34 = v26;
            v53 = v34;
            [v27 coordinateReadingItemAtURL:localURL options:0 error:&v55 byAccessor:v51];
            v35 = v55;

            if (v35)
            {
              dispatch_group_leave(v34);
            }
          }

          v29 = [obj countByEnumeratingWithState:&v56 objects:v69 count:16];
        }

        while (v29);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B552E48;
      block[3] = &unk_278702F50;
      v47 = fromCopy;
      v48 = v28;
      v49 = v43;
      v50 = blockCopy;
      v36 = v28;
      dispatch_group_notify(v26, MEMORY[0x277D85CD0], block);
    }

    else
    {
      (*(blockCopy + 2))(blockCopy, v43);
    }
  }
}

- (void)_updateCategoryForChat:(id)chat andMessage:(id)message category:(int64_t)category subCategory:(int64_t)subCategory spamExtensionName:(id)name
{
  v22 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  messageCopy = message;
  nameCopy = name;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      v16 = 138412802;
      v17 = guid;
      v18 = 2048;
      categoryCopy = category;
      v20 = 2048;
      subCategoryCopy = subCategory;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Updating chat %@ category %ld subCategory @%ld", &v16, 0x20u);
    }
  }

  [chatCopy updateSMSCategory:category subCategory:subCategory];
  [chatCopy updateSMSSpamExtensionNameChatProperty:nameCopy];
}

- (void)_resetAndBroadcastBlackholeErrorStateIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  styleCopy = style;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 allExistingChatsWithIdentifier:identifierCopy style:styleCopy];

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
        if ([v13 receivedBlackholeError])
        {
          [v13 updateReceivedBlackholeError:0];
          v14 = +[IMDChatStore sharedInstance];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_22B5533C0;
          v15[3] = &unk_2787042B8;
          v15[4] = self;
          [v14 remapMessageError:43 toError:0 forChat:v13 completion:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

- (BOOL)_disableScreenTimeRestrictionsForMessageItem:(id)item chat:(id)chat watchSendsOverCellular:(BOOL)cellular emergencyNumbersFoundInRecipients:(int64_t *)recipients
{
  if (recipients)
  {
    *recipients = 0;
  }

  return 0;
}

- (int64_t)_iMessageCapabilityForSIMID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  registeredSIMIDs = [mEMORY[0x277D1A908] registeredSIMIDs];

  v6 = [registeredSIMIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = 1;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(registeredSIMIDs);
      }

      if ([dCopy isEqualToString:*(*(&v12 + 1) + 8 * v10)])
      {
        break;
      }

      if (v7 == ++v10)
      {
        v7 = [registeredSIMIDs countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 2;
  }

  return v9;
}

- (void)_relayMessage:(id)message chat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication forceReflection:(BOOL)reflection relayToWatchOnly:(BOOL)only shouldDisableScreenTimeRestrictions:(BOOL)restrictions callerID:(id)self0
{
  v68 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  chatCopy = chat;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if ([mEMORY[0x277D1A9B8] isRelayChatBotEnabled])
  {
  }

  else
  {
    isChatBot = [chatCopy isChatBot];

    if (isChatBot)
    {
      goto LABEL_25;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "We have peer devices, relaying message...", buf, 2u);
    }
  }

  lastAddressedSIMID = [chatCopy lastAddressedSIMID];
  v46 = [(IMDTelephonyServiceSession *)self _iMessageCapabilityForSIMID:lastAddressedSIMID];

  balloonBundleID = [messageCopy balloonBundleID];
  v21 = [balloonBundleID isEqualToString:*MEMORY[0x277D19730]];

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v23 = [fileTransferGUIDs count] == 0;

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  if (![mEMORY[0x277D1A9B8]2 isRelayChatBotEnabled])
  {

    goto LABEL_12;
  }

  isChatBot2 = [chatCopy isChatBot];

  if (!isChatBot2)
  {
LABEL_12:
    v51 = 0;
    goto LABEL_13;
  }

  v51 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188F0]];
LABEL_13:
  v26 = IMOSLoggingEnabled();
  if ((v23 | v21))
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        guid = [messageCopy guid];
        *buf = 138412290;
        v67 = guid;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "No attachments or rich links, relaying message with guid %@", buf, 0xCu);
      }
    }

    v29 = v52;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_22B554000;
    v52[3] = &unk_2787042E0;
    v52[4] = self;
    v52[5] = messageCopy;
    v30 = chatCopy;
    v52[6] = v30;
    sCopy = s;
    replicationCopy = replication;
    reflectionCopy = reflection;
    onlyCopy = only;
    restrictionsCopy = restrictions;
    v52[7] = dCopy;
    v52[8] = v51;
    v52[9] = v46;
    v31 = v51;
    [(IMDTelephonyServiceSession *)self waitForChatRelayReadiness:v30 withBlock:v52];
  }

  else
  {
    if (v26)
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        guid2 = [messageCopy guid];
        *buf = 138412290;
        v67 = guid2;
        _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Message with Guid %@ contains attachments, uploading to MMCS", buf, 0xCu);
      }
    }

    attachmentController = [(IMDTelephonyServiceSession *)self attachmentController];
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    lastAddressedSIMID2 = [chatCopy lastAddressedSIMID];
    v29 = v60;
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_22B553BF4;
    v60[3] = &unk_278704308;
    v60[4] = self;
    v60[5] = chatCopy;
    v37 = messageCopy;
    onlyCopy2 = only;
    v39 = messageCopy;
    selfCopy = self;
    v41 = dCopy;
    v42 = v37;
    v60[6] = v37;
    sCopy2 = s;
    replicationCopy2 = replication;
    reflectionCopy2 = reflection;
    v64 = onlyCopy2;
    restrictionsCopy2 = restrictions;
    v60[7] = v41;
    v60[8] = v51;
    v60[9] = v47;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = sub_22B553EE8;
    v58[3] = &unk_278704330;
    v58[4] = selfCopy;
    messageCopy = v39;
    v43 = v42;
    dCopy = v41;
    v44 = v43;
    v59 = v43;
    v45 = v51;
    [attachmentController processAttachmentsForPeerRelayForMessage:v44 lastAddressHandle:lastAddressedLocalHandle lastAddressedSIMID:lastAddressedSIMID2 completionBlock:v60 uploadFailureBlock:v58];
  }

LABEL_25:
}

- (void)_setTimeoutTimerForRelayMessageID:(id)d timeout:(double)timeout
{
  dCopy = d;
  if (timeout <= 1.0)
  {
    timeout = 180.0;
  }

  v10 = dCopy;
  if ([dCopy length])
  {
    [(IMDTelephonyServiceSession *)self _clearTimoutTimerForRelayMessageID:v10];
    if (!self->_outgoingRelayMessageTimerMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      outgoingRelayMessageTimerMap = self->_outgoingRelayMessageTimerMap;
      self->_outgoingRelayMessageTimerMap = Mutable;
    }

    v9 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__messageTimedOut_ selector:v10 userInfo:0 repeats:timeout];
    if (v9)
    {
      [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap setObject:v9 forKey:v10];
    }
  }
}

- (void)_clearTimoutTimerForRelayMessageID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v4 = [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap objectForKey:dCopy];
    if (v4)
    {
      [(NSMutableDictionary *)self->_outgoingRelayMessageTimerMap removeObjectForKey:dCopy];
      [v4 invalidate];
    }
  }
}

- (void)_addOriginatedMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " Adding Message with GUID: %@ to originated Message Map", &v9, 0xCu);
      }
    }

    originatedMessages = self->_originatedMessages;
    if (!originatedMessages)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = self->_originatedMessages;
      self->_originatedMessages = v7;

      originatedMessages = self->_originatedMessages;
    }

    [(NSMutableSet *)originatedMessages addObject:messageCopy];
    [(IMDTelephonyServiceSession *)self _setClearMessageSendTimer];
  }
}

- (void)_removeOriginatedMessage:(id)message
{
  v8 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if ([messageCopy length])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 138412290;
        v7 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, " Removing Message with GUID: %@ from originated Message Map", &v6, 0xCu);
      }
    }

    [(NSMutableSet *)self->_originatedMessages removeObject:messageCopy];
    if (![(NSMutableSet *)self->_originatedMessages count])
    {
      [(IMDTelephonyServiceSession *)self _clearInactivityTimer];
    }
  }
}

- (void)_clearInactivityTimer
{
  self->_pendingOriginatedMessagesTimer = 0;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__clearInactivityTimer object:0];
  originatedMessages = self->_originatedMessages;
  self->_originatedMessages = 0;
}

- (void)_setClearMessageSendTimer
{
  if (!self->_pendingOriginatedMessagesTimer)
  {
    self->_pendingOriginatedMessagesTimer = 1;
    [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__clearInactivityTimer object:0];

    [(IMDTelephonyServiceSession *)self performSelector:sel__clearInactivityTimer withObject:0 afterDelay:30.0];
  }
}

- (void)_enqueueBlock:(id)block withTimeout:(double)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      accountID = [(IMDServiceSession *)self accountID];
      v13 = 138412546;
      v14 = accountID;
      v15 = 2048;
      timeoutCopy = timeout;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, " Enqueued item for key: %@    timeout: %f", &v13, 0x16u);
    }
  }

  incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  if (!incomingMessageMultiQueue)
  {
    v10 = objc_alloc_init(MEMORY[0x277D19278]);
    v11 = self->_incomingMessageMultiQueue;
    self->_incomingMessageMultiQueue = v10;

    incomingMessageMultiQueue = self->_incomingMessageMultiQueue;
  }

  accountID2 = [(IMDServiceSession *)self accountID];
  [(IMMultiQueue *)incomingMessageMultiQueue addBlock:blockCopy withTimeout:accountID2 forKey:0 description:timeout];
}

- (unint64_t)maxRecipientsForPhoneNumber:(id)number simID:(id)d
{
  numberCopy = number;
  dCopy = d;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Subclass failed to override participant check", v9, 2u);
    }
  }

  return 0;
}

- (id)subscriptionContextForChat:(id)chat
{
  v44 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
  lastAddressedSIMID = [chatCopy lastAddressedSIMID];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      guid = [chatCopy guid];
      *buf = 138412802;
      v39 = guid;
      v40 = 2112;
      v41 = lastAddressedLocalHandle;
      v42 = 2112;
      v43 = lastAddressedSIMID;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Not first chat (%@): lastAddressedLocalHandle %@ lastAddressedSIMID %@", buf, 0x20u);
    }
  }

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];

  subscriptions = [ctSubscriptionInfo subscriptions];
  v11 = [subscriptions count] == 1;

  if (v11)
  {
    subscriptions2 = [ctSubscriptionInfo subscriptions];
    firstObject = [subscriptions2 firstObject];

    if (firstObject)
    {
      goto LABEL_21;
    }
  }

  else
  {
    firstObject = [ctSubscriptionInfo __im_subscriptionContextForForSimID:lastAddressedSIMID phoneNumber:lastAddressedLocalHandle];
    if (firstObject)
    {
      goto LABEL_21;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      guid2 = [chatCopy guid];
      *buf = 138412802;
      v39 = lastAddressedLocalHandle;
      v40 = 2112;
      v41 = lastAddressedSIMID;
      v42 = 2112;
      v43 = guid2;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Could not find a subscription context to send with based on lastAddressedHandle %@ lastAddressedSIMID %@ so finding context preferred subscription for chat %@", buf, 0x20u);
    }
  }

  v16 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  participants = [chatCopy participants];
  v18 = [participants countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(participants);
        }

        v21 = [*(*(&v33 + 1) + 8 * i) ID];
        [v16 addObject:v21];
      }

      v18 = [participants countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  firstObject = [ctSubscriptionInfo __im_contactPreferredSubscriptionContextForChatHandleIDs:v16];

  if (firstObject)
  {
LABEL_21:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v39 = firstObject;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Setting the context for context %@ and updating lastAddressed if needed", buf, 0xCu);
      }
    }

    phoneNumber = [firstObject phoneNumber];
    if (MEMORY[0x231897D30](lastAddressedLocalHandle, phoneNumber))
    {
      labelID = [firstObject labelID];
      v25 = [lastAddressedSIMID isEqualToString:labelID];

      if (v25)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    chatIdentifier = [chatCopy chatIdentifier];
    style = [chatCopy style];
    phoneNumber2 = [firstObject phoneNumber];
    labelID2 = [firstObject labelID];
    [(IMDTelephonyServiceSession *)self _updateLastAddressedIDsIfNeededForChatWithIdentifier:chatIdentifier style:style lastAddressedHandle:phoneNumber2 lastAddressedSIMID:labelID2];

    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v31 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Could not find a subscription context to send with based on contact preferred subscription in context so failing message", buf, 2u);
    }
  }

  firstObject = 0;
LABEL_30:

  return firstObject;
}

- (void)_updateShouldForceToSMSForChatWithIdentifier:(id)identifier style:(unsigned __int8)style shouldForceToSMS:(BOOL)s
{
  sCopy = s;
  styleCopy = style;
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = +[IMDChatRegistry sharedInstance];
  v9 = [v8 allExistingSupportedServiceChatsWithIdentifier:identifierCopy style:styleCopy];

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      *buf = 138412802;
      v22 = identifierCopy;
      if (sCopy)
      {
        v11 = @"YES";
      }

      v23 = 1024;
      v24 = styleCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Checking if chats with chatIdentifier %@ and style %hhu need to have shouldForceToSMS updated to %@.", buf, 0x1Cu);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v16 + 1) + 8 * v15++) updateShouldForceToSMS:{sCopy, v16}];
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)_finishSendingMessageItem:(id)item chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style foundChat:(id)chat didSendSMS:(BOOL)s attemptingReplication:(BOOL)replication shouldForceFail:(BOOL)fail watchSendsOverCellular:(BOOL)self0 forceReflection:(BOOL)self1 forceRelay:(BOOL)self2 callerID:(id)self3
{
  replicationCopy = replication;
  sCopy = s;
  styleCopy = style;
  v77 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  identifierCopy = identifier;
  chatCopy = chat;
  dCopy = d;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v18 = +[IMDChatRegistry sharedInstance];
  v19 = [v18 allExistingSupportedServiceChatsWithIdentifier:identifierCopy style:styleCopy];

  v20 = [v19 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v20)
  {
    v21 = *v65;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v64 + 1) + 8 * i);
        guid = [itemCopy guid];
        [v23 updateLastSeenMessageGuidIfNeeded:guid];
      }

      v20 = [v19 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v20);
  }

  if (([MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled] & sCopy) == 1)
  {
    [(IMDTelephonyServiceSession *)self _resetAndBroadcastBlackholeErrorStateIfNeededForChatIdentifier:identifierCopy chatStyle:styleCopy];
  }

  v63 = 0;
  v55 = [(IMDTelephonyServiceSession *)self _disableScreenTimeRestrictionsForMessageItem:itemCopy chat:chatCopy watchSendsOverCellular:cellular emergencyNumbersFoundInRecipients:&v63];
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  hasPeerDevices = [relayController hasPeerDevices];

  IsAltAccount = IMSharedHelperDeviceIsAltAccount();
  relayController2 = [(IMDTelephonyServiceSession *)self relayController];
  watchConnectedOverBT = [relayController2 watchConnectedOverBT];

  v29 = v63;
  v30 = [(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:chatCopy];
  criticalMessagingAppName = [itemCopy criticalMessagingAppName];
  v32 = [criticalMessagingAppName length];

  isMessagesTheDefaultTextApp = [MEMORY[0x277D1A8F8] isMessagesTheDefaultTextApp];
  if (relay || (v37 = isMessagesTheDefaultTextApp, !((fail || (hasPeerDevices & 1) == 0) | IsAltAccount & 1)) && (v63 == 0) | watchConnectedOverBT & 1 && !v30 && (v32 == 0) | isMessagesTheDefaultTextApp & 1)
  {
    if (sCopy && (-[IMDTelephonyServiceSession relayEnrollmentController](self, "relayEnrollmentController"), v34 = objc_claimAutoreleasedReturnValue(), [v34 _allowedDevicesforSMSRelay], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "count") == 0, v35, v34, v36))
    {
      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "None of our peer devices are on the allowed list, Not relaying message", buf, 2u);
        }
      }

      v48 = +[IMDAccountController sharedInstance];
      accountID = [itemCopy accountID];
      v50 = [v48 accountForAccountID:accountID];
      v51 = v50;
      if (v50)
      {
        account = v50;
      }

      else
      {
        account = [(IMDServiceSession *)self account];
      }

      v53 = account;

      v62.receiver = self;
      v62.super_class = IMDTelephonyServiceSession;
      [(IMDServiceSession *)&v62 sendMessage:itemCopy toChat:identifierCopy style:styleCopy account:v53];
    }

    else
    {
      LOBYTE(v54) = v55;
      [(IMDTelephonyServiceSession *)self _relayMessage:itemCopy chat:chatCopy didSendSMS:sCopy attemptingReplication:replicationCopy forceReflection:reflection relayToWatchOnly:v29 > 0 shouldDisableScreenTimeRestrictions:v54 callerID:dCopy];
    }
  }

  else
  {
    HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
    v39 = IMOSLoggingEnabled();
    if ((HasMultipleSubscriptions & fail) != 0)
    {
      if (v39)
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          guid2 = [itemCopy guid];
          *buf = 138412290;
          v69 = guid2;
          _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "SMS was not sent out and message was force failed so that user can pick correct subscription to send with %@", buf, 0xCu);
        }
      }

LABEL_38:
      guid3 = [itemCopy guid];
      [(IMDServiceSession *)self didReceiveError:4 forMessageID:guid3 forceError:1];

      goto LABEL_47;
    }

    if (v39)
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = @"NO";
        if (hasPeerDevices)
        {
          v44 = @"YES";
        }

        else
        {
          v44 = @"NO";
        }

        *buf = 138413058;
        v69 = v44;
        if (v32)
        {
          v45 = @"YES";
        }

        else
        {
          v45 = @"NO";
        }

        v70 = 2048;
        v71 = v63;
        if (v37)
        {
          v43 = @"YES";
        }

        v72 = 2112;
        v73 = v45;
        v74 = 2112;
        v75 = v43;
        _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "We have no peer devices %@, or this message had emergency number(s) %lu, or this was a critical message (%@) and we are not the default app (%@): not relaying message", buf, 0x2Au);
      }
    }

    if (!sCopy)
    {
      goto LABEL_38;
    }
  }

LABEL_47:
}

- (void)sendDeleteCommand:(id)command forChatGUID:(id)d
{
  commandCopy = command;
  dCopy = d;
  chatRegistry = [(IMDTelephonyServiceSession *)self chatRegistry];
  v8 = [chatRegistry existingChatWithGUID:dCopy];

  if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v8])
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController sendDeleteCommand:commandCopy forChatGUID:dCopy];
  }
}

- (void)sendRecoverCommand:(id)command forChatGUID:(id)d
{
  commandCopy = command;
  dCopy = d;
  chatRegistry = [(IMDTelephonyServiceSession *)self chatRegistry];
  v8 = [chatRegistry existingChatWithGUID:dCopy];

  if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v8])
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController sendRecoverCommand:commandCopy forChatGUID:dCopy];
  }
}

- (id)_resolveHandlesFor:(id)for withMessage:(id)message
{
  forCopy = for;
  messageCopy = message;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_22B4D7660;
  v17 = sub_22B4D7888;
  v18 = 0;
  v8 = +[IMDMessageStore sharedInstance];
  service = [(IMDServiceSession *)self service];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B5556DC;
  v12[3] = &unk_2787031A0;
  v12[4] = &v13;
  [v8 resolveUnformattedRepresentationsForHandles:forCopy onService:service message:messageCopy completionBlock:v12];

  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

- (BOOL)isGroupMessagingEnabledFor:(id)for
{
  v3 = MEMORY[0x277D1A8F8];
  forCopy = for;
  lastAddressedLocalHandle = [forCopy lastAddressedLocalHandle];
  lastAddressedSIMID = [forCopy lastAddressedSIMID];

  LOBYTE(v3) = [v3 IMMMSGroupTextOnlyMessagesSendAsMMSForPhoneNumber:lastAddressedLocalHandle simID:lastAddressedSIMID];
  return v3;
}

- (int64_t)maxSizePerAttachmentWithCount:(int)count lastAddressHandle:(id)handle lastAddressedSIMID:(id)d
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  dCopy = d;
  v9 = ([MEMORY[0x277D1A8F8] IMMMSMaximumMessageByteCountForPhoneNumber:handleCopy simID:dCopy] * 0.92);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = 134217984;
      *v15 = v9;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "   Maximum byte length for attachments is: %lld", &v14, 0xCu);
    }
  }

  v11 = v9 / count;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = 67109376;
      v15[0] = count;
      LOWORD(v15[1]) = 2048;
      *(&v15[1] + 2) = v11;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "     Part byte length for %d attachments will be: %lld", &v14, 0x12u);
    }
  }

  return v11;
}

- (void)sendMessageFromIMMessageItem:(id)item forChat:(id)chat chat:(id)a5 style:(unsigned __int8)style
{
  styleCopy = style;
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  chatCopy = chat;
  v12 = a5;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Message sending...", buf, 2u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      participants = [v12 participants];
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = participants;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Looking at participants for chat %@ participants %@", buf, 0x16u);
    }
  }

  participants2 = [v12 participants];
  v17 = [(IMDTelephonyServiceSession *)self _resolveHandlesFor:participants2 withMessage:itemCopy];

  v18 = [(IMDTelephonyServiceSession *)self makeSenderFor:itemCopy forChat:v12 chatStyle:styleCopy recipients:v17];
  v19 = v18;
  if (v18)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_22B555BF8;
    v21[3] = &unk_2787043A0;
    v22 = v18;
    selfCopy = self;
    v24 = chatCopy;
    v25 = styleCopy;
    [v22 prepareWithCompletion:v21];
  }

  else if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Unable to create Message Sender, can't send", buf, 2u);
    }
  }
}

- (BOOL)_canSendWithCallerID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (IMSharedHelperDeviceHasMultipleActiveSubscriptions())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v6 = [ctSubscriptionInfo __im_containsPhoneNumber:dCopy];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"NO";
        if (v6)
        {
          v8 = @"YES";
        }

        v11 = 138412290;
        v12 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Should send if caller ID is part of the subscription context: %@", &v11, 0xCu);
      }
    }
  }

  else
  {
    myCTPhoneNumber = [MEMORY[0x277D1A8F8] myCTPhoneNumber];
    LOBYTE(v6) = MEMORY[0x231897D30](myCTPhoneNumber, dCopy);
  }

  return v6;
}

- (unint64_t)_sendingDecisionForMessageItem:(id)item callerID:(id)d lastAddressedLocalHandle:(id)handle lastAddressedSIMID:(id)iD
{
  itemCopy = item;
  dCopy = d;
  handleCopy = handle;
  iDCopy = iD;
  isMessagesTheDefaultTextApp = [MEMORY[0x277D1A8F8] isMessagesTheDefaultTextApp];
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  _localDeviceSupportsEmergencySMS = [relayController _localDeviceSupportsEmergencySMS];

  if (itemCopy)
  {
    mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
    handle = [itemCopy handle];
    v18 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:handle];
  }

  else
  {
    v18 = 0;
  }

  v19 = _localDeviceSupportsEmergencySMS & v18;
  criticalMessagingAppName = [itemCopy criticalMessagingAppName];
  v21 = [criticalMessagingAppName length];

  if (v19 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v23 = "IsEmergency and canSendSMS: Sending Message via CT";
LABEL_21:
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, v23, buf, 2u);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  relayController2 = [(IMDTelephonyServiceSession *)self relayController];
  _localDeviceSupportsSMS = [relayController2 _localDeviceSupportsSMS];
  if (v21)
  {
    v26 = 1;
  }

  else
  {
    v26 = isMessagesTheDefaultTextApp;
  }

  v27 = _localDeviceSupportsSMS & v26;

  v28 = [(IMDTelephonyServiceSession *)self _canSendWithCallerID:dCopy];
  if ([dCopy length])
  {
    _appearsToBePhoneNumber = [dCopy _appearsToBePhoneNumber];
  }

  else
  {
    _appearsToBePhoneNumber = 0;
  }

  relayController3 = [(IMDTelephonyServiceSession *)self relayController];
  v31 = [relayController3 _localDeviceSupportsSMSAndDoesNotHaveAPhoneNumberForSIMID:iDCopy];

  if ([handleCopy length])
  {
    relayController4 = [(IMDTelephonyServiceSession *)self relayController];
    v33 = [relayController4 isAliasActiveAndRelayCapable:handleCopy];
  }

  else
  {
    v33 = 0;
  }

  if ((v28 & _appearsToBePhoneNumber & v27) == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v23 = "My Caller ID & Phone Number are the same, I am SMS Capable, My callerID is a phone number: Sending Message via CT";
        goto LABEL_21;
      }

LABEL_22:
    }

LABEL_23:
    v34 = 1;
    goto LABEL_24;
  }

  if ((v26 & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
LABEL_36:
      v34 = 8;
      goto LABEL_24;
    }

    v36 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
LABEL_35:

      goto LABEL_36;
    }

    *buf = 0;
    v37 = "Messages is not the default text app, failing to send non-critical message";
LABEL_34:
    _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, v37, buf, 2u);
    goto LABEL_35;
  }

  if (IMSharedHelperDeviceHasMultipleSubscriptions() && [itemCopy useStandalone])
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v23 = "Subscription on chat cannot be found in active subscriptions but message must be sent because it is an SOS message.";
    goto LABEL_21;
  }

  if ((v31 & v26) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "I do not have a phone number, however I am sms capable: Sending Message via CT", buf, 2u);
      }
    }

    [itemCopy setDestinationCallerID:iDCopy];
    v34 = 5;
    goto LABEL_24;
  }

  if (((_appearsToBePhoneNumber | v27 ^ 1) & 1) == 0 && (IMSharedHelperDeviceHasMultipleActiveSubscriptions() & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_23;
    }

    v22 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v23 = "My CallerID is not set to phone number However I am SMS Capable: Sending Message via CT";
    goto LABEL_21;
  }

  v39 = v28 | ~(IMSharedHelperDeviceHasMultipleActiveSubscriptions() & v27) | v33;
  v40 = IMOSLoggingEnabled();
  if ((v39 & 1) == 0)
  {
    if (!v40)
    {
      goto LABEL_36;
    }

    v36 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v37 = "My device is capable of sending SMS but is not on correct subscription. Failing message";
    goto LABEL_34;
  }

  if (v40)
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, ": Calling Did Send Message, Another device will relay this message for me", buf, 2u);
    }
  }

  v34 = 2;
LABEL_24:

  return v34;
}

- (void)_messageTimedOut:(id)out
{
  v17 = *MEMORY[0x277D85DE8];
  outCopy = out;
  userInfo = [outCopy userInfo];
  v6 = +[IMDMessageStore sharedInstance];
  v7 = [v6 messageWithGUID:userInfo];

  if (![v7 isSent])
  {
    goto LABEL_4;
  }

  service = [v7 service];
  service2 = [(IMDServiceSession *)self service];
  internalName = [service2 internalName];
  if ([service isEqualToString:internalName])
  {
    wasDowngraded = [v7 wasDowngraded];

    if (!wasDowngraded)
    {
LABEL_4:
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = userInfo;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed to send relay message ID guid (timed out): %@", &v15, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = userInfo;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Error sending message: %@ SMS Relay timed out", &v15, 0xCu);
        }
      }

      if (userInfo)
      {
        [(IMDServiceSession *)self didReceiveError:4 forMessageID:userInfo forceError:1];
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D21DC(v14);
  }

LABEL_18:
}

- (void)joinChat:(id)chat handleInfo:(id)info style:(unsigned __int8)style groupID:(id)d lastAddressedHandle:(id)handle lastAddressedSIMID:(id)iD joinProperties:(id)properties
{
  styleCopy = style;
  v32 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  infoCopy = info;
  dCopy = d;
  handleCopy = handle;
  iDCopy = iD;
  propertiesCopy = properties;
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138413314;
      v23 = chatCopy;
      v24 = 1024;
      v25 = styleCopy;
      v26 = 2112;
      v27 = infoCopy;
      v28 = 2112;
      v29 = handleCopy;
      v30 = 2112;
      v31 = iDCopy;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Request to join chat: %@  style: %c handleInfo: %@ lastAddressedHandle %@ lastAddressedSIMID %@", buf, 0x30u);
    }
  }

  [(IMDServiceSession *)self didJoinChat:chatCopy style:styleCopy displayName:0 groupID:dCopy lastAddressedHandle:handleCopy lastAddressedSIMID:iDCopy handleInfo:infoCopy];
}

- (IMDRelayEnrollmentController)relayEnrollmentController
{
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  enrollmentController = [relayController enrollmentController];

  return enrollmentController;
}

- (void)enrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [relayEnrollmentController enrollDeviceInSMSRelay:relayCopy];
}

- (void)unEnrollDeviceInSMSRelay:(id)relay
{
  relayCopy = relay;
  relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [relayEnrollmentController unEnrollDeviceInSMSRelay:relayCopy];
}

- (void)enrollSelfDeviceInSMSRelay
{
  relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
  [relayEnrollmentController enrollSelfDeviceInSMSRelay];
}

- (void)processMessageSendFailure:(id)failure
{
  failureCopy = failure;
  if ([failureCopy length])
  {
    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController messageFailedToSend:failureCopy];
  }
}

- (void)didReceiveDisplayNameChange:(id)change guid:(id)guid fromID:(id)d toIdentifier:(id)identifier forChat:(id)chat style:(unsigned __int8)style account:(id)account shouldRelay:(BOOL)self0
{
  styleCopy = style;
  changeCopy = change;
  guidCopy = guid;
  dCopy = d;
  identifierCopy = identifier;
  chatCopy = chat;
  accountCopy = account;
  v45.receiver = self;
  v45.super_class = IMDTelephonyServiceSession;
  v44 = changeCopy;
  [(IMDServiceSession *)&v45 didReceiveDisplayNameChange:changeCopy guid:guidCopy fromID:dCopy toIdentifier:identifierCopy forChat:chatCopy style:styleCopy account:accountCopy];
  service = [(IMDServiceSession *)self service];
  v23 = [service supportsCapability:*MEMORY[0x277D1A560]];

  if (v23)
  {
    v24 = !relay;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && [identifierCopy length])
  {
    v25 = [(IMDServiceSession *)self chatForChatIdentifier:chatCopy style:styleCopy updatingAccount:1];
    groupID = [v25 groupID];
    originalGroupID = [v25 originalGroupID];
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

    v42 = v25;
    if (isMissingMessagesEnabled)
    {
      service2 = [accountCopy service];
      internalName = [service2 internalName];
      v30 = IMChatLookupDomainForServiceName();

      if (v30)
      {
        v31 = [v25 latestIdentifierForDomain:v30];
        v32 = v31;
        if (v31)
        {
          v33 = originalGroupID;
          originalGroupID = v31;
        }

        else
        {
          v33 = IMLogHandleForCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_22B7D2220(v30, v33);
          }
        }
      }
    }

    v34 = [IMDRelayGroupDisplayNameMutationMessage alloc];
    service3 = [(IMDServiceSession *)self service];
    internalName2 = [service3 internalName];
    v37 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:guidCopy];
    LOWORD(v40) = 0;
    v38 = [(IMDRelayGroupDisplayNameMutationMessage *)v34 initWithName:v44 sender:dCopy service:internalName2 groupID:groupID originalGroupID:originalGroupID guid:v37 destinationCallerID:identifierCopy failed:v40 fromMe:?];

    relayController = [(IMDTelephonyServiceSession *)self relayController];
    [relayController reflectGroupMutation:v38 callerID:identifierCopy didOccurLocally:1];
  }
}

- (void)_findUnsubscribeTextForChat:(id)chat inMessageBody:(id)body
{
  v29 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  bodyCopy = body;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8] isReportJunkEverywhereEnabled];

  if (isReportJunkEverywhereEnabled)
  {
    if (!chatCopy)
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D2380(v13);
      }

      goto LABEL_37;
    }

    if (![bodyCopy length])
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D22E8(chatCopy, v13);
      }

      goto LABEL_37;
    }

    if ([chatCopy isFiltered])
    {
      if (qword_281422538 != -1)
      {
        sub_22B7D2298();
      }

      if (qword_281422540 != -1)
      {
        sub_22B7D22AC();
      }

      if (qword_281422550 != -1)
      {
        sub_22B7D22C0();
      }

      if (qword_281422560 != -1)
      {
        sub_22B7D22D4();
      }

      if (off_281422530)
      {
        v9 = off_281422530(bodyCopy);
        if ([v9 count])
        {
          v21 = chatCopy;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v23;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v23 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v22 + 1) + 8 * i);
                v17 = [v16 objectForKeyedSubscript:qword_281422548];
                if ([v17 isEqualToString:qword_281422568])
                {
                  v18 = [v16 objectForKeyedSubscript:qword_281422558];

                  v13 = v18;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
            }

            while (v12);
          }

          else
          {
            v13 = 0;
          }

          chatCopy = v21;
        }

        else
        {
          v13 = 0;
        }

        if (![v13 length])
        {
          v19 = IMGetCachedDomainValueForKey();

          v13 = v19;
        }

        if ([v13 length])
        {
          v26 = *MEMORY[0x277D19980];
          v27 = v13;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          [chatCopy updateProperties:v20];
        }

LABEL_37:
      }
    }
  }
}

- (void)sendReportJunkMessageGUID:(id)d shouldRelay:(BOOL)relay
{
  relayCopy = relay;
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = +[IMDMessageStore sharedInstance];
  v8 = [v7 messageWithGUID:dCopy];

  if (v8)
  {
    v9 = +[IMDMessageStore sharedInstance];
    v10 = [v9 chatForMessageGUID:dCopy];

    if (!v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v18 = 138412546;
        v19 = dCopy;
        v20 = 1024;
        v21 = relayCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "No chat found when reporting message GUID %@ as junk (relay=%{BOOL}d)", &v18, 0x12u);
      }
    }

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isReportJunkEverywhereEnabled = [mEMORY[0x277D1A9B8] isReportJunkEverywhereEnabled];

    if ((isReportJunkEverywhereEnabled & relayCopy) != 0)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Sending junk report via relay...", &v18, 2u);
        }
      }

      lastAddressedLocalHandle = [v10 lastAddressedLocalHandle];
      relayController = [(IMDTelephonyServiceSession *)self relayController];
      [relayController reportJunkMessageToCarrier:v8 toChat:v10 fromCallerID:lastAddressedLocalHandle];
    }

    else if ([MEMORY[0x277D1A910] canReportJunkOverCellularServiceOfMessageItem:v8])
    {
      [(IMDTelephonyServiceSession *)self _reportTelephonyJunkForMessageItem:v8 chat:v10];
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Cellular service not at home service. Cannot report junk", &v18, 2u);
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v18 = 138412546;
      v19 = dCopy;
      v20 = 1024;
      v21 = relayCopy;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "No message found with GUID %@ to report junk (relay=%{BOOL}d)", &v18, 0x12u);
    }

    goto LABEL_23;
  }

LABEL_24:
}

- (void)_reportTelephonyJunkForMessageItem:(id)item chat:(id)chat
{
  itemCopy = item;
  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B7D23C4(itemCopy, self, v6);
  }
}

- (void)_setupCoreTelephonyObservation
{
  v3 = +[IMDLocalDaemon sharedDaemon];
  isSetupComplete = [v3 isSetupComplete];

  v5 = IMOSLoggingEnabled();
  if (isSetupComplete)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Daemon is ready registering for incoming messages", buf, 2u);
      }
    }

    [(IMDTelephonyServiceSession *)self _registerForIncomingMessages:0];
  }

  else
  {
    if (v5)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Daemon is not yet ready, watching for notification to register for incoming messages", v9, 2u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__registerForIncomingMessages_ name:*MEMORY[0x277D19318] object:0];
  }
}

- (void)_registerForIncomingMessages:(id)messages
{
  messagesCopy = messages;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Registering for incoming messages", v6, 2u);
    }
  }

  [(IMDTelephonyServiceSession *)self _registerForCTNotifications];
}

- (void)_registerForCTNotifications
{
  if (![(IMDTelephonyServiceSession *)self isRegisteredForCTPhoneNumberNotifications])
  {
    [(IMDTelephonyServiceSession *)self setIsRegisteredForCTPhoneNumberNotifications:1];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Registering for Message Receipts.", v5, 2u);
      }
    }

    CTTelephonyCenterGetDefault();
    CTTelephonyCenterAddObserver();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_22B557B78, *MEMORY[0x277D1A4E8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)_teardownCoreTelephonyObservation
{
  if ([(IMDTelephonyServiceSession *)self isRegisteredForCTPhoneNumberNotifications])
  {
    [(IMDTelephonyServiceSession *)self setIsRegisteredForCTPhoneNumberNotifications:0];
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Unregistering for Message Receipts.", v4, 2u);
      }
    }

    CTTelephonyCenterGetDefault();
    CTTelephonyCenterRemoveObserver();
  }
}

- (void)handler:(id)handler incomingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context
{
  messageCopy = message;
  tokenCopy = token;
  contextCopy = context;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_22B5986E4;
  v17[3] = &unk_2787054C8;
  v18 = messageCopy;
  selfCopy = self;
  v20 = tokenCopy;
  v21 = contextCopy;
  v14 = contextCopy;
  v15 = tokenCopy;
  v16 = messageCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v17 withTimeout:45.0];
}

- (void)handler:(id)handler incomingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token timeStamp:(id)stamp storageContext:(id)context
{
  messageCopy = message;
  tokenCopy = token;
  contextCopy = context;
  v14 = [messageCopy objectForKey:IMDRelayMessageAttachmentDictionaryOutFileSizeKey];
  integerValue = [v14 integerValue];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B598E50;
  v19[3] = &unk_278705518;
  v19[4] = self;
  v20 = messageCopy;
  v22 = contextCopy;
  v23 = integerValue;
  v21 = tokenCopy;
  v16 = contextCopy;
  v17 = tokenCopy;
  v18 = messageCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v19 withTimeout:240.0];
}

- (id)chatForOutgoingMessage:(id)message fromIdentifier:(id)identifier isInProxyMode:(BOOL)mode createIfNotExists:(BOOL)exists
{
  existsCopy = exists;
  modeCopy = mode;
  v110 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  selfCopy = self;
  service = [(IMDServiceSession *)self service];
  v10 = [service supportsCapability:*MEMORY[0x277D1A560]];

  if (v10)
  {
    v11 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v82 = [v11 objectForKeyedSubscript:IMDRelayMessageDictionaryChatDisplayNameKey];
  }

  else
  {
    v82 = 0;
  }

  service2 = [(IMDServiceSession *)self service];
  v13 = [service2 supportsCapability:*MEMORY[0x277D1A558]];

  if (v13)
  {
    v14 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v81 = [v14 objectForKeyedSubscript:IMDRelayMessageDictionaryChatGroupIDKey];

    v15 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v83 = [v15 objectForKeyedSubscript:IMDRelayMessageDictionaryChatOriginalGroupID];
  }

  else
  {
    v83 = 0;
    v81 = 0;
  }

  v16 = [messageCopy objectForKey:IMDCTMessageDictionaryReceipientsKey];
  v17 = [v16 __imArrayByApplyingBlock:&unk_283F1A028];

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v102 = v17;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "ChatForOutgoingMessage recipients %@", buf, 0xCu);
    }
  }

  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v20 = [relayController _isDefaultPairedDeviceRelayingLocally:identifierCopy];

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v17;
  v21 = [(__CFString *)obj countByEnumeratingWithState:&v96 objects:v109 count:16];
  if (v21)
  {
    v22 = v20 | modeCopy;
    v23 = *v97;
    if (v20 | modeCopy)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v89 = v24;
    if (v20)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    if (modeCopy)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v97 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v96 + 1) + 8 * i);
        mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
        v30 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:v28];

        v31 = IMOSLoggingEnabled();
        if (((v30 ^ 1 | v22) & 1) == 0)
        {
          if (v31)
          {
            v42 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v42, OS_LOG_TYPE_INFO, "One of the recipients of this outgoing message is an emergency number, Not processing message", buf, 2u);
            }
          }

          v43 = 0;
          v44 = obj;
          goto LABEL_78;
        }

        if (v31)
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            v33 = @"NO";
            if (v30)
            {
              v33 = @"YES";
            }

            v102 = v33;
            v103 = 2112;
            v104 = v89;
            v105 = 2112;
            v106 = v25;
            v107 = 2112;
            v108 = v26;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Will send SMS, recipient is Emergency %@, shouldRelayEmergencyTextFromPairedDevice: %@, isDefaultPairedDeviceRelayingLocally: %@, isInProxyMode %@ ", buf, 0x2Au);
          }
        }
      }

      v21 = [(__CFString *)obj countByEnumeratingWithState:&v96 objects:v109 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = [messageCopy objectForKey:IMDRelayMessageDictionaryChatStyleKey];
  v78 = _ChatStyleFromChatStyleString(v34);

  buf[0] = v78;
  if (v78 == 45)
  {
    __imFirstObject = [(__CFString *)obj __imFirstObject];
    v35 = MEMORY[0x277CBEAC0];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v37 = [v35 dictionaryWithObjectsAndKeys:{v36, *MEMORY[0x277D192F8], __imFirstObject, *MEMORY[0x277D193A8], 0}];

    [(__CFString *)v90 addObject:v37];
    v38 = +[IMDChatRegistry sharedInstance];
    __imFirstObject2 = [(__CFString *)obj __imFirstObject];
    account = [(IMDServiceSession *)selfCopy account];
    v41 = [v38 existingChatForID:__imFirstObject2 account:account];
LABEL_56:
    v60 = v41;

    goto LABEL_57;
  }

  chatRegistry = [(IMDTelephonyServiceSession *)selfCopy chatRegistry];
  account2 = [(IMDServiceSession *)selfCopy account];
  __imFirstObject = [chatRegistry generateUnusedChatIdentifierForGroupChatWithAccount:account2];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v88 = obj;
  v47 = [(__CFString *)v88 countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (v47)
  {
    v48 = *v93;
    v49 = *MEMORY[0x277D192F8];
    v50 = *MEMORY[0x277D193A8];
    do
    {
      for (j = 0; j != v47; ++j)
      {
        if (*v93 != v48)
        {
          objc_enumerationMutation(v88);
        }

        v52 = *(*(&v92 + 1) + 8 * j);
        v53 = MEMORY[0x277CBEAC0];
        v54 = [MEMORY[0x277CCABB0] numberWithInt:2];
        v55 = [v53 dictionaryWithObjectsAndKeys:{v54, v49, v52, v50, 0}];

        [(__CFString *)v90 addObject:v55];
      }

      v47 = [(__CFString *)v88 countByEnumeratingWithState:&v92 objects:v100 count:16];
    }

    while (v47);
  }

  v56 = +[IMDChatRegistry sharedInstance];
  account3 = [(IMDServiceSession *)selfCopy account];
  service3 = [(IMDServiceSession *)selfCopy service];
  if ([service3 groupsMergeDisplayNames])
  {
    v59 = v82;
  }

  else
  {
    v59 = 0;
  }

  v60 = [v56 existingChatForIDs:v88 account:account3 displayName:v59 groupID:v81 style:43];

  if (!v60 && v83)
  {
    v38 = +[IMDChatRegistry sharedInstance];
    __imFirstObject2 = [(IMDServiceSession *)selfCopy account];
    account = [(IMDServiceSession *)selfCopy service];
    if ([account groupsMergeDisplayNames])
    {
      v61 = v82;
    }

    else
    {
      v61 = 0;
    }

    v41 = [v38 existingChatForIDs:v88 account:__imFirstObject2 displayName:v61 originalGroupID:v83 style:43];
    goto LABEL_56;
  }

LABEL_57:
  if (v60)
  {
    chatIdentifier = [v60 chatIdentifier];

    buf[0] = [v60 style];
    v43 = v60;
  }

  else
  {
    v91 = __imFirstObject;
    [(IMDServiceSession *)selfCopy canonicalizeChatIdentifier:&v91 style:buf];
    chatIdentifier = v91;

    if (existsCopy)
    {
      v63 = objc_alloc_init(IMDChatStatusChangeContext);
      [(IMDChatStatusChangeContext *)v63 setDisplayName:v82];
      [(IMDChatStatusChangeContext *)v63 setGroupID:v81];
      [(IMDChatStatusChangeContext *)v63 setOriginalGroupID:v83];
      [(IMDChatStatusChangeContext *)v63 setHandleInfo:v90];
      [(IMDChatStatusChangeContext *)v63 setIsMessageSentFromMe:1];
      [(IMDServiceSession *)selfCopy didUpdateChatStatus:2 chat:chatIdentifier style:buf[0] context:v63];
      v64 = +[IMDChatRegistry sharedInstance];
      if (v78 == 45)
      {
        __imFirstObject3 = [(__CFString *)obj __imFirstObject];
        account4 = [(IMDServiceSession *)selfCopy account];
        v43 = [v64 existingChatForID:__imFirstObject3 account:account4];
      }

      else
      {
        __imFirstObject3 = [(IMDServiceSession *)selfCopy account];
        v43 = [v64 existingChatForIDs:obj account:__imFirstObject3 displayName:v82 groupID:v81 style:43];
      }
    }

    else
    {
      v43 = 0;
    }
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    v69 = [messageCopy objectForKeyedSubscript:IMDRelayMessageItemDictionary];
    v70 = [v69 objectForKeyedSubscript:IMDRelayMessageItemDictionaryServiceKey];
    originalGroupID = IMChatLookupDomainForServiceName();

    v72 = [v43 latestIdentifierForDomain:originalGroupID];
    guid = v72;
    if (!v83 || ([v72 isEqualToString:?] & 1) != 0 || !-[IMDServiceSession allowedToOverwriteOriginalGroupIDForChat:](selfCopy, "allowedToOverwriteOriginalGroupIDForChat:", v43))
    {
      goto LABEL_75;
    }

    [v43 assignIdentifier:v83 forDomain:originalGroupID isHistoricalIdentifier:0];

LABEL_74:
    v75 = +[IMDChatStore sharedInstance];
    [v75 storeChat:v43];

    originalGroupID = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](selfCopy, "broadcasterForChatListenersWithBlackholeStatus:", [v43 isBlackholed]);
    guid = [v43 guid];
    dictionaryRepresentation = [v43 dictionaryRepresentation];
    [originalGroupID chat:guid updated:dictionaryRepresentation];

LABEL_75:
    goto LABEL_76;
  }

  if (v83)
  {
    originalGroupID = [v43 originalGroupID];
    if ([originalGroupID isEqualToString:v83])
    {
LABEL_76:

      goto LABEL_77;
    }

    v74 = [(IMDServiceSession *)selfCopy allowedToOverwriteOriginalGroupIDForChat:v43];

    if (v74)
    {
      [v43 setOriginalGroupID:v83];
      goto LABEL_74;
    }
  }

LABEL_77:

  v44 = v90;
LABEL_78:

  return v43;
}

- (BOOL)_allowedToProcessMessageFromToken:(id)token fromID:(id)d reflectOnly:(BOOL)only isInProxyMode:(BOOL)mode
{
  modeCopy = mode;
  v40 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v13 = [relayController idsDeviceFromPushToken:tokenCopy];

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      name = [v13 name];
      v36 = 138412290;
      v37 = name;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, " Outgoing message request from %@", &v36, 0xCu);
    }
  }

  if (!v13 || only)
  {
    if (!v13)
    {
      if (IMOSLoggingEnabled())
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v36 = 138412290;
          v37 = dCopy;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, " This message was likely from a local device, looking for fromID: %@", &v36, 0xCu);
        }
      }

      relayController2 = [(IMDTelephonyServiceSession *)self relayController];
      v13 = [relayController2 idsDeviceForFromID:dCopy];
    }
  }

  else
  {
    relayController3 = [(IMDTelephonyServiceSession *)self relayController];
    _localDeviceSupportsSMS = [relayController3 _localDeviceSupportsSMS];

    if (_localDeviceSupportsSMS)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v36) = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, " This message was destined for me to send out, I am the gatekeeper", &v36, 2u);
        }
      }

      relayController4 = [(IMDTelephonyServiceSession *)self relayController];
      if ([relayController4 isSMSRelayEnabled])
      {
      }

      else
      {
        isDefaultPairedDevice = [v13 isDefaultPairedDevice];

        if ((isDefaultPairedDevice & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      relayEnrollmentController = [(IMDTelephonyServiceSession *)self relayEnrollmentController];
      _allowedDevicesforSMSRelay = [relayEnrollmentController _allowedDevicesforSMSRelay];
      uniqueID = [v13 uniqueID];
      v24 = [_allowedDevicesforSMSRelay containsObject:uniqueID];

      v25 = IMOSLoggingEnabled();
      if (v24)
      {
        if (v25)
        {
          v26 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            name2 = [v13 name];
            v36 = 138412290;
            v37 = name2;
            _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, " Device %@ is on the allowed list, Telling the block to continue", &v36, 0xCu);
          }
        }

        LOBYTE(modeCopy) = 1;
        goto LABEL_42;
      }

      if (v25)
      {
        v28 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          name3 = [v13 name];
          v36 = 138412290;
          v37 = name3;
          _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, " Device %@ is on the blockList, sending back a failure", &v36, 0xCu);
        }
      }

LABEL_25:
      LOBYTE(modeCopy) = 0;
      goto LABEL_42;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = "Not Nil";
      if (!v13)
      {
        v33 = "Nil";
      }

      v34 = @"YES";
      if (!modeCopy)
      {
        v34 = @"NO";
      }

      v36 = 136315394;
      v37 = v33;
      v38 = 2112;
      v39 = v34;
      _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, " This message was not for us to gatekeep, we should reflect it only if it came from one of our devices (senderDevice %s) isInProxyMode %@", &v36, 0x16u);
    }
  }

  if (v13)
  {
    LOBYTE(modeCopy) = 1;
  }

LABEL_42:

  return modeCopy;
}

- (BOOL)_hasRegisteredLocalPhoneNumberForHandle:(id)handle
{
  v15 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    registeredPhoneNumbers = [mEMORY[0x277D1A908] registeredPhoneNumbers];

    v6 = [registeredPhoneNumbers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(registeredPhoneNumbers);
          }

          if (MEMORY[0x231897D30](handleCopy, *(*(&v10 + 1) + 8 * i)))
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [registeredPhoneNumbers countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
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
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_phoneNumberForRegisteredSimID:(id)d
{
  dCopy = d;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony() && ([MEMORY[0x277D1A908] sharedInstance], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "registeredSIMIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", dCopy), v5, v4, v6))
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v9 = [ctSubscriptionInfo __im_subscriptionContextForForSimID:dCopy];

    phoneNumber = [v9 phoneNumber];
  }

  else
  {
    phoneNumber = 0;
  }

  return phoneNumber;
}

- (id)_sendingHandleForOutgoingMessageInChat:(id)chat fromIdentifier:(id)identifier
{
  chatCopy = chat;
  v7 = [(IMDTelephonyServiceSession *)self _callerIDUsingFromIdentifier:identifier];
  if (IMSharedHelperDeviceHasMultipleSubscriptions())
  {
    lastAddressedLocalHandle = [chatCopy lastAddressedLocalHandle];
    lastAddressedSIMID = [chatCopy lastAddressedSIMID];
    v10 = lastAddressedSIMID;
    if (lastAddressedLocalHandle)
    {
      if ([(IMDTelephonyServiceSession *)self _hasRegisteredLocalPhoneNumberForHandle:lastAddressedLocalHandle])
      {
        v11 = v7;
        v7 = lastAddressedLocalHandle;
LABEL_8:
      }
    }

    else if (lastAddressedSIMID)
    {
      v12 = [(IMDTelephonyServiceSession *)self _phoneNumberForRegisteredSimID:lastAddressedSIMID];
      v11 = v12;
      if (v12)
      {
        v11 = v12;

        v7 = v11;
      }

      goto LABEL_8;
    }
  }

  v13 = IMChatCanonicalIDSIDsForAddress();
  _stripFZIDPrefix = [v13 _stripFZIDPrefix];

  return _stripFZIDPrefix;
}

- (void)handler:(id)handler outgoingPlainTextMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2
{
  messageCopy = message;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B59AE28;
  v31[3] = &unk_2787055B8;
  v31[4] = self;
  v32 = fromIdentifierCopy;
  modeCopy = mode;
  v33 = identifierCopy;
  v34 = messageCopy;
  replayedCopy = replayed;
  v35 = tokenCopy;
  v36 = dCopy;
  v37 = stampCopy;
  v38 = contextCopy;
  v24 = contextCopy;
  v25 = stampCopy;
  v26 = dCopy;
  v27 = tokenCopy;
  v28 = messageCopy;
  v29 = identifierCopy;
  v30 = fromIdentifierCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v31 withTimeout:45.0];
}

- (void)sendUnapproveToToken:(id)token messageGUID:(id)d completion:(id)completion
{
  tokenCopy = token;
  dCopy = d;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "This device is not on the allowed list, it should not have been trying to send a relay message, sending a message back to it to tell it to not send relay messages in the future", buf, 2u);
    }
  }

  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v13 = [relayController idsDeviceFromPushToken:tokenCopy];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{dCopy, IMDRelayMessageDictionaryGUIDKey, MEMORY[0x277CBEC38], IMDRelayAuthorizationUnauthorizedDeviceKey, 0}];
  relayController2 = [(IMDTelephonyServiceSession *)self relayController];
  enrollmentController = [relayController2 enrollmentController];
  [enrollmentController sendUnApproveToDevice:v13 extraKeys:v14];

  completionCopy[2](completionCopy);
}

- (void)handler:(id)handler outgoingDownloadMessage:(id)message toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token messageGUID:(id)d timeStamp:(id)stamp isBeingReplayed:(BOOL)self0 isInProxyMode:(BOOL)self1 storageContext:(id)self2
{
  messageCopy = message;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  dCopy = d;
  stampCopy = stamp;
  contextCopy = context;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22B59C9A4;
  v31[3] = &unk_2787055B8;
  v31[4] = self;
  v32 = messageCopy;
  v33 = fromIdentifierCopy;
  v34 = tokenCopy;
  replayedCopy = replayed;
  v35 = dCopy;
  v36 = stampCopy;
  v37 = contextCopy;
  v38 = identifierCopy;
  modeCopy = mode;
  v24 = identifierCopy;
  v25 = contextCopy;
  v26 = stampCopy;
  v27 = dCopy;
  v28 = tokenCopy;
  v29 = fromIdentifierCopy;
  v30 = messageCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v31 withTimeout:240.0];
}

- (BOOL)responsibleForMessageID:(id)d
{
  dCopy = d;
  v5 = +[IMDMessageStore sharedInstance];
  v6 = [v5 messageWithGUID:dCopy];

  service = [v6 service];
  service2 = [(IMDServiceSession *)self service];
  internalName = [service2 internalName];
  v10 = [service isEqualToString:internalName];

  return v10;
}

- (void)handler:(id)handler messageIDSent:(id)sent wasInterworked:(BOOL)interworked toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context
{
  sentCopy = sent;
  contextCopy = context;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22B59E114;
  v15[3] = &unk_278705630;
  v15[4] = self;
  v16 = sentCopy;
  v17 = contextCopy;
  interworkedCopy = interworked;
  v13 = contextCopy;
  v14 = sentCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v15 withTimeout:45.0];
}

- (void)handler:(id)handler messageIDRead:(id)read readByMe:(BOOL)me timeStamp:(id)stamp toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier fromToken:(id)token reflectOnly:(BOOL)self0 storageContext:(id)self1
{
  handlerCopy = handler;
  readCopy = read;
  stampCopy = stamp;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  tokenCopy = token;
  contextCopy = context;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_22B4D76F0;
  v38[4] = sub_22B4D78D4;
  v39 = [objc_alloc(MEMORY[0x277D19290]) initWithIdentifier:@"IncomingReadReceiptAssertion" timeout:10.0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_22B59E50C;
  v29[3] = &unk_278705658;
  v29[4] = self;
  v23 = readCopy;
  v30 = v23;
  v24 = stampCopy;
  v31 = v24;
  v25 = contextCopy;
  v32 = v25;
  meCopy = me;
  v26 = tokenCopy;
  v33 = v26;
  onlyCopy = only;
  v27 = identifierCopy;
  v34 = v27;
  v35 = v38;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v29 withTimeout:45.0];

  _Block_object_dispose(v38, 8);
}

- (void)handler:(id)handler messageGUIDToReport:(id)report
{
  reportCopy = report;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B59E8B8;
  v7[3] = &unk_278703040;
  v7[4] = self;
  v8 = reportCopy;
  v6 = reportCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v7 withTimeout:45.0];
}

- (void)handler:(id)handler messageIDSendFailure:(id)failure toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier timeStamp:(id)stamp storageContext:(id)context
{
  failureCopy = failure;
  identifierCopy = identifier;
  fromIdentifierCopy = fromIdentifier;
  contextCopy = context;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_22B59EB5C;
  v20[3] = &unk_278705680;
  v20[4] = self;
  v21 = failureCopy;
  v22 = fromIdentifierCopy;
  v23 = identifierCopy;
  v24 = contextCopy;
  v16 = contextCopy;
  v17 = identifierCopy;
  v18 = fromIdentifierCopy;
  v19 = failureCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v20 withTimeout:45.0];
}

- (void)handler:(id)handler localFileResponse:(id)response storageContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  responseCopy = response;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v15 = 138412546;
      v16 = internalName;
      v17 = 2112;
      v18 = responseCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received remote file response %@", &v15, 0x16u);
    }
  }

  attachmentController = [(IMDTelephonyServiceSession *)self attachmentController];
  [attachmentController remoteFileResponse:responseCopy];
}

- (void)handler:(id)handler localFileRequest:(id)request storageContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  requestCopy = request;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v15 = 138412546;
      v16 = internalName;
      v17 = 2112;
      v18 = requestCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received remote file request %@", &v15, 0x16u);
    }
  }

  attachmentController = [(IMDTelephonyServiceSession *)self attachmentController];
  [attachmentController remotefileRequest:requestCopy attempts:0];
}

- (void)handler:(id)handler localIncommingMessage:(id)message storageContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v15 = 138412290;
      v16 = internalName;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received Local incomming Message", &v15, 0xCu);
    }
  }

  v14 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryIncomingDictKey];
  [(IMDTelephonyServiceSession *)self _processReceivedDictionary:v14 storageContext:contextCopy receivedViaRelay:1 withCompletionBlock:0];
}

- (void)handler:(id)handler localIncomingDownloadMessage:(id)message storageContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      v15 = 138412290;
      v16 = internalName;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "%@ relay received Local incomming download Message", &v15, 0xCu);
    }
  }

  v14 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryIncomingDictKey];
  [(IMDTelephonyServiceSession *)self _processReceivedDictionary:v14 storageContext:contextCopy receivedViaRelay:1 withCompletionBlock:0];
}

- (void)handler:(id)handler localOutgoingDownloadMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138412290;
      v20 = internalName;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@ relay received Local outgoing Download Message", buf, 0xCu);
    }
  }

  v16 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryOutgoingDictKey];
  v17 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  BYTE1(v18) = 1;
  LOBYTE(v18) = replayed;
  [(IMDTelephonyServiceSession *)self handler:handlerCopy outgoingDownloadMessage:v16 toIdentifier:0 fromIdentifier:0 fromToken:0 messageGUID:v17 timeStamp:0 isBeingReplayed:v18 isInProxyMode:contextCopy storageContext:?];
}

- (void)handler:(id)handler localOutgoingMessage:(id)message isBeingReplayed:(BOOL)replayed storageContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  messageCopy = message;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      service = [(IMDServiceSession *)self service];
      internalName = [service internalName];
      *buf = 138412290;
      v20 = internalName;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "%@ relay received Local outgoing Message", buf, 0xCu);
    }
  }

  v16 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryOutgoingDictKey];
  v17 = [messageCopy objectForKeyedSubscript:IMDRelayLocalMessageDictionaryGUIDKey];
  BYTE1(v18) = 1;
  LOBYTE(v18) = replayed;
  [(IMDTelephonyServiceSession *)self handler:0 outgoingPlainTextMessage:v16 toIdentifier:0 fromIdentifier:0 fromToken:0 messageGUID:v17 timeStamp:0 isBeingReplayed:v18 isInProxyMode:contextCopy storageContext:?];
}

- (void)handler:(id)handler localMessageError:(id)error storageContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B59F71C;
  v11[3] = &unk_2787056A8;
  v11[4] = self;
  v12 = contextCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = contextCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v11 withTimeout:45.0];
}

- (BOOL)_canLocallySendWithPhoneNumber:(id)number
{
  numberCopy = number;
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
    ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
    v6 = [ctSubscriptionInfo __im_containsPhoneNumber:numberCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_chatForGroupID:(id)d originalGroupID:(id)iD
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v6 = +[IMDChatRegistry sharedInstance];
  service = [(IMDServiceSession *)self service];
  internalName = [service internalName];
  v32 = [v6 newestExistingChatWithOriginalGroupID:iDCopy onService:internalName];

  v9 = v32;
  if (v32)
  {
    firstObject = v32;
    goto LABEL_27;
  }

  v11 = +[IMDChatRegistry sharedInstance];
  v31 = [v11 existingChatsWithGroupID:dCopy];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

  if (isOneChatEnabled)
  {
    if ([v31 count] && IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found multiple chats for a groupID, but picking the first one.", buf, 2u);
      }
    }

    firstObject = [v31 firstObject];
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

    if (!isMissingMessagesEnabled || ![v31 count])
    {
      goto LABEL_26;
    }

    service2 = [(IMDServiceSession *)self service];
    internalName2 = [service2 internalName];
    v19 = IMChatLookupDomainForServiceName();

    if (iDCopy && ([iDCopy isEqualToString:dCopy] & 1) == 0)
    {
      domainIdentifiers = [firstObject domainIdentifiers];
      v21 = [domainIdentifiers objectForKeyedSubscript:v19];
      if ([v21 containsObject:iDCopy])
      {
      }

      else
      {
        v30 = [(IMDServiceSession *)self allowedToOverwriteOriginalGroupIDForChat:firstObject];

        if (v30)
        {
          [firstObject assignIdentifier:iDCopy forDomain:v19 isHistoricalIdentifier:0];
        }
      }
    }
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = v31;
    firstObject = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (firstObject)
    {
      v22 = *v36;
      while (2)
      {
        for (i = 0; i != firstObject; i = i + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v35 + 1) + 8 * i);
          serviceName = [v24 serviceName];
          service3 = [(IMDServiceSession *)self service];
          internalName3 = [service3 internalName];
          v28 = [serviceName isEqualToString:internalName3];

          if (v28)
          {
            firstObject = v24;
            goto LABEL_25;
          }
        }

        firstObject = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (firstObject)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_25:

LABEL_26:
  v9 = 0;
LABEL_27:

  return firstObject;
}

- (void)handler:(id)handler incomingGroupMutationMessage:(id)message timeStamp:(id)stamp storageContext:(id)context fromToken:(id)token fromID:(id)d isInProxyMode:(BOOL)mode
{
  messageCopy = message;
  tokenCopy = token;
  dCopy = d;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_22B59FD84;
  v18[3] = &unk_278705720;
  v18[4] = self;
  v19 = tokenCopy;
  modeCopy = mode;
  v20 = dCopy;
  v21 = messageCopy;
  v15 = messageCopy;
  v16 = dCopy;
  v17 = tokenCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v18 withTimeout:45.0];
}

- (void)handler:(id)handler receivedPriorityMessageCommand:(id)command fromIdentifier:(id)identifier toIdentifier:(id)toIdentifier fromToken:(id)token
{
  commandCopy = command;
  identifierCopy = identifier;
  toIdentifierCopy = toIdentifier;
  tokenCopy = token;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B5A085C;
  v19[3] = &unk_278705680;
  v19[4] = self;
  v20 = toIdentifierCopy;
  v21 = identifierCopy;
  v22 = tokenCopy;
  v23 = commandCopy;
  v15 = commandCopy;
  v16 = tokenCopy;
  v17 = identifierCopy;
  v18 = toIdentifierCopy;
  [(IMDTelephonyServiceSession *)self _enqueueBlock:v19 withTimeout:45.0];
}

- (BOOL)_sosReplicationDisabledByServerBag
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-sos-replication"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "SOS replication disabled by server bag", v7, 2u);
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_periodicReplicationTimeInterval
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"forced-replication-interval"];
  v4 = 14400.0;
  if (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    if (v5 != 0.0)
    {
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          [v3 doubleValue];
          v10 = 134217984;
          v11 = v7;
          _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Server bag value for periodic replication interval: %f", &v10, 0xCu);
        }
      }

      [v3 doubleValue];
      v4 = v8;
    }
  }

  return v4;
}

- (BOOL)_shouldForceReplicationForStaleChatWithLastKnownReplicationDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(IMDTelephonyServiceSession *)self _periodicReplicationTimeInterval];
  v6 = v5;
  if (v5 <= 0.00000011920929)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Periodic forced replication interval is less than or equal to zero, disabling", &v16, 2u);
      }
    }

    v10 = 0;
  }

  else if (dateCopy)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    [v7 timeIntervalSinceDate:dateCopy];
    v9 = v8;

    v10 = v9 > v6;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = @"NO";
        v16 = 138412802;
        if (v9 > v6)
        {
          v12 = @"YES";
        }

        v17 = v12;
        v18 = 2048;
        v19 = v9;
        v20 = 2048;
        v21 = v6;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Should force replication: %@ (time since last: %f, interval: %f)", &v16, 0x20u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "No last known replication date, forcing replication", &v16, 2u);
      }
    }

    v10 = 1;
  }

  return v10;
}

- (BOOL)_replicationDisabledByServerBag
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-hybrid-groups"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 BOOLValue])
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Hybrid groups disabled by server bag", v7, 2u);
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)acceptsIncomingReplicatedMessagesFromAccount:(id)account toIdentifier:(id)identifier isSOS:(BOOL)s
{
  sCopy = s;
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  if (!sCopy || [(IMDTelephonyServiceSession *)self _sosReplicationDisabledByServerBag])
  {
    if (![(IMDTelephonyServiceSession *)self _replicationDisabledByServerBag])
    {
      if (identifierCopy && ([identifierCopy _appearsToBePhoneNumber] & 1) != 0)
      {
        v10 = [(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:identifierCopy simID:0];
        goto LABEL_17;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          account = [(IMDServiceSession *)self account];
          v15 = 138412802;
          v16 = accountCopy;
          v17 = 2112;
          v18 = account;
          v19 = 2112;
          v20 = identifierCopy;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Cannot receive replication provided by %@ to %@, not a phone number %@", &v15, 0x20u);
        }
      }
    }

    v10 = 0;
    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      v16 = accountCopy;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Allowing incoming replicated SOS message from %@ to %@", &v15, 0x16u);
    }
  }

  v10 = 1;
LABEL_17:

  return v10;
}

- (id)replicationPhoneNumbers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  dominentPhoneNumberAlias = [relayController dominentPhoneNumberAlias];

  if (dominentPhoneNumberAlias)
  {
    v6 = IMChatCanonicalIDSIDsForAddress();
    _stripFZIDPrefix = [v6 _stripFZIDPrefix];

    [v3 addObject:_stripFZIDPrefix];
  }

  v8 = [v3 copy];

  return v8;
}

- (id)outgoingReplicationCallerIDForChat:(id)chat
{
  chatCopy = chat;
  chatIdentifier = [chatCopy chatIdentifier];
  v6 = -[IMDTelephonyServiceSession _callerIDForChatWithChatIdentifier:chatStyle:foundChat:](self, "_callerIDForChatWithChatIdentifier:chatStyle:foundChat:", chatIdentifier, [chatCopy style], chatCopy);

  return v6;
}

- (id)preferredAccountForReplicationOnService:(id)service eligibleAccounts:(id)accounts
{
  v60 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountsCopy = accounts;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v54 = serviceCopy;
      v55 = 2112;
      v56 = accountsCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Choosing preferred replication account for %@ from %@", buf, 0x16u);
    }
  }

  replicationPhoneNumbers = [(IMDTelephonyServiceSession *)self replicationPhoneNumbers];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = accountsCopy;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v10)
  {
    v11 = *v48;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        loginID = [v13 loginID];
        v15 = MEMORY[0x231897A70]();

        v16 = IMChatCanonicalIDSIDsForAddress();
        _stripFZIDPrefix = [v16 _stripFZIDPrefix];

        if ([replicationPhoneNumbers containsObject:_stripFZIDPrefix])
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v54 = v13;
              v55 = 2112;
              v56 = v15;
              v57 = 2112;
              v58 = _stripFZIDPrefix;
              _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_INFO, "Preferring account %@ for replication based on loginID %@ canonicalLoginID %@", buf, 0x20u);
            }
          }

          v30 = v13;

          goto LABEL_43;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v36 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v36)
  {
    v18 = *v44;
    v34 = *v44;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v44 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v43 + 1) + 8 * j);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v35 = v20;
        aliases = [v20 aliases];
        v22 = [aliases countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v22)
        {
          v23 = *v40;
          while (2)
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v40 != v23)
              {
                objc_enumerationMutation(aliases);
              }

              v25 = *(*(&v39 + 1) + 8 * k);
              v26 = IMChatCanonicalIDSIDsForAddress();
              _stripFZIDPrefix2 = [v26 _stripFZIDPrefix];

              if ([replicationPhoneNumbers containsObject:_stripFZIDPrefix2])
              {
                if (IMOSLoggingEnabled())
                {
                  v32 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v54 = v35;
                    v55 = 2112;
                    v56 = v25;
                    _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Preferring account %@ for replication based on alias %@", buf, 0x16u);
                  }
                }

                v30 = v35;

                goto LABEL_43;
              }
            }

            v22 = [aliases countByEnumeratingWithState:&v39 objects:v51 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v18 = v34;
      }

      v36 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      v18 = v34;
    }

    while (v36);
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      allObjects = [replicationPhoneNumbers allObjects];
      *buf = 138412290;
      v54 = allObjects;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Failed to find matching replication account with possible numbers %@", buf, 0xCu);
    }
  }

  v30 = 0;
LABEL_43:

  return v30;
}

- (BOOL)_shouldReplicateMessageItem:(id)item chatStyle:(unsigned __int8)style lastKnownReplicationDate:(id)date callerID:(id)d
{
  styleCopy = style;
  itemCopy = item;
  dateCopy = date;
  dCopy = d;
  if ([itemCopy isSOS])
  {
    _sosReplicationDisabledByServerBag = [(IMDTelephonyServiceSession *)self _sosReplicationDisabledByServerBag];
  }

  else
  {
    if (styleCopy != 43 || ![(IMDTelephonyServiceSession *)self replicationRequiredForFeaturesUsedByMessageItem:itemCopy]&& ![(IMDTelephonyServiceSession *)self _shouldForceReplicationForStaleChatWithLastKnownReplicationDate:dateCopy]|| ![(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:dCopy simID:0])
    {
      v14 = 0;
      goto LABEL_10;
    }

    _sosReplicationDisabledByServerBag = [(IMDTelephonyServiceSession *)self _replicationDisabledByServerBag];
  }

  v14 = !_sosReplicationDisabledByServerBag;
LABEL_10:

  return v14;
}

- (id)_replicatedMessageGUIDToReleaseFromMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:IMDRelayMessageDictionaryAttemptedOutgoingReplicationKey];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 BOOLValue] && (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", IMDRelayMessageItemDictionary), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 objectForKeyedSubscript:IMDRelayMessageItemDictionaryGUIDKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_deferredReplicatedMessageReleaseWithAllowedMessage:(id)message outgoingProxyBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  blockCopy = block;
  v8 = [(IMDTelephonyServiceSession *)self _replicatedMessageGUIDToReleaseFromMessageDictionary:messageCopy];
  if ([v8 length])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v8;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Delaying release of replicated message %@", buf, 0xCu);
      }
    }

    v10 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22B667B7C;
    block[3] = &unk_2787037B8;
    v12 = v8;
    selfCopy = self;
    v14 = blockCopy;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 1);
  }
}

- (BOOL)replicateMessage:(id)message chatIdentifier:(id)identifier chatStyle:(unsigned __int8)style lastKnownReplicationDate:(id)date callerID:(id)d
{
  styleCopy = style;
  v45[2] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  identifierCopy = identifier;
  dateCopy = date;
  dCopy = d;
  v16 = [(IMDTelephonyServiceSession *)self _shouldReplicateMessageItem:messageCopy chatStyle:styleCopy lastKnownReplicationDate:dateCopy callerID:dCopy];
  if (v16)
  {
    service = [(IMDServiceSession *)self service];
    v18 = [service supportsCapability:*MEMORY[0x277D1A588]];

    if ((v18 & 1) == 0)
    {
      stringGUID = [MEMORY[0x277CCACA8] stringGUID];
      v45[0] = stringGUID;
      stringGUID2 = [MEMORY[0x277CCACA8] stringGUID];
      v45[1] = stringGUID2;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
      [messageCopy setReplicatedFallbackGUIDs:v21];
    }

    v22 = IMGetCachedDomainIntForKey();
    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];
    if (v22 > 0)
    {
      v25 = isInternalInstall;
    }

    else
    {
      v25 = 0;
    }

    v26 = IMOSLoggingEnabled();
    if (v25)
    {
      if (v26)
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          guid = [messageCopy guid];
          *buf = 138412546;
          v42 = guid;
          v43 = 1024;
          v44 = v22;
          _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "** Replication delay is enabled, delaying send of %@ by %d seconds", buf, 0x12u);
        }
      }

      v29 = dispatch_time(0, 1000000000 * v22);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = sub_22B668224;
      v36[3] = &unk_2787073E8;
      v37 = messageCopy;
      selfCopy = self;
      v39 = identifierCopy;
      v40 = styleCopy;
      dispatch_after(v29, MEMORY[0x277D85CD0], v36);
    }

    else
    {
      if (v26)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          guid2 = [messageCopy guid];
          *buf = 138412290;
          v42 = guid2;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Sending message %@ to replicationProxy", buf, 0xCu);
        }
      }

      replicationProxy = [(IMDServiceSession *)self replicationProxy];
      [replicationProxy sendMessage:messageCopy toChat:identifierCopy style:styleCopy];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      guid3 = [messageCopy guid];
      *buf = 138412290;
      v42 = guid3;
      _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not replicating message %@", buf, 0xCu);
    }
  }

  return v16;
}

- (void)sendRepositionStickerMessage:(id)message chatIdentifier:(id)identifier accountID:(id)d style:(unsigned __int8)style
{
  styleCopy = style;
  messageCopy = message;
  identifierCopy = identifier;
  dCopy = d;
  v12 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:styleCopy updatingAccount:1];
  v13 = [(IMDTelephonyServiceSession *)self _callerIDForChatWithChatIdentifier:identifierCopy chatStyle:styleCopy foundChat:v12];
  if (styleCopy == 43 && [(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:v13 simID:0])
  {
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy sendRepositionStickerMessage:messageCopy chatIdentifier:identifierCopy accountID:dCopy style:43];
  }
}

- (void)sendEditedMessage:(id)message previousMessage:(id)previousMessage partIndex:(int64_t)index editType:(unint64_t)type toChatIdentifier:(id)identifier style:(unsigned __int8)style account:(id)account backwardCompatabilityText:(id)self0
{
  styleCopy = style;
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  previousMessageCopy = previousMessage;
  identifierCopy = identifier;
  accountCopy = account;
  textCopy = text;
  v19 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:styleCopy updatingAccount:1];
  v20 = [(IMDTelephonyServiceSession *)self _callerIDForChatWithChatIdentifier:identifierCopy chatStyle:styleCopy foundChat:v19];
  if (styleCopy == 43 && [(IMDTelephonyServiceSession *)self replicationRequirementsSatisfiedForPhoneNumber:v20 simID:0])
  {
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy sendEditedMessage:messageCopy previousMessage:previousMessageCopy partIndex:index editType:type toChatIdentifier:identifierCopy style:43 account:accountCopy backwardCompatabilityText:textCopy];
  }

  isMessagesTheDefaultTextApp = [MEMORY[0x277D1A8F8] isMessagesTheDefaultTextApp];
  copyForBackwardsCompatibility = [messageCopy copyForBackwardsCompatibility];
  [copyForBackwardsCompatibility setBody:textCopy];
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v25 = [relayController _localDeviceSupportsSMS] & isMessagesTheDefaultTextApp;

  if (v25 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v31 = copyForBackwardsCompatibility;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "Device supports SMS, sending backwards compatibility edit to CT: %@", buf, 0xCu);
      }
    }

    [(IMDTelephonyServiceSession *)self sendMessageFromIMMessageItem:copyForBackwardsCompatibility forChat:identifierCopy chat:v19 style:styleCopy];
  }

  else if (![(IMDTelephonyServiceSession *)self shouldExcludeChatFromRelay:v19])
  {
    relayController2 = [(IMDTelephonyServiceSession *)self relayController];
    [relayController2 sendEditedMessage:messageCopy toChat:v19 fromCallerID:v20 backwardCompatabilityText:textCopy];
  }
}

- (void)sendGroupPhotoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  if (style == 43)
  {
    accountCopy = account;
    identifierCopy = identifier;
    dCopy = d;
    updateCopy = update;
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy sendGroupPhotoUpdate:updateCopy toChatID:dCopy identifier:identifierCopy style:43 account:accountCopy];
  }
}

- (void)sendBrandLogoUpdate:(id)update toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account
{
  styleCopy = style;
  accountCopy = account;
  identifierCopy = identifier;
  dCopy = d;
  updateCopy = update;
  replicationProxy = [(IMDServiceSession *)self replicationProxy];
  [replicationProxy sendBrandLogoUpdate:updateCopy toChatID:dCopy identifier:identifierCopy style:styleCopy account:accountCopy];
}

- (void)retryGroupPhotoUpload:(id)upload toChatID:(id)d identifier:(id)identifier style:(unsigned __int8)style account:(id)account isPhotoRefresh:(BOOL)refresh
{
  if (style == 43)
  {
    refreshCopy = refresh;
    accountCopy = account;
    identifierCopy = identifier;
    dCopy = d;
    uploadCopy = upload;
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy retryGroupPhotoUpload:uploadCopy toChatID:dCopy identifier:identifierCopy style:43 account:accountCopy isPhotoRefresh:refreshCopy];
  }
}

- (void)retryTranscriptBackgroundUpload:(id)upload chatIdentifier:(id)identifier style:(unsigned __int8)style transferID:(id)d
{
  styleCopy = style;
  uploadCopy = upload;
  identifierCopy = identifier;
  dCopy = d;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isTranscriptBackgroundsEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsEnabled];

  if (isTranscriptBackgroundsEnabled)
  {
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy retryTranscriptBackgroundUpload:uploadCopy chatIdentifier:identifierCopy style:styleCopy transferID:dCopy];
  }
}

- (void)relayDisplayNameChange:(id)change forChat:(id)chat fromID:(id)d messageID:(id)iD didOccurLocally:(BOOL)locally
{
  locallyCopy = locally;
  chatCopy = chat;
  iDCopy = iD;
  dCopy = d;
  changeCopy = change;
  groupID = [chatCopy groupID];
  originalGroupID = [chatCopy originalGroupID];
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled)
  {
    service = [(IMDServiceSession *)self service];
    internalName = [service internalName];
    v20 = IMChatLookupDomainForServiceName();

    if (v20)
    {
      v21 = [chatCopy latestIdentifierForDomain:v20];
      v22 = v21;
      if (v21)
      {
        v23 = v21;

        originalGroupID = v23;
      }

      else
      {
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D8688(v20, v24);
        }
      }
    }
  }

  v25 = [IMDRelayGroupDisplayNameMutationMessage alloc];
  service2 = [(IMDServiceSession *)self service];
  internalName2 = [service2 internalName];
  v28 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:iDCopy];

  LOWORD(v31) = 256;
  v29 = [(IMDRelayGroupDisplayNameMutationMessage *)v25 initWithName:changeCopy sender:0 service:internalName2 groupID:groupID originalGroupID:originalGroupID guid:v28 destinationCallerID:dCopy failed:v31 fromMe:?];

  relayController = [(IMDTelephonyServiceSession *)self relayController];
  [relayController reflectGroupMutation:v29 callerID:dCopy didOccurLocally:locallyCopy];
}

- (void)updateDisplayName:(id)name fromDisplayName:(id)displayName fromID:(id)d forChatID:(id)iD identifier:(id)identifier style:(unsigned __int8)style messageID:(id)messageID
{
  styleCopy = style;
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  messageIDCopy = messageID;
  v25.receiver = self;
  v25.super_class = IMDTelephonyServiceSession;
  [(IMDServiceSession *)&v25 updateDisplayName:nameCopy fromDisplayName:displayNameCopy fromID:dCopy forChatID:iDCopy identifier:identifierCopy style:styleCopy messageID:messageIDCopy];
  service = [(IMDServiceSession *)self service];
  v22 = [service supportsCapability:*MEMORY[0x277D1A560]];

  if (styleCopy == 43 && (v22 & 1) == 0)
  {
    replicationProxy = [(IMDServiceSession *)self replicationProxy];
    [replicationProxy updateDisplayName:nameCopy fromDisplayName:displayNameCopy fromID:dCopy forChatID:iDCopy identifier:identifierCopy style:43 messageID:messageIDCopy];
  }

  if (v22)
  {
    v24 = [(IMDServiceSession *)self chatForChatIdentifier:identifierCopy style:styleCopy updatingAccount:1];
    if (v24)
    {
      [(IMDTelephonyServiceSession *)self relayDisplayNameChange:nameCopy forChat:v24 fromID:dCopy messageID:messageIDCopy didOccurLocally:1];
    }
  }
}

- (BOOL)replicationRequiredForFeaturesUsedByMessageItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy isSOS])
  {
    goto LABEL_17;
  }

  associatedMessageGUID = [itemCopy associatedMessageGUID];
  v6 = [associatedMessageGUID length];

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        guid = [itemCopy guid];
        v23 = 138412290;
        v24 = guid;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has associated message GUID", &v23, 0xCu);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  expressiveSendStyleID = [itemCopy expressiveSendStyleID];
  v10 = [expressiveSendStyleID length];

  if (!v10)
  {
    balloonBundleID = [itemCopy balloonBundleID];
    v13 = [balloonBundleID length];

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          guid2 = [itemCopy guid];
          v23 = 138412290;
          v24 = guid2;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has balloon bundle ID", &v23, 0xCu);
        }

        goto LABEL_16;
      }

      goto LABEL_17;
    }

    messageSummaryInfo = [itemCopy messageSummaryInfo];
    v18 = [messageSummaryInfo objectForKeyedSubscript:*MEMORY[0x277D1A058]];

    if ([v18 length])
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          guid3 = [itemCopy guid];
          v23 = 138412290;
          v24 = guid3;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Allowing replication for %@, has translated message parts", &v23, 0xCu);
        }

LABEL_28:
      }
    }

    else
    {
      body = [itemCopy body];
      v15 = [(IMDTelephonyServiceSession *)self _replicationRequiredForFeaturesUsedByMessageBody:body];

      if (!v15)
      {
LABEL_30:

        goto LABEL_18;
      }

      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          guid4 = [itemCopy guid];
          v23 = 138412290;
          v24 = guid4;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Allowing replication for %@, has non-plaintext or unknown attributes", &v23, 0xCu);
        }

        goto LABEL_28;
      }
    }

    LOBYTE(v15) = 1;
    goto LABEL_30;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      guid5 = [itemCopy guid];
      v23 = 138412290;
      v24 = guid5;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Allowing replication for %@, has expressive send", &v23, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
  LOBYTE(v15) = 1;
LABEL_18:

  return v15;
}

- (BOOL)_replicationRequiredForFeaturesUsedByMessageBody:(id)body
{
  bodyCopy = body;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v5 = [bodyCopy length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B669244;
  v7[3] = &unk_278707438;
  v7[5] = v8;
  v7[6] = &v9;
  v7[4] = self;
  [bodyCopy enumerateAttributesInRange:0 options:v5 usingBlock:{0, v7}];
  LOBYTE(self) = *(v10 + 24);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);

  return self;
}

- (BOOL)reflectPriorityMessageToPeerDevicesForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  relayController = [(IMDTelephonyServiceSession *)self relayController];
  v6 = [relayController reflectPriorityMessageToPeerDevicesForMessageGUIDs:dsCopy];

  return v6;
}

- (void)requestTranscriptBackgroundIfNecessary:(id)necessary incomingVersion:(unint64_t)version toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  storageCopy = storage;
  fromIdentifierCopy = fromIdentifier;
  identifierCopy = identifier;
  necessaryCopy = necessary;
  replicationProxy = [(IMDServiceSession *)self replicationProxy];
  [replicationProxy requestTranscriptBackgroundIfNecessary:necessaryCopy incomingVersion:version toIdentifier:identifierCopy fromIdentifier:fromIdentifierCopy messageIsFromStorage:storageCopy];
}

- (void)requestTranscriptBackground:(id)background toIdentifier:(id)identifier fromIdentifier:(id)fromIdentifier messageIsFromStorage:(BOOL)storage
{
  storageCopy = storage;
  fromIdentifierCopy = fromIdentifier;
  identifierCopy = identifier;
  backgroundCopy = background;
  replicationProxy = [(IMDServiceSession *)self replicationProxy];
  [replicationProxy requestTranscriptBackground:backgroundCopy toIdentifier:identifierCopy fromIdentifier:fromIdentifierCopy messageIsFromStorage:storageCopy];
}

- (void)refetchChatBackgroundIfNeededForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style
{
  styleCopy = style;
  identifierCopy = identifier;
  replicationProxy = [(IMDServiceSession *)self replicationProxy];
  [replicationProxy refetchChatBackgroundIfNeededForChatIdentifier:identifierCopy chatStyle:styleCopy];
}

- (void)setTranscriptBackground:(id)background andSendToChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style transferID:(id)d isRefresh:(BOOL)refresh
{
  refreshCopy = refresh;
  styleCopy = style;
  dCopy = d;
  identifierCopy = identifier;
  backgroundCopy = background;
  replicationProxy = [(IMDServiceSession *)self replicationProxy];
  [replicationProxy setTranscriptBackground:backgroundCopy andSendToChatIdentifier:identifierCopy chatStyle:styleCopy transferID:dCopy isRefresh:refreshCopy];
}

- (void)_processReceivedDictionaryInBlastDoor:(id)door storageContext:(id)context receivedViaRelay:(BOOL)relay withCompletionBlock:(id)block
{
  doorCopy = door;
  contextCopy = context;
  blockCopy = block;
  v13 = [doorCopy objectForKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
  if ([v13 length])
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-relay.smsdata", v13];
    [MEMORY[0x277D1AA18] writeMessagePayloadToDisk:doorCopy fileName:v14];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_22B6C1DAC;
  v19[3] = &unk_278708298;
  v20 = v13;
  selfCopy = self;
  v22 = doorCopy;
  v23 = contextCopy;
  relayCopy = relay;
  v24 = blockCopy;
  v15 = blockCopy;
  v16 = contextCopy;
  v17 = doorCopy;
  v18 = v13;
  [IMBlastdoor sendSMSDictionary:v17 withCompletionBlock:v19];
}

- (void)_releasePendingMessagesAndProcessReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block
{
  messageCopy = message;
  contextCopy = context;
  nameCopy = name;
  blockCopy = block;
  v16 = +[IMPendingReplicatedMessageCache sharedCache];
  gUID = [messageCopy GUID];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22B6C2398;
  v22[3] = &unk_2787082C0;
  v22[4] = self;
  v23 = messageCopy;
  relayCopy = relay;
  v24 = contextCopy;
  v25 = nameCopy;
  v26 = blockCopy;
  v18 = blockCopy;
  v19 = nameCopy;
  v20 = contextCopy;
  v21 = messageCopy;
  [v16 releasePendingMessageWithGUID:gUID serviceName:v19 chat:0 completion:v22];
}

- (void)_generatePreviewForTransfer:(id)transfer message:(id)message
{
  messageCopy = message;
  transferCopy = transfer;
  v7 = IMDTelephonyServiceLogHandle(transferCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Generating preview for attachment part", v13, 2u);
  }

  isFromMe = [messageCopy isFromMe];
  v9 = MEMORY[0x277D1AB80];
  service = [messageCopy service];
  if (isFromMe)
  {
    [v9 fromMeContextWithServiceName:service];
  }

  else
  {
    [v9 untrustedContextWithServiceName:service];
  }
  v11 = ;

  v12 = +[IMDFileTransferCenter sharedInstance];
  [v12 generatePreviewForTransfer:transferCopy messageItem:messageCopy senderContext:v11];
}

- (id)_countryCodeForIncomingTextMessage:(id)message
{
  messageCopy = message;
  countryCode = [messageCopy countryCode];

  if (countryCode)
  {
    countryCode2 = [messageCopy countryCode];
    goto LABEL_11;
  }

  originatedDeviceSIM = [messageCopy originatedDeviceSIM];
  if (originatedDeviceSIM)
  {
  }

  else
  {
    originatedDeviceNumber = [messageCopy originatedDeviceNumber];

    if (!originatedDeviceNumber)
    {
LABEL_7:
      mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Missing Destination Information" errorPayload:0 type:@"DSDS Privacy Violation" context:@"Selected a default country code instead of being aware of the number a message was received on."];

      v13 = IMCountryCodeForIncomingTextMessage();
      v14 = v13;
      v15 = @"us";
      if (v13)
      {
        v15 = v13;
      }

      v11 = v15;

      goto LABEL_10;
    }
  }

  v8 = MEMORY[0x277D1A8F8];
  originatedDeviceNumber2 = [messageCopy originatedDeviceNumber];
  originatedDeviceSIM2 = [messageCopy originatedDeviceSIM];
  v11 = [v8 IMCountryCodeForPhoneNumber:originatedDeviceNumber2 simID:originatedDeviceSIM2];

  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_10:
  countryCode2 = v11;

LABEL_11:

  return countryCode2;
}

- (BOOL)incomingMessageHasTooManyRecipients:(id)recipients
{
  v22 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  originatedDeviceSIM = [recipientsCopy originatedDeviceSIM];
  originatedDeviceNumber = [recipientsCopy originatedDeviceNumber];
  v7 = [(IMDTelephonyServiceSession *)self maxRecipientsForPhoneNumber:originatedDeviceNumber simID:originatedDeviceSIM];
  unsignedIntegerValue = v7;
  if (v7 == 0x7FFFFFFF || !v7)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v18 = 134217984;
        v19 = unsignedIntegerValue;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Carrier bundle value for maxReceipients was 0 or INT_MAX (%llu), falling back to iMessage maximum", &v18, 0xCu);
      }
    }

    v10 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
    v11 = [v10 objectForKey:@"md-max-chat-participants-incoming"];

    if (v11)
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 120;
    }
  }

  recipients = [recipientsCopy recipients];
  v13 = [recipients count];

  if (v13 > unsignedIntegerValue && IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      recipients2 = [recipientsCopy recipients];
      v16 = [recipients2 count];
      v18 = 134218240;
      v19 = v16;
      v20 = 2048;
      v21 = unsignedIntegerValue;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Filtering message due to excessive recipient count: %llu maxRecipients: %llu", &v18, 0x16u);
    }
  }

  return v13 > unsignedIntegerValue;
}

- (void)_processReceivedSMSMessage:(id)message storageContext:(id)context receivedViaRelay:(BOOL)relay serviceName:(id)name completionBlock:(id)block
{
  relayCopy = relay;
  v673 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  contextCopy = context;
  nameCopy = name;
  blockCopy = block;
  v11 = objc_alloc_init(IMDTelephonyIncomingMessageContext);
  if ([messageCopy has_sendEnabled])
  {
    sendEnabled = [messageCopy sendEnabled];
  }

  else
  {
    sendEnabled = 1;
  }

  v583 = v11;
  [(IMDTelephonyIncomingMessageContext *)v11 setIsSendEnabled:sendEnabled];
  v582 = messageCopy;
  originatedDeviceNumber = [messageCopy originatedDeviceNumber];
  [(IMDTelephonyIncomingMessageContext *)v583 setMyNumberString:originatedDeviceNumber];

  originatedDeviceSIM = [messageCopy originatedDeviceSIM];
  [(IMDTelephonyIncomingMessageContext *)v583 setMySIMIDString:originatedDeviceSIM];

  sender = [messageCopy sender];
  [(IMDTelephonyIncomingMessageContext *)v583 setSender:sender];

  sender2 = [messageCopy sender];
  [(IMDTelephonyIncomingMessageContext *)v583 setSenderUnformatted:sender2];

  v17 = [(IMDTelephonyServiceSession *)self _countryCodeForIncomingTextMessage:messageCopy];
  [(IMDTelephonyIncomingMessageContext *)v583 setCountryCode:v17];

  -[IMDTelephonyIncomingMessageContext setCapability:](v583, "setCapability:", [messageCopy iMessageCapability]);
  [(IMDTelephonyIncomingMessageContext *)v583 setWasRelayed:relayCopy];
  service = [(IMDServiceSession *)self service];
  v19 = [service supportsCapability:*MEMORY[0x277D1A560]];

  if (v19)
  {
    displayName = [messageCopy displayName];
    [(IMDTelephonyIncomingMessageContext *)v583 setDisplayName:displayName];
  }

  service2 = [(IMDServiceSession *)self service];
  v22 = [service2 supportsCapability:*MEMORY[0x277D1A558]];

  if (v22)
  {
    groupID = [messageCopy groupID];
    [(IMDTelephonyIncomingMessageContext *)v583 setGroupID:groupID];

    originalGroupID = [messageCopy originalGroupID];
    [(IMDTelephonyIncomingMessageContext *)v583 setOriginalGroupID:originalGroupID];
  }

  version = [messageCopy version];
  sender3 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
  v26 = sender3 | version;

  if (v26)
  {
    mEMORY[0x277D1AA78] = [MEMORY[0x277D1AA78] sharedInstance];
    [mEMORY[0x277D1AA78] acquireAssertionToUnsuspendProcess];

    trackMessage = [messageCopy trackMessage];
    gUID = [messageCopy GUID];
    v31 = gUID;
    if (![gUID length])
    {
      v31 = StringGUID();
    }

    if (v31)
    {
      v32 = trackMessage;
    }

    else
    {
      v32 = 0;
    }

    if (v32 == 1)
    {
      v33 = +[IMMessagesToTrack sharedInstance];
      [v33 addMessagesID:v31];
    }

    v554 = v31;
    v34 = IMOSLoggingEnabled();
    v35 = v583;
    if (v34)
    {
      v36 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        sender4 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
        items = [messageCopy items];
        v39 = [items count];
        type = [messageCopy type];
        countryCode = [messageCopy countryCode];
        serviceCenter = [v582 serviceCenter];
        countryCode2 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
        displayName2 = [(IMDTelephonyIncomingMessageContext *)v583 displayName];
        *buf = 138413826;
        *&buf[4] = sender4;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        *&buf[22] = 2048;
        v667 = type;
        *v668 = 2112;
        *&v668[2] = countryCode;
        *&v668[10] = 2112;
        *&v668[12] = serviceCenter;
        v669 = 2112;
        v670 = countryCode2;
        v671 = 2112;
        v672 = displayName2;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "received message with sender: %@, %lu parts, type: %ld  msgCountryCode: %@ service center: %@  incoming code: %@ displayName: %@", buf, 0x48u);
      }

      v35 = v583;
    }

    sender5 = [(IMDTelephonyIncomingMessageContext *)v35 sender];
    v46 = [sender5 length] == 0;

    if (v46)
    {
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"Unknown" value:&stru_283F23018 table:@"SMSLocalizable"];
      [(IMDTelephonyIncomingMessageContext *)v583 setSender:v48];

      sender6 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
      [(IMDTelephonyIncomingMessageContext *)v583 setSenderUnformatted:sender6];
    }

    sender7 = [(IMDTelephonyIncomingMessageContext *)v583 sender];

    if (sender7)
    {
      sender8 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
      _appearsToBePhoneNumber = [sender8 _appearsToBePhoneNumber];

      sender9 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
      v54 = sender9;
      if (_appearsToBePhoneNumber)
      {
        countryCode3 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
        v56 = IMPhoneNumberRefCopyForPhoneNumber();

        v57 = IMNormalizedPhoneNumberForCFPhoneNumberRef();
        v58 = IMDTelephonyServiceLogHandle(v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          sender10 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
          *buf = 138412546;
          *&buf[4] = v56;
          *&buf[12] = 2112;
          *&buf[14] = sender10;
          _os_log_impl(&dword_22B4CC000, v58, OS_LOG_TYPE_DEFAULT, "Created number ref: %@  for ID: %@", buf, 0x16u);
        }

        v61 = IMDTelephonyServiceLogHandle(v60);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          countryCode4 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
          *buf = 138412290;
          *&buf[4] = countryCode4;
          _os_log_impl(&dword_22B4CC000, v61, OS_LOG_TYPE_DEFAULT, "    => Country code: %@", buf, 0xCu);
        }

        v64 = IMDTelephonyServiceLogHandle(v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_DEFAULT, "      => Normalized: %@", buf, 0xCu);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v65 = [v57 length];
      }

      else
      {
        _appearsToBeEmail = [sender9 _appearsToBeEmail];

        if (!_appearsToBeEmail)
        {
          goto LABEL_44;
        }

        sender11 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
        v57 = IMNormalizeFormattedString();

        v65 = [v57 length];
      }

      if (v65)
      {
        [(IMDTelephonyIncomingMessageContext *)v583 setSender:v57];
      }
    }

LABEL_44:
    displayName3 = [(IMDTelephonyIncomingMessageContext *)v583 displayName];
    if (!displayName3)
    {
      displayName3 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
      if (([displayName3 __im_isChatBotPatterned] & 1) == 0)
      {
        if (IMShouldHandleInternalPhishingAttempts())
        {
          sender12 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
          if (IMStringIsEmail())
          {
            sender13 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
            v665 = sender13;
            v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v665 count:1];
            if (IMDAreAllAliasesUnknown())
            {
              v72 = IMGetDomainBoolForKey();

              if ((v72 & 1) == 0)
              {
                v74 = IMDTelephonyServiceLogHandle(v73);
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  sender14 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                  *buf = 138412290;
                  *&buf[4] = sender14;
                  _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_DEFAULT, "*** Blocking likely phishing SMS message from sender: %@", buf, 0xCu);
                }

                if (!blockCopy)
                {
                  goto LABEL_547;
                }

                goto LABEL_79;
              }

LABEL_57:
              sender15 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
              _stripFZIDPrefix = [sender15 _stripFZIDPrefix];
              v78 = IMPhoneNumberRefCopyForPhoneNumber();
              if (v78)
              {
                v79 = CMFItemCreateWithPhoneNumber();
                IsItemBlocked = CMFBlockListIsItemBlocked();
                CFRelease(v78);
                if (v79)
                {
                  CFRelease(v79);
                  if (IsItemBlocked)
                  {
LABEL_60:
                    v81 = 1;
LABEL_64:
                    if (IMOSLoggingEnabled())
                    {
                      v83 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                      {
                        v84 = @"NO";
                        if (v81)
                        {
                          v84 = @"YES";
                        }

                        *buf = 138412546;
                        *&buf[4] = sender15;
                        *&buf[12] = 2112;
                        *&buf[14] = v84;
                        _os_log_impl(&dword_22B4CC000, v83, OS_LOG_TYPE_INFO, "filtering message for handle: %@ = %@", buf, 0x16u);
                      }
                    }

                    if (v81)
                    {
                      v86 = IMDTelephonyServiceLogHandle(v85);
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                      {
                        sender16 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                        *buf = 138412290;
                        *&buf[4] = sender16;
                        _os_log_impl(&dword_22B4CC000, v86, OS_LOG_TYPE_DEFAULT, "*** Blocking message from sender: %@", buf, 0xCu);
                      }

                      if (!blockCopy)
                      {
                        goto LABEL_547;
                      }

                      goto LABEL_79;
                    }

                    v88 = [(IMDTelephonyServiceSession *)self incomingMessageHasTooManyRecipients:v582];
                    if (v88)
                    {
                      v89 = IMDTelephonyServiceLogHandle(v88);
                      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                      {
                        sender17 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                        *buf = 138412290;
                        *&buf[4] = sender17;
                        _os_log_impl(&dword_22B4CC000, v89, OS_LOG_TYPE_DEFAULT, "*** Blocking message with too many participants from sender: %@", buf, 0xCu);
                      }

                      if (!blockCopy)
                      {
                        goto LABEL_547;
                      }

LABEL_79:
                      (*(blockCopy + 2))(blockCopy, 0, v554, 0);
LABEL_547:

                      goto LABEL_548;
                    }

                    if ([v582 type])
                    {
                      replaceMessage = 0;
                    }

                    else
                    {
                      replaceMessage = [v582 replaceMessage];
                    }

                    v91 = objc_alloc(MEMORY[0x277CBEB38]);
                    items2 = [v582 items];
                    v584 = [v91 initWithCapacity:{objc_msgSend(items2, "count")}];

                    v93 = objc_alloc(MEMORY[0x277CBEB38]);
                    items3 = [v582 items];
                    v589 = [v93 initWithCapacity:{objc_msgSend(items3, "count")}];

                    v95 = objc_alloc(MEMORY[0x277CBEB38]);
                    items4 = [v582 items];
                    v549 = [v95 initWithCapacity:{objc_msgSend(items4, "count")}];

                    v97 = objc_alloc(MEMORY[0x277CBEB18]);
                    items5 = [v582 items];
                    v585 = [v97 initWithCapacity:{objc_msgSend(items5, "count")}];

                    v547 = objc_alloc_init(MEMORY[0x277CCAB68]);
                    v548 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v650 = 0u;
                    v649 = 0u;
                    v648 = 0u;
                    v647 = 0u;
                    obj = [v582 items];
                    v99 = [obj countByEnumeratingWithState:&v647 objects:v664 count:16];
                    v553 = v99;
                    if (!v99)
                    {
                      v550 = 0;
                      goto LABEL_281;
                    }

                    v550 = 0;
                    v552 = *v648;
                    v543 = *MEMORY[0x277D19730];
                    v546 = *MEMORY[0x277D1A4E0];
                    v545 = *MEMORY[0x277D19998];
                    while (1)
                    {
                      v100 = 0;
                      do
                      {
                        if (*v648 != v552)
                        {
                          v101 = v100;
                          objc_enumerationMutation(obj);
                          v100 = v101;
                        }

                        v555 = v100;
                        v102 = *(*(&v647 + 1) + 8 * v100);
                        v103 = IMDTelephonyServiceLogHandle(v99);
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_22B4CC000, v103, OS_LOG_TYPE_DEFAULT, "  Part:", buf, 2u);
                        }

                        v105 = IMDTelephonyServiceLogHandle(v104);
                        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                        {
                          contentType = [v102 contentType];
                          *buf = 138412290;
                          *&buf[4] = contentType;
                          _os_log_impl(&dword_22B4CC000, v105, OS_LOG_TYPE_DEFAULT, "      content type: %@", buf, 0xCu);
                        }

                        v108 = IMDTelephonyServiceLogHandle(v107);
                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                        {
                          contentId = [v102 contentId];
                          *buf = 138412290;
                          *&buf[4] = contentId;
                          _os_log_impl(&dword_22B4CC000, v108, OS_LOG_TYPE_DEFAULT, "        content ID: %@", buf, 0xCu);
                        }

                        v111 = IMDTelephonyServiceLogHandle(v110);
                        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                        {
                          contentLocation = [v102 contentLocation];
                          *buf = 138412290;
                          *&buf[4] = contentLocation;
                          _os_log_impl(&dword_22B4CC000, v111, OS_LOG_TYPE_DEFAULT, "  content location: %@", buf, 0xCu);
                        }

                        contentId2 = [v102 contentId];
                        v560 = SMSCopySanitizedContentID(contentId2);

                        contentLocation2 = [v102 contentLocation];
                        v562 = SMSCopySanitizedContentLocation(contentLocation2);

                        v116 = IMDTelephonyServiceLogHandle(v115);
                        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v560;
                          *&buf[12] = 2112;
                          *&buf[14] = v562;
                          _os_log_impl(&dword_22B4CC000, v116, OS_LOG_TYPE_DEFAULT, "Sanitized ID %@  sanitized loc %@", buf, 0x16u);
                        }

                        content = [v102 content];
                        type2 = [content type];

                        if (type2 <= 1)
                        {
                          if (type2)
                          {
                            if (type2 == 1)
                            {
                              content2 = [v102 content];
                              smil = [content2 smil];
                              oslog = [smil contentBody];

                              v137 = IMDTelephonyServiceLogHandle(v136);
                              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_22B4CC000, v137, OS_LOG_TYPE_DEFAULT, "  * This is a SMIL part", buf, 2u);
                              }

                              v139 = IMDTelephonyServiceLogHandle(v138);
                              if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                              {
                                v140 = MarcoLoggingStringForMessageData();
                                *buf = 138412290;
                                *&buf[4] = v140;
                                _os_log_impl(&dword_22B4CC000, v139, OS_LOG_TYPE_DEFAULT, "  * Out body: %@", buf, 0xCu);
                              }

                              v141 = [oslog length];
                              if (!v141 || (-[NSObject string](oslog, "string"), v142 = objc_claimAutoreleasedReturnValue(), [v142 trimmedString], v143 = objc_claimAutoreleasedReturnValue(), v144 = objc_msgSend(v143, "length") == 0, v143, v142, v144))
                              {
                                v185 = IMDTelephonyServiceLogHandle(v141);
                                if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&dword_22B4CC000, v185, OS_LOG_TYPE_DEFAULT, "  => Empty", buf, 2u);
                                }
                              }

                              else
                              {
                                v145 = IMDTelephonyServiceLogHandle(v141);
                                if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                                {
                                  v146 = MarcoLoggingStringForMessageData();
                                  *buf = 138412290;
                                  *&buf[4] = v146;
                                  _os_log_impl(&dword_22B4CC000, v145, OS_LOG_TYPE_DEFAULT, "  => Appending body %@", buf, 0xCu);
                                }

                                if ([v560 length])
                                {
                                  [v584 setObject:oslog forKey:v560];
                                }

                                if ([v562 length])
                                {
                                  [v589 setObject:oslog forKey:v562];
                                }

                                [v585 addObject:oslog];
                              }

                              cf1a = objc_alloc_init(MEMORY[0x277CBEB18]);
                              v642 = 0u;
                              v641 = 0u;
                              v640 = 0u;
                              v639 = 0u;
                              content3 = [v102 content];
                              smil2 = [content3 smil];
                              orderedParts = [smil2 orderedParts];

                              v579 = [orderedParts countByEnumeratingWithState:&v639 objects:v662 count:16];
                              if (v579)
                              {
                                v571 = *v640;
                                do
                                {
                                  v188 = 0;
                                  do
                                  {
                                    if (*v640 != v571)
                                    {
                                      v189 = v188;
                                      objc_enumerationMutation(orderedParts);
                                      v188 = v189;
                                    }

                                    v587 = v188;
                                    v190 = *(*(&v639 + 1) + 8 * v188);
                                    v191 = objc_alloc_init(IMDSMSPart);
                                    v638 = 0u;
                                    v637 = 0u;
                                    v636 = 0u;
                                    v635 = 0u;
                                    textParts = [v190 textParts];
                                    v193 = [textParts countByEnumeratingWithState:&v635 objects:v661 count:16];
                                    if (v193)
                                    {
                                      v194 = *v636;
                                      do
                                      {
                                        for (i = 0; i != v193; ++i)
                                        {
                                          if (*v636 != v194)
                                          {
                                            objc_enumerationMutation(textParts);
                                          }

                                          v196 = *(*(&v635 + 1) + 8 * i);
                                          v197 = [IMDSMSTextPart alloc];
                                          contentLocation3 = [v196 contentLocation];
                                          v199 = [(IMDSMSTextPart *)v197 initWithContentLocation:contentLocation3];

                                          text = [v196 text];
                                          [(IMDSMSTextPart *)v199 appendText:text];

                                          [(IMDSMSPart *)v191 addTextPart:v199];
                                        }

                                        v193 = [textParts countByEnumeratingWithState:&v635 objects:v661 count:16];
                                      }

                                      while (v193);
                                    }

                                    v634 = 0u;
                                    v633 = 0u;
                                    v632 = 0u;
                                    v631 = 0u;
                                    attachmentParts = [v190 attachmentParts];
                                    v202 = [attachmentParts countByEnumeratingWithState:&v631 objects:v660 count:16];
                                    if (v202)
                                    {
                                      v203 = *v632;
                                      do
                                      {
                                        for (j = 0; j != v202; ++j)
                                        {
                                          if (*v632 != v203)
                                          {
                                            objc_enumerationMutation(attachmentParts);
                                          }

                                          v205 = *(*(&v631 + 1) + 8 * j);
                                          v206 = [IMDSMSAttachmentPart alloc];
                                          contentLocation4 = [v205 contentLocation];
                                          v208 = [(IMDSMSAttachmentPart *)v206 initWithContentLocation:contentLocation4];

                                          [(IMDSMSPart *)v191 addAttachmentPart:v208];
                                        }

                                        v202 = [attachmentParts countByEnumeratingWithState:&v631 objects:v660 count:16];
                                      }

                                      while (v202);
                                    }

                                    [cf1a addObject:v191];
                                    v188 = v587 + 1;
                                  }

                                  while (v587 + 1 != v579);
                                  v579 = [orderedParts countByEnumeratingWithState:&v639 objects:v662 count:16];
                                }

                                while (v579);
                              }

                              if ([cf1a count])
                              {
                                if (v550)
                                {
                                  if (IMOSLoggingEnabled())
                                  {
                                    v209 = OSLogHandleForIMFoundationCategory();
                                    if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
                                    {
                                      *buf = 0;
                                      _os_log_impl(&dword_22B4CC000, v209, OS_LOG_TYPE_INFO, "Two SMILs found in MMS - this should not happen!", buf, 2u);
                                    }
                                  }

                                  v210 = [v550 mutableCopy];
                                  [v210 addObjectsFromArray:cf1a];
                                  v211 = v210;
                                }

                                else
                                {
                                  v211 = cf1a;
                                }

                                v219 = v211;

                                v550 = v219;
                              }

                              else
                              {
                                v219 = cf1a;
                              }

LABEL_273:

                              goto LABEL_274;
                            }

LABEL_150:
                            oslog = IMDTelephonyServiceLogHandle(v119);
                            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                            {
                              content4 = [v102 content];
                              type3 = [content4 type];
                              *buf = 134217984;
                              *&buf[4] = type3;
                              _os_log_impl(&dword_22B4CC000, oslog, OS_LOG_TYPE_DEFAULT, "Unhandled BlastDoorSMSCTPartContent: %ld", buf, 0xCu);
                            }

                            goto LABEL_274;
                          }

                          content5 = [v102 content];
                          plain = [content5 plain];
                          plainTextContentBody = [plain plainTextContentBody];

                          if (plainTextContentBody)
                          {
                            oslog = objc_alloc_init(MEMORY[0x277CCAB68]);
                            content6 = [v102 content];
                            plain2 = [content6 plain];
                            plainTextContentBody2 = [plain2 plainTextContentBody];
                            [oslog appendString:plainTextContentBody2];

                            content7 = [v102 content];
                            plain3 = [content7 plain];
                            plainTextContentBody3 = [plain3 plainTextContentBody];
                            stringByRemovingWhitespace = [plainTextContentBody3 stringByRemovingWhitespace];
                            [v547 appendString:stringByRemovingWhitespace];
                          }

                          else
                          {
                            oslog = 0;
                          }

                          v212 = IMDTelephonyServiceLogHandle(v175);
                          if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                          {
                            v213 = MarcoLoggingStringForMessageData();
                            *buf = 138412290;
                            *&buf[4] = v213;
                            _os_log_impl(&dword_22B4CC000, v212, OS_LOG_TYPE_DEFAULT, "  * This is a text part (%@)", buf, 0xCu);
                          }

                          if ([oslog length])
                          {
                            newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
                            v215 = [newlineCharacterSet characterIsMember:{-[NSObject characterAtIndex:](oslog, "characterAtIndex:", -[NSObject length](oslog, "length") - 1)}];

                            if ((v215 & 1) == 0)
                            {
                              v217 = IMDTelephonyServiceLogHandle(v216);
                              if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_22B4CC000, v217, OS_LOG_TYPE_DEFAULT, "  * There's no trailing newline here, we'll make sure to append one next", buf, 2u);
                              }

                              [oslog appendString:@"\n"];
                            }

                            v218 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:oslog];
                            v219 = v218;
                            if (v218)
                            {
                              __im_attributedStringByAssigningMessagePartNumbers = [v218 __im_attributedStringByAssigningMessagePartNumbers];
                              if (__im_attributedStringByAssigningMessagePartNumbers)
                              {
                                if ([v560 length])
                                {
                                  [v584 setObject:__im_attributedStringByAssigningMessagePartNumbers forKey:v560];
                                }

                                if ([v562 length])
                                {
                                  [v589 setObject:__im_attributedStringByAssigningMessagePartNumbers forKey:v562];
                                }

                                [v585 addObject:__im_attributedStringByAssigningMessagePartNumbers];
                              }
                            }

                            goto LABEL_273;
                          }
                        }

                        else
                        {
                          switch(type2)
                          {
                            case 2:
                              v147 = IMDTelephonyServiceLogHandle(v119);
                              if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_22B4CC000, v147, OS_LOG_TYPE_DEFAULT, "  * This is an attachment part", buf, 2u);
                              }

                              oslog = +[IMDFileTransferCenter sharedInstance];
                              v148 = v562;
                              v149 = v148;
                              if (![v148 length])
                              {
                                v149 = v560;
                              }

                              cf1 = [v102 contentType];
                              content8 = [v102 content];
                              attachment = [content8 attachment];
                              contentData = [attachment contentData];

                              content9 = [v102 content];
                              attachment2 = [content9 attachment];
                              richCardOriginalGuid = [attachment2 richCardOriginalGuid];

                              stringByRemovingURLEscapes = [v149 stringByRemovingURLEscapes];

                              if (![(__CFString *)stringByRemovingURLEscapes length])
                              {
                                v156 = IMDTelephonyServiceLogHandle(0);
                                if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&dword_22B4CC000, v156, OS_LOG_TYPE_DEFAULT, "  *** Empty filename!", buf, 2u);
                                }

                                stringByRemovingURLEscapes = @"Attachment";
                              }

                              pathExtension = [(__CFString *)stringByRemovingURLEscapes pathExtension];
                              v158 = [pathExtension length] == 0;

                              if (v158)
                              {
                                v223 = IMDTelephonyServiceLogHandle(v159);
                                if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = stringByRemovingURLEscapes;
                                  _os_log_impl(&dword_22B4CC000, v223, OS_LOG_TYPE_DEFAULT, "  *** Filename has no extension: %@", buf, 0xCu);
                                }

                                defaultHFSFileManager = [MEMORY[0x277D19250] defaultHFSFileManager];
                                v225 = [defaultHFSFileManager pathExtensionForMIMEType:cf1];

                                v227 = IMDTelephonyServiceLogHandle(v226);
                                if (os_log_type_enabled(v227, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v225;
                                  _os_log_impl(&dword_22B4CC000, v227, OS_LOG_TYPE_DEFAULT, "  Proposed extension: %@", buf, 0xCu);
                                }

                                if ([v225 length])
                                {
                                  v228 = [(__CFString *)stringByRemovingURLEscapes stringByAppendingPathExtension:v225];

                                  v230 = IMDTelephonyServiceLogHandle(v229);
                                  if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 138412290;
                                    *&buf[4] = v228;
                                    _os_log_impl(&dword_22B4CC000, v230, OS_LOG_TYPE_DEFAULT, "  * Replacement filename: %@", buf, 0xCu);
                                  }
                                }

                                else
                                {
                                  v228 = stringByRemovingURLEscapes;
                                }

                                v160 = v228;
                              }

                              else
                              {
                                v160 = stringByRemovingURLEscapes;
                              }

                              v231 = v160;
                              lastPathComponent = [v160 lastPathComponent];
                              v232 = -[NSObject guidForNewIncomingTransferWithFilename:isDirectory:totalBytes:hfsType:hfsCreator:hfsFlags:](oslog, "guidForNewIncomingTransferWithFilename:isDirectory:totalBytes:hfsType:hfsCreator:hfsFlags:", lastPathComponent, 0, [contentData length], 0, 0, 0);
                              v233 = IMDTelephonyServiceLogHandle(v232);
                              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v231;
                                _os_log_impl(&dword_22B4CC000, v233, OS_LOG_TYPE_DEFAULT, "         filename: %@", buf, 0xCu);
                              }

                              v235 = IMDTelephonyServiceLogHandle(v234);
                              if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                              {
                                v236 = [contentData length];
                                *buf = 67109120;
                                *&buf[4] = v236;
                                _os_log_impl(&dword_22B4CC000, v235, OS_LOG_TYPE_DEFAULT, "      data length: %d", buf, 8u);
                              }

                              v238 = IMDTelephonyServiceLogHandle(v237);
                              if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = lastPathComponent;
                                _os_log_impl(&dword_22B4CC000, v238, OS_LOG_TYPE_DEFAULT, "    transfer name: %@", buf, 0xCu);
                              }

                              v240 = IMDTelephonyServiceLogHandle(v239);
                              if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v232;
                                _os_log_impl(&dword_22B4CC000, v240, OS_LOG_TYPE_DEFAULT, "             guid: %@", buf, 0xCu);
                              }

                              *buf = 0;
                              *&buf[8] = buf;
                              *&buf[16] = 0x3032000000;
                              v667 = sub_22B4D7830;
                              *v668 = sub_22B4D7980;
                              *&v668[8] = 0;
                              if (v232)
                              {
                                mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                isRelayChatBotEnabled = [mEMORY[0x277D1A9B8] isRelayChatBotEnabled];

                                if (richCardOriginalGuid)
                                {
                                  v243 = isRelayChatBotEnabled;
                                }

                                else
                                {
                                  v243 = 0;
                                }

                                if (v243 == 1)
                                {
                                  [v549 setObject:v232 forKeyedSubscript:richCardOriginalGuid];
                                }

                                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                                v245 = [defaultManager im_randomTemporaryFileURLWithFileName:lastPathComponent];

                                v247 = IMDTelephonyServiceLogHandle(v246);
                                if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v651 = 138412290;
                                  *v652 = v245;
                                  _os_log_impl(&dword_22B4CC000, v247, OS_LOG_TYPE_DEFAULT, "  => Writing data to path: %@", v651, 0xCu);
                                }

                                v248 = v583;
                                if (([contentData writeToURL:v245 atomically:1] & 1) == 0)
                                {
                                  v248 = v583;
                                  if (IMOSLoggingEnabled())
                                  {
                                    v249 = OSLogHandleForIMFoundationCategory();
                                    if (os_log_type_enabled(v249, OS_LOG_TYPE_INFO))
                                    {
                                      v250 = [contentData length];
                                      *v651 = 67109378;
                                      *v652 = v250;
                                      *&v652[4] = 2112;
                                      *&v652[6] = v245;
                                      _os_log_impl(&dword_22B4CC000, v249, OS_LOG_TYPE_INFO, "Failed to write data of length: %d   to path: %@", v651, 0x12u);
                                    }

                                    v248 = v583;
                                  }
                                }

                                aBlock[0] = MEMORY[0x277D85DD0];
                                aBlock[1] = 3221225472;
                                aBlock[2] = sub_22B6C77B4;
                                aBlock[3] = &unk_2787082E8;
                                v625 = oslog;
                                v251 = v232;
                                v626 = v251;
                                selfCopy = self;
                                v628 = v248;
                                v630 = buf;
                                v629 = v548;
                                v252 = _Block_copy(aBlock);
                                if ([MEMORY[0x277D1A9A0] deviceIsLockedDown])
                                {
                                  mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
                                  v620[0] = MEMORY[0x277D85DD0];
                                  v620[1] = 3221225472;
                                  v620[2] = sub_22B6C7C58;
                                  v620[3] = &unk_278708310;
                                  v621 = v251;
                                  v254 = v245;
                                  v622 = v254;
                                  v623 = v252;
                                  [mEMORY[0x277D1ADE0] generateSafeRender:v254 completionBlock:v620];
                                }

                                else
                                {
                                  (*(v252 + 2))(v252, 1, v245, 0);
                                }
                              }

                              else if (IMOSLoggingEnabled())
                              {
                                v255 = OSLogHandleForIMFoundationCategory();
                                if (os_log_type_enabled(v255, OS_LOG_TYPE_INFO))
                                {
                                  *v651 = 138412290;
                                  *v652 = v102;
                                  _os_log_impl(&dword_22B4CC000, v255, OS_LOG_TYPE_INFO, "Failed building file transfer guid for part: %@", v651, 0xCu);
                                }
                              }

                              if (*(*&buf[8] + 40))
                              {
                                v256 = +[IMDMessageStore sharedInstance];
                                v257 = [v256 messageWithGUID:v554];

                                if ([(IMDTelephonyServiceSession *)self _allowedToGeneratePreviewForTransfer:*(*&buf[8] + 40) smsMessage:v582])
                                {
                                  [(IMDTelephonyServiceSession *)self _generatePreviewForTransfer:*(*&buf[8] + 40) message:v257];
                                }

                                mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                isRelayChatBotEnabled2 = [mEMORY[0x277D1A9B8]2 isRelayChatBotEnabled];
                                if (richCardOriginalGuid)
                                {
                                  v260 = isRelayChatBotEnabled2;
                                }

                                else
                                {
                                  v260 = 0;
                                }

                                if ((v260 & 1) == 0)
                                {
                                  v261 = MEMORY[0x277CCA898];
                                  guid = [*(*&buf[8] + 40) guid];
                                  v659 = guid;
                                  v263 = [MEMORY[0x277CBEA60] arrayWithObjects:&v659 count:1];
                                  v264 = [v261 __im_attributedStringWithFileTransfers:v263];
                                  __im_attributedStringByAssigningMessagePartNumbers2 = [v264 __im_attributedStringByAssigningMessagePartNumbers];

                                  if ([v560 length])
                                  {
                                    [v584 setObject:__im_attributedStringByAssigningMessagePartNumbers2 forKey:v560];
                                  }

                                  if ([v148 length])
                                  {
                                    [v589 setObject:__im_attributedStringByAssigningMessagePartNumbers2 forKey:v148];
                                  }

                                  [v585 addObject:__im_attributedStringByAssigningMessagePartNumbers2];
                                }

                                balloonBundleID = [v257 balloonBundleID];
                                v267 = [balloonBundleID containsString:v543];

                                if (v267)
                                {
                                  richLinkURLs = [v257 richLinkURLs];
                                  lastObject = [richLinkURLs lastObject];

                                  if (lastObject || (v270 = MEMORY[0x277CBEBC0], [v257 body], v271 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v271, "string"), v272 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v270, "URLWithString:", v272), lastObject = objc_claimAutoreleasedReturnValue(), v272, v271, lastObject))
                                  {
                                    mEMORY[0x277D1AC40] = [MEMORY[0x277D1AC40] sharedManager];
                                    v619 = 0;
                                    v618 = 0;
                                    [mEMORY[0x277D1AC40] appNameAndBundleIDFoURL:lastObject outAppName:&v619 outBundleID:&v618];
                                    v275 = v619;
                                    v276 = v618;

                                    if ([v275 length])
                                    {
                                      [v257 setSwyAppName:v275];
                                    }

                                    if ([v276 length])
                                    {
                                      [v257 setSwyBundleID:v276];
                                    }
                                  }

                                  else
                                  {
                                    lastObject = IMDTelephonyServiceLogHandle(v273);
                                    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v651 = 138412290;
                                      *v652 = v554;
                                      _os_log_impl(&dword_22B4CC000, lastObject, OS_LOG_TYPE_DEFAULT, "unable to extract URL for message identified as RichLink: %@", v651, 0xCu);
                                    }
                                  }
                                }
                              }

                              _Block_object_dispose(buf, 8);

                              break;
                            case 3:
                              content10 = [v102 content];
                              attributedChipList = [content10 attributedChipList];
                              oslog = [attributedChipList chipList];

                              v163 = [objc_alloc(MEMORY[0x277D1A928]) initWithDictionary:oslog];
                              v164 = objc_alloc(MEMORY[0x277CCA898]);
                              dictionaryRepresentation = [v163 dictionaryRepresentation];
                              v166 = [v164 initWithString:v545 attributes:dictionaryRepresentation];

                              if ([v166 length])
                              {
                                if (IMOSLoggingEnabled())
                                {
                                  v167 = OSLogHandleForIMFoundationCategory();
                                  if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
                                  {
                                    suggestedReplies = [v163 suggestedReplies];
                                    v169 = [suggestedReplies count];
                                    suggestedActions = [v163 suggestedActions];
                                    v171 = [suggestedActions count];
                                    *buf = 134218240;
                                    *&buf[4] = v169;
                                    *&buf[12] = 2048;
                                    *&buf[14] = v171;
                                    _os_log_impl(&dword_22B4CC000, v167, OS_LOG_TYPE_INFO, "Received chiplist, suggested relies: %lu, actions: %lu", buf, 0x16u);
                                  }
                                }

                                [v585 addObject:v166];
                              }

                              else
                              {
                                v222 = IMLogHandleForCategory();
                                if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = oslog;
                                  _os_log_error_impl(&dword_22B4CC000, v222, OS_LOG_TYPE_ERROR, "Failed to read chiplist: %@", buf, 0xCu);
                                }
                              }

                              break;
                            case 4:
                              content11 = [v102 content];
                              attributedRichCards = [content11 attributedRichCards];
                              oslog = [attributedRichCards richCards];

                              v122 = [objc_alloc(MEMORY[0x277D1AB58]) initWithDictionary:oslog];
                              v123 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v546 attributes:oslog];
                              if ([v123 length])
                              {
                                if (IMOSLoggingEnabled())
                                {
                                  v124 = OSLogHandleForIMFoundationCategory();
                                  if (os_log_type_enabled(v124, OS_LOG_TYPE_INFO))
                                  {
                                    cards = [v122 cards];
                                    v126 = [cards count];
                                    *buf = 134217984;
                                    *&buf[4] = v126;
                                    _os_log_impl(&dword_22B4CC000, v124, OS_LOG_TYPE_INFO, "Received richcards, %lu cards", buf, 0xCu);
                                  }
                                }

                                if ([v549 count])
                                {
                                  v646 = 0u;
                                  v645 = 0u;
                                  v644 = 0u;
                                  v643 = 0u;
                                  v127 = v549;
                                  v128 = [v127 countByEnumeratingWithState:&v643 objects:v663 count:16];
                                  if (v128)
                                  {
                                    v129 = *v644;
                                    do
                                    {
                                      v130 = 0;
                                      v131 = v123;
                                      do
                                      {
                                        if (*v644 != v129)
                                        {
                                          objc_enumerationMutation(v127);
                                        }

                                        v132 = *(*(&v643 + 1) + 8 * v130);
                                        v133 = [v127 objectForKeyedSubscript:v132];
                                        v123 = [v131 __im_attributedStringByReplacingRichCardGUID:v132 withUpdatedTransferGUID:v133];

                                        ++v130;
                                        v131 = v123;
                                      }

                                      while (v128 != v130);
                                      v128 = [v127 countByEnumeratingWithState:&v643 objects:v663 count:16];
                                    }

                                    while (v128);
                                  }
                                }

                                [v585 addObject:v123];
                              }

                              else
                              {
                                v221 = IMLogHandleForCategory();
                                if (os_log_type_enabled(v221, OS_LOG_TYPE_ERROR))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = oslog;
                                  _os_log_error_impl(&dword_22B4CC000, v221, OS_LOG_TYPE_ERROR, "Failed to read richcards: %@", buf, 0xCu);
                                }
                              }

                              break;
                            default:
                              goto LABEL_150;
                          }
                        }

LABEL_274:

                        v100 = v555 + 1;
                      }

                      while (v555 + 1 != v553);
                      v99 = [obj countByEnumeratingWithState:&v647 objects:v664 count:16];
                      v553 = v99;
                      if (!v99)
                      {
LABEL_281:

                        v278 = IMDTelephonyServiceLogHandle(v277);
                        if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_22B4CC000, v278, OS_LOG_TYPE_DEFAULT, "After parsing the SMS, we have:", buf, 2u);
                        }

                        v280 = IMDTelephonyServiceLogHandle(v279);
                        if (os_log_type_enabled(v280, OS_LOG_TYPE_DEFAULT))
                        {
                          v281 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v281;
                          _os_log_impl(&dword_22B4CC000, v280, OS_LOG_TYPE_DEFAULT, "  orderedParts = %@", buf, 0xCu);
                        }

                        v283 = IMDTelephonyServiceLogHandle(v282);
                        if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                        {
                          v284 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v284;
                          _os_log_impl(&dword_22B4CC000, v283, OS_LOG_TYPE_DEFAULT, "  contentIDToParts = %@", buf, 0xCu);
                        }

                        v286 = IMDTelephonyServiceLogHandle(v285);
                        if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                        {
                          v287 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v287;
                          _os_log_impl(&dword_22B4CC000, v286, OS_LOG_TYPE_DEFAULT, "  contentLocToParts = %@", buf, 0xCu);
                        }

                        v289 = IMDTelephonyServiceLogHandle(v288);
                        if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
                        {
                          v290 = MarcoLoggingStringForMessageData();
                          *buf = 138412290;
                          *&buf[4] = v290;
                          _os_log_impl(&dword_22B4CC000, v289, OS_LOG_TYPE_DEFAULT, "  allParts = %@", buf, 0xCu);
                        }

                        v291 = objc_alloc_init(MEMORY[0x277CCAB48]);
                        if ([v550 count])
                        {
                          v616 = 0u;
                          v617 = 0u;
                          v614 = 0u;
                          v615 = 0u;
                          v569 = v550;
                          v292 = [v569 countByEnumeratingWithState:&v614 objects:v658 count:16];
                          cf1b = v292;
                          if (v292)
                          {
                            v572 = *v615;
                            do
                            {
                              v293 = 0;
                              do
                              {
                                if (*v615 != v572)
                                {
                                  v294 = v293;
                                  objc_enumerationMutation(v569);
                                  v293 = v294;
                                }

                                v580 = v293;
                                v295 = *(*(&v614 + 1) + 8 * v293);
                                v296 = IMDTelephonyServiceLogHandle(v292);
                                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                                {
                                  v297 = MarcoLoggingStringForMessageData();
                                  *buf = 138412290;
                                  *&buf[4] = v297;
                                  _os_log_impl(&dword_22B4CC000, v296, OS_LOG_TYPE_DEFAULT, "Examining part %@", buf, 0xCu);
                                }

                                v612 = 0u;
                                v613 = 0u;
                                v610 = 0u;
                                v611 = 0u;
                                attachmentParts2 = [v295 attachmentParts];
                                v299 = [attachmentParts2 countByEnumeratingWithState:&v610 objects:v657 count:16];
                                v300 = v299;
                                if (v299)
                                {
                                  v301 = *v611;
                                  do
                                  {
                                    v302 = 0;
                                    do
                                    {
                                      if (*v611 != v301)
                                      {
                                        objc_enumerationMutation(attachmentParts2);
                                      }

                                      v303 = *(*(&v610 + 1) + 8 * v302);
                                      v304 = IMDTelephonyServiceLogHandle(v299);
                                      if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 138412290;
                                        *&buf[4] = v303;
                                        _os_log_impl(&dword_22B4CC000, v304, OS_LOG_TYPE_DEFAULT, " Found attachmentPart %@", buf, 0xCu);
                                      }

                                      contentLocation5 = [v303 contentLocation];
                                      v306 = [v589 objectForKey:contentLocation5];

                                      if (v306 || ([v303 contentLocation], v307 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v584, "objectForKey:", v307), v306 = objc_claimAutoreleasedReturnValue(), v307, v306))
                                      {
                                        [v291 appendAttributedString:v306];
                                        [v585 removeObjectIdenticalTo:v306];
                                      }

                                      else
                                      {
                                        v306 = IMDTelephonyServiceLogHandle(v308);
                                        if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 0;
                                          _os_log_impl(&dword_22B4CC000, v306, OS_LOG_TYPE_DEFAULT, " Did not find attachment's attributed string!", buf, 2u);
                                        }
                                      }

                                      ++v302;
                                    }

                                    while (v300 != v302);
                                    v299 = [attachmentParts2 countByEnumeratingWithState:&v610 objects:v657 count:16];
                                    v300 = v299;
                                  }

                                  while (v299);
                                }

                                v608 = 0u;
                                v609 = 0u;
                                v606 = 0u;
                                v607 = 0u;
                                textParts2 = [v295 textParts];
                                v310 = [textParts2 countByEnumeratingWithState:&v606 objects:v656 count:16];
                                v311 = v310;
                                if (v310)
                                {
                                  v312 = *v607;
                                  do
                                  {
                                    v313 = 0;
                                    do
                                    {
                                      if (*v607 != v312)
                                      {
                                        objc_enumerationMutation(textParts2);
                                      }

                                      v314 = *(*(&v606 + 1) + 8 * v313);
                                      v315 = IMDTelephonyServiceLogHandle(v310);
                                      if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v316 = MarcoLoggingStringForMessageData();
                                        *buf = 138412290;
                                        *&buf[4] = v316;
                                        _os_log_impl(&dword_22B4CC000, v315, OS_LOG_TYPE_DEFAULT, " Found textPart %@", buf, 0xCu);
                                      }

                                      contentLocation6 = [v314 contentLocation];
                                      v318 = [v589 objectForKey:contentLocation6];

                                      if (v318 || ([v314 contentLocation], v320 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v584, "objectForKey:", v320), v318 = objc_claimAutoreleasedReturnValue(), v320, v318))
                                      {
                                        v321 = IMDTelephonyServiceLogHandle(v319);
                                        if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v322 = MarcoLoggingStringForMessageData();
                                          *buf = 138412290;
                                          *&buf[4] = v322;
                                          _os_log_impl(&dword_22B4CC000, v321, OS_LOG_TYPE_DEFAULT, " Appending text %@", buf, 0xCu);
                                        }

                                        [v291 appendAttributedString:v318];
                                        [v585 removeObjectIdenticalTo:v318];
                                      }

                                      else
                                      {
                                        v318 = IMDTelephonyServiceLogHandle(v319);
                                        if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
                                        {
                                          *buf = 0;
                                          _os_log_impl(&dword_22B4CC000, v318, OS_LOG_TYPE_DEFAULT, " Did not find textPart's attributed string!", buf, 2u);
                                        }
                                      }

                                      text2 = [v314 text];
                                      v324 = [text2 length];
                                      if (v324)
                                      {
                                        v325 = IMDTelephonyServiceLogHandle(v324);
                                        if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v326 = MarcoLoggingStringForMessageData();
                                          *buf = 138412290;
                                          *&buf[4] = v326;
                                          _os_log_impl(&dword_22B4CC000, v325, OS_LOG_TYPE_DEFAULT, " Found embedded text %@", buf, 0xCu);
                                        }

                                        v327 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:text2];
                                        [v291 appendAttributedString:v327];
                                      }

                                      ++v313;
                                    }

                                    while (v311 != v313);
                                    v310 = [textParts2 countByEnumeratingWithState:&v606 objects:v656 count:16];
                                    v311 = v310;
                                  }

                                  while (v310);
                                }

                                v293 = v580 + 1;
                              }

                              while ((v580 + 1) != cf1b);
                              v292 = [v569 countByEnumeratingWithState:&v614 objects:v658 count:16];
                              cf1b = v292;
                            }

                            while (v292);
                          }
                        }

                        v604 = 0u;
                        v605 = 0u;
                        v602 = 0u;
                        v603 = 0u;
                        v586 = v585;
                        v328 = [v586 countByEnumeratingWithState:&v602 objects:v655 count:16];
                        v329 = v328;
                        if (v328)
                        {
                          v330 = *v603;
                          do
                          {
                            v331 = 0;
                            do
                            {
                              if (*v603 != v330)
                              {
                                objc_enumerationMutation(v586);
                              }

                              v332 = *(*(&v602 + 1) + 8 * v331);
                              v333 = IMDTelephonyServiceLogHandle(v328);
                              if (os_log_type_enabled(v333, OS_LOG_TYPE_DEFAULT))
                              {
                                v334 = MarcoLoggingStringForMessageData();
                                *buf = 138412290;
                                *&buf[4] = v334;
                                _os_log_impl(&dword_22B4CC000, v333, OS_LOG_TYPE_DEFAULT, "Found unordered part: %@", buf, 0xCu);
                              }

                              v328 = [v291 appendAttributedString:v332];
                              ++v331;
                            }

                            while (v329 != v331);
                            v328 = [v586 countByEnumeratingWithState:&v602 objects:v655 count:16];
                            v329 = v328;
                          }

                          while (v328);
                        }

                        if ([v291 length])
                        {
                          newlineCharacterSet2 = [MEMORY[0x277CCA900] newlineCharacterSet];
                          string = [v291 string];
                          v337 = [newlineCharacterSet2 characterIsMember:{objc_msgSend(string, "characterAtIndex:", objc_msgSend(v291, "length") - 1)}];

                          if (v337)
                          {
                            v339 = IMDTelephonyServiceLogHandle(v338);
                            if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&dword_22B4CC000, v339, OS_LOG_TYPE_DEFAULT, "  * Trimming trailing newline", buf, 2u);
                            }

                            v340 = -1;
                            goto LABEL_352;
                          }

                          if ([v291 __im_hasChipList])
                          {
                            if ([v291 length] >= 2)
                            {
                              newlineCharacterSet3 = [MEMORY[0x277CCA900] newlineCharacterSet];
                              string2 = [v291 string];
                              v343 = [newlineCharacterSet3 characterIsMember:{objc_msgSend(string2, "characterAtIndex:", objc_msgSend(v291, "length") - 2)}];

                              if (v343)
                              {
                                mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                                isRelayChatBotEnabled3 = [mEMORY[0x277D1A9B8]3 isRelayChatBotEnabled];

                                if (isRelayChatBotEnabled3)
                                {
                                  v339 = IMDTelephonyServiceLogHandle(v346);
                                  if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 0;
                                    _os_log_impl(&dword_22B4CC000, v339, OS_LOG_TYPE_DEFAULT, "  * Trimming trailing newline for chat bot rich contents", buf, 2u);
                                  }

                                  v340 = -2;
LABEL_352:

                                  [v291 deleteCharactersInRange:{objc_msgSend(v291, "length") + v340, 1}];
                                }
                              }
                            }
                          }
                        }

                        v347 = [v291 length];
                        [v291 removeAttribute:*MEMORY[0x277D19160] range:{0, v347}];
                        __im_attributedStringByAssigningMessagePartNumbers3 = [v291 __im_attributedStringByAssigningMessagePartNumbers];
                        osloga = [__im_attributedStringByAssigningMessagePartNumbers3 mutableCopy];

                        if (IMSharedHelperDeviceIsAltAccount())
                        {
                          mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
                          ctPhoneNumber = [mEMORY[0x277D1A908] ctPhoneNumber];
                          goto LABEL_364;
                        }

                        mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
                        telephoneNumber = [mEMORY[0x277D07DB0] telephoneNumber];

                        if (telephoneNumber)
                        {
                          mEMORY[0x277D1A908] = [MEMORY[0x277D07DB0] sharedInstance];
                          ctPhoneNumber = [mEMORY[0x277D1A908] telephoneNumber];
LABEL_364:
                          v352 = ctPhoneNumber;
                          countryCode5 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
                          cf1c = IMPhoneNumberRefCopyForPhoneNumber();
                        }

                        else
                        {
                          cf1c = 0;
                        }

                        if (!-[NSObject length](osloga, "length") && ![v548 count])
                        {
                          v354 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:@" " attributes:0];

                          osloga = v354;
                        }

                        *buf = 0;
                        *&buf[8] = buf;
                        *&buf[16] = 0x3032000000;
                        v667 = sub_22B4D7830;
                        *v668 = sub_22B4D7980;
                        v355 = objc_alloc(MEMORY[0x277D1AA70]);
                        sender18 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                        date = [v582 date];
                        v358 = _ClampDate(date);
                        v359 = [v548 arrayByApplyingSelector:sel_guid];
                        *&v668[8] = [v355 initWithSender:sender18 time:v358 body:osloga attributes:0 fileTransferGUIDs:v359 flags:1 error:0 guid:v554 threadIdentifier:0];

                        v360 = *(*&buf[8] + 40);
                        destinationCallerID = [(IMDTelephonyIncomingMessageContext *)v583 destinationCallerID];
                        [v360 setDestinationCallerID:destinationCallerID];

                        [(IMDServiceSession *)self _markFromStorageIfNeeded:contextCopy messageGUID:v554];
                        v362 = *(*&buf[8] + 40);
                        accountID = [(IMDServiceSession *)self accountID];
                        [v362 setAccountID:accountID];

                        v364 = *(*&buf[8] + 40);
                        subject = [v582 subject];
                        [v364 setSubject:subject];

                        [*(*&buf[8] + 40) setReplaceID:replaceMessage];
                        fallbackHash = [v582 fallbackHash];
                        if ([v547 length])
                        {
                          service3 = [(IMDServiceSession *)self service];
                          fallbackHashIsContentBased = [service3 fallbackHashIsContentBased];

                          if (fallbackHashIsContentBased)
                          {
                            v654 = v547;
                            v368 = [MEMORY[0x277CBEA60] arrayWithObjects:&v654 count:1];
                            sHA256HexString = [v368 SHA256HexString];

                            v370 = MEMORY[0x277CCACA8];
                            fallbackHash2 = [v582 fallbackHash];
                            v369 = [v370 stringWithFormat:@"%@<%@>", fallbackHash2, sHA256HexString];

                            fallbackHash = v369;
                          }
                        }

                        v373 = IMDTelephonyServiceLogHandle([*(*&buf[8] + 40) setFallbackHash:fallbackHash]);
                        if (os_log_type_enabled(v373, OS_LOG_TYPE_DEFAULT))
                        {
                          fallbackHash3 = [*(*&buf[8] + 40) fallbackHash];
                          v375 = [fallbackHash3 length];
                          *v651 = 134217984;
                          *v652 = v375;
                          _os_log_impl(&dword_22B4CC000, v373, OS_LOG_TYPE_DEFAULT, " => Fallback hash length: %llu", v651, 0xCu);
                        }

                        sender19 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                        string3 = [osloga string];
                        v378 = HSAAuthenticationProcessIncomingMessage();
                        if (sender19)
                        {
                          CFRelease(sender19);
                        }

                        if (string3)
                        {
                          CFRelease(string3);
                        }

                        v379 = IMDTelephonyServiceLogHandle(v378);
                        if (os_log_type_enabled(v379, OS_LOG_TYPE_DEFAULT))
                        {
                          *v651 = 138412290;
                          *v652 = v548;
                          _os_log_impl(&dword_22B4CC000, v379, OS_LOG_TYPE_DEFAULT, " => Transfers: %@", v651, 0xCu);
                        }

                        v381 = IMDTelephonyServiceLogHandle(v380);
                        if (os_log_type_enabled(v381, OS_LOG_TYPE_DEFAULT))
                        {
                          v382 = MarcoLoggingStringForMessageData();
                          *v651 = 138412290;
                          *v652 = v382;
                          _os_log_impl(&dword_22B4CC000, v381, OS_LOG_TYPE_DEFAULT, " => Ordered parts: %@", v651, 0xCu);
                        }

                        v384 = IMDTelephonyServiceLogHandle(v383);
                        if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
                        {
                          v385 = *(*&buf[8] + 40);
                          *v651 = 138412290;
                          *v652 = v385;
                          _os_log_impl(&dword_22B4CC000, v384, OS_LOG_TYPE_DEFAULT, " => Result message: %@", v651, 0xCu);
                        }

                        [(IMDTelephonyIncomingMessageContext *)v583 setStyle:45];
                        v386 = MEMORY[0x277D1A8F8];
                        myNumberString = [(IMDTelephonyIncomingMessageContext *)v583 myNumberString];
                        mySIMIDString = [(IMDTelephonyIncomingMessageContext *)v583 mySIMIDString];
                        v581 = [v386 IMMMSEmailAddressToMatchForPhoneNumber:myNumberString simID:mySIMIDString];

                        v389 = MEMORY[0x277D1A8F8];
                        myNumberString2 = [(IMDTelephonyIncomingMessageContext *)v583 myNumberString];
                        mySIMIDString2 = [(IMDTelephonyIncomingMessageContext *)v583 mySIMIDString];
                        v561 = [v389 IMCountryCodeForPhoneNumber:myNumberString2 simID:mySIMIDString2];

                        v393 = IMDTelephonyServiceLogHandle(v392);
                        if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
                        {
                          isGroupMessagingEnabled = [(IMDTelephonyIncomingMessageContext *)v583 isGroupMessagingEnabled];
                          *v651 = 67109120;
                          *v652 = isGroupMessagingEnabled;
                          _os_log_impl(&dword_22B4CC000, v393, OS_LOG_TYPE_DEFAULT, "Group Messaging Enabled: %{BOOL}d", v651, 8u);
                        }

                        v396 = IMDTelephonyServiceLogHandle(v395);
                        if (os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
                        {
                          *v651 = 138412290;
                          *v652 = cf1c;
                          _os_log_impl(&dword_22B4CC000, v396, OS_LOG_TYPE_DEFAULT, "My number: %@", v651, 0xCu);
                        }

                        v398 = IMDTelephonyServiceLogHandle(v397);
                        if (os_log_type_enabled(v398, OS_LOG_TYPE_DEFAULT))
                        {
                          *v651 = 138412290;
                          *v652 = v581;
                          _os_log_impl(&dword_22B4CC000, v398, OS_LOG_TYPE_DEFAULT, "My email: %@", v651, 0xCu);
                        }

                        v400 = IMDTelephonyServiceLogHandle(v399);
                        if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
                        {
                          mySIMIDString3 = [(IMDTelephonyIncomingMessageContext *)v583 mySIMIDString];
                          *v651 = 138412290;
                          *v652 = mySIMIDString3;
                          _os_log_impl(&dword_22B4CC000, v400, OS_LOG_TYPE_DEFAULT, "My sim ID: %@", v651, 0xCu);
                        }

                        v403 = IMDTelephonyServiceLogHandle(v402);
                        if (os_log_type_enabled(v403, OS_LOG_TYPE_DEFAULT))
                        {
                          *v651 = 138412290;
                          *v652 = v561;
                          _os_log_impl(&dword_22B4CC000, v403, OS_LOG_TYPE_DEFAULT, "My receiver ISO country region: %@", v651, 0xCu);
                        }

                        isGroupMessagingEnabled2 = [(IMDTelephonyIncomingMessageContext *)v583 isGroupMessagingEnabled];
                        if (isGroupMessagingEnabled2)
                        {
                          v405 = IMDTelephonyServiceLogHandle(isGroupMessagingEnabled2);
                          if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
                          {
                            recipients = [v582 recipients];
                            *v651 = 138412290;
                            *v652 = recipients;
                            _os_log_impl(&dword_22B4CC000, v405, OS_LOG_TYPE_DEFAULT, "Recipients: %@", v651, 0xCu);
                          }

                          v600 = 0u;
                          v601 = 0u;
                          v598 = 0u;
                          v599 = 0u;
                          recipients2 = [v582 recipients];
                          v408 = [recipients2 countByEnumeratingWithState:&v598 objects:v653 count:16];
                          v409 = v408;
                          if (v408)
                          {
                            v410 = *v599;
                            v573 = recipients2;
                            do
                            {
                              v411 = 0;
                              do
                              {
                                if (*v599 != v410)
                                {
                                  objc_enumerationMutation(v573);
                                }

                                v412 = *(*(&v598 + 1) + 8 * v411);
                                v413 = IMDTelephonyServiceLogHandle(v408);
                                if (os_log_type_enabled(v413, OS_LOG_TYPE_DEFAULT))
                                {
                                  *v651 = 138412290;
                                  *v652 = v412;
                                  _os_log_impl(&dword_22B4CC000, v413, OS_LOG_TYPE_DEFAULT, "  Recipient: %@", v651, 0xCu);
                                }

                                v414 = [v412 copy];
                                participants = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                                v416 = participants == 0;

                                if (v416)
                                {
                                  v417 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v583 setParticipants:v417];
                                }

                                unformattedIDs = [(IMDTelephonyIncomingMessageContext *)v583 unformattedIDs];
                                v419 = unformattedIDs == 0;

                                if (v419)
                                {
                                  v420 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v583 setUnformattedIDs:v420];
                                }

                                countryCodes = [(IMDTelephonyIncomingMessageContext *)v583 countryCodes];
                                v422 = countryCodes == 0;

                                if (v422)
                                {
                                  v423 = objc_alloc_init(MEMORY[0x277CBEB18]);
                                  [(IMDTelephonyIncomingMessageContext *)v583 setCountryCodes:v423];
                                }

                                if ([v414 _appearsToBePhoneNumber])
                                {
                                  countryCode6 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
                                  v425 = IMPhoneNumberRefCopyForPhoneNumber();

                                  originatedDeviceEmail = IMNormalizedPhoneNumberForCFPhoneNumberRef();
                                  v427 = IMDTelephonyServiceLogHandle(originatedDeviceEmail);
                                  if (os_log_type_enabled(v427, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v651 = 138412546;
                                    *v652 = v425;
                                    *&v652[8] = 2112;
                                    *&v652[10] = v414;
                                    _os_log_impl(&dword_22B4CC000, v427, OS_LOG_TYPE_DEFAULT, "Created number ref: %@  for ID: %@", v651, 0x16u);
                                  }

                                  v429 = IMDTelephonyServiceLogHandle(v428);
                                  if (os_log_type_enabled(v429, OS_LOG_TYPE_DEFAULT))
                                  {
                                    countryCode7 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
                                    *v651 = 138412290;
                                    *v652 = countryCode7;
                                    _os_log_impl(&dword_22B4CC000, v429, OS_LOG_TYPE_DEFAULT, "    => Country code: %@", v651, 0xCu);
                                  }

                                  v432 = IMDTelephonyServiceLogHandle(v431);
                                  if (os_log_type_enabled(v432, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v651 = 138412290;
                                    *v652 = originatedDeviceEmail;
                                    _os_log_impl(&dword_22B4CC000, v432, OS_LOG_TYPE_DEFAULT, "      => Normalized: %@", v651, 0xCu);
                                  }

                                  if (v425 != 0 && cf1c != 0)
                                  {
                                    v433 = CFEqual(cf1c, v425);
                                    if (v433)
                                    {
                                      v434 = IMDTelephonyServiceLogHandle(v433);
                                      if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *v651 = 0;
                                        _os_log_impl(&dword_22B4CC000, v434, OS_LOG_TYPE_DEFAULT, "      ** This is my number, ignoring", v651, 2u);
                                      }

                                      v414 = 0;
                                      originatedDeviceEmail = 0;
                                    }
                                  }

                                  originatedDeviceNumber2 = [v582 originatedDeviceNumber];
                                  v436 = IMDTelephonyServiceLogHandle(originatedDeviceNumber2);
                                  if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v651 = 138412290;
                                    *v652 = originatedDeviceNumber2;
                                    _os_log_impl(&dword_22B4CC000, v436, OS_LOG_TYPE_DEFAULT, "My Original Alias is %@", v651, 0xCu);
                                  }

                                  if (originatedDeviceNumber2)
                                  {
                                    v437 = MEMORY[0x231897D30](originatedDeviceNumber2, originatedDeviceEmail);
                                    if (v437)
                                    {
                                      v438 = IMDTelephonyServiceLogHandle(v437);
                                      if (os_log_type_enabled(v438, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *v651 = 0;
                                        _os_log_impl(&dword_22B4CC000, v438, OS_LOG_TYPE_DEFAULT, "      ** My number is the service center, ignoring", v651, 2u);
                                      }

                                      v414 = 0;
                                      originatedDeviceEmail = 0;
                                    }
                                  }

                                  if (v425)
                                  {
                                    CFRelease(v425);
                                  }

                                  if ([originatedDeviceEmail length])
                                  {
                                    v439 = originatedDeviceEmail;
                                    originatedDeviceEmail = v439;
                                  }

                                  else
                                  {
                                    v439 = IMNormalizeFormattedString();
                                  }

                                  v443 = v439;
                                }

                                else
                                {
                                  if ([v581 length] && (v440 = objc_msgSend(v581, "isEqualToIgnoringCase:", v414), v440))
                                  {
                                    v441 = IMDTelephonyServiceLogHandle(v440);
                                    if (os_log_type_enabled(v441, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *v651 = 0;
                                      _os_log_impl(&dword_22B4CC000, v441, OS_LOG_TYPE_DEFAULT, "      ** This is my email, ignoring", v651, 2u);
                                    }

                                    originatedDeviceNumber2 = 0;
                                  }

                                  else
                                  {
                                    originatedDeviceNumber2 = v414;
                                  }

                                  originatedDeviceEmail = [v582 originatedDeviceEmail];
                                  if (![originatedDeviceEmail length] || (v442 = objc_msgSend(originatedDeviceEmail, "isEqualToIgnoringCase:", originatedDeviceNumber2), !v442))
                                  {
                                    v443 = originatedDeviceNumber2;
                                    goto LABEL_447;
                                  }

                                  v414 = IMDTelephonyServiceLogHandle(v442);
                                  if (os_log_type_enabled(v414, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v651 = 0;
                                    _os_log_impl(&dword_22B4CC000, v414, OS_LOG_TYPE_DEFAULT, "      ** This is my email (via proxy), ignoring", v651, 2u);
                                  }

                                  v443 = 0;
                                }

LABEL_447:
                                if (v443)
                                {
                                  v445 = IMDTelephonyServiceLogHandle(v444);
                                  if (os_log_type_enabled(v445, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v651 = 138412290;
                                    *v652 = v443;
                                    _os_log_impl(&dword_22B4CC000, v445, OS_LOG_TYPE_DEFAULT, "  => Canonical: %@", v651, 0xCu);
                                  }

                                  participants2 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                                  [participants2 addObject:v443];

                                  v447 = [v412 copy];
                                  countryCodes2 = [(IMDTelephonyIncomingMessageContext *)v583 countryCodes];
                                  countryCode8 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
                                  v450 = countryCode8;
                                  if (countryCode8)
                                  {
                                    v451 = countryCode8;
                                  }

                                  else
                                  {
                                    v451 = @"us";
                                  }

                                  [countryCodes2 addObject:v451];

                                  unformattedIDs2 = [(IMDTelephonyIncomingMessageContext *)v583 unformattedIDs];
                                  v453 = unformattedIDs2;
                                  if (v447)
                                  {
                                    v454 = v447;
                                  }

                                  else
                                  {
                                    v454 = &stru_283F23018;
                                  }

                                  [unformattedIDs2 addObject:v454];
                                }

                                ++v411;
                              }

                              while (v409 != v411);
                              recipients2 = v573;
                              v408 = [v573 countByEnumeratingWithState:&v598 objects:v653 count:16];
                              v409 = v408;
                            }

                            while (v408);
                          }

                          v455 = v583;
                          sender20 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                          if (sender20)
                          {
                            participants3 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                            sender21 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                            v459 = [participants3 containsObject:sender21];

                            v455 = v583;
                            if ((v459 & 1) == 0)
                            {
                              participants4 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                              sender22 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                              [participants4 addObject:sender22];

                              senderUnformatted = [(IMDTelephonyIncomingMessageContext *)v583 senderUnformatted];
                              countryCodes3 = [(IMDTelephonyIncomingMessageContext *)v583 countryCodes];
                              countryCode9 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
                              v465 = countryCode9;
                              if (countryCode9)
                              {
                                v466 = countryCode9;
                              }

                              else
                              {
                                v466 = @"us";
                              }

                              [countryCodes3 addObject:v466];

                              unformattedIDs3 = [(IMDTelephonyIncomingMessageContext *)v583 unformattedIDs];
                              v468 = unformattedIDs3;
                              if (senderUnformatted)
                              {
                                v469 = senderUnformatted;
                              }

                              else
                              {
                                v469 = &stru_283F23018;
                              }

                              [unformattedIDs3 addObject:v469];
                              goto LABEL_481;
                            }
                          }
                        }

                        else
                        {
                          v470 = IMDTelephonyServiceLogHandle(isGroupMessagingEnabled2);
                          if (os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
                          {
                            sender23 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                            *v651 = 138412290;
                            *v652 = sender23;
                            _os_log_impl(&dword_22B4CC000, v470, OS_LOG_TYPE_DEFAULT, "Group messaging is disabled, ensuring the sender is in the participant set: %@", v651, 0xCu);
                          }

                          participants5 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                          v473 = participants5 == 0;

                          if (v473)
                          {
                            v474 = objc_alloc_init(MEMORY[0x277CBEB18]);
                            [(IMDTelephonyIncomingMessageContext *)v583 setParticipants:v474];
                          }

                          v455 = v583;
                          sender24 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                          if (sender24)
                          {
                            participants6 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                            sender25 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                            v478 = [participants6 containsObject:sender25];

                            v455 = v583;
                            if ((v478 & 1) == 0)
                            {
                              participants7 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                              sender26 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                              [participants7 addObject:sender26];

                              senderUnformatted = [(IMDTelephonyIncomingMessageContext *)v583 senderUnformatted];
                              countryCodes4 = [(IMDTelephonyIncomingMessageContext *)v583 countryCodes];
                              countryCode10 = [(IMDTelephonyIncomingMessageContext *)v583 countryCode];
                              v483 = countryCode10;
                              if (countryCode10)
                              {
                                v484 = countryCode10;
                              }

                              else
                              {
                                v484 = @"us";
                              }

                              [countryCodes4 addObject:v484];

                              unformattedIDs4 = [(IMDTelephonyIncomingMessageContext *)v583 unformattedIDs];
                              v468 = unformattedIDs4;
                              if (senderUnformatted)
                              {
                                v486 = senderUnformatted;
                              }

                              else
                              {
                                v486 = &stru_283F23018;
                              }

                              [unformattedIDs4 addObject:v486];
LABEL_481:

                              v455 = v583;
                            }
                          }
                        }

                        if ([(IMDTelephonyIncomingMessageContext *)v455 isGroupChat])
                        {
                          [(IMDTelephonyIncomingMessageContext *)v455 setStyle:43];
                          sender27 = +[IMDChatRegistry sharedInstance];
                          account = [(IMDServiceSession *)self account];
                          v489 = [sender27 generateUnusedChatIdentifierForGroupChatWithAccount:account];
                          [(IMDTelephonyIncomingMessageContext *)v455 setChatIdentifier:v489];
                        }

                        else
                        {
                          mEMORY[0x277D1A9B8]4 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                          isMergeBusinessSenderIndiaEnabled = [mEMORY[0x277D1A9B8]4 isMergeBusinessSenderIndiaEnabled];

                          if (isMergeBusinessSenderIndiaEnabled)
                          {
                            v492 = [(IMDTelephonyServiceSession *)self _identifierForMergedBusinessThread:v583];
                            if (v492)
                            {
                              [(IMDTelephonyIncomingMessageContext *)v583 setIsMergedBusinessThread:1];
                              [(IMDTelephonyIncomingMessageContext *)v583 setSender:v492];
                              [(IMDTelephonyIncomingMessageContext *)v583 setDisplayName:v492];
                            }
                          }

                          sender27 = [(IMDTelephonyIncomingMessageContext *)v583 sender];
                          [(IMDTelephonyIncomingMessageContext *)v583 setChatIdentifier:sender27];
                        }

                        v493 = [(IMDTelephonyServiceSession *)self chatForIncomingMessageContext:v583 createIfNotExists:0];
                        v494 = v493;
                        if (v493)
                        {
                          chatIdentifier = [v493 chatIdentifier];
                          [(IMDTelephonyIncomingMessageContext *)v583 setChatIdentifier:chatIdentifier];

                          v496 = v583;
                          -[IMDTelephonyIncomingMessageContext setStyle:](v583, "setStyle:", [v494 style]);
                          if ([v494 isBlackholed])
                          {
                            if (IMOSLoggingEnabled())
                            {
                              v497 = OSLogHandleForIMFoundationCategory();
                              if (os_log_type_enabled(v497, OS_LOG_TYPE_INFO))
                              {
                                guid2 = [v494 guid];
                                *v651 = 138412290;
                                *v652 = guid2;
                                _os_log_impl(&dword_22B4CC000, v497, OS_LOG_TYPE_INFO, "SMS: Unblackholing an SMS chat %@", v651, 0xCu);
                              }

                              v496 = v583;
                            }

                            [v494 updateIsBlackholed:0];
                          }

                          if ([v494 smsHandshakeState] == 1)
                          {
                            mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
                            [mEMORY[0x277D1AAA8] trackSpamEvent:7];

                            [v494 updateSMSHandshakeState:0xFFFFFFFFLL];
                            v496 = v583;
                          }

                          if ([(IMDTelephonyIncomingMessageContext *)v496 isSendEnabled])
                          {
                            if ([v494 state] == 4)
                            {
                              v500 = 0;
                              goto LABEL_507;
                            }
                          }

                          else if (-[IMDTelephonyIncomingMessageContext isGroupChat](v496, "isGroupChat") || (v503 = [v494 isFiltered]) == 0)
                          {
                            if (IMOSLoggingEnabled())
                            {
                              v505 = OSLogHandleForIMFoundationCategory();
                              if (os_log_type_enabled(v505, OS_LOG_TYPE_INFO))
                              {
                                isGroupChat = [(IMDTelephonyIncomingMessageContext *)v496 isGroupChat];
                                isFiltered = [v494 isFiltered];
                                v508 = @"NO";
                                if (isGroupChat)
                                {
                                  v508 = @"YES";
                                }

                                *v651 = 138412546;
                                *v652 = v508;
                                *&v652[8] = 2048;
                                *&v652[10] = isFiltered;
                                _os_log_impl(&dword_22B4CC000, v505, OS_LOG_TYPE_INFO, "Received a read only request for a group chat: %@ or known chat: %lld", v651, 0x16u);
                              }

                              v496 = v583;
                            }
                          }

                          else
                          {
                            v504 = IMDTelephonyServiceLogHandle(v503);
                            if (os_log_type_enabled(v504, OS_LOG_TYPE_DEFAULT))
                            {
                              *v651 = 0;
                              _os_log_impl(&dword_22B4CC000, v504, OS_LOG_TYPE_DEFAULT, "Replying is disabled, setting join state to Read Only", v651, 2u);
                            }

                            v500 = 4;
                            v496 = v583;
LABEL_507:
                            [v494 setState:v500];
                          }

                          displayName4 = [(IMDTelephonyIncomingMessageContext *)v496 displayName];

                          if (displayName4)
                          {
                            displayName5 = [(IMDTelephonyIncomingMessageContext *)v583 displayName];
                            [v494 updateDisplayName:displayName5];
LABEL_516:
                          }

                          isInternationalSpamFilteringEnabled = [MEMORY[0x277D1AC58] isInternationalSpamFilteringEnabled];
                          if (isInternationalSpamFilteringEnabled)
                          {
                            v511 = +[IMDChatRegistry sharedInstance];
                            if (v494)
                            {
                              chatIdentifier2 = [v494 chatIdentifier];
                              [v511 existingiMessageChatForID:chatIdentifier2 withChatStyle:{objc_msgSend(v494, "style")}];
                            }

                            else
                            {
                              chatIdentifier2 = [(IMDTelephonyIncomingMessageContext *)v583 chatIdentifier];
                              [v511 existingiMessageChatForID:chatIdentifier2 withChatStyle:{-[IMDTelephonyIncomingMessageContext style](v583, "style")}];
                            }
                            v513 = ;

                            if (v513)
                            {
                              isBlackholed = [v513 isBlackholed];
                              if (isBlackholed)
                              {
                                v515 = IMDTelephonyServiceLogHandle(isBlackholed);
                                if (os_log_type_enabled(v515, OS_LOG_TYPE_DEFAULT))
                                {
                                  guid3 = [v513 guid];
                                  *v651 = 138412290;
                                  *v652 = guid3;
                                  _os_log_impl(&dword_22B4CC000, v515, OS_LOG_TYPE_DEFAULT, "Unblackholing sibling iMessage chat (%@) on reception of SMS message.", v651, 0xCu);
                                }

                                if ([(IMDTelephonyIncomingMessageContext *)v583 isGroupChat])
                                {
                                  mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
                                  [mEMORY[0x277D1AAA8]2 trackSpamEvent:21];
                                }

                                else
                                {
                                  mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
                                  [mEMORY[0x277D1AAA8]2 trackSpamEvent:20];
                                }

                                [v513 updateIsBlackholed:0];
                                v518 = +[IMDMessageStore sharedInstance];
                                lastMessage = [v513 lastMessage];
                                guid4 = [lastMessage guid];
                                [v518 markMessageGUIDUnread:guid4];
                              }
                            }
                          }

                          v521 = IMDTelephonyServiceLogHandle(isInternationalSpamFilteringEnabled);
                          if (os_log_type_enabled(v521, OS_LOG_TYPE_DEFAULT))
                          {
                            participants8 = [(IMDTelephonyIncomingMessageContext *)v583 participants];
                            *v651 = 138412290;
                            *v652 = participants8;
                            _os_log_impl(&dword_22B4CC000, v521, OS_LOG_TYPE_DEFAULT, "   participants: %@", v651, 0xCu);
                          }

                          v524 = IMDTelephonyServiceLogHandle(v523);
                          if (os_log_type_enabled(v524, OS_LOG_TYPE_DEFAULT))
                          {
                            guid5 = [v494 guid];
                            *v651 = 138412546;
                            *v652 = v494;
                            *&v652[8] = 2112;
                            *&v652[10] = guid5;
                            _os_log_impl(&dword_22B4CC000, v524, OS_LOG_TYPE_DEFAULT, "   found chat: %@ (%@)", v651, 0x16u);
                          }

                          v527 = IMDTelephonyServiceLogHandle(v526);
                          if (os_log_type_enabled(v527, OS_LOG_TYPE_DEFAULT))
                          {
                            isGroupChat2 = [(IMDTelephonyIncomingMessageContext *)v583 isGroupChat];
                            *v651 = 67109120;
                            *v652 = isGroupChat2;
                            _os_log_impl(&dword_22B4CC000, v527, OS_LOG_TYPE_DEFAULT, "   isGroupChat: %{BOOL}d", v651, 8u);
                          }

                          v530 = IMDTelephonyServiceLogHandle(v529);
                          if (os_log_type_enabled(v530, OS_LOG_TYPE_DEFAULT))
                          {
                            chatIdentifier3 = [(IMDTelephonyIncomingMessageContext *)v583 chatIdentifier];
                            *v651 = 138412290;
                            *v652 = chatIdentifier3;
                            _os_log_impl(&dword_22B4CC000, v530, OS_LOG_TYPE_DEFAULT, "   chatIdentifier: %@", v651, 0xCu);
                          }

                          v590[0] = MEMORY[0x277D85DD0];
                          v590[1] = 3221225472;
                          v590[2] = sub_22B6C7F80;
                          v590[3] = &unk_278708388;
                          v532 = v583;
                          v591 = v532;
                          selfCopy2 = self;
                          v594 = buf;
                          v595 = replaceMessage;
                          v533 = v554;
                          v593 = v533;
                          v596 = relayCopy;
                          v534 = _Block_copy(v590);
                          sender28 = [(IMDTelephonyIncomingMessageContext *)v532 sender];
                          mEMORY[0x277D1A9B8]5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
                          isMergeBusinessSenderIndiaEnabled2 = [mEMORY[0x277D1A9B8]5 isMergeBusinessSenderIndiaEnabled];

                          if (isMergeBusinessSenderIndiaEnabled2 && [(IMDTelephonyIncomingMessageContext *)v532 isMergedBusinessThread])
                          {
                            senderUnformatted2 = [(IMDTelephonyIncomingMessageContext *)v532 senderUnformatted];

                            sender28 = senderUnformatted2;
                          }

                          v651[0] = 0;
                          filteringController = [(IMDTelephonyServiceSession *)self filteringController];
                          chatIdentifier4 = [(IMDTelephonyIncomingMessageContext *)v532 chatIdentifier];
                          participants9 = [(IMDTelephonyIncomingMessageContext *)v532 participants];
                          LOBYTE(v542) = [*(*&buf[8] + 40) messageContainsOneTimeCode];
                          [filteringController categorizeIncomingSMSMessage:v582 messageGUID:v533 sender:sender28 wasRelayed:relayCopy chatIdentifier:chatIdentifier4 participants:participants9 checkingForSpam:v651 myReceiverISOCountryCode:v561 messageBody:osloga foundChat:v494 service:nameCopy containsOneTimeCode:v542 completion:v534];

                          if (cf1c)
                          {
                            CFRelease(cf1c);
                          }

                          if (blockCopy)
                          {
                            (*(blockCopy + 2))(blockCopy, 1, v533, v651[0]);
                          }

                          _Block_object_dispose(buf, 8);
                          goto LABEL_547;
                        }

                        chatIdentifier5 = [(IMDTelephonyIncomingMessageContext *)v583 chatIdentifier];
                        v651[0] = [(IMDTelephonyIncomingMessageContext *)v583 style];
                        v597 = chatIdentifier5;
                        [(IMDServiceSession *)self canonicalizeChatIdentifier:&v597 style:v651];
                        displayName5 = v597;

                        [(IMDTelephonyIncomingMessageContext *)v583 setChatIdentifier:displayName5];
                        [(IMDTelephonyIncomingMessageContext *)v583 setStyle:v651[0]];
                        goto LABEL_516;
                      }
                    }
                  }
                }

                else if (IsItemBlocked)
                {
                  goto LABEL_60;
                }
              }

              v82 = CMFItemCreateWithEmailAddress();
              v81 = CMFBlockListIsItemBlocked() != 0;
              if (v82)
              {
                CFRelease(v82);
              }

              goto LABEL_64;
            }
          }
        }
      }
    }

    goto LABEL_57;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "**** Invalid payload, ignoring.", buf, 2u);
    }
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0, 0);
  }

LABEL_548:
}

- (id)_businessNameForIndiaShortCodeSender:(id)sender
{
  senderCopy = sender;
  countryCode = [senderCopy countryCode];
  v5 = [countryCode isEqual:@"in"];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC68];
    v7 = MEMORY[0x277CCACA8];
    v8 = IMIndiaBusinessShortCodeRegex();
    v9 = [v7 stringWithFormat:@"^%@$", v8];
    v10 = [v6 regularExpressionWithPattern:v9 options:0 error:0];

    sender = [senderCopy sender];
    sender2 = [senderCopy sender];
    v13 = [v10 matchesInString:sender options:0 range:{0, objc_msgSend(sender2, "length")}];

    if ([v13 count] == 1 && (objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "numberOfRanges"), v14, v15 >= 3))
    {
      v16 = [v13 objectAtIndexedSubscript:0];
      v17 = [v16 rangeAtIndex:2];
      v19 = v18;
      sender3 = [senderCopy sender];
      v21 = [sender3 substringWithRange:{v17, v19}];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_identifierForMergedBusinessThread:(id)thread
{
  v3 = [(IMDTelephonyServiceSession *)self _businessNameForIndiaShortCodeSender:thread];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)getLabelFor:(int64_t)for subCategory:(int64_t)category
{
  v19 = *MEMORY[0x277D85DE8];
  if (for == 3)
  {
    label = @"smsfp";
  }

  else
  {
    if (for != 4)
    {
      label = @"filtered";
      goto LABEL_18;
    }

    label = @"smsft";
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  fetchSMSFilterExtensionParams = [MEMORY[0x277D1AB70] fetchSMSFilterExtensionParams];
  v8 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(fetchSMSFilterExtensionParams);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 action] == for && objc_msgSend(v12, "subAction") == category)
        {
          label = [v12 label];
          goto LABEL_16;
        }
      }

      v9 = [fetchSMSFilterExtensionParams countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

LABEL_18:

  return label;
}

- (void)_registerChatForIncomingMessageWithContext:(id)context
{
  v39[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  if ([contextCopy isGroupChat])
  {
    participants = [contextCopy participants];
    unformattedIDs = [contextCopy unformattedIDs];
    countryCodes = [contextCopy countryCodes];
    v8 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:participants unformattedIDs:unformattedIDs countryCodes:countryCodes isGroupChat:1];
  }

  else
  {
    sender = [contextCopy sender];
    v39[0] = sender;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    senderUnformatted = [contextCopy senderUnformatted];
    sender2 = senderUnformatted;
    if (!senderUnformatted)
    {
      sender2 = [contextCopy sender];
    }

    v38 = sender2;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    countryCode = [contextCopy countryCode];
    v15 = countryCode;
    v16 = @"us";
    if (countryCode)
    {
      v16 = countryCode;
    }

    v37 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v18 = [(IMDTelephonyServiceSession *)self createHandleInfoForParticipants:v10 unformattedIDs:v13 countryCodes:v17 isGroupChat:0];

    if (!senderUnformatted)
    {
    }

    v8 = v18;
  }

  if (([contextCopy isSendEnabled] & 1) != 0 || (v19 = objc_msgSend(contextCopy, "isGroupChat"), v19))
  {
    chatIdentifier = [contextCopy chatIdentifier];
    style = [contextCopy style];
    displayName = [contextCopy displayName];
    groupID = [contextCopy groupID];
    originalGroupID = [contextCopy originalGroupID];
    account = [(IMDServiceSession *)self account];
    v25 = v8;
    category = [contextCopy category];
    spamExtensionName = [contextCopy spamExtensionName];
    LOBYTE(v33) = 0;
    v32 = category;
    v8 = v25;
    chatIdentifier2 = chatIdentifier;
    [(IMDServiceSession *)selfCopy didUpdateChatStatus:2 chat:chatIdentifier style:style displayName:displayName groupID:groupID originalGroupID:originalGroupID lastAddressedHandle:0 lastAddressedSIMID:0 handleInfo:v25 account:account category:v32 spamExtensionName:spamExtensionName isBlackholed:v33 spamDetectionSource:0];
  }

  else
  {
    v29 = IMDTelephonyServiceLogHandle(v19);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "Replying is disabled, joining chat with Read Only state", buf, 2u);
    }

    chatIdentifier2 = [contextCopy chatIdentifier];
    style2 = [contextCopy style];
    displayName = [contextCopy displayName];
    category2 = [contextCopy category];
    groupID = [contextCopy spamExtensionName];
    [(IMDServiceSession *)selfCopy didJoinReadOnlyChat:chatIdentifier2 style:style2 displayName:displayName groupID:0 handleInfo:v8 category:category2 spamExtensionName:groupID];
  }
}

- (id)_updatedMessageContextForJunkProcessing:(id)processing
{
  v19 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  filteringController = [(IMDTelephonyServiceSession *)self filteringController];
  if (![filteringController _isMessageCategorized:{objc_msgSend(processingCopy, "category")}])
  {

    goto LABEL_9;
  }

  isGroupChat = [processingCopy isGroupChat];

  if (isGroupChat)
  {
LABEL_9:
    v7 = processingCopy;
    goto LABEL_10;
  }

  v7 = [processingCopy copy];

  v8 = -[IMDTelephonyServiceSession getLabelFor:subCategory:](self, "getLabelFor:subCategory:", [v7 category], objc_msgSend(v7, "subCategory"));
  if ([v7 category] != 2)
  {
    filteringController2 = [(IMDTelephonyServiceSession *)self filteringController];
    chatIdentifier = [v7 chatIdentifier];
    v11 = [filteringController2 _createNewChatIdentifierFromChatIdentifier:chatIdentifier andCategoryLabel:v8];
    [v7 setChatIdentifier:v11];
  }

  chatIdentifier2 = [v7 chatIdentifier];
  [v7 setSender:chatIdentifier2];

  v14 = IMDTelephonyServiceLogHandle(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    chatIdentifier3 = [v7 chatIdentifier];
    v17 = 138412290;
    v18 = chatIdentifier3;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Generated new filtered chat identifier: %@", &v17, 0xCu);
  }

LABEL_10:

  return v7;
}

- (id)chatForIncomingMessageContext:(id)context createIfNotExists:(BOOL)exists
{
  existsCopy = exists;
  contextCopy = context;
  if ([contextCopy isGroupChat])
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isOneChatEnabled = [mEMORY[0x277D1A9B8] isOneChatEnabled];

    selfCopy = self;
    v75 = existsCopy;
    if (isOneChatEnabled)
    {
      sender2 = objc_alloc_init(MEMORY[0x277CBEB18]);
      groupID = [contextCopy groupID];

      if (groupID)
      {
        groupID2 = [contextCopy groupID];
        [sender2 addObject:groupID2];
      }

      originalGroupID = [contextCopy originalGroupID];

      if (originalGroupID)
      {
        originalGroupID2 = [contextCopy originalGroupID];
        [sender2 addObject:originalGroupID2];
      }

      destinationCallerID2 = +[IMDChatRegistry sharedInstance];
      sender = [contextCopy sender];
      destinationCallerID = [contextCopy destinationCallerID];
      service = [(IMDServiceSession *)self service];
      groupsMergeDisplayNames = [service groupsMergeDisplayNames];
      if (groupsMergeDisplayNames)
      {
        displayName = [contextCopy displayName];
      }

      else
      {
        displayName = 0;
      }

      participants = [contextCopy participants];
      groupID3 = [contextCopy groupID];
      service2 = [(IMDServiceSession *)self service];
      internalName = [service2 internalName];
      v73 = destinationCallerID;
      v18 = [destinationCallerID2 bestCandidateGroupChatWithFromIdentifier:sender toIdentifier:destinationCallerID displayName:displayName participants:participants updatingToLatestiMessageGroupID:groupID3 sortedIdentifiers:sender2 serviceName:internalName];

      if (groupsMergeDisplayNames)
      {
      }
    }

    else
    {
      sender2 = [contextCopy sender];
      destinationCallerID2 = [contextCopy destinationCallerID];
      sender = [(IMDServiceSession *)self service];
      groupsMergeDisplayNames2 = [sender groupsMergeDisplayNames];
      if (groupsMergeDisplayNames2)
      {
        displayName2 = [contextCopy displayName];
      }

      else
      {
        displayName2 = 0;
      }

      participants2 = [contextCopy participants];
      groupID4 = [contextCopy groupID];
      originalGroupID3 = [contextCopy originalGroupID];
      v18 = [(IMDServiceSession *)selfCopy bestCandidateGroupChatWithFromIdentifier:sender2 toIdentifier:destinationCallerID2 displayName:displayName2 participants:participants2 groupID:groupID4 originalGroupID:originalGroupID3];

      if (groupsMergeDisplayNames2)
      {
      }
    }

    self = selfCopy;
    existsCopy = v75;
  }

  else
  {
    sender2 = +[IMDChatRegistry sharedInstance];
    destinationCallerID2 = [contextCopy chatIdentifier];
    sender = [(IMDServiceSession *)self account];
    v18 = [sender2 existingChatForID:destinationCallerID2 account:sender];
  }

  if (!v18)
  {
    if (!existsCopy)
    {
      v18 = 0;
      goto LABEL_50;
    }

    [(IMDTelephonyServiceSession *)self _registerChatForIncomingMessageWithContext:contextCopy];
    v39 = +[IMDChatRegistry sharedInstance];
    chatIdentifier = [contextCopy chatIdentifier];
    account = [(IMDServiceSession *)self account];
    v18 = [v39 existingChatWithIdentifier:chatIdentifier account:account];
    goto LABEL_49;
  }

  service3 = [(IMDServiceSession *)self service];
  v29 = [service3 supportsCapability:*MEMORY[0x277D1A558]];

  if (!v29)
  {
    goto LABEL_50;
  }

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8]2 isMissingMessagesEnabled];

  groupID5 = [contextCopy groupID];
  v33 = groupID5;
  if (isMissingMessagesEnabled)
  {
    if (groupID5 && (v34 = *MEMORY[0x277D19780], [v18 latestIdentifierForDomain:*MEMORY[0x277D19780]], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "groupID"), v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v35, "isEqualToString:", v36), v36, v35, v33, (v37 & 1) == 0))
    {
      groupID6 = [contextCopy groupID];
      [v18 assignIdentifier:groupID6 forDomain:v34 isHistoricalIdentifier:0];

      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    service4 = [(IMDServiceSession *)self service];
    internalName2 = [service4 internalName];
    originalGroupID9 = IMChatLookupDomainForServiceName();

    groupID7 = [contextCopy groupID];
    if (groupID7)
    {
      v51 = groupID7;
      v52 = [v18 identifiersForDomain:originalGroupID9];
      groupID8 = [contextCopy groupID];
      v54 = [v52 containsObject:groupID8];

      if ((v54 & 1) == 0)
      {
        groupID9 = [contextCopy groupID];
        service5 = [(IMDServiceSession *)self service];
        [v18 assignIdentifier:groupID9 forDomain:originalGroupID9 isHistoricalIdentifier:{objc_msgSend(service5, "groupIDIsHistoricalIdentifier")}];

        v38 = 1;
      }
    }

    originalGroupID4 = [contextCopy originalGroupID];
    if (!originalGroupID4 || (v58 = originalGroupID4, [v18 identifiersForDomain:originalGroupID9], v59 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "originalGroupID"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v59, "containsObject:", v60), v60, v59, v58, (v61 & 1) != 0))
    {

      if ((v38 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    originalGroupID5 = [contextCopy originalGroupID];
    service6 = [(IMDServiceSession *)self service];
    [v18 assignIdentifier:originalGroupID5 forDomain:originalGroupID9 isHistoricalIdentifier:{objc_msgSend(service6, "groupIDIsHistoricalIdentifier") ^ 1}];

    goto LABEL_47;
  }

  if (groupID5 && ([v18 groupID], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(contextCopy, "groupID"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v42, "isEqualToString:", v43), v43, v42, v33, (v44 & 1) == 0))
  {
    groupID10 = [contextCopy groupID];
    [v18 setGroupID:groupID10];

    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  originalGroupID6 = [contextCopy originalGroupID];
  if (originalGroupID6)
  {
    v64 = originalGroupID6;
    originalGroupID7 = [v18 originalGroupID];
    originalGroupID8 = [contextCopy originalGroupID];
    v67 = [originalGroupID7 isEqualToString:originalGroupID8];

    if ((v67 & 1) == 0)
    {
      originalGroupID9 = [contextCopy originalGroupID];
      [v18 setOriginalGroupID:originalGroupID9];
LABEL_47:

      goto LABEL_48;
    }
  }

  if (v45)
  {
LABEL_48:
    v70 = +[IMDChatStore sharedInstance];
    [v70 storeChat:v18];

    v39 = -[IMDServiceSession broadcasterForChatListenersWithBlackholeStatus:](self, "broadcasterForChatListenersWithBlackholeStatus:", [v18 isBlackholed]);
    chatIdentifier = [v18 guid];
    account = [v18 dictionaryRepresentation];
    [v39 chat:chatIdentifier updated:account];
LABEL_49:
  }

LABEL_50:

  return v18;
}

- (id)findChatAndLinkMessage:(id)message context:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = [context copy];
  v8 = IMDTelephonyServiceLogHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    chatIdentifier = [v7 chatIdentifier];
    category = [v7 category];
    subCategory = [v7 subCategory];
    spamExtensionName = [v7 spamExtensionName];
    *buf = 138413058;
    v47 = chatIdentifier;
    v48 = 2048;
    v49 = category;
    v50 = 2048;
    v51 = subCategory;
    v52 = 2112;
    v53 = spamExtensionName;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "findChatAndLinkMessage called for chatid %@ category %ld, subCategory %ld, extensionName %@", buf, 0x2Au);
  }

  v13 = [(IMDTelephonyServiceSession *)self _updatedMessageContextForJunkProcessing:v7];

  sender = [v13 sender];
  [messageCopy setSender:sender];

  v15 = [(IMDTelephonyServiceSession *)self chatForIncomingMessageContext:v13 createIfNotExists:1];
  category2 = [v13 category];
  subCategory2 = [v13 subCategory];
  spamExtensionName2 = [v13 spamExtensionName];
  [(IMDTelephonyServiceSession *)self _updateCategoryForChat:v15 andMessage:messageCopy category:category2 subCategory:subCategory2 spamExtensionName:spamExtensionName2];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(subCategory2) = [mEMORY[0x277D1A9B8] stewieEnabled];

  if (subCategory2)
  {
    if (([v15 isEmergencyChat] & 1) == 0)
    {
      mEMORY[0x277D18998] = [MEMORY[0x277D18998] sharedInstance];
      sender2 = [messageCopy sender];
      v22 = [mEMORY[0x277D18998] isPhoneNumberEmergencyNumber:sender2];

      if (v22)
      {
        v24 = IMDTelephonyServiceLogHandle(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Receiving: Chat has been marked as an emergency chat", buf, 2u);
        }

        [v15 updateIsEmergencyChat:1];
      }
    }
  }

  chatIdentifier2 = [v13 chatIdentifier];
  style = [v13 style];
  myNumberString = [v13 myNumberString];
  mySIMIDString = [v13 mySIMIDString];
  -[IMDTelephonyServiceSession _updateLastAddressedIDsIfNeededForChatWithIdentifier:style:lastAddressedHandle:lastAddressedSIMID:iMessageCapability:](self, "_updateLastAddressedIDsIfNeededForChatWithIdentifier:style:lastAddressedHandle:lastAddressedSIMID:iMessageCapability:", chatIdentifier2, style, myNumberString, mySIMIDString, [v13 capability]);

  mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(style) = [mEMORY[0x277D1A9B8]2 isMergeBusinessSenderIndiaEnabled];

  if (style && [v13 isMergedBusinessThread])
  {
    [v15 setState:4];
    [v15 setMergedBusinessThread:1];
  }

  v43 = v15;
  sender3 = [messageCopy sender];
  IsEmail = IMStringIsEmail();

  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v33 = [fileTransferGUIDs count] != 0;

  v44[0] = *MEMORY[0x277D1A2A0];
  v34 = [MEMORY[0x277CCABB0] numberWithLong:0];
  v45[0] = v34;
  v44[1] = *MEMORY[0x277D1A2F0];
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isGroupChat")}];
  v45[1] = v35;
  v44[2] = *MEMORY[0x277D1A2E8];
  v36 = [MEMORY[0x277CCABB0] numberWithBool:IsEmail ^ 1];
  v45[2] = v36;
  v44[3] = *MEMORY[0x277D1A2E0];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:IsEmail];
  v45[3] = v37;
  v44[4] = *MEMORY[0x277D1A2C8];
  v38 = [MEMORY[0x277CCABB0] numberWithBool:v33];
  v45[4] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:5];

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A210] withDictionary:v39];

  subject = [messageCopy subject];
  -[IMDTelephonyServiceSession _carrierReportJunkMetricsForSMSWithSubject:isGroupchat:hasAttachments:](self, "_carrierReportJunkMetricsForSMSWithSubject:isGroupchat:hasAttachments:", subject, [v13 isGroupChat], v33);

  return v43;
}

- (id)_messageDictionaryToRelayWithIncomingMessageDictionary:(id)dictionary smsMessage:(id)message
{
  messageCopy = message;
  v6 = [dictionary mutableCopy];
  gUID = [messageCopy GUID];
  v8 = [gUID length];

  if (v8)
  {
    gUID2 = [messageCopy GUID];
    [v6 setObject:gUID2 forKeyedSubscript:IMDCTMessageDictionaryGUIDKey];
  }

  return v6;
}

- (void)_carrierReportJunkMetricsForSMSWithSubject:(id)subject isGroupchat:(BOOL)groupchat hasAttachments:(BOOL)attachments
{
  groupchatCopy = groupchat;
  v15[1] = *MEMORY[0x277D85DE8];
  subjectCopy = subject;
  v8 = subjectCopy;
  if (groupchatCopy || attachments || [subjectCopy length])
  {
    if (groupchatCopy)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v11 = *MEMORY[0x277D1A0D0];
  v14 = @"type";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  v15[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [mEMORY[0x277D1AAA8] trackEvent:v11 withDictionary:v13];
}

+ (id)backwardCompatibilityPrefixForLanguageCode:(id)code
{
  sub_22B7DAC78();
  codeCopy = code;
  sub_22B7DAC58();
  sub_22B7DB6A8();
  v6 = v5;
  sub_22B7DAC38();
  v8 = v7;
  v6, v7, v9, v10, v11, v12, v13, v14, v24, v26;
  v15 = sub_22B7DB678();

  v8, v16, v17, v18, v19, v20, v21, v22, v25, v27;

  return v15;
}

@end