@interface NSURL(BackingStores)
+ (id)dnds_assertionSyncMetadataFileURL;
+ (id)dnds_backingStoreRootDirectoryURL;
+ (id)dnds_globalConfigurationBackingStoreFileURL;
+ (id)dnds_idsSyncEngineMetadataFileURL;
+ (id)dnds_legacySettingsFileURL;
+ (id)dnds_localAssertionBackingStoreFileURL;
+ (id)dnds_locationAssertionExplicitRegionFileURL;
+ (id)dnds_locationAssertionUntilExitRegionFileURL;
+ (id)dnds_meDeviceStoreFileURL;
+ (id)dnds_metricsBackingStoreFileURL;
+ (id)dnds_modeConfigurationsBackingStoreFileURL;
+ (id)dnds_modeConfigurationsSecureBackingStoreFileURL;
+ (id)dnds_placeholderModesLocalBackingStoreFileURL;
+ (id)dnds_rootDirectoryURL;
+ (id)dnds_settingsBackingStoreFileURL;
+ (id)dnds_syncEngineLastChanceFileURL;
+ (id)dnds_syncEngineMetadataFileURL;
@end

@implementation NSURL(BackingStores)

+ (id)dnds_rootDirectoryURL
{
  if (dnds_rootDirectoryURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_rootDirectoryURL];
  }

  v2 = dnds_rootDirectoryURL_directoryURL;

  return v2;
}

+ (id)dnds_backingStoreRootDirectoryURL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__NSURL_BackingStores__dnds_backingStoreRootDirectoryURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dnds_backingStoreRootDirectoryURL_onceToken != -1)
  {
    dispatch_once(&dnds_backingStoreRootDirectoryURL_onceToken, block);
  }

  v1 = dnds_backingStoreRootDirectoryURL_directoryURL;

  return v1;
}

+ (id)dnds_localAssertionBackingStoreFileURL
{
  if (dnds_localAssertionBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_localAssertionBackingStoreFileURL];
  }

  v2 = dnds_localAssertionBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_settingsBackingStoreFileURL
{
  if (dnds_settingsBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_settingsBackingStoreFileURL];
  }

  v2 = dnds_settingsBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_metricsBackingStoreFileURL
{
  if (dnds_metricsBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_metricsBackingStoreFileURL];
  }

  v2 = dnds_metricsBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_legacySettingsFileURL
{
  if (dnds_legacySettingsFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_legacySettingsFileURL];
  }

  v2 = dnds_legacySettingsFileURL_fileURL;

  return v2;
}

+ (id)dnds_locationAssertionUntilExitRegionFileURL
{
  if (dnds_locationAssertionUntilExitRegionFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_locationAssertionUntilExitRegionFileURL];
  }

  v2 = dnds_locationAssertionUntilExitRegionFileURL_fileURL;

  return v2;
}

+ (id)dnds_locationAssertionExplicitRegionFileURL
{
  if (dnds_locationAssertionExplicitRegionFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_locationAssertionExplicitRegionFileURL];
  }

  v2 = dnds_locationAssertionExplicitRegionFileURL_fileURL;

  return v2;
}

+ (id)dnds_modeConfigurationsBackingStoreFileURL
{
  if (dnds_modeConfigurationsBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_modeConfigurationsBackingStoreFileURL];
  }

  v2 = dnds_modeConfigurationsBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_modeConfigurationsSecureBackingStoreFileURL
{
  if (dnds_modeConfigurationsSecureBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_modeConfigurationsSecureBackingStoreFileURL];
  }

  v2 = dnds_modeConfigurationsSecureBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_globalConfigurationBackingStoreFileURL
{
  if (dnds_globalConfigurationBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_globalConfigurationBackingStoreFileURL];
  }

  v2 = dnds_globalConfigurationBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_placeholderModesLocalBackingStoreFileURL
{
  if (dnds_placeholderModesLocalBackingStoreFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_placeholderModesLocalBackingStoreFileURL];
  }

  v2 = dnds_placeholderModesLocalBackingStoreFileURL_fileURL;

  return v2;
}

+ (id)dnds_syncEngineMetadataFileURL
{
  if (dnds_syncEngineMetadataFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_syncEngineMetadataFileURL];
  }

  v2 = dnds_syncEngineMetadataFileURL_fileURL;

  return v2;
}

+ (id)dnds_syncEngineLastChanceFileURL
{
  if (dnds_syncEngineLastChanceFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_syncEngineLastChanceFileURL];
  }

  v2 = dnds_syncEngineLastChanceFileURL_fileURL;

  return v2;
}

+ (id)dnds_idsSyncEngineMetadataFileURL
{
  if (dnds_idsSyncEngineMetadataFileURL_onceToken != -1)
  {
    +[NSURL(BackingStores) dnds_idsSyncEngineMetadataFileURL];
  }

  v2 = dnds_idsSyncEngineMetadataFileURL_fileURL;

  return v2;
}

+ (id)dnds_assertionSyncMetadataFileURL
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v6[0] = v1;
  v6[1] = @"Library";
  v6[2] = @"DoNotDisturb";
  v6[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"AssertionSyncMetadata.plist"];

  return v4;
}

+ (id)dnds_meDeviceStoreFileURL
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBC0];
  v1 = BSCurrentUserDirectory();
  v6[0] = v1;
  v6[1] = @"Library";
  v6[2] = @"DoNotDisturb";
  v6[3] = @"DB";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v3 = [v0 fileURLWithPathComponents:v2];

  v4 = [v3 URLByAppendingPathComponent:@"MeDeviceStatus.json"];

  return v4;
}

@end