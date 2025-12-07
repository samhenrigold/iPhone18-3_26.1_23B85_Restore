@interface IMCloudKitHooks
+ (id)logHandle;
+ (id)sharedInstance;
- (BOOL)eligibleForTruthZone;
- (BOOL)isDisablingDevices;
- (BOOL)isEnabled;
- (BOOL)isStartingSync;
- (BOOL)isSyncing;
- (BOOL)mocAccountsMatch;
- (BOOL)rampedIntoTruthZone;
- (BOOL)removedFromiCloudBackup;
- (BOOL)serverBagAllowsOnboarding;
- (BOOL)shouldShowCloudKitUI;
- (IMCloudKitHooks)init;
- (id)lastSyncDate;
- (id)logHandle;
- (int64_t)isChangingEnabledState;
- (void)_didAttemptToDisableAllDevicesResult:(BOOL)result;
- (void)_didAttemptToSetEnabledTo:(BOOL)to result:(BOOL)result;
- (void)_didPerformAdditionalStorageRequiredCheckWithSuccess:(BOOL)success additionalStorageRequired:(unint64_t)required forAccountId:(id)id error:(id)error;
- (void)_updateCloudKitProgressWithDictionary:(id)dictionary;
- (void)_updateCloudKitState;
- (void)_updateCloudKitStateWithDictionary:(id)dictionary;
- (void)broadcastCloudKitState;
- (void)broadcastCloudKitStateAfterClearingErrors;
- (void)broadcastCloudKitStateAfterFetchingAccountStatus;
- (void)cancelSync:(id)sync;
- (void)clearAnalyticDefaultsAndLocalSyncState;
- (void)clearChatZoneSyncToken;
- (void)clearDataFromCloudKit;
- (void)clearLocalSyncState;
- (void)createAttachmentZone;
- (void)createChatZone;
- (void)currentStorageOnDeviceWithReply:(id)reply;
- (void)deleteAttachmentZone;
- (void)deleteChatZone;
- (void)deleteExitRecord;
- (void)deleteMessagesZone;
- (void)deleteSalt;
- (void)downloadAttachmentAssets;
- (void)fetchAccountStatusAndUpdateMiCSwitchEligibility;
- (void)fetchCloudKitSyncStateDebuggingInfo:(id)info;
- (void)fetchExitRecord;
- (void)fetchLatestRampState;
- (void)fetchLatestSalt;
- (void)fetchSyncStateStatistics;
- (void)initiatePeriodicSync;
- (void)initiateSync:(id)sync forceRunNow:(BOOL)now reply:(id)reply;
- (void)loadDeletedMessagesWithLimit:(int64_t)limit;
- (void)loadDirtyMessagesWithLimit:(int64_t)limit;
- (void)markAllChatsAsDirty;
- (void)metricAttachments:(int64_t)attachments;
- (void)performAdditionalStorageRequiredCheck;
- (void)printCachedRampState;
- (void)printCachedSalt;
- (void)purgeAttachments:(int64_t)attachments;
- (void)removePathFromiCloudBackups:(id)backups;
- (void)reportMetricToCK:(id)k withDict:(id)dict;
- (void)reportMetricToCK:(id)k withSuccess:(BOOL)success;
- (void)setEnabled:(BOOL)enabled;
- (void)setiCloudBackupsDisabled:(BOOL)disabled;
- (void)setupIMCloudKitHooks;
- (void)simulateCloudKitSyncWithSyncState:(id)state;
- (void)startUserInitiatedSync;
- (void)syncAttachments;
- (void)syncDeletesToCloudKit;
- (void)syncMessages;
- (void)toggleiCloudBackupsIfNeeded;
- (void)tryToDisableAllDevices;
- (void)updateAttachmentFileSizes;
- (void)uploadDailyAnalyticstoCloudKit;
- (void)writeAttachments;
- (void)writeCloudKitSyncCounts:(id)counts;
- (void)writeDirtyChats;
- (void)writeDirtyMessages;
- (void)writeExitRecord;
@end

@implementation IMCloudKitHooks

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8246858;
  block[3] = &unk_1E78102B8;
  block[4] = self;
  if (qword_1ED767740 != -1)
  {
    dispatch_once(&qword_1ED767740, block);
  }

  v2 = qword_1ED767758;

  return v2;
}

- (BOOL)isEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = IMGetDomainBoolForKeyWithDefaultValue();
  v3 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (v2)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      if (v3)
      {
        v5 = @"YES";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "isEnabled returning = isCloudKitEnabled = %@ isInExitState(%@) ", &v8, 0x16u);
    }
  }

  return v2;
}

- (IMCloudKitHooks)init
{
  v4.receiver = self;
  v4.super_class = IMCloudKitHooks;
  v2 = [(IMCloudKitHooks *)&v4 init];
  if (v2)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &unk_1F1B6FE20);
  }

  return v2;
}

- (BOOL)mocAccountsMatch
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetDomainBoolForKey();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "iCloud and iMessage accounts match ? %@", &v6, 0xCu);
    }
  }

  return v2;
}

- (void)broadcastCloudKitState
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon broadcastCloudKitState];
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (id)logHandle
{
  if (qword_1ED767788 != -1)
  {
    sub_1A825C444();
  }

  v3 = qword_1ED767770;

  return v3;
}

- (void)uploadDailyAnalyticstoCloudKit
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon uploadDailyAnalyticstoCloudKit];
}

- (void)clearAnalyticDefaultsAndLocalSyncState
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon clearAnalyticDefaultsAndLocalSyncState];
}

- (void)setupIMCloudKitHooks
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-CloudKitHooks", bundleIdentifier];
  v4 = +[IMDaemonController sharedController];
  [v4 addListenerID:v3 capabilities:*MEMORY[0x1E69A6250] | 0x40000000u];

  v5 = +[IMDaemonController sharedController];
  [v5 blockUntilConnected];
}

- (void)createChatZone
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon createChatZone];
}

- (void)writeDirtyChats
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon writeDirtyChats];
}

- (void)deleteChatZone
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon deleteChatZone];
}

- (void)markAllChatsAsDirty
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon markAllChatsAsDirty];
}

- (void)clearChatZoneSyncToken
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon clearChatZoneSyncToken];
}

- (void)createAttachmentZone
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon createAttachmentZone];
}

- (void)writeAttachments
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon writeAttachments];
}

- (void)syncAttachments
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon syncAttachments];
}

- (void)deleteAttachmentZone
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon deleteAttachmentZone];
}

- (void)writeDirtyMessages
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon writeDirtyMessages];
}

- (void)deleteMessagesZone
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon deleteMessagesZone];
}

- (void)writeExitRecord
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon writeExitRecord];
}

- (void)fetchExitRecord
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon fetchExitRecord];
}

- (void)deleteExitRecord
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon deleteExitRecord];
}

- (void)syncMessages
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon syncMessages];
}

- (void)downloadAttachmentAssets
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon downloadAttachmentAssets];
}

- (void)initiatePeriodicSync
{
  IMSetDomainBoolForKey();
  [(IMCloudKitHooks *)self _updateCloudKitState];
  v4 = +[IMDaemonController sharedController];
  remoteDaemon = [v4 remoteDaemon];
  [remoteDaemon initiatePeriodicSync];
}

- (void)startUserInitiatedSync
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon startUserInitiatedSync];
}

- (void)loadDirtyMessagesWithLimit:(int64_t)limit
{
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon loadDirtyMessagesWithLimit:limit];
}

- (void)clearLocalSyncState
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon clearLocalCloudKitSyncState];
}

- (void)clearDataFromCloudKit
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon clearDataFromCloudKit];
}

- (BOOL)shouldShowCloudKitUI
{
  v17 = *MEMORY[0x1E69E9840];
  isEnabled = [(IMCloudKitHooks *)self isEnabled];
  eligibleForTruthZone = [(IMCloudKitHooks *)self eligibleForTruthZone];
  rampedIntoTruthZone = [(IMCloudKitHooks *)self rampedIntoTruthZone];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (isEnabled)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (eligibleForTruthZone)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      if (rampedIntoTruthZone)
      {
        v7 = @"YES";
      }

      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "shouldShowCloudKitUI - isEnabled(%@) eligibleForTruthZone(%@), rampedIntoTruthZone(%@)", &v11, 0x20u);
    }
  }

  return !isEnabled && eligibleForTruthZone && rampedIntoTruthZone;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x1E69E9840];
  if (enabled)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  IMSetDomainValueForKey();

  [(IMCloudKitHooks *)self _updateCloudKitState];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = IMStringFromCloudKitChangingSettingState();
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Setting cloudkit enabled to state: %@", &v11, 0xCu);
    }
  }

  v9 = +[IMDaemonController sharedController];
  remoteDaemon = [v9 remoteDaemon];
  [remoteDaemon setCloudKitEnabled:enabledCopy];
}

- (void)currentStorageOnDeviceWithReply:(id)reply
{
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Calculating current storage on device for iCloud", v7, 2u);
    }
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon currentStorageOnDeviceWithReply:replyCopy];
}

- (void)performAdditionalStorageRequiredCheck
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Request to check if additinal storage is required to store all messages", v5, 2u);
    }
  }

  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon performAdditionalStorageRequiredCheck];
}

- (void)fetchAccountStatusAndUpdateMiCSwitchEligibility
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon fetchAccountStatusAndUpdateMiCSwitchEligibility];
}

- (void)tryToDisableAllDevices
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Request to try and disable cloudkit on all devices", v6, 2u);
    }
  }

  IMSetDomainBoolForKey();
  [(IMCloudKitHooks *)self _updateCloudKitState];
  v4 = +[IMDaemonController sharedController];
  remoteDaemon = [v4 remoteDaemon];
  [remoteDaemon tryToDisableAllDevices];
}

- (BOOL)removedFromiCloudBackup
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "removedFromiCloudBackup returning = %@", &v6, 0xCu);
    }
  }

  return v2;
}

- (BOOL)rampedIntoTruthZone
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "rampedIntoTruthZone always returning YES, this shouldn't be called anymore.", v4, 2u);
    }
  }

  return 1;
}

- (BOOL)eligibleForTruthZone
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "eligibleForTruthZone returning = %@", &v6, 0xCu);
    }
  }

  return v2;
}

- (void)initiateSync:(id)sync forceRunNow:(BOOL)now reply:(id)reply
{
  nowCopy = now;
  v15 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  replyCopy = reply;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = syncCopy;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Initiating sync phase %@", &v13, 0xCu);
    }
  }

  IMSetDomainBoolForKey();
  [(IMCloudKitHooks *)self _updateCloudKitState];
  v11 = +[IMDaemonController sharedController];
  remoteDaemon = [v11 remoteDaemon];
  [remoteDaemon initiateSync:syncCopy forceRunNow:nowCopy reply:replyCopy];
}

- (void)cancelSync:(id)sync
{
  syncCopy = sync;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Sync cancellation requested", v7, 2u);
    }
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon cancelSync:syncCopy];
}

- (BOOL)isStartingSync
{
  v8 = *MEMORY[0x1E69E9840];
  if (IMGetDomainBoolForKeyWithDefaultValue())
  {
    v2 = 1;
  }

  else
  {
    v2 = IMGetDomainBoolForKeyWithDefaultValue();
  }

  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "isStartingSync returning = %@", &v6, 0xCu);
    }
  }

  return v2;
}

- (BOOL)isSyncing
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x1E69A8070] isMessagesIniCloudVersion2];

  if (isMessagesIniCloudVersion2)
  {
    v4 = IMGetCachedDomainValueForKey();
    unsignedIntegerValue = [v4 unsignedIntegerValue];
    LOBYTE(v6) = unsignedIntegerValue != 0;
    v7 = IMOSLoggingEnabled();
    if (unsignedIntegerValue)
    {
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "isSyncing returning = YES", &v11, 2u);
        }

LABEL_16:
      }
    }

    else if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "isSyncing returning = NO", &v11, 2u);
      }

      goto LABEL_16;
    }

LABEL_17:

    return v6;
  }

  v6 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      if (v6)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "isSyncing returning = %@", &v11, 0xCu);
    }

    goto LABEL_17;
  }

  return v6;
}

- (id)lastSyncDate
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = IMGetCachedDomainValueForKey();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Requesting last sync date: %@", &v5, 0xCu);
    }
  }

  return v2;
}

- (void)_didAttemptToSetEnabledTo:(BOOL)to result:(BOOL)result
{
  resultCopy = result;
  toCopy = to;
  v16 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (toCopy)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      if (resultCopy)
      {
        v7 = @"YES";
      }

      *buf = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "didAttemptToSetEnabledTo returned: targetEnabled:%@ result%@ clients should update values", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E7F34;
  block[3] = &unk_1E7814DC8;
  v10 = resultCopy;
  v11 = toCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (int64_t)isChangingEnabledState
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMGetCachedDomainValueForKey();
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = IMStringFromCloudKitChangingSettingState();
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "isChangingEnabledState returning = %@", &v8, 0xCu);
    }
  }

  return integerValue;
}

- (void)_didPerformAdditionalStorageRequiredCheckWithSuccess:(BOOL)success additionalStorageRequired:(unint64_t)required forAccountId:(id)id error:(id)error
{
  successCopy = success;
  v28 = *MEMORY[0x1E69E9840];
  idCopy = id;
  errorCopy = error;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      *buf = 138413058;
      if (successCopy)
      {
        v12 = @"YES";
      }

      v21 = v12;
      v22 = 2048;
      requiredCopy = required;
      v24 = 2112;
      v25 = idCopy;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "didPerformAdditionalStorageRequiredCheck returned with success: %@, additionalStorageRequired %llu for iCloud account id %@, error: %@", buf, 0x2Au);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A83E8314;
  v15[3] = &unk_1E7814E10;
  v19 = successCopy;
  v17 = errorCopy;
  requiredCopy2 = required;
  v16 = idCopy;
  v13 = errorCopy;
  v14 = idCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (BOOL)isDisablingDevices
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = IMGetDomainBoolForKeyWithDefaultValue();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "isDisabling devices returning = %@", &v6, 0xCu);
    }
  }

  return v2;
}

- (void)_didAttemptToDisableAllDevicesResult:(BOOL)result
{
  resultCopy = result;
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      if (resultCopy)
      {
        v5 = @"YES";
      }

      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "_didAttemptToDisableAllDevicesResult returned: result:%@ clients should update values", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E8674;
  block[3] = &unk_1E7813DC0;
  v7 = resultCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateCloudKitStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  logHandle = [(IMCloudKitHooks *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E5108(dictionaryCopy, logHandle);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:self userInfo:dictionaryCopy];
}

- (void)_updateCloudKitProgressWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  logHandle = [(IMCloudKitHooks *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E5180(dictionaryCopy, logHandle);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ProgressChanged" object:self userInfo:dictionaryCopy];
}

- (void)_updateCloudKitState
{
  logHandle = [(IMCloudKitHooks *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84E51F8(logHandle);
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x1E69A8070] isMessagesIniCloudVersion2];

  if ((isMessagesIniCloudVersion2 & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    syncStateDictionary = [(IMCloudKitHooks *)self syncStateDictionary];
    [defaultCenter postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.ValuesChanged" object:self userInfo:syncStateDictionary];
  }
}

- (void)loadDeletedMessagesWithLimit:(int64_t)limit
{
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon loadDeletedMessagesWithLimit:limit];
}

- (void)fetchLatestSalt
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon fetchLatestSalt];
}

- (void)printCachedSalt
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon printCachedSalt];
}

- (void)deleteSalt
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon deleteSalt];
}

- (void)metricAttachments:(int64_t)attachments
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      attachmentsCopy = attachments;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Metric attachments in cloudkit hooks bytes: %lld", &v7, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon metricAttachments:attachments];
}

- (void)purgeAttachments:(int64_t)attachments
{
  v9 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      attachmentsCopy = attachments;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Purge attachments in cloudkit hooks bytes: %lld", &v7, 0xCu);
    }
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon purgeAttachments:attachments];
}

- (void)updateAttachmentFileSizes
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Update attachment file sizes", v5, 2u);
    }
  }

  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon updateAttachmentFileSizes];
}

- (void)fetchSyncStateStatistics
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon fetchSyncStateStatistics];
}

- (void)writeCloudKitSyncCounts:(id)counts
{
  countsCopy = counts;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon writeCloudKitSyncCounts:countsCopy];
}

- (void)toggleiCloudBackupsIfNeeded
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon toggleiCloudBackupsIfNeeded];
}

- (void)setiCloudBackupsDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon setiCloudBackupsDisabled:disabledCopy];
}

- (void)removePathFromiCloudBackups:(id)backups
{
  backupsCopy = backups;
  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon removePathFromiCloudBackups:backupsCopy];
}

- (void)fetchLatestRampState
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon fetchLatestRampState];
}

- (void)printCachedRampState
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon printCachedRampState];
}

- (void)syncDeletesToCloudKit
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon syncDeletesToCloudKit];
}

- (void)fetchCloudKitSyncStateDebuggingInfo:(id)info
{
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Fetching sync state debugging info…", v7, 2u);
    }
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon fetchCloudKitSyncStateDebuggingInfo:infoCopy];
}

- (void)simulateCloudKitSyncWithSyncState:(id)state
{
  stateCopy = state;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Simulating sync with sync state", v7, 2u);
    }
  }

  v5 = +[IMDaemonController sharedController];
  remoteDaemon = [v5 remoteDaemon];
  [remoteDaemon simulateCloudKitSyncWithSyncState:stateCopy];
}

- (void)broadcastCloudKitStateAfterFetchingAccountStatus
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon broadcastCloudKitStateAfterFetchingAccountStatus];
}

- (void)broadcastCloudKitStateAfterClearingErrors
{
  v3 = +[IMDaemonController sharedController];
  remoteDaemon = [v3 remoteDaemon];
  [remoteDaemon broadcastCloudKitStateAfterClearingErrors];
}

- (void)reportMetricToCK:(id)k withSuccess:(BOOL)success
{
  successCopy = success;
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"syncSuccess";
  v6 = MEMORY[0x1E696AD98];
  kCopy = k;
  v8 = [v6 numberWithBool:successCopy];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(IMCloudKitHooks *)self reportMetricToCK:kCopy withDict:v9];
}

- (void)reportMetricToCK:(id)k withDict:(id)dict
{
  dictCopy = dict;
  kCopy = k;
  v8 = +[IMDaemonController sharedController];
  remoteDaemon = [v8 remoteDaemon];
  [remoteDaemon reportMetricToCK:kCopy withDict:dictCopy];
}

- (BOOL)serverBagAllowsOnboarding
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMBagIntValueWithDefault();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
      v6 = 138412546;
      v7 = &unk_1F1BA18C0;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Onboarding local version: %@, server version: %@", &v6, 0x16u);
    }
  }

  return v2 < 2;
}

@end