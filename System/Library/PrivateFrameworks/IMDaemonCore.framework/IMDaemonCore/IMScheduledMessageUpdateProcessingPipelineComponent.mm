@interface IMScheduledMessageUpdateProcessingPipelineComponent
- (IMScheduledMessageUpdateProcessingPipelineComponent)initWithPipelineResources:(id)resources;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMScheduledMessageUpdateProcessingPipelineComponent

- (IMScheduledMessageUpdateProcessingPipelineComponent)initWithPipelineResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = IMScheduledMessageUpdateProcessingPipelineComponent;
  v6 = [(IMScheduledMessageUpdateProcessingPipelineComponent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pipelineResources, resources);
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "<IMScheduledMessageUpdateProcessingPipelineParameter> Started processing", &v25, 2u);
    }
  }

  if ([inputCopy isFromMe])
  {
    gUID = [inputCopy GUID];
    pipelineResources = [(IMScheduledMessageUpdateProcessingPipelineComponent *)self pipelineResources];
    messageStore = [pipelineResources messageStore];
    v9 = [messageStore messageWithGUID:gUID];

    if ([gUID length] && v9)
    {
      scheduleState = [inputCopy scheduleState];
      v11 = scheduleState == 0;

      if (v11)
      {
        if (IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            LOWORD(v25) = 0;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Not Processing. Did not find update for any property on scheduled message", &v25, 2u);
          }
        }

        v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
      }

      else
      {
        scheduleState2 = [inputCopy scheduleState];
        [v9 setScheduleState:{objc_msgSend(scheduleState2, "intValue")}];

        pipelineResources2 = [(IMScheduledMessageUpdateProcessingPipelineComponent *)self pipelineResources];
        messageStore2 = [pipelineResources2 messageStore];
        v15 = [messageStore2 storeMessage:v9 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];

        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            scheduleState3 = [inputCopy scheduleState];
            v25 = 138412546;
            v26 = gUID;
            v27 = 2112;
            v28 = scheduleState3;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Stored scheduled message %@ with scheduleState %@", &v25, 0x16u);
          }
        }

        v18 = objc_alloc_init(MEMORY[0x277D18E08]);
        [v18 fullfillWithValue:inputCopy];
      }
    }

    else
    {
      v21 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = [v21 initWithDomain:*MEMORY[0x277D18DF8] code:5 userInfo:0];
      v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v22];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        fromIdentifier = [inputCopy fromIdentifier];
        v25 = 138412290;
        v26 = fromIdentifier;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Scheduled Message update is not from me, not processing: %@", &v25, 0xCu);
      }
    }

    v18 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];
  }

  return v18;
}

@end