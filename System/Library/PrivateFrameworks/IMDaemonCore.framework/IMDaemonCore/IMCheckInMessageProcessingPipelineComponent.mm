@interface IMCheckInMessageProcessingPipelineComponent
- (IMCheckInMessageProcessingPipelineComponent)initWithAccount:(id)account;
- (id)_getURL:(id)l;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMCheckInMessageProcessingPipelineComponent

- (IMCheckInMessageProcessingPipelineComponent)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = IMCheckInMessageProcessingPipelineComponent;
  v6 = [(IMCheckInMessageProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMCheckInMessageProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  if ([inputCopy conformsToProtocol:&unk_283F6EB70])
  {
    v6 = inputCopy;
    balloonPluginBundleID = [v6 balloonPluginBundleID];
    v8 = IMBalloonExtensionIDWithSuffix();
    v9 = [balloonPluginBundleID isEqualToString:v8];

    if (v9)
    {
      v10 = [(IMCheckInMessageProcessingPipelineComponent *)self _getURL:v6];
      if (v10)
      {
        fromIdentifier = [v6 fromIdentifier];
        _stripFZIDPrefix = [fromIdentifier _stripFZIDPrefix];

        mEMORY[0x277D1AB78] = [MEMORY[0x277D1AB78] sharedCoordinator];
        v14 = [mEMORY[0x277D1AB78] shouldDropIncomingCheckInMessageWithURL:v10 senderHandle:_stripFZIDPrefix isFromMe:{objc_msgSend(v6, "isFromMe")}];

        if (v14)
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *v23 = 0;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "<IMCheckInMessageProcessingPipelineComponent> Message should be dropped", v23, 2u);
            }
          }

          v16 = objc_alloc(MEMORY[0x277CCA9B8]);
          v17 = [v16 initWithDomain:*MEMORY[0x277D18DF8] code:20 userInfo:0];
          v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v17];
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277D18E08]);
          [v18 fullfillWithValue:v6];
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "<IMCheckInMessageProcessingPipelineComponent> Unable to extract payload URL", v24, 2u);
          }
        }

        v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v6];
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "<IMCheckInMessageProcessingPipelineComponent> Message is not a Check In message", v25, 2u);
        }
      }

      v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v6];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *v26 = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "<IMCheckInMessageProcessingPipelineComponent> Message is not a balloon plugin", v26, 2u);
      }
    }

    v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  return v18;
}

- (id)_getURL:(id)l
{
  v3 = MEMORY[0x277CCAAC8];
  lCopy = l;
  v5 = IMExtensionPayloadUnarchivingClasses();
  balloonPluginPayload = [lCopy balloonPluginPayload];

  v11 = 0;
  v7 = [v3 unarchivedObjectOfClasses:v5 fromData:balloonPluginPayload error:&v11];
  v8 = v11;

  v9 = 0;
  if (!v8 && v7)
  {
    v9 = [v7 objectForKey:*MEMORY[0x277D19D88]];
  }

  return v9;
}

@end