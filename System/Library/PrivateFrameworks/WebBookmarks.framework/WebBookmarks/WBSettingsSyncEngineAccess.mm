@interface WBSettingsSyncEngineAccess
- (BOOL)_isKnownPerSiteSetting:(id)setting;
- (BOOL)_isShowBackgroundImageEnabled;
- (BOOL)backgroundImageAppearanceIsLight;
- (BOOL)backgroundImageExists;
- (NSArray)syncSettingsUpDictionary;
- (id)_deviceClass;
- (id)_perSitePreferencesStore;
- (id)_startPageSectionOrder;
- (id)startPageSectionsManager;
- (int64_t)_settingForValue:(id)value;
- (void)_attemptUpdatingSavingPerSiteSettingsWithRecord:(id)record;
- (void)_didUpdateIOSDefaultBrowserWithRecord:(id)record;
- (void)_didUpdateStartPageBackgroundImageVisibilityWithRecord:(id)record;
- (void)_installMobileAssetIfApplicableWithURL:(id)l;
- (void)_updatePerSiteSettingsWithRecord:(id)record;
- (void)_updatePerSiteSettingsWithRecord:(id)record completionHandler:(id)handler;
- (void)_updateStartPageBackgroundImageWithRecord:(id)record;
- (void)_updateStartPageCloudTabsConsent:(id)consent;
- (void)_updateStartPageSectionOrder:(id)order;
- (void)_updateStartPageSectionVisibilityWithIdentifier:(id)identifier record:(id)record;
- (void)deleteBackgroundImageDirectory;
- (void)didDeleteRemoteRecordWithID:(id)d;
- (void)didReceiveRemoteCloudSettingsUpdateWithRecord:(id)record;
@end

@implementation WBSettingsSyncEngineAccess

- (int64_t)_settingForValue:(id)value
{
  valueCopy = value;
  if ([valueCopy isEqualToString:*MEMORY[0x277D4A400]])
  {
    v4 = 1;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3D0]])
  {
    v4 = 2;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3D8]])
  {
    v4 = 3;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3E8]])
  {
    v4 = 4;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A408]])
  {
    v4 = 5;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3C8]])
  {
    v4 = 6;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3F0]])
  {
    v4 = 7;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3C0]])
  {
    v4 = 8;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3E0]])
  {
    v4 = 9;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3F8]])
  {
    v4 = 10;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A418]])
  {
    v4 = 11;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A250]] & 1) != 0 || (objc_msgSend(valueCopy, "isEqualToString:", *MEMORY[0x277D4A258]))
  {
    v4 = 12;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A410]])
  {
    v4 = 13;
  }

  else if ([valueCopy isEqualToString:*MEMORY[0x277D4A3A8]])
  {
    v4 = 14;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)didReceiveRemoteCloudSettingsUpdateWithRecord:(id)record
{
  recordCopy = record;
  if ([(WBSettingsSyncEngineAccess *)self syncEnabled])
  {
    if ([recordCopy safari_isCloudBackgroundImageRecord] && objc_msgSend(MEMORY[0x277D49A08], "isStartPageSettingSyncEnabled"))
    {
      [(WBSettingsSyncEngineAccess *)self _updateStartPageBackgroundImageWithRecord:recordCopy];
    }

    else if ([recordCopy safari_isCloudPerSiteSettingRecord] && objc_msgSend(MEMORY[0x277D49A08], "isPerSiteSettingSyncEnabled"))
    {
      [(WBSettingsSyncEngineAccess *)self _updatePerSiteSettingsWithRecord:recordCopy];
    }

    else if ([recordCopy safari_isCloudSettingRecord] && objc_msgSend(MEMORY[0x277D49A08], "isStartPageSettingSyncEnabled"))
    {
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v6 = [(WBSettingsSyncEngineAccess *)self _settingForValue:recordName];

      v7 = MEMORY[0x277D4A4B0];
      switch(v6)
      {
        case 1:
          [(WBSettingsSyncEngineAccess *)self _updateStartPageSectionOrder:recordCopy];
          break;
        case 2:
          goto LABEL_24;
        case 3:
          v7 = MEMORY[0x277D4A4B8];
          goto LABEL_24;
        case 4:
          v7 = MEMORY[0x277D4A4E0];
          goto LABEL_24;
        case 5:
          v7 = MEMORY[0x277D4A510];
          goto LABEL_24;
        case 6:
          v7 = MEMORY[0x277D4A4A8];
          goto LABEL_24;
        case 7:
          v7 = MEMORY[0x277D4A500];
          goto LABEL_24;
        case 8:
          [(WBSettingsSyncEngineAccess *)self _didUpdateStartPageBackgroundImageVisibilityWithRecord:recordCopy];
          break;
        case 9:
          v7 = MEMORY[0x277D4A4C0];
          goto LABEL_24;
        case 10:
          v7 = MEMORY[0x277D4A508];
          goto LABEL_24;
        case 11:
          v7 = MEMORY[0x277D4A520];
          goto LABEL_24;
        case 12:
          [(WBSettingsSyncEngineAccess *)self _didUpdateIOSDefaultBrowserWithRecord:recordCopy];
          break;
        case 13:
          v7 = MEMORY[0x277D4A518];
LABEL_24:
          [(WBSettingsSyncEngineAccess *)self _updateStartPageSectionVisibilityWithIdentifier:*v7 record:recordCopy];
          break;
        case 14:
          [(WBSettingsSyncEngineAccess *)self _updateStartPageCloudTabsConsent:recordCopy];
          break;
        default:
          break;
      }
    }
  }
}

- (void)didDeleteRemoteRecordWithID:(id)d
{
  dCopy = d;
  if ([MEMORY[0x277D49A08] isStartPageSettingSyncEnabled])
  {
    recordName = [dCopy recordName];
    v4 = [recordName isEqualToString:*MEMORY[0x277D4A360]];

    if (v4)
    {
      v5 = dispatch_get_global_queue(17, 0);
      dispatch_async(v5, &__block_literal_global_0);
    }
  }
}

void __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 safari_startPageBackgroundImageFileURLForDefaultProfile];
  v11 = 0;
  v3 = [v0 removeItemAtURL:v2 error:&v11];
  v4 = v11;

  if (v3)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *MEMORY[0x277D4A360];
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, "[StartPageBackground] %{public}@ was removed in Default Profile successfully.", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v9 removeObjectForKey:*MEMORY[0x277D4A268]];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_6);
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke_cold_1(v4, v10);
    }
  }
}

void __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke_4()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A368] object:0 userInfo:0 deliverImmediately:1];
}

- (void)_updateStartPageBackgroundImageWithRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"data"];
  v6 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke;
  block[3] = &unk_279E752A8;
  v10 = v5;
  v11 = recordCopy;
  selfCopy = self;
  v7 = recordCopy;
  v8 = v5;
  dispatch_async(v6, block);
}

void __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [*(a1 + 32) fileURL];
  v4 = [v3 path];
  v5 = [v2 isReadableFileAtPath:v4];

  if (v5)
  {
    v6 = [v2 safari_startPageBackgroundImageFileURLForDefaultProfile];
    v7 = [*(a1 + 32) fileURL];
    v20 = 0;
    v8 = [v2 safari_replaceItemAtURL:v6 withItemFromURL:v7 error:&v20];
    v9 = v20;

    if ((v8 & 1) == 0)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 safari_privacyPreservingDescription];
        __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke_cold_1(v13, buf, v12);
      }
    }

    v14 = [*(a1 + 40) safari_encryptedValues];
    v15 = [v14 objectForKeyedSubscript:@"isLightAppearance"];

    v16 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    if ([v15 BOOLValue])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    [v16 setInteger:v17 forKey:*MEMORY[0x277D4A268]];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_16);
    v18 = *(a1 + 48);
    v19 = [*(a1 + 32) fileURL];
    [v18 _installMobileAssetIfApplicableWithURL:v19];
  }
}

void __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke_14()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A370] object:0 userInfo:0 deliverImmediately:1];
}

- (id)startPageSectionsManager
{
  lazyStartPageSectionsManager = self->_lazyStartPageSectionsManager;
  if (!lazyStartPageSectionsManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D4A080]);
    v5 = self->_lazyStartPageSectionsManager;
    self->_lazyStartPageSectionsManager = v4;

    lazyStartPageSectionsManager = self->_lazyStartPageSectionsManager;
  }

  return lazyStartPageSectionsManager;
}

- (void)_updateStartPageSectionVisibilityWithIdentifier:(id)identifier record:(id)record
{
  identifierCopy = identifier;
  safari_encryptedValues = [record safari_encryptedValues];
  v7 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  if (v7)
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x277D4A520]])
    {
      safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
      bOOLValue = [v7 BOOLValue];
      [safari_browserDefaults setBool:bOOLValue forKey:*MEMORY[0x277D4A490]];
    }

    else
    {
      safari_browserDefaults = [(WBSettingsSyncEngineAccess *)self startPageSectionsManager];
      [safari_browserDefaults setSectionIdentifier:identifierCopy enabled:{objc_msgSend(v7, "BOOLValue")}];
    }
  }
}

- (void)_installMobileAssetIfApplicableWithURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = CGImageSourceCreateWithURL(lCopy, 0);
  v6 = v5;
  if (v5)
  {
    v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
    v8 = v7;
    if (v7)
    {
      v9 = CGImageMetadataCopyTagWithPath(v7, 0, @"safari:fileName");
      v10 = v9;
      if (v9)
      {
        v11 = CGImageMetadataTagCopyValue(v9);
        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v6);
    if (v11)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      safari_startPageBackgroundImageMobileAssetFolderURL = [defaultManager safari_startPageBackgroundImageMobileAssetFolderURL];
      v14 = [safari_startPageBackgroundImageMobileAssetFolderURL URLByAppendingPathComponent:v11];

      v23 = 0;
      v15 = [defaultManager safari_replaceItemAtURL:v14 withItemFromURL:lCopy error:&v23];
      v16 = v23;
      v18 = v16;
      if ((v15 & 1) == 0)
      {
        v19 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v16, v17);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          safari_privacyPreservingDescription = [v18 safari_privacyPreservingDescription];
          [(WBSettingsSyncEngineAccess *)safari_privacyPreservingDescription _installMobileAssetIfApplicableWithURL:buf, v19];
        }
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v24 = @"FileName";
      v25 = v11;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [defaultCenter postNotificationName:@"WBSBackgroundImageMobileAssetDidInstallBackgroundImage" object:self userInfo:v22];
    }
  }
}

- (void)_didUpdateStartPageBackgroundImageVisibilityWithRecord:(id)record
{
  recordCopy = record;
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  safari_encryptedValues = [recordCopy safari_encryptedValues];
  v5 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  v6 = *MEMORY[0x277D4A478];
  v7 = [safari_browserDefaults safari_BOOLForKey:*MEMORY[0x277D4A478] defaultValue:1];
  if (v7 != [v5 BOOLValue])
  {
    [safari_browserDefaults setBool:objc_msgSend(v5 forKey:{"BOOLValue"), v6}];
  }
}

- (void)_didUpdateIOSDefaultBrowserWithRecord:(id)record
{
  recordCopy = record;
  safari_encryptedValues = [recordCopy safari_encryptedValues];
  v4 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  if ([v4 intValue])
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];

    safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    v8 = [safari_browserDefaults safari_numberForKey:recordName];
    intValue = [v8 intValue];
    intValue2 = [v4 intValue];

    if (intValue != intValue2)
    {
      [safari_browserDefaults setInteger:objc_msgSend(v4 forKey:{"intValue"), recordName}];
    }
  }
}

- (id)_perSitePreferencesStore
{
  if ([WBSettingsSyncEngineAccess _perSitePreferencesStore]::once != -1)
  {
    [WBSettingsSyncEngineAccess _perSitePreferencesStore];
  }

  v3 = [WBSettingsSyncEngineAccess _perSitePreferencesStore]::perSitePreferencesStore;

  return v3;
}

void __54__WBSettingsSyncEngineAccess__perSitePreferencesStore__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D49FF0]);
  v3 = [MEMORY[0x277D49FF0] defaultDatabaseURL];
  v1 = [v0 initWithDatabaseURL:?];
  v2 = [WBSettingsSyncEngineAccess _perSitePreferencesStore]::perSitePreferencesStore;
  [WBSettingsSyncEngineAccess _perSitePreferencesStore]::perSitePreferencesStore = v1;
}

- (BOOL)_isKnownPerSiteSetting:(id)setting
{
  settingCopy = setting;
  if ([WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::once != -1)
  {
    [WBSettingsSyncEngineAccess _isKnownPerSiteSetting:];
  }

  v4 = [-[WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::knownPerSiteSettings containsObject:settingCopy];

  return v4;
}

void __53__WBSettingsSyncEngineAccess__isKnownPerSiteSetting___block_invoke()
{
  v6[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D4A330];
  v6[0] = *MEMORY[0x277D4A310];
  v6[1] = v1;
  v2 = *MEMORY[0x277D4A318];
  v6[2] = *MEMORY[0x277D4A328];
  v6[3] = v2;
  v6[4] = *MEMORY[0x277D4A320];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:5];
  v4 = [v0 setWithArray:v3];
  v5 = [WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::knownPerSiteSettings;
  [WBSettingsSyncEngineAccess _isKnownPerSiteSetting:]::knownPerSiteSettings = v4;
}

- (void)_updatePerSiteSettingsWithRecord:(id)record
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v6 = WBS_LOG_CHANNEL_PREFIXCloudSettings(recordCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [WBSettingsSyncEngineAccess _updatePerSiteSettingsWithRecord:];
  }

  safari_encryptedValues = [recordCopy safari_encryptedValues];
  v8 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A138]];

  if (v8 && (v9 = [(WBSettingsSyncEngineAccess *)self _isKnownPerSiteSetting:v8], (v9 & 1) == 0))
  {
    v17 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v9, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_272C20000, v17, OS_LOG_TYPE_INFO, "Received a %{public}@ Per-Site Setting from CloudKit that is unrecognized to this device.", &v19, 0xCu);
    }
  }

  else
  {
    if (([v8 isEqualToString:*MEMORY[0x277D4A318]] & 1) == 0 && !objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D4A328]))
    {
      goto LABEL_9;
    }

    safari_encryptedValues2 = [recordCopy safari_encryptedValues];
    v12 = [safari_encryptedValues2 objectForKeyedSubscript:*MEMORY[0x277D4A128]];

    _deviceClass = [(WBSettingsSyncEngineAccess *)self _deviceClass];
    v14 = [_deviceClass isEqualToString:v12];

    if (v14)
    {

LABEL_9:
      [(WBSettingsSyncEngineAccess *)self _attemptUpdatingSavingPerSiteSettingsWithRecord:recordCopy];
      goto LABEL_15;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = 138543362;
      v20 = v8;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "Received a %{public}@ Per-Site Setting from CloudKit that is not applicable to this device.", &v19, 0xCu);
    }
  }

LABEL_15:
}

- (void)_attemptUpdatingSavingPerSiteSettingsWithRecord:(id)record
{
  recordCopy = record;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke;
  v6[3] = &unk_279E75320;
  v6[4] = self;
  v7 = recordCopy;
  v5 = recordCopy;
  [(WBSettingsSyncEngineAccess *)self _updatePerSiteSettingsWithRecord:v5 completionHandler:v6];
}

void __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings(a1, a2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v5)
    {
      __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_cold_3();
    }

    v7 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v7 postNotificationName:*MEMORY[0x277D4A378] object:0];

    v8 = [*(a1 + 32) _perSitePreferencesStore];
    v9 = *(a1 + 40);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_33;
    v17[3] = &unk_279E752D0;
    v18 = v9;
    [v8 savePerSiteSettingCloudKitRecordToDisk:v18 completionHandler:v17];

    v10 = v18;
  }

  else
  {
    if (v5)
    {
      __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_cold_1();
    }

    v11 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_cold_2();
    }

    v12 = MEMORY[0x277CBEBB8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_36;
    v15[3] = &unk_279E752F8;
    v13 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v13;
    v14 = [v12 scheduledTimerWithTimeInterval:0 repeats:v15 block:30.0];
    v10 = v16;
  }
}

void __78__WBSettingsSyncEngineAccess__attemptUpdatingSavingPerSiteSettingsWithRecord___block_invoke_33(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = *MEMORY[0x277D85DE8];
  v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) recordID];
    v6 = [v5 recordName];
    v7 = @"NO";
    if (v2)
    {
      v7 = @"YES";
    }

    v8 = v7;
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_272C20000, v4, OS_LOG_TYPE_INFO, "Save with record name %{public}@ in WBSPerSitePreferencesSQLiteStore did finish with success: %{public}@", &v9, 0x16u);
  }
}

- (id)_deviceClass
{
  currentDevice = [MEMORY[0x277D499F0] currentDevice];
  deviceClass = [currentDevice deviceClass];

  v4 = @"UndefinedDeviceClass";
  if (deviceClass == 3)
  {
    v4 = @"iPad";
  }

  if (deviceClass == 1)
  {
    return @"iPhone";
  }

  else
  {
    return v4;
  }
}

- (void)_updatePerSiteSettingsWithRecord:(id)record completionHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  safari_encryptedValues = [recordCopy safari_encryptedValues];
  v9 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A148]];

  safari_encryptedValues2 = [recordCopy safari_encryptedValues];
  v11 = [safari_encryptedValues2 objectForKeyedSubscript:*MEMORY[0x277D4A138]];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __81__WBSettingsSyncEngineAccess__updatePerSiteSettingsWithRecord_completionHandler___block_invoke;
  v21[3] = &unk_279E75348;
  v12 = handlerCopy;
  v22 = v12;
  v13 = MEMORY[0x2743D6830](v21);
  v14 = [recordCopy objectForKeyedSubscript:*MEMORY[0x277D4A140]];

  if (v14)
  {
    _perSitePreferencesStore = [(WBSettingsSyncEngineAccess *)self _perSitePreferencesStore];
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    [_perSitePreferencesStore removePreferenceValueWithRecordName:recordName completionHandler:v13];
  }

  else
  {
    safari_encryptedValues3 = [recordCopy safari_encryptedValues];
    v19 = *MEMORY[0x277D4A130];
    v20 = [safari_encryptedValues3 objectForKeyedSubscript:*MEMORY[0x277D4A130]];

    if (!v20)
    {
      _perSitePreferencesStore = [(WBSettingsSyncEngineAccess *)self _perSitePreferencesStore];
      [_perSitePreferencesStore setDefaultValue:v9 forPreference:v11 completionHandler:v13];
      goto LABEL_6;
    }

    _perSitePreferencesStore = [(WBSettingsSyncEngineAccess *)self _perSitePreferencesStore];
    recordID = [recordCopy safari_encryptedValues];
    recordName = [recordID objectForKeyedSubscript:v19];
    [_perSitePreferencesStore setValue:v9 ofPreference:v11 forDomain:recordName withTimestamp:0 completionHandler:v13];
  }

LABEL_6:
}

- (void)_updateStartPageSectionOrder:(id)order
{
  orderCopy = order;
  safari_encryptedValues = [orderCopy safari_encryptedValues];
  v4 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A158]];
  v5 = [v4 mutableCopy];

  allSections = [MEMORY[0x277D4A080] allSections];
  array = [MEMORY[0x277CBEB18] array];
  v7 = MEMORY[0x277CBEB98];
  defaultManager = [MEMORY[0x277D4A080] defaultManager];
  enabledSectionIdentifiers = [defaultManager enabledSectionIdentifiers];
  v10 = [v7 setWithArray:enabledSectionIdentifiers];

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke;
  v25[3] = &unk_279E75370;
  v11 = allSections;
  v26 = v11;
  v12 = array;
  v27 = v12;
  [v5 enumerateObjectsUsingBlock:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_2;
  v21[3] = &unk_279E753C0;
  v13 = v12;
  v22 = v13;
  v14 = v5;
  v23 = v14;
  v15 = v10;
  v24 = v15;
  [v11 enumerateObjectsUsingBlock:v21];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v17 = [v14 copy];
  [safari_browserDefaults setObject:v17 forKey:*MEMORY[0x277D49BD0]];

  if (v13)
  {
    defaultManager2 = [MEMORY[0x277D4A080] defaultManager];
    [defaultManager2 reorderSectionsToMatchOrderedIdentifiers:v13];
  }
}

void __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:v3] & 1) == 0)
  {
    v4 = [MEMORY[0x277D4A080] preferredVisiblePositionForNewSectionWithIdentifier:v3];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [a1[5] addObject:v3];
      [a1[4] addObject:v3];
    }

    else
    {
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2020000000;
      v12[3] = 0;
      v5 = a1[4];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_3;
      v8[3] = &unk_279E75398;
      v10 = v12;
      v11 = v4;
      v9 = a1[6];
      v6 = [v5 indexOfObjectPassingTest:v8];
      v7 = a1[5];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v7 addObject:v3];
        [a1[4] addObject:v3];
      }

      else
      {
        [v7 insertObject:v3 atIndex:v6];
        [a1[4] insertObject:v3 atIndex:v6];
      }

      _Block_object_dispose(v12, 8);
    }
  }
}

BOOL __59__WBSettingsSyncEngineAccess__updateStartPageSectionOrder___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5 != v4 && [*(a1 + 32) containsObject:v3])
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return v5 == v4;
}

- (id)_startPageSectionOrder
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v4 = *MEMORY[0x277D49BD0];
  v5 = [safari_browserDefaults arrayForKey:*MEMORY[0x277D49BD0]];

  if (v5)
  {
    sectionIdentifiers = [safari_browserDefaults arrayForKey:v4];
  }

  else
  {
    startPageSectionsManager = [(WBSettingsSyncEngineAccess *)self startPageSectionsManager];
    sectionIdentifiers = [startPageSectionsManager sectionIdentifiers];
  }

  return sectionIdentifiers;
}

- (void)_updateStartPageCloudTabsConsent:(id)consent
{
  consentCopy = consent;
  v5 = WBS_LOG_CHANNEL_PREFIXCloudSettings(consentCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WBSettingsSyncEngineAccess _updateStartPageCloudTabsConsent:];
  }

  safari_encryptedValues = [consentCopy safari_encryptedValues];
  v7 = [safari_encryptedValues objectForKeyedSubscript:*MEMORY[0x277D4A158]];

  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  bOOLValue = [v7 BOOLValue];
  [safari_browserDefaults setBool:bOOLValue forKey:*MEMORY[0x277D4A160]];

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x277D4A388] object:0 userInfo:0 deliverImmediately:1];
}

- (NSArray)syncSettingsUpDictionary
{
  v53[15] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB98];
  startPageSectionsManager = [(WBSettingsSyncEngineAccess *)self startPageSectionsManager];
  enabledSectionIdentifiers = [startPageSectionsManager enabledSectionIdentifiers];
  v52 = [v3 setWithArray:enabledSectionIdentifiers];

  v6 = MEMORY[0x277CCABB0];
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v8 = *MEMORY[0x277D4A250];
  v51 = safari_browserDefaults;
  v48 = [v6 numberWithInteger:{objc_msgSend(safari_browserDefaults, "integerForKey:", *MEMORY[0x277D4A250])}];
  v49 = makeSettingDictionary(v8, v48);
  v53[0] = v49;
  v9 = MEMORY[0x277CCABB0];
  safari_browserDefaults2 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v11 = *MEMORY[0x277D4A258];
  v50 = safari_browserDefaults2;
  v46 = [v9 numberWithInteger:{objc_msgSend(safari_browserDefaults2, "integerForKey:", *MEMORY[0x277D4A258])}];
  v47 = makeSettingDictionary(v11, v46);
  v53[1] = v47;
  v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A4B0])}];
  v45 = makeSettingDictionary(*MEMORY[0x277D4A3D0], v44);
  v53[2] = v45;
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A4B8])}];
  v43 = makeSettingDictionary(*MEMORY[0x277D4A3D8], v42);
  v53[3] = v43;
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A4E0])}];
  v41 = makeSettingDictionary(*MEMORY[0x277D4A3E8], v40);
  v53[4] = v41;
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A510])}];
  v39 = makeSettingDictionary(*MEMORY[0x277D4A408], v38);
  v53[5] = v39;
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A4A8])}];
  v37 = makeSettingDictionary(*MEMORY[0x277D4A3C8], v36);
  v53[6] = v37;
  v34 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A500])}];
  v35 = makeSettingDictionary(*MEMORY[0x277D4A3F0], v34);
  v53[7] = v35;
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[WBSettingsSyncEngineAccess _isShowBackgroundImageEnabled](self, "_isShowBackgroundImageEnabled")}];
  v33 = makeSettingDictionary(*MEMORY[0x277D4A3C0], v32);
  v53[8] = v33;
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A4C0])}];
  v31 = makeSettingDictionary(*MEMORY[0x277D4A3E0], v30);
  v53[9] = v31;
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v52, "containsObject:", *MEMORY[0x277D4A518])}];
  v28 = makeSettingDictionary(*MEMORY[0x277D4A410], v27);
  v53[10] = v28;
  v12 = MEMORY[0x277CCABB0];
  safari_browserDefaults3 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v13 = [v12 numberWithBool:{objc_msgSend(safari_browserDefaults3, "BOOLForKey:", *MEMORY[0x277D4A160])}];
  v14 = makeSettingDictionary(*MEMORY[0x277D4A3A8], v13);
  v53[11] = v14;
  _startPageSectionOrder = [(WBSettingsSyncEngineAccess *)self _startPageSectionOrder];
  v16 = makeSettingDictionary(*MEMORY[0x277D4A400], _startPageSectionOrder);
  v53[12] = v16;
  v17 = MEMORY[0x277CCABB0];
  safari_browserDefaults4 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v19 = [v17 numberWithBool:{objc_msgSend(safari_browserDefaults4, "BOOLForKey:", *MEMORY[0x277D4A490])}];
  v20 = makeSettingDictionary(*MEMORY[0x277D4A418], v19);
  v53[13] = v20;
  v21 = MEMORY[0x277CCABB0];
  safari_browserDefaults5 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v23 = [v21 numberWithBool:{objc_msgSend(safari_browserDefaults5, "BOOLForKey:", *MEMORY[0x277D4A488])}];
  v24 = makeSettingDictionary(*MEMORY[0x277D4A3F8], v23);
  v53[14] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:15];

  return v26;
}

- (BOOL)backgroundImageExists
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults integerForKey:*MEMORY[0x277D4A268]] != 0;

  return v3;
}

- (BOOL)backgroundImageAppearanceIsLight
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults integerForKey:*MEMORY[0x277D4A268]];

  return v3 == 1;
}

- (BOOL)_isShowBackgroundImageEnabled
{
  safari_browserDefaults = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v3 = [safari_browserDefaults objectForKey:*MEMORY[0x277D4A478]];

  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)deleteBackgroundImageDirectory
{
  isStartPageSettingSyncEnabled = [MEMORY[0x277D49A08] isStartPageSettingSyncEnabled];
  if (isStartPageSettingSyncEnabled)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings(isStartPageSettingSyncEnabled, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [WBSettingsSyncEngineAccess deleteBackgroundImageDirectory];
    }

    v5 = dispatch_get_global_queue(17, 0);
    dispatch_async(v5, &__block_literal_global_53);
  }
}

void __60__WBSettingsSyncEngineAccess_deleteBackgroundImageDirectory__block_invoke()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = [v1 safari_startPageBackgroundImageFolderURL];
  v14 = 0;
  v3 = [v0 removeItemAtURL:v2 error:&v14];
  v4 = v14;

  if (v3)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __60__WBSettingsSyncEngineAccess_deleteBackgroundImageDirectory__block_invoke_cold_1();
    }

    v8 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v8 removeObjectForKey:*MEMORY[0x277D4A268]];

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_56);
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudSettings(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = [v10 safari_startPageBackgroundImageFolderURL];
      v12 = [v11 path];
      v13 = [v4 safari_privacyPreservingDescription];
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_error_impl(&dword_272C20000, v9, OS_LOG_TYPE_ERROR, "[StartPageBackground] Failed to remove image directory (%{public}@). Error: %{public}@.", buf, 0x16u);
    }
  }
}

void __60__WBSettingsSyncEngineAccess_deleteBackgroundImageDirectory__block_invoke_54()
{
  v0 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A368] object:0 userInfo:0 deliverImmediately:1];
}

void __58__WBSettingsSyncEngineAccess_didDeleteRemoteRecordWithID___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D4A360];
  v3 = 138543618;
  v4 = v2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "[StartPageBackground] Removing %{public}@ in Default Profile failed with error: %{public}@.", &v3, 0x16u);
}

void __72__WBSettingsSyncEngineAccess__updateStartPageBackgroundImageWithRecord___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "[StartPageBackground] FileManager could not update image with record for Default Profile. %{public}@", buf, 0xCu);
}

- (void)_installMobileAssetIfApplicableWithURL:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "[StartPageBackground] FileManager could not install mobile asset image. %{public}@", buf, 0xCu);
}

@end