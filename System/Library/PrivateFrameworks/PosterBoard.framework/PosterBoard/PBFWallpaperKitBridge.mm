@interface PBFWallpaperKitBridge
+ (id)defaultBridge;
- (BOOL)dataMigratorDeterminedLegacyWallpaperMigrationRequired;
- (BOOL)shouldDefaultWallpaperDisableModifyingLegibilityBlur;
- (BOOL)shouldInstallHeroPosterAsDefaultLockScreenWallpaper;
- (NSString)defaultWallpaperIdentifier;
- (void)clearLegacyWallpaperMigrationKeys;
@end

@implementation PBFWallpaperKitBridge

+ (id)defaultBridge
{
  if (defaultBridge_onceToken != -1)
  {
    +[PBFWallpaperKitBridge defaultBridge];
  }

  v3 = defaultBridge_defaultBridge;

  return v3;
}

void __38__PBFWallpaperKitBridge_defaultBridge__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultBridge_defaultBridge;
  defaultBridge_defaultBridge = v0;
}

- (NSString)defaultWallpaperIdentifier
{
  defaultWallpaperManager = [getWKDefaultWallpaperManagerClass() defaultWallpaperManager];
  v3 = defaultWallpaperManager;
  if (defaultWallpaperManager)
  {
    defaultWallpaperBundle = [defaultWallpaperManager defaultWallpaperBundle];
    identifier = [defaultWallpaperBundle identifier];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldInstallHeroPosterAsDefaultLockScreenWallpaper
{
  defaultWallpaperIdentifier = [(PBFWallpaperKitBridge *)self defaultWallpaperIdentifier];
  v3 = [defaultWallpaperIdentifier length];

  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277D37C70]);
    v6 = [v5 lockScreenWallpaperConfigurationIncludingValuesForTypes:0];
    wallpaperType = [v6 wallpaperType];
    v8 = PBFLogMigration(wallpaperType);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    v10 = wallpaperType == 4;
    if (v10)
    {
      if (v9)
      {
        v15 = 0;
        v11 = "(shouldInstallCollectionsPosterAsDefaultLockScreenWallpaper) Color is set, we migrated, and there's no existing wallpaper - returning YES.";
        v12 = &v15;
LABEL_11:
        _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
      }
    }

    else if (v9)
    {
      v14 = 0;
      v11 = "(shouldInstallCollectionsPosterAsDefaultLockScreenWallpaper) A preference has been set, going with legacy wallpaper -- returning NO";
      v12 = &v14;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v5 = PBFLogMigration(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(PBFWallpaperKitBridge *)v5 shouldInstallHeroPosterAsDefaultLockScreenWallpaper];
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)dataMigratorDeterminedLegacyWallpaperMigrationRequired
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = PBFLogMigration(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "(dataMigratorDeterminedLegacyWallpaperMigrationRequired) Detecting if we need to do a data update", &v12, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
  v4 = [v3 objectForKey:@"SBLegacyWallpaperMigrationNeeded"];
  v5 = PBFLogMigration(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(dataMigratorDeterminedLegacyWallpaperMigrationRequired) springBoardIndicatedDataStoreMigrationNeeded: (%{public}@)", &v12, 0xCu);
  }

  if (v4 && (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v10 = PBFLogMigration(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "(dataMigratorDeterminedLegacyWallpaperMigrationRequired) springBoardIndicatedDataStoreMigrationNeeded was invalid (%{public}@); nothing to do.", &v12, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)clearLegacyWallpaperMigrationKeys
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
  [v2 removeObjectForKey:@"SBLegacyWallpaperMigrationNeeded"];
}

- (BOOL)shouldDefaultWallpaperDisableModifyingLegibilityBlur
{
  defaultWallpaperManager = [getWKDefaultWallpaperManagerClass() defaultWallpaperManager];
  v3 = defaultWallpaperManager;
  if (defaultWallpaperManager)
  {
    defaultWallpaperBundle = [defaultWallpaperManager defaultWallpaperBundle];
    disableModifyingLegibilityBlur = [defaultWallpaperBundle disableModifyingLegibilityBlur];
  }

  else
  {
    disableModifyingLegibilityBlur = 0;
  }

  return disableModifyingLegibilityBlur;
}

@end