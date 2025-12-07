@interface TLToneManager
+ (BOOL)_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:(id)path;
+ (BOOL)_migrateLegacyToneSettings;
+ (TLToneManager)sharedToneManager;
+ (id)_abbreviatedDescriptionOfMediaPlaybackArchive:(id)archive;
+ (id)_abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:(id)logging;
+ (id)_currentOverridePolicyPreferenceKeyForAlertType:(int64_t)type;
+ (id)_defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
+ (id)_defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
+ (id)_systemWideTonePreferenceKeyForAlertType:(int64_t)type;
+ (void)_migrateLegacyToneSettings;
- (BOOL)_ensureDirectoryExistsAtPath:(id)path;
- (BOOL)_hasUnderlyingPlaybackArchiveForToneIdentifier:(id)identifier;
- (BOOL)_importSyncedToneWithMetadata:(id)metadata fileName:(id)name;
- (BOOL)_loadITunesRingtoneInfoPlistAtPath:(id)path;
- (BOOL)_removeAllTones;
- (BOOL)_removeToneFromManifestAtPath:(id)path fileName:(id)name;
- (BOOL)_removeToneWithIdentifier:(id)identifier orSyncIdentifier:(id)syncIdentifier;
- (BOOL)_removeToneWithSyncIdentifier:(id)identifier;
- (BOOL)_removeTonesFromManifestAtPath:(id)path fileNames:(id)names shouldSkipReload:(BOOL)reload alreadyLockedManifest:(BOOL)manifest removedEntries:(id *)entries;
- (BOOL)_setToneIdentifierUsingService:(id)service keyedByTopic:(id)topic forPreferenceKey:(id)key;
- (BOOL)_toneWithIdentifierIsDefaultRingtone:(id)ringtone;
- (BOOL)_toneWithIdentifierIsMediaPlaybackArchive:(id)archive;
- (BOOL)_toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:(id)ringtone;
- (BOOL)_toneWithIdentifierIsSystemTone:(id)tone;
- (BOOL)_toneWithIdentifierIsValid:(id)valid;
- (BOOL)_wasAffectedByAccidentalToneDeletion;
- (BOOL)_watchPrefersSalientNotifications;
- (BOOL)hasSpecificDefaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (BOOL)toneWithIdentifierIsValid:(id)valid;
- (NSString)_deviceITunesRingtoneDirectory;
- (NSString)_deviceITunesRingtoneInformationPlist;
- (NSString)_iTunesRingtoneDirectory;
- (NSString)_iTunesRingtoneInformationPlist;
- (NSString)_systemRingtoneDirectory;
- (TLToneManager)initWithITunesRingtonePlistAtPath:(id)path;
- (double)_unduckTimeForToneIdentifier:(id)identifier;
- (id)_addToneEntries:(id)entries toManifestAtPath:(id)path mediaDirectory:(id)directory shouldSkipReload:(BOOL)reload;
- (id)_addToneToManifestAtPath:(id)path metadata:(id)metadata fileName:(id)name mediaDirectory:(id)directory;
- (id)_alarmWakeUpRingtoneDirectory;
- (id)_aliasForToneIdentifier:(id)identifier;
- (id)_allSyncedTones;
- (id)_currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(BOOL)value;
- (id)_currentToneWatchAlertPolicyPreferenceKeyForAlertType:(int64_t)type topic:(id)topic;
- (id)_currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchToneIdentifier:(BOOL *)identifier;
- (id)_currentWatchToneIdentifierPreferenceKeyForAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultPreferablyNonSilentToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)_defaultRingtoneName;
- (id)_defaultRingtonePath;
- (id)_fileNameFromToneIdentifier:(id)identifier withPrefix:(id)prefix;
- (id)_filePathForToneIdentifier:(id)identifier isValid:(BOOL *)valid;
- (id)_importPurchasedToneWithMetadata:(id)metadata fileName:(id)name;
- (id)_installedTones;
- (id)_localizedNameOfToneWithIdentifier:(id)identifier;
- (id)_nameForToneIdentifier:(id)identifier isValid:(BOOL *)valid;
- (id)_newServiceConnection;
- (id)_previewSoundForToneIdentifier:(id)identifier;
- (id)_removeOrphanedPlistEntriesInManifestAtPath:(id)path mediaDirectory:(id)directory;
- (id)_soundForToneIdentifier:(id)identifier;
- (id)_systemEmbeddedClassicSoundDirectory;
- (id)_systemEmbeddedEncoreInfinitumSoundDirectory;
- (id)_systemEmbeddedEncoreRemixSoundDirectory;
- (id)_systemEmbeddedModernSoundDirectory;
- (id)_systemEmbeddedSoundDirectory;
- (id)_systemWatchSoundDirectory;
- (id)_toneForSyncIdentifier:(id)identifier;
- (id)_toneIdentifierForFileAtPath:(id)path isValid:(BOOL *)valid;
- (id)_toneIdentifierForMediaLibraryItemIdentifier:(unint64_t)identifier;
- (id)_toneIdentifierWithUnderlyingPlaybackArchive:(id)archive;
- (id)_tonePreferencesFromService;
- (id)_toneWithIdentifier:(id)identifier;
- (id)_tonesFromManifestPath:(id)path mediaDirectoryPath:(id)directoryPath;
- (id)_underlyingPlaybackArchiveForToneIdentifier:(id)identifier;
- (id)_unduckTimeNumberForToneIdentifier:(id)identifier fromResourceNamed:(id)named;
- (id)currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)currentToneNameForAlertType:(int64_t)type;
- (id)currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic;
- (id)subtitleForToneIdentifier:(id)identifier;
- (int)_lockManifestAtPath:(id)path;
- (int64_t)_currentOverridePolicyForAlertType:(int64_t)type didFindAlertOverridePolicy:(BOOL *)policy;
- (int64_t)_currentToneWatchAlertPolicyForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchAlertPolicy:(BOOL *)policy;
- (int64_t)_evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone:(BOOL)done returningFilePathsForFoundOrphans:(id *)orphans wasAffectedByAccidentalToneDeletion:(BOOL *)deletion;
- (unint64_t)_installedTonesSize;
- (unsigned)currentToneSoundIDForAlertType:(int64_t)type topic:(id)topic;
- (void)_didSetTonePreferenceSuccessfullyWithKey:(id)key inDomain:(id)domain usingPreferencesOfKind:(unint64_t)kind;
- (void)_handleProtectionContentUnlockedEvent;
- (void)_handleTonePreferencesChangedNotificationForPreferencesKinds:(unint64_t)kinds;
- (void)_handleWatchPrefersSalientNotificationDidChange;
- (void)_importTone:(id)tone metadata:(id)metadata completionBlock:(id)block;
- (void)_loadSystemTones;
- (void)_registerDidRequestResetSyncPostAccidentalToneDeletion;
- (void)_reloadTones;
- (void)_reloadTonesAfterExternalChange;
- (void)_removeAllSyncedData;
- (void)_setCurrentOverridePolicy:(int64_t)policy forAlertType:(int64_t)type;
- (void)_setCurrentToneWatchAlertPolicy:(int64_t)policy forAlertType:(int64_t)type topic:(id)topic;
- (void)_setWatchPrefersSalientNotifications:(BOOL)notifications;
- (void)dealloc;
- (void)importTone:(id)tone metadata:(id)metadata completionBlock:(id)block;
- (void)removeImportedToneWithIdentifier:(id)identifier;
- (void)setCurrentToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic;
- (void)setCurrentWatchToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic;
@end

@implementation TLToneManager

+ (TLToneManager)sharedToneManager
{
  if (sharedToneManager__TLToneManagerSharedInstanceOnceToken != -1)
  {
    +[TLToneManager sharedToneManager];
  }

  v3 = sharedToneManager__TLToneManagerSharedInstance;

  return v3;
}

uint64_t __34__TLToneManager_sharedToneManager__block_invoke()
{
  sharedToneManager__TLToneManagerSharedInstance = objc_alloc_init(TLToneManager);

  return MEMORY[0x1EEE66BB8]();
}

- (TLToneManager)initWithITunesRingtonePlistAtPath:(id)path
{
  v42 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v37.receiver = self;
  v37.super_class = TLToneManager;
  v5 = [(TLToneManager *)&v37 init];
  v7 = v5;
  if (v5)
  {
    _TLAlertTypeValidateConsistencyOfEnumeration(v5, v6);
    v8 = [[TLAccessQueue alloc] initWithLabel:@"_TLToneManagerAccessQueue" appendUUIDToLabel:1];
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v8;

    v7->_shouldUseServiceToAccessTonePreferences = 0;
    v10 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
    v11 = v10;
    if (v10)
    {
      CFPreferencesSynchronize(v10, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFRelease(v11);
    }

    if (+[TLPreferencesUtilities canAccessNanoRegistry])
    {
      NPSDomainAccessorClass = getNPSDomainAccessorClass();
      if (NPSDomainAccessorClass)
      {
        v13 = [NPSDomainAccessorClass alloc];
        v14 = +[TLPreferencesUtilities perWatchPreferencesDomain];
        v15 = [v13 initWithDomain:v14];

        v18 = TLLogToneManagement(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v39 = v7;
          v40 = 2114;
          v41 = v15;
          _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -init…: Instantiated domain accessor %{public}@.", buf, 0x16u);
        }

        synchronize = [v15 synchronize];
        v21 = TLLogToneManagement(synchronize, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v39 = v7;
          v40 = 2114;
          v41 = v15;
          _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -init…: Synchronized domain accessor %{public}@.", buf, 0x16u);
        }
      }
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke;
    v34[3] = &unk_1E8578900;
    v22 = v7;
    v35 = v22;
    v23 = pathCopy;
    v36 = v23;
    [(TLToneManager *)v22 _performBlockInAccessQueue:v34];
    if (!v23)
    {
      objc_initWeak(buf, v22);
      v24 = +[TLContentProtectionStateObserver sharedContentProtectionStateObserver];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke_2;
      v32[3] = &unk_1E8578928;
      objc_copyWeak(&v33, buf);
      v25 = [v24 performBlockAfterProtectedContentUnlocked:v32];
      contentProtectionStateObserverToken = v22->_contentProtectionStateObserverToken;
      v22->_contentProtectionStateObserverToken = v25;

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, _TLToneManagerHandleTonePreferencesDidChangeNotification, @"_TLTonePreferencesDidChangeNotification", 0, 1028);
    v28 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v28, v22, _TLToneManagerHandleWatchAlertPrefersSalientNotificationPreferenceDidChangeLocallyNotification, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0, 1028);
    v29 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v29, v22, _TLToneManagerHandleWatchAlertPrefersSalientNotificationPreferenceDidChangeRemotelyNotification, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeRemotelyNotification", 0, 1028);
    v30 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v30, v22, _TLToneManagerHandleDeviceRingtonesChangedNotification, @"com.apple.itunesstored.RingtoneAdded", 0, 1028);
  }

  return v7;
}

uint64_t __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadITunesRingtoneInfoPlistAtPath:*(a1 + 40)];
  [*(a1 + 32) _loadSystemTones];
  v2 = *(a1 + 32);

  return [v2 _loadToneIdentifierAliasMap];
}

void __51__TLToneManager_initWithITunesRingtonePlistAtPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _handleProtectionContentUnlockedEvent];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  v3 = self->_accessQueue;
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.RingtoneAdded", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"_TLTonePreferencesDidChangeNotification", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeRemotelyNotification", 0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __24__TLToneManager_dealloc__block_invoke;
  v11[3] = &unk_1E8578950;
  v11[4] = self;
  v11[5] = &v12;
  [(TLAccessQueue *)v3 performSynchronousBlock:v11];

  if (v13[5])
  {
    v9 = +[TLContentProtectionStateObserver sharedContentProtectionStateObserver];
    [v9 cancelBlockScheduledForProtectedContentUnlockedEventWithToken:v13[5]];
  }

  _Block_object_dispose(&v12, 8);

  v10.receiver = self;
  v10.super_class = TLToneManager;
  [(TLToneManager *)&v10 dealloc];
}

void __24__TLToneManager_dealloc__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 80);
  *(v12 + 80) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = 0;
}

- (NSString)_deviceITunesRingtoneDirectory
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/Purchases"];

  return v3;
}

- (NSString)_deviceITunesRingtoneInformationPlist
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/Purchases/Ringtones.plist"];

  return v3;
}

- (NSString)_iTunesRingtoneDirectory
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/iTunes_Control/Ringtones"];

  return v3;
}

- (NSString)_iTunesRingtoneInformationPlist
{
  _rootDirectory = [(TLToneManager *)self _rootDirectory];
  v3 = [_rootDirectory stringByAppendingPathComponent:@"Media/iTunes_Control/iTunes/Ringtones.plist"];

  return v3;
}

- (NSString)_systemRingtoneDirectory
{
  v2 = CPSystemRootDirectory();

  return [v2 stringByAppendingPathComponent:@"/Library/Ringtones"];
}

- (BOOL)_loadITunesRingtoneInfoPlistAtPath:(id)path
{
  v39 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (pathCopy)
  {
    _iTunesRingtoneDirectory = [(TLToneManager *)self _iTunesRingtoneDirectory];
    v6 = [(TLToneManager *)self _tonesFromManifestPath:pathCopy mediaDirectoryPath:_iTunesRingtoneDirectory];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
    _iTunesRingtoneDirectory2 = [(TLToneManager *)self _iTunesRingtoneDirectory];
    _iTunesRingtoneDirectory = [(TLToneManager *)self _tonesFromManifestPath:_iTunesRingtoneInformationPlist mediaDirectoryPath:_iTunesRingtoneDirectory2];

    if (_iTunesRingtoneDirectory)
    {
      [v6 addObjectsFromArray:_iTunesRingtoneDirectory];
    }

    _deviceITunesRingtoneInformationPlist = [(TLToneManager *)self _deviceITunesRingtoneInformationPlist];
    _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
    v11 = [(TLToneManager *)self _tonesFromManifestPath:_deviceITunesRingtoneInformationPlist mediaDirectoryPath:_deviceITunesRingtoneDirectory];

    if (v11)
    {
      [v6 addObjectsFromArray:v11];
    }
  }

  v14 = TLLogToneManagement(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = [v6 count];
    _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: -_load…: Loaded %lu tones.", buf, 0x16u);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v18)
  {
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        identifier = [v21 identifier];
        [v15 setObject:v21 forKey:identifier];
        syncIdentifier = [v21 syncIdentifier];
        if (syncIdentifier)
        {
          [v16 setObject:identifier forKey:syncIdentifier];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v18);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v37 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__TLToneManager__loadITunesRingtoneInfoPlistAtPath___block_invoke;
  v28[3] = &unk_1E8578978;
  v28[4] = self;
  v24 = v15;
  v29 = v24;
  v31 = buf;
  v25 = v16;
  v30 = v25;
  [(TLToneManager *)self _performBlockInAccessQueue:v28];
  v26 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v26 & 1;
}

void __52__TLToneManager__loadITunesRingtoneInfoPlistAtPath___block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) isEqualToDictionary:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 40) copy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (([*(*(a1 + 32) + 24) isEqualToDictionary:*(a1 + 48)] & 1) == 0)
  {
    v5 = [*(a1 + 48) copy];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (id)_tonesFromManifestPath:(id)path mediaDirectoryPath:(id)directoryPath
{
  v70 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  directoryPathCopy = directoryPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager fileExistsAtPath:pathCopy];

  v11 = TLLogToneManagement(v9, v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      *buf = 138543874;
      selfCopy7 = self;
      v61 = 2114;
      v62 = pathCopy;
      v63 = 2114;
      v64 = directoryPathCopy;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): About to load tones.", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
    v49 = v58 = 0;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:? error:?];
    v14 = 0;
    v16 = v14;
    if (!v13 || v14)
    {
      v17 = TLLogToneManagement(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        selfCopy7 = self;
        v61 = 2114;
        v62 = pathCopy;
        v63 = 2114;
        v64 = directoryPathCopy;
        v65 = 2114;
        v66 = v16;
        _os_log_error_impl(&dword_1D9356000, v17, OS_LOG_TYPE_ERROR, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Couldn't load manifest: %{public}@", buf, 0x2Au);
      }
    }

    v18 = [v13 objectForKey:@"Ringtones"];
    v46 = [v18 count];
    if (!v46)
    {
      v20 = TLLogToneManagement(0, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy7 = self;
        v61 = 2114;
        v62 = pathCopy;
        v63 = 2114;
        v64 = directoryPathCopy;
        v65 = 2114;
        v66 = v13;
        _os_log_impl(&dword_1D9356000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Couldn't find any tone entries in the manifest: %{public}@", buf, 0x2Au);
      }
    }

    v47 = v13;
    v48 = v16;
    v50 = pathCopy;
    [v18 allKeys];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v57 = 0u;
    v21 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v55;
      v24 = 0x1E8578000uLL;
      v51 = *v55;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v55 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v54 + 1) + 8 * i);
          v27 = [directoryPathCopy stringByAppendingPathComponent:v26];
          v28 = objc_alloc(*(v24 + 528));
          v29 = [v18 objectForKey:v26];
          v30 = [v28 initWithPropertyListRepresentation:v29 filePath:v27];

          v33 = TLLogToneManagement(v31, v32);
          v34 = v33;
          if (v30)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              [v30 identifier];
              v35 = v11;
              v37 = v36 = v18;
              [v30 filePath];
              v38 = v22;
              v40 = v39 = directoryPathCopy;
              *buf = 138543874;
              selfCopy7 = self;
              v61 = 2114;
              v62 = v37;
              v63 = 2114;
              v64 = v40;
              _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath: Appending tone with identifier %{public}@ and file path: %{public}@.", buf, 0x20u);

              directoryPathCopy = v39;
              v22 = v38;

              v18 = v36;
              v11 = v35;
              v23 = v51;
              v24 = 0x1E8578000;
            }

            if (!v11)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v11 addObject:v30];
          }

          else
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy7 = self;
              v61 = 2114;
              v62 = v27;
              _os_log_error_impl(&dword_1D9356000, v34, OS_LOG_TYPE_ERROR, "%{public}@: _tonesFromManifestPath: Skipping inclusion of tone for file path: %{public}@.", buf, 0x16u);
            }
          }
        }

        v22 = [obj countByEnumeratingWithState:&v54 objects:v69 count:16];
      }

      while (v22);
    }

    v41 = [v11 copy];
    v43 = TLLogToneManagement(v41, v42);
    pathCopy = v50;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v41 count];
      *buf = 138544386;
      selfCopy7 = self;
      v61 = 2114;
      v62 = v50;
      v63 = 2114;
      v64 = directoryPathCopy;
      v65 = 2048;
      v66 = v44;
      v67 = 2048;
      v68 = v46;
      _os_log_impl(&dword_1D9356000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Loaded %lu tones from %lu entries in the manifest.", buf, 0x34u);
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138543874;
      selfCopy7 = self;
      v61 = 2114;
      v62 = pathCopy;
      v63 = 2114;
      v64 = directoryPathCopy;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: _tonesFromManifestPath:(%{public}@) mediaDirectoryPath:(%{public}@): Manifest file does not exist. Not loading any tones.", buf, 0x20u);
    }

    v41 = 0;
  }

  return v41;
}

- (void)_reloadTonesAfterExternalChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLToneManager *)self _performBlockInAccessQueue:v2];
}

void __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _loadITunesRingtoneInfoPlistAtPath:0])
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke_2;
    block[3] = &unk_1E85789A0;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }
}

void __48__TLToneManager__reloadTonesAfterExternalChange__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_TLToneManagerContentsChangedNotification" object:*(a1 + 32)];
}

- (void)_reloadTones
{
  [(TLToneManager *)self _reloadTonesAfterExternalChange];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.RingtoneAdded", 0, 0, 1u);
}

- (id)_toneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__TLToneManager__toneWithIdentifier___block_invoke;
  v8[3] = &unk_1E85789C8;
  v10 = &v11;
  v8[4] = self;
  v5 = identifierCopy;
  v9 = v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __37__TLToneManager__toneWithIdentifier___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) objectForKey:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_installedTones
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TLToneManager__installedTones__block_invoke;
  v4[3] = &unk_1E8578950;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __32__TLToneManager__installedTones__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) allValues];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (unint64_t)_installedTonesSize
{
  v26 = *MEMORY[0x1E69E9840];
  memset(&v25, 0, 512);
  _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
  v4 = statfs([_deviceITunesRingtoneDirectory UTF8String], &v25);

  if (v4)
  {
    v5 = 4095;
  }

  else
  {
    v5 = v25.f_bsize - 1;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [(TLToneManager *)self _installedTones];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = *MEMORY[0x1E696A3B8];
    v10 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        filePath = [*(*(&v20 + 1) + 8 * i) filePath];
        v13 = [defaultManager attributesOfItemAtPath:filePath error:0];
        v14 = [v13 objectForKey:v9];
        longLongValue = [v14 longLongValue];

        v10 = v10 + ((longLongValue + v5) & ~v5);
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
    v16 = v10;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_addToneToManifestAtPath:(id)path metadata:(id)metadata fileName:(id)name mediaDirectory:(id)directory
{
  v20[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  metadataCopy = metadata;
  nameCopy = name;
  directoryCopy = directory;
  if (!nameCopy)
  {
    goto LABEL_5;
  }

  v14 = metadataCopy;
  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v19 = nameCopy;
  v20[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = [(TLToneManager *)self _addToneEntries:v15 toManifestAtPath:pathCopy mediaDirectory:directoryCopy shouldSkipReload:0];
  v17 = [v16 objectForKey:nameCopy];

  if (!v17)
  {
LABEL_5:
    v17 = [[TLToneImportResponse alloc] initWithStatusCode:2 toneIdentifier:0];
  }

  return v17;
}

- (id)_addToneEntries:(id)entries toManifestAtPath:(id)path mediaDirectory:(id)directory shouldSkipReload:(BOOL)reload
{
  LODWORD(v57) = reload;
  v111 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  pathCopy = path;
  directoryCopy = directory;
  v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v60 = pathCopy;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  [(TLToneManager *)self _ensureDirectoryExistsAtPath:stringByDeletingLastPathComponent];

  HIDWORD(v57) = [(TLToneManager *)self _lockManifestAtPath:pathCopy];
  if (HIDWORD(v57) == -1)
  {
LABEL_50:
    v51 = [[TLToneImportResponse alloc] initWithStatusCode:2 toneIdentifier:0];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v52 = entriesCopy;
    v53 = [v52 countByEnumeratingWithState:&v79 objects:v100 count:16];
    if (v53)
    {
      v54 = *v80;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v80 != v54)
          {
            objc_enumerationMutation(v52);
          }

          [v76 setObject:v51 forKey:{*(*(&v79 + 1) + 8 * i), v57}];
        }

        v53 = [v52 countByEnumeratingWithState:&v79 objects:v100 count:16];
      }

      while (v53);
    }

    goto LABEL_58;
  }

  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy_;
  v98 = __Block_byref_object_dispose_;
  v99 = 0;
  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke;
  v93[3] = &unk_1E8578950;
  v93[4] = self;
  v93[5] = &v94;
  [(TLToneManager *)self _performBlockInAccessQueue:v93];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:pathCopy];
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v58 = v10;
  v11 = [v10 objectForKey:{@"Ringtones", v57}];
  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v58 setObject:v11 forKey:@"Ringtones"];
  }

  _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
  v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = entriesCopy;
  v70 = v11;
  v67 = [obj countByEnumeratingWithState:&v89 objects:v110 count:16];
  if (v67)
  {
    v68 = 0;
    v66 = *v90;
    do
    {
      for (j = 0; j != v67; ++j)
      {
        if (*v90 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v89 + 1) + 8 * j);
        v77 = [obj objectForKey:v12];
        v74 = [directoryCopy stringByAppendingPathComponent:v12];
        v73 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
        v72 = [MEMORY[0x1E6987E28] assetWithURL:?];
        hasProtectedContent = [v72 hasProtectedContent];
        v14 = [v77 mutableCopy];
        v15 = [MEMORY[0x1E696AD98] numberWithBool:hasProtectedContent];
        [v14 setObject:v15 forKey:@"Protected Content"];

        v16 = [TLITunesTone alloc];
        v17 = [directoryCopy stringByAppendingPathComponent:v12];
        v18 = [(TLITunesTone *)v16 initWithPropertyListRepresentation:v14 filePath:v17];

        identifier = [(TLITunesTone *)v18 identifier];
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v20 = v95[5];
        v21 = [v20 countByEnumeratingWithState:&v85 objects:v109 count:16];
        if (v21)
        {
          v22 = *v86;
LABEL_13:
          v23 = 0;
          while (1)
          {
            if (*v86 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v85 + 1) + 8 * v23);
            if ([(TLITunesTone *)v18 isDuplicateOfTone:v24])
            {
              break;
            }

            if (v21 == ++v23)
            {
              v21 = [v20 countByEnumeratingWithState:&v85 objects:v109 count:16];
              if (v21)
              {
                goto LABEL_13;
              }

              goto LABEL_19;
            }
          }

          filePath = [v24 filePath];
          if ([defaultManager fileExistsAtPath:filePath])
          {
            identifier2 = [v24 identifier];

            v30 = TLLogToneManagement(v28, v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = objc_opt_class();
              *buf = 138543874;
              v102 = v31;
              v103 = 2114;
              v104 = v18;
              v105 = 2114;
              v106 = v24;
              v32 = v31;
              _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping import of tone %{public}@ because it's a duplicate of the following existing tone: %{public}@.", buf, 0x20u);
            }

            v33 = 1;
            goto LABEL_34;
          }

          lastPathComponent = [filePath lastPathComponent];
          v34 = [v70 objectForKey:?];
          v69 = [v34 mutableCopy];

          if (v69)
          {
            [v70 removeObjectForKey:lastPathComponent];
            v25 = v69;

            identifier2 = [v24 identifier];

            v37 = [filePath hasPrefix:_deviceITunesRingtoneDirectory];
            if (v37)
            {
              v37 = [v61 addObject:filePath];
            }

            v39 = TLLogToneManagement(v37, v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = objc_opt_class();
              *buf = 138544130;
              v102 = v40;
              v103 = 2114;
              v104 = v18;
              v105 = 2114;
              v106 = v24;
              v107 = 2114;
              v108 = filePath;
              v41 = v40;
              _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: Connected newly imported tone %{public}@ to old duplicate's metadata %{public}@ because its asset is missing at %{public}@.", buf, 0x2Au);
            }
          }

          else
          {
            v39 = TLLogToneManagement(v35, v36);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v42 = objc_opt_class();
              *buf = 138543874;
              v102 = v42;
              v103 = 2114;
              v104 = v18;
              v105 = 2114;
              v106 = v24;
              v43 = v42;
              _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: Proceeding to import tone %{public}@ despite finding duplicate %{public}@ because they don't appear to be listed in the same manifest.", buf, 0x20u);
            }

            identifier2 = identifier;
            v25 = v14;
          }
        }

        else
        {
LABEL_19:
          v25 = v14;
          identifier2 = identifier;
        }

        [v70 setObject:v25 forKey:v12];
        v33 = 0;
        v68 = 1;
        v14 = v25;
LABEL_34:
        v44 = [[TLToneImportResponse alloc] initWithStatusCode:v33 toneIdentifier:identifier2];
        [v76 setObject:v44 forKey:v12];
      }

      v67 = [obj countByEnumeratingWithState:&v89 objects:v110 count:16];
    }

    while (v67);

    if ((v68 & 1) == 0)
    {
      v48 = 0;
      goto LABEL_47;
    }

    obj = [MEMORY[0x1E696AE40] dataWithPropertyList:v58 format:200 options:0 error:0];
    v45 = [obj writeToFile:v60 options:1 error:0];
    v47 = v45;
    if (v45)
    {
      if ((v57 & 1) == 0)
      {
        [(TLToneManager *)self _reloadTones];
      }
    }

    else
    {
      v49 = TLLogToneManagement(v45, v46);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        objc_opt_class();
        [TLToneManager _addToneEntries:toManifestAtPath:mediaDirectory:shouldSkipReload:];
      }

      [v76 removeAllObjects];
    }

    v48 = v47 ^ 1;
  }

  else
  {
    v48 = 0;
  }

LABEL_47:
  close(SHIDWORD(v57));
  if ([v61 count])
  {
    v50 = [objc_alloc(getSSDownloadFileManifestClass()) initWithManifestType:0];
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285;
    v83[3] = &unk_1E85789F0;
    v83[4] = self;
    v84 = v61;
    [v50 removeItemsWithAssetPaths:v84 completionBlock:v83];
  }

  _Block_object_dispose(&v94, 8);
  if (v48)
  {
    goto LABEL_50;
  }

LABEL_58:

  return v76;
}

uint64_t __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 16) allValues];

  return MEMORY[0x1EEE66BB8]();
}

void __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = TLLogToneManagement(v5, v6);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = 138543618;
      v13 = v9;
      v14 = 2048;
      v15 = [v10 count];
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully removed %lu items from store download file manifest.", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285_cold_1();
  }
}

- (BOOL)_removeToneWithIdentifier:(id)identifier orSyncIdentifier:(id)syncIdentifier
{
  identifierCopy = identifier;
  syncIdentifierCopy = syncIdentifier;
  [(TLAccessQueue *)self->_accessQueue assertNotRunningInAccessQueue];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke;
  v14[3] = &unk_1E8578A40;
  v8 = identifierCopy;
  v15 = v8;
  v9 = syncIdentifierCopy;
  v16 = v9;
  selfCopy = self;
  v18 = &v20;
  v19 = &v24;
  [(TLToneManager *)self _performBlockInAccessQueue:v14];
  if (*(v21 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_TLToneManagerContentsChangedNotification" object:self];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.itunesstored.RingtoneAdded", 0, 0, 1u);
  }

  v12 = *(v25 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (*(a1 + 40))
    {
      v2 = [*(*(a1 + 48) + 24) objectForKey:?];
      v4 = TLLogToneManagement(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = *(a1 + 32);
        v7 = *(a1 + 40);
        *buf = 138544130;
        v54 = v5;
        v55 = 2114;
        v56 = v6;
        v57 = 2114;
        v58 = v7;
        v59 = 2114;
        v60 = v2;
        v8 = v5;
        _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Resolved supplied sync identifier to tone identifier: %{public}@.", buf, 0x2Au);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  if ([v2 length])
  {
    v9 = [*(*(a1 + 48) + 16) objectForKey:v2];
    v10 = v9;
    if (!v9)
    {
LABEL_26:

      goto LABEL_27;
    }

    v11 = [v9 filePath];
    v12 = [v11 lastPathComponent];
    v13 = [*(a1 + 48) _deviceITunesRingtoneDirectory];
    v14 = [v11 hasPrefix:v13];

    v15 = *(a1 + 48);
    if (v14)
    {
      [v15 _deviceITunesRingtoneInformationPlist];
    }

    else
    {
      [v15 _iTunesRingtoneInformationPlist];
    }
    v16 = ;
    v17 = *(a1 + 48);
    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{v12, 0}];
    *(*(*(a1 + 56) + 8) + 24) = [v17 _removeTonesFromManifestAtPath:v16 fileNames:v18 shouldSkipReload:1 alreadyLockedManifest:0 removedEntries:0];

    if (*(*(*(a1 + 56) + 8) + 24) != 1)
    {
LABEL_25:

      goto LABEL_26;
    }

    v19 = [MEMORY[0x1E696AC08] defaultManager];
    v52 = 0;
    v20 = [v19 removeItemAtPath:v11 error:&v52];
    v21 = v52;
    *(*(*(a1 + 64) + 8) + 24) = v20;

    v22 = *(*(*(a1 + 64) + 8) + 24);
    v25 = TLLogToneManagement(v23, v24);
    v26 = v25;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        *buf = 138544130;
        v54 = v27;
        v55 = 2114;
        v56 = v28;
        v57 = 2114;
        v58 = v29;
        v59 = 2114;
        v60 = v11;
        v30 = v27;
        _os_log_impl(&dword_1D9356000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Successfully deleted tone at file path '%{public}@'.", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v43 = objc_opt_class();
      v45 = *(a1 + 32);
      v46 = *(a1 + 40);
      v47 = v43;
      v44 = [v21 tl_nonRedundantDescription];
      *buf = 138544386;
      v54 = v43;
      v55 = 2114;
      v56 = v45;
      v57 = 2114;
      v58 = v46;
      v59 = 2114;
      v60 = v11;
      v61 = 2114;
      v62 = v44;
      _os_log_error_impl(&dword_1D9356000, v26, OS_LOG_TYPE_ERROR, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Failed to delete tone at file path '%{public}@'; error = %{public}@.", buf, 0x34u);
    }

    v31 = [*(a1 + 48) _deviceITunesRingtoneDirectory];
    if ([v11 hasPrefix:v31])
    {
      v32 = [v11 lastPathComponent];
      v33 = [v32 hasPrefix:@"import_"];

      if (v33)
      {
LABEL_22:
        v34 = [*(*(a1 + 48) + 16) mutableCopy];
        [v34 removeObjectForKey:v2];
        v35 = [v34 copy];
        v36 = *(a1 + 48);
        v37 = *(v36 + 16);
        *(v36 + 16) = v35;

        v38 = [v10 syncIdentifier];
        if (v38)
        {
          v39 = [*(*(a1 + 48) + 24) mutableCopy];
          [v39 removeObjectForKey:v38];
          v40 = [v39 copy];
          v41 = *(a1 + 48);
          v42 = *(v41 + 24);
          *(v41 + 24) = v40;
        }

        goto LABEL_25;
      }

      v31 = [objc_alloc(getSSDownloadFileManifestClass()) initWithManifestType:0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288;
      v48[3] = &unk_1E8578A18;
      v48[4] = *(a1 + 48);
      v49 = *(a1 + 32);
      v50 = *(a1 + 40);
      v51 = v11;
      [v31 removeItemWithAssetPath:v51 completionBlock:v48];
    }

    goto LABEL_22;
  }

LABEL_27:
}

void __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = TLLogToneManagement(v5, v6);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = a1[5];
      v11 = a1[6];
      v12 = a1[7];
      v14 = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      v20 = 2114;
      v21 = v12;
      v13 = v9;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithIdentifier:(%{public}@) orSyncIdentifier:(%{public}@): Successfully removed item for tone at file path '%{public}@' from store download file manifest.", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288_cold_1();
  }
}

- (BOOL)_removeToneFromManifestAtPath:(id)path fileName:(id)name
{
  if (!name)
  {
    return 0;
  }

  v6 = MEMORY[0x1E695DFD8];
  pathCopy = path;
  v8 = [v6 setWithObjects:{name, 0}];
  LOBYTE(self) = [(TLToneManager *)self _removeTonesFromManifestAtPath:pathCopy fileNames:v8 shouldSkipReload:0 alreadyLockedManifest:0 removedEntries:0];

  return self;
}

- (BOOL)_removeTonesFromManifestAtPath:(id)path fileNames:(id)names shouldSkipReload:(BOOL)reload alreadyLockedManifest:(BOOL)manifest removedEntries:(id *)entries
{
  v46 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  namesCopy = names;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  [(TLToneManager *)self _ensureDirectoryExistsAtPath:stringByDeletingLastPathComponent];

  if (manifest)
  {
    v15 = -1;
  }

  else
  {
    v15 = [(TLToneManager *)self _lockManifestAtPath:pathCopy];
    if (v15 == -1)
    {
      v22 = 0;
      v27 = 0;
      if (!entries)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:pathCopy];
  v17 = v16;
  if (v16)
  {
    reloadCopy = reload;
    v36 = v15;
    selfCopy = self;
    manifestCopy = manifest;
    v39 = pathCopy;
    v40 = v16;
    v18 = [v16 objectForKey:@"Ringtones"];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = namesCopy;
    v19 = namesCopy;
    v20 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v42;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v42 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v41 + 1) + 8 * i);
          if (entries)
          {
            v26 = [v18 objectForKey:*(*(&v41 + 1) + 8 * i)];
            if (v26)
            {
              if (!v22)
              {
                v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
              }

              [v22 setObject:v26 forKey:v25];
            }
          }

          [v18 removeObjectForKey:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v28 = [MEMORY[0x1E696AE40] dataWithPropertyList:v40 format:200 options:0 error:0];
    pathCopy = v39;
    v29 = [v28 writeToFile:v39 options:1 error:0];
    v27 = v29;
    if (v29)
    {
      namesCopy = v38;
      v31 = manifestCopy;
      if (!reloadCopy)
      {
        [(TLToneManager *)selfCopy _reloadTones];
      }
    }

    else
    {
      v32 = TLLogToneManagement(v29, v30);
      namesCopy = v38;
      v31 = manifestCopy;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _removeTonesFromManifestAtPath:selfCopy fileNames:v32 shouldSkipReload:? alreadyLockedManifest:? removedEntries:?];
      }

      if (v22)
      {

        v22 = 0;
      }
    }

    v15 = v36;

    v17 = v40;
    if (!v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v22 = 0;
    v27 = 0;
    if (!manifest)
    {
LABEL_30:
      close(v15);
    }
  }

  if (entries)
  {
LABEL_32:
    *entries = [v22 copy];
  }

LABEL_33:

  return v27;
}

- (int)_lockManifestAtPath:(id)path
{
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v4 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"com.apple.ToneLibrary.lock"];

  v5 = open([v4 fileSystemRepresentation], 512, 438);
  if (v5 == -1)
  {
    v18 = TLLogToneManagement(v5, v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(TLToneManager *)v18 _lockManifestAtPath:v19, v20, v21, v22, v23, v24, v25];
    }

    goto LABEL_9;
  }

  v7 = v5;
  fcntl(v5, 2, 1);
  v8 = flock(v7, 2);
  if (v8 == -1)
  {
    v10 = TLLogToneManagement(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(TLToneManager *)v10 _lockManifestAtPath:v11, v12, v13, v14, v15, v16, v17];
    }

    close(v7);
LABEL_9:
    v7 = -1;
  }

  return v7;
}

- (BOOL)_removeAllTones
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TLToneManager__removeAllTones__block_invoke;
  v4[3] = &unk_1E8578AB8;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __32__TLToneManager__removeAllTones__block_invoke(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) _deviceITunesRingtoneInformationPlist];
  v46[0] = v3;
  v4 = [*(a1 + 32) _iTunesRingtoneInformationPlist];
  v46[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];

  v6 = v5;
  v7 = [v5 count];
  v8 = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  v9 = 0;
  if (v7)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = [v6 objectAtIndex:v10];
      if ([v2 fileExistsAtPath:v12])
      {
        v13 = [*(a1 + 32) _lockManifestAtPath:v12];
        v11 &= v13 != -1;
        v9 = 1;
      }

      else
      {
        v13 = -1;
      }

      v8[v10] = v13;

      ++v10;
    }

    while (v7 != v10);
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v14 = [*(a1 + 32) _deviceITunesRingtoneDirectory];
  v15 = *(*(a1 + 32) + 16);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __32__TLToneManager__removeAllTones__block_invoke_2;
  v42[3] = &unk_1E8578A90;
  v43 = v2;
  v44 = v14;
  v45 = *(a1 + 32);
  v16 = v14;
  [v15 enumerateKeysAndObjectsUsingBlock:v42];

  if (v7)
  {
LABEL_9:
    v37 = v9;
    v17 = 0;
    v39 = v8;
    do
    {
      v18 = [v6 objectAtIndex:v17];
      if ([v2 fileExistsAtPath:v18])
      {
        v41 = 0;
        v19 = [v2 removeItemAtPath:v18 error:&v41];
        v20 = v41;
        *(*(*(a1 + 40) + 8) + 24) = v19;
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          printf("Removed tone manifest at path '%s'.\n", [v18 UTF8String]);
        }

        else
        {
          v21 = *MEMORY[0x1E69E9848];
          v22 = [v18 UTF8String];
          v23 = [v20 tl_nonRedundantDescription];
          v35 = v22;
          v8 = v39;
          fprintf(v21, "Failed to remove item at path '%s'. Error: %s.\n", v35, [v23 UTF8String]);
        }
      }

      v24 = v8[v17];
      if (v24 != -1)
      {
        close(v24);
      }

      v25 = [v18 stringByDeletingLastPathComponent];
      v26 = [v25 stringByAppendingPathComponent:@"com.apple.ToneLibrary.lock"];

      if ([v2 fileExistsAtPath:v26])
      {
        v40 = 0;
        v27 = [v2 removeItemAtPath:v26 error:&v40];
        v28 = v40;
        *(*(*(a1 + 40) + 8) + 24) = v27;
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          printf("Removed tone manifest lock file at path '%s'.\n", [v26 UTF8String]);
        }

        else
        {
          v38 = *MEMORY[0x1E69E9848];
          v29 = [v26 UTF8String];
          [v28 tl_nonRedundantDescription];
          v30 = v2;
          v31 = a1;
          v32 = v7;
          v34 = v33 = v6;
          v36 = v29;
          v8 = v39;
          fprintf(v38, "Failed to remove item at path '%s'. Error: %s.\n", v36, [v34 UTF8String]);

          v6 = v33;
          v7 = v32;
          a1 = v31;
          v2 = v30;
        }
      }

      ++v17;
    }

    while (v7 != v17);
    v9 = v37;
  }

  free(v8);
  if ((v9 & 1) == 0)
  {
    puts("Nothing to remove.");
  }

  [*(a1 + 32) _reloadTones];
}

void __32__TLToneManager__removeAllTones__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 filePath];
  if (![*(a1 + 32) fileExistsAtPath:v5])
  {
    goto LABEL_24;
  }

  if ([v5 hasPrefix:*(a1 + 40)])
  {
    v6 = [v5 lastPathComponent];
    v7 = [v6 hasPrefix:@"import_"];

    if (v7)
    {
      v8 = "imported";
    }

    else
    {
      v8 = "purchased";
    }

    v9 = v7 ^ 1;
  }

  else
  {
    v9 = 0;
    v8 = "synced";
  }

  v10 = *(a1 + 32);
  v33 = 0;
  v11 = [v10 removeItemAtPath:v5 error:&v33];
  v12 = v33;
  *(*(*(a1 + 56) + 8) + 24) = v11;
  v13 = *(*(*(a1 + 56) + 8) + 24);
  v15 = TLLogToneManagement(v12, v14);
  v16 = v15;
  if (v13 == 1)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543618;
      v35 = v17;
      v36 = 2114;
      v37 = v5;
      v18 = v17;
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAllTones: Successfully deleted tone at file path '%{public}@'.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v26 = objc_opt_class();
    v27 = v26;
    v28 = [v12 tl_nonRedundantDescription];
    *buf = 138543874;
    v35 = v26;
    v36 = 2114;
    v37 = v5;
    v38 = 2114;
    v39 = v28;
    _os_log_error_impl(&dword_1D9356000, v16, OS_LOG_TYPE_ERROR, "%{public}@: _removeAllTones: Failed to delete tone at file path '%{public}@'; error = %{public}@.", buf, 0x20u);
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v22 = *MEMORY[0x1E69E9848];
    v23 = [v5 UTF8String];
    v20 = [v12 tl_nonRedundantDescription];
    fprintf(v22, "Failed to remove item at path '%s'. Error: %s.\n", v23, [v20 UTF8String]);
    goto LABEL_17;
  }

  if (v9)
  {
    v19 = dispatch_semaphore_create(0);
    v20 = [objc_alloc(getSSDownloadFileManifestClass()) initWithManifestType:0];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __32__TLToneManager__removeAllTones__block_invoke_298;
    v29[3] = &unk_1E8578A68;
    v32 = *(a1 + 56);
    v30 = v5;
    v31 = v19;
    v21 = v19;
    [v20 removeItemWithAssetPath:v30 completionBlock:v29];
    dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

LABEL_17:
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if ([v4 isRingtone])
    {
      v24 = "ringtone";
    }

    else
    {
      v24 = "alert tone";
    }

    v25 = [v4 name];
    printf("Removed %s %s with name '%s' at path '%s'.\n", v8, v24, [v25 UTF8String], objc_msgSend(v5, "UTF8String"));
  }

LABEL_24:
}

intptr_t __32__TLToneManager__removeAllTones__block_invoke_298(void *a1, char a2, void *a3)
{
  if ((a2 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
    v5 = *MEMORY[0x1E69E9848];
    v6 = a1[4];
    v7 = v6;
    v8 = a3;
    v9 = [v6 UTF8String];
    v10 = [v8 tl_nonRedundantDescription];

    fprintf(v5, "Failed to remove item at path '%s' from store download manifest. Error: %s.\n", v9, [v10 UTF8String]);
  }

  v11 = a1[5];

  return dispatch_semaphore_signal(v11);
}

- (id)_alarmWakeUpRingtoneDirectory
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourcePath = [v2 resourcePath];
  v4 = [resourcePath stringByAppendingPathComponent:@"AlarmWakeUpRingtones"];

  return v4;
}

- (id)_systemEmbeddedSoundDirectory
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  resourcePath = [v2 resourcePath];
  v4 = [resourcePath stringByAppendingPathComponent:@"AlertTones"];

  return v4;
}

- (id)_systemEmbeddedClassicSoundDirectory
{
  _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
  v3 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"Classic"];

  return v3;
}

- (id)_systemEmbeddedModernSoundDirectory
{
  _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
  v3 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"Modern"];

  return v3;
}

- (id)_systemEmbeddedEncoreInfinitumSoundDirectory
{
  _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
  v3 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"EncoreInfinitum"];

  return v3;
}

- (id)_systemEmbeddedEncoreRemixSoundDirectory
{
  v3 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  supportsReflectionRemixes = [v3 supportsReflectionRemixes];

  if (supportsReflectionRemixes)
  {
    _systemEmbeddedSoundDirectory = [(TLToneManager *)self _systemEmbeddedSoundDirectory];
    v6 = [_systemEmbeddedSoundDirectory stringByAppendingPathComponent:@"EncoreRemix"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_systemWatchSoundDirectory
{
  _baseDirectoryForAlertToneSoundFiles = [(TLToneManager *)self _baseDirectoryForAlertToneSoundFiles];
  v3 = [_baseDirectoryForAlertToneSoundFiles stringByAppendingPathComponent:@"nano"];

  return v3;
}

- (void)_loadSystemTones
{
  v121 = *MEMORY[0x1E69E9840];
  _systemSoundDirectory = [(TLToneManager *)self _systemSoundDirectory];
  selfCopy = self;
  _systemWatchSoundDirectory = [(TLToneManager *)self _systemWatchSoundDirectory];
  v103 = @"<none>";
  v104 = kSystemSoundID_NoneTone;
  v105 = kSystemSoundID_NoneTone;
  v107[0] = 0;
  v106 = 0;
  v107[1] = @"texttone:App Notification";
  v107[2] = 0x3F700000523;
  v107[3] = _systemSoundDirectory;
  v107[4] = @"sms-received1.caf";
  v107[5] = @"texttone:Text-Message-Alert-In-Conversation";
  v107[6] = 0x3EB00000515;
  v107[7] = _systemSoundDirectory;
  v107[8] = @"ReceivedMessage.caf";
  v107[9] = @"texttone:FaceTime-Group-Invitation";
  v107[10] = vdup_n_s32(0x4F1u);
  v107[11] = _systemWatchSoundDirectory;
  v107[12] = @"MultiwayInvitation.caf";
  v107[13] = @"texttone:FaceTime-Participant-Joined";
  v107[14] = vdup_n_s32(0x4EFu);
  v107[15] = _systemWatchSoundDirectory;
  v107[16] = @"MultiwayJoin.caf";
  v107[17] = @"texttone:Go-To-Sleep";
  v107[19] = _systemSoundDirectory;
  v107[20] = @"go_to_sleep_alert.caf";
  v107[18] = vdup_n_s32(0x486u);
  v107[21] = @"texttone:App-Notification-Critical-Alert";
  v107[22] = vdup_n_s32(0x48Du);
  v107[23] = _systemSoundDirectory;
  v107[24] = @"3rd_party_critical.caf";
  v107[25] = @"texttone:Passbook-NFC-Scan-Complete";
  v107[26] = vdup_n_s32(0x488u);
  v107[27] = _systemSoundDirectory;
  v107[28] = @"nfc_scan_complete.caf";
  v107[29] = @"texttone:Health";
  v108 = kSystemSoundID_NoneTone;
  v109 = 1262;
  v110 = _systemSoundDirectory;
  v111 = @"health_notification.caf";
  v112 = @"texttone:Health-Urgent";
  v113 = kSystemSoundID_NoneTone;
  v114 = 1363;
  v115 = _systemWatchSoundDirectory;
  v116 = @"HealthNotificationUrgent.caf";
  v117 = @"texttone:Headphone-Audio-Exposure-Limit-Exceeded";
  v118 = vdup_n_s32(0x552u);
  v31 = _systemWatchSoundDirectory;
  v119 = _systemWatchSoundDirectory;
  v120 = @"HeadphoneAudioExposureLimitExceeded.caf";
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = 0; i != 44; i += 4)
  {
    v6 = &(&v103)[i];
    v7 = v107[i - 1];
    v8 = v107[i];
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
      v12 = 0;
      v11 = 0;
    }

    else
    {
      v11 = [v7 stringByAppendingPathComponent:v8];
      v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:0];
    }

    v13 = [[TLSystemTone alloc] initWithSoundFileURL:v12 actualSoundID:*(v6 + 3) previewSoundID:*(v6 + 2) requiresLongFormPlayback:0];
    if (v13)
    {
      [v4 setObject:v13 forKey:*v6];
    }
  }

  _systemEmbeddedSoundDirectory = [(TLToneManager *)selfCopy _systemEmbeddedSoundDirectory];
  _systemEmbeddedClassicSoundDirectory = [(TLToneManager *)selfCopy _systemEmbeddedClassicSoundDirectory];
  _systemEmbeddedModernSoundDirectory = [(TLToneManager *)selfCopy _systemEmbeddedModernSoundDirectory];
  [(TLToneManager *)selfCopy _systemEmbeddedEncoreInfinitumSoundDirectory];
  v17 = 0;
  v34[0] = @"texttone:Alert";
  v34[1] = _systemEmbeddedClassicSoundDirectory;
  v34[2] = @"Alert.m4r";
  v34[3] = @"texttone:Anticipate";
  v34[4] = _systemEmbeddedClassicSoundDirectory;
  v34[5] = @"Anticipate.m4r";
  v34[6] = @"texttone:Bell";
  v34[7] = _systemEmbeddedClassicSoundDirectory;
  v34[8] = @"Bell.m4r";
  v34[9] = @"texttone:Bloom";
  v34[10] = _systemEmbeddedClassicSoundDirectory;
  v34[11] = @"Bloom.m4r";
  v34[12] = @"texttone:Calypso";
  v34[13] = _systemEmbeddedClassicSoundDirectory;
  v34[14] = @"Calypso.m4r";
  v34[15] = @"texttone:Chime";
  v34[16] = _systemEmbeddedClassicSoundDirectory;
  v34[17] = @"Chime.m4r";
  v34[18] = @"texttone:Choo Choo";
  v34[19] = _systemEmbeddedClassicSoundDirectory;
  v34[20] = @"Choo Choo.m4r";
  v34[21] = @"texttone:Descent";
  v34[22] = _systemEmbeddedClassicSoundDirectory;
  v34[23] = @"Descent.m4r";
  v34[24] = @"texttone:New Mail";
  v34[25] = _systemEmbeddedClassicSoundDirectory;
  v34[26] = @"Ding.m4r";
  v34[27] = @"texttone:Electronic";
  v34[28] = _systemEmbeddedClassicSoundDirectory;
  v34[29] = @"Electronic.m4r";
  v34[30] = @"texttone:Fanfare";
  v34[31] = _systemEmbeddedClassicSoundDirectory;
  v34[32] = @"Fanfare.m4r";
  v34[33] = @"texttone:Glass";
  v34[34] = _systemEmbeddedClassicSoundDirectory;
  v34[35] = @"Glass.m4r";
  v34[36] = @"texttone:Horn";
  v34[37] = _systemEmbeddedClassicSoundDirectory;
  v34[38] = @"Horn.m4r";
  v34[39] = @"texttone:Ladder";
  v34[40] = _systemEmbeddedClassicSoundDirectory;
  v34[41] = @"Ladder.m4r";
  v34[42] = @"texttone:Minuet";
  v34[43] = _systemEmbeddedClassicSoundDirectory;
  v34[44] = @"Minuet.m4r";
  v34[45] = @"texttone:News Flash";
  v34[46] = _systemEmbeddedClassicSoundDirectory;
  v34[47] = @"News Flash.m4r";
  v34[48] = @"texttone:Noir";
  v34[49] = _systemEmbeddedClassicSoundDirectory;
  v34[50] = @"Noir.m4r";
  v34[51] = @"texttone:Sherwood Forest";
  v34[52] = _systemEmbeddedClassicSoundDirectory;
  v34[53] = @"Sherwood Forest.m4r";
  v34[54] = @"texttone:Spell";
  v34[55] = _systemEmbeddedClassicSoundDirectory;
  v34[56] = @"Spell.m4r";
  v34[57] = @"texttone:Suspense";
  v34[58] = _systemEmbeddedClassicSoundDirectory;
  v34[59] = @"Suspense.m4r";
  v34[60] = @"texttone:Sharing Post";
  v34[61] = _systemEmbeddedClassicSoundDirectory;
  v34[62] = @"Swish.m4r";
  v34[63] = @"texttone:Sent Mail";
  v34[64] = _systemEmbeddedClassicSoundDirectory;
  v34[65] = @"Swoosh.m4r";
  v34[66] = @"texttone:Telegraph";
  v34[67] = _systemEmbeddedClassicSoundDirectory;
  v34[68] = @"Telegraph.m4r";
  v34[69] = @"texttone:Tiptoes";
  v34[70] = _systemEmbeddedClassicSoundDirectory;
  v34[71] = @"Tiptoes.m4r";
  v34[72] = @"texttone:Tri-tone";
  v34[73] = _systemEmbeddedClassicSoundDirectory;
  v34[74] = @"Tri-Tone.m4r";
  v34[75] = @"texttone:Sent Tweet";
  v34[76] = _systemEmbeddedClassicSoundDirectory;
  v34[77] = @"Tweet.m4r";
  v34[78] = @"texttone:Typewriters";
  v34[79] = _systemEmbeddedClassicSoundDirectory;
  v34[80] = @"Typewriters.m4r";
  v34[81] = @"texttone:Update";
  v34[82] = _systemEmbeddedClassicSoundDirectory;
  v34[83] = @"Update.m4r";
  v34[84] = @"texttone:Note";
  v34[85] = _systemEmbeddedModernSoundDirectory;
  v34[86] = @"Note.m4r";
  v34[87] = @"texttone:Bamboo";
  v34[88] = _systemEmbeddedModernSoundDirectory;
  v34[89] = @"Bamboo.m4r";
  v34[90] = @"texttone:Complete";
  v34[91] = _systemEmbeddedModernSoundDirectory;
  v34[92] = @"Complete.m4r";
  v34[93] = @"texttone:Hello";
  v34[94] = _systemEmbeddedModernSoundDirectory;
  v34[95] = @"Hello.m4r";
  v34[96] = @"texttone:Popcorn";
  v34[97] = _systemEmbeddedModernSoundDirectory;
  v34[98] = @"Popcorn.m4r";
  v34[99] = @"texttone:Synth";
  v34[100] = _systemEmbeddedModernSoundDirectory;
  v34[101] = @"Synth.m4r";
  v34[102] = @"texttone:Aurora";
  v34[103] = _systemEmbeddedModernSoundDirectory;
  v34[104] = @"Aurora.m4r";
  v34[105] = @"texttone:Keys";
  v34[106] = _systemEmbeddedModernSoundDirectory;
  v34[107] = @"Keys.m4r";
  v34[108] = @"texttone:Circles";
  v34[109] = _systemEmbeddedModernSoundDirectory;
  v34[110] = @"Circles.m4r";
  v34[111] = @"texttone:Input";
  v34[112] = _systemEmbeddedModernSoundDirectory;
  v34[113] = @"Input.m4r";
  v35 = v34[114] = @"texttone:Antic";
  v36 = @"Antic-EncoreInfinitum.caf";
  v37 = @"texttone:Cheers";
  v38 = v35;
  v39 = @"Cheers-EncoreInfinitum.caf";
  v40 = @"texttone:Droplet";
  v41 = v35;
  v42 = @"Droplet-EncoreInfinitum.caf";
  v43 = @"texttone:Handoff";
  v44 = v35;
  v45 = @"Handoff-EncoreInfinitum.caf";
  v46 = @"texttone:Milestone";
  v47 = v35;
  v48 = @"Milestone-EncoreInfinitum.caf";
  v49 = @"texttone:Passage";
  v50 = v35;
  v51 = @"Passage-EncoreInfinitum.caf";
  v52 = @"texttone:Portal";
  v53 = v35;
  v54 = @"Portal-EncoreInfinitum.caf";
  v55 = @"texttone:Rattle";
  v56 = v35;
  v57 = @"Rattle-EncoreInfinitum.caf";
  v58 = @"texttone:Rebound";
  v59 = v35;
  v60 = @"Rebound-EncoreInfinitum.caf";
  v61 = @"texttone:Slide";
  v62 = v35;
  v63 = @"Slide-EncoreInfinitum.caf";
  v64 = @"texttone:Welcome";
  v29 = v35;
  v65 = v35;
  v66 = @"Welcome-EncoreInfinitum.caf";
  v67 = @"texttone:Calendar Alert";
  v68 = _systemEmbeddedModernSoundDirectory;
  v69 = @"Chord.m4r";
  v70 = @"texttone:Air Drop Invitation";
  v71 = _systemEmbeddedModernSoundDirectory;
  v72 = @"Pulse.m4r";
  v73 = @"texttone:Photos Sharing Post";
  v74 = _systemEmbeddedSoundDirectory;
  v75 = @"PhotosSharingPostTone.caf";
  v76 = @"texttone:Photos Memory";
  v77 = _systemEmbeddedSoundDirectory;
  v78 = @"PhotosMemoriesNotification.caf";
  v79 = @"texttone:System Background Mic Usage";
  v80 = _systemEmbeddedSoundDirectory;
  v81 = @"Background-Mic-Usage.wav";
  v82 = @"texttone:SOS-Countdown-Tick";
  v83 = _systemEmbeddedSoundDirectory;
  v84 = @"SOS-Countdown-Tick.caf";
  v85 = @"texttone:Text-Message-Acknowledgment-Heart";
  v86 = _systemEmbeddedSoundDirectory;
  v87 = @"Text-Message-Acknowledgement-Heart.caf";
  v88 = @"texttone:Text-Message-Acknowledgment-Thumbs-Up";
  v89 = _systemEmbeddedSoundDirectory;
  v90 = @"Text-Message-Acknowledgement-ThumbsUp.caf";
  v91 = @"texttone:Text-Message-Acknowledgment-Thumbs-Down";
  v92 = _systemEmbeddedSoundDirectory;
  v93 = @"Text-Message-Acknowledgement-ThumbsDown.caf";
  v94 = @"texttone:Text-Message-Acknowledgment-HaHa";
  v95 = _systemEmbeddedSoundDirectory;
  v96 = @"Text-Message-Acknowledgement-HaHa.caf";
  v97 = @"texttone:Text-Message-Acknowledgment-Exclamation";
  v98 = _systemEmbeddedSoundDirectory;
  v99 = @"Text-Message-Acknowledgement-Exclamation.caf";
  v100 = @"texttone:Text-Message-Acknowledgment-Question-Mark";
  v102 = @"Text-Message-Acknowledgement-QuestionMark.caf";
  v30 = _systemEmbeddedSoundDirectory;
  v101 = _systemEmbeddedSoundDirectory;
  do
  {
    v18 = v34[v17 + 1];
    v19 = v34[v17 + 2];
    v20 = v19;
    if (v18)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v23 = [v18 stringByAppendingPathComponent:v19];
      v24 = v23;
      if (v23)
      {
        v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23 isDirectory:0];
      }

      else
      {
        v22 = 0;
      }
    }

    v25 = [TLSystemTone alloc];
    v26 = [(TLSystemTone *)v25 initWithSoundFileURL:v22 actualSoundID:kSystemSoundID_InvalidTone previewSoundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:0];
    if (v26)
    {
      [v4 setObject:v26 forKey:v34[v17]];
    }

    v17 += 3;
  }

  while (v17 != 183);
  v27 = [v4 copy];
  systemTonesByIdentifier = selfCopy->_systemTonesByIdentifier;
  selfCopy->_systemTonesByIdentifier = v27;
}

- (id)_aliasForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  if (identifierCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__TLToneManager__aliasForToneIdentifier___block_invoke;
    v9[3] = &unk_1E85789C8;
    v11 = &v12;
    v9[4] = self;
    v10 = identifierCopy;
    [(TLToneManager *)self _performBlockInAccessQueue:v9];

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__TLToneManager__aliasForToneIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 40) copy];

    MEMORY[0x1EEE66BB8]();
  }
}

- (BOOL)_toneWithIdentifierIsDefaultRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  defaultRingtoneIdentifier = [(TLToneManager *)self defaultRingtoneIdentifier];
  v6 = [ringtoneCopy isEqualToString:defaultRingtoneIdentifier];

  return v6;
}

- (BOOL)_toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  v5 = ![(TLToneManager *)self _toneWithIdentifierIsSystemTone:ringtoneCopy]&& [(TLToneManager *)self _toneWithIdentifierIsNonDefaultSystemRingtone:ringtoneCopy];

  return v5;
}

- (BOOL)_toneWithIdentifierIsSystemTone:(id)tone
{
  toneCopy = tone;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = [toneCopy hasPrefix:@"texttone:"];
  if (v11[3])
  {
    v5 = 1;
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__TLToneManager__toneWithIdentifierIsSystemTone___block_invoke;
    v7[3] = &unk_1E8578AE0;
    v7[4] = self;
    v8 = toneCopy;
    v9 = &v10;
    [(TLToneManager *)self _performBlockInAccessQueue:v7];

    v5 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);

  return v5 & 1;
}

void __49__TLToneManager__toneWithIdentifierIsSystemTone___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _aliasForToneIdentifier:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) objectForKey:v3];
  *(*(*(a1 + 48) + 8) + 24) = v2 != 0;
}

- (BOOL)_toneWithIdentifierIsMediaPlaybackArchive:(id)archive
{
  archiveCopy = archive;
  if ([archiveCopy hasPrefix:@"mediaPlaybackArchive:"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TLToneManager *)self _underlyingPlaybackArchiveForToneIdentifier:archiveCopy];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_newServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.tonelibraryd"];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F54E48B0];
  [v2 setRemoteObjectInterface:v3];
  [v2 resume];

  return v2;
}

- (id)_tonePreferencesFromService
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke;
  v17[3] = &unk_1E8578950;
  v17[4] = self;
  v17[5] = &v18;
  [(TLToneManager *)self _performBlockInAccessQueue:v17];
  v3 = v19[5];
  if (!v3)
  {
    _newServiceConnection = [(TLToneManager *)self _newServiceConnection];
    v5 = dispatch_semaphore_create(0);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke_2;
    v15[3] = &unk_1E8578B08;
    v6 = v5;
    v16 = v6;
    v7 = [_newServiceConnection remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke_775;
    v12[3] = &unk_1E8578B30;
    v14 = &v18;
    v8 = v6;
    v13 = v8;
    [v7 retrieveCurrentTonePreferencesWithCompletionHandler:v12];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    [_newServiceConnection invalidate];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __44__TLToneManager__tonePreferencesFromService__block_invoke_777;
    v11[3] = &unk_1E8578AB8;
    v11[4] = self;
    v11[5] = &v18;
    [(TLToneManager *)self _performBlockInAccessQueue:v11];

    v3 = v19[5];
  }

  v9 = v3;
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = TLLogToneManagement(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __44__TLToneManager__tonePreferencesFromService__block_invoke_2_cold_1(v3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_775(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v9 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (v7)
  {
    v10 = TLLogToneManagement(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__TLToneManager__tonePreferencesFromService__block_invoke_775_cold_1(v9);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_setToneIdentifierUsingService:(id)service keyedByTopic:(id)topic forPreferenceKey:(id)key
{
  serviceCopy = service;
  topicCopy = topic;
  keyCopy = key;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  _newServiceConnection = [(TLToneManager *)self _newServiceConnection];
  v12 = dispatch_semaphore_create(0);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke;
  v20[3] = &unk_1E8578B08;
  v13 = v12;
  v21 = v13;
  v14 = [_newServiceConnection remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778;
  v17[3] = &unk_1E8578B58;
  v19 = &v22;
  v15 = v13;
  v18 = v15;
  [v14 setCurrentToneIdentifier:serviceCopy keyedByTopic:topicCopy forPreferenceKey:keyCopy completionHandler:v17];

  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  [_newServiceConnection invalidate];
  LOBYTE(v14) = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v14;
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = TLLogToneManagement(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_cold_1(v3);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (v5)
  {
    v8 = TLLogToneManagement(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778_cold_1(v7);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)_systemWideTonePreferenceKeyForAlertType:(int64_t)type
{
  if ((type - 1) > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = _TLToneManagerSystemWideTonePreferenceKeys[type - 1];
  }

  return v4;
}

- (id)_currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(BOOL)value
{
  valueCopy = value;
  v77 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v10 = TLLogToneManagement(topicCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLAlertType(type);
    *buf = 138544130;
    selfCopy14 = self;
    v71 = 2114;
    v72 = v11;
    v73 = 2114;
    v74 = topicCopy;
    v75 = 1024;
    *v76 = valueCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@) allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(%{BOOL}u).", buf, 0x26u);
  }

  v12 = [topicCopy length];
  v13 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v14 = v13;
  if (v13 && v12)
  {
    v15 = [(__CFString *)v13 stringByAppendingString:@"-per-account"];

    v14 = v15;
  }

  v16 = 0;
  LODWORD(v17) = 0;
  if (![0 length] && v14)
  {
    if (self->_shouldUseServiceToAccessTonePreferences)
    {
      _tonePreferencesFromService = [(TLToneManager *)self _tonePreferencesFromService];
      v19 = [_tonePreferencesFromService objectForKey:v14];

      v22 = TLLogToneManagement(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = NSStringFromTLAlertType(type);
        *buf = 138544130;
        selfCopy14 = self;
        v71 = 2114;
        v72 = v23;
        v73 = 2114;
        v74 = v14;
        v75 = 2114;
        *v76 = v19;
        _os_log_impl(&dword_1D9356000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Read Preferences value for key '%{public}@' from service: %{public}@.", buf, 0x2Au);
      }

      if (v12)
      {
        v16 = [v19 objectForKey:topicCopy];
        v17 = TLLogToneManagement(v16, v24);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromTLAlertType(type);
          *buf = 138543874;
          selfCopy14 = self;
          v71 = 2114;
          v72 = v25;
          v73 = 2114;
          v74 = v16;
          v26 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Per-topic: currentToneIdentifier = %{public}@.";
LABEL_23:
          _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, v26, buf, 0x20u);
        }
      }

      else
      {
        v16 = v19;
        v17 = TLLogToneManagement(v16, v37);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v25 = NSStringFromTLAlertType(type);
          *buf = 138543874;
          selfCopy14 = self;
          v71 = 2114;
          v72 = v25;
          v73 = 2114;
          v74 = v16;
          v26 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. currentToneIdentifier = %{public}@.";
          goto LABEL_23;
        }
      }

      LODWORD(v17) = 0;
      goto LABEL_41;
    }

    v27 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
    if (!v27)
    {
      LODWORD(v17) = 0;
      v16 = 0;
      goto LABEL_41;
    }

    v28 = v27;
    v17 = CFPreferencesCopyAppValue(v14, v27);
    v30 = TLLogToneManagement(v17, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = NSStringFromTLAlertType(type);
      *buf = 138544386;
      selfCopy14 = self;
      v71 = 2114;
      v72 = v31;
      v73 = 2114;
      v74 = v14;
      v75 = 2114;
      *v76 = v28;
      *&v76[8] = 2114;
      *&v76[10] = v17;
      _os_log_impl(&dword_1D9356000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Read Preferences value for key '%{public}@' from domain '%{public}@': %{public}@.", buf, 0x34u);
    }

    if (!v17)
    {
      v16 = 0;
LABEL_40:
      CFRelease(v28);
      goto LABEL_41;
    }

    if (v12)
    {
      v32 = [v17 objectForKey:topicCopy];
      v34 = TLLogToneManagement(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromTLAlertType(type);
        v35 = v67 = v32;
        *buf = 138543874;
        selfCopy14 = self;
        v71 = 2114;
        v72 = v35;
        v73 = 2114;
        v74 = v67;
        v36 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Per-topic: persistedToneIdentifier = %{public}@.";
LABEL_29:
        _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, v36, buf, 0x20u);

        v32 = v67;
      }
    }

    else
    {
      v32 = v17;
      v34 = TLLogToneManagement(v32, v38);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        NSStringFromTLAlertType(type);
        v35 = v67 = v32;
        *buf = 138543874;
        selfCopy14 = self;
        v71 = 2114;
        v72 = v35;
        v73 = 2114;
        v74 = v67;
        v36 = "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. persistedToneIdentifier = %{public}@.";
        goto LABEL_29;
      }
    }

    cf = v17;
    if ([v32 length])
    {
      v39 = [(TLToneManager *)self toneWithIdentifierIsValid:v32];
      v65 = v39;
      v68 = v32;
      if (v39)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithString:v32];
        v42 = TLLogToneManagement(v16, v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = NSStringFromTLAlertType(type);
          *buf = 138543874;
          selfCopy14 = self;
          v71 = 2114;
          v72 = v43;
          v73 = 2114;
          v74 = v16;
          _os_log_impl(&dword_1D9356000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. currentToneIdentifier = %{public}@.", buf, 0x20u);
        }
      }

      else
      {
        v42 = TLLogToneManagement(v39, v40);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = NSStringFromTLAlertType(type);
          *buf = 138543618;
          selfCopy14 = self;
          v71 = 2114;
          v72 = v44;
          _os_log_impl(&dword_1D9356000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. persistedToneIdentifierWasInvalid = YES.", buf, 0x16u);
        }

        v16 = 0;
      }

      LODWORD(v17) = v65 ^ 1;

      v32 = v68;
    }

    else
    {
      LODWORD(v17) = 0;
      v16 = 0;
    }

    CFRelease(cf);

    goto LABEL_40;
  }

LABEL_41:
  v45 = [v16 length];
  if (v45 || !v12)
  {
    if (!v17)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v47 = [(TLToneManager *)self _currentToneIdentifierForAlertType:type topic:0];

    v50 = TLLogToneManagement(v48, v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = NSStringFromTLAlertType(type);
      *buf = 138543874;
      selfCopy14 = self;
      v71 = 2114;
      v72 = v51;
      v73 = 2114;
      v74 = v47;
      _os_log_impl(&dword_1D9356000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Falling back to current tone without topic. currentToneIdentifier = %{public}@.", buf, 0x20u);
    }

    if (!v17)
    {
      v16 = v47;
      goto LABEL_62;
    }

    if ([v47 isEqualToString:@"<none>"])
    {

      v54 = TLLogToneManagement(v52, v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = NSStringFromTLAlertType(type);
        *buf = 138543874;
        selfCopy14 = self;
        v71 = 2114;
        v72 = v55;
        v73 = 2114;
        v74 = 0;
        _os_log_impl(&dword_1D9356000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid, and fallback value is none. Ignoring fallback value. currentToneIdentifier = %{public}@.", buf, 0x20u);
      }

      v16 = 0;
    }

    else
    {
      v16 = v47;
    }
  }

  v45 = [v16 length];
  if (!v45)
  {
    if (valueCopy)
    {
      v56 = [(TLToneManager *)self _defaultPreferablyNonSilentToneIdentifierForAlertType:type topic:topicCopy];

      v59 = TLLogToneManagement(v57, v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = NSStringFromTLAlertType(type);
        *buf = 138543874;
        selfCopy14 = self;
        v71 = 2114;
        v72 = v60;
        v73 = 2114;
        v74 = v56;
        _os_log_impl(&dword_1D9356000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid; falling back to non-silent default tone. currentToneIdentifier = %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v59 = TLLogVibrationManagement(0, v46);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v61 = NSStringFromTLAlertType(type);
        *buf = 138543874;
        selfCopy14 = self;
        v71 = 2114;
        v72 = v61;
        v73 = 2114;
        v74 = v16;
        _os_log_impl(&dword_1D9356000, v59, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) […]. Persisted value was invalid, but falling back to non-silent default tone is disallowed. currentToneIdentifier = %{public}@.", buf, 0x20u);
      }

      v56 = v16;
    }

    v16 = v56;
  }

LABEL_62:
  v62 = TLLogToneManagement(v45, v46);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = NSStringFromTLAlertType(type);
    *buf = 138544386;
    selfCopy14 = self;
    v71 = 2114;
    v72 = v63;
    v73 = 2114;
    v74 = topicCopy;
    v75 = 1024;
    *v76 = valueCopy;
    *&v76[4] = 2114;
    *&v76[6] = v16;
    _os_log_impl(&dword_1D9356000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@) allowsFallbackToDefaultPreferablyNonSilentToneForInvalidPersistedValue:(%{BOOL}u). Returning: %{public}@.", buf, 0x30u);
  }

  return v16;
}

- (id)currentToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v50 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v8 = TLLogToneManagement(topicCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromTLAlertType(type);
    v42 = 138543874;
    selfCopy10 = self;
    v44 = 2114;
    v45 = v9;
    v46 = 2114;
    v47 = topicCopy;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@).", &v42, 0x20u);
  }

  if ([TLAlert _currentOverridePolicyForType:type]!= 1)
  {
    goto LABEL_7;
  }

  v10 = @"<none>";
  v12 = TLLogToneManagement(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertType(type);
    v42 = 138543874;
    selfCopy10 = self;
    v44 = 2114;
    v45 = v13;
    v46 = 2114;
    v47 = v10;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Falling back to none due to alert override policy. toneIdentifier = %{public}@.", &v42, 0x20u);
  }

  if (!v10)
  {
LABEL_7:
    if (topicCopy)
    {
      if (type == 13)
      {
        v17 = [(__CFString *)topicCopy isEqualToString:@"TLAlertTopicAlarmGoToSleep"];
        if (v17)
        {
          v10 = TLLogToneManagement(v17, v18);
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
LABEL_29:

LABEL_30:
            v10 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topicCopy];
            v25 = TLLogToneManagement(v10, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = NSStringFromTLAlertType(type);
              v42 = 138543874;
              selfCopy10 = self;
              v44 = 2114;
              v45 = v26;
              v46 = 2114;
              v47 = v10;
              _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Falling back to default due missing setting in Preferences. toneIdentifier = %{public}@.", &v42, 0x20u);
            }

            goto LABEL_33;
          }

          v19 = NSStringFromTLAlertType(0xDuLL);
          v42 = 138543874;
          selfCopy10 = self;
          v44 = 2114;
          v45 = v19;
          v46 = 2114;
          v47 = topicCopy;
          _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Skipping Preferences lookup for topic %{public}@.", &v42, 0x20u);
LABEL_28:

          goto LABEL_29;
        }
      }

      else if (type == 2)
      {
        if (([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"]& 1) != 0 || ([(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"]& 1) != 0)
        {
          v16 = 1;
        }

        else
        {
          v16 = [(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"];
        }

        goto LABEL_20;
      }
    }

    v16 = 0;
LABEL_20:
    v10 = [(TLToneManager *)self _currentToneIdentifierForAlertType:type topic:topicCopy];
    v21 = TLLogToneManagement(v10, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromTLAlertType(type);
      v42 = 138543874;
      selfCopy10 = self;
      v44 = 2114;
      v45 = v22;
      v46 = 2114;
      v47 = v10;
      _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method: toneIdentifier = %{public}@.", &v42, 0x20u);
    }

    if (!v16 || (v14 = [(__CFString *)v10 isEqualToString:@"<none>"], (v14 & 1) != 0))
    {
      if (v10)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v19 = TLLogToneManagement(v14, v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = NSStringFromTLAlertType(type);
      v42 = 138543874;
      selfCopy10 = self;
      v44 = 2114;
      v45 = v23;
      v46 = 2114;
      v47 = @"<none>";
      _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method was not %{public}@; ignoring it.", &v42, 0x20u);
    }

    goto LABEL_28;
  }

LABEL_33:
  switch(type)
  {
    case 18:
      v29 = [(TLToneManager *)self currentToneIdentifierForAlertType:2 topic:topicCopy];

      v37 = TLLogToneManagement(v35, v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = NSStringFromTLAlertType(0x12uLL);
        v42 = 138543874;
        selfCopy10 = self;
        v44 = 2114;
        v45 = v38;
        v46 = 2114;
        v47 = v29;
        _os_log_impl(&dword_1D9356000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Detected alert type for emergency alert. Resolving to current tone identifier for text messages: toneIdentifier = %{public}@.", &v42, 0x20u);
      }

      v30 = v29;
      goto LABEL_48;
    case 3:
      v29 = [(TLToneManager *)self currentToneIdentifierForAlertType:2 topic:topicCopy];
      if (![v29 isEqualToString:@"<none>"])
      {
        v30 = v10;
        goto LABEL_48;
      }

      v30 = @"<none>";

      v31 = TLLogToneManagement(v32, v33);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v34 = NSStringFromTLAlertType(3uLL);
        v42 = 138543874;
        selfCopy10 = self;
        v44 = 2114;
        v45 = v34;
        v46 = 2114;
        v47 = v30;
        _os_log_impl(&dword_1D9356000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Detected alert type for text message in conversation. toneIdentifier = %{public}@.", &v42, 0x20u);
      }

      goto LABEL_43;
    case 2:
      v14 = [(__CFString *)topicCopy isEqualToString:@"TLAlertTopicTextMessageInConversation"];
      if (v14)
      {
        v14 = [(__CFString *)v10 isEqualToString:@"<none>"];
        if ((v14 & 1) == 0)
        {

          v29 = TLLogToneManagement(v27, v28);
          v30 = @"texttone:Text-Message-Alert-In-Conversation";
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
LABEL_48:

            v10 = v30;
            break;
          }

          v31 = NSStringFromTLAlertType(2uLL);
          v42 = 138543874;
          selfCopy10 = self;
          v44 = 2114;
          v45 = v31;
          v46 = 2114;
          v47 = @"texttone:Text-Message-Alert-In-Conversation";
          _os_log_impl(&dword_1D9356000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) […]: Detected topic for text message in conversation. toneIdentifier = %{public}@.", &v42, 0x20u);
LABEL_43:

          goto LABEL_48;
        }
      }

      break;
  }

  v39 = TLLogToneManagement(v14, v15);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = NSStringFromTLAlertType(type);
    v42 = 138544130;
    selfCopy10 = self;
    v44 = 2114;
    v45 = v40;
    v46 = 2114;
    v47 = topicCopy;
    v48 = 2114;
    v49 = v10;
    _os_log_impl(&dword_1D9356000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentToneIdentifierForAlertType:(%{public}@) topic:(%{public}@). Returning: %{public}@.", &v42, 0x2Au);
  }

  return v10;
}

- (void)setCurrentToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  topicCopy = topic;
  v10 = [topicCopy length];
  v12 = TLLogToneManagement(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      v14 = NSStringFromTLAlertType(type);
      *v26 = 138543874;
      *&v26[4] = identifierCopy;
      *&v26[12] = 2114;
      *&v26[14] = v14;
      *&v26[22] = 2114;
      v27 = topicCopy;
      v15 = "setCurrentToneIdentifier:@%{public}@ forAlertType:%{public}@ topic:@%{public}@";
      v16 = v12;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, v15, v26, v17);
    }
  }

  else if (v13)
  {
    v14 = NSStringFromTLAlertType(type);
    *v26 = 138543618;
    *&v26[4] = identifierCopy;
    *&v26[12] = 2114;
    *&v26[14] = v14;
    v15 = "setCurrentToneIdentifier:@%{public}@ forAlertType:%{public}@";
    v16 = v12;
    v17 = 22;
    goto LABEL_6;
  }

  v18 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v19 = v18;
  if (v10 && v18)
  {
    v20 = [(__CFString *)v18 stringByAppendingString:@"-per-account"];

    v19 = v20;
  }

  if (v19)
  {
    if (self->_shouldUseServiceToAccessTonePreferences)
    {
      if (![(TLToneManager *)self _setToneIdentifierUsingService:identifierCopy keyedByTopic:topicCopy forPreferenceKey:v19])
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
      if (!v21)
      {
        goto LABEL_32;
      }

      v22 = v21;
      if (v10)
      {
        v23 = CFPreferencesCopyAppValue(v19, v21);
        if (v23)
        {
          v24 = v23;
          v25 = [v23 mutableCopy];
          CFRelease(v24);
        }

        else if ([identifierCopy length])
        {
          v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        else
        {
          v25 = 0;
        }

        if ([identifierCopy length])
        {
          [v25 setObject:identifierCopy forKey:topicCopy];
        }

        else
        {
          [v25 removeObjectForKey:topicCopy];
          if (![v25 count])
          {

            v25 = 0;
          }
        }

        CFPreferencesSetAppValue(v19, v25, v22);
      }

      else
      {
        CFPreferencesSetAppValue(v19, identifierCopy, v21);
      }

      CFRelease(v22);
    }

    [(TLToneManager *)self _didSetTonePreferenceSuccessfullyWithKey:v19 inDomain:+[TLPreferencesUtilities usingPreferencesOfKind:"preferencesDomain"], 1];
    if ((!identifierCopy || ([identifierCopy isEqualToString:@"<none>"] & 1) == 0) && +[TLAlert _currentOverridePolicyForType:](TLAlert, "_currentOverridePolicyForType:", type) == 1)
    {
      [TLAlert _setCurrentOverridePolicy:0 forType:type];
    }
  }

LABEL_32:
}

- (id)currentToneNameForAlertType:(int64_t)type
{
  v4 = [(TLToneManager *)self currentToneIdentifierForAlertType:type];
  v5 = [(TLToneManager *)self nameForToneIdentifier:v4];

  return v5;
}

- (unsigned)currentToneSoundIDForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v7 = [(TLToneManager *)self currentToneIdentifierForAlertType:type topic:topicCopy];
  v8 = [(TLToneManager *)self _soundForToneIdentifier:v7];
  if (!v8)
  {
    v9 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topicCopy];
    v8 = [(TLToneManager *)self _soundForToneIdentifier:v9];
  }

  soundID = [v8 soundID];

  return soundID;
}

+ (id)_defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v23 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v8 = topicCopy;
  if ((type - 1) > 0x1C)
  {
    v9 = 0;
  }

  else
  {
    v9 = _TLToneManagerDefaultIdentifiers[type - 1];
    topicCopy = [(__CFString *)v9 length];
    if (!topicCopy)
    {
      v10 = @"<none>";

      v9 = v10;
    }

    switch(type)
    {
      case 1:
        if ([v8 isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"])
        {
          v11 = @"texttone:FaceTime-Group-Invitation";
          goto LABEL_48;
        }

        topicCopy = [v8 isEqualToString:@"TLAlertTopicIncomingCallFaceTimeParticipantJoined"];
        if (topicCopy)
        {
          v11 = @"texttone:FaceTime-Participant-Joined";
          goto LABEL_48;
        }

        break;
      case 2:
        if ([v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"])
        {
          v11 = @"texttone:Text-Message-Acknowledgment-Heart";
          goto LABEL_48;
        }

        if ([v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"])
        {
          v11 = @"texttone:Text-Message-Acknowledgment-Thumbs-Up";
          goto LABEL_48;
        }

        if ([v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"])
        {
          v11 = @"texttone:Text-Message-Acknowledgment-Thumbs-Down";
          goto LABEL_48;
        }

        if ([v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"])
        {
          v11 = @"texttone:Text-Message-Acknowledgment-HaHa";
          goto LABEL_48;
        }

        if ([v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"])
        {
          v11 = @"texttone:Text-Message-Acknowledgment-Exclamation";
          goto LABEL_48;
        }

        topicCopy = [v8 isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"];
        if (topicCopy)
        {
          v11 = @"texttone:Text-Message-Acknowledgment-Question-Mark";
          goto LABEL_48;
        }

        break;
      case 4:
        topicCopy = _os_feature_enabled_impl();
        if (topicCopy)
        {
          v11 = @"texttone:Droplet";
          goto LABEL_48;
        }

        break;
      case 5:
        if ([v8 isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"] & 1) != 0 || (topicCopy = objc_msgSend(v8, "isEqualToString:", @"com.apple.mobilemail.bulletin-subsection.ThreadNotify"), (topicCopy))
        {
          v11 = @"texttone:New Mail";
          goto LABEL_48;
        }

        break;
      case 9:
        if ([v8 isEqualToString:@"TLAlertTopicPhotosNotificationSharingPost"])
        {
          v11 = @"texttone:Photos Sharing Post";
          goto LABEL_48;
        }

        topicCopy = [v8 isEqualToString:@"TLAlertTopicPhotosNotificationMemory"];
        if (topicCopy)
        {
          v11 = @"texttone:Photos Memory";
          goto LABEL_48;
        }

        break;
      case 13:
        if ([v8 isEqualToString:@"TLAlertTopicAlarmGoToSleep"])
        {
          v11 = @"texttone:Go-To-Sleep";
          goto LABEL_48;
        }

        if (([v8 isEqualToString:@"TLAlertTopicAlarmWakeUp"] & 1) == 0)
        {
          goto LABEL_41;
        }

        v11 = @"alarmWakeUp:Early_Riser";
        goto LABEL_48;
      case 14:
LABEL_41:
        topicCopy = _os_feature_enabled_impl();
        if ((topicCopy & 1) == 0)
        {
          break;
        }

        v11 = @"system:Radial";
        goto LABEL_48;
      case 16:
        if ([v8 isEqualToString:@"TLAlertTopicSystemNotificationBackgroundMicUsage"])
        {
          v11 = @"texttone:System Background Mic Usage";
          goto LABEL_48;
        }

        if ([v8 isEqualToString:@"TLAlertTopicSystemNotificationDoorbell"])
        {
          v11 = @"system:Doorbell";
          goto LABEL_48;
        }

        if ([v8 isEqualToString:@"TLAlertTopicSystemNotificationElevationAlert"])
        {
          v11 = @"texttone:Elevation Alert";
          goto LABEL_48;
        }

        topicCopy = [v8 isEqualToString:@"TLAlertTopicSystemNotificationHeadphoneAudioExposure"];
        if ((topicCopy & 1) == 0)
        {
          break;
        }

        v11 = @"texttone:Headphone-Audio-Exposure-Limit-Exceeded";
        goto LABEL_48;
      case 17:
        if ([v8 isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
        {
          v11 = @"texttone:App-Notification-Critical-Alert";
          goto LABEL_48;
        }

        topicCopy = [v8 isEqualToString:@"TLAlertTopicAppNotificationFirstParty"];
        if (topicCopy)
        {
          break;
        }

LABEL_46:
        topicCopy = _os_feature_enabled_impl();
        if ((topicCopy & 1) == 0)
        {
          break;
        }

        v11 = @"texttone:Rebound";
        goto LABEL_48;
      case 20:
        topicCopy = [v8 isEqualToString:@"TLAlertTopicPassbookNFCScanComplete"];
        if ((topicCopy & 1) == 0)
        {
          break;
        }

        v11 = @"texttone:Passbook-NFC-Scan-Complete";
        goto LABEL_48;
      case 22:
        if ([v8 isEqualToString:@"TLAlertTopicSOSCountdownTick"])
        {
          v11 = @"texttone:SOS-Countdown-Tick";
LABEL_48:

          v9 = v11;
          break;
        }

        if ([v8 isEqualToString:@"TLAlertTopicSOSDialStart"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicSOSButtonChordingTimeout") & 1) != 0 || (topicCopy = objc_msgSend(v8, "isEqualToString:", @"TLAlertTopicSOSCountdownPreannounce"), (topicCopy))
        {
          v11 = @"<none>";
          goto LABEL_48;
        }

        break;
      case 25:
        topicCopy = [v8 isEqualToString:@"TLAlertTopicHealthUrgent"];
        if ((topicCopy & 1) == 0)
        {
          break;
        }

        v11 = @"texttone:Health-Urgent";
        goto LABEL_48;
      case 29:
        goto LABEL_46;
      default:
        break;
    }
  }

  v12 = TLLogToneManagement(topicCopy, v7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertType(type);
    v15 = 138544130;
    selfCopy = self;
    v17 = 2114;
    v18 = v13;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: +_defaultToneIdentifierForAlertType:(%{public}@) topic:(%{public}@). Returning: %{public}@.", &v15, 0x2Au);
  }

  return v9;
}

+ (id)_defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v30 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  if ((type - 1) > 0x1C)
  {
    v7 = 0;
  }

  else
  {
    v7 = _TLToneManagerDefaultWatchIdentifiers[type - 1];
    if (![(__CFString *)v7 length])
    {
      v8 = @"<none>";

      v7 = v8;
    }
  }

  if (type == 28 || type == 1)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v10 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

    v11 = [v10 caseInsensitiveCompare:@"us"];
    if (type == 1)
    {
      if (([topicCopy isEqualToString:@"_TLAlertTopicIncomingCallDeemphasized"] & 1) == 0)
      {
LABEL_14:
        if (v11)
        {

          v7 = @"texttone:Incoming-Call-Haptic-UK";
        }

        goto LABEL_16;
      }
    }

    else if (![topicCopy isEqualToString:@"_TLAlertTopicClassroomDeemphasized"])
    {
      goto LABEL_14;
    }

    if (v11)
    {
      v7 = @"texttone:Incoming-Call-Haptic-Deemphasized-UK";
    }

    else
    {
      v7 = @"texttone:Incoming-Call-Haptic-Deemphasized-US";
    }

LABEL_16:
  }

  v12 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  supportsNanoEncore = [v12 supportsNanoEncore];

  if (supportsNanoEncore)
  {
    if (type == 1)
    {
      v16 = [topicCopy isEqualToString:@"_TLAlertTopicIncomingCallDeemphasized"];

      if (v16)
      {
        v7 = @"system:Pebbles-Deemphasized";
      }

      else
      {
        v7 = @"system:Pebbles";
      }

LABEL_53:
      if ([topicCopy isEqualToString:@"TLAlertTopicIncomingCallFaceTimeGroupInvitation"])
      {
        v17 = @"texttone:FaceTime-Group-Invitation";
      }

      else
      {
        v14 = [topicCopy isEqualToString:@"TLAlertTopicIncomingCallFaceTimeParticipantJoined"];
        if ((v14 & 1) == 0)
        {
          goto LABEL_128;
        }

        v17 = @"texttone:FaceTime-Participant-Joined";
      }

      goto LABEL_127;
    }

    if (type > 10)
    {
      if (type > 18)
      {
        if (type != 19)
        {
          if (type != 20)
          {
            if (type == 24)
            {
LABEL_34:
              if ([topicCopy isEqualToString:@"TLAlertTopicWalkieTalkieActiveStart"])
              {
                v17 = @"texttone:Walkie-Talkie-Active-Start-Haptic";
              }

              else
              {
                v14 = [topicCopy isEqualToString:@"TLAlertTopicWalkieTalkieActiveEnd"];
                if ((v14 & 1) == 0)
                {
                  goto LABEL_128;
                }

                v17 = @"texttone:Walkie-Talkie-Active-End-Haptic";
              }

              goto LABEL_127;
            }

            goto LABEL_52;
          }

LABEL_25:
          if ([topicCopy isEqualToString:@"TLAlertTopicPassbookGeofence"])
          {

            v7 = @"texttone:Passbook-Geofence-Haptic";
          }

          v14 = [topicCopy isEqualToString:@"TLAlertTopicPassbookNFCScanComplete"];
          if ((v14 & 1) == 0)
          {
            goto LABEL_128;
          }

          v17 = @"texttone:Passbook-NFC-Scan-Complete";
LABEL_127:

          v7 = v17;
          goto LABEL_128;
        }

LABEL_36:
        if ([topicCopy isEqualToString:@"TLAlertTopicActivityGoalAttained"])
        {
          v17 = @"texttone:Activity-Goal-Attained-Haptic";
        }

        else if ([topicCopy isEqualToString:@"TLAlertTopicActivityGoalBehind"])
        {
          v17 = @"texttone:Activity-Goal-Behind-Haptic";
        }

        else
        {
          v14 = [topicCopy isEqualToString:@"TLAlertTopicActivityFriendsGoalAttained"];
          if ((v14 & 1) == 0)
          {
            goto LABEL_128;
          }

          v17 = @"texttone:Activity-Friends-Goal-Attained-Haptic";
        }

        goto LABEL_127;
      }

      if (type != 11)
      {
        if (type == 17)
        {

          v7 = @"texttone:Globe";
LABEL_84:
          if ([topicCopy isEqualToString:@"TLAlertTopicAppNotificationCriticalAlert"])
          {
            v17 = @"texttone:App-Notification-Critical-Alert";
          }

          else
          {
            v14 = [topicCopy isEqualToString:@"TLAlertTopicAppNotificationFirstParty"];
            if ((v14 & 1) == 0)
            {
              goto LABEL_128;
            }

            v17 = @"texttone:App-Notification-First-Party-Haptic";
          }

          goto LABEL_127;
        }

        goto LABEL_52;
      }

LABEL_64:
      v17 = @"texttone:Moment";
      goto LABEL_127;
    }

    if (type > 4)
    {
      if (type == 5)
      {

        v7 = @"texttone:Resonate";
LABEL_75:
        if (([topicCopy isEqualToString:@"com.apple.mobilemail.bulletin-subsection.VIP"] & 1) == 0)
        {
          v14 = [topicCopy isEqualToString:@"com.apple.mobilemail.bulletin-subsection.ThreadNotify"];
          if ((v14 & 1) == 0)
          {
            goto LABEL_128;
          }
        }

        v17 = @"texttone:New-Mail-Haptic";
        goto LABEL_127;
      }

      if (type == 10)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (type == 2)
      {

        v7 = @"texttone:Resonate";
        goto LABEL_72;
      }

      if (type == 4)
      {
        v17 = @"texttone:Resonate";
        goto LABEL_127;
      }
    }
  }

  else
  {
    switch(type)
    {
      case 19:
        goto LABEL_36;
      case 24:
        goto LABEL_34;
      case 20:
        goto LABEL_25;
    }
  }

LABEL_52:
  if (type == 1)
  {
    goto LABEL_53;
  }

  if (type <= 15)
  {
    if (type <= 8)
    {
      if (type != 2)
      {
        if (type != 5)
        {
          goto LABEL_128;
        }

        goto LABEL_75;
      }

LABEL_72:
      if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHeart"])
      {
        v17 = @"texttone:Text-Message-Acknowledgment-Heart";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsUp"])
      {
        v17 = @"texttone:Text-Message-Acknowledgment-Thumbs-Up";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentThumbsDown"])
      {
        v17 = @"texttone:Text-Message-Acknowledgment-Thumbs-Down";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentHaHa"])
      {
        v17 = @"texttone:Text-Message-Acknowledgment-HaHa";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentExclamation"])
      {
        v17 = @"texttone:Text-Message-Acknowledgment-Exclamation";
      }

      else
      {
        v14 = [topicCopy isEqualToString:@"TLAlertTopicTextMessageAcknowledgmentQuestionMark"];
        if ((v14 & 1) == 0)
        {
          goto LABEL_128;
        }

        v17 = @"texttone:Text-Message-Acknowledgment-Question-Mark";
      }

      goto LABEL_127;
    }

    if (type == 9)
    {
      if ([topicCopy isEqualToString:@"TLAlertTopicPhotosNotificationSharingPost"])
      {
        v17 = @"texttone:Photos Sharing Post";
      }

      else
      {
        v14 = [topicCopy isEqualToString:@"TLAlertTopicPhotosNotificationMemory"];
        if ((v14 & 1) == 0)
        {
          goto LABEL_128;
        }

        v17 = @"texttone:Photos Memory";
      }

      goto LABEL_127;
    }

    if (type != 13)
    {
      goto LABEL_128;
    }

    if ([topicCopy isEqualToString:@"TLAlertTopicAlarmGoToSleep"])
    {
      v18 = @"texttone:Go-To-Sleep";
    }

    else
    {
      if (![topicCopy isEqualToString:@"TLAlertTopicAlarmWakeUp"])
      {
LABEL_105:
        v14 = [topicCopy isEqualToString:@"TLAlertTopicAlarmNightstand"];
        if ((v14 & 1) == 0)
        {
          goto LABEL_128;
        }

        v17 = @"texttone:Alarm-Nightstand-Haptic";
        goto LABEL_127;
      }

      v18 = @"alarmWakeUp:Early_Riser";
    }

    v7 = v18;
    goto LABEL_105;
  }

  if (type <= 21)
  {
    if (type == 16)
    {
      if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationBackgroundMicUsage"])
      {
        v17 = @"texttone:System Background Mic Usage";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationDoorbell"])
      {
        v17 = @"system:Doorbell";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicSystemNotificationElevationAlert"])
      {
        v17 = @"texttone:Elevation Alert";
      }

      else
      {
        v14 = [topicCopy isEqualToString:@"TLAlertTopicSystemNotificationHeadphoneAudioExposure"];
        if ((v14 & 1) == 0)
        {
          goto LABEL_128;
        }

        v17 = @"texttone:Headphone-Audio-Exposure-Limit-Exceeded";
      }

      goto LABEL_127;
    }

    if (type != 17)
    {
      goto LABEL_128;
    }

    goto LABEL_84;
  }

  if (type != 22)
  {
    if (type == 25)
    {
      v14 = [topicCopy isEqualToString:@"TLAlertTopicHealthUrgent"];
      if ((v14 & 1) == 0)
      {
        goto LABEL_128;
      }

      v17 = @"texttone:Health-Urgent";
    }

    else
    {
      if (type != 27)
      {
        goto LABEL_128;
      }

      if ([topicCopy isEqualToString:@"TLAlertTopicHandwashingReminder"])
      {
        v17 = @"texttone:Handwashing-Reminder";
      }

      else if ([topicCopy isEqualToString:@"TLAlertTopicHandwashingSessionStart"])
      {
        v17 = @"texttone:Handwashing-Session-Start";
      }

      else
      {
        v14 = [topicCopy isEqualToString:@"TLAlertTopicHandwashingSessionEnd"];
        if (!v14)
        {
          goto LABEL_128;
        }

        v17 = @"texttone:Handwashing-Session-End";
      }
    }

    goto LABEL_127;
  }

  if ([topicCopy isEqualToString:@"TLAlertTopicSOSCountdownTick"])
  {
    v17 = @"texttone:SOS-Countdown-Tick";
    goto LABEL_127;
  }

  if ([topicCopy isEqualToString:@"TLAlertTopicSOSDialStart"] || objc_msgSend(topicCopy, "isEqualToString:", @"TLAlertTopicSOSButtonChordingTimeout") || (v14 = objc_msgSend(topicCopy, "isEqualToString:", @"TLAlertTopicSOSCountdownPreannounce"), v14))
  {
    v17 = @"<none>";
    goto LABEL_127;
  }

LABEL_128:
  v19 = TLLogToneManagement(v14, v15);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromTLAlertType(type);
    v22 = 138544130;
    selfCopy = self;
    v24 = 2114;
    v25 = v20;
    v26 = 2114;
    v27 = topicCopy;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: +_defaultWatchToneIdentifierForAlertType:(%{public}@) topic:(%{public}@). Returning: %{public}@.", &v22, 0x2Au);
  }

  return v7;
}

- (id)defaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _defaultToneIdentifierForAlertType:type topic:topicCopy];

  return v6;
}

- (id)defaultWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _defaultWatchToneIdentifierForAlertType:type topic:topicCopy];

  return v6;
}

- (id)_defaultRingtoneName
{
  v2 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  wantsModernDefaultRingtone = [v2 wantsModernDefaultRingtone];

  if (!wantsModernDefaultRingtone || (TLLocalizedString(@"RINGTONE_PICKER_DEFAULT_MODERN_RINGTONE_NAME"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = TLLocalizedString(@"RINGTONE_PICKER_DEFAULT_RINGTONE_NAME");
  }

  return v4;
}

- (id)_defaultRingtonePath
{
  defaultRingtoneIdentifier = [(TLToneManager *)self defaultRingtoneIdentifier];
  v4 = [(TLToneManager *)self filePathForToneIdentifier:defaultRingtoneIdentifier];

  return v4;
}

- (id)_defaultPreferablyNonSilentToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v6 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topic];
  v7 = [v6 isEqualToString:@"<none>"];
  if (type == 5 && v7)
  {
    v8 = [(TLToneManager *)self defaultToneIdentifierForAlertType:5 topic:@"com.apple.mobilemail.bulletin-subsection.VIP"];

    v6 = v8;
  }

  return v6;
}

- (BOOL)hasSpecificDefaultToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  if ([topicCopy length])
  {
    v7 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type];
    v8 = [(TLToneManager *)self defaultToneIdentifierForAlertType:type topic:topicCopy];
    v9 = [v8 isEqualToString:v7] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)_soundForToneIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v5 = [(TLToneManager *)self _aliasForToneIdentifier:identifierCopy];
  if (-[TLToneManager _toneWithIdentifierIsSystemTone:](self, "_toneWithIdentifierIsSystemTone:", v5) || [v5 isEqualToString:@"<none>"])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__TLToneManager__soundForToneIdentifier___block_invoke;
    v17[3] = &unk_1E8578AE0;
    v17[4] = self;
    v18 = v5;
    v19 = &v20;
    [(TLToneManager *)self _performBlockInAccessQueue:v17];
  }

  else if ([(TLToneManager *)self _toneWithIdentifierIsITunesRingtone:v5]|| [(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v5]|| [(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:v5]|| (v6 = [(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:v5], v6))
  {
    if (_soundForToneIdentifier__sOnce != -1)
    {
      [TLToneManager _soundForToneIdentifier:];
    }

    v6 = [(TLToneManager *)self toneWithIdentifierIsValid:v5];
    if (v6)
    {
      v12 = _soundForToneIdentifier__sSoundCacheAccessQueue;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __41__TLToneManager__soundForToneIdentifier___block_invoke_3;
      v13[3] = &unk_1E85789C8;
      v16 = &v20;
      v14 = v5;
      selfCopy = self;
      dispatch_sync(v12, v13);
    }
  }

  v8 = TLLogToneManagement(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v21[5];
    *buf = 138543618;
    v27 = identifierCopy;
    v28 = 2114;
    v29 = v9;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "_soundForToneIdentifier %{public}@ ==> %{public}@", buf, 0x16u);
  }

  v10 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __41__TLToneManager__soundForToneIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 actualSound];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

uint64_t __41__TLToneManager__soundForToneIdentifier___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _soundForToneIdentifier__sSoundCache;
  _soundForToneIdentifier__sSoundCache = v0;

  _soundForToneIdentifier__sSoundCacheAccessQueue = dispatch_queue_create("com.apple.ToneLibrary.TLToneManager.soundCacheAccessQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __41__TLToneManager__soundForToneIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [_soundForToneIdentifier__sSoundCache objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v13 = [*(a1 + 40) filePathForToneIdentifier:*(a1 + 32)];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:? isDirectory:?];
    v6 = [*(a1 + 40) _toneWithIdentifierIsAlarmWakeUp:*(a1 + 32)];
    v7 = [TLSystemSound alloc];
    v8 = [(TLSystemSound *)v7 initWithSoundFileURL:v5 soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:v6];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if ([*(*(*(a1 + 48) + 8) + 40) soundID])
    {
      [_soundForToneIdentifier__sSoundCache setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 32)];
    }

    else
    {
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = 0;
    }
  }
}

- (id)_filePathForToneIdentifier:(id)identifier isValid:(BOOL *)valid
{
  v33 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__TLToneManager__filePathForToneIdentifier_isValid___block_invoke;
  v14[3] = &unk_1E8578B80;
  v7 = identifierCopy;
  v15 = v7;
  selfCopy = self;
  v17 = &v25;
  v18 = &v19;
  v8 = [(TLToneManager *)self _performBlockInAccessQueue:v14];
  if (valid)
  {
    *valid = *(v26 + 24);
  }

  v10 = TLLogToneManagement(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v20[5];
    *buf = 138543618;
    v30 = v7;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "filePathForToneIdentifier: %{public}@ ==> %{public}@", buf, 0x16u);
  }

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

void __52__TLToneManager__filePathForToneIdentifier_isValid___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) length])
  {
    v6 = 0;
    goto LABEL_27;
  }

  v2 = [*(a1 + 40) _aliasForToneIdentifier:*(a1 + 32)];
  if ([*(a1 + 40) _toneWithIdentifierIsDefaultRingtone:v2])
  {
    v3 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v4 = [v3 wantsModernDefaultRingtone];

    if (v4)
    {
      v5 = @"Reflection";
    }

    else
    {
      v5 = @"Opening";
    }

    goto LABEL_9;
  }

  v7 = [*(a1 + 40) _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v2];
  v8 = *(a1 + 40);
  if (v7)
  {
    v5 = [v8 _fileNameFromToneIdentifier:v2 withPrefix:@"system:"];
LABEL_9:
    v9 = [*(a1 + 40) _systemRingtoneDirectory];
    if (_os_feature_enabled_impl())
    {
      v10 = [(__CFString *)v5 stringByAppendingString:@"-EncoreInfinitum"];
      v11 = [v9 stringByAppendingPathComponent:v10];
      v6 = [v11 stringByAppendingPathExtension:@"m4r"];

      v12 = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [v12 fileExistsAtPath:v6];

      if ((v13 & 1) == 0)
      {

        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = +[TLCapabilitiesManager sharedCapabilitiesManager];
    v15 = [v14 supportsReflectionRemixes];

    if (v15 && !v6)
    {
      v16 = [(__CFString *)v5 stringByAppendingString:@"-EncoreRemix"];
      v17 = [v9 stringByAppendingPathComponent:v16];
      v6 = [v17 stringByAppendingPathExtension:@"m4r"];

      v18 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [v18 fileExistsAtPath:v6];

      if ((v19 & 1) == 0)
      {

        v6 = 0;
      }
    }

    if (!v6)
    {
      v20 = [v9 stringByAppendingPathComponent:v5];
      v6 = [v20 stringByAppendingPathExtension:@"m4r"];
    }

    goto LABEL_21;
  }

  v25 = [v8 _toneWithIdentifierIsAlarmWakeUp:v2];
  v26 = *(a1 + 40);
  if (v25)
  {
    v27 = [v26 _fileNameFromToneIdentifier:v2 withPrefix:@"alarmWakeUp:"];
    v28 = [*(a1 + 40) _alarmWakeUpRingtoneDirectory];
    v29 = [v28 stringByAppendingPathComponent:v27];

    v6 = [v29 stringByAppendingPathExtension:@"m4r"];
  }

  else
  {
    v30 = [v26 _toneWithIdentifierIsITunesRingtone:v2];
    v31 = *(a1 + 40);
    if (v30)
    {
      v5 = [v31[2] objectForKey:v2];
      v32 = [(__CFString *)v5 filePath];
      v6 = v32;
      if (v32)
      {
        LOBYTE(v32) = [objc_opt_class() _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:v32];
      }

      *(*(*(a1 + 48) + 8) + 24) = v32;
      goto LABEL_22;
    }

    if ([v31 _toneWithIdentifierIsSystemTone:v2])
    {
      v33 = [*(*(a1 + 40) + 32) objectForKey:v2];
      v5 = v33;
      if (!v33 || (-[__CFString soundFileURL](v33, "soundFileURL"), v34 = objc_claimAutoreleasedReturnValue(), [v34 path], v6 = objc_claimAutoreleasedReturnValue(), v34, !v6))
      {
        v6 = 0;
        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_22;
      }

      v35 = [MEMORY[0x1E696AC08] defaultManager];
      *(*(*(a1 + 48) + 8) + 24) = [v35 fileExistsAtPath:v6];

      if (*(*(*(a1 + 48) + 8) + 24))
      {
LABEL_22:

        goto LABEL_23;
      }

      v9 = TLLogToneManagement(v36, v37);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 40);
        v39 = 138543618;
        v40 = v38;
        v41 = 2114;
        v42 = v6;
        _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: File DOES NOT exist at path %{public}@.", &v39, 0x16u);
      }

LABEL_21:

      goto LABEL_22;
    }

    v6 = v2;
  }

LABEL_23:
  if (!v6 || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v21 = [*(a1 + 40) _defaultRingtonePath];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v6 = v21;
  }

LABEL_27:
  v22 = [v6 copy];
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;
}

- (id)_previewSoundForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = kSystemSoundID_InvalidTone;
  if (-[TLToneManager _toneWithIdentifierIsSystemTone:](self, "_toneWithIdentifierIsSystemTone:", identifierCopy) || [identifierCopy isEqualToString:@"<none>"])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__TLToneManager__previewSoundForToneIdentifier___block_invoke;
    v15[3] = &unk_1E8578B80;
    v15[4] = self;
    v16 = identifierCopy;
    v17 = &v23;
    v18 = &v19;
    [(TLToneManager *)self _performBlockInAccessQueue:v15];
  }

  else if ([(TLToneManager *)self _toneWithIdentifierIsITunesRingtone:identifierCopy]|| [(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:identifierCopy]|| [(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:identifierCopy]|| [(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:identifierCopy])
  {
    v5 = [(TLToneManager *)self filePathForToneIdentifier:identifierCopy];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
    v7 = [(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:identifierCopy];
    v8 = [TLSystemSound alloc];
    v9 = [(TLSystemSound *)v8 initWithSoundFileURL:v6 soundID:kSystemSoundID_InvalidTone requiresLongFormPlayback:v7];
    v10 = v24[5];
    v24[5] = v9;

    soundID = [v24[5] soundID];
    *(v20 + 6) = soundID;
  }

  if (*(v20 + 6) == kSystemSoundID_NoneTone)
  {
    v12 = v24[5];
    v24[5] = 0;
  }

  v13 = v24[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __48__TLToneManager__previewSoundForToneIdentifier___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) _aliasForToneIdentifier:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 32) objectForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 previewSound];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    *(*(*(a1 + 56) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) soundID];
  }
}

- (id)_nameForToneIdentifier:(id)identifier isValid:(BOOL *)valid
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__TLToneManager__nameForToneIdentifier_isValid___block_invoke;
  v10[3] = &unk_1E8578BA8;
  v10[4] = self;
  v7 = identifierCopy;
  v12 = &v14;
  validCopy = valid;
  v11 = v7;
  [(TLToneManager *)self _performBlockInAccessQueue:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __48__TLToneManager__nameForToneIdentifier_isValid___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _aliasForToneIdentifier:*(a1 + 40)];
  if (([*(a1 + 32) _toneWithIdentifierIsSystemTone:v2] & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"<none>"))
  {
    if ([v2 isEqualToString:@"<none>"])
    {
      TLLocalizedString(@"RINGTONE_PICKER_NONE");
    }

    else
    {
      [*(a1 + 32) _localizedNameOfToneWithIdentifier:v2];
    }
    v3 = ;
    v4 = v3;
    v5 = *(a1 + 56);
    if (v5)
    {
      *v5 = v3 != 0;
    }

    goto LABEL_40;
  }

  if (![v2 length])
  {
    v4 = 0;
    LOBYTE(v9) = 1;
    goto LABEL_38;
  }

  v6 = [*(a1 + 32) _toneWithIdentifierIsDefaultRingtone:v2];
  v7 = *(a1 + 32);
  if (v6)
  {
    goto LABEL_10;
  }

  v10 = [v7 _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v2];
  v11 = *(a1 + 32);
  if (v10)
  {
    v12 = [v11 _localizedNameOfToneWithIdentifier:v2];
    if (!v12)
    {
      v13 = *(a1 + 32);
      v14 = @"system:";
LABEL_26:
      v25 = [v13 _fileNameFromToneIdentifier:v2 withPrefix:v14];
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v15 = [v11 _toneWithIdentifierIsAlarmWakeUp:v2];
  v16 = *(a1 + 32);
  if (v15)
  {
    v12 = [v16 _localizedNameOfToneWithIdentifier:v2];
    if (!v12)
    {
      v13 = *(a1 + 32);
      v14 = @"alarmWakeUp:";
      goto LABEL_26;
    }

LABEL_19:
    v4 = v12;
    v8 = 0;
    LOBYTE(v9) = 1;
    goto LABEL_37;
  }

  v17 = [v16 _toneWithIdentifierIsITunesRingtone:v2];
  v18 = *(a1 + 32);
  if (v17)
  {
    v19 = [v18[2] objectForKey:v2];
    v20 = [v19 filePath];
    v21 = [v19 name];
    v4 = v21;
    if (v21)
    {
      v21 = [objc_opt_class() _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:v20];
      LODWORD(v9) = v21;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v28 = TLLogToneManagement(v21, v22);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v35 = 138544642;
      v36 = v29;
      v37 = 2114;
      v38 = v30;
      v39 = 2112;
      v40 = v19;
      v41 = 2112;
      v42 = v4;
      v43 = 2114;
      v44 = v20;
      v45 = 1024;
      v46 = v9;
      _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking validity of tone with identifier '%{public}@': %@. Name: '%@'. File path: '%{public}@'. Is valid? %{BOOL}u.", &v35, 0x3Au);
    }

LABEL_35:
    v8 = 0;
    if (v4)
    {
      goto LABEL_37;
    }

LABEL_36:
    v4 = [*(a1 + 32) _defaultRingtoneName];
    LOBYTE(v9) = 0;
    goto LABEL_37;
  }

  v23 = [v18 _toneWithIdentifierIsMediaPlaybackArchive:v2];
  v24 = *(a1 + 32);
  if (v23)
  {
    v19 = [v24 _underlyingPlaybackArchiveForToneIdentifier:*(a1 + 40)];
    v9 = [v19 displayProperties];
    v4 = [v9 title];

    LOBYTE(v9) = v4 != 0;
    goto LABEL_35;
  }

  v26 = [v24 _defaultRingtonePath];
  v27 = [v2 isEqualToString:v26];

  if (v27)
  {
    v7 = *(a1 + 32);
LABEL_10:
    v4 = [v7 _defaultRingtoneName];
    v8 = 0;
    goto LABEL_11;
  }

  v25 = v2;
LABEL_27:
  v8 = v25;
  if (!v25)
  {
    goto LABEL_36;
  }

  v4 = [v25 lastPathComponent];
LABEL_11:
  LOBYTE(v9) = 1;
  if (!v4)
  {
    goto LABEL_36;
  }

LABEL_37:

LABEL_38:
  v31 = *(a1 + 56);
  if (v31)
  {
    *v31 = v9;
  }

LABEL_40:
  v32 = [v4 copy];
  v33 = *(*(a1 + 48) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;
}

- (id)subtitleForToneIdentifier:(id)identifier
{
  v3 = [(TLToneManager *)self _underlyingPlaybackArchiveForToneIdentifier:identifier];
  displayProperties = [v3 displayProperties];
  subtitle = [displayProperties subtitle];

  return subtitle;
}

- (id)_toneIdentifierForFileAtPath:(id)path isValid:(BOOL *)valid
{
  pathCopy = path;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke;
  v15[3] = &unk_1E8578AE0;
  v7 = pathCopy;
  v16 = v7;
  selfCopy = self;
  v18 = &v19;
  [(TLToneManager *)self _performBlockInAccessQueue:v15];
  v8 = v20;
  if (valid)
  {
    *valid = v20[5] != 0;
  }

  v9 = v8[5];
  if (!v9)
  {
    defaultRingtoneIdentifier = [(TLToneManager *)self defaultRingtoneIdentifier];
    v11 = [defaultRingtoneIdentifier copy];
    v12 = v20[5];
    v20[5] = v11;

    v9 = v20[5];
  }

  v13 = v9;

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke(uint64_t a1)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  v2 = [*(a1 + 32) lastPathComponent];
  v3 = [*(a1 + 32) stringByDeletingLastPathComponent];
  v4 = [*(a1 + 40) _iTunesRingtoneDirectory];
  if (v4 && ([v3 isEqualToString:v4] & 1) != 0 || (objc_msgSend(*(a1 + 40), "_deviceITunesRingtoneDirectory"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v3, "isEqualToString:", v5), v5, v6))
  {
    v7 = *(*(a1 + 40) + 16);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_2;
    v37[3] = &unk_1E8578BD0;
    v38 = *(a1 + 32);
    v39 = &v40;
    [v7 enumerateKeysAndObjectsUsingBlock:v37];
    v8 = v38;
LABEL_15:

    goto LABEL_16;
  }

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) _defaultRingtonePath];
  LODWORD(v9) = [v9 isEqualToString:v10];

  v11 = *(a1 + 40);
  if (v9)
  {
    v12 = [v11 defaultRingtoneIdentifier];
    v8 = v41[5];
    v41[5] = v12;
    goto LABEL_15;
  }

  v13 = [v11 _systemRingtoneDirectory];
  v14 = [v3 isEqualToString:v13];

  if (v14)
  {
    v8 = [v2 stringByDeletingPathExtension];
    v15 = [@"system:" stringByAppendingString:v8];
    v16 = v41[5];
    v41[5] = v15;

    goto LABEL_15;
  }

  v17 = [*(a1 + 40) _systemSoundDirectory];
  v18 = [v3 isEqualToString:v17];

  if (v18 & 1) != 0 || ([*(a1 + 40) _systemEmbeddedSoundDirectory], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v3, "isEqualToString:", v19), v19, (v20) || (objc_msgSend(*(a1 + 40), "_systemEmbeddedClassicSoundDirectory"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v3, "isEqualToString:", v21), v21, (v22) || (objc_msgSend(*(a1 + 40), "_systemEmbeddedModernSoundDirectory"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v3, "isEqualToString:", v23), v23, (v24) || (objc_msgSend(*(a1 + 40), "_systemWatchSoundDirectory"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v3, "isEqualToString:", v25), v25, v26))
  {
    v27 = *(*(a1 + 40) + 32);
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_3;
    v34 = &unk_1E8578BF8;
    v35 = *(a1 + 32);
    v36 = &v40;
    [v27 enumerateKeysAndObjectsUsingBlock:&v31];
    v8 = v35;
    goto LABEL_15;
  }

LABEL_16:
  v28 = [v41[5] copy];
  v29 = *(*(a1 + 48) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  _Block_object_dispose(&v40, 8);
}

void __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [a3 filePath];
  if ([v8 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __54__TLToneManager__toneIdentifierForFileAtPath_isValid___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [a3 soundFileURL];
  v9 = [v8 path];

  if ([v9 isEqualToString:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)_toneWithIdentifierIsValid:(id)valid
{
  v48 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v5 = [validCopy length];
  if (v5)
  {
    v7 = [(TLToneManager *)self _aliasForToneIdentifier:validCopy];
    if ([(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:v7])
    {
      *(v39 + 24) = 1;
    }

    else if ([(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:v7])
    {
      v8 = [(TLToneManager *)self _fileNameFromToneIdentifier:v7 withPrefix:@"system:"];
      _systemRingtoneDirectory = [(TLToneManager *)self _systemRingtoneDirectory];
      v10 = [_systemRingtoneDirectory stringByAppendingPathComponent:v8];

      v11 = [v10 stringByAppendingPathExtension:@"m4r"];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v13 = [defaultManager fileExistsAtPath:v11];

      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v20 = v8;
        v8 = [v20 stringByAppendingString:@"-EncoreInfinitum"];

        _systemRingtoneDirectory2 = [(TLToneManager *)self _systemRingtoneDirectory];
        v22 = [_systemRingtoneDirectory2 stringByAppendingPathComponent:v8];

        v11 = [v22 stringByAppendingPathExtension:@"m4r"];

        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v14 = [defaultManager2 fileExistsAtPath:v11];

        if ((v14 & 1) == 0)
        {
          v24 = v20;

          v8 = v24;
        }
      }

      v25 = +[TLCapabilitiesManager sharedCapabilitiesManager];
      supportsReflectionRemixes = [v25 supportsReflectionRemixes];

      if (v14 & 1 | ((supportsReflectionRemixes & 1) == 0))
      {
        v27 = v8;
      }

      else
      {
        v27 = [v8 stringByAppendingString:@"-EncoreRemix"];

        _systemRingtoneDirectory3 = [(TLToneManager *)self _systemRingtoneDirectory];
        v29 = [_systemRingtoneDirectory3 stringByAppendingPathComponent:v27];

        v11 = [v29 stringByAppendingPathExtension:@"m4r"];

        defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
        v14 = [defaultManager3 fileExistsAtPath:v11];
      }

      *(v39 + 24) = v14;
    }

    else if ([(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:v7])
    {
      v15 = [(TLToneManager *)self _fileNameFromToneIdentifier:v7 withPrefix:@"alarmWakeUp:"];
      _alarmWakeUpRingtoneDirectory = [(TLToneManager *)self _alarmWakeUpRingtoneDirectory];
      v17 = [_alarmWakeUpRingtoneDirectory stringByAppendingPathComponent:v15];

      v18 = [v17 stringByAppendingPathExtension:@"m4r"];

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      LOBYTE(_alarmWakeUpRingtoneDirectory) = [defaultManager4 fileExistsAtPath:v18];

      *(v39 + 24) = _alarmWakeUpRingtoneDirectory;
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __44__TLToneManager__toneWithIdentifierIsValid___block_invoke;
      v35[3] = &unk_1E85789C8;
      v37 = &v38;
      v35[4] = self;
      v36 = v7;
      [(TLToneManager *)self _performBlockInAccessQueue:v35];
    }
  }

  v31 = TLLogToneManagement(v5, v6);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(v39 + 24);
    *buf = 138543874;
    selfCopy = self;
    v44 = 2114;
    v45 = validCopy;
    v46 = 1024;
    v47 = v32;
    _os_log_impl(&dword_1D9356000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@: Performed basic check for validity of tone with identifier '%{public}@': %{BOOL}u.", buf, 0x1Cu);
  }

  v33 = *(v39 + 24);
  _Block_object_dispose(&v38, 8);

  return v33 & 1;
}

void __44__TLToneManager__toneWithIdentifierIsValid___block_invoke(void *a1)
{
  v2 = a1 + 4;
  v3 = [*(a1[4] + 32) objectForKey:a1[5]];
  if (v3)
  {
    v5 = a1[6];
    v4 = a1 + 6;
    *(*(v5 + 8) + 24) = 1;
  }

  else
  {
    v6 = [*(a1[4] + 16) objectForKey:a1[5]];
    v7 = a1[6];
    v4 = a1 + 6;
    *(*(v7 + 8) + 24) = v6 != 0;
  }

  if ((*(*(*v4 + 8) + 24) & 1) == 0)
  {
    v10 = TLLogToneManagement(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_1();
    }

    v13 = TLLogToneManagement(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_2(v2);
    }
  }
}

- (BOOL)toneWithIdentifierIsValid:(id)valid
{
  v25 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__TLToneManager_toneWithIdentifierIsValid___block_invoke;
  v12[3] = &unk_1E8578AE0;
  v12[4] = self;
  v5 = validCopy;
  v13 = v5;
  v14 = &v15;
  v6 = [(TLToneManager *)self _performBlockInAccessQueue:v12];
  v8 = TLLogToneManagement(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v16 + 24);
    *buf = 138543874;
    selfCopy = self;
    v21 = 2114;
    v22 = v5;
    v23 = 1024;
    v24 = v9;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -toneWithIdentifierIsValid:(%{public}@): Returning %{BOOL}u.", buf, 0x1Cu);
  }

  v10 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v10 & 1;
}

void __43__TLToneManager_toneWithIdentifierIsValid___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _toneWithIdentifierIsValid:*(a1 + 40)];
  v3 = v2;
  v12 = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  for (i = 0; ; ++i)
  {
    v5 = _TLToneManagerDefaultIdentifiers[i];
    if ([(__CFString *)v5 length])
    {
      break;
    }

    if (i >= 0x1C)
    {
      goto LABEL_10;
    }

LABEL_8:
    ;
  }

  v6 = [*(a1 + 40) isEqualToString:v5];

  if (i <= 0x1B && (v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (_TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiersOnceToken != -1)
  {
    __43__TLToneManager_toneWithIdentifierIsValid___block_invoke_cold_1();
  }

  if (([_TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiers containsObject:*(a1 + 40)] & 1) == 0)
  {
    v7 = [*(a1 + 32) _nameForToneIdentifier:*(a1 + 40) isValid:&v12];
    v9 = TLLogToneManagement(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = v12;
      _os_log_impl(&dword_1D9356000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: -toneWithIdentifierIsValid:(%{public}@): Double checking that we have a valid name for this tone. Name: '%@', isValid: %{BOOL}u.", buf, 0x26u);
    }

    if (!v7)
    {
      v12 = 0;
    }

    v3 = v12;
  }

LABEL_18:
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void __43__TLToneManager_toneWithIdentifierIsValid___block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 addObjectsFromArray:&unk_1F54D86C8];
  if ([v2 count])
  {
    v0 = [v2 copy];
    v1 = _TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiers;
    _TLToneManagerContentsChangedNotification_block_invoke__TLToneManagerAdditionalValidDefaultToneIdentifiers = v0;
  }
}

- (id)_unduckTimeNumberForToneIdentifier:(id)identifier fromResourceNamed:(id)named
{
  identifierCopy = identifier;
  v7 = MEMORY[0x1E696AAE8];
  namedCopy = named;
  v9 = [v7 bundleForClass:objc_opt_class()];
  v10 = [v9 URLForResource:namedCopy withExtension:@"plist"];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v10];
    v12 = [(TLToneManager *)self _aliasForToneIdentifier:identifierCopy];
    v13 = [v11 objectForKey:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (double)_unduckTimeForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = @"ToneEarlyUnduckTimes";
  v6 = [(TLToneManager *)self _unduckTimeNumberForToneIdentifier:identifierCopy fromResourceNamed:@"ToneEarlyUnduckTimes"];
  if (v6)
  {
    v7 = v6;
LABEL_3:
    [v7 doubleValue];
    v9 = v8;

    goto LABEL_6;
  }

  v9 = 0.0;
  if (_os_feature_enabled_impl())
  {
    v5 = [@"ToneEarlyUnduckTimes" stringByAppendingString:@"-EncoreInfinitum"];
    v7 = [(TLToneManager *)self _unduckTimeNumberForToneIdentifier:identifierCopy fromResourceNamed:v5];
    if (v7)
    {
      goto LABEL_3;
    }
  }

LABEL_6:

  return v9;
}

- (void)importTone:(id)tone metadata:(id)metadata completionBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__TLToneManager_importTone_metadata_completionBlock___block_invoke;
  v10[3] = &unk_1E8578C20;
  v11 = blockCopy;
  v9 = blockCopy;
  [(TLToneManager *)self _importTone:tone metadata:metadata completionBlock:v10];
}

void __53__TLToneManager_importTone_metadata_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 statusCode])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v4 toneIdentifier];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_importTone:(id)tone metadata:(id)metadata completionBlock:(id)block
{
  toneCopy = tone;
  metadataCopy = metadata;
  blockCopy = block;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__TLToneManager__importTone_metadata_completionBlock___block_invoke;
  v15[3] = &unk_1E8578C48;
  v15[4] = self;
  v16 = metadataCopy;
  v17 = toneCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = toneCopy;
  v14 = metadataCopy;
  dispatch_async(v11, v15);
}

void __54__TLToneManager__importTone_metadata_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceITunesRingtoneDirectory];
  [*(a1 + 32) _ensureDirectoryExistsAtPath:v2];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  if (v4)
  {
    v5 = [*(a1 + 40) mutableCopy];
    [v5 setObject:v4 forKey:@"GUID"];
    v6 = [*(a1 + 40) objectForKey:@"File Extension"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"m4r";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"import_", v4];
    v9 = [v8 stringByAppendingPathExtension:v7];

    v10 = [v2 stringByAppendingPathComponent:v9];
    v11 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v22 = 0;
    if ([v11 createFileAtPath:v10 contents:*(a1 + 48) attributes:0])
    {
      v12 = *(a1 + 32);
      v13 = [v12 _deviceITunesRingtoneInformationPlist];
      [*(a1 + 32) _deviceITunesRingtoneDirectory];
      v21 = v7;
      v15 = v14 = v2;
      v22 = [v12 _addToneToManifestAtPath:v13 metadata:v5 fileName:v9 mediaDirectory:v15];

      v2 = v14;
      v7 = v21;
    }

    v17 = *(a1 + 56);
    v16 = a1 + 56;
    if (v17)
    {
      v18 = v22;
      if (v22)
      {
        v19 = 0;
LABEL_12:
        v22 = v18;
        (*(*v16 + 16))();

        goto LABEL_13;
      }

LABEL_11:
      v19 = [MEMORY[0x1E696ABC0] tl_errorWithDomain:@"TLToneImportErrorDomain" description:@"Unexpected failure to import tone."];
      v18 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v20 = *(a1 + 56);
    v16 = a1 + 56;
    if (v20)
    {
      goto LABEL_11;
    }

    v22 = 0;
  }

LABEL_13:
}

- (void)removeImportedToneWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(TLToneManager *)self _toneWithIdentifier:identifierCopy];
    filePath = [v5 filePath];
    lastPathComponent = [filePath lastPathComponent];
    if (![lastPathComponent hasPrefix:@"import_"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = [(TLToneManager *)self _removeToneWithIdentifier:identifierCopy];
    v9 = v8;
    v11 = TLLogToneManagement(v8, v10);
    v12 = v11;
    if (v9)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:

        goto LABEL_9;
      }

      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = filePath;
      v13 = v15;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: removeImportedToneWithIdentifier:(%{public}@): Successfully deleted tone at file path '%{public}@'.", &v14, 0x20u);
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = filePath;
      v13 = v15;
      _os_log_error_impl(&dword_1D9356000, v12, OS_LOG_TYPE_ERROR, "%{public}@: removeImportedToneWithIdentifier:(%{public}@): Failed to delete tone at file path '%{public}@'.", &v14, 0x20u);
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (id)_importPurchasedToneWithMetadata:(id)metadata fileName:(id)name
{
  nameCopy = name;
  metadataCopy = metadata;
  _deviceITunesRingtoneInformationPlist = [(TLToneManager *)self _deviceITunesRingtoneInformationPlist];
  _deviceITunesRingtoneDirectory = [(TLToneManager *)self _deviceITunesRingtoneDirectory];
  v10 = [(TLToneManager *)self _addToneToManifestAtPath:_deviceITunesRingtoneInformationPlist metadata:metadataCopy fileName:nameCopy mediaDirectory:_deviceITunesRingtoneDirectory];

  return v10;
}

- (BOOL)_wasAffectedByAccidentalToneDeletion
{
  v3 = 0;
  [(TLToneManager *)self _evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone:0 returningFilePathsForFoundOrphans:0 wasAffectedByAccidentalToneDeletion:&v3];
  return v3;
}

- (id)_allSyncedTones
{
  v2 = MEMORY[0x1E695DF90];
  _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
  v4 = [v2 dictionaryWithContentsOfFile:_iTunesRingtoneInformationPlist];

  v5 = [v4 objectForKey:@"Ringtones"];

  return v5;
}

- (id)_toneForSyncIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__TLToneManager__toneForSyncIdentifier___block_invoke;
  v8[3] = &unk_1E8578AE0;
  v8[4] = self;
  v5 = identifierCopy;
  v9 = v5;
  v10 = &v11;
  [(TLToneManager *)self _performBlockInAccessQueue:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __40__TLToneManager__toneForSyncIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  if (v2)
  {
    v3 = [*(a1[4] + 16) objectForKey:v2];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_importSyncedToneWithMetadata:(id)metadata fileName:(id)name
{
  nameCopy = name;
  metadataCopy = metadata;
  _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
  _iTunesRingtoneDirectory = [(TLToneManager *)self _iTunesRingtoneDirectory];
  v10 = [(TLToneManager *)self _addToneToManifestAtPath:_iTunesRingtoneInformationPlist metadata:metadataCopy fileName:nameCopy mediaDirectory:_iTunesRingtoneDirectory];

  LOBYTE(metadataCopy) = [v10 statusCode] == 0;
  return metadataCopy;
}

- (BOOL)_removeToneWithSyncIdentifier:(id)identifier
{
  v15 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [(TLToneManager *)self _removeToneWithIdentifier:0 orSyncIdentifier:identifierCopy];
  v7 = TLLogToneManagement(v5, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = identifierCopy;
      v9 = v12;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeToneWithSyncIdentifier:(%{public}@): Successfully deleted tone.", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TLToneManager _removeToneWithSyncIdentifier:];
  }

  return v5;
}

- (void)_removeAllSyncedData
{
  v43 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _iTunesRingtoneDirectory = [(TLToneManager *)self _iTunesRingtoneDirectory];
  _iTunesRingtoneInformationPlist = [(TLToneManager *)self _iTunesRingtoneInformationPlist];
  selfCopy = self;
  v6 = [(TLToneManager *)self _lockManifestAtPath:_iTunesRingtoneInformationPlist];
  if (v6 != -1)
  {
    v27 = v6;
    v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:_iTunesRingtoneInformationPlist];
    v25 = [v26 objectForKey:@"Ringtones"];
    allKeys = [v25 allKeys];
    v8 = [allKeys copy];

    v28 = _iTunesRingtoneInformationPlist;
    [defaultManager removeItemAtPath:_iTunesRingtoneInformationPlist error:0];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [_iTunesRingtoneDirectory stringByAppendingPathComponent:*(*(&v32 + 1) + 8 * v13)];
          v31 = 0;
          v15 = [defaultManager removeItemAtPath:v14 error:&v31];
          v16 = v31;
          v18 = TLLogToneManagement(v16, v17);
          v19 = v18;
          if (v15)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v20 = objc_opt_class();
              *buf = 138543618;
              v37 = v20;
              v38 = 2114;
              v39 = v14;
              v21 = v20;
              _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: _removeAllSyncedData: Successfully deleted tone at file path '%{public}@'.", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v22 = objc_opt_class();
            v29 = v22;
            tl_nonRedundantDescription = [v16 tl_nonRedundantDescription];
            *buf = 138543874;
            v37 = v22;
            v38 = 2114;
            v39 = v14;
            v40 = 2114;
            v41 = tl_nonRedundantDescription;
            v24 = tl_nonRedundantDescription;
            _os_log_error_impl(&dword_1D9356000, v19, OS_LOG_TYPE_ERROR, "%{public}@: _removeAllSyncedData: Failed to delete tone at file path '%{public}@'; error = %{public}@.", buf, 0x20u);
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v11);
    }

    close(v27);
    [(TLToneManager *)selfCopy _reloadTones];

    _iTunesRingtoneInformationPlist = v28;
  }
}

- (id)_removeOrphanedPlistEntriesInManifestAtPath:(id)path mediaDirectory:(id)directory
{
  v31 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  directoryCopy = directory;
  v8 = [(TLToneManager *)self _lockManifestAtPath:pathCopy];
  if (v8 == -1)
  {
    v14 = 0;
  }

  else
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:pathCopy];
    v11 = v10;
    if (v10)
    {
      v24 = v9;
      v25 = pathCopy;
      v23 = v10;
      v12 = [v10 objectForKey:@"Ringtones"];
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * i);
            v21 = [directoryCopy stringByAppendingPathComponent:v20];
            if (([objc_opt_class() _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:v21] & 1) == 0)
            {
              [v13 addObject:v20];
              [v14 addObject:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v17);
      }

      pathCopy = v25;
      if (![v13 count] || !-[TLToneManager _removeTonesFromManifestAtPath:fileNames:shouldSkipReload:alreadyLockedManifest:removedEntries:](self, "_removeTonesFromManifestAtPath:fileNames:shouldSkipReload:alreadyLockedManifest:removedEntries:", v25, v13, 1, 1, 0))
      {

        v14 = 0;
      }

      v9 = v24;
      v11 = v23;
    }

    else
    {
      v14 = 0;
    }

    close(v9);
  }

  return v14;
}

- (int64_t)_evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone:(BOOL)done returningFilePathsForFoundOrphans:(id *)orphans wasAffectedByAccidentalToneDeletion:(BOOL *)deletion
{
  doneCopy = done;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v9 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  v10 = v9;
  if (!v9)
  {
    LOBYTE(v19) = 0;
    v18 = 0;
    goto LABEL_29;
  }

  v11 = *MEMORY[0x1E695E8B8];
  v12 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(v9, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v13 = CFPreferencesCopyAppValue(@"was-affected-by-accidental-tone-deletion", v10);
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    TypeID = CFBooleanGetTypeID();
    v17 = v15 == TypeID;
    if (v15 == TypeID)
    {
      LOBYTE(v19) = CFBooleanGetValue(v14) != 0;
    }

    else
    {
      LOBYTE(v19) = 0;
      doneCopy = 1;
    }

    CFRelease(v14);
    if (!doneCopy)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v17 = 0;
    LOBYTE(v19) = 0;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __158__TLToneManager__evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone_returningFilePathsForFoundOrphans_wasAffectedByAccidentalToneDeletion___block_invoke;
  v26[3] = &unk_1E8578AB8;
  v26[4] = self;
  v26[5] = &v27;
  [(TLToneManager *)self _performBlockInAccessQueue:v26];
  if (v19)
  {
    v19 = 1;
    if (!v17)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (![v28[5] count])
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v19 = [v28[5] count] != 0;
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_14:
  v20 = *MEMORY[0x1E695E4D0];
  if (v19)
  {
    v21 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v21 = *MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"was-affected-by-accidental-tone-deletion", v21, v10);
  if (v19)
  {
    CFPreferencesSetAppValue(@"requires-reset-sync-post-accidental-tone-deletion", v20, v10);
  }

  CFPreferencesSynchronize(v10, v11, v12);
LABEL_20:
  if (![v28[5] count])
  {
LABEL_22:
    v22 = CFPreferencesCopyAppValue(@"requires-reset-sync-post-accidental-tone-deletion", v10);
    v23 = v22;
    if (v22)
    {
      v24 = CFGetTypeID(v22);
      v18 = v24 == CFBooleanGetTypeID() && CFBooleanGetValue(v23) != 0;
      CFRelease(v23);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_28;
  }

  v18 = 1;
LABEL_28:
  CFRelease(v10);
LABEL_29:
  if (orphans)
  {
    *orphans = [v28[5] copy];
  }

  if (deletion)
  {
    *deletion = v19;
  }

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __158__TLToneManager__evaluateOrphanEntriesCleanupStatusForcingReevaluationIfPreviouslyDone_returningFilePathsForFoundOrphans_wasAffectedByAccidentalToneDeletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 _deviceITunesRingtoneInformationPlist];
  v4 = [*(a1 + 32) _deviceITunesRingtoneDirectory];
  v8 = [v2 _removeOrphanedPlistEntriesInManifestAtPath:v3 mediaDirectory:v4];

  if ([v8 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (v8)
    {
      [*(*(*(a1 + 40) + 8) + 40) unionSet:v8];
    }

    [*(a1 + 32) _reloadTones];
  }
}

- (void)_registerDidRequestResetSyncPostAccidentalToneDeletion
{
  v2 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  if (v2)
  {
    v3 = v2;
    CFPreferencesSetAppValue(@"requires-reset-sync-post-accidental-tone-deletion", 0, v2);
    CFPreferencesSynchronize(v3, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

    CFRelease(v3);
  }
}

+ (BOOL)_migrateLegacyToneSettings
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
  v4 = 0;
  v70 = @"PlaySentMailSound";
  v71 = [TLPreferencesUtilities copySharedResourcesPreferencesDomainForDomain:@"com.apple.mobilemail"];
  v72[0] = 0;
  v73[0] = 6;
  v73[1] = @"PlayNewMailSound";
  v55 = [TLPreferencesUtilities copySharedResourcesPreferencesDomainForDomain:@"com.apple.mobilephone"];
  applicationID = v71;
  v73[2] = v71;
  v74 = 0;
  v75 = 5;
  v76 = @"calendar-alarm";
  v77 = v3;
  v78 = 1;
  v79 = 10;
  v80 = @"VoicemailToneEnabled";
  v81 = v55;
  v82 = 0;
  v83 = 4;
  v57 = v3;
  selfCopy = self;
  do
  {
    v5 = (&v70)[v4 / 8];
    v6 = *(&v70 + v4 / 8 + 1);
    v7 = v72[v4 / 4];
    v8 = v73[v4 / 8];
    v9 = CFPreferencesCopyAppValue(v5, v6);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    if (v7)
    {
      if (v7 == 1 && ![v9 length])
      {
LABEL_8:
        v12 = [self _systemWideTonePreferenceKeyForAlertType:v8];
        if (!v12)
        {
          v13 = TLLogGeneral(0, v11);
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);

          if (v14)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Tones/TLToneManager.m"];
            v19 = TLLogGeneral(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              lastPathComponent = [v17 lastPathComponent];
              callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
              *buf = 136381443;
              v63 = "+[TLToneManager _migrateLegacyToneSettings]";
              v64 = 2113;
              v65 = lastPathComponent;
              v66 = 2049;
              v67 = 3403;
              v68 = 2113;
              v69 = callStackSymbols;
              v21 = callStackSymbols;
              _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
            }
          }

          else
          {
            v17 = TLLogGeneral(v15, v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              +[(TLToneManager *)&v60];
            }
          }

          v24 = TLLogGeneral(v22, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromTLAlertType(v8);
            *buf = 138543618;
            v63 = v25;
            v64 = 2114;
            v65 = 0;
            _os_log_error_impl(&dword_1D9356000, v24, OS_LOG_TYPE_ERROR, "Unexpected value for preferences key associated to alertType %{public}@: %{public}@.", buf, 0x16u);
          }

          v3 = v57;
          self = selfCopy;
        }

        CFPreferencesSetAppValue(v12, @"<none>", v3);
        CFPreferencesSetAppValue(v5, 0, v6);
      }
    }

    else if (([v9 BOOLValue] & 1) == 0)
    {
      goto LABEL_8;
    }

    CFRelease(v10);
LABEL_20:
    v4 += 32;
  }

  while (v4 != 128);
  v26 = *MEMORY[0x1E695E8B8];
  v27 = *MEMORY[0x1E695E898];
  CFPreferencesSynchronize(applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(v55, v26, v27);
  CFRelease(applicationID);
  CFRelease(v55);
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"sms-sound", v3, &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    goto LABEL_50;
  }

  v29 = AppIntegerValue;
  v30 = [selfCopy _defaultToneIdentifierForAlertType:2 topic:0];
  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        v31 = @"texttone:Tri-tone";
      }

      else
      {
        if (v29 != 2)
        {
          goto LABEL_39;
        }

        v31 = @"texttone:Chime";
      }
    }

    else
    {
      v31 = @"<none>";
    }

    goto LABEL_38;
  }

  if (v29 > 5)
  {
    if (v29 == 6)
    {
      v31 = @"texttone:Bell";
    }

    else
    {
      if (v29 != 7)
      {
        goto LABEL_39;
      }

      v31 = @"texttone:Electronic";
    }

    goto LABEL_38;
  }

  if (v29 == 3)
  {
    v31 = @"texttone:Glass";
LABEL_38:

    v30 = v31;
    goto LABEL_39;
  }

  if (v29 == 4)
  {
    v31 = @"texttone:Horn";
    goto LABEL_38;
  }

LABEL_39:
  v33 = [selfCopy _systemWideTonePreferenceKeyForAlertType:2];
  if (!v33)
  {
    v34 = TLLogGeneral(0, v32);
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);

    if (v35)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibrary/Library/Tones/TLToneManager.m"];
      v40 = TLLogGeneral(v38, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        lastPathComponent2 = [v38 lastPathComponent];
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        *buf = 136381443;
        v63 = "+[TLToneManager _migrateLegacyToneSettings]";
        v64 = 2113;
        v65 = lastPathComponent2;
        v66 = 2049;
        v67 = 3433;
        v68 = 2113;
        v69 = callStackSymbols2;
        _os_log_impl(&dword_1D9356000, v40, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", buf, 0x2Au);
      }
    }

    else
    {
      v38 = TLLogGeneral(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(TLToneManager *)v38 _migrateLegacyToneSettings:v43];
      }
    }

    v52 = TLLogGeneral(v50, v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      +[(TLToneManager *)v52];
    }
  }

  CFPreferencesSetAppValue(v33, v30, v57);
  CFPreferencesSetAppValue(@"sms-sound", 0, v57);

  v3 = v57;
LABEL_50:
  CFPreferencesSetAppValue(@"was-affected-by-accidental-tone-deletion", 0, v3);
  CFPreferencesSynchronize(v3, v26, v27);
  [TLPreferencesUtilities migratePerTopicPreferencesInDomain:v3 withRegularPreferenceKeys:_TLToneManagerSystemWideTonePreferenceKeys regularPreferenceKeysCount:29 intoSinglePerTopicPreferenceWithSuffix:@"-per-account" usingPreferencesScope:0];
  CFRelease(v3);
  return 1;
}

- (id)_currentWatchToneIdentifierPreferenceKeyForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"watch-", v6];

  v8 = [topicCopy length];
  if (v8)
  {
    v9 = [v7 stringByAppendingString:@"-per-account"];

    v7 = v9;
  }

  return v7;
}

- (id)currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic
{
  v24 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v8 = TLLogToneManagement(topicCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromTLAlertType(type);
    v18 = 138543874;
    selfCopy3 = self;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = topicCopy;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentWatchToneIdentifierForAlertType:(%{public}@) topic:(%{public}@).", &v18, 0x20u);
  }

  v10 = [(TLToneManager *)self _currentWatchToneIdentifierForAlertType:type topic:topicCopy didFindPersistedWatchToneIdentifier:0];
  v12 = TLLogToneManagement(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromTLAlertType(type);
    v18 = 138543874;
    selfCopy3 = self;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v10;
    _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentWatchToneIdentifierForAlertType:(%{public}@) […]: Value from Preferences lookup method: toneIdentifier = %{public}@.", &v18, 0x20u);
  }

  if (!v10)
  {
    v10 = [(TLToneManager *)self defaultWatchToneIdentifierForAlertType:type topic:topicCopy];
    v15 = TLLogToneManagement(v10, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromTLAlertType(type);
      v18 = 138543874;
      selfCopy3 = self;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -currentWatchToneIdentifierForAlertType:(%{public}@) […]: Falling back to default due missing setting in Preferences. toneIdentifier = %{public}@.", &v18, 0x20u);
    }
  }

  return v10;
}

- (id)_currentWatchToneIdentifierForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchToneIdentifier:(BOOL *)identifier
{
  v36 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v9 = [topicCopy length];
  v10 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v11 = [(TLToneManager *)self _currentWatchToneIdentifierPreferenceKeyForAlertType:type topic:topicCopy];
  if (!v11 || (NPSDomainAccessorClass = getNPSDomainAccessorClass()) == 0)
  {
    isKindOfClass = 0;
    v22 = 0;
LABEL_18:
    if (v9)
    {
      v25 = [(TLToneManager *)self _currentWatchToneIdentifierForAlertType:type topic:0 didFindPersistedWatchToneIdentifier:0];

      v22 = v25;
    }

    goto LABEL_20;
  }

  v13 = [[NPSDomainAccessorClass alloc] initWithDomain:v10];
  v15 = TLLogToneManagement(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v30 = 2114;
    v31 = v13;
    _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentWatchToneIdentifier…: Instantiated domain accessor %{public}@.", buf, 0x16u);
  }

  v16 = [v13 objectForKey:v11];
  v18 = TLLogToneManagement(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v30 = 2114;
    v31 = v11;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = v16;
    _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentWatchToneIdentifier…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", buf, 0x2Au);
  }

  identifierCopy = identifier;
  if (v9)
  {
    objc_opt_class();
    v19 = v10;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v16 objectForKey:topicCopy];
    }

    else
    {
      v20 = 0;
    }

    v23 = v9;

    v16 = v20;
  }

  else
  {
    v19 = v10;
    v23 = 0;
  }

  v24 = v13;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v22 = v16;
  }

  else
  {
    v22 = 0;
  }

  v9 = v23;
  v10 = v19;
  identifier = identifierCopy;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  if (identifier)
  {
    *identifier = isKindOfClass & 1;
  }

  return v22;
}

- (void)setCurrentWatchToneIdentifier:(id)identifier forAlertType:(int64_t)type topic:(id)topic
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  topicCopy = topic;
  v11 = TLLogToneManagement(topicCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromTLAlertType(type);
    *buf = 138544130;
    selfCopy = self;
    v28 = 2114;
    v29 = identifierCopy;
    v30 = 2114;
    v31 = v12;
    v32 = 2114;
    v33 = topicCopy;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier:(%{public}@) forAlertType:(%{public}@) topic:(%{public}@)", buf, 0x2Au);
  }

  buf[0] = 0;
  v13 = [(TLToneManager *)self _currentWatchToneIdentifierForAlertType:type topic:topicCopy didFindPersistedWatchToneIdentifier:buf];
  v14 = v13;
  if (buf[0] != 1)
  {
    goto LABEL_11;
  }

  v15 = v13;
  v16 = identifierCopy;
  v17 = v16;
  if (!(v16 | v15))
  {
    goto LABEL_16;
  }

  if (!v16 || !v15)
  {

LABEL_11:
    v15 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v17 = [(TLToneManager *)self _currentWatchToneIdentifierPreferenceKeyForAlertType:type topic:topicCopy];
    if (v17)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__TLToneManager_setCurrentWatchToneIdentifier_forAlertType_topic___block_invoke;
      v21[3] = &unk_1E8578C70;
      v21[4] = self;
      v15 = v15;
      v22 = v15;
      v23 = topicCopy;
      v17 = v17;
      v24 = v17;
      v25 = identifierCopy;
      [(TLToneManager *)self _performBlockInAccessQueue:v21];
    }

    else
    {
      v20 = TLLogToneManagement(0, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager setCurrentWatchToneIdentifier:type forAlertType:? topic:?];
      }
    }

    goto LABEL_16;
  }

  if (v15 != v16)
  {
    v18 = [v15 isEqualToString:v16];

    if (v18)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

LABEL_16:

LABEL_17:
}

void __66__TLToneManager_setCurrentWatchToneIdentifier_forAlertType_topic___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (!NPSDomainAccessorClass)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v8 = TLLogToneManagement(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v30 = 138543618;
    v31 = v9;
    v32 = 2114;
    v33 = v3;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v30, 0x16u);
  }

  v4 = 1;
LABEL_8:
  if ([*(a1 + 48) length])
  {
    v10 = [v3 objectForKey:*(a1 + 56)];
    v12 = TLLogToneManagement(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v30 = 138544130;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
      v34 = 2114;
      v35 = v3;
      v36 = 2114;
      v37 = v10;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", &v30, 0x2Au);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 mutableCopy];
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v18 = v15;
    v22 = *(a1 + 64);
    if (v22)
    {
      [v15 setObject:v22 forKey:*(a1 + 48)];
    }

    else
    {
      [v15 removeObjectForKey:*(a1 + 48)];
    }

    v23 = [v3 setObject:v18 forKey:*(a1 + 56)];
    v25 = TLLogToneManagement(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      v27 = *(a1 + 56);
      v30 = 138544130;
      v31 = v26;
      v32 = 2114;
      v33 = v27;
      v34 = 2114;
      v35 = v3;
      v36 = 2114;
      v37 = v18;
      _os_log_impl(&dword_1D9356000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v30, 0x2Au);
    }
  }

  else
  {
    v16 = [v3 setObject:*(a1 + 64) forKey:*(a1 + 56)];
    v18 = TLLogToneManagement(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      v30 = 138544130;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v3;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -setCurrentWatchToneIdentifier…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v30, 0x2Au);
    }
  }

  [*(a1 + 32) _didSetTonePreferenceSuccessfullyWithKey:*(a1 + 56) inDomain:*(a1 + 40) usingPreferencesOfKind:2];
  if (v4)
  {
    v28 = *(a1 + 32);
    v29 = *(v28 + 64);
    *(v28 + 64) = 0;
  }
}

- (id)_currentToneWatchAlertPolicyPreferenceKeyForAlertType:(int64_t)type topic:(id)topic
{
  topicCopy = topic;
  v6 = [objc_opt_class() _systemWideTonePreferenceKeyForAlertType:type];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"sound-identifier" withString:@"sound"];

  v8 = [v7 stringByAppendingString:@"-watch-alert-policy"];

  v9 = [topicCopy length];
  if (v9)
  {
    v10 = [v8 stringByAppendingString:@"-per-account"];

    v8 = v10;
  }

  return v8;
}

- (int64_t)_currentToneWatchAlertPolicyForAlertType:(int64_t)type topic:(id)topic didFindPersistedWatchAlertPolicy:(BOOL *)policy
{
  v34 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  if ((type - 13) >= 2)
  {
    if (type == 17)
    {
      v10 = +[TLCapabilitiesManager sharedCapabilitiesManager];
      supportsNanoEncore = [v10 supportsNanoEncore];

      v9 = supportsNanoEncore ^ 1u;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v12 = [topicCopy length];
  v13 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v14 = [(TLToneManager *)self _currentToneWatchAlertPolicyPreferenceKeyForAlertType:type topic:topicCopy];
  if (!v14 || (NPSDomainAccessorClass = getNPSDomainAccessorClass()) == 0)
  {
    isKindOfClass = 0;
LABEL_21:
    if (v12)
    {
      v9 = [(TLToneManager *)self _currentToneWatchAlertPolicyForAlertType:type topic:0 didFindPersistedWatchAlertPolicy:0];
    }

    goto LABEL_23;
  }

  v16 = [[NPSDomainAccessorClass alloc] initWithDomain:v13];
  v18 = TLLogToneManagement(v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2114;
    v29 = v16;
    _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneWatchAlertPolicy…: Instantiated domain accessor %{public}@.", buf, 0x16u);
  }

  v25 = v16;
  v19 = [v16 objectForKey:v14];
  v21 = TLLogToneManagement(v19, v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v28 = 2114;
    v29 = v14;
    v30 = 2114;
    v31 = v25;
    v32 = 2114;
    v33 = v19;
    _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_currentToneWatchAlertPolicy…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", buf, 0x2Au);
  }

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v19 objectForKey:topicCopy];
    }

    else
    {
      v22 = 0;
    }

    v19 = v22;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = TLWatchAlertPolicyFromString(v19);
  }

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (policy)
  {
    *policy = isKindOfClass & 1;
  }

  return v9;
}

- (void)_setCurrentToneWatchAlertPolicy:(int64_t)policy forAlertType:(int64_t)type topic:(id)topic
{
  v33 = *MEMORY[0x1E69E9840];
  topicCopy = topic;
  v10 = TLLogToneManagement(topicCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromTLWatchAlertPolicy(policy);
    v12 = NSStringFromTLAlertType(type);
    *buf = 138544130;
    selfCopy = self;
    v27 = 2114;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    v31 = 2114;
    v32 = topicCopy;
    _os_log_impl(&dword_1D9356000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy:(%{public}@) forAlertType:(%{public}@) topic:(%{public}@)", buf, 0x2Au);
  }

  if (policy == 3)
  {
    v13 = [(TLToneManager *)self currentToneIdentifierForAlertType:type topic:topicCopy];
    if ([v13 isEqualToString:@"<none>"])
    {
      policy = 2;
    }

    else
    {
      policy = 1;
    }
  }

  buf[0] = 0;
  v14 = [(TLToneManager *)self _currentToneWatchAlertPolicyForAlertType:type topic:topicCopy didFindPersistedWatchAlertPolicy:buf];
  if (buf[0] != 1 || v14 != policy)
  {
    v15 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v17 = [(TLToneManager *)self _currentToneWatchAlertPolicyPreferenceKeyForAlertType:type topic:topicCopy];
    if (v17)
    {
      v18 = NSStringFromTLWatchAlertPolicy(policy);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __68__TLToneManager__setCurrentToneWatchAlertPolicy_forAlertType_topic___block_invoke;
      v20[3] = &unk_1E8578C70;
      v20[4] = self;
      v21 = v15;
      v22 = topicCopy;
      v23 = v17;
      v24 = v18;
      v19 = v18;
      [(TLToneManager *)self _performBlockInAccessQueue:v20];
    }

    else
    {
      v19 = TLLogToneManagement(0, v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _setCurrentToneWatchAlertPolicy:type forAlertType:? topic:?];
      }
    }
  }
}

void __68__TLToneManager__setCurrentToneWatchAlertPolicy_forAlertType_topic___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (!NPSDomainAccessorClass)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v8 = TLLogToneManagement(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v29 = 138543618;
    v30 = v9;
    v31 = 2114;
    v32 = v3;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v29, 0x16u);
  }

  v4 = 1;
LABEL_8:
  if ([*(a1 + 48) length])
  {
    v10 = [v3 objectForKey:*(a1 + 56)];
    v12 = TLLogToneManagement(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      v29 = 138544130;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v10;
      _os_log_impl(&dword_1D9356000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Retrieved object for key %{public}@ from %{public}@: %{public}@.", &v29, 0x2Au);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 mutableCopy];
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v18 = v15;
    [v15 setObject:*(a1 + 64) forKey:*(a1 + 48)];
    v22 = [v3 setObject:v18 forKey:*(a1 + 56)];
    v24 = TLLogToneManagement(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      v26 = *(a1 + 56);
      v29 = 138544130;
      v30 = v25;
      v31 = 2114;
      v32 = v26;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v18;
      _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v29, 0x2Au);
    }
  }

  else
  {
    v16 = [v3 setObject:*(a1 + 64) forKey:*(a1 + 56)];
    v18 = TLLogToneManagement(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 56);
      v21 = *(a1 + 64);
      v29 = 138544130;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2114;
      v34 = v3;
      v35 = 2114;
      v36 = v21;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setCurrentToneWatchAlertPolicy…: Did set object for key %{public}@ on %{public}@: %{public}@.", &v29, 0x2Au);
    }
  }

  [*(a1 + 32) _didSetTonePreferenceSuccessfullyWithKey:*(a1 + 56) inDomain:*(a1 + 40) usingPreferencesOfKind:2];
  if (v4)
  {
    v27 = *(a1 + 32);
    v28 = *(v27 + 64);
    *(v27 + 64) = 0;
  }
}

- (BOOL)_watchPrefersSalientNotifications
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__TLToneManager__watchPrefersSalientNotifications__block_invoke;
  v4[3] = &unk_1E8578AB8;
  v4[4] = self;
  v4[5] = &v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __50__TLToneManager__watchPrefersSalientNotifications__block_invoke(uint64_t a1, uint64_t a2)
{
  *&v21[13] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (*(v3 + 57) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v3 + 56);
    v4 = TLLogToneManagement(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v18 = 138543618;
      v19 = v5;
      v20 = 1024;
      *v21 = v6;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: _watchPrefersSalientNotifications: Returning %{BOOL}u from cache.", &v18, 0x12u);
    }
  }

  else
  {
    NPSDomainAccessorClass = getNPSDomainAccessorClass();
    if (!NPSDomainAccessorClass)
    {
      return;
    }

    v8 = NPSDomainAccessorClass;
    v4 = +[TLPreferencesUtilities perWatchPreferencesDomain];
    v9 = [[v8 alloc] initWithDomain:v4];
    v11 = TLLogToneManagement(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v18 = 138543618;
      v19 = v12;
      v20 = 2114;
      *v21 = v9;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_watchPrefersSalientNotifications: Instantiated domain accessor %{public}@.", &v18, 0x16u);
    }

    v13 = [v9 BOOLForKey:@"watch-prefers-salient-notification"];
    *(*(*(a1 + 40) + 8) + 24) = v13;
    *(*(a1 + 32) + 56) = *(*(*(a1 + 40) + 8) + 24);
    *(*(a1 + 32) + 57) = 1;
    v15 = TLLogToneManagement(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(*(*(a1 + 40) + 8) + 24);
      v18 = 138543874;
      v19 = v16;
      v20 = 1024;
      *v21 = v17;
      v21[2] = 2114;
      *&v21[3] = v9;
      _os_log_impl(&dword_1D9356000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: _watchPrefersSalientNotifications: Read %{BOOL}u from %{public}@; caching this value, and returning it.", &v18, 0x1Cu);
    }
  }
}

- (void)_setWatchPrefersSalientNotifications:(BOOL)notifications
{
  v5 = +[TLPreferencesUtilities perWatchPreferencesDomain];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TLToneManager__setWatchPrefersSalientNotifications___block_invoke;
  v7[3] = &unk_1E8578C98;
  v7[4] = self;
  v8 = v5;
  notificationsCopy = notifications;
  v6 = v5;
  [(TLToneManager *)self _performBlockInAccessQueue:v7];
}

void __54__TLToneManager__setWatchPrefersSalientNotifications___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    v3 = v2;
LABEL_3:
    v4 = 0;
    goto LABEL_8;
  }

  NPSDomainAccessorClass = getNPSDomainAccessorClass();
  if (!NPSDomainAccessorClass)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = [[NPSDomainAccessorClass alloc] initWithDomain:*(a1 + 40)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v8 = TLLogToneManagement(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v24 = 138543618;
    v25 = v9;
    v26 = 2114;
    *v27 = v3;
    _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setWatchPrefersSalientNotifications…: Instantiated domain accessor %{public}@ and set it to be the transient one.", &v24, 0x16u);
  }

  v4 = 1;
LABEL_8:
  v10 = [v3 BOOLForKey:@"watch-prefers-salient-notification"];
  v11 = v10;
  v13 = TLLogToneManagement(v10, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v24 = 138543874;
    v25 = v14;
    v26 = 1024;
    *v27 = v11;
    *&v27[4] = 2114;
    *&v27[6] = v3;
    _os_log_impl(&dword_1D9356000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: _setWatchPrefersSalientNotifications…: Read didWatchAlreadyPreferSalientNotifications = %{BOOL}u from %{public}@.", &v24, 0x1Cu);
  }

  v15 = *(a1 + 48);
  if (v15 != v11)
  {
    v16 = [v3 setBool:v15 forKey:@"watch-prefers-salient-notification"];
    v18 = TLLogToneManagement(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 32);
      v20 = *(a1 + 48);
      v24 = 138544130;
      v25 = v19;
      v26 = 2114;
      *v27 = @"watch-prefers-salient-notification";
      *&v27[8] = 2114;
      *&v27[10] = v3;
      v28 = 1024;
      v29 = v20;
      _os_log_impl(&dword_1D9356000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: -_setWatchPrefersSalientNotifications…: Did set BOOLean value for key %{public}@ on %{public}@: %{BOOL}u.", &v24, 0x26u);
    }

    [*(a1 + 32) _didSetTonePreferenceSuccessfullyWithKey:@"watch-prefers-salient-notification" inDomain:*(a1 + 40) usingPreferencesOfKind:2];
  }

  if (v4)
  {
    v21 = *(a1 + 32);
    v22 = *(v21 + 64);
    *(v21 + 64) = 0;
  }

  if (*(a1 + 48) != v11)
  {
    [*(a1 + 32) _handleWatchPrefersSalientNotificationDidChange];
    *(*(a1 + 32) + 58) = 1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_TLAlertWatchPrefersSalientNotificationPreferenceDidChangeLocallyNotification", 0, 0, 1u);
  }
}

- (void)_handleWatchPrefersSalientNotificationDidChange
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__TLToneManager__handleWatchPrefersSalientNotificationDidChange__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLToneManager *)self _performBlockInAccessQueue:v2];
}

void __64__TLToneManager__handleWatchPrefersSalientNotificationDidChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4 = *(v2 + 57);
  *(v2 + 57) = 0;
  if (v3 != [*(a1 + 32) _watchPrefersSalientNotifications] || (v4 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = +[TLToneManager sharedToneManager];

    if (v5 == v6)
    {
      v7 = dispatch_get_global_queue(0, 0);
      dispatch_async(v7, &__block_literal_global_934);
    }
  }
}

void __64__TLToneManager__handleWatchPrefersSalientNotificationDidChange__block_invoke_2()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"_TLAlertWatchPrefersSalientToneAndVibrationDidChangeNotification" object:0];
}

+ (id)_currentOverridePolicyPreferenceKeyForAlertType:(int64_t)type
{
  v3 = [self _systemWideTonePreferenceKeyForAlertType:type];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"-sound-identifier" withString:&stru_1F54CFF40];

  v5 = [v4 stringByAppendingString:@"-alert-override-policy"];

  return v5;
}

- (int64_t)_currentOverridePolicyForAlertType:(int64_t)type didFindAlertOverridePolicy:(BOOL *)policy
{
  v5 = [objc_opt_class() _currentOverridePolicyPreferenceKeyForAlertType:type];
  if (!v5 || (v6 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain]) == 0)
  {
    v12 = 0;
    v14 = 0;
    if (!policy)
    {
      goto LABEL_9;
    }

LABEL_8:
    *policy = v12;
    goto LABEL_9;
  }

  v7 = v6;
  v8 = CFPreferencesCopyAppValue(v5, v6);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    TypeID = CFStringGetTypeID();
    v12 = v10 == TypeID;
    if (v10 == TypeID)
    {
      v14 = TLAlertOverridePolicyFromString(v9);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  CFRelease(v7);
  if (policy)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v14;
}

- (void)_setCurrentOverridePolicy:(int64_t)policy forAlertType:(int64_t)type
{
  v15 = 0;
  v7 = [(TLToneManager *)self _currentOverridePolicyForAlertType:type didFindAlertOverridePolicy:&v15];
  if (v15 != 1 || v7 != policy)
  {
    v10 = [objc_opt_class() _currentOverridePolicyPreferenceKeyForAlertType:type];
    if (v10)
    {
      v11 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain];
      if (v11)
      {
        v12 = v11;
        v13 = NSStringFromTLAlertOverridePolicy(policy);
        CFPreferencesSetAppValue(v10, v13, v12);
        CFRelease(v12);

        [(TLToneManager *)self _didSetTonePreferenceSuccessfullyWithKey:v10 inDomain:+[TLPreferencesUtilities usingPreferencesOfKind:"preferencesDomain"], 1];
      }
    }

    else
    {
      v14 = TLLogToneManagement(0, v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _setCurrentOverridePolicy:type forAlertType:?];
      }
    }
  }
}

+ (id)_abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:(id)logging
{
  loggingCopy = logging;
  v4 = [@"mediaPlaybackArchive:" length];
  if ([loggingCopy length] <= (2 * v4))
  {
    v6 = loggingCopy;
  }

  else
  {
    v5 = [loggingCopy substringToIndex:2 * v4];
    v6 = [v5 stringByAppendingString:@"…"];
  }

  return v6;
}

+ (id)_abbreviatedDescriptionOfMediaPlaybackArchive:(id)archive
{
  v3 = MEMORY[0x1E696AD60];
  archiveCopy = archive;
  v5 = [v3 alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  archiveCopy = [v5 initWithFormat:@"<%@: %p", v7, archiveCopy];

  displayProperties = [archiveCopy displayProperties];

  title = [displayProperties title];
  v11 = title;
  if (title)
  {
    [archiveCopy appendFormat:@"; title = %@", title];
  }

  subtitle = [displayProperties subtitle];
  v13 = subtitle;
  if (subtitle)
  {
    [archiveCopy appendFormat:@"; subtitle = %@", subtitle];
  }

  [archiveCopy appendString:@">"];

  return archiveCopy;
}

- (id)_toneIdentifierWithUnderlyingPlaybackArchive:(id)archive
{
  v24 = *MEMORY[0x1E69E9840];
  archiveCopy = archive;
  v5 = [objc_opt_class() _abbreviatedDescriptionOfMediaPlaybackArchive:archiveCopy];
  v17 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:archiveCopy requiringSecureCoding:1 error:&v17];

  v7 = v17;
  if ([v6 length])
  {
    v9 = [v6 base64EncodedStringWithOptions:0];
    if ([v9 length])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"mediaPlaybackArchive:", v9];
      v12 = [objc_opt_class() _abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:v11];
      v14 = TLLogToneManagement(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        selfCopy2 = self;
        v20 = 2114;
        v21 = v5;
        v22 = 2114;
        v23 = v12;
        _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: _toneIdentifierWithUnderlyingPlaybackArchive:(%{public}@): Returning %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v12 = TLLogToneManagement(0, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _toneIdentifierWithUnderlyingPlaybackArchive:];
      }

      v11 = 0;
    }
  }

  else
  {
    v9 = TLLogToneManagement(0, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      tl_nonRedundantDescription = [v7 tl_nonRedundantDescription];
      *buf = 138543874;
      selfCopy2 = self;
      v20 = 2114;
      v21 = v5;
      v22 = 2114;
      v23 = tl_nonRedundantDescription;
      _os_log_error_impl(&dword_1D9356000, v9, OS_LOG_TYPE_ERROR, "%{public}@: _toneIdentifierWithUnderlyingPlaybackArchive:(%{public}@): Failed to serialize playback archive with error: %{public}@.", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

- (id)_underlyingPlaybackArchiveForToneIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = [objc_opt_class() _abbreviatedDescriptionOfToneIdentifierWithUnderlyingMediaPlaybackArchiveForLogging:identifierCopy];
  if ([identifierCopy hasPrefix:@"mediaPlaybackArchive:"])
  {
    v6 = [identifierCopy substringFromIndex:{objc_msgSend(@"mediaPlaybackArchive:", "length")}];
  }

  else
  {
    v6 = identifierCopy;
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:1];
  if ([v8 length])
  {
    v10 = MEMORY[0x1E696ACD0];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v11 = getMPPlaybackArchiveClass_softClass;
    v25 = getMPPlaybackArchiveClass_softClass;
    if (!getMPPlaybackArchiveClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getMPPlaybackArchiveClass_block_invoke;
      v27 = &unk_1E8578D30;
      v28 = &v22;
      __getMPPlaybackArchiveClass_block_invoke(buf);
      v11 = v23[3];
    }

    v12 = v11;
    _Block_object_dispose(&v22, 8);
    v21 = 0;
    v13 = [v10 unarchivedObjectOfClass:v11 fromData:v8 error:&v21];
    v14 = v21;
    v16 = v14;
    if (v13)
    {
      v17 = [objc_opt_class() _abbreviatedDescriptionOfMediaPlaybackArchive:v13];
      v19 = TLLogToneManagement(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v5;
        *&buf[22] = 2114;
        v27 = v17;
        _os_log_impl(&dword_1D9356000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: _underlyingPlaybackArchiveForToneIdentifier:(%{public}@): Returning %{public}@.", buf, 0x20u);
      }
    }

    else
    {
      v17 = TLLogToneManagement(v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [TLToneManager _underlyingPlaybackArchiveForToneIdentifier:];
      }
    }
  }

  else
  {
    v16 = TLLogToneManagement(0, v9);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [TLToneManager _underlyingPlaybackArchiveForToneIdentifier:];
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_hasUnderlyingPlaybackArchiveForToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = ![(TLToneManager *)self _toneWithIdentifierIsDefaultRingtone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsNonDefaultAndNonEmbeddedSystemRingtone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsITunesRingtone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsSystemTone:identifierCopy]&& ![(TLToneManager *)self _toneWithIdentifierIsAlarmWakeUp:identifierCopy]&& [(TLToneManager *)self _toneWithIdentifierIsMediaPlaybackArchive:identifierCopy];

  return v5;
}

- (id)_fileNameFromToneIdentifier:(id)identifier withPrefix:(id)prefix
{
  identifierCopy = identifier;
  if ([identifierCopy rangeOfString:prefix] || (v7 = v6, v6 >= objc_msgSend(identifierCopy, "length")))
  {
    v8 = 0;
  }

  else
  {
    v8 = [identifierCopy substringFromIndex:v7];
  }

  return v8;
}

- (id)_localizedNameOfToneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TLCapabilitiesManager sharedCapabilitiesManager];
  if ([v4 wantsModernDefaultRingtone])
  {
    v5 = [(__CFString *)identifierCopy isEqualToString:@"system:Opening"];

    v6 = identifierCopy;
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = @"RINGTONE_PICKER_DEFAULT_RINGTONE_NAME";
    v4 = identifierCopy;
  }

  else
  {
    v6 = identifierCopy;
  }

LABEL_6:
  v7 = TLLocalizedString(v6);
  if ([v7 isEqualToString:v6])
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)_ensureDirectoryExistsAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:pathCopy])
    {
      v5 = 1;
    }

    else
    {
      v11 = 0;
      v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v11];
      v6 = v11;
      v8 = v6;
      if ((v5 & 1) == 0)
      {
        v9 = TLLogToneManagement(v6, v7);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [TLToneManager _ensureDirectoryExistsAtPath:];
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didSetTonePreferenceSuccessfullyWithKey:(id)key inDomain:(id)domain usingPreferencesOfKind:(unint64_t)kind
{
  v32[3] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  domainCopy = domain;
  v11 = TLLogToneManagement(domainCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = keyCopy;
    *&buf[22] = 2114;
    v31 = domainCopy;
    _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfullyWithKey:(%{public}@) inDomain:(%{public}@)…", buf, 0x20u);
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __90__TLToneManager__didSetTonePreferenceSuccessfullyWithKey_inDomain_usingPreferencesOfKind___block_invoke;
  v25[3] = &unk_1E8578CC0;
  v25[4] = self;
  v25[5] = kind;
  [(TLToneManager *)self _performBlockInAccessQueue:v25];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_TLTonePreferencesDidChangeNotification", 0, 0, 1u);
  if (kind)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v13 = getNPSManagerClass_softClass;
    v29 = getNPSManagerClass_softClass;
    if (!getNPSManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNPSManagerClass_block_invoke;
      v31 = &unk_1E8578D30;
      v32[0] = &v26;
      __getNPSManagerClass_block_invoke(buf);
      v13 = v27[3];
    }

    v14 = v13;
    _Block_object_dispose(&v26, 8);
    if (v13)
    {
      v15 = objc_alloc_init(v13);
      v17 = TLLogToneManagement(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_impl(&dword_1D9356000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfully…: Instantiated preferences sync manager %{public}@.", buf, 0x16u);
      }

      v18 = [MEMORY[0x1E695DFD8] setWithObjects:{keyCopy, 0}];
      if (kind)
      {
        v19 = [v15 synchronizeUserDefaultsDomain:domainCopy keys:v18];
        v21 = TLLogToneManagement(v19, v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = domainCopy;
          *&buf[22] = 2114;
          v31 = v15;
          LOWORD(v32[0]) = 2114;
          *(v32 + 2) = v18;
          _os_log_impl(&dword_1D9356000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfully…: Did synchronize user defaults domain %{public}@ with %{public}@ for keys %{public}@.", buf, 0x2Au);
        }
      }

      if ((kind & 2) != 0)
      {
        v22 = [v15 synchronizeNanoDomain:domainCopy keys:v18];
        v24 = TLLogToneManagement(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = domainCopy;
          *&buf[22] = 2114;
          v31 = v15;
          LOWORD(v32[0]) = 2114;
          *(v32 + 2) = v18;
          _os_log_impl(&dword_1D9356000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: -_didSetTonePreferenceSuccessfully…: Did synchronize nano domain %{public}@ with %{public}@ for keys %{public}@.", buf, 0x2Au);
        }
      }
    }
  }
}

void *__90__TLToneManager__didSetTonePreferenceSuccessfullyWithKey_inDomain_usingPreferencesOfKind___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(a1 + 32) + 88) = 0;
  result = [*(a1 + 32) _handleTonePreferencesChangedNotificationForPreferencesKinds:v2];
  *(*(a1 + 32) + 88) = 1;
  return result;
}

+ (BOOL)_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCPreflightOnceToken != -1)
  {
    dispatch_once(&_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCPreflightOnceToken, block);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  v7 = off_1E8578DB0[_ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCAccessPreflightStatus + 1];
  v10 = TLLogToneManagement(v8, v9);
  v11 = v10;
  if (v6)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy2 = self;
      v16 = 2114;
      v17 = pathCopy;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: File exists at path %{public}@. TCCAccessPreflight status: %{public}@.", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v16 = 2114;
    v17 = pathCopy;
    v18 = 2114;
    v19 = v7;
    _os_log_error_impl(&dword_1D9356000, v11, OS_LOG_TYPE_ERROR, "%{public}@: File DOES NOT exists at path %{public}@. TCCAccessPreflight status: %{public}@.", buf, 0x20u);
  }

  return v6;
}

void __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v2 = getkTCCServiceMediaLibrarySymbolLoc_ptr;
  v19 = getkTCCServiceMediaLibrarySymbolLoc_ptr;
  if (!getkTCCServiceMediaLibrarySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkTCCServiceMediaLibrarySymbolLoc_block_invoke;
    v21 = &unk_1E8578D30;
    v22 = &v16;
    v3 = TCCLibrary();
    v4 = dlsym(v3, "kTCCServiceMediaLibrary");
    *(v22[1] + 24) = v4;
    getkTCCServiceMediaLibrarySymbolLoc_ptr = *(v22[1] + 24);
    v2 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v2)
  {
    goto LABEL_19;
  }

  v5 = *v2;
  v6 = *v2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v7 = getTCCAccessPreflightSymbolLoc_ptr;
  v19 = getTCCAccessPreflightSymbolLoc_ptr;
  if (!getTCCAccessPreflightSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getTCCAccessPreflightSymbolLoc_block_invoke;
    v21 = &unk_1E8578D30;
    v22 = &v16;
    v8 = TCCLibrary();
    v9 = dlsym(v8, "TCCAccessPreflight");
    *(v22[1] + 24) = v9;
    getTCCAccessPreflightSymbolLoc_ptr = *(v22[1] + 24);
    v7 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v7)
  {
LABEL_19:
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    __break(1u);
  }

  v10 = v7(v5, 0);
  if (v10 == 2)
  {
    v12 = 0;
  }

  else
  {
    if (v10 != 1)
    {
      if (v10)
      {
        v13 = 0;
        v12 = -1;
      }

      else
      {
        v12 = 1;
        v13 = @"granted";
      }

      v14 = TLLogToneManagement(v10, v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v15;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_impl(&dword_1D9356000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Invoked TCCAccessPreflight(kTCCServiceMediaLibrary, NULL). Got result: %{public}@.", buf, 0x16u);
      }

      goto LABEL_18;
    }

    v12 = 2;
  }

  v14 = TLLogToneManagement(v10, v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_1();
  }

LABEL_18:

  _ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___TLToneManagerTCCAccessPreflightStatus = v12;
}

- (id)_toneIdentifierForMediaLibraryItemIdentifier:(unint64_t)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v7 = [v4 stringWithFormat:@"mediaLibrary:%llu-%@", identifier, uUIDString];

  return v7;
}

- (void)_handleTonePreferencesChangedNotificationForPreferencesKinds:(unint64_t)kinds
{
  v49 = *MEMORY[0x1E69E9840];
  if (self->_shouldIgnoreNextToneDidChangeNotification)
  {
    self->_shouldIgnoreNextToneDidChangeNotification = 0;
    v4 = TLLogToneManagement(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Ignoring notification.", buf, 0xCu);
    }
  }

  else if (self->_shouldUseServiceToAccessTonePreferences)
  {
    cachedTonePreferences = self->_cachedTonePreferences;
    self->_cachedTonePreferences = 0;

    v8 = TLLogToneManagement(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1D9356000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Clearing cached tone preferences.", buf, 0xCu);
    }

    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke;
    block[3] = &unk_1E85789A0;
    block[4] = self;
    dispatch_async(v9, block);
  }

  else
  {
    kindsCopy = kinds;
    v11 = TLLogToneManagement(self, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1D9356000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…", buf, 0xCu);
    }

    if ((kindsCopy & 1) != 0 && (v12 = +[TLPreferencesUtilities copySharedResourcesPreferencesDomain], (v13 = v12) != 0))
    {
      v14 = CFPreferencesSynchronize(v12, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      v16 = TLLogToneManagement(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Synchronized CFPreferences domain %{public}@.", buf, 0x16u);
      }

      CFRelease(v13);
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if ((kindsCopy & 2) != 0)
    {
      NPSDomainAccessorClass = +[TLPreferencesUtilities canAccessNanoRegistry];
      if (NPSDomainAccessorClass && (NPSDomainAccessorClass = getNPSDomainAccessorClass(), (v20 = NPSDomainAccessorClass) != 0))
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v46 = __Block_byref_object_copy_;
        v47 = __Block_byref_object_dispose_;
        v48 = 0;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke_979;
        v39[3] = &unk_1E8578950;
        v39[4] = self;
        v39[5] = buf;
        [(TLToneManager *)self _performBlockInAccessQueue:v39];
        v21 = *(*&buf[8] + 40);
        if (!v21)
        {
          v22 = [v20 alloc];
          v23 = +[TLPreferencesUtilities perWatchPreferencesDomain];
          v24 = [v22 initWithDomain:v23];
          v25 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v24;

          v28 = TLLogToneManagement(v26, v27);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(*&buf[8] + 40);
            *v41 = 138543618;
            selfCopy2 = self;
            v43 = 2114;
            v44 = v29;
            _os_log_impl(&dword_1D9356000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Instantiated domain accessor %{public}@.", v41, 0x16u);
          }

          v21 = *(*&buf[8] + 40);
        }

        synchronize = [v21 synchronize];
        v32 = TLLogToneManagement(synchronize, v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*&buf[8] + 40);
          *v41 = 138543618;
          selfCopy2 = self;
          v43 = 2114;
          v44 = v33;
          _os_log_impl(&dword_1D9356000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Synchronized domain accessor %{public}@.", v41, 0x16u);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v34 = TLLogToneManagement(NPSDomainAccessorClass, v19);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = +[TLPreferencesUtilities canAccessNanoRegistry];
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 1024;
          *&buf[14] = v35;
          _os_log_impl(&dword_1D9356000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: -_handleTonePreferencesChangedNotification…: Skipping synchronizing the domain accessor. canAccessNanoRegistry = %{BOOL}u.", buf, 0x12u);
        }
      }
    }

    v36 = dispatch_get_global_queue(0, 0);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke_980;
    v37[3] = &unk_1E8578D08;
    v37[4] = self;
    v38 = v17;
    dispatch_async(v36, v37);
  }
}

void __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TLTonePreferencesDidChangeNotification" object:*(a1 + 32)];
}

void __78__TLToneManager__handleTonePreferencesChangedNotificationForPreferencesKinds___block_invoke_980(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TLTonePreferencesDidChangeNotification" object:*(a1 + 32)];
  if (*(a1 + 40) == 1)
  {
    [v2 postNotificationName:@"_TLAlertOverridePolicyDidChangeNotification" object:0];
  }
}

- (void)_handleProtectionContentUnlockedEvent
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__TLToneManager__handleProtectionContentUnlockedEvent__block_invoke;
  v2[3] = &unk_1E85789A0;
  v2[4] = self;
  [(TLToneManager *)self _performBlockInAccessQueue:v2];
}

void *__54__TLToneManager__handleProtectionContentUnlockedEvent__block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = result;
    *(v1 + 48) = 0;

    v4 = v3[4];

    return [v4 _reloadTonesAfterExternalChange];
  }

  return result;
}

- (void)_addToneEntries:toManifestAtPath:mediaDirectory:shouldSkipReload:.cold.1()
{
  OUTLINED_FUNCTION_6();
  *v2 = 138543362;
  *(v2 + 4) = v3;
  v4 = v3;
  _os_log_error_impl(&dword_1D9356000, v0, OS_LOG_TYPE_ERROR, "%{public}@: Could not update ringtones plist", v1, 0xCu);
}

void __82__TLToneManager__addToneEntries_toManifestAtPath_mediaDirectory_shouldSkipReload___block_invoke_285_cold_1()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = objc_opt_class();
  v3 = *(v1 + 40);
  v4 = v2;
  [v3 count];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __60__TLToneManager__removeToneWithIdentifier_orSyncIdentifier___block_invoke_288_cold_1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x34u);
}

- (void)_removeTonesFromManifestAtPath:(uint64_t)a1 fileNames:(uint64_t)a2 shouldSkipReload:alreadyLockedManifest:removedEntries:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __44__TLToneManager__tonePreferencesFromService__block_invoke_775_cold_1(void *a1)
{
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_cold_1(void *a1)
{
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __78__TLToneManager__setToneIdentifierUsingService_keyedByTopic_forPreferenceKey___block_invoke_778_cold_1(void *a1)
{
  v1 = [a1 tl_nonRedundantDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __44__TLToneManager__toneWithIdentifierIsValid___block_invoke_cold_2(uint64_t a1)
{
  [*(*a1 + 16) count];
  v7 = [*(*a1 + 16) allKeys];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);
}

- (void)_removeToneWithSyncIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_migrateLegacyToneSettings
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138543362;
  v2 = 0;
  _os_log_error_impl(&dword_1D9356000, log, OS_LOG_TYPE_ERROR, "Unexpected value for preferences key associated to alertType TLAlertTypeTextMessage: %{public}@.", &v1, 0xCu);
}

- (void)setCurrentWatchToneIdentifier:(uint64_t)a1 forAlertType:(unint64_t)a2 topic:.cold.1(uint64_t a1, unint64_t a2)
{
  v7 = NSStringFromTLAlertType(a2);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_setCurrentToneWatchAlertPolicy:(unint64_t)a1 forAlertType:topic:.cold.1(unint64_t a1)
{
  v1 = NSStringFromTLAlertType(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_setCurrentOverridePolicy:(unint64_t)a1 forAlertType:.cold.1(unint64_t a1)
{
  v1 = NSStringFromTLAlertType(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  _os_log_fault_impl(&dword_1D9356000, v1, OS_LOG_TYPE_FAULT, "%{public}@: Invoked TCCAccessPreflight(kTCCServiceMediaLibrary, NULL). Got result: %{public}@.", v2, 0x16u);
}

uint64_t __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getNPSDomainAccessorClass_block_invoke_cold_1();
}

@end