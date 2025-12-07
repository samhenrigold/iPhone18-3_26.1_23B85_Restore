@interface MBDataMigratorPlugin
- (id)_restoreDefaultsWithEngine:(id)engine;
- (id)_setDMContextWithPolicy:(id)policy engine:(id)engine;
- (id)_updateMobileBackupPreferencesWithEngine:(id)engine;
- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine;
- (id)preparingBackupWithEngine:(id)engine;
- (void)_updateDeviceTransferInfoWithPlist:(id)plist;
@end

@implementation MBDataMigratorPlugin

- (id)preparingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if ([engineCopy backsUpPrimaryAccount])
  {
    v4 = +[MCProfileConnection sharedConnection];
    isPasscodeSet = [v4 isPasscodeSet];
    properties = [engineCopy properties];
    [properties setPasscodeSet:isPasscodeSet];

    v7 = +[NSFileManager defaultManager];
    if ([v7 fileExistsAtPath:@"/var/root/Library/Caches/Backup"])
    {
      v8 = MBGetDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = @"/var/root/Library/Caches/Backup";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing %{public}@", buf, 0xCu);
        _MBLog(@"Df", "Removing %{public}@", @"/var/root/Library/Caches/Backup");
      }

      v13 = 0;
      v9 = [v7 removeItemAtPath:@"/var/root/Library/Caches/Backup" error:&v13];
      v10 = v13;
      if ((v9 & 1) == 0)
      {
        v11 = MBGetDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v15 = @"/var/root/Library/Caches/Backup";
          v16 = 2114;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@: %{public}@", buf, 0x16u);
          _MBLog(@"E ", "Failed to remove %{public}@: %{public}@", @"/var/root/Library/Caches/Backup", v10);
        }
      }
    }
  }

  return 0;
}

- (id)endingRestoreWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  v8 = [(MBDataMigratorPlugin *)self _updateMobileBackupPreferencesWithEngine:engineCopy];
  if (v8)
  {
LABEL_2:
    v9 = v8;
    goto LABEL_3;
  }

  if ([engineCopy restoresPrimaryAccount])
  {
    v8 = [(MBDataMigratorPlugin *)self _setDMContextWithPolicy:policyCopy engine:engineCopy];
    if (!v8)
    {
      v8 = [(MBDataMigratorPlugin *)self _restoreDefaultsWithEngine:engineCopy];
    }

    goto LABEL_2;
  }

  v9 = 0;
LABEL_3:

  return v9;
}

- (id)_setDMContextWithPolicy:(id)policy engine:(id)engine
{
  policyCopy = policy;
  engineCopy = engine;
  settingsContext = [engineCopy settingsContext];
  properties = [engineCopy properties];
  deviceName = [properties deviceName];
  isRestoringToSameDevice = [policyCopy isRestoringToSameDevice];
  v44 = deviceName;
  if (isRestoringToSameDevice)
  {
    v48 = @"same device";
  }

  else
  {
    productType = [properties productType];
    deviceID = [properties deviceID];
    v48 = [NSString stringWithFormat:@"%@ (%@ %@)", deviceName, productType, deviceID];
  }

  buildVersion = [properties buildVersion];
  date = [properties date];
  shouldPreserveSettings = [settingsContext shouldPreserveSettings];
  wasPasscodeSet = [properties wasPasscodeSet];
  isServiceEngine = [engineCopy isServiceEngine];
  isDeviceTransferEngine = [engineCopy isDeviceTransferEngine];
  v46 = engineCopy;
  if (isDeviceTransferEngine)
  {
    isDriveEngine = 0;
  }

  else
  {
    isDriveEngine = [engineCopy isDriveEngine];
  }

  buildVersion2 = [properties buildVersion];
  productType2 = [properties productType];
  v45 = settingsContext;
  if (isDeviceTransferEngine)
  {
    if (isServiceEngine)
    {
      sub_10009FAA0();
    }

    if (isDriveEngine)
    {
      sub_10009FA74();
    }

    v19 = [NSString stringWithFormat:@"Restored from a %@ backup of %@ created using %@ at %@", @"D2D", v48, buildVersion, date];
  }

  else
  {
    if ((isServiceEngine & isDriveEngine) == 1)
    {
      sub_10009FA1C();
    }

    v40 = isRestoringToSameDevice;
    v20 = policyCopy;
    v21 = shouldPreserveSettings;
    if (isServiceEngine)
    {
      v22 = wasPasscodeSet;
      v23 = @"iCloud";
    }

    else
    {
      if (!isDriveEngine)
      {
        goto LABEL_38;
      }

      v22 = wasPasscodeSet;
      encrypted = [properties encrypted];
      v25 = @"unencrypted";
      if (encrypted)
      {
        v25 = @"encrypted";
      }

      v23 = [NSString stringWithFormat:@"%@ iTunes", v25];
      if (!v23)
      {
LABEL_38:
        sub_10009F9C4();
      }
    }

    v26 = [NSString stringWithFormat:@"Restored from an %@ backup of %@ created using %@ at %@", v23, v48, buildVersion, date];

    v19 = v26;
    wasPasscodeSet = v22;
    shouldPreserveSettings = v21;
    policyCopy = v20;
    isRestoringToSameDevice = v40;
  }

  if (!v19)
  {
    sub_10009FA48();
  }

  v39 = buildVersion;
  v41 = policyCopy;
  v51[0] = @"Reason";
  v51[1] = @"DidRestoreFromBackup";
  v38 = v19;
  v52[0] = v19;
  v52[1] = &__kCFBooleanTrue;
  v51[2] = @"DidMigrateBackupFromDifferentDevice";
  v27 = [NSNumber numberWithInt:isRestoringToSameDevice ^ 1];
  v52[2] = v27;
  v51[3] = @"ShouldPreserveSettingsAfterRestore";
  v28 = [NSNumber numberWithBool:shouldPreserveSettings];
  v52[3] = v28;
  v51[4] = @"WasPasscodeSetInBackup";
  v29 = [NSNumber numberWithBool:wasPasscodeSet];
  v52[4] = v29;
  v51[5] = @"RestoreFromBackupSourceiTunes";
  v30 = [NSNumber numberWithBool:isDriveEngine];
  v52[5] = v30;
  v51[6] = @"RestoreFromBackupSourceDeviceToDevice";
  v31 = [NSNumber numberWithBool:isDeviceTransferEngine];
  v52[6] = v31;
  v51[7] = @"DidRestoreFromCloudBackup";
  v32 = [NSNumber numberWithBool:isServiceEngine];
  v52[7] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:8];
  v34 = [v33 mutableCopy];

  if (buildVersion2)
  {
    [v34 setObject:buildVersion2 forKeyedSubscript:@"RestoredBackupBuildVersion"];
  }

  if (productType2)
  {
    [v34 setObject:productType2 forKeyedSubscript:@"RestoredBackupProductType"];
  }

  v35 = MBDeviceUUID();
  if (v35)
  {
    [v34 setObject:v35 forKeyedSubscript:@"BackupDeviceUUID"];
  }

  if (v44)
  {
    [v34 setObject:v44 forKeyedSubscript:@"RestoredBackupDeviceName"];
  }

  if (isServiceEngine && [v46 backupPolicy] == 1)
  {
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:@"RestoredBackupIsMegaBackup"];
  }

  v36 = MBGetDefaultLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v50 = v34;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Setting data migration context: %@", buf, 0xCu);
    _MBLog(@"Df", "Setting data migration context: %@", v34);
  }

  DMSetContext();
  return 0;
}

- (void)_updateDeviceTransferInfoWithPlist:(id)plist
{
  plistCopy = plist;
  v4 = [MBPersona personalPersonaWithError:0];
  v5 = [v4 copyPreferencesValueForKey:@"DeviceTransferInfo" class:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    v8 = [v7 objectForKeyedSubscript:@"RestoreStartDate"];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = +[NSDate date];
        [v9 timeIntervalSinceDate:v8];
        v11 = v10;

        v12 = [NSNumber numberWithLongLong:v11];
        [v7 setObject:v12 forKeyedSubscript:@"RestoreDuration"];
      }
    }

    [plistCopy setObject:v7 forKeyedSubscript:@"DeviceTransferInfo"];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v15 = @"DeviceTransferInfo";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated %{public}@: %@", buf, 0x16u);
      _MBLog(@"Df", "Updated %{public}@: %@", @"DeviceTransferInfo", v7);
    }
  }
}

- (id)_updateMobileBackupPreferencesWithEngine:(id)engine
{
  engineCopy = engine;
  v5 = +[NSFileManager defaultManager];
  persona = [engineCopy persona];
  if (!persona)
  {
    sub_10009FACC();
  }

  v7 = persona;
  v68 = persona;
  v69 = engineCopy;
  selfCopy = self;
  if ([engineCopy restoresPrimaryAccount])
  {
    userIncompleteRestoreDirectory = [v7 userIncompleteRestoreDirectory];
    v9 = [userIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/mobile/Library/Preferences/com.apple.MobileBackup.plist"];

    v10 = v9;
    v11 = [NSMutableDictionary dictionaryWithContentsOfFile:v10];
    if (v11)
    {
      v12 = v11;
      v66 = 0;
      v67 = v5;
      v70 = v10;
      v71 = v10;
      goto LABEL_17;
    }

    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v83 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MobileBackup preferences not found in backup at %{public}@", buf, 0xCu);
      _MBLog(@"Df", "MobileBackup preferences not found in backup at %{public}@", v10);
    }

    sharedIncompleteRestoreDirectory = [v7 sharedIncompleteRestoreDirectory];
    v17 = [sharedIncompleteRestoreDirectory stringByAppendingPathComponent:@"/var/root/Library/Preferences/com.apple.MobileBackup.plist"];

    v18 = [NSMutableDictionary dictionaryWithContentsOfFile:v17];
    v71 = v17;
    [v5 removeItemAtPath:v17 error:0];
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v83 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Trying to find MobileBackup preferences at %{public}@", buf, 0xCu);
      _MBLog(@"Df", "Trying to find MobileBackup preferences at %{public}@", v17);
    }

    v12 = v18;
  }

  else
  {
    preferencesDirectory = [v7 preferencesDirectory];
    v14 = [preferencesDirectory stringByAppendingPathComponent:@"com.apple.MobileBackup.plist"];

    v12 = [NSMutableDictionary dictionaryWithContentsOfFile:v14];
    v10 = v14;
    v71 = v10;
  }

  v70 = v10;
  if (v12)
  {
    v66 = 0;
    v67 = v5;
  }

  else
  {
    v20 = MBGetDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v83 = v71;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MobileBackup preferences not found in backup at %{public}@", buf, 0xCu);
      _MBLog(@"Df", "MobileBackup preferences not found in backup at %{public}@", v71);
    }

    v72 = +[NSMutableDictionary dictionary];
    stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
    v89[0] = NSFileOwnerAccountName;
    v89[1] = NSFileGroupOwnerAccountName;
    v90[0] = @"mobile";
    v90[1] = @"mobile";
    v22 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
    v80 = 0;
    v23 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v22 error:&v80];
    v24 = v80;

    if ((v23 & 1) == 0)
    {
      if ([MBError codeForNSError:v24]!= 3)
      {
        goto LABEL_50;
      }

      v39 = MBGetDefaultLog();
      v40 = v70;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v83 = stringByDeletingLastPathComponent;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Removing existing file at %@", buf, 0xCu);
        _MBLog(@"I ", "Removing existing file at %@", stringByDeletingLastPathComponent);
      }

      v79 = v24;
      v41 = [v5 removeItemAtPath:stringByDeletingLastPathComponent error:&v79];
      v42 = v79;

      if ((v41 & 1) == 0)
      {
        v52 = [MBError errorWithCode:1 error:v42 path:stringByDeletingLastPathComponent format:@"Error removing file"];
        v34 = v68;
        v24 = v42;
        goto LABEL_75;
      }

      v87[0] = NSFileOwnerAccountName;
      v87[1] = NSFileGroupOwnerAccountName;
      v88[0] = @"mobile";
      v88[1] = @"mobile";
      v43 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:2];
      v78 = v42;
      v44 = [v5 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v43 error:&v78];
      v24 = v78;

      if ((v44 & 1) == 0)
      {
LABEL_50:
        v52 = [MBError errorWithCode:1 error:v24 path:stringByDeletingLastPathComponent format:@"Error creating directory"];
        v34 = v68;
        v40 = v70;
        goto LABEL_75;
      }
    }

    v67 = v5;

    v66 = v24;
    v12 = v72;
  }

LABEL_17:
  stringByDeletingLastPathComponent = [NSSet setWithObjects:@"DebugContext", @"Options", @"DisabledDomains", @"AllowiTunesBackup", @"EnableBackupScheduling", @"BackupEnabledForMegaBackup", @"SyncSettingsEnabledForMegaBackup", @"BackupDomainsEnabledForMegaBackup", @"EnableBackupOnCellular", @"MegaBackupTurnOnAllAppsSync", @"MegaBackupTurnOniCloudBackup", @"SyncSettingsEnabledForMegaBackup", @"MegaBackupEntryPoint", @"MegaBackupFlowStartDate", @"EnterPrebuddyUIDateDelta", @"InitialMegaBackupStartDateDelta", @"InitialMegaBackupFinishedDateDelta", @"RestoreAfterMegaBackupDateDelta", @"RestoreFinishedAfterMegaBackupDateDelta", @"MegaBackupRefreshDelta", @"PrebuddyFlowStep", @"MegaBackupSourceDeviceUUID", 0];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v72 = v12;
  allKeys = [v12 allKeys];
  v26 = [allKeys countByEnumeratingWithState:&v74 objects:v86 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v75;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v75 != v28)
        {
          objc_enumerationMutation(allKeys);
        }

        v30 = *(*(&v74 + 1) + 8 * i);
        v31 = [stringByDeletingLastPathComponent containsObject:v30];
        v32 = MBGetDefaultLog();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            *buf = 138543362;
            v83 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Restoring MobileBackup preference: %{public}@", buf, 0xCu);
            _MBLog(@"Df", "Restoring MobileBackup preference: %{public}@", v30);
          }
        }

        else
        {
          if (v33)
          {
            *buf = 138543362;
            v83 = v30;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Not restoring MobileBackup preference: %{public}@", buf, 0xCu);
            _MBLog(@"Df", "Not restoring MobileBackup preference: %{public}@", v30);
          }

          [v72 removeObjectForKey:v30];
        }
      }

      v27 = [allKeys countByEnumeratingWithState:&v74 objects:v86 count:16];
    }

    while (v27);
  }

  engineCopy = v69;
  v34 = v68;
  if ([v69 isCloudKitEngine])
  {
    if ([v69 conformsToProtocol:&OBJC_PROTOCOL___MBHasServiceAccount])
    {
      serviceAccount = [v69 serviceAccount];

      if (serviceAccount)
      {
        if ([v69 restoresPrimaryAccount])
        {
          userIncompleteRestoreDirectory2 = [v68 userIncompleteRestoreDirectory];
          skippedFileRecordsPlistPath = [v68 skippedFileRecordsPlistPath];
          skippedFileRecordsPlistPath2 = [userIncompleteRestoreDirectory2 stringByAppendingPathComponent:skippedFileRecordsPlistPath];
        }

        else
        {
          skippedFileRecordsPlistPath2 = [v68 skippedFileRecordsPlistPath];
        }

        if ([v67 fileExistsAtPath:skippedFileRecordsPlistPath2])
        {
          v45 = MBGetDefaultLog();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = skippedFileRecordsPlistPath2;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Copying skipped file records plist (%@) to preferences", buf, 0xCu);
            _MBLog(@"Df", "Copying skipped file records plist (%@) to preferences", skippedFileRecordsPlistPath2);
          }

          v46 = skippedFileRecordsPlistPath2;
          v47 = [NSData dataWithContentsOfFile:v46];
          if (v47)
          {
            v81 = 0;
            v48 = [NSPropertyListSerialization propertyListWithData:v47 options:0 format:0 error:&v81];
            v49 = v81;
            v50 = v49;
            if (!v48 || v49)
            {
              v53 = MBGetDefaultLog();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v83 = v50;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "NSPropertyListSerialization failed %@", buf, 0xCu);
                _MBLog(@"E ", "NSPropertyListSerialization failed %@", v50);
              }

              v51 = 0;
            }

            else
            {
              v51 = v48;
            }
          }

          else
          {
            v50 = MBGetDefaultLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v83 = v46;
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "dataWithContentsOfFile returned nil for path %@", buf, 0xCu);
              _MBLog(@"E ", "dataWithContentsOfFile returned nil for path %@", v46);
            }

            v51 = 0;
          }

          if (v51)
          {
            [v72 setObject:v51 forKeyedSubscript:@"RestoredFilesSkippedFromBackup"];
          }

          v73 = 0;
          v54 = [v67 removeItemAtPath:v46 error:&v73];
          v55 = v73;
          if ((v54 & 1) == 0)
          {
            v56 = MBGetDefaultLog();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v83 = v46;
              v84 = 2112;
              v85 = v55;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to remove skipped file records plist %@ %@", buf, 0x16u);
              _MBLog(@"E ", "Failed to remove skipped file records plist %@ %@", v46, v55);
            }
          }
        }
      }
    }
  }

  v57 = objc_alloc_init(MBRestoreInfo);
  v58 = +[NSDate date];
  [v57 setDate:v58];

  [v57 setWasCloudRestore:{objc_msgSend(v69, "isServiceEngine")}];
  properties = [v69 properties];
  buildVersion = [properties buildVersion];
  [v57 setBackupBuildVersion:buildVersion];

  v61 = MBBuildVersion();
  [v57 setDeviceBuildVersion:v61];

  dictionaryRepresentation = [v57 dictionaryRepresentation];
  [v72 setObject:dictionaryRepresentation forKeyedSubscript:@"RestoreInfo"];

  v5 = v67;
  if ([v69 isDeviceTransferEngine])
  {
    [(MBDataMigratorPlugin *)selfCopy _updateDeviceTransferInfoWithPlist:v72];
  }

  v63 = MBGetDefaultLog();
  v40 = v70;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = v70;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Writing out trimmed MobileBackup plist at %@", buf, 0xCu);
    _MBLog(@"Df", "Writing out trimmed MobileBackup plist at %@", v70);
  }

  if ([v72 writeToFile:v70 atomically:1])
  {
    v52 = 0;
  }

  else
  {
    v52 = [MBError errorWithCode:1 path:v71 format:@"Error saving MobileBackup preferences"];
  }

  v24 = v66;
LABEL_75:

  return v52;
}

- (id)_restoreDefaultsWithEngine:(id)engine
{
  engineCopy = engine;
  persona = [engineCopy persona];
  v4 = [persona copyPreferencesValueForKey:@"RestoredDefaults" class:objc_opt_class()];

  if (v4)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v4;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      v26 = v5;
      do
      {
        v9 = 0;
        v28 = v7;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * v9);
          v11 = [v5 objectForKeyedSubscript:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v10 componentsSeparatedByString:@":"];
            v13 = [v12 count];
            v14 = [v12 objectAtIndexedSubscript:0];
            if (v13 == 1)
            {
              v15 = @".GlobalPreferences";
            }

            else
            {
              [v12 objectAtIndexedSubscript:1];
              v14 = v15 = v14;
            }

            v16 = MBGetDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v34 = v15;
              v35 = 2112;
              v36 = v10;
              v37 = 2112;
              v38 = v11;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Restoring default %@ %@ = %@", buf, 0x20u);
              _MBLog(@"Df", "Restoring default %@ %@ = %@", v15, v10, v11);
            }

            persona2 = [engineCopy persona];
            userRestoreDirectory = [persona2 userRestoreDirectory];
            v19 = [userRestoreDirectory stringByAppendingFormat:@"/var/mobile/Library/Preferences/%@.plist", v15];

            v20 = [NSMutableDictionary dictionaryWithContentsOfFile:v19];
            if (!v20)
            {
              v20 = +[NSMutableDictionary dictionary];
            }

            [v20 setObject:v11 forKeyedSubscript:v14];
            [v20 writeToFile:v19 atomically:1];
            fileSystemRepresentation = [v19 fileSystemRepresentation];
            v22 = MBMobileUID();
            v23 = MBMobileUID();
            lchown(fileSystemRepresentation, v22, v23);

            v5 = v26;
            v7 = v28;
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v7);
    }

    v4 = v25;
  }

  return 0;
}

@end