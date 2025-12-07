@interface IMDCKBackupController
+ (id)sharedInstance;
- (BOOL)_canDisableiCloudBackupsAfterRestore;
- (BOOL)_currentDeviceStateIsRestore:(id)restore;
- (BOOL)_deviceStateHasChanged:(id)changed;
- (BOOL)_firstSyncTimeoutHasExpired;
- (BOOL)_setiCloudBackupAttribute:(BOOL)attribute onItemAtPath:(id)path error:(id *)error;
- (BOOL)_timeIntervalFromFirstSync:(id)sync hasExpiredForDate:(id)date;
- (BOOL)checkDatabaseWasRestored;
- (BOOL)iCloudBackupEnabledSystemWide;
- (BOOL)iCloudBackupsDisabled;
- (BOOL)pathRemovedFromBackup:(id)backup;
- (BOOL)readUserDefaultBoolForKey:(id)key;
- (BOOL)setupAssistantNeedsToRun;
- (IMDCKUtilities)ckUtilities;
- (double)_firstSyncExpirationTimeInterval;
- (id)_debuggingRestoreStateDescription;
- (id)_primaryAccountAltDSID;
- (id)_serverBagTimeIntervalForFirstSyncTimeout;
- (id)createBackupManager;
- (id)dateOfLastBackUp;
- (id)syncStateDebuggingInfo:(id)info;
- (int64_t)_attemptToDisableiCloudBackupsWithCurrentDeviceState:(id)state;
- (int64_t)_disableiCloudBackupIfSyncPercentageIsHighEnough:(int64_t)enough totalCount:(int64_t)count;
- (int64_t)_readRecordCount;
- (void)_deviceIDFromMobileBackupManager:(id *)manager legacyDeviceID:(id *)d;
- (void)_enqueOperation:(id)operation;
- (void)_ensureRestoredDatabaseToBackup;
- (void)_fetchCountOfSyncedCloudKitRecords:(int64_t *)records totalCount:(int64_t *)count;
- (void)_saveRecordCount:(int64_t)count;
- (void)_setICloudBackupsDisabled:(BOOL)disabled;
- (void)eventStreamHandler:(id)handler didReceiveEventWithName:(id)name userInfo:(id)info;
- (void)registerForDistributedNotifications;
- (void)removePathFromiCloudBackup:(id)backup;
- (void)sendDeviceIDToCloudKitWithCompletion:(id)completion;
- (void)setFirstSyncDateToNow;
- (void)setUserDefaultBool:(BOOL)bool forKey:(id)key;
- (void)toggleiCloudBackupsIfNeeded:(id)needed;
@end

@implementation IMDCKBackupController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B65A588;
  block[3] = &unk_278702AF8;
  block[4] = self;
  if (qword_2814210C0 != -1)
  {
    dispatch_once(&qword_2814210C0, block);
  }

  v2 = qword_281421038;

  return v2;
}

- (BOOL)iCloudBackupsDisabled
{
  v19 = *MEMORY[0x277D85DE8];
  _disabledDirectoryPath = [(IMDCKBackupController *)self _disabledDirectoryPath];
  v14 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v4 = [defaultManager __im_getiCloudBackupAttributeForItemAtPath:_disabledDirectoryPath attributeValue:&v14 error:&v13];
  v5 = v13;

  v6 = IMOSLoggingEnabled();
  if (v4)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = @"ENABLED";
        if (v14)
        {
          v8 = @"DISABLED";
        }

        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = _disabledDirectoryPath;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "iCloud backups are %@ (at path '%@')", buf, 0x16u);
      }
    }

    v9 = v14;
  }

  else
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v5 localizedDescription];
        *buf = 138412546;
        v16 = _disabledDirectoryPath;
        v17 = 2112;
        v18 = localizedDescription;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Failed to get iCloud backup attribute for path '%@', error: %@", buf, 0x16u);
      }
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (IMDCKUtilities)ckUtilities
{
  WeakRetained = objc_loadWeakRetained(&self->_ckUtilities);

  if (!WeakRetained)
  {
    v4 = +[IMDCKUtilities sharedInstance];
    objc_storeWeak(&self->_ckUtilities, v4);
  }

  v5 = objc_loadWeakRetained(&self->_ckUtilities);

  return v5;
}

- (void)_ensureRestoredDatabaseToBackup
{
  if ((IMGetCachedDomainBoolForKey() & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "_ensureRestoredDatabaseToBackup restoring everything to iCloudBackup.", v4, 2u);
      }
    }

    IMSetDomainBoolForKey();
    [(IMDCKBackupController *)self _setICloudBackupsDisabled:0];
  }
}

- (void)setUserDefaultBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  v6 = MEMORY[0x277CCABB0];
  keyCopy = key;
  v8 = [v6 numberWithBool:boolCopy];
  [(IMDCKBackupController *)self writeUserDefault:v8 forKey:keyCopy];
}

- (BOOL)readUserDefaultBoolForKey:(id)key
{
  v3 = [(IMDCKBackupController *)self readUserDefaultForKey:key];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)_readRecordCount
{
  v2 = [(IMDCKBackupController *)self readUserDefaultForKey:@"IMDCKBackupControllerBackupRecordCountKey"];
  v3 = v2;
  if (v2)
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (void)_saveRecordCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
  [(IMDCKBackupController *)self writeUserDefault:v4 forKey:@"IMDCKBackupControllerBackupRecordCountKey"];
}

- (id)_serverBagTimeIntervalForFirstSyncTimeout
{
  v2 = [MEMORY[0x277D18A10] sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"disable-icloud-backup-after-first-sync-interval"];

  return v3;
}

- (double)_firstSyncExpirationTimeInterval
{
  integerValue = IMDCKBackupControllerDefaultTimebombIntervalInDays;
  _serverBagTimeIntervalForFirstSyncTimeout = [(IMDCKBackupController *)self _serverBagTimeIntervalForFirstSyncTimeout];
  v4 = _serverBagTimeIntervalForFirstSyncTimeout;
  if (_serverBagTimeIntervalForFirstSyncTimeout)
  {
    integerValue = [_serverBagTimeIntervalForFirstSyncTimeout integerValue];
  }

  return integerValue * 86400.0;
}

- (void)setFirstSyncDateToNow
{
  firstSyncDate = [(IMDCKBackupController *)self firstSyncDate];

  if (!firstSyncDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(IMDCKBackupController *)self setFirstSyncDate:date];
  }
}

- (BOOL)_firstSyncTimeoutHasExpired
{
  firstSyncDate = [(IMDCKBackupController *)self firstSyncDate];
  if (firstSyncDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    v5 = [(IMDCKBackupController *)self _timeIntervalFromFirstSync:firstSyncDate hasExpiredForDate:date];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "First sync date is nil, this is a bug -- setFirstSyncDateToNow should have been called before this.", v8, 2u);
      }
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_timeIntervalFromFirstSync:(id)sync hasExpiredForDate:(id)date
{
  syncCopy = sync;
  dateCopy = date;
  v8 = dateCopy;
  if (syncCopy && dateCopy)
  {
    [syncCopy timeIntervalSinceReferenceDate];
    v10 = v9;
    [v8 timeIntervalSinceReferenceDate];
    v12 = v11 - v10;
    [(IMDCKBackupController *)self _firstSyncExpirationTimeInterval];
    v14 = v12 > v13;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "nil dates sent into _timeIntervalFromFirstSync", v17, 2u);
      }
    }

    v14 = 0;
  }

  return v14;
}

- (void)toggleiCloudBackupsIfNeeded:(id)needed
{
  neededCopy = needed;
  _readCurrentDeviceState = [(IMDCKBackupController *)self _readCurrentDeviceState];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22B65ADAC;
  aBlock[3] = &unk_2787071D8;
  aBlock[4] = self;
  v6 = _readCurrentDeviceState;
  v16 = v6;
  v7 = neededCopy;
  v17 = v7;
  v8 = _Block_copy(aBlock);
  v9 = [v6 objectForKeyedSubscript:*MEMORY[0x277D18E90]];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    if (v8)
    {
      v8[2](v8, 3, 0);
    }
  }

  else
  {
    ckUtilities = [(IMDCKBackupController *)self ckUtilities];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B65AF60;
    v12[3] = &unk_2787071D8;
    v12[4] = self;
    v13 = v6;
    v14 = v8;
    [ckUtilities fetchCloudKitAccountStatusWithCompletion:v12];
  }
}

- (void)registerForDistributedNotifications
{
  if ((IMIsRunningInUnitTesting() & 1) == 0)
  {
    v3 = +[IMDDistributedNotificationXPCEventStreamHandler sharedInstance];
    [v3 addDelegate:self queue:MEMORY[0x277D85CD0]];
  }
}

- (id)_primaryAccountAltDSID
{
  ckUtilities = [(IMDCKBackupController *)self ckUtilities];
  _primaryiCloudAccountAltDSID = [ckUtilities _primaryiCloudAccountAltDSID];

  return _primaryiCloudAccountAltDSID;
}

- (int64_t)_disableiCloudBackupIfSyncPercentageIsHighEnough:(int64_t)enough totalCount:(int64_t)count
{
  v20 = *MEMORY[0x277D85DE8];
  if (count < 1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = enough / count;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 134218496;
      v15 = v7;
      v16 = 2048;
      enoughCopy = enough;
      v18 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Calculated percent synced (%f) from (%lld synced of %lld total records) ok ", &v14, 0x20u);
    }
  }

  v9 = v7 > *a33s;
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 134218240;
        v15 = v7;
        v16 = 2048;
        *&enoughCopy = *a33s;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Disabling iCloud backup since percentage of synced cloudkit records is high enough: %f >= %f ", &v14, 0x16u);
      }
    }

    [(IMDCKBackupController *)self setICloudBackupsDisabled:1];
    return 1;
  }

  else
  {
    if (v10)
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = 134218240;
        v15 = v7;
        v16 = 2048;
        *&enoughCopy = *a33s;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "NOT disabling iCloud backup since percentage of synced cloudkit records is NOT high enough: %f < %f. We will check again later.", &v14, 0x16u);
      }
    }

    return 5;
  }
}

- (void)_fetchCountOfSyncedCloudKitRecords:(int64_t *)records totalCount:(int64_t *)count
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageRecordCalculateLocalCloudKitStatistics();
  v7 = IMOSLoggingEnabled();
  if (v6)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 description];
        v10 = [v9 description];
        v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_283F23018];
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Loaded cloud kit stats: %@", &v18, 0xCu);
      }
    }

    v12 = [v6 objectForKey:*MEMORY[0x277D19D40]];
    *count = [v12 unsignedLongValue];

    v13 = [v6 objectForKey:*MEMORY[0x277D19D20]];
    *records = [v13 unsignedLongValue];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *count;
        v16 = *records;
        v18 = 134218240;
        v19 = v15;
        v20 = 2048;
        v21 = v16;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Total record count: %lld, total syncedCount: %lld", &v18, 0x16u);
      }
    }
  }

  else if (v7)
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateLocalCloudKitStatistics returned NULL stats", &v18, 2u);
    }
  }
}

- (BOOL)_currentDeviceStateIsRestore:(id)restore
{
  restoreCopy = restore;
  v4 = [restoreCopy objectForKeyedSubscript:*MEMORY[0x277D18E80]];
  if ([v4 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = [restoreCopy objectForKeyedSubscript:*MEMORY[0x277D18E78]];
    if ([v6 BOOLValue])
    {
      bOOLValue = 1;
    }

    else
    {
      v7 = [restoreCopy objectForKeyedSubscript:*MEMORY[0x277D18E88]];
      bOOLValue = [v7 BOOLValue];
    }
  }

  return bOOLValue;
}

- (BOOL)_deviceStateHasChanged:(id)changed
{
  changedCopy = changed;
  _readPreviousDeviceState = [(IMDCKBackupController *)self _readPreviousDeviceState];
  if (_readPreviousDeviceState)
  {
    v6 = *MEMORY[0x277D18E70];
    v7 = [changedCopy objectForKeyedSubscript:*MEMORY[0x277D18E70]];
    v8 = [_readPreviousDeviceState objectForKeyedSubscript:v6];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v11 = [v7 isEqual:v8] ^ 1;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (int64_t)_attemptToDisableiCloudBackupsWithCurrentDeviceState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v5 = [(IMDCKBackupController *)self _currentDeviceStateIsRestore:stateCopy];
    v6 = IMOSLoggingEnabled();
    if (v5)
    {
      if (v6)
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Device has been restored, checking to see if we can disable iCloud backups", buf, 2u);
        }
      }

      _canDisableiCloudBackupsAfterRestore = [(IMDCKBackupController *)self _canDisableiCloudBackupsAfterRestore];
      v9 = IMOSLoggingEnabled();
      if (_canDisableiCloudBackupsAfterRestore)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Device has been restored ok and is in acceptable state, wa are disabling iClound backups now", buf, 2u);
          }
        }

        v11 = 1;
        [(IMDCKBackupController *)self setICloudBackupsDisabled:1];
      }

      else
      {
        if (v9)
        {
          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Enabling iCloud backup and restore until restore is complete.", buf, 2u);
          }
        }

        [(IMDCKBackupController *)self setICloudBackupsDisabled:0];
        v11 = 5;
      }
    }

    else
    {
      if (v6)
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Checking counts of synced records to see if we can automatically disable iCloud backups", buf, 2u);
        }
      }

      v16 = 0;
      *buf = 0;
      [(IMDCKBackupController *)self _fetchCountOfSyncedCloudKitRecords:buf totalCount:&v16];
      v11 = [(IMDCKBackupController *)self _disableiCloudBackupIfSyncPercentageIsHighEnough:*buf totalCount:v16];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Device State is unexpectedly nil", buf, 2u);
      }
    }

    v11 = 8;
  }

  return v11;
}

- (void)_setICloudBackupsDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v29 = *MEMORY[0x277D85DE8];
  if (!disabled)
  {
    _disabledDirectoryPath = [(IMDCKBackupController *)self _disabledDirectoryPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = 0;
    v9 = [defaultManager __im_setiCloudBackupAttribute:0 onDirectoryAndChildrenAtPath:_disabledDirectoryPath error:&v21];
    v10 = v21;

    goto LABEL_5;
  }

  ckUtilities = [(IMDCKBackupController *)self ckUtilities];
  removeFromBackUpAllowed = [ckUtilities removeFromBackUpAllowed];

  if (removeFromBackUpAllowed)
  {
    _disabledDirectoryPath = [(IMDCKBackupController *)self _disabledDirectoryPath];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = 0;
    v9 = [defaultManager2 __im_setiCloudBackupAttribute:1 onItemAtPath:_disabledDirectoryPath error:&v22];
    v10 = v22;

LABEL_5:
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          _disabledDirectoryPath2 = [(IMDCKBackupController *)self _disabledDirectoryPath];
          v14 = _disabledDirectoryPath2;
          v15 = @"ENABLED";
          if (disabledCopy)
          {
            v15 = @"DISABLED";
          }

          *buf = 138412546;
          v24 = v15;
          v25 = 2112;
          v26 = _disabledDirectoryPath2;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "set iCloud backups to %@ (at path '%@')", buf, 0x16u);
        }
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v10 localizedDescription];
        v18 = localizedDescription;
        v19 = @"NO";
        *buf = 138412802;
        if (disabledCopy)
        {
          v19 = @"YES";
        }

        v24 = v19;
        v25 = 2112;
        v26 = _disabledDirectoryPath;
        v27 = 2112;
        v28 = localizedDescription;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Failed to set iCloud backup file attribute to %@ on path: '%@'. Error: %@", buf, 0x20u);
      }
    }

    return;
  }

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "We are not allowed to remove backups from iCloud and we got called to disable the back up -- early returning", buf, 2u);
    }
  }
}

- (BOOL)_setiCloudBackupAttribute:(BOOL)attribute onItemAtPath:(id)path error:(id *)error
{
  v6 = MEMORY[0x277CCAA00];
  pathCopy = path;
  defaultManager = [v6 defaultManager];
  LOBYTE(error) = [defaultManager __im_setiCloudBackupAttribute:1 onItemAtPath:pathCopy error:error];

  return error;
}

- (void)removePathFromiCloudBackup:(id)backup
{
  v18 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  ckUtilities = [(IMDCKBackupController *)self ckUtilities];
  removeFromBackUpAllowed = [ckUtilities removeFromBackUpAllowed];

  if ((removeFromBackUpAllowed & 1) == 0)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_21;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = backupCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "We are not allowed to remove this device from backup -- not removing path (%@) from backup", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (![(IMDCKBackupController *)self iCloudBackupsDisabled])
  {
    v13 = 0;
    v8 = [(IMDCKBackupController *)self _setiCloudBackupAttribute:1 onItemAtPath:backupCopy error:&v13];
    v9 = v13;
    v10 = IMOSLoggingEnabled();
    if (v8)
    {
      if (v10)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v15 = backupCopy;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "removed path from iCloud backup: '%@'", buf, 0xCu);
        }

LABEL_19:
      }
    }

    else if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v9 localizedDescription];
        *buf = 138412546;
        v15 = backupCopy;
        v16 = 2112;
        v17 = localizedDescription;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Failed to set iCloud backup file attribute to YES on path: '%@'. Error: %@", buf, 0x16u);
      }

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = backupCopy;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "All iCloud backups disabled so path is already not backing up: %@", buf, 0xCu);
    }

LABEL_6:
  }

LABEL_21:
}

- (BOOL)pathRemovedFromBackup:(id)backup
{
  v21 = *MEMORY[0x277D85DE8];
  backupCopy = backup;
  if ([(IMDCKBackupController *)self iCloudBackupsDisabled])
  {
    v5 = 1;
  }

  else
  {
    v16 = 0;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v7 = [defaultManager __im_getiCloudBackupAttributeForItemAtPath:backupCopy attributeValue:&v16 error:&v15];
    v8 = v15;

    v9 = IMOSLoggingEnabled();
    if (v7)
    {
      if (v9)
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = @"ENABLED";
          if (v16)
          {
            v11 = @"DISABLED";
          }

          *buf = 138412546;
          v18 = v11;
          v19 = 2112;
          v20 = backupCopy;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "iCloud backups are %@ for path '%@')", buf, 0x16u);
        }
      }

      v5 = v16;
    }

    else
    {
      if (v9)
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v8 localizedDescription];
          *buf = 138412546;
          v18 = backupCopy;
          v19 = 2112;
          v20 = localizedDescription;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Failed to get iCloud backup attribute for path '%@', error: %@", buf, 0x16u);
        }
      }

      v5 = 0;
    }
  }

  return v5 & 1;
}

- (id)createBackupManager
{
  if (qword_27D8CFFC0 != -1)
  {
    sub_22B7D8344();
  }

  v2 = qword_27D8CFFB8;
  if (qword_27D8CFFB8)
  {
    v2 = objc_alloc_init(qword_27D8CFFB8);
  }

  return v2;
}

- (BOOL)iCloudBackupEnabledSystemWide
{
  createBackupManager = [(IMDCKBackupController *)self createBackupManager];
  v3 = createBackupManager;
  if (createBackupManager)
  {
    isBackupEnabled = [createBackupManager isBackupEnabled];
  }

  else
  {
    isBackupEnabled = 0;
  }

  return isBackupEnabled;
}

- (BOOL)setupAssistantNeedsToRun
{
  if (qword_27D8CFFD0 != -1)
  {
    sub_22B7D8358();
  }

  v3 = off_27D8CFFC8;
  if (!off_27D8CFFC8)
  {
    return 1;
  }

  return v3();
}

- (void)_deviceIDFromMobileBackupManager:(id *)manager legacyDeviceID:(id *)d
{
  v17 = *MEMORY[0x277D85DE8];
  createBackupManager = [(IMDCKBackupController *)self createBackupManager];
  v7 = createBackupManager;
  if (createBackupManager)
  {
    backupDeviceUUID = [createBackupManager backupDeviceUUID];
    backupDeviceUDID = [v7 backupDeviceUDID];
  }

  else
  {
    backupDeviceUDID = 0;
    backupDeviceUUID = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = backupDeviceUUID;
      v15 = 2112;
      v16 = backupDeviceUDID;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Device ID from MobileBackup deviceID (deviceUUID) = %@, legacyDevice (deviceUDID) = %@", &v13, 0x16u);
    }
  }

  if (manager)
  {
    v11 = backupDeviceUUID;
    *manager = backupDeviceUUID;
  }

  if (d)
  {
    v12 = backupDeviceUDID;
    *d = backupDeviceUDID;
  }
}

- (void)_enqueOperation:(id)operation
{
  v9 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = operationCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Starting operation: '%@'", &v7, 0xCu);
    }
  }

  v5 = +[IMDCKDatabaseManager sharedInstance];
  truthDatabase = [v5 truthDatabase];
  [truthDatabase addOperation:operationCopy];
}

- (void)sendDeviceIDToCloudKitWithCompletion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  ckUtilities = [(IMDCKBackupController *)self ckUtilities];
  cloudKitSyncingEnabled = [ckUtilities cloudKitSyncingEnabled];

  if (cloudKitSyncingEnabled)
  {
    v7 = [(IMDCKBackupController *)self readUserDefaultForKey:@"IMDCKBackupControllerWrittenQuotaRecordKeyV2"];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "The iCloud quota record has already been written, returning", buf, 2u);
        }
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      goto LABEL_37;
    }

    v29 = 0;
    v30 = 0;
    [(IMDCKBackupController *)self _deviceIDFromMobileBackupManager:&v30 legacyDeviceID:&v29];
    v12 = v30;
    v13 = v29;
    v14 = IMOSLoggingEnabled();
    if (v12 | v13)
    {
      if (v14)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v32 = v12;
          v33 = 2112;
          v34 = v13;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "deviceID (deviceUUID) = %@, legacyDevice (deviceUDID) = %@", buf, 0x16u);
        }
      }

      v16 = _IMCreatePredicateWithDeviceUDIDAndDeviceUUID(v12, v13);
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          predicateFormat = [v16 predicateFormat];
          *buf = 138412290;
          v32 = predicateFormat;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Writing grace quota with device IDs: '%@'", buf, 0xCu);
        }
      }

      v19 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"InitialGraceQuota" predicate:v16];
      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v32 = v19;
          _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "created query ok: %@", buf, 0xCu);
        }
      }

      v21 = objc_alloc_init(MEMORY[0x277CBC4F0]);
      [v21 setAllowsCellularAccess:1];
      [v21 setQualityOfService:17];
      v22 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v19];
      [v22 setConfiguration:v21];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = sub_22B65D038;
      v25[3] = &unk_278707200;
      v26 = v16;
      selfCopy = self;
      v28 = completionCopy;
      v23 = v16;
      [v22 setQueryCompletionBlock:v25];
      [(IMDCKBackupController *)self _enqueOperation:v22];
    }

    else
    {
      if (v14)
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "both device UUID or UDID are nil", buf, 2u);
        }
      }

      if (!completionCopy)
      {
        goto LABEL_36;
      }

      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKBackupControllerErrorDomain" code:0 userInfo:0];
      (completionCopy)[2](completionCopy, 0, v19);
    }

LABEL_36:
    goto LABEL_37;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Messages in iCloud is not on, not sending up quota grace request", buf, 2u);
    }
  }

  if (completionCopy)
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDCKBackupControllerErrorDomain" code:1 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v11);
  }

LABEL_37:
}

- (id)dateOfLastBackUp
{
  v10 = *MEMORY[0x277D85DE8];
  createBackupManager = [(IMDCKBackupController *)self createBackupManager];
  v3 = createBackupManager;
  if (createBackupManager)
  {
    dateOfLastBackup = [createBackupManager dateOfLastBackup];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "BackupManager is nil, no date for last backup", &v8, 2u);
      }
    }

    dateOfLastBackup = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = dateOfLastBackup;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Date of last backup %@", &v8, 0xCu);
    }
  }

  return dateOfLastBackup;
}

- (BOOL)checkDatabaseWasRestored
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  [(IMDCKBackupController *)self _fetchCountOfSyncedCloudKitRecords:&v7 totalCount:&v6];
  v2 = v6;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      *buf = 138412802;
      if (v2 > 9)
      {
        v4 = @"YES";
      }

      v9 = v4;
      v10 = 2048;
      v11 = v6;
      v12 = 1024;
      v13 = 10;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Database is in acceptable restore state: %@ (%lld records found, at least %d expected before we can disable iCloud backups if device is in restore state)", buf, 0x1Cu);
    }
  }

  return v2 > 9;
}

- (id)_debuggingRestoreStateDescription
{
  createBackupManager = [(IMDCKBackupController *)self createBackupManager];
  v3 = createBackupManager;
  if (createBackupManager)
  {
    restoreState = [createBackupManager restoreState];
    v5 = restoreState;
    if (restoreState)
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = sub_22B65D58C([restoreState state]);
      v8 = [v5 description];
      v9 = [v6 stringWithFormat:@"Got valid restore state (%@) from MBManager: %@", v7, v8];
    }

    else
    {
      v9 = @"BackupManager restore state is nil";
    }
  }

  else
  {
    v9 = @"BackupManager is nil, can't disable iCloud backups";
  }

  return v9;
}

- (BOOL)_canDisableiCloudBackupsAfterRestore
{
  v22 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "checking to see if device is restoring…", &v18, 2u);
    }
  }

  if (![(IMDCKBackupController *)self setupAssistantNeedsToRun])
  {
    createBackupManager = [(IMDCKBackupController *)self createBackupManager];
    v6 = createBackupManager;
    if (!createBackupManager)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "BackupManager is nil, can't disable iCloud backups", &v18, 2u);
        }
      }

      checkDatabaseWasRestored = 0;
      goto LABEL_31;
    }

    restoreState = [createBackupManager restoreState];
    v8 = IMOSLoggingEnabled();
    if (restoreState)
    {
      if (v8)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = sub_22B65D58C([restoreState state]);
          v11 = [restoreState description];
          v18 = 138412546;
          v19 = v10;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Got valid restore state (%@) from MBManager: %@", &v18, 0x16u);
        }
      }

      state = [restoreState state];
      if (state > 6)
      {
        goto LABEL_19;
      }

      if (((1 << state) & 0x6E) != 0)
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = sub_22B65D58C([restoreState state]);
            v18 = 138412290;
            v19 = v14;
            _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Can't disable iCloud backups because restore state is: %@. Will try again later.", &v18, 0xCu);
          }
        }

LABEL_19:
        checkDatabaseWasRestored = 0;
LABEL_30:

LABEL_31:
        return checkDatabaseWasRestored;
      }
    }

    else if (v8)
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "BackupManager restore state is nil, checking database directly...", &v18, 2u);
      }
    }

    checkDatabaseWasRestored = [(IMDCKBackupController *)self checkDatabaseWasRestored];
    goto LABEL_30;
  }

  return 0;
}

- (id)syncStateDebuggingInfo:(id)info
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _debuggingRestoreStateDescription = [(IMDCKBackupController *)self _debuggingRestoreStateDescription];
  [dictionary setObject:_debuggingRestoreStateDescription forKey:@"restore-state"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDCKBackupController setupAssistantNeedsToRun](self, "setupAssistantNeedsToRun")}];
  [dictionary setObject:v6 forKey:@"setup-assistant-needs-to-run"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDCKBackupController checkDatabaseWasRestored](self, "checkDatabaseWasRestored")}];
  [dictionary setObject:v7 forKey:@"db-has-records"];

  dateOfLastBackUp = [(IMDCKBackupController *)self dateOfLastBackUp];
  v9 = dateOfLastBackUp;
  if (dateOfLastBackUp)
  {
    null = dateOfLastBackUp;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v11 = null;

  [dictionary setObject:v11 forKey:@"last-backup-date"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDCKBackupController iCloudBackupsDisabled](self, "iCloudBackupsDisabled")}];
  [dictionary setObject:v12 forKey:@"icloud-backups-disabled"];

  firstSyncDate = [(IMDCKBackupController *)self firstSyncDate];
  v14 = firstSyncDate;
  if (firstSyncDate)
  {
    null2 = firstSyncDate;
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16 = null2;

  [dictionary setObject:v16 forKey:@"first-sync-date"];
  _readCurrentDeviceState = [(IMDCKBackupController *)self _readCurrentDeviceState];
  v18 = _readCurrentDeviceState;
  if (_readCurrentDeviceState)
  {
    null3 = _readCurrentDeviceState;
  }

  else
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v20 = null3;

  [dictionary setObject:v20 forKey:@"device-state"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _disabledDirectoryPath = [(IMDCKBackupController *)self _disabledDirectoryPath];
  v32 = 0;
  v33 = 0;
  v31 = 0;
  [defaultManager __im_getItemsRemovedFromiCloudBackupsAtDirectoryPath:_disabledDirectoryPath outPaths:&v33 outRemovedPaths:&v32 error:&v31];
  v23 = v33;
  v24 = v32;
  v25 = v31;

  v26 = v24;
  v27 = v26;
  if (v26)
  {
    null4 = v26;
  }

  else
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v29 = null4;

  [dictionary setObject:v29 forKey:@"paths-removed-from-backup"];

  return dictionary;
}

- (void)eventStreamHandler:(id)handler didReceiveEventWithName:(id)name userInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  nameCopy = name;
  infoCopy = info;
  if ([nameCopy isEqualToString:*MEMORY[0x277D19CD0]])
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412546;
        v13 = nameCopy;
        v14 = 2112;
        v15 = infoCopy;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Handling event with name %@ userInfo %@", &v12, 0x16u);
      }
    }

    [(IMDCKBackupController *)self setICloudBackupsDisabled:0];
  }
}

@end