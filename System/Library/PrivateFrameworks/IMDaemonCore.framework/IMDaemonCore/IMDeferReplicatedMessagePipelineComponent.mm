@interface IMDeferReplicatedMessagePipelineComponent
- (BOOL)_shouldDeferDeliveryWithInput:(id)input;
- (id)_runIndividuallyWithInput:(id)input;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMDeferReplicatedMessagePipelineComponent

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  if (![(IMDeferReplicatedMessagePipelineComponent *)self skipDeferral])
  {
    mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
    if ([mEMORY[0x277D19268] isInternalInstall])
    {
      v6 = IMGetCachedDomainBoolForKey();

      if (v6)
      {
        v7 = objc_alloc_init(MEMORY[0x277D18E08]);
        v8 = dispatch_time(0, 10000000000);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_22B571104;
        block[3] = &unk_2787038F8;
        block[4] = self;
        v14 = inputCopy;
        v9 = v7;
        v15 = v9;
        dispatch_after(v8, MEMORY[0x277D85CD0], block);
        v10 = v15;
        v11 = v9;

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v11 = [(IMDeferReplicatedMessagePipelineComponent *)self _runIndividuallyWithInput:inputCopy];
LABEL_7:

  return v11;
}

- (id)_runIndividuallyWithInput:(id)input
{
  v16 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Started processing", &v14, 2u);
    }
  }

  if ([(IMDeferReplicatedMessagePipelineComponent *)self _shouldDeferDeliveryWithInput:inputCopy])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        gUID = [inputCopy GUID];
        v14 = 138412290;
        v15 = gUID;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Deferring message %@", &v14, 0xCu);
      }
    }

    v8 = objc_alloc(MEMORY[0x277CCA9B8]);
    v9 = [v8 initWithDomain:*MEMORY[0x277D18DF8] code:18 userInfo:0];
    v10 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v9];
  }

  else
  {
    replicationSourceServiceNameOverride = [(IMDeferReplicatedMessagePipelineComponent *)self replicationSourceServiceNameOverride];

    if (replicationSourceServiceNameOverride)
    {
      replicationSourceServiceNameOverride2 = [(IMDeferReplicatedMessagePipelineComponent *)self replicationSourceServiceNameOverride];
      [inputCopy setReplicationSourceServiceName:replicationSourceServiceNameOverride2];
    }

    v10 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  return v10;
}

- (BOOL)_shouldDeferDeliveryWithInput:(id)input
{
  v28 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  replicationSourceServiceName = [inputCopy replicationSourceServiceName];
  v6 = [replicationSourceServiceName length];

  if (!v6)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        gUID = [inputCopy GUID];
        v24 = 138412290;
        v25 = gUID;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, message is not replicated.", &v24, 0xCu);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
  {
    v8 = IMGetCachedDomainBoolForKey();

    if (v8)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          gUID2 = [inputCopy GUID];
          v24 = 138412290;
          v25 = gUID2;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, default set", &v24, 0xCu);
        }

LABEL_22:

        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  else
  {
  }

  if (![inputCopy isSOS])
  {
    if ([(IMDeferReplicatedMessagePipelineComponent *)self skipDeferral])
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          gUID3 = [inputCopy GUID];
          v24 = 138412290;
          v25 = gUID3;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, skipDeferral is set", &v24, 0xCu);
        }

        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v16 = +[IMDMessageStore sharedInstance];
    gUID4 = [inputCopy GUID];
    v18 = [v16 messageWithGUID:gUID4];

    v14 = v18 == 0;
    if (!v18)
    {
LABEL_34:

      goto LABEL_24;
    }

    replicationSourceServiceName2 = [inputCopy replicationSourceServiceName];
    if ([replicationSourceServiceName2 isEqualToString:*MEMORY[0x277D1A610]])
    {
      service = [v18 service];
      v21 = [service isEqualToString:*MEMORY[0x277D1A608]];

      if (!v21)
      {
        goto LABEL_30;
      }

      replicationSourceServiceName2 = [v18 service];
      [inputCopy setReplicationSourceServiceName:replicationSourceServiceName2];
    }

LABEL_30:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        gUID5 = [inputCopy GUID];
        v24 = 138412546;
        v25 = gUID5;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, found existing item %@", &v24, 0x16u);
      }
    }

    goto LABEL_34;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      gUID6 = [inputCopy GUID];
      v24 = 138412290;
      v25 = gUID6;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "<IMDeferReplicatedMessagePipelineComponent> Allowing instant delivery of %@, message is SOS", &v24, 0xCu);
    }

    goto LABEL_22;
  }

LABEL_23:
  v14 = 0;
LABEL_24:

  return v14;
}

@end