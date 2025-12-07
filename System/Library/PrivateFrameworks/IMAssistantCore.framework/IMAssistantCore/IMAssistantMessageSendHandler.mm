@interface IMAssistantMessageSendHandler
- (BOOL)canSendLocationMessageWithLocationManager:(id)manager withError:(int64_t *)error;
- (BOOL)recipientHandleResolutionResultsAllowedByScreentime:(id)screentime error:(id *)error;
- (BOOL)shouldContinueToExamineRelevantChatsWithMatches:(id)matches nextChat:(id)chat;
- (BOOL)updateSenderIdentityForNewlyCreatedChat:(id)chat;
- (IMAssistantMessageSendHandler)initWithDataSource:(id)source delegate:(id)delegate intentIdentifier:(id)identifier;
- (IMAssistantMessageSendHandlerDelegate)messageSendHandlerDelegate;
- (id)contactResolutionResultForContacts:(id)contacts matchingRecipient:(id)recipient;
- (id)contactsWithDuplicateNamesAmongContacts:(id)contacts;
- (id)findValidMappingOfRequestedRecipientToChatParticipantAmongMatches:(id)matches;
- (id)handleResolutionResultForHandles:(id)handles resolvedContactForAlternatives:(id)alternatives recipient:(id)recipient;
- (id)makeIMMessageFromSharedLinkURL:(id)l;
- (id)makeIMMessageFromText:(id)text;
- (id)recipientDisambiguationResultsFromMultipleRelevantChats:(id)chats;
- (id)recipientsResolutionFailureResultWithResult:(id)result forRecipient:(id)recipient amongRecipients:(id)recipients;
- (id)resolveMessageContentWithString:(id)string;
- (id)resolveRecipientsByFindingExistingRelevantChatsForRecipients:(id)recipients withMatchingHandlesByRecipient:(id)recipient fromChats:(id)chats;
- (id)resolveRecipientsWithGroupNameOrConversationIdentifier:(id)identifier forIntent:(id)intent;
- (id)resolvedRecipientsFromChat:(id)chat;
- (void)confirmSendMessage:(id)message completion:(id)completion;
- (void)handleSendMessage:(id)message completion:(id)completion;
- (void)isSensitiveFileAttachmentURLs:(id)ls chat:(id)chat completion:(id)completion;
- (void)resolveContentForSendMessage:(id)message withCompletion:(id)completion;
- (void)resolveOutgoingMessageTypeForSendMessage:(id)message withCompletion:(id)completion;
- (void)resolveRecipientsForSendMessage:(id)message completion:(id)completion;
- (void)resolveRecipientsWithCRR:(id)r forIntent:(id)intent completion:(id)completion;
- (void)resolveRecipientsWithoutCRR:(id)r forIntent:(id)intent completion:(id)completion;
- (void)resolveSpeakableGroupNameForSendMessage:(id)message withCompletion:(id)completion;
- (void)sendLocalFileAttachmentURLs:(id)ls chat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier sourceApplicationID:(id)iD sentMessages:(id)messages completion:(id)self0;
- (void)sendLocationMessageToChat:(id)chat sourceApplicationID:(id)d sentMessages:(id)messages completion:(id)completion;
- (void)sendMessageWithDraft:(id)draft expressiveSendStyleID:(id)d idsIdentifier:(id)identifier executionContext:(int64_t)context sourceApplicationID:(id)iD toChat:(id)chat completion:(id)completion;
- (void)sendMessagesWithText:(id)text currentLocation:(BOOL)location sharedLinkURL:(id)l audioMessageAttachment:(id)attachment photoLibraryAttachment:(id)libraryAttachment fileAttachments:(id)attachments expressiveSendStyleID:(id)d idsIdentifier:(id)self0 executionContext:(int64_t)self1 shouldHideSiriAttribution:(BOOL)self2 toChat:(id)self3 completion:(id)self4;
- (void)sendPhotoAssetMessageToChat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier phAsset:(id)asset sentMessages:(id)messages sourceApplicationID:(id)iD completion:(id)self0;
@end

@implementation IMAssistantMessageSendHandler

- (IMAssistantMessageSendHandler)initWithDataSource:(id)source delegate:(id)delegate intentIdentifier:(id)identifier
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = IMAssistantMessageSendHandler;
  v10 = [(IMAssistantMessageHandler *)&v13 initWithDataSource:source intentIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_messageSendHandlerDelegate, delegate);
  }

  return v11;
}

- (IMAssistantMessageSendHandlerDelegate)messageSendHandlerDelegate
{
  messageSendHandlerDelegate = self->_messageSendHandlerDelegate;
  if (!messageSendHandlerDelegate)
  {
    v4 = objc_alloc_init(IMAssistantMessageSendHandlerDefaultDelegate);
    v5 = self->_messageSendHandlerDelegate;
    self->_messageSendHandlerDelegate = v4;

    messageSendHandlerDelegate = self->_messageSendHandlerDelegate;
  }

  return messageSendHandlerDelegate;
}

- (void)confirmSendMessage:(id)message completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v6 = _IMAssistantCoreSendMessageSignpostLogHandle(completionCopy);
  spid = os_signpost_id_generate(v6);

  v8 = _IMAssistantCoreSendMessageSignpostLogHandle(v7);
  v9 = v8;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, spid, "confirmSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_2547A086C;
  v36 = sub_2547A087C;
  v37 = [objc_alloc(MEMORY[0x277CD4080]) initWithCode:1 userActivity:0];
  v10 = messageCopy;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = v10;
  attachments = [v10 attachments];
  v12 = [attachments countByEnumeratingWithState:&v38 objects:buf count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(attachments);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        if ([v16 currentLocation])
        {
          v17 = IMLogHandleForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *v42 = 138412290;
            v43 = v16;
            _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Intent contains an current location attachment: %@", v42, 0xCu);
          }

          v13 = 1;
        }
      }

      v12 = [attachments countByEnumeratingWithState:&v38 objects:buf count:16];
    }

    while (v12);

    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2547A0884;
      block[3] = &unk_2797862E8;
      block[4] = self;
      v30 = &v32;
      v31 = spid;
      v29 = completionCopy;
      v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      dispatch_async(MEMORY[0x277D85CD0], v18);

      goto LABEL_24;
    }
  }

  else
  {
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v33[5];
    *buf = 138412290;
    v45 = v20;
    _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Completing confirmSendMessage with %@", buf, 0xCu);
  }

  v22 = _IMAssistantCoreSendMessageSignpostLogHandle(v21);
  v23 = v22;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v23, OS_SIGNPOST_INTERVAL_END, spid, "confirmSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  (*(completionCopy + 2))(completionCopy, v33[5]);
LABEL_24:
  _Block_object_dispose(&v32, 8);
}

- (void)handleSendMessage:(id)message completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = _IMAssistantCoreSendMessageSignpostLogHandle(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "handleSendMessageIntent", &unk_2547CAD0B, buf, 2u);
  }

  v13 = IMLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = messageCopy;
    _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Performing intent: %@", buf, 0xCu);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547A0C00;
  v17[3] = &unk_279786338;
  v20 = completionCopy;
  v21 = v9;
  v18 = messageCopy;
  selfCopy = self;
  v14 = completionCopy;
  v15 = messageCopy;
  v16 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17);
  dispatch_async(MEMORY[0x277D85CD0], v16);
}

- (BOOL)updateSenderIdentityForNewlyCreatedChat:(id)chat
{
  chatCopy = chat;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  coreTelephonySubscriptionsDataSource = [messageHandlerDataSource coreTelephonySubscriptionsDataSource];
  deviceHasMultipleSubscriptions = [coreTelephonySubscriptionsDataSource deviceHasMultipleSubscriptions];

  if (deviceHasMultipleSubscriptions)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Sending message to a new chat. Attempting to determine best sender identity.", buf, 2u);
    }

    v9 = [chatCopy participantsWithState:17];
    v10 = [v9 __imArrayByApplyingBlock:&unk_286692FB8];
    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    coreTelephonySubscriptionsDataSource2 = [messageHandlerDataSource2 coreTelephonySubscriptionsDataSource];
    v13 = [coreTelephonySubscriptionsDataSource2 bestSenderIdentityForChatWithHandleIDs:v10];

    v14 = v13 != 0;
    if (v13)
    {
      messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      coreTelephonySubscriptionsDataSource3 = [messageHandlerDataSource3 coreTelephonySubscriptionsDataSource];
      v17 = [coreTelephonySubscriptionsDataSource3 handleIDForSenderIdentity:v13];

      messageHandlerDataSource4 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      coreTelephonySubscriptionsDataSource4 = [messageHandlerDataSource4 coreTelephonySubscriptionsDataSource];
      v20 = [coreTelephonySubscriptionsDataSource4 simIDForSenderIdentity:v13];

      [chatCopy setLastAddressedHandleID:v17];
      [chatCopy setLastAddressedSIMID:v20];
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v22 = 0;
        _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Could not determine preferred sender identity for handleIDs. This may mean that the user has conflicting sim preferences for these recipients.", v22, 2u);
      }
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)resolveOutgoingMessageTypeForSendMessage:(id)message withCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  outgoingMessageType = [messageCopy outgoingMessageType];
  v8 = IMLogHandleForCategory();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (outgoingMessageType == 2)
  {
    if (v9)
    {
      v12 = 134217984;
      outgoingMessageType2 = [messageCopy outgoingMessageType];
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Resolving Outgoing Message Type with Audio (%ld)", &v12, 0xCu);
    }

    v10 = 2;
  }

  else if (v9)
  {
    v12 = 134217984;
    outgoingMessageType2 = [messageCopy outgoingMessageType];
    v10 = 1;
    _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Resolving Outgoing Message Type with Text (%ld)", &v12, 0xCu);
  }

  else
  {
    v10 = 1;
  }

  v11 = [MEMORY[0x277CD3E48] successWithResolvedOutgoingMessageType:v10];
  completionCopy[2](completionCopy, v11);
}

- (void)resolveRecipientsForSendMessage:(id)message completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle(messageCopy);
  v9 = os_signpost_id_generate(v8);

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v10, OS_LOG_TYPE_INFO, "Will not use CRR to resolve recipients.", buf, 2u);
  }

  v12 = _IMAssistantCoreSendMessageSignpostLogHandle(v11);
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveRecipientsForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  recipients = [messageCopy recipients];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2547A2FE8;
  v16[3] = &unk_279786380;
  v17 = completionCopy;
  v18 = v9;
  v15 = completionCopy;
  [(IMAssistantMessageSendHandler *)self resolveRecipientsWithoutCRR:recipients forIntent:messageCopy completion:v16];
}

- (void)resolveContentForSendMessage:(id)message withCompletion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = _IMAssistantCoreSendMessageSignpostLogHandle(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveContentForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  attachments = [messageCopy attachments];
  if ([attachments count])
  {
    content = [messageCopy content];
    v15 = [content length];

    if (!v15)
    {
      v16 = IMLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v25 = 0;
        _os_log_impl(&dword_25479E000, v16, OS_LOG_TYPE_INFO, "Intent contains an attachment and no content. Returning notRequired for content.", v25, 2u);
      }

      notRequired = [MEMORY[0x277CD4218] notRequired];
      v18 = notRequired;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Resolving content slot with a string value", v24, 2u);
  }

  content2 = [messageCopy content];
  v18 = [(IMAssistantMessageSendHandler *)self resolveMessageContentWithString:content2];

LABEL_13:
  v21 = _IMAssistantCoreSendMessageSignpostLogHandle(notRequired);
  v22 = v21;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v23 = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v22, OS_SIGNPOST_INTERVAL_END, v9, "resolveContentForSendMessage", &unk_2547CAD0B, v23, 2u);
  }

  completionCopy[2](completionCopy, v18);
}

- (void)resolveSpeakableGroupNameForSendMessage:(id)message withCompletion:(id)completion
{
  v64 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = _IMAssistantCoreSendMessageSignpostLogHandle(completionCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = _IMAssistantCoreSendMessageSignpostLogHandle(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
  }

  speakableGroupName = [messageCopy speakableGroupName];
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    spokenPhrase = [speakableGroupName spokenPhrase];
    vocabularyIdentifier = [speakableGroupName vocabularyIdentifier];
    *buf = 138412546;
    v61 = spokenPhrase;
    v62 = 2112;
    v63 = vocabularyIdentifier;
    _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Resolving speakableGroupName: %@ vocabID: %@", buf, 0x16u);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB40]);
  conversationIdentifier = [messageCopy conversationIdentifier];
  v19 = [conversationIdentifier length];

  if (v19)
  {
    conversationIdentifier2 = [messageCopy conversationIdentifier];
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = conversationIdentifier2;
      _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Intent contains a conversationIdentifier, %@, using that to resolve group name", buf, 0xCu);
    }

    [v17 addObject:conversationIdentifier2];
  }

  vocabularyIdentifier2 = [speakableGroupName vocabularyIdentifier];
  if ([vocabularyIdentifier2 length])
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v61 = vocabularyIdentifier2;
      _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Intent contains a speakableGroupName.vocabularyIdentifier, %@, using that to resolve group name", buf, 0xCu);
    }

    [v17 addObject:vocabularyIdentifier2];
  }

  alternativeSpeakableMatches = [speakableGroupName alternativeSpeakableMatches];
  if ([alternativeSpeakableMatches count])
  {
    v44 = vocabularyIdentifier2;
    selfCopy = self;
    v46 = v9;
    v47 = speakableGroupName;
    v48 = completionCopy;
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [alternativeSpeakableMatches count];
      *buf = 134218242;
      v61 = v26;
      v62 = 2112;
      v63 = alternativeSpeakableMatches;
      _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "speakableGroupName contains %ld alternativeSpeakableMatches: %@", buf, 0x16u);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v27 = alternativeSpeakableMatches;
    v28 = [v27 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v56;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v55 + 1) + 8 * i);
          vocabularyIdentifier3 = [v32 vocabularyIdentifier];
          if ([vocabularyIdentifier3 length])
          {
            [v17 addObject:vocabularyIdentifier3];
          }

          else
          {
            v34 = IMLogHandleForCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v61 = v32;
              _os_log_impl(&dword_25479E000, v34, OS_LOG_TYPE_INFO, "alternativeSpeakableMatch does not contain a vocabularyIdentifier, ignoring. alternativeSpeakableMatch: %@", buf, 0xCu);
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v29);
    }

    completionCopy = v48;
    v9 = v46;
    speakableGroupName = v47;
    vocabularyIdentifier2 = v44;
    self = selfCopy;
  }

  if ([v17 count] || (objc_msgSend(speakableGroupName, "spokenPhrase"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "length"), v35, v36))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2547A39B8;
    block[3] = &unk_2797863A8;
    v50 = v17;
    selfCopy2 = self;
    v54 = v9;
    v53 = completionCopy;
    v52 = speakableGroupName;
    v37 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    dispatch_async(MEMORY[0x277D85CD0], v37);

    notRequired = v50;
  }

  else
  {
    v39 = IMLogHandleForCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v39, OS_LOG_TYPE_INFO, "Intent contains neither a conversationID nor a spoken group name. Returning notRequired for resolveSpeakableGroupName.", buf, 2u);
    }

    v41 = _IMAssistantCoreSendMessageSignpostLogHandle(v40);
    v42 = v41;
    if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v42, OS_SIGNPOST_INTERVAL_END, v9, "resolveSpeakableGroupNameForSendMessage", &unk_2547CAD0B, buf, 2u);
    }

    notRequired = [MEMORY[0x277CD4198] notRequired];
    (*(completionCopy + 2))(completionCopy, notRequired);
  }
}

- (BOOL)canSendLocationMessageWithLocationManager:(id)manager withError:(int64_t *)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  if (([managerCopy locationAuthorizationDetermined] & 1) == 0)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = 138412290;
      v17 = mainBundle;
      _os_log_impl(&dword_25479E000, v9, OS_LOG_TYPE_INFO, "Have not determined authorization to send current location message for bundle %@. Returning failure, prompting user to determine authorization for the bundle.", &v16, 0xCu);
    }

    if (error)
    {
      v8 = MEMORY[0x277CD4560];
      goto LABEL_11;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (![managerCopy locationAuthorizationDenied])
  {
    if ([managerCopy preciseLocationAuthorized])
    {
      v12 = 1;
      goto LABEL_20;
    }

    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = 138412290;
      v17 = mainBundle2;
      _os_log_impl(&dword_25479E000, v13, OS_LOG_TYPE_INFO, "Authorization to get precise location has been disabled for bundle %@. Returning failure, prompting user to determine authorization for the bundle.", &v16, 0xCu);
    }

    if (error)
    {
      v11 = 1005;
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = 138412290;
    v17 = mainBundle3;
    _os_log_impl(&dword_25479E000, v6, OS_LOG_TYPE_INFO, "Authorization to send current location has been explicitly disabled for bundle %@. Returning failure, prompting user to determine authorization for the bundle.", &v16, 0xCu);
  }

  if (!error)
  {
    goto LABEL_19;
  }

  v8 = MEMORY[0x277CD4568];
LABEL_11:
  v11 = *v8;
LABEL_12:
  v12 = 0;
  *error = v11;
LABEL_20:

  return v12;
}

- (void)sendMessageWithDraft:(id)draft expressiveSendStyleID:(id)d idsIdentifier:(id)identifier executionContext:(int64_t)context sourceApplicationID:(id)iD toChat:(id)chat completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  draftCopy = draft;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  chatCopy = chat;
  completionCopy = completion;
  if ([dCopy length])
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = dCopy;
      _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Setting expressiveSendStyleID on message: %@ ", buf, 0xCu);
    }

    [draftCopy setExpressiveSendStyleID:dCopy];
  }

  if ([iDCopy length])
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = iDCopy;
      _os_log_impl(&dword_25479E000, v22, OS_LOG_TYPE_INFO, "Setting source application ID on message: %@", buf, 0xCu);
    }

    [draftCopy setSourceApplicationID:iDCopy];
  }

  if ([identifierCopy length])
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = identifierCopy;
      _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Setting IDS identifier on IMMessage: %@ ", buf, 0xCu);
    }

    [draftCopy setNotificationIDSTokenURI:identifierCopy];
  }

  if (context == 1)
  {
    guid = [draftCopy guid];
    v25 = IMLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = guid;
      _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Suppressing send sound for message GUID: %@ ", buf, 0xCu);
    }

    v26 = guid;
    array = MEMORY[0x259C19020](@"com.apple.MobileSMS", @"SuppressingSendSoundMessageGUIDs");
    if (!array)
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v28 = [array arrayByAddingObject:v26];

    IMSetDomainValueForKey();
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_2547A5EA8;
  v32[3] = &unk_2797863D0;
  v33 = chatCopy;
  v34 = draftCopy;
  selfCopy = self;
  v36 = completionCopy;
  v29 = completionCopy;
  v30 = draftCopy;
  v31 = chatCopy;
  [v31 refreshServiceForSendingWithCompletion:v32];
}

- (id)makeIMMessageFromSharedLinkURL:(id)l
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = *MEMORY[0x277D19140];
  lCopy = l;
  v4 = [lCopy url];
  v11[1] = *MEMORY[0x277D19160];
  v12[0] = v4;
  v12[1] = &unk_286695DF8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v6 = [lCopy url];

  absoluteString = [v6 absoluteString];

  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:absoluteString attributes:v5];
  v9 = [MEMORY[0x277D18DA0] instantMessageWithText:v8 flags:65541 threadIdentifier:0];
  [v9 setBalloonBundleID:*MEMORY[0x277D19730]];

  return v9;
}

- (void)isSensitiveFileAttachmentURLs:(id)ls chat:(id)chat completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  chatCopy = chat;
  completionCopy = completion;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  group = dispatch_group_create();
  v23 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = lsCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v8)
  {
    v9 = *v36;
    v10 = *MEMORY[0x277CBE7B8];
    v11 = *MEMORY[0x277CE1DB0];
    do
    {
      v12 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * v12);
        v34 = 0;
        v14 = [v13 getResourceValue:&v34 forKey:v10 error:0];
        v15 = v34;
        v16 = v15;
        if (v14 && [v15 conformsToType:v11])
        {
          dispatch_group_enter(group);
          messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
          commSafetyDataSource = [messageHandlerDataSource commSafetyDataSource];
          chatIdentifier = [chatCopy chatIdentifier];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = sub_2547A6510;
          v30[3] = &unk_2797863F8;
          v31 = v23;
          v33 = v39;
          v32 = group;
          [commSafetyDataSource isSensitiveContent:v13 withChatID:chatIdentifier completionHandler:v30];
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547A6658;
  block[3] = &unk_279786420;
  v28 = completionCopy;
  v29 = v39;
  v20 = completionCopy;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v39, 8);
}

- (void)sendLocalFileAttachmentURLs:(id)ls chat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier sourceApplicationID:(id)iD sentMessages:(id)messages completion:(id)self0
{
  v49 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  chatCopy = chat;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  messagesCopy = messages;
  completionCopy = completion;
  v18 = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = lsCopy;
  v19 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v45;
    do
    {
      v22 = 0;
      do
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * v22);
        v24 = objc_alloc_init(MEMORY[0x277CCA9E8]);
        dispatch_group_enter(v18);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = sub_2547A6974;
        v36[3] = &unk_279786498;
        v36[4] = self;
        v37 = chatCopy;
        v38 = v18;
        v39 = dCopy;
        v40 = identifierCopy;
        contextCopy = context;
        v41 = iDCopy;
        v42 = messagesCopy;
        [v24 coordinateReadingItemAtURL:v23 options:0 error:0 byAccessor:v36];

        ++v22;
      }

      while (v20 != v22);
      v20 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v20);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547A72A4;
  block[3] = &unk_2797864C0;
  v34 = messagesCopy;
  v35 = completionCopy;
  v25 = completionCopy;
  v26 = messagesCopy;
  dispatch_group_notify(v18, MEMORY[0x277D85CD0], block);
}

- (id)makeIMMessageFromText:(id)text
{
  v3 = MEMORY[0x277CCA898];
  textCopy = text;
  v5 = [[v3 alloc] initWithString:textCopy];

  __im_attributedStringByAssigningMessagePartNumbers = [v5 __im_attributedStringByAssigningMessagePartNumbers];
  v7 = [MEMORY[0x277D18DA0] instantMessageWithText:__im_attributedStringByAssigningMessagePartNumbers flags:5 threadIdentifier:0];

  return v7;
}

- (void)sendLocationMessageToChat:(id)chat sourceApplicationID:(id)d sentMessages:(id)messages completion:(id)completion
{
  chatCopy = chat;
  dCopy = d;
  messagesCopy = messages;
  completionCopy = completion;
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v14, OS_LOG_TYPE_INFO, "Determining location authorization status.", buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  locationManagerDataSource = [messageHandlerDataSource locationManagerDataSource];

  *buf = 0;
  v17 = [(IMAssistantMessageSendHandler *)self canSendLocationMessageWithLocationManager:locationManagerDataSource withError:buf];
  v18 = IMLogHandleForCategory();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (v17)
  {
    if (v19)
    {
      *v26 = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Authorized to send current location message. Sending.", v26, 2u);
    }

    mEMORY[0x277D18D98] = [MEMORY[0x277D18D98] sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2547A7660;
    v21[3] = &unk_2797864E8;
    v25 = completionCopy;
    v22 = chatCopy;
    selfCopy = self;
    v24 = messagesCopy;
    [mEMORY[0x277D18D98] sendCurrentLocationMessageWithChat:v22 withLocationManager:locationManagerDataSource withSourceApplicationIdentifier:dCopy foregroundAssertionForBundleIdentifier:@"com.apple.MobileSMS.MessagesAssistantExtension" completion:v21];
  }

  else
  {
    if (v19)
    {
      *v26 = 0;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Not authorized to send current location message.", v26, 2u);
    }

    (*(completionCopy + 2))(completionCopy, *buf, 0);
  }
}

- (void)sendPhotoAssetMessageToChat:(id)chat executionContext:(int64_t)context expressiveSendStyleID:(id)d idsIdentifier:(id)identifier phAsset:(id)asset sentMessages:(id)messages sourceApplicationID:(id)iD completion:(id)self0
{
  v122 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dCopy = d;
  identifierCopy = identifier;
  assetCopy = asset;
  messagesCopy = messages;
  iDCopy = iD;
  completionCopy = completion;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  fileManagerDataSource = [messageHandlerDataSource fileManagerDataSource];
  messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  fileTransferCenterDataSource = [messageHandlerDataSource2 fileTransferCenterDataSource];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = sub_2547A8304;
  v89[3] = &unk_279786538;
  v75 = completionCopy;
  v95 = v75;
  v89[4] = self;
  v71 = dCopy;
  v90 = v71;
  v72 = identifierCopy;
  v91 = v72;
  contextCopy = context;
  v74 = iDCopy;
  v92 = v74;
  v69 = chatCopy;
  v93 = v69;
  v73 = messagesCopy;
  v94 = v73;
  v81 = fileManagerDataSource;
  v80 = fileTransferCenterDataSource;
  v82 = assetCopy;
  v77 = v89;
  v23 = IMLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [v82 localIdentifier];
    *buf = 138412290;
    v121 = localIdentifier;
    _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Building a PHAsset transfer message based on the PHAsset with id: %@", buf, 0xCu);
  }

  v76 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    hasAdjustments = [v82 hasAdjustments];
    v27 = @"The requested PHAsset does not have adjustments, we will use the original resources.";
    if (hasAdjustments)
    {
      v27 = @"The requested PHAsset has adjustments, we will use the edited resources.";
    }

    *buf = 138412290;
    v121 = v27;
    _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if ([v82 hasAdjustments])
  {
    v28 = 5;
  }

  else
  {
    v28 = 1;
  }

  if ([v82 hasAdjustments])
  {
    v29 = 6;
  }

  else
  {
    v29 = 2;
  }

  hasAdjustments2 = [v82 hasAdjustments];
  v31 = 9;
  if (hasAdjustments2)
  {
    v31 = 10;
  }

  v83 = v31;
  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x3032000000;
  v109[3] = sub_2547A086C;
  v109[4] = sub_2547A087C;
  v110 = 0;
  v32 = [MEMORY[0x277CD97F0] assetResourcesForAsset:v82];
  v33 = IMLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [v32 count];
    *buf = 134217984;
    v121 = v34;
    _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "The requested PHAsset has %ld resources", buf, 0xCu);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v32;
  v35 = 0;
  v36 = [obj countByEnumeratingWithState:&v105 objects:buf count:16];
  if (v36)
  {
    v84 = 0;
    v88 = 0;
    v37 = *v106;
    while (1)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v106 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v105 + 1) + 8 * i);
        v40 = IMLogHandleForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          type = [v39 type];
          LODWORD(block) = 134217984;
          *(&block + 4) = type;
          _os_log_impl(&dword_25479E000, v40, OS_LOG_TYPE_INFO, "PHAsset has an asset resource of type: %ld", &block, 0xCu);
        }

        if ([v39 type] == v28)
        {
          v42 = v88;
          v43 = v35;
          v88 = v39;
        }

        else if ([v39 type] == v29)
        {
          v42 = v84;
          v43 = v35;
          v84 = v39;
        }

        else
        {
          v42 = v35;
          v43 = v39;
          if ([v39 type] != v83)
          {
            continue;
          }
        }

        v44 = v39;

        v35 = v43;
      }

      v36 = [obj countByEnumeratingWithState:&v105 objects:buf count:16];
      if (!v36)
      {
        goto LABEL_34;
      }
    }
  }

  v84 = 0;
  v88 = 0;
LABEL_34:

  v45 = objc_alloc_init(MEMORY[0x277CD9808]);
  [v45 setNetworkAccessAllowed:0];
  if (v88 && v35)
  {
    v46 = IMLogHandleForCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_25479E000, v46, OS_LOG_TYPE_INFO, "The requested PHAsset attachment is a live photo.", &block, 2u);
    }

    originalFilename = [v88 originalFilename];
    v48 = [v81 im_randomTemporaryFileURLWithFileName:originalFilename];

    originalFilename2 = [v35 originalFilename];
    v50 = [v81 im_randomTemporaryFileURLWithFileName:originalFilename2];

    v51 = dispatch_group_create();
    dispatch_group_enter(v51);
    defaultManager = [MEMORY[0x277CD9800] defaultManager];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = sub_2547B0F58;
    v101[3] = &unk_279786780;
    v53 = v88;
    v102 = v53;
    v104 = v109;
    v54 = v51;
    v103 = v54;
    [defaultManager writeDataForAssetResource:v53 toFile:v48 options:v45 completionHandler:v101];

    dispatch_group_enter(v54);
    defaultManager2 = [MEMORY[0x277CD9800] defaultManager];
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = sub_2547B10A4;
    v97[3] = &unk_279786780;
    v56 = v35;
    v98 = v56;
    v100 = v109;
    v57 = v54;
    v99 = v57;
    [defaultManager2 writeDataForAssetResource:v56 toFile:v50 options:v45 completionHandler:v97];

    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v112 = sub_2547B11F0;
    v113 = &unk_2797867A8;
    v119 = v109;
    v118 = v77;
    v114 = v48;
    v115 = v50;
    v116 = v80;
    v117 = v76;
    v58 = v48;
    v59 = v50;
    dispatch_group_notify(v57, MEMORY[0x277D85CD0], &block);

    goto LABEL_49;
  }

  if (v88 && !v35)
  {
    v60 = IMLogHandleForCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "The requested PHAsset attachment is a photo.", &block, 2u);
    }

    originalFilename3 = [v88 originalFilename];
    v62 = [v81 im_randomTemporaryFileURLWithFileName:originalFilename3];

    defaultManager3 = [MEMORY[0x277CD9800] defaultManager];
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v112 = sub_2547B1468;
    v113 = &unk_2797867D0;
    v64 = v88;
    v114 = v64;
    v119 = v109;
    v118 = v77;
    v115 = v81;
    v116 = v80;
    v57 = v62;
    v117 = v57;
    [defaultManager3 writeDataForAssetResource:v64 toFile:v57 options:v45 completionHandler:&block];

LABEL_48:
    v58 = v114;
LABEL_49:

    goto LABEL_50;
  }

  if (v84)
  {
    v65 = IMLogHandleForCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      LOWORD(block) = 0;
      _os_log_impl(&dword_25479E000, v65, OS_LOG_TYPE_INFO, "The requested PHAsset attachment is a video.", &block, 2u);
    }

    originalFilename4 = [v84 originalFilename];
    v67 = [v81 im_randomTemporaryFileURLWithFileName:originalFilename4];

    defaultManager4 = [MEMORY[0x277CD9800] defaultManager];
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 3221225472;
    v112 = sub_2547B177C;
    v113 = &unk_2797867D0;
    v114 = v88;
    v119 = v109;
    v118 = v77;
    v115 = v81;
    v116 = v80;
    v57 = v67;
    v117 = v57;
    [defaultManager4 writeDataForAssetResource:v84 toFile:v57 options:v45 completionHandler:&block];

    goto LABEL_48;
  }

LABEL_50:

  _Block_object_dispose(v109, 8);
}

- (void)sendMessagesWithText:(id)text currentLocation:(BOOL)location sharedLinkURL:(id)l audioMessageAttachment:(id)attachment photoLibraryAttachment:(id)libraryAttachment fileAttachments:(id)attachments expressiveSendStyleID:(id)d idsIdentifier:(id)self0 executionContext:(int64_t)self1 shouldHideSiriAttribution:(BOOL)self2 toChat:(id)self3 completion:(id)self4
{
  v126 = *MEMORY[0x277D85DE8];
  textCopy = text;
  lCopy = l;
  attachmentCopy = attachment;
  libraryAttachmentCopy = libraryAttachment;
  attachmentsCopy = attachments;
  dCopy = d;
  identifierCopy = identifier;
  chatCopy = chat;
  completionCopy = completion;
  v22 = _IMAssistantCoreSendMessageSignpostLogHandle(completionCopy);
  v23 = os_signpost_id_generate(v22);

  v25 = _IMAssistantCoreSendMessageSignpostLogHandle(v24);
  v26 = v25;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "sendMessageWithText", &unk_2547CAD0B, buf, 2u);
  }

  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = sub_2547A906C;
  v118[3] = &unk_279786560;
  v120 = v23;
  v27 = completionCopy;
  v119 = v27;
  v28 = MEMORY[0x259C19590](v118);
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  v117 = 0;
  v30 = [messageHandlerDataSource screentimeAllowedToShowChat:chatCopy error:&v117];
  v31 = v117;

  if (v30)
  {
    v32 = textCopy;
    if (([chatCopy isMemberOfChat]& 1) == 0)
    {
      v47 = IMLogHandleForCategory();
      v33 = attachmentCopy;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v123 = chatCopy;
        _os_log_impl(&dword_25479E000, v47, OS_LOG_TYPE_INFO, "Send Messages Intent: Failed. Will not send to chat in Un-Joined state: %@", buf, 0xCu);
      }

      v28[2](v28, *MEMORY[0x277CD4570], 0);
      goto LABEL_23;
    }

    v33 = attachmentCopy;
    if (!textCopy && !lCopy && !attachmentCopy && !libraryAttachmentCopy && !location && ![attachmentsCopy count])
    {
      v48 = IMLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Send Messages Intent: Invoked with an empty message request.", buf, 2u);
      }

      v28[2](v28, 4, 0);
LABEL_23:
      v45 = dCopy;
      goto LABEL_56;
    }

    v34 = 0;
    if (context == 1 && !attribution)
    {
      v34 = *MEMORY[0x277D1AD60];
    }

    v80 = v31;
    v35 = IMLogHandleForCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v123 = v34;
      v124 = 2048;
      contextCopy = context;
      _os_log_impl(&dword_25479E000, v35, OS_LOG_TYPE_INFO, "Using sourceApplicationID %@ for executionContext %ld.", buf, 0x16u);
    }

    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v81 = lCopy;
    v78 = v36;
    v79 = v34;
    v77 = v27;
    if (attachmentCopy)
    {
      messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      fileManagerDataSource = [messageHandlerDataSource2 fileManagerDataSource];
      v38 = attachmentCopy;
      if (([v38 isFileURL]& 1) != 0)
      {
        lastPathComponent = [v38 lastPathComponent];
        v40 = [fileManagerDataSource im_randomTemporaryFileURLWithFileName:lastPathComponent];

        v121 = 0;
        v41 = [fileManagerDataSource im_copySecurityScopedResourceAtURL:v38 toDestination:v40 error:&v121];
        v42 = v121;
        if (v41)
        {
          v43 = v40;
        }

        else
        {
          v58 = IMLogHandleForCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v123 = v38;
            v124 = 2112;
            contextCopy = v42;
            _os_log_impl(&dword_25479E000, v58, OS_LOG_TYPE_INFO, "Failed to copy the file from %@ into the MessagesAssistantExtension Sandbox. Error: %@", buf, 0x16u);
          }

          v43 = 0;
        }
      }

      else
      {
        v42 = IMLogHandleForCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v123 = v38;
          _os_log_impl(&dword_25479E000, v42, OS_LOG_TYPE_INFO, "Error, url is not a fileURL: %@", buf, 0xCu);
        }

        v43 = 0;
      }

      messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      fileManagerDataSource2 = [messageHandlerDataSource3 fileManagerDataSource];
      messageHandlerDataSource4 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
      fileTransferCenterDataSource = [messageHandlerDataSource4 fileTransferCenterDataSource];
      v60 = v43;
      v61 = IMLogHandleForCategory();
      v62 = os_log_type_enabled(v61, OS_LOG_TYPE_INFO);
      if (v60)
      {
        v72 = messageHandlerDataSource3;
        if (v62)
        {
          *buf = 138412290;
          v123 = v60;
          _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "Building a file transfer message based on a file at %@", buf, 0xCu);
        }

        v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v63 = [fileTransferCenterDataSource createNewOutgoingTransferWithLocalFileURL:v60];
        [fileTransferCenterDataSource registerTransferWithDaemon:v63];
        [v61 addObject:v63];
        v64 = IMLogHandleForCategory();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v123 = v61;
          _os_log_impl(&dword_25479E000, v64, OS_LOG_TYPE_INFO, "The message's file transfer guids are: %@", buf, 0xCu);
        }

        v65 = [MEMORY[0x277CCA898] __im_attributedStringWithFileTransfers:v61];
        __im_attributedStringByAssigningMessagePartNumbers = [v65 __im_attributedStringByAssigningMessagePartNumbers];
        v67 = [MEMORY[0x277D18DA0] instantMessageWithText:__im_attributedStringByAssigningMessagePartNumbers messageSubject:0 fileTransferGUIDs:v61 flags:2097157 threadIdentifier:0];

        v33 = attachmentCopy;
        messageHandlerDataSource3 = v72;
      }

      else
      {
        v33 = attachmentCopy;
        if (v62)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v61, OS_LOG_TYPE_INFO, "Provided localFileAttachmentURL is nil", buf, 2u);
        }

        v67 = 0;
      }

      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = 3221225472;
      v111[2] = sub_2547A91E0;
      v111[3] = &unk_279786510;
      v116 = v28;
      v68 = v78;
      v112 = v78;
      v113 = v67;
      v114 = chatCopy;
      selfCopy = self;
      v69 = v67;
      selfCopy2 = self;
      v45 = dCopy;
      [(IMAssistantMessageSendHandler *)selfCopy2 sendMessageWithDraft:v69 expressiveSendStyleID:dCopy idsIdentifier:identifierCopy executionContext:context sourceApplicationID:v79 toChat:v114 completion:v111];

      v71 = v79;
      v31 = v80;
      lCopy = v81;
    }

    else
    {
      v49 = v36;
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = sub_2547A9278;
      v98[3] = &unk_279786588;
      v99 = lCopy;
      selfCopy3 = self;
      v75 = dCopy;
      v101 = v75;
      v73 = identifierCopy;
      v102 = v73;
      contextCopy2 = context;
      v50 = v34;
      v103 = v50;
      v51 = chatCopy;
      v104 = v51;
      v52 = v28;
      v108 = v52;
      v53 = v49;
      v105 = v53;
      locationCopy = location;
      v106 = attachmentsCopy;
      v107 = libraryAttachmentCopy;
      v54 = MEMORY[0x259C19590](v98);
      v55 = v54;
      if (textCopy)
      {
        v56 = [(IMAssistantMessageSendHandler *)self makeIMMessageFromText:?];
        v91[0] = MEMORY[0x277D85DD0];
        v91[1] = 3221225472;
        v91[2] = sub_2547A9564;
        v91[3] = &unk_2797865B0;
        v96 = v52;
        v92 = v53;
        v93 = v56;
        v94 = v51;
        selfCopy4 = self;
        v97 = v55;
        v57 = v56;
        [(IMAssistantMessageSendHandler *)self sendMessageWithDraft:v57 expressiveSendStyleID:v75 idsIdentifier:v73 executionContext:context sourceApplicationID:v50 toChat:v94 completion:v91];
      }

      else
      {
        (*(v54 + 16))(v54);
      }

      v31 = v80;

      v60 = v99;
      lCopy = v81;
      v33 = attachmentCopy;
      v45 = dCopy;
      v68 = v78;
      v71 = v79;
    }

    v32 = textCopy;
    v27 = v77;
  }

  else
  {
    v44 = IMLogHandleForCategory();
    v32 = textCopy;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v123 = chatCopy;
      _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Send Messages Intent: Failed. Downtime enabled, chat contained non-allowlisted handles: %@", buf, 0xCu);
    }

    v33 = attachmentCopy;
    v45 = dCopy;
    if (v31)
    {
      code = [v31 code];
    }

    else
    {
      code = *MEMORY[0x277CD4588];
    }

    v28[2](v28, code, 0);
  }

LABEL_56:
}

- (id)resolveMessageContentWithString:(id)string
{
  trimmedString = [string trimmedString];
  if ([trimmedString length])
  {
    [MEMORY[0x277CD4218] successWithResolvedString:trimmedString];
  }

  else
  {
    [MEMORY[0x277CD4218] needsValue];
  }
  v4 = ;

  return v4;
}

- (id)recipientDisambiguationResultsFromMultipleRelevantChats:(id)chats
{
  v68 = *MEMORY[0x277D85DE8];
  chatsCopy = chats;
  firstObject = [chatsCopy firstObject];
  resolvedPersons = [firstObject resolvedPersons];
  v6 = [resolvedPersons count];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = chatsCopy;
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v61;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v61 != v10)
        {
          objc_enumerationMutation(v7);
        }

        resolvedPersons2 = [*(*(&v60 + 1) + 8 * i) resolvedPersons];
        v13 = [resolvedPersons2 count];

        if (v6 != v13)
        {
          v23 = IMLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Resolved persons from relevant chats contained an inconsistent number of recipients, ignoring relevant chats.", buf, 2u);
          }

          v43 = 0;
          v38 = v7;
          goto LABEL_42;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v60 objects:v67 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0x277CBE000uLL;
  for (j = objc_alloc_init(MEMORY[0x277CBEB18]); v6; --v6)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [j addObject:v16];
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v40 = v7;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v17);
        }

        resolvedPersons3 = [*(*(&v55 + 1) + 8 * k) resolvedPersons];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = sub_2547A9B74;
        v53[3] = &unk_2797865D8;
        v54 = j;
        [resolvedPersons3 enumerateObjectsUsingBlock:v53];
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v66 count:16];
    }

    while (v19);
  }

  v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v23 = j;
  v44 = [v23 countByEnumeratingWithState:&v49 objects:v65 count:16];
  if (v44)
  {
    obj = v23;
    v42 = *v50;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v50 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v49 + 1) + 8 * m);
        v26 = objc_alloc_init(*(v14 + 2840));
        v27 = v14;
        v28 = objc_alloc_init(*(v14 + 2840));
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v29 = v25;
        v30 = [v29 countByEnumeratingWithState:&v45 objects:v64 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v46;
          do
          {
            for (n = 0; n != v31; ++n)
            {
              if (*v46 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v45 + 1) + 8 * n);
              customIdentifier = [v34 customIdentifier];
              if (([v28 containsObject:customIdentifier] & 1) == 0)
              {
                [v26 addObject:v34];
                [v28 addObject:customIdentifier];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v45 objects:v64 count:16];
          }

          while (v31);
        }

        if ([v26 count] == 1)
        {
          firstObject2 = [v26 firstObject];
          v37 = [MEMORY[0x277CD4088] successWithResolvedPerson:firstObject2];
          [v43 addObject:v37];
        }

        else
        {
          firstObject2 = [MEMORY[0x277CD4088] disambiguationWithPeopleToDisambiguate:v26];
          [v43 addObject:firstObject2];
        }

        v14 = v27;
      }

      v44 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
    }

    while (v44);
    v23 = obj;
  }

  v38 = v23;
  v7 = v40;
LABEL_42:

  return v43;
}

- (id)resolveRecipientsWithGroupNameOrConversationIdentifier:(id)identifier forIntent:(id)intent
{
  v119[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  intentCopy = intent;
  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  accountDataSource = [messageHandlerDataSource accountDataSource];
  hasMessagingAccount = [accountDataSource hasMessagingAccount];

  if (hasMessagingAccount)
  {
    speakableGroupName = [intentCopy speakableGroupName];
    vocabularyIdentifier = [speakableGroupName vocabularyIdentifier];
    v13 = [vocabularyIdentifier length];
    v106 = identifierCopy;
    if (!v13)
    {
      goto LABEL_38;
    }

    v14 = _IMAssistantCoreSendMessageSignpostLogHandle(v13);
    v15 = os_signpost_id_generate(v14);

    v17 = _IMAssistantCoreSendMessageSignpostLogHandle(v16);
    v18 = v17;
    v19 = v15 - 1;
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "resolveRecipientsFromGroup", &unk_2547CAD0B, buf, 2u);
    }

    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v114 = vocabularyIdentifier;
      _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Attempting to resolve by speakableGroupName.vocabularyIdentifier: %@", buf, 0xCu);
    }

    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource = [messageHandlerDataSource2 chatDataSource];
    v23 = vocabularyIdentifier;
    v24 = vocabularyIdentifier;
    spid = v15;
    if ([v24 length])
    {
      v25 = IMAssistantChatIdentifierFromConversationIdentifier(v24);
      v26 = [chatDataSource existingChatWithChatIdentifier:v25];
      if (v26)
      {
        conversationIdentifier = v26;
        goto LABEL_20;
      }

      v30 = IMLogHandleForCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v114 = v24;
        _os_log_impl(&dword_25479E000, v30, OS_LOG_TYPE_INFO, "Could not find a chat with the conversationIdentifier %@, ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v25, OS_LOG_TYPE_INFO, "Could not find a chat with nil or empty conversationIdentifier, ignoring", buf, 2u);
      }
    }

    conversationIdentifier = 0;
LABEL_20:

    v31 = IMLogHandleForCategory();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
    if (conversationIdentifier)
    {
      if (v32)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, "A speakableGroupName.vocabularyIdentifier matching a valid chat was provided, extracting recipients from chat and attaching to intent for use in Siri dialog.", buf, 2u);
      }

      v33 = [(IMAssistantMessageSendHandler *)self resolvedRecipientsFromChat:conversationIdentifier];
      if (v33)
      {
        notRequired = v33;
        messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        v108 = 0;
        v36 = [messageHandlerDataSource3 screentimeAllowedToShowChat:conversationIdentifier error:&v108];
        v37 = v108;

        if (v36)
        {
          joinState = [conversationIdentifier joinState];
          v39 = IMLogHandleForCategory();
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
          if (joinState == 4)
          {
            vocabularyIdentifier = v23;
            if (v40)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v39, OS_LOG_TYPE_INFO, "Returning unsupported for recipient because the resolved chat is read-only. Using INSendMessageRecipientUnsupportedReasonMessagingServiceNotEnabledForRecipient", buf, 2u);
            }

            v41 = [MEMORY[0x277CD4088] unsupportedForReason:3];
            v117 = v41;
            v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
          }

          else
          {
            vocabularyIdentifier = v23;
            if (v40)
            {
              *buf = 138412546;
              v114 = speakableGroupName;
              v115 = 2112;
              v116 = notRequired;
              _os_log_impl(&dword_25479E000, v39, OS_LOG_TYPE_INFO, "Returning success with recipients resolved from speakableGroupName: %@ recipients: %@", buf, 0x16u);
            }

            v95 = _IMAssistantCoreSendMessageSignpostLogHandle(v94);
            v96 = v95;
            if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v95))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v96, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
            }

            v29 = notRequired;
          }

          identifierCopy = v106;
        }

        else
        {
          v59 = IMLogHandleForCategory();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v114 = speakableGroupName;
            _os_log_impl(&dword_25479E000, v59, OS_LOG_TYPE_INFO, "Returning unsupported because the chat group with speakableGroupName (%@) contains non-allowlisted participants and isn't allowed by downtime.", buf, 0xCu);
          }

          v61 = _IMAssistantCoreSendMessageSignpostLogHandle(v60);
          v62 = v61;
          vocabularyIdentifier = v23;
          if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v62, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
          }

          domain = [v37 domain];
          v64 = [domain isEqual:@"__kIMAssistantMessageHandlerErrorDomain"];

          identifierCopy = v106;
          if ((v64 & 1) == 0)
          {
            v65 = IMLogHandleForCategory();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v114 = v37;
              _os_log_impl(&dword_25479E000, v65, OS_LOG_TYPE_INFO, "Will return unsupported with an unknown reason, error: %@", buf, 0xCu);
            }
          }

          if (v37)
          {
            code = [v37 code];
          }

          else
          {
            code = *MEMORY[0x277CD4588];
          }

          v100 = [MEMORY[0x277CD4088] unsupportedForReason:code];
          v118 = v100;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v118 count:1];
        }

        goto LABEL_119;
      }

      v31 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v114 = v24;
      v42 = "Recipients could not be resolved from speakableGroupName.vocabularyIdentifier: %@. Ignoring identifier and continuing with person resolution.";
    }

    else
    {
      if (!v32)
      {
        goto LABEL_34;
      }

      *buf = 138412290;
      v114 = v24;
      v42 = "No chat could be found matching speakableGroupName.vocabularyIdentifier: %@. Ignoring identifier and continuing with person resolution.";
    }

    _os_log_impl(&dword_25479E000, v31, OS_LOG_TYPE_INFO, v42, buf, 0xCu);
LABEL_34:
    vocabularyIdentifier = v23;

    v44 = _IMAssistantCoreSendMessageSignpostLogHandle(v43);
    v45 = v44;
    if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v45, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromGroup", &unk_2547CAD0B, buf, 2u);
    }

    identifierCopy = v106;
LABEL_38:
    conversationIdentifier = [intentCopy conversationIdentifier];
    v46 = [conversationIdentifier length];
    if (!v46)
    {
LABEL_82:
      spokenPhrase = [speakableGroupName spokenPhrase];
      v84 = [spokenPhrase length];

      if (v84)
      {
        v85 = IMLogHandleForCategory();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v85, OS_LOG_TYPE_INFO, "No recipients are required if a group name is present", buf, 2u);
        }

        notRequired = [MEMORY[0x277CD4088] notRequired];
        v110 = notRequired;
        v86 = MEMORY[0x277CBEA60];
        v87 = &v110;
      }

      else
      {
        if ([identifierCopy count])
        {
          v29 = 0;
LABEL_120:

          goto LABEL_121;
        }

        v93 = IMLogHandleForCategory();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v93, OS_LOG_TYPE_INFO, "No recipients provided to resolve, returning needsValue.", buf, 2u);
        }

        notRequired = [MEMORY[0x277CD4088] needsValue];
        v109 = notRequired;
        v86 = MEMORY[0x277CBEA60];
        v87 = &v109;
      }

      v29 = [v86 arrayWithObjects:v87 count:1];
LABEL_119:

      goto LABEL_120;
    }

    v47 = _IMAssistantCoreSendMessageSignpostLogHandle(v46);
    v48 = os_signpost_id_generate(v47);

    v50 = _IMAssistantCoreSendMessageSignpostLogHandle(v49);
    v51 = v50;
    v52 = v48 - 1;
    if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v48, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
    }

    spida = vocabularyIdentifier;

    v53 = IMLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v114 = conversationIdentifier;
      _os_log_impl(&dword_25479E000, v53, OS_LOG_TYPE_INFO, "Attempting to resolve by conversationIdentifier: %@", buf, 0xCu);
    }

    messageHandlerDataSource4 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    chatDataSource2 = [messageHandlerDataSource4 chatDataSource];
    v56 = conversationIdentifier;
    v103 = v48;
    if ([v56 length])
    {
      v57 = IMAssistantChatIdentifierFromConversationIdentifier(v56);
      v58 = [chatDataSource2 existingChatWithChatIdentifier:v57];
      if (v58)
      {
        notRequired = v58;
        goto LABEL_64;
      }

      v67 = IMLogHandleForCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v114 = v56;
        _os_log_impl(&dword_25479E000, v67, OS_LOG_TYPE_INFO, "Could not find a chat with the conversationIdentifier %@, ignoring.", buf, 0xCu);
      }
    }

    else
    {
      v57 = IMLogHandleForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v57, OS_LOG_TYPE_INFO, "Could not find a chat with nil or empty conversationIdentifier, ignoring", buf, 2u);
      }
    }

    notRequired = 0;
LABEL_64:

    v68 = IMLogHandleForCategory();
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_INFO);
    if (notRequired)
    {
      if (v69)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v68, OS_LOG_TYPE_INFO, "A conversationIdentifier matching a valid chat was provided, extracting recipients from chat and attaching to intent for use in Siri dialog.", buf, 2u);
      }

      v70 = [(IMAssistantMessageSendHandler *)self resolvedRecipientsFromChat:notRequired];
      if (v70)
      {
        v71 = v70;
        messageHandlerDataSource5 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
        v107 = 0;
        v73 = [messageHandlerDataSource5 screentimeAllowedToShowChat:notRequired error:&v107];
        v74 = v107;

        if (v73)
        {
          joinState2 = [notRequired joinState];
          v76 = IMLogHandleForCategory();
          v77 = os_log_type_enabled(v76, OS_LOG_TYPE_INFO);
          if (joinState2 == 4)
          {
            if (v77)
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v76, OS_LOG_TYPE_INFO, "Returning unsupported for recipient because the resolved chat is read-only. Using INSendMessageRecipientUnsupportedReasonMessagingServiceNotEnabledForRecipient", buf, 2u);
            }

            v78 = [MEMORY[0x277CD4088] unsupportedForReason:3];
            v111 = v78;
            v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
          }

          else
          {
            if (v77)
            {
              *buf = 138412290;
              v114 = v71;
              _os_log_impl(&dword_25479E000, v76, OS_LOG_TYPE_INFO, "Returning success with recipients resolved from chat: %@", buf, 0xCu);
            }

            v98 = _IMAssistantCoreSendMessageSignpostLogHandle(v97);
            v99 = v98;
            if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v98))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v99, OS_SIGNPOST_INTERVAL_END, v103, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
            }

            v29 = v71;
          }

          identifierCopy = v106;
        }

        else
        {
          v88 = IMLogHandleForCategory();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v114 = v56;
            _os_log_impl(&dword_25479E000, v88, OS_LOG_TYPE_INFO, "Returning unsupported because the chat group w/ conversation identifier(%@) contains non-allowlisted participants and isn't allowed by downtime.", buf, 0xCu);
          }

          v90 = _IMAssistantCoreSendMessageSignpostLogHandle(v89);
          v91 = v90;
          if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, v91, OS_SIGNPOST_INTERVAL_END, v103, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
          }

          identifierCopy = v106;
          if (v74)
          {
            code2 = [v74 code];
          }

          else
          {
            code2 = *MEMORY[0x277CD4588];
          }

          v101 = [MEMORY[0x277CD4088] unsupportedForReason:code2];
          v112 = v101;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
        }

        vocabularyIdentifier = spida;
        goto LABEL_119;
      }

      v68 = IMLogHandleForCategory();
      if (!os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      *buf = 138412290;
      v114 = v56;
      v79 = "Recipients could not be resolved from conversationIdentifier: %@. Ignoring conversation identifier and continuing with person resolution.";
    }

    else
    {
      if (!v69)
      {
        goto LABEL_78;
      }

      *buf = 138412290;
      v114 = v56;
      v79 = "No chat could be found matching conversationIdentifier: %@. Ignoring conversation identifier and continuing with person resolution.";
    }

    _os_log_impl(&dword_25479E000, v68, OS_LOG_TYPE_INFO, v79, buf, 0xCu);
LABEL_78:
    vocabularyIdentifier = spida;

    v81 = _IMAssistantCoreSendMessageSignpostLogHandle(v80);
    v82 = v81;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v82, OS_SIGNPOST_INTERVAL_END, v103, "resolveRecipientsFromConversationID", &unk_2547CAD0B, buf, 2u);
    }

    identifierCopy = v106;
    goto LABEL_82;
  }

  v28 = IMLogHandleForCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v28, OS_LOG_TYPE_INFO, "Could not resolve recipients; no messaging account enabled", buf, 2u);
  }

  speakableGroupName = [MEMORY[0x277CD4088] unsupportedForReason:1];
  v119[0] = speakableGroupName;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v119 count:1];
LABEL_121:

  return v29;
}

- (void)resolveRecipientsWithCRR:(id)r forIntent:(id)intent completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  rCopy = r;
  intentCopy = intent;
  completionCopy = completion;
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = rCopy;
    _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Resolving recipients with CRR: %@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2547AAC64;
  v16[3] = &unk_279786600;
  v16[4] = self;
  v17 = rCopy;
  v18 = intentCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = intentCopy;
  v14 = rCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16);
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

- (void)resolveRecipientsWithoutCRR:(id)r forIntent:(id)intent completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  rCopy = r;
  intentCopy = intent;
  completionCopy = completion;
  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = rCopy;
    _os_log_impl(&dword_25479E000, v11, OS_LOG_TYPE_INFO, "Resolving recipients without CRR: %@", buf, 0xCu);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2547AB3A0;
  v16[3] = &unk_279786600;
  v16[4] = self;
  v17 = rCopy;
  v18 = intentCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = intentCopy;
  v14 = rCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16);
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

- (BOOL)recipientHandleResolutionResultsAllowedByScreentime:(id)screentime error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  screentimeCopy = screentime;
  if ([MEMORY[0x277CD3EA0] __imcore__containsNonSuccess:screentimeCopy])
  {
    v7 = 1;
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v8, OS_LOG_TYPE_INFO, "Validating resolved handles for screentime", buf, 2u);
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = screentimeCopy;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          resolvedValue = [*(*(&v24 + 1) + 8 * i) resolvedValue];
          customIdentifier = [resolvedValue customIdentifier];
          if ([customIdentifier length])
          {
            [v9 addObject:customIdentifier];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v12);
    }

    messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
    v23 = 0;
    v7 = [messageHandlerDataSource screentimeAllowedToShowConversationWithHandleIDs:v9 error:&v23];
    v18 = v23;

    v19 = IMLogHandleForCategory();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v20)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Handles are allowed by screentime", buf, 2u);
      }
    }

    else
    {
      if (v20)
      {
        *buf = 138412290;
        v29 = v9;
        _os_log_impl(&dword_25479E000, v19, OS_LOG_TYPE_INFO, "Handles are not allowed by screentime: %@.", buf, 0xCu);
      }

      if (error)
      {
        v21 = v18;
        *error = v18;
      }
    }
  }

  return v7;
}

- (id)resolvedRecipientsFromChat:(id)chat
{
  v53 = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v5 = _IMAssistantCoreSendMessageSignpostLogHandle(chatCopy);
  v6 = os_signpost_id_generate(v5);

  v8 = _IMAssistantCoreSendMessageSignpostLogHandle(v7);
  v9 = v8;
  v35 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "resolvedRecipientsFromChat", &unk_2547CAD0B, buf, 2u);
  }

  spid = v6;

  v36 = chatCopy;
  v10 = [chatCopy participantsWithState:16];
  v11 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v37 = *MEMORY[0x277CBD018];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = [(IMAssistantMessageHandler *)self contactIdentifiersMatchingHandle:v16];
        if ([v17 count] >= 2)
        {
          v51 = v37;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
          v19 = [v16 cnContactWithKeys:v18];
          identifier = [v19 identifier];

          if (![identifier length])
          {
            goto LABEL_14;
          }

          v21 = IMLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_25479E000, v21, OS_LOG_TYPE_INFO, "Attempting to resolve ambiguous handle to contact using the Contacts Framework.", buf, 2u);
          }

          v22 = [(IMAssistantMessageHandler *)self contactWithIdentifier:identifier];
          if (!v22)
          {
LABEL_14:
            v23 = IMLogHandleForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Could not resolve ambiguous handle to contact using the Contacts Framework.", buf, 2u);
            }

            v22 = 0;
          }

          v24 = IMLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = [v17 count];
            *buf = 134218754;
            v44 = v25;
            v45 = 2112;
            v46 = v16;
            v47 = 2112;
            v48 = v17;
            v49 = 2112;
            v50 = v22;
            _os_log_impl(&dword_25479E000, v24, OS_LOG_TYPE_INFO, "%ld contacts matched chat participant %@. Matching identifiers: %@. Using contact: %@", buf, 0x2Au);
          }

          if (v22)
          {
            goto LABEL_22;
          }
        }

        if ([v17 count] && (objc_msgSend(v17, "lastObject"), v26 = objc_claimAutoreleasedReturnValue(), -[IMAssistantMessageHandler contactWithIdentifier:](self, "contactWithIdentifier:", v26), v22 = objc_claimAutoreleasedReturnValue(), v26, v22))
        {
LABEL_22:
          v27 = objc_alloc(MEMORY[0x277CD3E90]);
          v28 = [v27 __im_assistant_initWithContact:v22 imHandle:v16];
        }

        else
        {
          v27 = objc_alloc(MEMORY[0x277CD3E90]);
          v28 = [v27 __im_assistant_initAnonymousRecipientWithIMHandle:v16];
          v22 = 0;
        }

        v29 = [MEMORY[0x277CD4088] successWithResolvedPerson:v28];
        [v11 addObject:v29];
      }

      v13 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v13);
  }

  v31 = _IMAssistantCoreSendMessageSignpostLogHandle(v30);
  v32 = v31;
  if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v32, OS_SIGNPOST_INTERVAL_END, spid, "resolvedRecipientsFromChat", &unk_2547CAD0B, buf, 2u);
  }

  return v11;
}

- (id)contactsWithDuplicateNamesAmongContacts:(id)contacts
{
  v39 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  v4 = _IMAssistantCoreSendMessageSignpostLogHandle(contactsCopy);
  v5 = os_signpost_id_generate(v4);

  v7 = _IMAssistantCoreSendMessageSignpostLogHandle(v6);
  v8 = v7;
  v29 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "duplicateNameCheck", &unk_2547CAD0B, buf, 2u);
  }

  spid = v5;

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = contactsCopy;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCAC00] componentsForContact:v14];
        if (v15)
        {
          v16 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v15 style:0 options:0];
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = &stru_286693278;
        }

        v18 = v17;
        v19 = [v9 objectForKeyedSubscript:v18];
        v20 = v19;
        if (v19)
        {
          [v19 addObject:v14];
        }

        else
        {
          v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v14, 0}];
          [v9 setObject:v21 forKeyedSubscript:v18];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2547ADD24;
  v31[3] = &unk_279786698;
  v23 = v22;
  v32 = v23;
  [v9 enumerateKeysAndObjectsUsingBlock:v31];
  v24 = [v23 copy];
  v25 = _IMAssistantCoreSendMessageSignpostLogHandle(v24);
  v26 = v25;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v26, OS_SIGNPOST_INTERVAL_END, spid, "duplicateNameCheck", &unk_2547CAD0B, buf, 2u);
  }

  return v24;
}

- (id)resolveRecipientsByFindingExistingRelevantChatsForRecipients:(id)recipients withMatchingHandlesByRecipient:(id)recipient fromChats:(id)chats
{
  v116 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  recipientCopy = recipient;
  chatsCopy = chats;
  v10 = _IMAssistantCoreSendMessageSignpostLogHandle(chatsCopy);
  v11 = os_signpost_id_generate(v10);

  v13 = _IMAssistantCoreSendMessageSignpostLogHandle(v12);
  v14 = v13;
  spid = v11;
  v65 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "resolveRecipientsFromRelevantChat", &unk_2547CAD0B, buf, 2u);
  }

  v15 = IMLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [chatsCopy count];
    *buf = 134217984;
    v109 = v16;
    _os_log_impl(&dword_25479E000, v15, OS_LOG_TYPE_INFO, "Attempting to find a matching chat by examining %ld recent chats.", buf, 0xCu);
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = chatsCopy;
  v18 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v105;
    selfCopy = self;
    v69 = recipientsCopy;
    v67 = v17;
    v66 = *v105;
LABEL_8:
    v21 = 0;
    v70 = v19;
    while (1)
    {
      if (*v105 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v104 + 1) + 8 * v21);
      if (![(IMAssistantMessageSendHandler *)self shouldContinueToExamineRelevantChatsWithMatches:v17 nextChat:v22, spid])
      {
        break;
      }

      v75 = v21;
      v82 = [v22 participantsWithState:16];
      v23 = [v82 count];
      v24 = [recipientsCopy count];
      if (v23 == v24)
      {
        v74 = v22;
        v25 = _IMAssistantCoreSendMessageSignpostLogHandle(v24);
        v26 = os_signpost_id_generate(v25);

        v28 = _IMAssistantCoreSendMessageSignpostLogHandle(v27);
        v29 = v28;
        v73 = v26 - 1;
        if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v26, "examineRelevantChat", &unk_2547CAD0B, buf, 2u);
        }

        v71 = v26;

        v30 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(recipientsCopy, "count")}];
        v102[0] = MEMORY[0x277D85DD0];
        v102[1] = 3221225472;
        v102[2] = sub_2547AE834;
        v102[3] = &unk_2797866C0;
        v31 = v30;
        v103 = v31;
        v32 = MEMORY[0x259C19590](v102);
        v33 = IMLogHandleForCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v109 = v22;
          _os_log_impl(&dword_25479E000, v33, OS_LOG_TYPE_INFO, "Beginning evaluation of participants in chat %@.", buf, 0xCu);
        }

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v76 = recipientsCopy;
        v80 = [v76 countByEnumeratingWithState:&v98 objects:v114 count:16];
        if (v80)
        {
          v78 = *v99;
          v79 = v31;
          while (2)
          {
            v34 = 0;
            do
            {
              if (*v99 != v78)
              {
                objc_enumerationMutation(v76);
              }

              v81 = v34;
              v35 = *(*(&v98 + 1) + 8 * v34);
              v36 = [recipientCopy objectForKeyedSubscript:v35];
              v94 = 0u;
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v37 = v36;
              v85 = [v37 countByEnumeratingWithState:&v94 objects:v113 count:16];
              if (v85)
              {
                v83 = *v95;
                v84 = v37;
                do
                {
                  v38 = 0;
                  do
                  {
                    if (*v95 != v83)
                    {
                      objc_enumerationMutation(v37);
                    }

                    v86 = v38;
                    v39 = *(*(&v94 + 1) + 8 * v38);
                    v90 = 0u;
                    v91 = 0u;
                    v92 = 0u;
                    v93 = 0u;
                    v40 = v82;
                    v41 = [v40 countByEnumeratingWithState:&v90 objects:v112 count:16];
                    if (v41)
                    {
                      v42 = v41;
                      v43 = *v91;
                      do
                      {
                        for (i = 0; i != v42; ++i)
                        {
                          if (*v91 != v43)
                          {
                            objc_enumerationMutation(v40);
                          }

                          v45 = *(*(&v90 + 1) + 8 * i);
                          if ([v39 matchesIMHandle:v45])
                          {
                            v46 = IMLogHandleForCategory();
                            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
                            {
                              *buf = 138412546;
                              v109 = v45;
                              v110 = 2112;
                              v111 = v39;
                              _os_log_impl(&dword_25479E000, v46, OS_LOG_TYPE_INFO, "Found a chat participant handle: %@ matching requested handle: %@", buf, 0x16u);
                            }

                            (v32)[2](v32, v35, v45, v39);
                          }
                        }

                        v42 = [v40 countByEnumeratingWithState:&v90 objects:v112 count:16];
                      }

                      while (v42);
                    }

                    v38 = v86 + 1;
                    v37 = v84;
                  }

                  while (v86 + 1 != v85);
                  v85 = [v84 countByEnumeratingWithState:&v94 objects:v113 count:16];
                }

                while (v85);
              }

              v31 = v79;
              v47 = [v79 objectForKey:v35];
              v48 = [v47 count];

              if (!v48)
              {
                v49 = IMLogHandleForCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v109 = v35;
                  _os_log_impl(&dword_25479E000, v49, OS_LOG_TYPE_INFO, "Did not find any matching chat participant for requested person %@", buf, 0xCu);
                }

                goto LABEL_48;
              }

              v34 = v81 + 1;
            }

            while (v81 + 1 != v80);
            v80 = [v76 countByEnumeratingWithState:&v98 objects:v114 count:16];
            if (v80)
            {
              continue;
            }

            break;
          }
        }

LABEL_48:

        v50 = [v31 count];
        if (v50 == [v76 count])
        {
          self = selfCopy;
          v51 = [(IMAssistantMessageSendHandler *)selfCopy findValidMappingOfRequestedRecipientToChatParticipantAmongMatches:v31];
          v52 = IMLogHandleForCategory();
          v53 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
          v17 = v67;
          if (v51)
          {
            if (v53)
            {
              *buf = 138412290;
              v109 = v74;
              _os_log_impl(&dword_25479E000, v52, OS_LOG_TYPE_INFO, "Found a matching existing chat: %@", buf, 0xCu);
            }

            v87[0] = MEMORY[0x277D85DD0];
            v87[1] = 3221225472;
            v87[2] = sub_2547AE920;
            v87[3] = &unk_2797866E8;
            v88 = v51;
            v89 = selfCopy;
            v54 = [v76 __imArrayByApplyingBlock:v87];
            v55 = [[IMAssistantRelevantChatMatchingRecipients alloc] initWithChat:v74 resolvedPersons:v54];
            [v67 addObject:v55];

            v52 = v88;
          }

          else if (v53)
          {
            *buf = 138412290;
            v109 = v74;
            _os_log_impl(&dword_25479E000, v52, OS_LOG_TYPE_INFO, "Could not find a valid 1-1 relationship between chat participants and requested recipients. Ending evaluation of chat %@.", buf, 0xCu);
          }

          recipientsCopy = v69;
        }

        else
        {
          v51 = IMLogHandleForCategory();
          v17 = v67;
          self = selfCopy;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v109 = v74;
            _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "Matching chat participant not found for all recipients. Ending evaluation of chat %@.", buf, 0xCu);
          }

          recipientsCopy = v69;
        }

        v57 = _IMAssistantCoreSendMessageSignpostLogHandle(v56);
        v58 = v57;
        if (v73 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_25479E000, v58, OS_SIGNPOST_INTERVAL_END, v71, "examineRelevantChat", &unk_2547CAD0B, buf, 2u);
        }

        v19 = v70;
        v20 = v66;
      }

      v21 = v75 + 1;
      if (v75 + 1 == v19)
      {
        v19 = [obj countByEnumeratingWithState:&v104 objects:v115 count:16];
        if (v19)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v59 = [v17 count];
  if (!v59)
  {
    v60 = IMLogHandleForCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v60, OS_LOG_TYPE_INFO, "Did not find a matching existing chat.", buf, 2u);
    }
  }

  v61 = _IMAssistantCoreSendMessageSignpostLogHandle(v59);
  v62 = v61;
  if (v65 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v62, OS_SIGNPOST_INTERVAL_END, spid, "resolveRecipientsFromRelevantChat", &unk_2547CAD0B, buf, 2u);
  }

  return v17;
}

- (BOOL)shouldContinueToExamineRelevantChatsWithMatches:(id)matches nextChat:(id)chat
{
  v25 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  chatCopy = chat;
  if ([matchesCopy count])
  {
    firstObject = [matchesCopy firstObject];
    chat = [firstObject chat];

    lastFinishedMessageDate = [chat lastFinishedMessageDate];
    [lastFinishedMessageDate timeIntervalSinceNow];
    v11 = fabs(v10);

    if (v11 * 4.0 >= 3600.0)
    {
      v12 = v11 * 4.0;
    }

    else
    {
      v12 = 3600.0;
    }

    lastFinishedMessageDate2 = [chatCopy lastFinishedMessageDate];
    [lastFinishedMessageDate2 timeIntervalSinceNow];
    v15 = fabs(v14);

    v16 = v12 > v15;
    if (v12 <= v15)
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 134218496;
        v20 = v11;
        v21 = 2048;
        v22 = v15;
        v23 = 2048;
        v24 = v12;
        _os_log_impl(&dword_25479E000, v17, OS_LOG_TYPE_INFO, "Next chat is beyond maximum relevant time interval. Ending evaluation of relevant chats. TimeSinceLastMessageInMatchingChat: %ld s, TimeSinceLastMessageInNextChat: %ld s, MaximumRelevantTimeInterval: %ld s", &v19, 0x20u);
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)findValidMappingOfRequestedRecipientToChatParticipantAmongMatches:(id)matches
{
  v151 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v4 = _IMAssistantCoreSendMessageSignpostLogHandle(matchesCopy);
  v5 = os_signpost_id_generate(v4);

  v7 = _IMAssistantCoreSendMessageSignpostLogHandle(v6);
  v8 = v7;
  v85 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
  }

  spid = v5;

  v9 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(matchesCopy, "count")}];
  v93 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(matchesCopy, "count")}];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  keyEnumerator = [matchesCopy keyEnumerator];
  v11 = [keyEnumerator countByEnumeratingWithState:&v137 objects:v150 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v138;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v138 != v13)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v15 = *(*(&v137 + 1) + 8 * i);
        v16 = [matchesCopy objectForKey:v15];
        v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v16 copyItems:0];
        [v93 setObject:v17 forKey:v15];
      }

      v12 = [keyEnumerator countByEnumeratingWithState:&v137 objects:v150 count:16];
    }

    while (v12);
  }

  v91 = matchesCopy;
  v92 = v9;
  while (1)
  {
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    keyEnumerator2 = [matchesCopy keyEnumerator];
    v98 = [keyEnumerator2 countByEnumeratingWithState:&v133 objects:v149 count:16];
    if (!v98)
    {
      break;
    }

    v19 = 0;
    v20 = *v134;
    v94 = keyEnumerator2;
    v89 = *v134;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v134 != v20)
        {
          objc_enumerationMutation(keyEnumerator2);
        }

        v100 = v21;
        v22 = *(*(&v133 + 1) + 8 * v21);
        v23 = [v9 objectForKey:v22];

        if (!v23)
        {
          v24 = [v93 objectForKey:v22];
          if (![v24 count])
          {
            v34 = _IMAssistantCoreSendMessageSignpostLogHandle(0);
            v35 = v34;
            if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v35, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
            }

            v36 = 0;
            goto LABEL_37;
          }

          if ([v24 count] == 1)
          {
            v96 = v24;
            firstObject = [v24 firstObject];
            [v9 setObject:firstObject forKey:v22];
            [v93 removeObjectForKey:v22];
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            objectEnumerator = [v93 objectEnumerator];
            v27 = [objectEnumerator countByEnumeratingWithState:&v129 objects:v148 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v130;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v130 != v29)
                  {
                    objc_enumerationMutation(objectEnumerator);
                  }

                  v31 = *(*(&v129 + 1) + 8 * j);
                  v32 = MEMORY[0x277CCAC30];
                  v127[0] = MEMORY[0x277D85DD0];
                  v127[1] = 3221225472;
                  v127[2] = sub_2547AF7F0;
                  v127[3] = &unk_279786710;
                  v128 = firstObject;
                  v33 = [v32 predicateWithBlock:v127];
                  [v31 filterUsingPredicate:v33];
                }

                v28 = [objectEnumerator countByEnumeratingWithState:&v129 objects:v148 count:16];
              }

              while (v28);
            }

            v19 = 1;
            matchesCopy = v91;
            v9 = v92;
            keyEnumerator2 = v94;
            v24 = v96;
            v20 = v89;
          }
        }

        v21 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v98 = [keyEnumerator2 countByEnumeratingWithState:&v133 objects:v149 count:16];
      if (v98)
      {
        continue;
      }

      break;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

LABEL_41:
  if ([v93 count])
  {
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v83 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:0];
    [v38 addObject:?];
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    obj = [matchesCopy keyEnumerator];
    v39 = [obj countByEnumeratingWithState:&v123 objects:v147 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v124;
      v86 = *v124;
      do
      {
        v42 = 0;
        v87 = v40;
        do
        {
          if (*v124 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v123 + 1) + 8 * v42);
          v44 = [v9 objectForKey:v43];
          if (v44)
          {
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v38 = v38;
            v45 = [v38 countByEnumeratingWithState:&v119 objects:v146 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v120;
              do
              {
                for (k = 0; k != v46; ++k)
                {
                  if (*v120 != v47)
                  {
                    objc_enumerationMutation(v38);
                  }

                  [*(*(&v119 + 1) + 8 * k) setObject:v44 forKey:v43];
                }

                v46 = [v38 countByEnumeratingWithState:&v119 objects:v146 count:16];
              }

              while (v46);
            }

            v49 = v38;
          }

          else
          {
            v90 = v42;
            v49 = [v93 objectForKey:v43];
            v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v95 = v38;
            v101 = [v95 countByEnumeratingWithState:&v115 objects:v145 count:16];
            if (v101)
            {
              v97 = *v116;
              v99 = v49;
              do
              {
                for (m = 0; m != v101; m = m + 1)
                {
                  if (*v116 != v97)
                  {
                    objc_enumerationMutation(v95);
                  }

                  v52 = *(*(&v115 + 1) + 8 * m);
                  v111 = 0u;
                  v112 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v53 = v49;
                  v54 = [v53 countByEnumeratingWithState:&v111 objects:v144 count:16];
                  if (v54)
                  {
                    v55 = v54;
                    v56 = *v112;
                    do
                    {
                      for (n = 0; n != v55; ++n)
                      {
                        if (*v112 != v56)
                        {
                          objc_enumerationMutation(v53);
                        }

                        v58 = *(*(&v111 + 1) + 8 * n);
                        v59 = [v52 copy];
                        [v59 setObject:v58 forKey:v43];
                        [v50 addObject:v59];
                      }

                      v55 = [v53 countByEnumeratingWithState:&v111 objects:v144 count:16];
                    }

                    while (v55);
                  }

                  v49 = v99;
                }

                v101 = [v95 countByEnumeratingWithState:&v115 objects:v145 count:16];
              }

              while (v101);
            }

            v38 = v50;
            v9 = v92;
            v41 = v86;
            v40 = v87;
            v44 = 0;
            v42 = v90;
          }

          ++v42;
        }

        while (v42 != v40);
        v40 = [obj countByEnumeratingWithState:&v123 objects:v147 count:16];
      }

      while (v40);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v102 = v38;
    v60 = [v102 countByEnumeratingWithState:&v107 objects:v143 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v108;
      while (2)
      {
        for (ii = 0; ii != v61; ++ii)
        {
          if (*v108 != v62)
          {
            objc_enumerationMutation(v102);
          }

          v64 = *(*(&v107 + 1) + 8 * ii);
          v65 = objc_alloc_init(MEMORY[0x277CBEB40]);
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          objectEnumerator2 = [v64 objectEnumerator];
          v67 = [objectEnumerator2 countByEnumeratingWithState:&v103 objects:v142 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v104;
            do
            {
              for (jj = 0; jj != v68; ++jj)
              {
                if (*v104 != v69)
                {
                  objc_enumerationMutation(objectEnumerator2);
                }

                imHandle = [*(*(&v103 + 1) + 8 * jj) imHandle];
                [v65 addObject:imHandle];
              }

              v68 = [objectEnumerator2 countByEnumeratingWithState:&v103 objects:v142 count:16];
            }

            while (v68);
          }

          v72 = [v65 count];
          v73 = [v91 count];
          if (v72 == v73)
          {
            v79 = _IMAssistantCoreSendMessageSignpostLogHandle(v73);
            v80 = v79;
            if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_25479E000, v80, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
            }

            v36 = v64;
            v74 = v102;
            v77 = v102;
            matchesCopy = v91;
            v9 = v92;
            goto LABEL_101;
          }
        }

        v61 = [v102 countByEnumeratingWithState:&v107 objects:v143 count:16];
        v9 = v92;
        if (v61)
        {
          continue;
        }

        break;
      }
    }

    v74 = v102;

    v76 = _IMAssistantCoreSendMessageSignpostLogHandle(v75);
    v77 = v76;
    if (v85 > 0xFFFFFFFFFFFFFFFDLL)
    {
      v36 = 0;
      matchesCopy = v91;
LABEL_101:
      v78 = v83;
    }

    else
    {
      matchesCopy = v91;
      v78 = v83;
      if (os_signpost_enabled(v76))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_25479E000, v77, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
      }

      v36 = 0;
    }
  }

  else
  {
    v81 = _IMAssistantCoreSendMessageSignpostLogHandle(0);
    v82 = v81;
    if (v85 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v81))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v82, OS_SIGNPOST_INTERVAL_END, spid, "mapRecipientsToParticipants", &unk_2547CAD0B, buf, 2u);
    }

    v36 = v9;
  }

LABEL_37:

  return v36;
}

- (id)contactResolutionResultForContacts:(id)contacts matchingRecipient:(id)recipient
{
  v116 = *MEMORY[0x277D85DE8];
  contactsCopy = contacts;
  recipientCopy = recipient;
  v7 = _IMAssistantCoreSendMessageSignpostLogHandle(recipientCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = _IMAssistantCoreSendMessageSignpostLogHandle(v9);
  v11 = v10;
  v84 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
  }

  spid = v8;

  v12 = objc_msgSend_personHandle(recipientCopy);
  type = [v12 type];

  v14 = objc_msgSend_personHandle(recipientCopy);
  label = [v14 label];

  v85 = recipientCopy;
  v16 = objc_msgSend_personHandle(recipientCopy);
  __im_assistant_handleType = [v16 __im_assistant_handleType];

  if (__im_assistant_handleType)
  {
    v18 = IMLogHandleForCategory();
    v19 = v85;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v111 = v85;
      _os_log_impl(&dword_25479E000, v18, OS_LOG_TYPE_INFO, "Manually specified handle. Ready to proceed to handle resolution with person: %@", buf, 0xCu);
    }

    v20 = [MEMORY[0x277CD4088] successWithResolvedPerson:v85];
    v21 = _IMAssistantCoreSendMessageSignpostLogHandle(v20);
    firstObject2 = v21;
    if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, firstObject2, OS_SIGNPOST_INTERVAL_END, v8, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
    }

    goto LABEL_84;
  }

  if ([contactsCopy count] >= 2)
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v111 = contactsCopy;
      _os_log_impl(&dword_25479E000, v23, OS_LOG_TYPE_INFO, "Multiple contacts match recipient. Contacts: %@", buf, 0xCu);
    }

    v24 = [(IMAssistantMessageSendHandler *)self contactsWithDuplicateNamesAmongContacts:contactsCopy];
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v26 = contactsCopy;
    v87 = contactsCopy;
    v88 = v24;
    v95 = v25;
    v93 = [v26 countByEnumeratingWithState:&v105 objects:v115 count:16];
    if (v93)
    {
      v92 = *v106;
      v86 = label;
      v89 = v26;
      v90 = type;
      do
      {
        v27 = 0;
        do
        {
          if (*v106 != v92)
          {
            objc_enumerationMutation(v26);
          }

          v94 = v27;
          v28 = *(*(&v105 + 1) + 8 * v27);
          if ([v24 containsObject:v28, spid])
          {
            v29 = IMLogHandleForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v111 = v28;
              _os_log_impl(&dword_25479E000, v29, OS_LOG_TYPE_INFO, "Contact has the same name as another possible disambiguation option, including handles in disambiguation for contact: %@", buf, 0xCu);
            }

            messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
            accountDataSource = [messageHandlerDataSource accountDataSource];
            countryCode = [accountDataSource countryCode];
            v33 = [v28 __im_assistant_matchingNormalizedHandlesForType:type andLabel:label forCountryCode:countryCode];

            v91 = v33;
            if ([v33 count])
            {
              v103 = 0u;
              v104 = 0u;
              v101 = 0u;
              v102 = 0u;
              v34 = v33;
              v35 = [v34 countByEnumeratingWithState:&v101 objects:v114 count:16];
              if (v35)
              {
                v36 = v35;
                v37 = *v102;
                do
                {
                  for (i = 0; i != v36; ++i)
                  {
                    if (*v102 != v37)
                    {
                      objc_enumerationMutation(v34);
                    }

                    v39 = *(*(&v101 + 1) + 8 * i);
                    v40 = objc_alloc(MEMORY[0x277CD3E90]);
                    messageHandlerDataSource2 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
                    accountDataSource2 = [messageHandlerDataSource2 accountDataSource];
                    v43 = [v40 __im_assistant_initWithContact:v28 unformattedPersonHandle:v39 accountDataSource:accountDataSource2];

                    if (v43)
                    {
                      [v95 addObject:v43];
                    }

                    else
                    {
                      v44 = IMLogHandleForCategory();
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v111 = v28;
                        v112 = 2112;
                        v113 = v39;
                        _os_log_impl(&dword_25479E000, v44, OS_LOG_TYPE_INFO, "Could not create INPerson from contant %@ and handle %@", buf, 0x16u);
                      }
                    }
                  }

                  v36 = [v34 countByEnumeratingWithState:&v101 objects:v114 count:16];
                }

                while (v36);
                label = v86;
                contactsCopy = v87;
              }

              v24 = v88;
              v25 = v95;
            }

            else
            {
              v34 = IMLogHandleForCategory();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v111 = v28;
                _os_log_impl(&dword_25479E000, v34, OS_LOG_TYPE_INFO, "Contacts matching the requested recipient have identical names, but one of the contacts has no valid phone numbers or email addreses for this request. Ignoring that contact, as including it in the list of disambiguation options would make it indistinguishable from the other valid options with the exact same name. Contact: %@", buf, 0xCu);
              }
            }

            v26 = v89;

            type = v90;
            v46 = v91;
          }

          else
          {
            v45 = objc_alloc(MEMORY[0x277CD3E90]);
            v46 = [v45 __im_assistant_initForContactResolutionResultWithContact:v28 type:type label:label];

            [v25 addObject:v46];
          }

          v27 = v94 + 1;
        }

        while (v94 + 1 != v93);
        v93 = [v26 countByEnumeratingWithState:&v105 objects:v115 count:16];
      }

      while (v93);
    }

    if ([v25 count])
    {
      v47 = [v25 count];
      v48 = IMLogHandleForCategory();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
      if (v47 != 1)
      {
        if (v49)
        {
          v76 = [v25 count];
          *buf = 134218242;
          v111 = v76;
          v112 = 2112;
          v113 = v25;
          _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "Requesting disambiguation of %ld options: %@", buf, 0x16u);
        }

        v77 = MEMORY[0x277CD4088];
        v78 = [v25 copy];
        v20 = [v77 disambiguationWithPeopleToDisambiguate:v78];

        v80 = _IMAssistantCoreSendMessageSignpostLogHandle(v79);
        firstObject = v80;
        if (v84 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = v85;
          if (os_signpost_enabled(v80))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_25479E000, firstObject, OS_SIGNPOST_INTERVAL_END, spid, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
          }

          goto LABEL_83;
        }

LABEL_82:
        v19 = v85;
LABEL_83:

        firstObject2 = v88;
        goto LABEL_84;
      }

      if (v49)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v48, OS_LOG_TYPE_INFO, "There was more than one contact matching the requested recipient AND those contacts had the exact same name, but only one of those contacts had a valid handle matching the request. Using that handle.", buf, 2u);
      }

      firstObject = [v25 firstObject];
      v20 = [MEMORY[0x277CD4088] successWithResolvedPerson:firstObject];
      v51 = _IMAssistantCoreSendMessageSignpostLogHandle(v20);
      v52 = v51;
      if (v84 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v51))
      {
LABEL_81:

        goto LABEL_82;
      }

      *buf = 0;
    }

    else
    {
      v58 = label;
      v59 = IMLogHandleForCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v59, OS_LOG_TYPE_INFO, "There was more than one contact matching the requested recipient but those contacts had the exact same name, and none of those contacts had a valid handle matching the requested type. We won't offer disambiguation of the contacts, because none of the choices would lead to a successful resolution and the options would be indistinguishable and confusing.", buf, 2u);
      }

      firstObject = objc_alloc_init(MEMORY[0x277CBEB40]);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v60 = v26;
      v61 = [v60 countByEnumeratingWithState:&v97 objects:v109 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v98;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v98 != v63)
            {
              objc_enumerationMutation(v60);
            }

            v65 = *(*(&v97 + 1) + 8 * j);
            messageHandlerDataSource3 = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
            accountDataSource3 = [messageHandlerDataSource3 accountDataSource];
            v68 = [v65 __im_assistant_allValidPersonOptionsWithAccountDataSource:accountDataSource3];

            [firstObject addObjectsFromArray:v68];
          }

          v62 = [v60 countByEnumeratingWithState:&v97 objects:v109 count:16];
        }

        while (v62);
      }

      v69 = [firstObject count];
      v70 = IMLogHandleForCategory();
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
      label = v58;
      if (v69)
      {
        if (v71)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v70, OS_LOG_TYPE_INFO, "If the user had specified a different label/handle-type, valid options would have been available, returning unsupportedReason = NoHandleForLabel.", buf, 2u);
        }

        v72 = MEMORY[0x277CD4088];
        array = [firstObject array];
        v20 = [v72 resolutionResultUnsupportedWithReason:6 alternativeItems:array];

        v75 = _IMAssistantCoreSendMessageSignpostLogHandle(v74);
        v52 = v75;
        contactsCopy = v87;
        if (v84 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v75))
        {
          goto LABEL_81;
        }

        *buf = 0;
      }

      else
      {
        if (v71)
        {
          *buf = 0;
          _os_log_impl(&dword_25479E000, v70, OS_LOG_TYPE_INFO, "None of the ambiguous contacts had any valid handles. Returning unsupportedReason = NoValidHandle.", buf, 2u);
        }

        v20 = [MEMORY[0x277CD4088] unsupportedWithReason:4];
        v81 = _IMAssistantCoreSendMessageSignpostLogHandle(v20);
        v52 = v81;
        contactsCopy = v87;
        if (v84 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v81))
        {
          goto LABEL_81;
        }

        *buf = 0;
      }
    }

    _os_signpost_emit_with_name_impl(&dword_25479E000, v52, OS_SIGNPOST_INTERVAL_END, spid, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
    goto LABEL_81;
  }

  firstObject2 = [contactsCopy firstObject];
  v53 = IMLogHandleForCategory();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v111 = firstObject2;
    _os_log_impl(&dword_25479E000, v53, OS_LOG_TYPE_INFO, "Only one contact matches recipient. Ready to proceed to handle resolution for contact: %@", buf, 0xCu);
  }

  v54 = objc_alloc(MEMORY[0x277CD3E90]);
  v55 = [v54 __im_assistant_initForContactResolutionResultWithContact:firstObject2 type:type label:label];

  v20 = [MEMORY[0x277CD4088] successWithResolvedPerson:v55];
  v56 = _IMAssistantCoreSendMessageSignpostLogHandle(v20);
  v57 = v56;
  if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v56))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v57, OS_SIGNPOST_INTERVAL_END, spid, "contactResolutionResultForContacts", &unk_2547CAD0B, buf, 2u);
  }

  v19 = v85;
LABEL_84:

  return v20;
}

- (id)handleResolutionResultForHandles:(id)handles resolvedContactForAlternatives:(id)alternatives recipient:(id)recipient
{
  v70 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  alternativesCopy = alternatives;
  recipientCopy = recipient;
  v11 = _IMAssistantCoreSendMessageSignpostLogHandle(recipientCopy);
  v12 = os_signpost_id_generate(v11);

  v14 = _IMAssistantCoreSendMessageSignpostLogHandle(v13);
  v15 = v14;
  v16 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
  }

  messageHandlerDataSource = [(IMAssistantMessageHandler *)self messageHandlerDataSource];
  accountDataSource = [messageHandlerDataSource accountDataSource];

  if (![handlesCopy count])
  {
    firstObject = [alternativesCopy __im_assistant_allValidPersonOptionsWithAccountDataSource:accountDataSource];
    v27 = [firstObject count];
    v28 = IMLogHandleForCategory();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
    if (v27)
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v28, OS_LOG_TYPE_INFO, "Could not find any handles matching the requested label/handle-type, returning unsupported with suggested alternatives.", buf, 2u);
      }

      v23 = [MEMORY[0x277CD4088] resolutionResultUnsupportedWithReason:6 alternativeItems:firstObject];
      v30 = _IMAssistantCoreSendMessageSignpostLogHandle(v23);
      v31 = v30;
      if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
      {
        goto LABEL_32;
      }

      *buf = 0;
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_25479E000, v28, OS_LOG_TYPE_INFO, "Could not find any matching handles, and contact has no phone numbers or email addresses, returning unsupported.", buf, 2u);
      }

      v23 = [MEMORY[0x277CD4088] unsupportedWithReason:4];
      v39 = _IMAssistantCoreSendMessageSignpostLogHandle(v23);
      v31 = v39;
      if (v16 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
      {
        goto LABEL_32;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_25479E000, v31, OS_SIGNPOST_INTERVAL_END, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
LABEL_32:

    goto LABEL_33;
  }

  v19 = [handlesCopy count];
  v20 = IMLogHandleForCategory();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19 >= 2)
  {
    if (v21)
    {
      *buf = 0;
      _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Asking user to disambiguate among the matching handles.", buf, 2u);
    }

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_2547B0CDC;
    v64[3] = &unk_279786738;
    v65 = accountDataSource;
    v22 = [handlesCopy __imArrayByApplyingBlock:v64];
    v23 = [MEMORY[0x277CD4088] disambiguationWithPeopleToDisambiguate:v22];
    v24 = _IMAssistantCoreSendMessageSignpostLogHandle(v23);
    v25 = v24;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_25479E000, v25, OS_SIGNPOST_INTERVAL_END, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
    }

    firstObject = v65;
    goto LABEL_33;
  }

  if (v21)
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v20, OS_LOG_TYPE_INFO, "Only found one handle matching request, returning success for person.", buf, 2u);
  }

  firstObject = [handlesCopy firstObject];
  contact = [firstObject contact];

  v33 = 0x277CD3000uLL;
  v63 = recipientCopy;
  if (contact)
  {
    goto LABEL_21;
  }

  v41 = objc_msgSend_personHandle(recipientCopy);
  __im_assistant_handleType = [v41 __im_assistant_handleType];

  v33 = 0x277CD3000;
  if (!__im_assistant_handleType)
  {
    goto LABEL_21;
  }

  v43 = IMLogHandleForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25479E000, v43, OS_LOG_TYPE_INFO, "The user explicitly requested a handle, e.g. 'Send a message to 555-555-5555', look up the contact to include in dialog.", buf, 2u);
  }

  handleID = [firstObject handleID];
  v62 = [accountDataSource imHandleWithID:handleID];
  if (!v62)
  {
    v59 = IMLogHandleForCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = handleID;
      _os_log_impl(&dword_25479E000, v59, OS_LOG_TYPE_INFO, "Could not create an IMHandle for handleID: %@", buf, 0xCu);
    }

    v33 = 0x277CD3000;
    goto LABEL_21;
  }

  v45 = objc_msgSend_personHandle(recipientCopy);
  v46 = -[IMAssistantMessageHandler contactIdentifiersMatchingHandleID:handleType:](self, "contactIdentifiersMatchingHandleID:handleType:", handleID, [v45 type]);

  v61 = v46;
  v47 = [v46 count];
  lastObject = IMLogHandleForCategory();
  v49 = os_log_type_enabled(lastObject, OS_LOG_TYPE_INFO);
  if (v47)
  {
    if (v49)
    {
      v50 = [v61 count];
      *buf = 134218242;
      v67 = v50;
      v68 = 2112;
      v69 = handleID;
      _os_log_impl(&dword_25479E000, lastObject, OS_LOG_TYPE_INFO, "Found %ld contacts matching manually requested person handle: %@.", buf, 0x16u);
    }

    lastObject = [v61 lastObject];
    v51 = IMLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = lastObject;
      _os_log_impl(&dword_25479E000, v51, OS_LOG_TYPE_INFO, "Using contact identifier %@", buf, 0xCu);
    }

    v52 = [(IMAssistantMessageHandler *)self contactWithIdentifier:lastObject];
    v53 = IMLogHandleForCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v52;
      _os_log_impl(&dword_25479E000, v53, OS_LOG_TYPE_INFO, "Found contact %@", buf, 0xCu);
    }

    v54 = objc_alloc(MEMORY[0x277CD3E90]);
    v55 = v52;
    v56 = v54;
    v60 = v55;
    v57 = [v54 __im_assistant_initWithContact:? imHandle:?];

    v58 = IMLogHandleForCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v57;
      _os_log_impl(&dword_25479E000, v58, OS_LOG_TYPE_INFO, "Resolved manually dictated recipient: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v49)
    {
      *buf = 138412290;
      v67 = handleID;
      _os_log_impl(&dword_25479E000, lastObject, OS_LOG_TYPE_INFO, "Did not find any contacts matching manually requested handle: %@", buf, 0xCu);
    }

    v57 = 0;
  }

  v33 = 0x277CD3000;
  if (!v57)
  {
LABEL_21:
    v34 = objc_alloc(*(v33 + 3728));
    v35 = [v34 __im_assistant_initWithHandleFromContact:firstObject accountDataSource:accountDataSource];

    v36 = 0;
    goto LABEL_22;
  }

  v36 = v57;
  v35 = v36;
LABEL_22:
  v23 = [MEMORY[0x277CD4088] successWithResolvedPerson:v35];
  v37 = _IMAssistantCoreSendMessageSignpostLogHandle(v23);
  v38 = v37;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v38, OS_SIGNPOST_INTERVAL_END, v12, "handleResolutionResultForContact", &unk_2547CAD0B, buf, 2u);
  }

  recipientCopy = v63;
LABEL_33:

  return v23;
}

- (id)recipientsResolutionFailureResultWithResult:(id)result forRecipient:(id)recipient amongRecipients:(id)recipients
{
  resultCopy = result;
  recipientCopy = recipient;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2547B0E2C;
  v13[3] = &unk_2797866E8;
  v14 = recipientCopy;
  v15 = resultCopy;
  v9 = resultCopy;
  v10 = recipientCopy;
  v11 = [recipients __imArrayByApplyingBlock:v13];

  return v11;
}

@end