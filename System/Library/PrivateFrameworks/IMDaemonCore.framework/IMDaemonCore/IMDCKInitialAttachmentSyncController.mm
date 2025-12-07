@interface IMDCKInitialAttachmentSyncController
- (BOOL)_deviceConditionsAllowsMessageSync;
- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount;
- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)enabled;
- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion;
@end

@implementation IMDCKInitialAttachmentSyncController

- (BOOL)_deviceConditionsAllowsMessageSyncForCurrentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities:count];
  cloudKitSyncingEnabled = [v5 cloudKitSyncingEnabled];

  ckUtilities = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  iCloudAccountMatchesiMessageAccount = [ckUtilities iCloudAccountMatchesiMessageAccount];

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (iCloudAccountMatchesiMessageAccount)
      {
        v10 = @"YES";
      }

      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %@ has accounts %@", &v13, 0x16u);
    }
  }

  return cloudKitSyncingEnabled & iCloudAccountMatchesiMessageAccount;
}

- (BOOL)_deviceConditionsAllowsMessageSyncForActivity:(id)activity deviceConditionsToCheck:(unint64_t)check currentBatchCount:(int64_t)count maxBatchCount:(int64_t)batchCount
{
  v20 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  ckUtilities = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  ckUtilities2 = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  iCloudAccountMatchesiMessageAccount = [ckUtilities2 iCloudAccountMatchesiMessageAccount];

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = @"NO";
      if (cloudKitSyncingEnabled)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      if (iCloudAccountMatchesiMessageAccount)
      {
        v13 = @"YES";
      }

      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %@, hasAccounts %@", &v16, 0x16u);
    }
  }

  return cloudKitSyncingEnabled & iCloudAccountMatchesiMessageAccount;
}

- (BOOL)_deviceConditionsAllowsMessageSync
{
  v7 = *MEMORY[0x277D85DE8];
  ckUtilities = [(IMDCKInitialAttachmentSyncController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = cloudKitSyncingEnabled;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Initial sync device conditions check if CloudKit sync is enabled: %d", v6, 8u);
    }
  }

  return cloudKitSyncingEnabled;
}

- (BOOL)_deviceConditionsAllowsMessageSyncIgnoreFeatureEnabled:(BOOL)enabled
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Initial sync device conditions ignoring feature enabled: always TRUE", v5, 2u);
    }
  }

  return 1;
}

- (BOOL)_kickOffWriteIfNeededForSyncType:(int64_t)type activity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Initial sync. Not writing up attachments", v10, 2u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  return 0;
}

@end