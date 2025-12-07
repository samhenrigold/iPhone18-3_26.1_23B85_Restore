@interface IMMessageLegacyProcessingPipelineComponent
- (BOOL)_shouldUpgradeExistingMessage:(id)message input:(id)input;
- (IMMessageLegacyProcessingPipelineComponent)initWithIDSTrustedData:(id)data messageContext:(id)context idsService:(id)service filteringContext:(id)filteringContext;
- (id)runIndividuallyWithInput:(id)input;
- (void)_updateChatForInput:(id)input hadChat:(BOOL)chat;
@end

@implementation IMMessageLegacyProcessingPipelineComponent

- (IMMessageLegacyProcessingPipelineComponent)initWithIDSTrustedData:(id)data messageContext:(id)context idsService:(id)service filteringContext:(id)filteringContext
{
  dataCopy = data;
  contextCopy = context;
  serviceCopy = service;
  filteringContextCopy = filteringContext;
  v18.receiver = self;
  v18.super_class = IMMessageLegacyProcessingPipelineComponent;
  v15 = [(IMMessageLegacyProcessingPipelineComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsTrustedData, data);
    objc_storeStrong(&v16->_messageContext, context);
    objc_storeStrong(&v16->_idsService, service);
    objc_storeStrong(&v16->_filteringContext, filteringContext);
  }

  return v16;
}

- (id)runIndividuallyWithInput:(id)input
{
  v101 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      messageItems = [inputCopy messageItems];
      firstObject = [messageItems firstObject];
      guid = [firstObject guid];
      *buf = 138412290;
      v96 = guid;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Started processing for Message: %@", buf, 0xCu);
    }
  }

  messageItems2 = [inputCopy messageItems];
  v10 = [messageItems2 count] == 0;

  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Failed to find any message items", buf, 2u);
      }
    }

    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    serviceSession = [v22 initWithDomain:*MEMORY[0x277D18DF8] code:10 userInfo:0];
    v87 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:serviceSession];
  }

  else
  {
    serviceSession = [inputCopy serviceSession];
    v86 = serviceSession;
    if (serviceSession)
    {
      chat = [inputCopy chat];
      if (!chat && IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> No chat found, going to create one later", buf, 2u);
        }
      }

      v13 = +[IMDMessageStore sharedInstance];
      gUID = [inputCopy GUID];
      v15 = [v13 messageWithGUID:gUID];

      if ([v15 isFinished] && !-[IMMessageLegacyProcessingPipelineComponent _shouldUpgradeExistingMessage:input:](self, "_shouldUpgradeExistingMessage:input:", v15, inputCopy))
      {
        if (IMOSLoggingEnabled())
        {
          v45 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            gUID2 = [inputCopy GUID];
            *buf = 138412290;
            v96 = gUID2;
            _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "*** Bailing, we already had a finished message for this in the database (%@). ***", buf, 0xCu);
          }
        }

        v47 = im_checkpointIDSService();
        gUID3 = [inputCopy GUID];
        [inputCopy wantsCheckpointing];
        im_sendMessageCheckpointIfNecessary();

        [chat isBlackholed];
        if ([inputCopy wantsDeliveryReceipt])
        {
          gUID4 = [inputCopy GUID];
          [inputCopy wantsDeliveryReceipt];
          v50 = im_sendCertifiedDeliveryReceiptIfPossible();

          if ((v50 & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "Wanted to send a delivery receipt, but failed to send a certified delivery receipt. This should be ok because this was a message redelivery though.", buf, 2u);
              }
            }
          }
        }

        if ([inputCopy isFromStorage])
        {
          v52 = +[IMDMessageFromStorageController iMessageStorageController];
          isLastFromStorage = [inputCopy isLastFromStorage];
          batchContext = [inputCopy batchContext];
          [v52 noteItemProcessed:isLastFromStorage batchContext:batchContext usingService:self->_idsService];
        }

        [(IMMessageLegacyProcessingPipelineComponent *)self _updateChatForInput:inputCopy hadChat:chat != 0];
        v87 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      else
      {
        messageItems3 = [inputCopy messageItems];
        lastObject = [messageItems3 lastObject];

        v17 = +[IMDAccountController sharedAccountController];
        accountID = [lastObject accountID];
        v19 = [v17 accountForAccountID:accountID];
        v20 = v19;
        if (v19)
        {
          account = v19;
        }

        else
        {
          account = [inputCopy account];
        }

        fromIdentifier = [inputCopy fromIdentifier];
        toIdentifier = [inputCopy toIdentifier];
        isFromMe = [inputCopy isFromMe];
        isFromStorage = [inputCopy isFromStorage];
        isLastFromStorage2 = [inputCopy isLastFromStorage];
        batchContext2 = [inputCopy batchContext];
        wantsDeliveryReceipt = [inputCopy wantsDeliveryReceipt];
        wantsCheckpointing = [inputCopy wantsCheckpointing];
        participantIdentifiers = [inputCopy participantIdentifiers];
        groupID = [inputCopy groupID];
        currentGroupName = [inputCopy currentGroupName];
        groupPhotoCreationTime = [inputCopy groupPhotoCreationTime];
        availabilityVerificationRecipientChannelIDPrefix = [inputCopy availabilityVerificationRecipientChannelIDPrefix];
        availabilityVerificationRecipientEncryptionValidationToken = [inputCopy availabilityVerificationRecipientEncryptionValidationToken];
        availabilityOffGridRecipientSubscriptionValidationToken = [inputCopy availabilityOffGridRecipientSubscriptionValidationToken];
        availabilityOffGridRecipientEncryptionValidationToken = [inputCopy availabilityOffGridRecipientEncryptionValidationToken];
        if ([inputCopy conformsToProtocol:&unk_283F6EB70])
        {
          v26 = inputCopy;
          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              balloonPluginBundleID = [v26 balloonPluginBundleID];
              balloonPluginPayload = [v26 balloonPluginPayload];
              combinedPayloadAttachmentDictionary = [v26 combinedPayloadAttachmentDictionary];
              v31 = combinedPayloadAttachmentDictionary;
              v32 = @"YES";
              if (balloonPluginPayload)
              {
                v33 = @"YES";
              }

              else
              {
                v33 = @"NO";
              }

              *buf = 138412802;
              v96 = balloonPluginBundleID;
              v98 = v33;
              v97 = 2112;
              if (!combinedPayloadAttachmentDictionary)
              {
                v32 = @"NO";
              }

              v99 = 2112;
              v100 = v32;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "Processing a balloon plugin payload (identifier: %@, payload: %@, combinedPayloadAttachmentDictionary: %@)", buf, 0x20u);
            }
          }

          combinedPayloadAttachmentDictionary2 = [v26 combinedPayloadAttachmentDictionary];
        }

        else
        {
          combinedPayloadAttachmentDictionary2 = 0;
        }

        [lastObject addTelemetryMetricForKey:3];
        v87 = objc_alloc_init(MEMORY[0x277D18E08]);
        groupParticipantVersion = [inputCopy groupParticipantVersion];
        [v86 requestGroupPhotoIfNecessary:chat incomingParticipantVersion:objc_msgSend(groupParticipantVersion incomingGroupPhotoCreationTime:"integerValue") toIdentifier:groupPhotoCreationTime fromIdentifier:fromIdentifier messageIsFromStorage:{toIdentifier, isFromStorage}];

        mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        isTranscriptBackgroundsEnabled = [mEMORY[0x277D1A9B8] isTranscriptBackgroundsEnabled];

        if (isTranscriptBackgroundsEnabled)
        {
          transcriptBackgroundVersion = [inputCopy transcriptBackgroundVersion];
          [v86 requestTranscriptBackgroundIfNecessary:chat incomingVersion:objc_msgSend(transcriptBackgroundVersion toIdentifier:"unsignedLongLongValue") fromIdentifier:fromIdentifier messageIsFromStorage:{toIdentifier, isFromStorage}];
        }

        selfCopy = self;
        fromToken = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromToken];
        fromPushID = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData fromPushID];
        v41 = [MEMORY[0x277CCABB0] numberWithBool:wantsDeliveryReceipt];
        inlineAttachmentsDictionary = [inputCopy inlineAttachmentsDictionary];
        attributionInfoArray = [inputCopy attributionInfoArray];
        nicknameDictionary = [inputCopy nicknameDictionary];
        messageContext = self->_messageContext;
        idsService = self->_idsService;
        isFromTrustedSender = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromTrustedSender];
        isFromSnapTrustedSender = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromSnapTrustedSender];
        wasContextUsed = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext wasContextUsed];
        isBlackholed = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext isBlackholed];
        shouldTrackForRequery = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext shouldTrackForRequery];
        isFiltered = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext isFiltered];
        spamDetectionSource = [(IMFilterMessagePipelineComponentContext *)self->_filteringContext spamDetectionSource];
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = sub_22B5A9764;
        v90[3] = &unk_278705900;
        v90[4] = selfCopy;
        v91 = inputCopy;
        v94 = chat != 0;
        v92 = v87;
        v93 = lastObject;
        BYTE4(v58) = shouldTrackForRequery;
        BYTE3(v58) = isBlackholed;
        BYTE2(v58) = wasContextUsed;
        BYTE1(v58) = isFromSnapTrustedSender;
        LOBYTE(v58) = isFromTrustedSender;
        BYTE1(v57) = wantsCheckpointing;
        LOBYTE(v57) = 0;
        BYTE2(v56) = isFromStorage;
        BYTE1(v56) = isLastFromStorage2;
        LOBYTE(v56) = isFromMe;
        [v86 _blastDoorProcessingWithIMMessageItem:v93 chat:chat account:account fromToken:fromToken fromIDSID:fromPushID fromIdentifier:fromIdentifier toIdentifier:toIdentifier participants:participantIdentifiers groupName:currentGroupName groupID:groupID isFromMe:v56 isLastFromStorage:batchContext2 isFromStorage:v57 batchContext:v41 hideLockScreenNotification:combinedPayloadAttachmentDictionary2 wantsCheckpointing:inlineAttachmentsDictionary needsDeliveryReceipt:attributionInfoArray messageBalloonPayloadAttachmentDictionary:nicknameDictionary inlineAttachments:availabilityVerificationRecipientChannelIDPrefix attributionInfoArray:availabilityVerificationRecipientEncryptionValidationToken nicknameDictionary:availabilityOffGridRecipientSubscriptionValidationToken availabilityVerificationRecipientChannelIDPrefix:availabilityOffGridRecipientEncryptionValidationToken availabilityVerificationRecipientEncryptionValidationToken:idsService availabilityOffGridRecipientSubscriptionValidationToken:messageContext availabilityOffGridRecipientEncryptionValidationToken:v58 idsService:isFiltered messageContext:spamDetectionSource isFromTrustedSender:v90 isFromSnapTrustedSender:? wasContextUsed:? isBlackholed:? shouldTrackForRequery:? isFiltered:? spamDetectionSource:? completionBlock:?];

        serviceSession = v86;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "<IMMessageLegacyProcessingPipelineComponent> Failed to find service session", buf, 2u);
        }
      }

      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v89 = [v24 initWithDomain:*MEMORY[0x277D18DF8] code:1 userInfo:0];
      v87 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v89];
    }
  }

  return v87;
}

- (void)_updateChatForInput:(id)input hadChat:(BOOL)chat
{
  chatCopy = chat;
  v24 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  [inputCopy setHadChat:chatCopy];
  if (!chatCopy)
  {
    v6 = +[IMDChatRegistry sharedInstance];
    participantIdentifiers = [inputCopy participantIdentifiers];
    v8 = [participantIdentifiers count];

    if (v8 < 3)
    {
      fromDisplayID = [inputCopy fromDisplayID];
      account = [inputCopy account];
      v19 = [v6 existingChatForID:fromDisplayID account:account];
    }

    else
    {
      replicationSourceServiceName = [inputCopy replicationSourceServiceName];
      v10 = replicationSourceServiceName;
      v11 = *MEMORY[0x277D1A620];
      if (replicationSourceServiceName)
      {
        v11 = replicationSourceServiceName;
      }

      v12 = v11;

      fromDisplayID = [inputCopy fromIdentifier];
      account = [inputCopy toIdentifier];
      currentGroupName = [inputCopy currentGroupName];
      participantIdentifiers2 = [inputCopy participantIdentifiers];
      _IDsFromURIs = [participantIdentifiers2 _IDsFromURIs];
      groupID = [inputCopy groupID];
      v19 = [IMFindChatProcessingPipelineComponent findGroupChatWithFromIdentifier:fromDisplayID toIdentifier:account groupName:currentGroupName participants:_IDsFromURIs groupID:groupID serviceName:v12 chatRegistry:v6];
    }

    if (v19)
    {
      [inputCopy setChat:v19];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Chat set: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D44F8(v21);
      }
    }
  }
}

- (BOOL)_shouldUpgradeExistingMessage:(id)message input:(id)input
{
  messageCopy = message;
  replicationSourceServiceName = [input replicationSourceServiceName];
  v7 = [messageCopy scheduleType] == 2 && objc_msgSend(messageCopy, "scheduleState") != 0;
  if ([replicationSourceServiceName length])
  {
    service = [messageCopy service];
    v7 |= [service isEqualToString:replicationSourceServiceName];
  }

  return v7 & 1;
}

@end