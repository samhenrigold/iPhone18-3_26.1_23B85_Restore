@interface VUIPlaybackSettings
+ (id)sharedSettings;
- (VUIPlaybackSettings)init;
- (id)_descriptionForExternalScreenType:(unsigned int)type;
- (int64_t)_downloadQualityForString:(id)string;
- (int64_t)_playbackQualityForString:(id)string forCellular:(BOOL)cellular;
- (int64_t)preferredDownloadQualityForCurrentNetworkStatus;
- (int64_t)preferredPlaybackQualityForCurrentNetworkStatus;
- (void)_externalScreenTypeDidChange:(id)change;
- (void)_handlePreferencesDidChangeNotification:(id)notification;
- (void)_registerObserverForUserPrefsChange;
- (void)_sceneWillConnect:(id)connect;
- (void)_updateNetworkStatus;
- (void)_updatePropertiesFromUserPrefs;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)setCellularDataDownloadEnabled:(BOOL)enabled;
- (void)setCellularDataPlaybackEnabled:(BOOL)enabled;
- (void)setPreferAVAdapterCompatibility:(BOOL)compatibility;
- (void)setPreferredAudioLanguageCode:(id)code;
- (void)setPreferredWifiDownloadQuality:(int64_t)quality;
- (void)updateSupplementaryAvailableAudioLanguageCodes:(id)codes;
@end

@implementation VUIPlaybackSettings

+ (id)sharedSettings
{
  if (sharedSettings_onceToken != -1)
  {
    +[VUIPlaybackSettings sharedSettings];
  }

  v3 = sharedSettings_sSharedSettings;

  return v3;
}

void __37__VUIPlaybackSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(VUIPlaybackSettings);
  v1 = sharedSettings_sSharedSettings;
  sharedSettings_sSharedSettings = v0;
}

- (VUIPlaybackSettings)init
{
  v21.receiver = self;
  v21.super_class = VUIPlaybackSettings;
  v2 = [(VUIPlaybackSettings *)&v21 init];
  if (v2)
  {
    MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications();
    mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
    [mEMORY[0x1E69E4428] registerObserver:v2];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__externalScreenTypeDidChange_ name:*MEMORY[0x1E69B0DB0] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__sceneWillConnect_ name:*MEMORY[0x1E69DE350] object:0];

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __27__VUIPlaybackSettings_init__block_invoke;
    v18 = &unk_1E8730448;
    objc_copyWeak(&v19, &location);
    MRMediaRemoteGetExternalScreenType();

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    vuiIsNonLightningAVAdapterConnected = [mEMORY[0x1E69DC668] vuiIsNonLightningAVAdapterConnected];

    if (vuiIsNonLightningAVAdapterConnected)
    {
      v11 = VUIDefaultLogObject(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "A non-Lightning AV adapter is connected", v14, 2u);
      }

      mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
      [mEMORY[0x1E69E15F0] setHasAVAdapterEvenBeenConnected:1];
    }

    [(VUIPlaybackSettings *)v2 _updateNetworkStatus];
    [(VUIPlaybackSettings *)v2 _updatePropertiesFromUserPrefs];
    [(VUIPlaybackSettings *)v2 _registerObserverForUserPrefsChange];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_updateNetworkStatus
{
  v15 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  networkType = [mEMORY[0x1E69E4428] networkType];

  v6 = VUIDefaultLogObject(v5);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v7 = @"Unknown";
  if (networkType > 99)
  {
    if (networkType > 1000)
    {
      switch(networkType)
      {
        case 1001:
          v7 = @"Bridged WiFi";
          break;
        case 2000:
          v7 = @"Wired Ethernet";
          break;
        case 3000:
          v7 = @"Other";
          break;
      }

      goto LABEL_5;
    }

    if (networkType != 100)
    {
      if (networkType == 500)
      {
        v7 = @"Bluetooth";
      }

      else if (networkType == 1000)
      {
        v7 = @"WiFi";
      }

      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((networkType - 1) < 8)
  {
LABEL_4:
    v7 = @"Cellular";
  }

LABEL_5:
  mEMORY[0x1E69E4428]2 = [MEMORY[0x1E69E4428] sharedMonitor];
  isCurrentNetworkLinkExpensive = [mEMORY[0x1E69E4428]2 isCurrentNetworkLinkExpensive];
  v10 = @"NO";
  *v12 = 134218498;
  *&v12[4] = networkType;
  *&v12[12] = 2112;
  if (isCurrentNetworkLinkExpensive)
  {
    v10 = @"YES";
  }

  *&v12[14] = v7;
  v13 = 2112;
  v14 = v10;
  _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Network type did change to %ld (%@) is expensive: %@", v12, 0x20u);

LABEL_8:
  if (ICEnvironmentNetworkTypeIsWiFi() & 1) != 0 || (ICEnvironmentNetworkTypeIsWired() & 1) != 0 || (ICEnvironmentNetworkTypeIsBluetooth())
  {
    v11 = 1;
  }

  else if (ICEnvironmentNetworkTypeIsCellular())
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  [(VUIPlaybackSettings *)self setNetworkStatus:v11, *v12, *&v12[8]];
}

- (void)_updatePropertiesFromUserPrefs
{
  v27[2] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  useCellularDataPlayback = [mEMORY[0x1E69E15F0] useCellularDataPlayback];

  mEMORY[0x1E69E15F0]2 = [MEMORY[0x1E69E15F0] sharedPreferences];
  wifiQualityPlayback = [mEMORY[0x1E69E15F0]2 wifiQualityPlayback];

  mEMORY[0x1E69E15F0]3 = [MEMORY[0x1E69E15F0] sharedPreferences];
  cellularQualityPlayback = [mEMORY[0x1E69E15F0]3 cellularQualityPlayback];

  mEMORY[0x1E69E15F0]4 = [MEMORY[0x1E69E15F0] sharedPreferences];
  audioLanguageCode = [mEMORY[0x1E69E15F0]4 audioLanguageCode];

  mEMORY[0x1E69E15F0]5 = [MEMORY[0x1E69E15F0] sharedPreferences];
  useCellularDataDownload = [mEMORY[0x1E69E15F0]5 useCellularDataDownload];

  mEMORY[0x1E69E15F0]6 = [MEMORY[0x1E69E15F0] sharedPreferences];
  downloadsCompatibleWithAVAdapter = [mEMORY[0x1E69E15F0]6 downloadsCompatibleWithAVAdapter];

  mEMORY[0x1E69E15F0]7 = [MEMORY[0x1E69E15F0] sharedPreferences];
  wifiQualityDownload = [mEMORY[0x1E69E15F0]7 wifiQualityDownload];

  mEMORY[0x1E69E15F0]8 = [MEMORY[0x1E69E15F0] sharedPreferences];
  cellularQualityDownload = [mEMORY[0x1E69E15F0]8 cellularQualityDownload];

  mEMORY[0x1E69E15F0]9 = [MEMORY[0x1E69E15F0] sharedPreferences];
  selectedAudioLanguagesDownload = [mEMORY[0x1E69E15F0]9 selectedAudioLanguagesDownload];

  if (![selectedAudioLanguagesDownload count])
  {
    v27[0] = @"ORIGINAL_AUDIO_LANGUAGE";
    v27[1] = @"DEVICE_AUDIO_LANGUAGE";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    goto LABEL_5;
  }

  if ([selectedAudioLanguagesDownload containsObject:@"DEFAULT_LANGUAGE"])
  {
    v18 = [selectedAudioLanguagesDownload mutableCopy];
    [v18 removeObject:@"DEFAULT_LANGUAGE"];
    [v18 insertObject:@"ORIGINAL_AUDIO_LANGUAGE" atIndex:0];
    [v18 insertObject:@"DEVICE_AUDIO_LANGUAGE" atIndex:1];
LABEL_5:

    selectedAudioLanguagesDownload = v18;
  }

  mEMORY[0x1E69E15F0]10 = [MEMORY[0x1E69E15F0] sharedPreferences];
  subtitleDefaultLanguageEnabledDownload = [mEMORY[0x1E69E15F0]10 subtitleDefaultLanguageEnabledDownload];

  mEMORY[0x1E69E15F0]11 = [MEMORY[0x1E69E15F0] sharedPreferences];
  subtitleAudioLanguagesDownload = [mEMORY[0x1E69E15F0]11 subtitleAudioLanguagesDownload];

  [(VUIPlaybackSettings *)self setPreferredWifiPlaybackQuality:[(VUIPlaybackSettings *)self _playbackQualityForString:wifiQualityPlayback forCellular:0]];
  [(VUIPlaybackSettings *)self setPreferredCellularPlaybackQuality:[(VUIPlaybackSettings *)self _playbackQualityForString:cellularQualityPlayback forCellular:1]];
  [(VUIPlaybackSettings *)self setPreferredCellularDownloadQuality:[(VUIPlaybackSettings *)self _downloadQualityForString:cellularQualityDownload]];
  [(VUIPlaybackSettings *)self setPreferredAudioDownloadLanguages:selectedAudioLanguagesDownload];
  [(VUIPlaybackSettings *)self setUseDefaultSubtitleDownloadLanguages:subtitleDefaultLanguageEnabledDownload];
  [(VUIPlaybackSettings *)self setPreferredSubtitleDownloadLanguages:subtitleAudioLanguagesDownload];
  self->_cellularDataPlaybackEnabled = useCellularDataPlayback;
  self->_cellularDataDownloadEnabled = useCellularDataDownload;
  preferredAudioLanguageCode = self->_preferredAudioLanguageCode;
  self->_preferredAudioLanguageCode = audioLanguageCode;

  self->_preferAVAdapterCompatibility = downloadsCompatibleWithAVAdapter;
  self->_preferredWifiDownloadQuality = [(VUIPlaybackSettings *)self _downloadQualityForString:wifiQualityDownload];
}

- (void)_registerObserverForUserPrefsChange
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handlePreferencesDidChangeNotification_ name:*MEMORY[0x1E69E1728] object:0];
}

void __27__VUIPlaybackSettings_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained _descriptionForExternalScreenType:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Initial external screen type is %@", &v7, 0xCu);
  }

  if (a2 == 2)
  {
    v6 = [MEMORY[0x1E69E15F0] sharedPreferences];
    [v6 setHasAVAdapterEvenBeenConnected:1];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlaybackSettings;
  [(VUIPlaybackSettings *)&v4 dealloc];
}

- (int64_t)preferredPlaybackQualityForCurrentNetworkStatus
{
  networkStatus = [(VUIPlaybackSettings *)self networkStatus];
  if (networkStatus == 2)
  {

    return [(VUIPlaybackSettings *)self preferredCellularPlaybackQuality];
  }

  else if (networkStatus == 1)
  {

    return [(VUIPlaybackSettings *)self preferredWifiPlaybackQuality];
  }

  else
  {
    return 0;
  }
}

- (int64_t)preferredDownloadQualityForCurrentNetworkStatus
{
  networkStatus = [(VUIPlaybackSettings *)self networkStatus];
  if (networkStatus == 2)
  {

    return [(VUIPlaybackSettings *)self preferredCellularDownloadQuality];
  }

  else if (networkStatus == 1)
  {

    return [(VUIPlaybackSettings *)self preferredWifiDownloadQuality];
  }

  else
  {
    return 1;
  }
}

- (void)setCellularDataPlaybackEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_cellularDataPlaybackEnabled = enabled;
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  [mEMORY[0x1E69E15F0] setUseCellularDataPlayback:enabledCopy];
}

- (void)setCellularDataDownloadEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_cellularDataDownloadEnabled = enabled;
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  [mEMORY[0x1E69E15F0] setUseCellularDataDownload:enabledCopy];
}

- (void)setPreferredAudioLanguageCode:(id)code
{
  objc_storeStrong(&self->_preferredAudioLanguageCode, code);
  codeCopy = code;
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  [mEMORY[0x1E69E15F0] setAudioLanguageCode:codeCopy];
}

- (void)setPreferAVAdapterCompatibility:(BOOL)compatibility
{
  compatibilityCopy = compatibility;
  self->_preferAVAdapterCompatibility = compatibility;
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  [mEMORY[0x1E69E15F0] setHasAVAdapterEvenBeenConnected:1];

  mEMORY[0x1E69E15F0]2 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [mEMORY[0x1E69E15F0]2 setDownloadsCompatibleWithAVAdapter:compatibilityCopy];
}

- (void)setPreferredWifiDownloadQuality:(int64_t)quality
{
  self->_preferredWifiDownloadQuality = quality;
  if (quality)
  {
    if (quality != 1)
    {
      return;
    }

    v3 = MEMORY[0x1E69E1648];
  }

  else
  {
    v3 = MEMORY[0x1E69E1640];
  }

  v4 = *v3;
  if (v4)
  {
    v6 = v4;
    mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
    [mEMORY[0x1E69E15F0] setWifiQualityDownload:v6];
  }
}

- (void)updateSupplementaryAvailableAudioLanguageCodes:(id)codes
{
  v25 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  v4 = VUIDefaultLogObject(codesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = codesCopy;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Updating supplementary available audio language codes with %@", buf, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  supplementaryAvailableAudioLanguages = [mEMORY[0x1E69E15F0] supplementaryAvailableAudioLanguages];
  v8 = [v5 initWithArray:supplementaryAvailableAudioLanguages];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = codesCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (([v8 containsObject:{v14, v18}] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = VUIDefaultLogObject(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Updated supplementary available audio language codes: %@", buf, 0xCu);
  }

  mEMORY[0x1E69E15F0]2 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [mEMORY[0x1E69E15F0]2 setSupplementaryAvailableAudioLanguages:v8];
}

- (void)_externalScreenTypeDidChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  userInfo = [change userInfo];
  v5 = [userInfo vui_numberForKey:*MEMORY[0x1E69B0DB8]];
  unsignedIntValue = [v5 unsignedIntValue];

  v8 = VUIDefaultLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(VUIPlaybackSettings *)self _descriptionForExternalScreenType:unsignedIntValue];
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "External screen type did change to %@", &v11, 0xCu);
  }

  if (unsignedIntValue == 2)
  {
    mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
    [mEMORY[0x1E69E15F0] setHasAVAdapterEvenBeenConnected:1];
  }
}

- (void)_sceneWillConnect:(id)connect
{
  object = [connect object];
  vui_isNonLightningSecondScreenScene = [object vui_isNonLightningSecondScreenScene];
  if (vui_isNonLightningSecondScreenScene)
  {
    v5 = VUIDefaultLogObject(vui_isNonLightningSecondScreenScene);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "A non-Lightning AV adapter was connected", v7, 2u);
    }

    mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
    [mEMORY[0x1E69E15F0] setHasAVAdapterEvenBeenConnected:1];
  }
}

- (void)_handlePreferencesDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __63__VUIPlaybackSettings__handlePreferencesDidChangeNotification___block_invoke;
  v5 = &unk_1E872D768;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__VUIPlaybackSettings__handlePreferencesDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePropertiesFromUserPrefs];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VUIPlaybackSettingsUserPreferencesDidChange" object:*(a1 + 32)];
}

- (int64_t)_playbackQualityForString:(id)string forCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E69E1650]])
  {
    v6 = 0;
  }

  else
  {
    v6 = [stringCopy isEqualToString:*MEMORY[0x1E69E1658]] | cellularCopy;
  }

  return v6;
}

- (int64_t)_downloadQualityForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:*MEMORY[0x1E69E1640]])
  {
    v4 = 0;
  }

  else
  {
    [stringCopy isEqualToString:*MEMORY[0x1E69E1648]];
    v4 = 1;
  }

  return v4;
}

- (id)_descriptionForExternalScreenType:(unsigned int)type
{
  if (type > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8730468[type];
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VUIPlaybackSettings_environmentMonitorDidChangeNetworkType___block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__VUIPlaybackSettings_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateNetworkStatus];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VUIPlaybackSettingsNetworkStatusDidChange" object:*(a1 + 32)];
}

@end