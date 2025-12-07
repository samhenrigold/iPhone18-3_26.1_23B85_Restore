@interface IMDMessageFromStorageController
+ (BOOL)anyStorageControllerIsAwaitingStorageTimer;
+ (id)SMSStorageController;
+ (id)iMessageStorageController;
- (IMDMessageFromStorageController)initWithMessageStore:(id)store;
- (id)broadcaster;
- (void)_postMessagesFromStorage:(id)storage;
- (void)_storageTimerFired;
- (void)_submitStorageMetricsWithError:(unint64_t)error;
- (void)_updateStorageTimerWithInterval:(double)interval;
- (void)decrementPendingReadReceiptFromStorageCount;
- (void)noteBatchMessage:(id)message fromAccount:(id)account usingService:(id)service;
- (void)noteItemFromStorage:(id)storage extendsStorageTimer:(BOOL)timer;
- (void)noteItemProcessed:(BOOL)processed batchContext:(id)context usingService:(id)service;
- (void)noteLastItemFromStorage:(id)storage;
- (void)noteLastItemProcessedWithError:(unint64_t)error;
@end

@implementation IMDMessageFromStorageController

+ (id)iMessageStorageController
{
  if (qword_281421328 != -1)
  {
    sub_22B7D1018();
  }

  [qword_281421320 setServiceName:*MEMORY[0x277D1A620]];
  v2 = qword_281421320;

  return v2;
}

+ (id)SMSStorageController
{
  if (qword_281421468 != -1)
  {
    sub_22B7D102C();
  }

  [qword_281421460 setServiceName:*MEMORY[0x277D1A610]];
  v2 = qword_281421460;

  return v2;
}

+ (BOOL)anyStorageControllerIsAwaitingStorageTimer
{
  iMessageStorageController = [self iMessageStorageController];
  isAwaitingStorageTimer = [iMessageStorageController isAwaitingStorageTimer];

  if (isAwaitingStorageTimer)
  {
    return 1;
  }

  sMSStorageController = [self SMSStorageController];
  isAwaitingStorageTimer2 = [sMSStorageController isAwaitingStorageTimer];

  return isAwaitingStorageTimer2;
}

- (IMDMessageFromStorageController)initWithMessageStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = IMDMessageFromStorageController;
  v6 = [(IMDMessageFromStorageController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageStore, store);
    *&v7->_storageTimerInterval = xmmword_22B7F85C0;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trackingContexts = v7->_trackingContexts;
    v7->_trackingContexts = v8;
  }

  return v7;
}

- (id)broadcaster
{
  v2 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatListeners = [v2 broadcasterForChatListeners];

  return broadcasterForChatListeners;
}

- (void)noteBatchMessage:(id)message fromAccount:(id)account usingService:(id)service
{
  messageCopy = message;
  accountCopy = account;
  serviceCopy = service;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isComingOnlineEnabled = [mEMORY[0x277D1A9B8] isComingOnlineEnabled];

  if (isComingOnlineEnabled)
  {
    context = [messageCopy context];
    if (context)
    {
      trackingContexts = [(IMDMessageFromStorageController *)self trackingContexts];
      uniqueID = [accountCopy uniqueID];
      v15 = [trackingContexts objectForKey:uniqueID];

      if (v15)
      {
        [(IMBatchSetTrackingContext *)v15 noteNewIncomingBatchMessage:messageCopy];
      }

      else
      {
        v15 = [[IMBatchSetTrackingContext alloc] initWithAccount:accountCopy service:serviceCopy message:messageCopy];
        trackingContexts2 = [(IMDMessageFromStorageController *)self trackingContexts];
        uniqueID2 = [accountCopy uniqueID];
        [trackingContexts2 setObject:v15 forKey:uniqueID2];
      }
    }
  }
}

- (void)noteItemProcessed:(BOOL)processed batchContext:(id)context usingService:(id)service
{
  processedCopy = processed;
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  serviceCopy = service;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isComingOnlineEnabled = [mEMORY[0x277D1A9B8] isComingOnlineEnabled];

  if (isComingOnlineEnabled)
  {
    v12 = [contextCopy objectForKeyedSubscript:*MEMORY[0x277D19F30]];
    if (v12)
    {
      trackingContexts = [(IMDMessageFromStorageController *)self trackingContexts];
      v14 = [trackingContexts objectForKey:v12];

      if (v14)
      {
        [v14 noteItemProcessed:contextCopy];
        if ([v14 isComplete])
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v18 = 138412290;
              v19 = v12;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Batch Set for account %@ complete, removing tracker and sending completion", &v18, 0xCu);
            }
          }

          trackingContexts2 = [(IMDMessageFromStorageController *)self trackingContexts];
          [trackingContexts2 removeObjectForKey:v12];

          [v14 submitStorageProcessingComplete];
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v12;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "BatchTrack: Can't find tracking context for account %@", &v18, 0xCu);
        }
      }
    }
  }

  else if (processedCopy)
  {
    [(IMDMessageFromStorageController *)self noteLastItemProcessed];
  }
}

- (void)noteItemFromStorage:(id)storage extendsStorageTimer:(BOOL)timer
{
  v18 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (storageCopy)
  {
    messageStore = [(IMDMessageFromStorageController *)self messageStore];
    [messageStore setSuppressDatabaseUpdates:1];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = storageCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Noting item from storage (%@)", &v16, 0xCu);
      }
    }

    if (self->_timingComingBackFromStorage)
    {
      v9 = self->_messagesProcessedComingBackFromStorage + 1;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "This is the first item from storage starting timer", &v16, 2u);
        }
      }

      v11 = objc_alloc_init(MEMORY[0x277D192C0]);
      timingComingBackFromStorage = self->_timingComingBackFromStorage;
      self->_timingComingBackFromStorage = v11;

      [(IMTimingCollection *)self->_timingComingBackFromStorage startTimingForKey:@"ProcessingMessagesFromStorage"];
      self->_messagesProcessedComingBackFromStorage = 0;
      v9 = 1;
    }

    self->_messagesProcessedComingBackFromStorage = v9;
    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    if (!messagesReceivedDuringStorage)
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v15 = self->_messagesReceivedDuringStorage;
      self->_messagesReceivedDuringStorage = v14;

      messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    }

    [(NSMutableSet *)messagesReceivedDuringStorage addObject:storageCopy];
    if (timer || !self->_storageTimer)
    {
      [(IMDMessageFromStorageController *)self storageTimerInterval];
      [(IMDMessageFromStorageController *)self _updateStorageTimerWithInterval:?];
    }
  }
}

- (void)noteLastItemFromStorage:(id)storage
{
  v12 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  if (storageCopy)
  {
    messageStore = [(IMDMessageFromStorageController *)self messageStore];
    [messageStore setSuppressDatabaseUpdates:1];

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = 138412290;
        v11 = storageCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Noting last item from storage (%@)", &v10, 0xCu);
      }
    }

    messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    if (!messagesReceivedDuringStorage)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = self->_messagesReceivedDuringStorage;
      self->_messagesReceivedDuringStorage = v8;

      messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
    }

    [(NSMutableSet *)messagesReceivedDuringStorage addObject:storageCopy];
    [(IMDMessageFromStorageController *)self lastMessageStorageTimerInterval];
    [(IMDMessageFromStorageController *)self _updateStorageTimerWithInterval:?];
  }
}

- (void)noteLastItemProcessedWithError:(unint64_t)error
{
  v14 = *MEMORY[0x277D85DE8];
  timingComingBackFromStorage = self->_timingComingBackFromStorage;
  if (timingComingBackFromStorage)
  {
    [(IMTimingCollection *)timingComingBackFromStorage stopTimingForKey:@"ProcessingMessagesFromStorage"];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = self->_timingComingBackFromStorage;
        messagesProcessedComingBackFromStorage = self->_messagesProcessedComingBackFromStorage;
        v10 = 134218242;
        v11 = messagesProcessedComingBackFromStorage;
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Finished processing %lu items from storage %@", &v10, 0x16u);
      }
    }

    [(IMDMessageFromStorageController *)self _submitStorageMetricsWithError:error];
    v9 = self->_timingComingBackFromStorage;
    self->_timingComingBackFromStorage = 0;

    self->_messagesProcessedComingBackFromStorage = 0;
  }
}

- (void)_submitStorageMetricsWithError:(unint64_t)error
{
  v17[4] = *MEMORY[0x277D85DE8];
  if (IMIsRunningInUnitTesting())
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Should not be submitting metrics during unit tests. This method should be stubbed", &v14, 2u);
      }
    }
  }

  else
  {
    v16[0] = *MEMORY[0x277D1A328];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_messagesProcessedComingBackFromStorage];
    v17[0] = v6;
    v16[1] = *MEMORY[0x277D1A370];
    v7 = MEMORY[0x277CCABB0];
    [(IMTimingCollection *)self->_timingComingBackFromStorage totalTimeForKey:@"ProcessingMessagesFromStorage"];
    v8 = [v7 numberWithDouble:?];
    v17[1] = v8;
    v16[2] = *MEMORY[0x277D1A358];
    serviceName = [(IMDMessageFromStorageController *)self serviceName];
    v17[2] = serviceName;
    v16[3] = *MEMORY[0x277D1A350];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:error];
    v17[3] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Submitting message from storage metric with dictionary %@", &v14, 0xCu);
      }
    }

    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] trackEvent:*MEMORY[0x277D1A1F8] withDictionary:v11];
  }
}

- (void)_updateStorageTimerWithInterval:(double)interval
{
  v12 = *MEMORY[0x277D85DE8];
  if (interval > 0.0)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v10 = 134217984;
        intervalCopy = interval;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Scheduling a storage invalidation timer in: %f", &v10, 0xCu);
      }
    }

    storageTimer = self->_storageTimer;
    if (storageTimer)
    {
      [(NSTimer *)storageTimer invalidate];
      v7 = self->_storageTimer;
      self->_storageTimer = 0;
    }

    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__storageTimerFired selector:0 userInfo:0 repeats:interval];
    v9 = self->_storageTimer;
    self->_storageTimer = v8;
  }
}

- (void)_storageTimerFired
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageFromStorageController *)self pendingReadReceiptFromStorageCount])
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "We have pending read receipts to process after storage timer fired, delaying by 15s", &v16, 2u);
      }
    }

    [(IMDMessageFromStorageController *)self setPendingReadReceiptFromStorageCount:0];
    [(IMDMessageFromStorageController *)self _updateStorageTimerWithInterval:15.0];
    messageStore = [(IMDMessageFromStorageController *)self messageStore];
    [messageStore setSuppressDatabaseUpdates:1];
  }

  else
  {
    [(NSTimer *)self->_storageTimer invalidate];
    storageTimer = self->_storageTimer;
    self->_storageTimer = 0;

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(NSMutableSet *)self->_messagesReceivedDuringStorage count];
        messagesReceivedDuringStorage = self->_messagesReceivedDuringStorage;
        v16 = 134218242;
        v17 = v7;
        v18 = 2112;
        v19 = messagesReceivedDuringStorage;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Storage timer fired, have %lu guids we need to process: %@", &v16, 0x16u);
      }
    }

    if ([(NSMutableSet *)self->_messagesReceivedDuringStorage count])
    {
      messageStore = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:self->_messagesReceivedDuringStorage];
    }

    else
    {
      messageStore = 0;
    }

    if (self->_timingComingBackFromStorage)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat: Missed lastItemProcessed.  This time is likely off by the last storage timer", &v16, 2u);
        }
      }

      [(IMDMessageFromStorageController *)self noteLastItemProcessedWithError:1];
    }

    v10 = self->_messagesReceivedDuringStorage;
    self->_messagesReceivedDuringStorage = 0;

    messageStore2 = [(IMDMessageFromStorageController *)self messageStore];
    [messageStore2 setSuppressDatabaseUpdates:0];

    messageStore3 = [(IMDMessageFromStorageController *)self messageStore];
    allObjects = [messageStore allObjects];
    v14 = [messageStore3 messagesWithGUIDs:allObjects];

    [(IMDMessageFromStorageController *)self _postMessagesFromStorage:v14];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:*MEMORY[0x277D19F60] object:0];
  }
}

- (void)_postMessagesFromStorage:(id)storage
{
  v40 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = storageCopy;
  v23 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v23)
  {
    v21 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v34 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        messageStore = [(IMDMessageFromStorageController *)self messageStore];
        v9 = [messageStore chatsForMessage:v7];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v31;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v31 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v30 + 1) + 8 * i);
              if (([v15 isBlackholed] & 1) == 0)
              {
                guid = [v15 guid];
                array = [v4 objectForKey:guid];
                if (!array)
                {
                  array = [MEMORY[0x277CBEB18] array];
                }

                [array addObject:v7];
                [v4 setObject:array forKey:guid];
                [v5 setObject:v15 forKey:guid];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(context);
        v6 = v25 + 1;
      }

      while (v25 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v23);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_22B53EC38;
  v26[3] = &unk_278703E60;
  v27 = v5;
  selfCopy = self;
  v29 = obj;
  v18 = obj;
  v19 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v26];
}

- (void)decrementPendingReadReceiptFromStorageCount
{
  pendingReadReceiptFromStorageCount = self->_pendingReadReceiptFromStorageCount;
  if (pendingReadReceiptFromStorageCount)
  {
    [(IMDMessageFromStorageController *)self setPendingReadReceiptFromStorageCount:pendingReadReceiptFromStorageCount - 1];
  }
}

@end