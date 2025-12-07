@interface MTPreferences
+ (BOOL)_copyUserDefaultToSharedContainer:(id)container synchronize:(BOOL)synchronize;
+ (BOOL)copySettingsToSharedContainer;
+ (id)defaultSettings:(id)settings;
+ (void)moveUserDefaultToSharedContainer:(id)container;
+ (void)registerDefaults;
@end

@implementation MTPreferences

+ (void)registerDefaults
{
  if (+[PFClientUtil isPodcastsApp])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v4 = [self defaultSettings:_applePodcastsFoundationSharedUserDefaults];
    [standardUserDefaults registerDefaults:v4];
  }
}

+ (BOOL)copySettingsToSharedContainer
{
  v20 = *MEMORY[0x1E69E9840];
  if (+[PFClientUtil isPodcastsApp](PFClientUtil, "isPodcastsApp") && ([MEMORY[0x1E695E000] settingsAppWritesDirectlyToSharedUserDefaults] & 1) == 0)
  {
    _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v5 = [self defaultSettings:_applePodcastsFoundationSharedUserDefaults];
    allKeys = [v5 allKeys];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = allKeys;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 |= [self _copyUserDefaultToSharedContainer:*(*(&v15 + 1) + 8 * i) synchronize:{0, v15}];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);

      if ((v10 & 1) == 0)
      {
        synchronize = 0;
        goto LABEL_16;
      }

      _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
      synchronize = [_applePodcastsFoundationSharedUserDefaults2 synchronize];
    }

    else
    {
      synchronize = 0;
      _applePodcastsFoundationSharedUserDefaults2 = v7;
    }

LABEL_16:
    return synchronize;
  }

  return 0;
}

+ (void)moveUserDefaultToSharedContainer:(id)container
{
  v21 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:containerCopy];

  if (v5)
  {
    _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v7 = [_applePodcastsFoundationSharedUserDefaults objectForKey:containerCopy];

    if (v7)
    {
      v8 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412802;
        v16 = containerCopy;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "WARNING: Overwriting shared user default %@ with %@ from %@", &v15, 0x20u);
      }
    }

    _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [_applePodcastsFoundationSharedUserDefaults2 setObject:v5 forKey:containerCopy];

    _applePodcastsFoundationSharedUserDefaults3 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [_applePodcastsFoundationSharedUserDefaults3 synchronize];

    _applePodcastsFoundationSharedUserDefaults4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v12 = [_applePodcastsFoundationSharedUserDefaults4 objectForKey:containerCopy];

    if ([v12 isEqual:v5])
    {
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 removeObjectForKey:containerCopy];

      standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults3 synchronize];
    }
  }
}

+ (id)defaultSettings:(id)settings
{
  settingsCopy = settings;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__MTPreferences_defaultSettings___block_invoke;
  v10[3] = &unk_1E856B590;
  v11 = settingsCopy;
  selfCopy = self;
  v5 = defaultSettings__onceToken;
  v6 = settingsCopy;
  if (v5 != -1)
  {
    dispatch_once(&defaultSettings__onceToken, v10);
  }

  v7 = defaultSettings__defaults;
  v8 = defaultSettings__defaults;

  return v7;
}

void __33__MTPreferences_defaultSettings___block_invoke(uint64_t a1)
{
  v11[15] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"MTContinuousPlaybackAllowed"];
  if (v2)
  {
    v3 = [*(a1 + 32) BOOLForKey:@"MTContinuousPlaybackAllowed"];
  }

  else
  {
    v3 = 1;
  }

  v4 = MEMORY[0x1E695E118];
  v10[0] = @"MTUseCustomColorsKey";
  v10[1] = @"MTWiFiDownloadOnly";
  v11[0] = MEMORY[0x1E695E118];
  v11[1] = MEMORY[0x1E695E118];
  v10[2] = @"MTSyncSubscriptions";
  v10[3] = @"MTShowSiriSuggestions";
  v11[2] = MEMORY[0x1E695E118];
  v11[3] = MEMORY[0x1E695E118];
  v10[4] = @"MTPodcastAutoDownloadStateDefaultKey";
  v10[5] = @"MTCellularDownloadLimitKey";
  v11[4] = MEMORY[0x1E695E118];
  v11[5] = &unk_1F54BE030;
  v10[6] = @"MTPodcastDeletePlayedEpisodesDefaultKey";
  v10[7] = @"MTHidePlayedEpisodes";
  v11[6] = &unk_1F54BE048;
  v11[7] = MEMORY[0x1E695E110];
  v10[8] = @"MTContinuousPlaybackEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v11[8] = v5;
  v11[9] = &unk_1F54BE060;
  v10[9] = @"MTSkipForwardIntervalDefault";
  v10[10] = @"MTSkipBackwardsIntervalDefault";
  v11[10] = &unk_1F54BE078;
  v11[11] = v4;
  v10[11] = @"MTRemoteSkipInsteadOfNextTrackDefault";
  v10[12] = @"MTDownloadEpisodesWhenSaving";
  v11[12] = v4;
  v10[13] = @"MTPodcastEpisodeLimitDefaultKey";
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "defaultEpisodeLimit")}];
  v11[13] = v6;
  v10[14] = @"kMTAdvancedPlaybackSettingsEnhanceDialogueEnabledKey";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[MTAdvancedPlaybackSettings defaultEnhanceDialogueEnabled](MTAdvancedPlaybackSettings, "defaultEnhanceDialogueEnabled")}];
  v11[14] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:15];
  v9 = defaultSettings__defaults;
  defaultSettings__defaults = v8;
}

+ (BOOL)_copyUserDefaultToSharedContainer:(id)container synchronize:(BOOL)synchronize
{
  synchronizeCopy = synchronize;
  containerCopy = container;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:containerCopy];

  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v9 = [_applePodcastsFoundationSharedUserDefaults objectForKey:containerCopy];

  if (v7 == v9 || ([v7 isEqual:v9] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    _applePodcastsFoundationSharedUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [_applePodcastsFoundationSharedUserDefaults2 setObject:v7 forKey:containerCopy];

    if (synchronizeCopy)
    {
      _applePodcastsFoundationSharedUserDefaults3 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
      [_applePodcastsFoundationSharedUserDefaults3 synchronize];
    }

    v10 = 1;
  }

  return v10;
}

@end