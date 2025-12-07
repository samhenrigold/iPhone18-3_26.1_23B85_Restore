@interface IMBatchMessageTrackingContext
- (BOOL)isComplete;
- (IMBatchMessageTrackingContext)initWith:(id)with;
- (void)noteItemProcessed:(id)processed;
@end

@implementation IMBatchMessageTrackingContext

- (IMBatchMessageTrackingContext)initWith:(id)with
{
  withCopy = with;
  v17.receiver = self;
  v17.super_class = IMBatchMessageTrackingContext;
  v5 = [(IMBatchMessageTrackingContext *)&v17 init];
  if (v5)
  {
    context = [withCopy context];
    batchIdentifier = [context batchIdentifier];
    batchIdentifier = v5->_batchIdentifier;
    v5->_batchIdentifier = batchIdentifier;

    messages = [withCopy messages];
    v5->_totalMessagesExpected = [messages count];

    if ([(IMBatchMessageTrackingContext *)v5 totalMessagesExpected]< 1)
    {
      messageTracker = v5->_messageTracker;
      v5->_messageTracker = 0;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277D1AB20]);
      v11 = v5->_messageTracker;
      v5->_messageTracker = v10;

      messageTracker = [(IMBatchMessageTrackingContext *)v5 messageTracker];
      [messageTracker setPacketsExpected:{-[IMBatchMessageTrackingContext totalMessagesExpected](v5, "totalMessagesExpected")}];
    }

    if ([withCopy hasValidPagination])
    {
      context2 = [withCopy context];
      batchNumber = [context2 batchNumber];
      batchNumber = v5->_batchNumber;
      v5->_batchNumber = batchNumber;
    }
  }

  return v5;
}

- (void)noteItemProcessed:(id)processed
{
  v16 = *MEMORY[0x277D85DE8];
  processedCopy = processed;
  if (processedCopy)
  {
    messageTracker = [(IMBatchMessageTrackingContext *)self messageTracker];
    v9 = 0;
    [messageTracker trackPacket:objc_msgSend(processedCopy packetsExpected:"longLongValue") error:{-[IMBatchMessageTrackingContext totalMessagesExpected](self, "totalMessagesExpected"), &v9}];
    v6 = v9;

    if (v6 && IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        totalMessagesExpected = [(IMBatchMessageTrackingContext *)self totalMessagesExpected];
        *buf = 138412802;
        v11 = processedCopy;
        v12 = 2048;
        v13 = totalMessagesExpected;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Error tracking message index %@ in batch (size %ld): error %@", buf, 0x20u);
      }
    }
  }
}

- (BOOL)isComplete
{
  messageTracker = [(IMBatchMessageTrackingContext *)self messageTracker];
  if (messageTracker)
  {
    messageTracker2 = [(IMBatchMessageTrackingContext *)self messageTracker];
    isComplete = [messageTracker2 isComplete];
  }

  else
  {
    isComplete = 1;
  }

  return isComplete;
}

@end