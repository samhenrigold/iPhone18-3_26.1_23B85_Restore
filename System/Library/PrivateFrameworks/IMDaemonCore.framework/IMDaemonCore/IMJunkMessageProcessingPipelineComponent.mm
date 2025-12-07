@interface IMJunkMessageProcessingPipelineComponent
- (IMJunkMessageProcessingPipelineComponent)initWithIDSTrustedData:(id)data;
- (id)runIndividuallyWithInput:(id)input;
- (void)_trackSendEventForSender:(id)sender andReceiver:(id)receiver;
@end

@implementation IMJunkMessageProcessingPipelineComponent

- (IMJunkMessageProcessingPipelineComponent)initWithIDSTrustedData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = IMJunkMessageProcessingPipelineComponent;
  v6 = [(IMJunkMessageProcessingPipelineComponent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsTrustedData, data);
    v8 = +[IMDTrustKitDecisioningManager sharedManager];
    trustKitManager = v7->_trustKitManager;
    v7->_trustKitManager = v8;
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v62 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v60) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMJunkMessageProcessingPipelineComponent> Started processing", &v60, 2u);
    }
  }

  if (([MEMORY[0x277D1AC58] isiMessageJunkFilterEnabled] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Oscar is disabled", &v60, 2u);
      }
    }

    goto LABEL_45;
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    trustKitManager = [(IMJunkMessageProcessingPipelineComponent *)self trustKitManager];
    isJunkFilteringEnabled = [trustKitManager isJunkFilteringEnabled];

    if ((isJunkFilteringEnabled & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Spam filter is disabled", &v60, 2u);
        }
      }

      goto LABEL_45;
    }
  }

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  isInternalInstall = [mEMORY[0x277D19268] isInternalInstall];

  if (isInternalInstall && IMGetDomainBoolForKey())
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Default value set: oscar enabled.", &v60, 2u);
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  messageItems = [inputCopy messageItems];
  if ([messageItems count] == 1)
  {
    messageItems2 = [inputCopy messageItems];
    firstObject = [messageItems2 firstObject];
    isTypingMessage = [firstObject isTypingMessage];

    if (isTypingMessage)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Message is a typing indicator, not processing for junk", &v60, 2u);
        }
      }

LABEL_45:
      v26 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      goto LABEL_46;
    }
  }

  else
  {
  }

  if ([inputCopy isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        fromIdentifier = [inputCopy fromIdentifier];
        v60 = 138412290;
        v61 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Message is a message from me, not processing for junk: %@", &v60, 0xCu);
      }
    }

    goto LABEL_45;
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  [mEMORY[0x277D1AAA8] trackiMessageJunkEvent:2];

  LODWORD(mEMORY[0x277D1AAA8]) = [(IMDiMessageIDSTrustedData *)self->_idsTrustedData isFromTrustedSender];
  v23 = IMOSLoggingEnabled();
  if ((v13 & mEMORY[0x277D1AAA8]) != 0)
  {
    if (v23)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Message is from trusted sender", &v60, 2u);
      }
    }

    goto LABEL_45;
  }

  if (v23)
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      fromIdentifier2 = [inputCopy fromIdentifier];
      v60 = 138412290;
      v61 = fromIdentifier2;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_INFO, "Message is not from a trusted sender, received from: %@", &v60, 0xCu);
    }
  }

  chat = [inputCopy chat];
  if (!chat)
  {
    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LOWORD(v60) = 0;
        _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Could not find chat, bailing", &v60, 2u);
      }
    }

    goto LABEL_75;
  }

  if ([inputCopy hadChat])
  {
    if ([chat isFiltered] == 2)
    {
      fromIdentifier3 = [inputCopy fromIdentifier];
      toIdentifier = [inputCopy toIdentifier];
      [(IMJunkMessageProcessingPipelineComponent *)self _trackSendEventForSender:fromIdentifier3 andReceiver:toIdentifier];

      v33 = +[IMDSpamFilteringHelper sharedHelper];
      [v33 presentDebugUI];

      mEMORY[0x277D1AAA8]2 = +[IMDSpamFilteringHelper sharedHelper];
      spamDetectionSource = [chat spamDetectionSource];
      [mEMORY[0x277D1AAA8]2 recordJunkMetricsForSpamDetectionSource:spamDetectionSource service:*MEMORY[0x277D1A620]];
    }

    else
    {
      if ([chat isFiltered])
      {
        goto LABEL_71;
      }

      mEMORY[0x277D1AAA8]2 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]2 trackiMessageJunkEvent:12];
    }

LABEL_71:
    if (IMOSLoggingEnabled())
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        isFiltered = [chat isFiltered];
        v60 = 134217984;
        v61 = isFiltered;
        _os_log_impl(&dword_22B4CC000, v38, OS_LOG_TYPE_INFO, "Chat already exists, filtered as: %lld", &v60, 0xCu);
      }
    }

    goto LABEL_75;
  }

  if (![chat isBusinessChat])
  {
    fromIdentifier4 = [inputCopy fromIdentifier];
    IsKnownContact = _IMDCoreSpotlightIsKnownContact();

    if (IsKnownContact)
    {
      mEMORY[0x277D1AAA8]3 = [MEMORY[0x277D1AAA8] sharedInstance];
      [mEMORY[0x277D1AAA8]3 trackiMessageJunkEvent:12];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "Message is not from known sender", &v60, 2u);
        }
      }

      v45 = +[IMDAccountController sharedInstance];
      toIdentifier2 = [inputCopy toIdentifier];
      account = [inputCopy account];
      v48 = [v45 receiverIsCandidateForJunk:toIdentifier2 forAccount:account];

      if ((v48 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v57 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            toIdentifier3 = [inputCopy toIdentifier];
            v60 = 138412290;
            v61 = toIdentifier3;
            _os_log_impl(&dword_22B4CC000, v57, OS_LOG_TYPE_INFO, "Receiver: %@ is not candidate for Oscar", &v60, 0xCu);
          }
        }

        mEMORY[0x277D1AAA8]4 = [MEMORY[0x277D1AAA8] sharedInstance];
        [mEMORY[0x277D1AAA8]4 trackiMessageJunkEvent:13];

        v40 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
        goto LABEL_76;
      }

      mEMORY[0x277D1AC90] = [MEMORY[0x277D1AC90] sharedInstance];
      [mEMORY[0x277D1AC90] sendReceivedJunkEventIfNeeded];

      [chat setSpamDetectionSource:2];
      lastMessage = [chat lastMessage];
      guid = [lastMessage guid];
      [chat setSpamDetectedMessage:guid];

      [chat updateIsFiltered:2];
      if (IMOSLoggingEnabled())
      {
        v52 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          LOWORD(v60) = 0;
          _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_INFO, "Chat set as junk", &v60, 2u);
        }
      }

      v53 = +[IMDSpamFilteringHelper sharedHelper];
      [v53 presentDebugUI];

      v54 = +[IMDSpamFilteringHelper sharedHelper];
      [v54 recordJunkMetricsForSpamDetectionSource:2 service:*MEMORY[0x277D1A620]];

      v55 = +[IMDChatRegistry sharedInstance];
      [v55 updateStateForChat:chat forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];

      mEMORY[0x277D1AAA8]3 = [inputCopy fromIdentifier];
      toIdentifier4 = [inputCopy toIdentifier];
      [(IMJunkMessageProcessingPipelineComponent *)self _trackSendEventForSender:mEMORY[0x277D1AAA8]3 andReceiver:toIdentifier4];
    }

    v26 = objc_alloc_init(MEMORY[0x277D18E08]);
    [v26 fullfillWithValue:inputCopy];
    goto LABEL_77;
  }

  if (IMOSLoggingEnabled())
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      LOWORD(v60) = 0;
      _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Don't mark business chats as junk", &v60, 2u);
    }
  }

LABEL_75:
  v40 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
LABEL_76:
  v26 = v40;
LABEL_77:

LABEL_46:

  return v26;
}

- (void)_trackSendEventForSender:(id)sender andReceiver:(id)receiver
{
  v17[2] = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  receiverCopy = receiver;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  v8 = MEMORY[0x231897A50](senderCopy);
  if (v8 && MEMORY[0x231897A50](receiverCopy))
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = IMCountryCodeForNumber();
    v11 = IMCountryCodeForNumber();
    v12 = [v9 numberWithBool:{objc_msgSend(v10, "isEqualToString:", v11)}];

    v7 = v12;
  }

  mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
  v16[0] = &unk_283F4EB10;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v16[1] = &unk_283F4EB28;
  v17[0] = v14;
  v17[1] = v7;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [mEMORY[0x277D1AAA8] trackiMessageJunkEvent:1 withDictionary:v15];
}

@end