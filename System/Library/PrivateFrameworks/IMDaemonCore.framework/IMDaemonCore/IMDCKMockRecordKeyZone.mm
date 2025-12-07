@interface IMDCKMockRecordKeyZone
- (BOOL)_operationIsCloudKitMetricsOperation:(id)operation;
- (void)_handleFetchingExitRecordOperation:(id)operation;
- (void)_handleWritingCloudKitMetrics:(id)metrics;
- (void)handleOperation:(id)operation;
@end

@implementation IMDCKMockRecordKeyZone

- (BOOL)_operationIsCloudKitMetricsOperation:(id)operation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  recordsToSave = [operation recordsToSave];
  v4 = [recordsToSave countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(recordsToSave);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v9 + 1) + 8 * v7) "recordID")])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [recordsToSave countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (void)handleOperation:(id)operation
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      operationCopy = operation;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Dispatching operation %@", buf, 0xCu);
    }
  }

  queue = [(IMDCKMockRecordZone *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B558D80;
  v7[3] = &unk_2787043C8;
  v7[4] = operation;
  v7[5] = self;
  dispatch_async(queue, v7);
}

- (void)_handleWritingCloudKitMetrics:(id)metrics
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Mocking writing up Cloudkit metrics", v6, 2u);
    }
  }

  modifyRecordsCompletionBlock = [metrics modifyRecordsCompletionBlock];
  (*(modifyRecordsCompletionBlock + 16))(modifyRecordsCompletionBlock, 0, 0, 0);
}

- (void)_handleFetchingExitRecordOperation:(id)operation
{
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Mock fetching exit record", buf, 2u);
    }
  }

  v5 = [objc_msgSend(operation "recordIDs")];
  v6 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"Exit" recordID:v5];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v6, v5, 0}];
  fetchRecordsCompletionBlock = [operation fetchRecordsCompletionBlock];
  (*(fetchRecordsCompletionBlock + 16))(fetchRecordsCompletionBlock, v7, 0);
}

@end