@interface NMSMediaPinningManager
+ (BOOL)_playlistPIDValidForPinning:(id)pinning;
+ (id)_cachedAlbumIdentifiersFilePath;
+ (id)_cachedAudiobookIdentifiersFilePath;
+ (id)_cachedIdentifiersDirectoryPath;
+ (id)_cachedPlaylistIdentifiersFilePath;
+ (id)_fetchMusicRecommendations;
+ (id)_tokenForInstance:(id)instance;
+ (id)sharedManager;
+ (unint64_t)_mediaStorageSizeForCurrentDevice;
+ (void)_persistNewClientToken;
- (BOOL)_deviceSupportsPodcastsPinningSettingsV2;
- (BOOL)_isAlbumPinned:(id)pinned;
- (BOOL)_isAudiobookPinned:(id)pinned;
- (BOOL)_isPlaylistPinned:(id)pinned;
- (BOOL)_legacy_musicIsOutOfSpace;
- (BOOL)_shouldCalculateCachedIdentifiers;
- (BOOL)_shouldSkipQuotaManagerEvaluation;
- (BOOL)isAlbumPinned:(id)pinned;
- (BOOL)isAudiobookPinned:(id)pinned;
- (BOOL)isItemGroupWithinQuota:(id)quota;
- (BOOL)isPlaylistPinned:(id)pinned;
- (BOOL)isReadingNowEnabled;
- (BOOL)isWantToReadEnabled;
- (BOOL)pinnedPodcastsAreUserSet;
- (BOOL)savedEpisodesEnabled;
- (NMSMediaDownloadInfo)downloadInfo;
- (NMSMediaPinningManager)init;
- (NMSPodcastsDownloadSettings)podcastsSavedEpisodesDownloadSettings;
- (NMSPodcastsDownloadSettings)podcastsUpNextDownloadSettings;
- (NSArray)albumIdentifiers;
- (NSArray)audiobookIdentifiers;
- (NSArray)pinnedAlbums;
- (NSArray)pinnedPlaylists;
- (NSArray)playlistIdentifiers;
- (NSArray)podcastFeedURLs;
- (NSArray)podcastStationUUIDs;
- (NSNumber)workoutPlaylistID;
- (NSOrderedSet)pinnedAudiobooks;
- (NSOrderedSet)readingNowAudiobooks;
- (NSOrderedSet)wantToReadAudiobooks;
- (NSSet)podcastsSelectedShowFeedURLs;
- (NSSet)podcastsSelectedStationUUIDs;
- (double)_audiobookDownloadLimit;
- (double)audiobookDownloadLimit;
- (id)_legacy_newAudiobooksGroupIteratorWithDownloadedItemsOnly:(BOOL)only;
- (id)_legacy_newGroupIteratorForBundleIdentifier:(id)identifier downloadedItemsOnly:(BOOL)only;
- (id)_legacy_newMusicGroupIteratorWithDownloadedItemsOnly:(BOOL)only;
- (id)_legacy_newPodcastsGroupIteratorWithDownloadedItemsOnly:(BOOL)only;
- (id)_legacy_quotaManagerWithDownloadedItemsOnly:(BOOL)only;
- (id)_newAudiobooksEnumeratorWithDownloadedItemsOnly:(BOOL)only;
- (id)_newItemEnumeratorForBundleIdentifier:(id)identifier downloadedItemsOnly:(BOOL)only;
- (id)_newMusicEnumeratorWithDownloadedItemsOnly:(BOOL)only;
- (id)_quotaManagerWithDownloadedItemsOnly:(BOOL)only;
- (id)downloadInfoForBundleIdentifier:(id)identifier;
- (id)downloadInfoWithinAvailableSpace:(unint64_t)space;
- (id)podcastsDownloadSettingsForShowFeedURL:(id)l;
- (id)podcastsDownloadSettingsForStationUUID:(id)d;
- (unint64_t)_mediaQuota;
- (void)_fetchAudiobooksIdentifiers;
- (void)_fetchMusicIdentifiers;
- (void)_handleAudiobooksPinningSelectionsDidChangeNotification:(id)notification;
- (void)_handleAudiobooksRecommendationsDidChangeNotification:(id)notification;
- (void)_handleICAgeVerificationStateDidChangeNotification:(id)notification;
- (void)_handleMediaLibraryDidChangeNotification:(id)notification;
- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)notification;
- (void)_handleMediaPinningAudiobooksContentsInvalidatedNotification:(id)notification;
- (void)_handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification:(id)notification;
- (void)_handleMediaPinningManagerMusicIdentifiersDidChangeNotification:(id)notification;
- (void)_handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification:(id)notification;
- (void)_handleMediaPinningMusicContentsInvalidatedNotification:(id)notification;
- (void)_handleMediaPinningPodcastsContentsInvalidatedNotification:(id)notification;
- (void)_handleMusicPinningSelectionsDidChangeNotification:(id)notification;
- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)notification;
- (void)_handlePodcastSizeInfoDidChangeNotification:(id)notification;
- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)notification;
- (void)_handleRecommendationLibraryContentsDidChangeNotification:(id)notification;
- (void)_handleRecommendationSelectionsDidChangeNotification:(id)notification;
- (void)_handleRecommendationsDidUpdateNotification:(id)notification;
- (void)_invalidateAddedItemsCache;
- (void)_invalidateMediaCacheForAppIdentifiers:(unint64_t)identifiers;
- (void)_legacy_refreshAudiobooksIdentifiers;
- (void)_legacy_refreshMusicIdentifiers;
- (void)_legacy_refreshPodcastsIdentifiers;
- (void)_notePinningSettingsChangedLocally;
- (void)_refreshAudiobooksIdentifiers;
- (void)_refreshMusicIdentifiers;
- (void)_refreshPodcastsIdentifiers;
- (void)_setWorkoutPlaylistID:(id)d;
- (void)_updateWorkoutSettingsPlaylistPIDTo:(id)to;
- (void)dealloc;
- (void)downloadableContentProviderDidChangeContent:(id)content;
- (void)extensionAccessDidChange;
- (void)invalidateAudiobooksCache;
- (void)invalidateMusicCache;
- (void)invalidatePodcastsCache;
- (void)pinAlbum:(id)album completionHandler:(id)handler;
- (void)pinAudiobook:(id)audiobook;
- (void)pinPlaylist:(id)playlist completionHandler:(id)handler;
- (void)pinPodcastStationWithUUID:(id)d;
- (void)pinPodcastWithFeedURL:(id)l;
- (void)podcastsDownloadableContentControllerContentDidChange:(id)change;
- (void)setAudiobookDownloadLimit:(double)limit;
- (void)setAvailableSpace:(unint64_t)space;
- (void)setPinnedPodcastsAreUserSet:(BOOL)set;
- (void)setPodcastsDownloadSettings:(id)settings forShowFeedURL:(id)l;
- (void)setPodcastsDownloadSettings:(id)settings forStationUUID:(id)d;
- (void)setPodcastsSavedEpisodesDownloadSettings:(id)settings;
- (void)setPodcastsUpNextDownloadSettings:(id)settings;
- (void)setReadingNowAudiobooks:(id)audiobooks;
- (void)setReadingNowEnabled:(BOOL)enabled;
- (void)setSavedEpisodesEnabled:(BOOL)enabled;
- (void)setWantToReadAudiobooks:(id)audiobooks;
- (void)setWantToReadEnabled:(BOOL)enabled;
- (void)setWorkoutPlaylistID:(id)d;
- (void)unpinAlbum:(id)album completionHandler:(id)handler;
- (void)unpinAudiobook:(id)audiobook;
- (void)unpinPlaylist:(id)playlist completionHandler:(id)handler;
- (void)unpinPodcastStationWithUUID:(id)d;
- (void)unpinPodcastWithFeedURL:(id)l;
@end

@implementation NMSMediaPinningManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NMSMediaPinningManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager___sharedMananger;

  return v2;
}

uint64_t __39__NMSMediaPinningManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_opt_new();
  v2 = sharedManager___sharedMananger;
  sharedManager___sharedMananger = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (NMSMediaPinningManager)init
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = NMSMediaPinningManager;
  v2 = [(NMSMediaPinningManager *)&v24 init];
  if (v2)
  {
    v3 = +[NMSyncDefaults sharedDefaults];
    sharedDefaults = v2->_sharedDefaults;
    v2->_sharedDefaults = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.NanoMusicSync.MediaPinning", v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    if ([(NMSMediaPinningManager *)v2 _shouldCalculateCachedIdentifiers]|| ![(NMSMediaPinningManager *)v2 _shouldSkipQuotaManagerEvaluation])
    {
      if ([(NMSMediaPinningManager *)v2 _deviceSupportsPodcastsPinningSettingsV2])
      {
        v12 = objc_alloc_init(NMSPodcastsDownloadableContentProvider);
        podcastsDownloadableContentProvider = v2->_podcastsDownloadableContentProvider;
        v2->_podcastsDownloadableContentProvider = v12;

        [(NMSPodcastsDownloadableContentProvider *)v2->_podcastsDownloadableContentProvider setDelegate:v2];
LABEL_10:
        [defaultCenter addObserver:v2 selector:sel__handlePodcastsPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.podcasts-pinning-selections" object:0];
        [defaultCenter addObserver:v2 selector:sel__handleMusicPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.music-pinning-selections" object:0];
        [defaultCenter addObserver:v2 selector:sel__handleRecommendationLibraryContentsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-library" object:0];
        [defaultCenter addObserver:v2 selector:sel__handleRecommendationsDidUpdateNotification_ name:@"NMSMusicRecommendationsDidUpdateNotification" object:0];
        [defaultCenter addObserver:v2 selector:sel__handleAudiobooksPinningSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.audiobooks-pinning-selections" object:0];
        [defaultCenter addObserver:v2 selector:sel__handleAudiobooksRecommendationsDidChangeNotification_ name:@"com.apple.nanomusicsync.audiobooks-recommendations" object:0];
        [defaultCenter addObserver:v2 selector:sel__handleICAgeVerificationStateDidChangeNotification_ name:*MEMORY[0x277D7F8D0] object:0];
        [defaultCenter addObserver:v2 selector:sel__handleRecommendationSelectionsDidChangeNotification_ name:@"com.apple.nanomusicsync.reco-selections" object:0];
        [defaultCenter addObserver:v2 selector:sel__handlePairedDeviceDidBecomeActiveNotification_ name:*MEMORY[0x277D2BC48] object:0];
        [defaultCenter addObserver:v2 selector:sel__handleMediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];
        [defaultCenter addObserver:v2 selector:sel__handleMediaLibraryDynamicPropertiesDidChangeNotification_ name:*MEMORY[0x277CD58E8] object:0];
        defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
        [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];

        defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter2 addObserver:v2 selector:sel__handleMediaPinningMusicContentsInvalidatedNotification_ name:@"NMSMediaPinningMusicContentsInvalidatedNotification" object:0];

        defaultCenter3 = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter3 addObserver:v2 selector:sel__handleMediaPinningPodcastsContentsInvalidatedNotification_ name:@"NMSMediaPinningPodcastsContentsInvalidatedNotification" object:0];

        defaultCenter4 = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter4 addObserver:v2 selector:sel__handleMediaPinningAudiobooksContentsInvalidatedNotification_ name:@"NMSMediaPinningAudiobooksContentsInvalidatedNotification" object:0];

        defaultCenter5 = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter5 addObserver:v2 selector:sel__handleMediaPinningManagerMusicIdentifiersDidChangeNotification_ name:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:0];

        defaultCenter6 = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter6 addObserver:v2 selector:sel__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification_ name:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:0];

        defaultCenter7 = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter7 addObserver:v2 selector:sel__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification_ name:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:0];

        return v2;
      }

      v14 = objc_alloc_init(NMSPodcastsDownloadableContentController_Legacy);
      legacy_podcastsDownloadableContentController = v2->_legacy_podcastsDownloadableContentController;
      v2->_legacy_podcastsDownloadableContentController = v14;

      [(NMSPodcastsDownloadableContentController_Legacy *)v2->_legacy_podcastsDownloadableContentController setDelegate:v2];
      mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
      [mEMORY[0x277D3DAF0] addObserver:v2];
    }

    else
    {
      mEMORY[0x277D3DAF0] = NMLogForCategory(5);
      if (os_log_type_enabled(mEMORY[0x277D3DAF0], OS_LOG_TYPE_DEFAULT))
      {
        _shouldCalculateCachedIdentifiers = [(NMSMediaPinningManager *)v2 _shouldCalculateCachedIdentifiers];
        _shouldSkipQuotaManagerEvaluation = [(NMSMediaPinningManager *)v2 _shouldSkipQuotaManagerEvaluation];
        *buf = 67109376;
        v26 = _shouldCalculateCachedIdentifiers;
        v27 = 1024;
        v28 = _shouldSkipQuotaManagerEvaluation;
        _os_log_impl(&dword_25B27B000, mEMORY[0x277D3DAF0], OS_LOG_TYPE_DEFAULT, "Not creating NMSPodcastsDownloadableContentProvider. _shouldCalculateCachedIdentifiers %x _shouldSkipQuotaManagerEvaluation %x", buf, 0xEu);
      }
    }

    goto LABEL_10;
  }

  return v2;
}

- (void)dealloc
{
  defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [defaultMediaLibrary endGeneratingLibraryChangeNotifications];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = NMSMediaPinningManager;
  [(NMSMediaPinningManager *)&v5 dealloc];
}

- (id)downloadInfoWithinAvailableSpace:(unint64_t)space
{
  [(NMSMediaPinningManager *)self setAvailableSpace:space];

  return [(NMSMediaPinningManager *)self downloadInfo];
}

- (void)setAvailableSpace:(unint64_t)space
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__NMSMediaPinningManager_setAvailableSpace___block_invoke;
  v4[3] = &unk_27993E520;
  v4[4] = self;
  v4[5] = space;
  dispatch_async(internalQueue, v4);
}

char *__44__NMSMediaPinningManager_setAvailableSpace___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _mediaStorageSizeForCurrentDevice];
  if (v2 >= *(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = v2;
  }

  result = [*(a1 + 32) _mediaQuota];
  if (&result[-v3] >= 0x4C4B41)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);

    return [v8 _invalidateAddedItemsCache];
  }

  return result;
}

- (NMSMediaDownloadInfo)downloadInfo
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__NMSMediaPinningManager_downloadInfo__block_invoke_2;
    v7[3] = &unk_27993E410;
    v7[4] = self;
    v7[5] = &v9;
    v4 = v7;
  }

  else
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__NMSMediaPinningManager_downloadInfo__block_invoke;
    block[3] = &unk_27993E410;
    block[4] = self;
    block[5] = &v9;
    v4 = block;
  }

  dispatch_sync(internalQueue, v4);
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __38__NMSMediaPinningManager_downloadInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D7FA90] sharedMonitor];
  v7 = [v2 _legacy_quotaManagerWithDownloadedItemsOnly:{objc_msgSend(v3, "isCharging") ^ 1}];

  v4 = [v7 downloadInfoWithinQuota];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __38__NMSMediaPinningManager_downloadInfo__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277D7FA90] sharedMonitor];
  v7 = [v2 _quotaManagerWithDownloadedItemsOnly:{objc_msgSend(v3, "isCharging") ^ 1}];

  v4 = [v7 downloadInfoWithinQuota];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)downloadInfoForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _deviceSupportsPodcastsPinningSettingsV2 = [(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  internalQueue = self->_internalQueue;
  if (_deviceSupportsPodcastsPinningSettingsV2)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke_2;
    v11[3] = &unk_27993E548;
    v12 = identifierCopy;
    v13 = &v17;
    v11[4] = self;
    v7 = identifierCopy;
    dispatch_sync(internalQueue, v11);
    v8 = v18[5];
    v9 = v12;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke;
    block[3] = &unk_27993E548;
    v15 = identifierCopy;
    v16 = &v17;
    block[4] = self;
    v7 = identifierCopy;
    dispatch_sync(internalQueue, block);
    v8 = v18[5];
    v9 = v15;
  }

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v2 = [v5 downloadInfoWithinQuotaForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __58__NMSMediaPinningManager_downloadInfoForBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) _quotaManagerWithDownloadedItemsOnly:0];
  v2 = [v5 downloadInfoWithinQuotaForBundleIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)isItemGroupWithinQuota:(id)quota
{
  quotaCopy = quota;
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v5 = [(NMSMediaPinningManager *)self _quotaManagerWithDownloadedItemsOnly:0];
    downloadInfoWithinQuota = [v5 downloadInfoWithinQuota];

    v7 = [[NMSItemGroupEnumerator alloc] initWithItemGroup:quotaCopy];
    nextItem = [(NMSItemGroupEnumerator *)v7 nextItem];
    if (nextItem)
    {
      v9 = nextItem;
      do
      {
        v10 = [downloadInfoWithinQuota containsItem:v9];
        v11 = v10;
        if (!v10)
        {
          break;
        }

        nextItem2 = [(NMSItemGroupEnumerator *)v7 nextItem];

        v9 = nextItem2;
      }

      while (nextItem2);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__NMSMediaPinningManager_isItemGroupWithinQuota___block_invoke;
    block[3] = &unk_27993E548;
    v17 = &v18;
    block[4] = self;
    v16 = quotaCopy;
    dispatch_sync(internalQueue, block);
    v11 = *(v19 + 24);

    _Block_object_dispose(&v18, 8);
  }

  return v11 & 1;
}

void __49__NMSMediaPinningManager_isItemGroupWithinQuota___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _legacy_quotaManagerWithDownloadedItemsOnly:0];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isItemGroupWithinQuota:*(a1 + 40)];
}

- (void)invalidateMusicCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NMSMediaPinningManager_invalidateMusicCache__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __46__NMSMediaPinningManager_invalidateMusicCache__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Music cache. [External]", v4, 2u);
  }

  return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:1];
}

- (NSNumber)workoutPlaylistID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) workoutPlaylistID];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ((*(*(a1 + 32) + 113) & 1) == 0)
  {
    if ([*(*(*(a1 + 40) + 8) + 40) longLongValue] && (objc_msgSend(objc_opt_class(), "_playlistPIDValidForPinning:", *(*(*(a1 + 40) + 8) + 40)) & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke_cold_1(a1 + 40, v6, v7, v8, v9, v10, v11, v12);
      }

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = 0;

      [*(a1 + 32) _setWorkoutPlaylistID:*(*(*(a1 + 40) + 8) + 40)];
    }

    *(*(a1 + 32) + 113) = 1;
  }
}

- (void)invalidatePodcastsCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__NMSMediaPinningManager_invalidatePodcastsCache__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __49__NMSMediaPinningManager_invalidatePodcastsCache__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Podcasts cache. [External]", v4, 2u);
  }

  return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NMSPodcastsDownloadSettings)podcastsUpNextDownloadSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__NMSMediaPinningManager_podcastsUpNextDownloadSettings__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__NMSMediaPinningManager_podcastsUpNextDownloadSettings__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsUpNextDownloadSettings"];
  v2 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:0 dictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPodcastsUpNextDownloadSettings:(id)settings
{
  settingsCopy = settings;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__NMSMediaPinningManager_setPodcastsUpNextDownloadSettings___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = settingsCopy;
  selfCopy = self;
  v6 = settingsCopy;
  dispatch_async(internalQueue, v7);
}

void __60__NMSMediaPinningManager_setPodcastsUpNextDownloadSettings___block_invoke(uint64_t a1)
{
  v4 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:0 legacyDownloadSettings:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  v3 = [(NMSPodcastsDownloadSettings *)v4 dictionaryRepresentation];
  [v2 setObject:v3 forKey:@"PodcastsUpNextDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NMSPodcastsDownloadSettings)podcastsSavedEpisodesDownloadSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__NMSMediaPinningManager_podcastsSavedEpisodesDownloadSettings__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __63__NMSMediaPinningManager_podcastsSavedEpisodesDownloadSettings__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsSavedEpisodesDownloadSettings"];
  v2 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:1 dictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setPodcastsSavedEpisodesDownloadSettings:(id)settings
{
  settingsCopy = settings;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NMSMediaPinningManager_setPodcastsSavedEpisodesDownloadSettings___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = settingsCopy;
  selfCopy = self;
  v6 = settingsCopy;
  dispatch_async(internalQueue, v7);
}

void __67__NMSMediaPinningManager_setPodcastsSavedEpisodesDownloadSettings___block_invoke(uint64_t a1)
{
  v4 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:1 legacyDownloadSettings:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 8);
  v3 = [(NMSPodcastsDownloadSettings *)v4 dictionaryRepresentation];
  [v2 setObject:v3 forKey:@"PodcastsSavedEpisodesDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (id)podcastsDownloadSettingsForStationUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NMSMediaPinningManager_podcastsDownloadSettingsForStationUUID___block_invoke;
  block[3] = &unk_27993E598;
  block[4] = self;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__NMSMediaPinningManager_podcastsDownloadSettingsForStationUUID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"PodcastsStationDownloadSettings"];
  v6 = [v2 objectForKey:a1[5]];

  v3 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 dictionary:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setPodcastsDownloadSettings:(id)settings forStationUUID:(id)d
{
  settingsCopy = settings;
  dCopy = d;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forStationUUID___block_invoke;
  block[3] = &unk_27993E5C0;
  v12 = settingsCopy;
  selfCopy = self;
  v14 = dCopy;
  v9 = dCopy;
  v10 = settingsCopy;
  dispatch_async(internalQueue, block);
}

void __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forStationUUID___block_invoke(uint64_t a1)
{
  v10 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 legacyDownloadSettings:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 8) objectForKey:@"PodcastsStationDownloadSettings"];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = [(NMSPodcastsDownloadSettings *)v10 dictionaryRepresentation];
  [v6 setObject:v7 forKey:*(a1 + 48)];

  v8 = *(*(a1 + 40) + 8);
  v9 = [v6 copy];
  [v8 setObject:v9 forKey:@"PodcastsStationDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NSSet)podcastsSelectedStationUUIDs
{
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    internalQueue = self->_internalQueue;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_2;
    v12 = &unk_27993E570;
    selfCopy = self;
    v14 = v3;
    v5 = v3;
    dispatch_sync(internalQueue, &v9);
    v6 = [v5 copy];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = [MEMORY[0x277CBEB98] set];
    v7 = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke;
    block[3] = &unk_27993DCA8;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(v7, block);
    v6 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return v6;
}

void __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) pinnedPodcastStationUUIDs];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsStationDownloadSettings"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_3;
  v3[3] = &unk_27993E5E8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __54__NMSMediaPinningManager_podcastsSelectedStationUUIDs__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:2 dictionary:v5];

  if ([(NMSPodcastsDownloadSettings *)v6 isEnabled])
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)podcastsDownloadSettingsForShowFeedURL:(id)l
{
  lCopy = l;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NMSMediaPinningManager_podcastsDownloadSettingsForShowFeedURL___block_invoke;
  block[3] = &unk_27993E598;
  block[4] = self;
  v10 = lCopy;
  v11 = &v12;
  v6 = lCopy;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__NMSMediaPinningManager_podcastsDownloadSettingsForShowFeedURL___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKey:@"PodcastsShowDownloadSettings"];
  v6 = [v2 objectForKey:a1[5]];

  v3 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 dictionary:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setPodcastsDownloadSettings:(id)settings forShowFeedURL:(id)l
{
  settingsCopy = settings;
  lCopy = l;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forShowFeedURL___block_invoke;
  block[3] = &unk_27993E5C0;
  v12 = settingsCopy;
  selfCopy = self;
  v14 = lCopy;
  v9 = lCopy;
  v10 = settingsCopy;
  dispatch_async(internalQueue, block);
}

void __69__NMSMediaPinningManager_setPodcastsDownloadSettings_forShowFeedURL___block_invoke(uint64_t a1)
{
  v10 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 legacyDownloadSettings:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 8) objectForKey:@"PodcastsShowDownloadSettings"];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
  }

  v6 = v5;

  v7 = [(NMSPodcastsDownloadSettings *)v10 dictionaryRepresentation];
  [v6 setObject:v7 forKey:*(a1 + 48)];

  v8 = *(*(a1 + 40) + 8);
  v9 = [v6 copy];
  [v8 setObject:v9 forKey:@"PodcastsShowDownloadSettings"];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
}

- (NSSet)podcastsSelectedShowFeedURLs
{
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v3 = [MEMORY[0x277CBEB58] set];
    internalQueue = self->_internalQueue;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_2;
    v12 = &unk_27993E570;
    selfCopy = self;
    v14 = v3;
    v5 = v3;
    dispatch_sync(internalQueue, &v9);
    v6 = [v5 copy];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = [MEMORY[0x277CBEB98] set];
    v7 = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke;
    block[3] = &unk_27993DCA8;
    block[4] = self;
    block[5] = &v16;
    dispatch_sync(v7, block);
    v6 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return v6;
}

void __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v6 = [*(*(a1 + 32) + 8) pinnedPodcastFeedURLs];
  v3 = [v2 setWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"PodcastsShowDownloadSettings"];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_3;
  v3[3] = &unk_27993E5E8;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __54__NMSMediaPinningManager_podcastsSelectedShowFeedURLs__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [[NMSPodcastsDownloadSettings alloc] initWithCollectionType:3 dictionary:v5];

  if ([(NMSPodcastsDownloadSettings *)v6 isEnabled])
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (BOOL)pinnedPodcastsAreUserSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__NMSMediaPinningManager_pinnedPodcastsAreUserSet__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__50__NMSMediaPinningManager_pinnedPodcastsAreUserSet__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) pinnedPodcastsAreUserSet];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPinnedPodcastsAreUserSet:(BOOL)set
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__NMSMediaPinningManager_setPinnedPodcastsAreUserSet___block_invoke;
  v4[3] = &unk_27993E610;
  setCopy = set;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

void *__54__NMSMediaPinningManager_setPinnedPodcastsAreUserSet___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) pinnedPodcastsAreUserSet];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new pinned podcasts are user set value %x", v6, 8u);
    }

    [*(*(a1 + 32) + 8) setPinnedPodcastsAreUserSet:*(a1 + 40)];
    return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:2];
  }

  return result;
}

- (BOOL)savedEpisodesEnabled
{
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    podcastsSavedEpisodesDownloadSettings = [(NMSMediaPinningManager *)self podcastsSavedEpisodesDownloadSettings];
    isEnabled = [podcastsSavedEpisodesDownloadSettings isEnabled];

    return isEnabled;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    internalQueue = self->_internalQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __46__NMSMediaPinningManager_savedEpisodesEnabled__block_invoke;
    v8[3] = &unk_27993E410;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(internalQueue, v8);
    v7 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    return v7;
  }
}

void *__46__NMSMediaPinningManager_savedEpisodesEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) pinnedPodcastsAreUserSet];
  if (result)
  {
    result = [*(*(a1 + 32) + 8) savedEpisodesEnabled];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (void)setSavedEpisodesEnabled:(BOOL)enabled
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__NMSMediaPinningManager_setSavedEpisodesEnabled___block_invoke;
  v4[3] = &unk_27993E610;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

void *__50__NMSMediaPinningManager_setSavedEpisodesEnabled___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) savedEpisodesEnabled];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new saved episodes enabled value %x", v6, 8u);
    }

    [*(*(a1 + 32) + 8) setSavedEpisodesEnabled:*(a1 + 40)];
    return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:2];
  }

  return result;
}

- (NSArray)podcastFeedURLs
{
  podcastsSelectedShowFeedURLs = [(NMSMediaPinningManager *)self podcastsSelectedShowFeedURLs];
  allObjects = [podcastsSelectedShowFeedURLs allObjects];

  return allObjects;
}

- (NSArray)podcastStationUUIDs
{
  podcastsSelectedStationUUIDs = [(NMSMediaPinningManager *)self podcastsSelectedStationUUIDs];
  allObjects = [podcastsSelectedStationUUIDs allObjects];

  return allObjects;
}

- (void)_refreshPodcastsIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    obj = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsUpNextDownloadSettings"];
    v3 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsSavedEpisodesDownloadSettings"];
    v4 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsStationDownloadSettings"];
    v5 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"PodcastsShowDownloadSettings"];
    p_cachedUpNextDownloadSettings = &self->_cachedUpNextDownloadSettings;
    v7 = self->_cachedUpNextDownloadSettings;
    v8 = v7;
    if (v7 == obj)
    {
      HIDWORD(v22) = 0;
    }

    else
    {
      HIDWORD(v22) = [(NSDictionary *)v7 isEqual:?]^ 1;
    }

    p_cachedSavedEpisodesDownloadSettings = &self->_cachedSavedEpisodesDownloadSettings;
    v10 = self->_cachedSavedEpisodesDownloadSettings;
    v11 = v10;
    if (v10 == v3)
    {
      LODWORD(v22) = 0;
    }

    else
    {
      LODWORD(v22) = [(NSDictionary *)v10 isEqual:v3]^ 1;
    }

    p_cachedStationDownloadSettings = &self->_cachedStationDownloadSettings;
    v13 = self->_cachedStationDownloadSettings;
    v14 = v13;
    if (v13 == v4)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(NSDictionary *)v13 isEqual:v4]^ 1;
    }

    cachedShowDownloadSettings = self->_cachedShowDownloadSettings;
    p_cachedShowDownloadSettings = &self->_cachedShowDownloadSettings;
    v18 = cachedShowDownloadSettings;
    v19 = v18;
    if (v18 == v5)
    {
      v20 = 0;
    }

    else
    {
      v20 = [(NSDictionary *)v18 isEqual:v5]^ 1;
    }

    objc_storeStrong(p_cachedUpNextDownloadSettings, obj);
    objc_storeStrong(p_cachedSavedEpisodesDownloadSettings, v3);
    objc_storeStrong(p_cachedStationDownloadSettings, v4);
    objc_storeStrong(p_cachedShowDownloadSettings, v5);
    if (((HIDWORD(v22) | v22 | v15) & 1) != 0 || v20)
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter postNotificationName:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:0];
    }
  }

  else
  {

    [(NMSMediaPinningManager *)self _legacy_refreshPodcastsIdentifiers];
  }
}

- (void)pinPodcastWithFeedURL:(id)l
{
  lCopy = l;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NMSMediaPinningManager_pinPodcastWithFeedURL___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  dispatch_async(internalQueue, v7);
}

void __48__NMSMediaPinningManager_pinPodcastWithFeedURL___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning podcast <%{public}@>", &v6, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastFeedURLs];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastFeedURLs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }
}

- (void)unpinPodcastWithFeedURL:(id)l
{
  lCopy = l;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NMSMediaPinningManager_unpinPodcastWithFeedURL___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = lCopy;
  selfCopy = self;
  v6 = lCopy;
  dispatch_async(internalQueue, v7);
}

void __50__NMSMediaPinningManager_unpinPodcastWithFeedURL___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning podcast <%{public}@>", &v6, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastFeedURLs];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastFeedURLs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }
}

- (void)pinPodcastStationWithUUID:(id)d
{
  dCopy = d;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NMSMediaPinningManager_pinPodcastStationWithUUID___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __52__NMSMediaPinningManager_pinPodcastStationWithUUID___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning podcast station <%{public}@>", &v6, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastStationUUIDs];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastStationUUIDs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }
}

- (void)unpinPodcastStationWithUUID:(id)d
{
  dCopy = d;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__NMSMediaPinningManager_unpinPodcastStationWithUUID___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

void __54__NMSMediaPinningManager_unpinPodcastStationWithUUID___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning podcast station <%{public}@>", &v6, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPodcastStationUUIDs];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPodcastStationUUIDs:v5];
  if ([*(*(a1 + 40) + 8) pinnedPodcastsAreUserSet])
  {
    [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:2];
  }
}

- (void)invalidateAudiobooksCache
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NMSMediaPinningManager_invalidateAudiobooksCache__block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __51__NMSMediaPinningManager_invalidateAudiobooksCache__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Audiobooks cache. [External]", v4, 2u);
  }

  return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
}

- (NSArray)audiobookIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NMSMediaPinningManager_audiobookIdentifiers__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NMSMediaPinningManager_audiobookIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[13])
  {
    v3 = [v2 _shouldCalculateCachedIdentifiers];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _refreshAudiobooksIdentifiers];
    }

    else
    {
      [v4 _fetchAudiobooksIdentifiers];
    }
  }

  v5 = *(*(a1 + 32) + 104);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)_fetchAudiobooksIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v6 = MEMORY[0x277CCAAC8];
  v7 = MEMORY[0x277CBEA90];
  _cachedAudiobookIdentifiersFilePath = [objc_opt_class() _cachedAudiobookIdentifiersFilePath];
  v9 = [v7 dataWithContentsOfFile:_cachedAudiobookIdentifiersFilePath];
  v14 = 0;
  v10 = [v6 unarchivedObjectOfClasses:v5 fromData:v9 error:&v14];
  v11 = v14;

  if (v11)
  {
    v12 = NMLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaPinningManager _fetchAudiobooksIdentifiers];
    }
  }

  cachedAudiobookIdentifiers = self->_cachedAudiobookIdentifiers;
  self->_cachedAudiobookIdentifiers = v10;
}

- (void)_refreshAudiobooksIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    if ([(NMSyncDefaults *)self->_sharedDefaults readingNowEnabled])
    {
      readingNowAudiobooks = [(NMSyncDefaults *)self->_sharedDefaults readingNowAudiobooks];

      if (readingNowAudiobooks)
      {
        readingNowAudiobooks2 = [(NMSyncDefaults *)self->_sharedDefaults readingNowAudiobooks];
        [orderedSet addObjectsFromArray:readingNowAudiobooks2];
      }
    }

    if ([(NMSyncDefaults *)self->_sharedDefaults wantToReadEnabled])
    {
      wantToReadAudiobooks = [(NMSyncDefaults *)self->_sharedDefaults wantToReadAudiobooks];

      if (wantToReadAudiobooks)
      {
        wantToReadAudiobooks2 = [(NMSyncDefaults *)self->_sharedDefaults wantToReadAudiobooks];
        [orderedSet addObjectsFromArray:wantToReadAudiobooks2];
      }
    }

    pinnedAudiobooks = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];

    if (pinnedAudiobooks)
    {
      pinnedAudiobooks2 = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];
      [orderedSet addObjectsFromArray:pinnedAudiobooks2];
    }

    array = [orderedSet array];
    p_cachedAudiobookIdentifiers = &self->_cachedAudiobookIdentifiers;
    v12 = self->_cachedAudiobookIdentifiers;
    v13 = v12;
    if (v12 == array)
    {
    }

    else
    {
      v14 = [(NSArray *)v12 isEqual:array];

      if ((v14 & 1) == 0)
      {
        v20 = 0;
        v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:array requiringSecureCoding:1 error:&v20];
        v16 = v20;
        if (v16)
        {
          v17 = NMLogForCategory(5);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [NMSMediaPinningManager _refreshAudiobooksIdentifiers];
          }
        }

        _cachedAudiobookIdentifiersFilePath = [objc_opt_class() _cachedAudiobookIdentifiersFilePath];
        [v15 writeToFile:_cachedAudiobookIdentifiersFilePath atomically:1];

        objc_storeStrong(p_cachedAudiobookIdentifiers, array);
        defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter postNotificationName:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:0];
      }
    }
  }

  else
  {

    [(NMSMediaPinningManager *)self _legacy_refreshAudiobooksIdentifiers];
  }
}

- (BOOL)isWantToReadEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NMSMediaPinningManager_isWantToReadEnabled__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__NMSMediaPinningManager_isWantToReadEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) wantToReadEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setWantToReadEnabled:(BOOL)enabled
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSMediaPinningManager_setWantToReadEnabled___block_invoke;
  v4[3] = &unk_27993E610;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

void *__47__NMSMediaPinningManager_setWantToReadEnabled___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) wantToReadEnabled];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new wantToReadEnabled value: %x", v6, 8u);
    }

    [*(*(a1 + 32) + 8) setWantToReadEnabled:*(a1 + 40)];
    return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
  }

  return result;
}

- (NSOrderedSet)wantToReadAudiobooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NMSMediaPinningManager_wantToReadAudiobooks__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NMSMediaPinningManager_wantToReadAudiobooks__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB70];
  v6 = [*(*(a1 + 32) + 8) wantToReadAudiobooks];
  v3 = [v2 orderedSetWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setWantToReadAudiobooks:(id)audiobooks
{
  audiobooksCopy = audiobooks;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NMSMediaPinningManager_setWantToReadAudiobooks___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = audiobooksCopy;
  selfCopy = self;
  v6 = audiobooksCopy;
  dispatch_async(internalQueue, v7);
}

void __50__NMSMediaPinningManager_setWantToReadAudiobooks___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) array];
  v3 = [*(*(a1 + 40) + 8) wantToReadAudiobooks];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Setting wantToReadAudiobooks %{public}@", &v8, 0xCu);
      }

      [*(*(a1 + 40) + 8) setWantToReadAudiobooks:v2];
      if ([*(*(a1 + 40) + 8) wantToReadEnabled])
      {
        [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
      }
    }
  }
}

- (BOOL)isReadingNowEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NMSMediaPinningManager_isReadingNowEnabled__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__45__NMSMediaPinningManager_isReadingNowEnabled__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) readingNowEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setReadingNowEnabled:(BOOL)enabled
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__NMSMediaPinningManager_setReadingNowEnabled___block_invoke;
  v4[3] = &unk_27993E610;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

void *__47__NMSMediaPinningManager_setReadingNowEnabled___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = [*(*(a1 + 32) + 8) readingNowEnabled];
  if (v2 != result)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "Setting new readingNowEnabled value: %x", v6, 8u);
    }

    [*(*(a1 + 32) + 8) setReadingNowEnabled:*(a1 + 40)];
    return [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
  }

  return result;
}

- (NSOrderedSet)readingNowAudiobooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__NMSMediaPinningManager_readingNowAudiobooks__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__NMSMediaPinningManager_readingNowAudiobooks__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB70];
  v6 = [*(*(a1 + 32) + 8) readingNowAudiobooks];
  v3 = [v2 orderedSetWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)setReadingNowAudiobooks:(id)audiobooks
{
  audiobooksCopy = audiobooks;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__NMSMediaPinningManager_setReadingNowAudiobooks___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = audiobooksCopy;
  selfCopy = self;
  v6 = audiobooksCopy;
  dispatch_async(internalQueue, v7);
}

void __50__NMSMediaPinningManager_setReadingNowAudiobooks___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) array];
  v3 = [*(*(a1 + 40) + 8) readingNowAudiobooks];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 32);
        v8 = 138543362;
        v9 = v7;
        _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Setting readingNowAudiobooks %{public}@", &v8, 0xCu);
      }

      [*(*(a1 + 40) + 8) setReadingNowAudiobooks:v2];
      if ([*(*(a1 + 40) + 8) readingNowEnabled])
      {
        [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
      }
    }
  }
}

- (NSOrderedSet)pinnedAudiobooks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NMSMediaPinningManager_pinnedAudiobooks__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__NMSMediaPinningManager_pinnedAudiobooks__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB70];
  v6 = [*(*(a1 + 32) + 8) pinnedAudiobooks];
  v3 = [v2 orderedSetWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)isAudiobookPinned:(id)pinned
{
  pinnedCopy = pinned;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NMSMediaPinningManager_isAudiobookPinned___block_invoke;
  block[3] = &unk_27993E548;
  v9 = pinnedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pinnedCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__44__NMSMediaPinningManager_isAudiobookPinned___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isAudiobookPinned:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)pinAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NMSMediaPinningManager_pinAudiobook___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = audiobookCopy;
  selfCopy = self;
  v6 = audiobookCopy;
  dispatch_async(internalQueue, v7);
}

void __39__NMSMediaPinningManager_pinAudiobook___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning audiobook <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAudiobooks];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  v6 = [v5 copy];
  [*(*(a1 + 40) + 8) setPinnedAudiobooks:v6];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
}

- (void)unpinAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__NMSMediaPinningManager_unpinAudiobook___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = audiobookCopy;
  selfCopy = self;
  v6 = audiobookCopy;
  dispatch_async(internalQueue, v7);
}

void __41__NMSMediaPinningManager_unpinAudiobook___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning audiobook <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAudiobooks];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  v6 = [v5 copy];
  [*(*(a1 + 40) + 8) setPinnedAudiobooks:v6];

  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:4];
}

- (double)audiobookDownloadLimit
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NMSMediaPinningManager_audiobookDownloadLimit__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__48__NMSMediaPinningManager_audiobookDownloadLimit__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _audiobookDownloadLimit];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setAudiobookDownloadLimit:(double)limit
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__NMSMediaPinningManager_setAudiobookDownloadLimit___block_invoke;
  v4[3] = &unk_27993E520;
  *&v4[5] = limit;
  v4[4] = self;
  dispatch_async(internalQueue, v4);
}

void __52__NMSMediaPinningManager_setAudiobookDownloadLimit___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) audiobookDownloadLimit];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = [v2 isEqual:v3];

    if ((v5 & 1) == 0)
    {
      v6 = NMLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = 134217984;
        v9 = v7;
        _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Setting new audiobookDownloadLimit value: %f", &v8, 0xCu);
      }

      [*(*(a1 + 32) + 8) setAudiobookDownloadLimit:v2];
      [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:4];
    }
  }
}

+ (id)_tokenForInstance:(id)instance
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"Instance";
  v8[1] = @"Date";
  v9[0] = instance;
  v3 = MEMORY[0x277CBEAA8];
  instanceCopy = instance;
  date = [v3 date];
  v9[1] = date;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

+ (void)_persistNewClientToken
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = +[NMSyncDefaults sharedDefaults];
  clientPinningSettingsToken = [v3 clientPinningSettingsToken];

  v5 = [clientPinningSettingsToken objectForKeyedSubscript:@"Instance"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "unsignedLongLongValue") + 1}];
  v7 = [self _tokenForInstance:v6];
  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "[SyncStatus] Generated new syncState stateToken: %{public}@", &v10, 0xCu);
  }

  v9 = +[NMSyncDefaults sharedDefaults];
  [v9 setClientPinningSettingsToken:v7];
}

- (void)_notePinningSettingsChangedLocally
{
  v2 = objc_opt_class();

  [v2 _persistNewClientToken];
}

- (void)_handleMusicPinningSelectionsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NMSMediaPinningManager__handleMusicPinningSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __77__NMSMediaPinningManager__handleMusicPinningSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    return [v8 _notePinningSettingsChangedLocally];
  }

  else
  {
    return [v8 _invalidateMediaCacheForAppIdentifiers:1];
  }
}

- (void)_handlePodcastsPinningSelectionsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NMSMediaPinningManager__handlePodcastsPinningSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

void __80__NMSMediaPinningManager__handlePodcastsPinningSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v8, 0x16u);
  }

  if (v4)
  {
    [*(a1 + 40) _notePinningSettingsChangedLocally];
  }
}

- (void)_handleAudiobooksPinningSelectionsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__NMSMediaPinningManager__handleAudiobooksPinningSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __82__NMSMediaPinningManager__handleAudiobooksPinningSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    return [v8 _notePinningSettingsChangedLocally];
  }

  else
  {
    return [v8 _invalidateMediaCacheForAppIdentifiers:4];
  }
}

- (void)_handleAudiobooksRecommendationsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__NMSMediaPinningManager__handleAudiobooksRecommendationsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __80__NMSMediaPinningManager__handleAudiobooksRecommendationsDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v4)
  {
    return [v8 _notePinningSettingsChangedLocally];
  }

  else
  {
    return [v8 _invalidateMediaCacheForAppIdentifiers:4];
  }
}

- (void)_handleRecommendationLibraryContentsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NMSMediaPinningManager__handleRecommendationLibraryContentsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __84__NMSMediaPinningManager__handleRecommendationLibraryContentsDidChangeNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
}

- (void)_handleRecommendationsDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NMSMediaPinningManager__handleRecommendationsDidUpdateNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __70__NMSMediaPinningManager__handleRecommendationsDidUpdateNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
}

- (void)_handleMediaLibraryDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__NMSMediaPinningManager__handleMediaLibraryDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __67__NMSMediaPinningManager__handleMediaLibraryDidChangeNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:7];
}

- (void)_handleMediaLibraryDynamicPropertiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__NMSMediaPinningManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __84__NMSMediaPinningManager__handleMediaLibraryDynamicPropertiesDidChangeNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:7];
}

- (void)_handlePodcastSizeInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__NMSMediaPinningManager__handlePodcastSizeInfoDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __70__NMSMediaPinningManager__handlePodcastSizeInfoDidChangeNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateAddedItemsCache];
}

- (void)_handleICAgeVerificationStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__NMSMediaPinningManager__handleICAgeVerificationStateDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __77__NMSMediaPinningManager__handleICAgeVerificationStateDidChangeNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
}

- (void)_handleRecommendationSelectionsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__NMSMediaPinningManager__handleRecommendationSelectionsDidChangeNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

void __79__NMSMediaPinningManager__handleRecommendationSelectionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"IsInProcessNotification"];
  v4 = [v3 BOOLValue];

  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"another";
    v7 = *(a1 + 32);
    if (v4)
    {
      v6 = @"local";
    }

    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@ from %@ process", &v8, 0x16u);
  }

  if (v4)
  {
    [*(a1 + 40) _notePinningSettingsChangedLocally];
  }
}

- (void)_handlePairedDeviceDidBecomeActiveNotification:(id)notification
{
  notificationCopy = notification;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__NMSMediaPinningManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke;
  v7[3] = &unk_27993E570;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __73__NMSMediaPinningManager__handlePairedDeviceDidBecomeActiveNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_INFO, "NMSMediaPinningManager got %{public}@.", &v5, 0xCu);
  }

  return [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:7];
}

- (void)_handleMediaPinningMusicContentsInvalidatedNotification:(id)notification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchMusicIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__NMSMediaPinningManager__handleMediaPinningMusicContentsInvalidatedNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningMusicContentsInvalidatedNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningPodcastsContentsInvalidatedNotification:(id)notification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__NMSMediaPinningManager__handleMediaPinningPodcastsContentsInvalidatedNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningPodcastsContentsInvalidatedNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningAudiobooksContentsInvalidatedNotification:(id)notification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchAudiobooksIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__NMSMediaPinningManager__handleMediaPinningAudiobooksContentsInvalidatedNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningAudiobooksContentsInvalidatedNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningManagerMusicIdentifiersDidChangeNotification:(id)notification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchMusicIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __90__NMSMediaPinningManager__handleMediaPinningManagerMusicIdentifiersDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification:(id)notification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __93__NMSMediaPinningManager__handleMediaPinningManagerPodcastsIdentifiersDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:*(a1 + 32)];
}

- (void)_handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification:(id)notification
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) _shouldCalculateCachedIdentifiers] & 1) == 0)
  {
    [*(a1 + 32) _fetchAudiobooksIdentifiers];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke_2;
  block[3] = &unk_27993DD20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __95__NMSMediaPinningManager__handleMediaPinningManagerAudiobooksIdentifiersDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:*(a1 + 32)];
}

- (void)downloadableContentProviderDidChangeContent:(id)content
{
  if (self->_podcastsDownloadableContentProvider == content)
  {
    block[5] = v3;
    block[6] = v4;
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__NMSMediaPinningManager_downloadableContentProviderDidChangeContent___block_invoke;
    block[3] = &unk_27993DD20;
    block[4] = self;
    dispatch_async(internalQueue, block);
  }
}

- (id)_newMusicEnumeratorWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v93 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaPinningManager *)self _shouldIncludeMusicManualDownloadsInQuotaEvaluation])
  {
    workoutPlaylistID = [(NMSyncDefaults *)self->_sharedDefaults workoutPlaylistID];
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v92 = workoutPlaylistID;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) workoutPlaylistID: %{public}@", buf, 0xCu);
    }

    if ([workoutPlaylistID longLongValue])
    {
      v7 = [NMSItemGroupEnumerator alloc];
      v8 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:workoutPlaylistID downloadedItemsOnly:onlyCopy];
      v9 = [(NMSItemGroupEnumerator *)v7 initWithItemGroup:v8];
      [array addObject:v9];
    }

    pinnedPlaylists = [(NMSyncDefaults *)self->_sharedDefaults pinnedPlaylists];
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v92 = pinnedPlaylists;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) pinnedPlaylists %{public}@", buf, 0xCu);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v12 = pinnedPlaylists;
    v13 = [v12 countByEnumeratingWithState:&v83 objects:v90 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v84;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v84 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v83 + 1) + 8 * i);
          v18 = [NMSItemGroupEnumerator alloc];
          v19 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:v17 downloadedItemsOnly:onlyCopy];
          v20 = [(NMSItemGroupEnumerator *)v18 initWithItemGroup:v19];
          [array addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v83 objects:v90 count:16];
      }

      while (v14);
    }

    pinnedAlbums = [(NMSyncDefaults *)self->_sharedDefaults pinnedAlbums];
    v22 = NMLogForCategory(5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v92 = pinnedAlbums;
      _os_log_impl(&dword_25B27B000, v22, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) pinnedAlbums %{public}@", buf, 0xCu);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v23 = pinnedAlbums;
    v24 = [v23 countByEnumeratingWithState:&v79 objects:v89 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v80;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v80 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v79 + 1) + 8 * j);
          v29 = [NMSItemGroupEnumerator alloc];
          v30 = [NMSMediaItemGroup itemGroupWithSyncedAlbumID:v28 downloadedItemsOnly:onlyCopy];
          v31 = [(NMSItemGroupEnumerator *)v29 initWithItemGroup:v30];
          [array addObject:v31];
        }

        v25 = [v23 countByEnumeratingWithState:&v79 objects:v89 count:16];
      }

      while (v25);
    }
  }

  _fetchMusicRecommendations = [objc_opt_class() _fetchMusicRecommendations];
  array2 = [MEMORY[0x277CBEB18] array];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = _fetchMusicRecommendations;
  v34 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v34)
  {
    v36 = v34;
    v37 = *v76;
    *&v35 = 138543362;
    v67 = v35;
    do
    {
      v38 = 0;
      do
      {
        if (*v76 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v75 + 1) + 8 * v38);
        identifier = [v39 identifier];
        if ([identifier isEqualToString:NMSRecommendationLibraryPinsIdentifier])
        {

LABEL_33:
          [array2 addObject:v39];
          goto LABEL_34;
        }

        identifier2 = [v39 identifier];
        v42 = [identifier2 isEqualToString:NMSRecommendationRecentMusicIdentifier];

        if (v42)
        {
          goto LABEL_33;
        }

        isSelected = [v39 isSelected];
        v44 = NMLogForCategory(5);
        v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
        if (isSelected)
        {
          if (v45)
          {
            *buf = v67;
            v92 = v39;
            _os_log_impl(&dword_25B27B000, v44, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) including enabled store recommendation %{public}@", buf, 0xCu);
          }

          v46 = [NMSItemGroupEnumerator alloc];
          v47 = [NMSMediaItemGroup itemGroupWithRecommendation:v39 downloadedItemsOnly:onlyCopy];
          v48 = [(NMSItemGroupEnumerator *)v46 initWithItemGroup:v47];
          [array addObject:v48];
        }

        else
        {
          if (v45)
          {
            *buf = v67;
            v92 = v39;
            _os_log_impl(&dword_25B27B000, v44, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) NOT including disabled store recommendation %{public}@", buf, 0xCu);
          }
        }

LABEL_34:
        ++v38;
      }

      while (v36 != v38);
      v49 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
      v36 = v49;
    }

    while (v49);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = array2;
  v51 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v51)
  {
    v53 = v51;
    v54 = *v72;
    *&v52 = 138543362;
    v68 = v52;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v72 != v54)
        {
          objc_enumerationMutation(v50);
        }

        v56 = *(*(&v71 + 1) + 8 * k);
        isSelected2 = [v56 isSelected];
        v58 = NMLogForCategory(5);
        v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
        if (isSelected2)
        {
          if (v59)
          {
            *buf = v68;
            v92 = v56;
            _os_log_impl(&dword_25B27B000, v58, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) including enabled recommendation %{public}@", buf, 0xCu);
          }

          v60 = [NMSItemGroupEnumerator alloc];
          v58 = [NMSMediaItemGroup itemGroupWithRecommendation:v56 downloadedItemsOnly:onlyCopy];
          v61 = [(NMSItemGroupEnumerator *)v60 initWithItemGroup:v58];
          [array addObject:v61];
        }

        else if (v59)
        {
          *buf = v68;
          v92 = v56;
          _os_log_impl(&dword_25B27B000, v58, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) NOT including disabled recommendation %{public}@", buf, 0xCu);
        }
      }

      v53 = [v50 countByEnumeratingWithState:&v71 objects:v87 count:16];
    }

    while (v53);
  }

  v62 = [NMSSequentialItemEnumerator alloc];
  v63 = array;
  v64 = [array copy];
  v65 = [(NMSSequentialItemEnumerator *)v62 initWithItemEnumerators:v64];

  return v65;
}

- (id)_newAudiobooksEnumeratorWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v64 = *MEMORY[0x277D85DE8];
  v4 = NMLogForCategory(5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    wantToReadEnabled = [(NMSyncDefaults *)self->_sharedDefaults wantToReadEnabled];
    readingNowEnabled = [(NMSyncDefaults *)self->_sharedDefaults readingNowEnabled];
    *buf = 67109376;
    *v63 = wantToReadEnabled;
    *&v63[4] = 1024;
    *&v63[6] = readingNowEnabled;
    _os_log_impl(&dword_25B27B000, v4, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobooks containers) wantToReadEnabled: %x, readingNowEnabled: %x", buf, 0xEu);
  }

  array = [MEMORY[0x277CBEB18] array];
  [(NMSMediaPinningManager *)self _audiobookDownloadLimit];
  v9 = v8;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  selfCopy = self;
  obj = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];
  v10 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v56;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        v15 = [NMSItemGroupEnumerator alloc];
        v16 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v14 downloadLimit:v9 manuallyAdded:0 downloadedItemsOnly:onlyCopy];
        v17 = [(NMSItemGroupEnumerator *)v15 initWithItemGroup:v16];
        [array addObject:v17];

        v18 = NMLogForCategory(5);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v63 = v14;
          _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding pinned audiobook %{public}@", buf, 0xCu);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v11);
  }

  v19 = selfCopy;
  if ([(NMSyncDefaults *)selfCopy->_sharedDefaults readingNowEnabled])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obja = [(NMSyncDefaults *)selfCopy->_sharedDefaults readingNowAudiobooks];
    v20 = [obja countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v52;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v52 != v22)
          {
            objc_enumerationMutation(obja);
          }

          v24 = *(*(&v51 + 1) + 8 * j);
          v25 = [NMSItemGroupEnumerator alloc];
          v26 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v24 downloadLimit:v9 manuallyAdded:0 downloadedItemsOnly:onlyCopy];
          v27 = [(NMSItemGroupEnumerator *)v25 initWithItemGroup:v26];
          [array addObject:v27];

          v28 = NMLogForCategory(5);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v63 = v24;
            _os_log_impl(&dword_25B27B000, v28, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding readingNow audiobook %{public}@", buf, 0xCu);
          }
        }

        v21 = [obja countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v21);
    }

    v19 = selfCopy;
  }

  if ([(NMSyncDefaults *)v19->_sharedDefaults wantToReadEnabled])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    objb = [(NMSyncDefaults *)v19->_sharedDefaults wantToReadAudiobooks];
    v29 = [objb countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(objb);
          }

          v33 = *(*(&v47 + 1) + 8 * k);
          v34 = [NMSItemGroupEnumerator alloc];
          v35 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v33 downloadLimit:v9 manuallyAdded:0 downloadedItemsOnly:onlyCopy];
          v36 = [(NMSItemGroupEnumerator *)v34 initWithItemGroup:v35];
          [array addObject:v36];

          v37 = NMLogForCategory(5);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v63 = v33;
            _os_log_impl(&dword_25B27B000, v37, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding wantToRead audiobook %{public}@", buf, 0xCu);
          }
        }

        v30 = [objb countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v30);
    }
  }

  v38 = [NMSSequentialItemEnumerator alloc];
  v39 = [array copy];
  v40 = [(NMSSequentialItemEnumerator *)v38 initWithItemEnumerators:v39];

  return v40;
}

- (id)_newItemEnumeratorForBundleIdentifier:(id)identifier downloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.NanoMusic"])
  {
    createItemEnumerator = [(NMSMediaPinningManager *)self _newMusicEnumeratorWithDownloadedItemsOnly:onlyCopy];
  }

  else if ([identifierCopy isEqualToString:@"com.apple.podcasts"])
  {
    createItemEnumerator = [(NMSPodcastsDownloadableContentProvider *)self->_podcastsDownloadableContentProvider createItemEnumerator];
  }

  else
  {
    if (![identifierCopy isEqualToString:@"com.apple.NanoBooks"])
    {
      v8 = 0;
      goto LABEL_8;
    }

    createItemEnumerator = [(NMSMediaPinningManager *)self _newAudiobooksEnumeratorWithDownloadedItemsOnly:onlyCopy];
  }

  v8 = createItemEnumerator;
LABEL_8:

  return v8;
}

- (id)_quotaManagerWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v35 = *MEMORY[0x277D85DE8];
  if ([(NMSMediaPinningManager *)self _shouldSkipQuotaManagerEvaluation])
  {
    v5 = 0;
    goto LABEL_27;
  }

  if (onlyCopy)
  {
    v6 = 32;
  }

  else
  {
    v6 = 24;
  }

  v5 = *(&self->super.isa + v6);
  if (v5)
  {
    goto LABEL_27;
  }

  v22 = v6;
  v7 = NMLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (onlyCopy)
    {
      v8 = @"downloaded";
    }

    else
    {
      v8 = @"added";
    }

    *buf = 138412546;
    v32 = v8;
    v33 = 2048;
    _mediaQuota = [(NMSMediaPinningManager *)self _mediaQuota];
    _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "[QuotaManager Caching] Creating new %@ items quota manager for quota:%llu", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30[0] = @"com.apple.NanoMusic";
  v30[1] = @"com.apple.podcasts";
  v30[2] = @"com.apple.NanoBooks";
  [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v26 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (![(NMSMediaPinningManager *)self _isAppDownloadingDormantForBundleIdentifier:v15])
        {
          v16 = [(NMSMediaPinningManager *)self _newItemEnumeratorForBundleIdentifier:v15 downloadedItemsOnly:onlyCopy];
          if (!v16)
          {
            goto LABEL_24;
          }

LABEL_23:
          [dictionary setObject:v16 forKeyedSubscript:v15];
          goto LABEL_24;
        }

        v16 = [(NMSMediaPinningManager *)self _newItemEnumeratorForBundleIdentifier:v15 downloadedItemsOnly:1];
        v17 = NMLogForCategory(12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v15;
          _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "Skipping downloading of %@ items because it is download-dormant.", buf, 0xCu);
        }

        if (v16)
        {
          goto LABEL_23;
        }

LABEL_24:
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v12);
  }

  v27[0] = @"com.apple.NanoMusic";
  v27[1] = @"com.apple.podcasts";
  v28[0] = &unk_286C8D4F0;
  v28[1] = &unk_286C8D508;
  v27[2] = @"com.apple.NanoBooks";
  v28[2] = &unk_286C8D520;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v19 = [NMSMediaQuotaManager alloc];
  v20 = [dictionary copy];
  v5 = [(NMSMediaQuotaManager *)v19 initWithItemEnumerators:v20 estimatedItemSizes:v18 quota:[(NMSMediaPinningManager *)self _mediaQuota]];

  objc_storeStrong((&self->super.isa + v22), v5);
LABEL_27:

  return v5;
}

- (BOOL)_shouldSkipQuotaManagerEvaluation
{
  if (_shouldSkipQuotaManagerEvaluation_onceToken != -1)
  {
    [NMSMediaPinningManager _shouldSkipQuotaManagerEvaluation];
  }

  return _shouldSkipQuotaManagerEvaluation_shouldSkipQuotaManagerEvaluation;
}

void __59__NMSMediaPinningManager__shouldSkipQuotaManagerEvaluation__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithObject:@"bookdatastored"];
  v1 = [MEMORY[0x277CBEB58] setWithObjects:{@"com.apple.NanoNowPlaying", @"com.apple.SessionTrackerApp", @"com.apple.NanoSettings", @"com.apple.NanoMusic", @"com.apple.podcasts", @"com.apple.NanoBooks", 0}];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  if ([v1 containsObject:v3])
  {
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 executableURL];
    v6 = [v5 lastPathComponent];
    v7 = [v0 containsObject:v6];

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = NMLogForCategory(5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "_quotaManager not supported for this bundle identifier", buf, 2u);
  }

  _shouldSkipQuotaManagerEvaluation_shouldSkipQuotaManagerEvaluation = 1;
LABEL_7:
}

- (BOOL)_shouldCalculateCachedIdentifiers
{
  if (_shouldCalculateCachedIdentifiers_onceToken != -1)
  {
    [NMSMediaPinningManager _shouldCalculateCachedIdentifiers];
  }

  return _shouldCalculateCachedIdentifiers_shouldCalculateCachedIdentifiers;
}

void __59__NMSMediaPinningManager__shouldCalculateCachedIdentifiers__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _shouldCalculateCachedIdentifiers_shouldCalculateCachedIdentifiers = [v0 isEqualToString:@"com.apple.Bridge"];
}

- (void)_invalidateAddedItemsCache
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[QuotaManager Caching] NMSMediaPinningManager invalidating addedItemsCache. [Internal]", v8, 2u);
  }

  addedItemsQuotaManager = self->_addedItemsQuotaManager;
  self->_addedItemsQuotaManager = 0;

  downloadedItemsQuotaManager = self->_downloadedItemsQuotaManager;
  self->_downloadedItemsQuotaManager = 0;

  legacy_addedItemsQuotaManager = self->_legacy_addedItemsQuotaManager;
  self->_legacy_addedItemsQuotaManager = 0;

  legacy_downloadedItemsQuotaManager = self->_legacy_downloadedItemsQuotaManager;
  self->_legacy_downloadedItemsQuotaManager = 0;
}

- (void)_invalidateMediaCacheForAppIdentifiers:(unint64_t)identifiers
{
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_internalQueue);
  if (![(NMSMediaPinningManager *)self _shouldSkipQuotaManagerEvaluation])
  {
    [(NMSMediaPinningManager *)self _invalidateAddedItemsCache];
    if ([(NMSMediaPinningManager *)self _shouldCalculateCachedIdentifiers])
    {
      if (identifiersCopy)
      {
        v5 = NMLogForCategory(5);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Music cache. Refreshing playlists and albums [Internal]", buf, 2u);
        }

        [(NMSMediaPinningManager *)self _refreshMusicIdentifiers];
        defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
        [defaultCenter postNotificationName:@"NMSMediaPinningMusicContentsInvalidatedNotification" object:0];

        if ((identifiersCopy & 2) == 0)
        {
LABEL_5:
          if ((identifiersCopy & 4) == 0)
          {
LABEL_16:
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__NMSMediaPinningManager__invalidateMediaCacheForAppIdentifiers___block_invoke;
            block[3] = &unk_27993DD20;
            block[4] = self;
            dispatch_async(MEMORY[0x277D85CD0], block);
            return;
          }

LABEL_13:
          v9 = NMLogForCategory(5);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B27B000, v9, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Audiobooks cache. [Internal]", buf, 2u);
          }

          [(NMSMediaPinningManager *)self _refreshAudiobooksIdentifiers];
          defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
          [defaultCenter2 postNotificationName:@"NMSMediaPinningAudiobooksContentsInvalidatedNotification" object:0];

          goto LABEL_16;
        }
      }

      else if ((identifiersCopy & 2) == 0)
      {
        goto LABEL_5;
      }

      v7 = NMLogForCategory(5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager invalidating Podcasts cache. Refreshing shows [Internal]", buf, 2u);
      }

      [(NMSMediaPinningManager *)self _refreshPodcastsIdentifiers];
      defaultCenter3 = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter3 postNotificationName:@"NMSMediaPinningPodcastsContentsInvalidatedNotification" object:0];

      if ((identifiersCopy & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }
}

void __65__NMSMediaPinningManager__invalidateMediaCacheForAppIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NMSMediaPinningManagerDownloadInfoDidInvalidateNotification" object:*(a1 + 32)];
}

- (BOOL)_isAlbumPinned:(id)pinned
{
  internalQueue = self->_internalQueue;
  pinnedCopy = pinned;
  dispatch_assert_queue_V2(internalQueue);
  pinnedAlbums = [(NMSyncDefaults *)self->_sharedDefaults pinnedAlbums];
  LOBYTE(internalQueue) = [pinnedAlbums containsObject:pinnedCopy];

  return internalQueue;
}

- (BOOL)_isPlaylistPinned:(id)pinned
{
  internalQueue = self->_internalQueue;
  pinnedCopy = pinned;
  dispatch_assert_queue_V2(internalQueue);
  pinnedPlaylists = [(NMSyncDefaults *)self->_sharedDefaults pinnedPlaylists];
  LOBYTE(internalQueue) = [pinnedPlaylists containsObject:pinnedCopy];

  return internalQueue;
}

- (BOOL)_isAudiobookPinned:(id)pinned
{
  internalQueue = self->_internalQueue;
  pinnedCopy = pinned;
  dispatch_assert_queue_V2(internalQueue);
  pinnedAudiobooks = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];
  LOBYTE(internalQueue) = [pinnedAudiobooks containsObject:pinnedCopy];

  return internalQueue;
}

- (double)_audiobookDownloadLimit
{
  dispatch_assert_queue_V2(self->_internalQueue);
  audiobookDownloadLimit = [(NMSyncDefaults *)self->_sharedDefaults audiobookDownloadLimit];
  if (audiobookDownloadLimit)
  {
    audiobookDownloadLimit2 = [(NMSyncDefaults *)self->_sharedDefaults audiobookDownloadLimit];
    [audiobookDownloadLimit2 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 18000.0;
  }

  return v6;
}

+ (id)_cachedPlaylistIdentifiersFilePath
{
  _cachedIdentifiersDirectoryPath = [self _cachedIdentifiersDirectoryPath];
  v3 = [_cachedIdentifiersDirectoryPath stringByAppendingPathComponent:@"playlists"];
  v4 = [v3 stringByAppendingString:@".plist"];

  return v4;
}

+ (id)_cachedAlbumIdentifiersFilePath
{
  _cachedIdentifiersDirectoryPath = [self _cachedIdentifiersDirectoryPath];
  v3 = [_cachedIdentifiersDirectoryPath stringByAppendingPathComponent:@"albums"];
  v4 = [v3 stringByAppendingString:@".plist"];

  return v4;
}

+ (id)_cachedAudiobookIdentifiersFilePath
{
  _cachedIdentifiersDirectoryPath = [self _cachedIdentifiersDirectoryPath];
  v3 = [_cachedIdentifiersDirectoryPath stringByAppendingPathComponent:@"audiobooks"];
  v4 = [v3 stringByAppendingString:@".plist"];

  return v4;
}

+ (id)_cachedIdentifiersDirectoryPath
{
  if (_cachedIdentifiersDirectoryPath_onceToken != -1)
  {
    +[NMSMediaPinningManager _cachedIdentifiersDirectoryPath];
  }

  v3 = _cachedIdentifiersDirectoryPath_path;

  return v3;
}

void __57__NMSMediaPinningManager__cachedIdentifiersDirectoryPath__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = CPSharedResourcesDirectory();
  v4[1] = @"Library";
  v4[2] = @"NanoMusicSync";
  v4[3] = @"CachedIdentifiers";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:4];
  v1 = [MEMORY[0x277CCACA8] pathWithComponents:v0];
  v2 = _cachedIdentifiersDirectoryPath_path;
  _cachedIdentifiersDirectoryPath_path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 createDirectoryAtPath:_cachedIdentifiersDirectoryPath_path withIntermediateDirectories:1 attributes:0 error:0];
}

+ (unint64_t)_mediaStorageSizeForCurrentDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v4 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BC28]];
  v5 = v4;
  if (v4)
  {
    unsignedLongLongValue = [v4 unsignedLongLongValue];
    _mediaStorageSizeForCurrentDevice_totalCapacity = unsignedLongLongValue;
  }

  else
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[NMSMediaPinningManager _mediaStorageSizeForCurrentDevice];
    }

    unsignedLongLongValue = _mediaStorageSizeForCurrentDevice_totalCapacity;
  }

  v8 = 16000000000;
  if (unsignedLongLongValue <= 0x3B9ACA000 && (v8 = 8000000000, unsignedLongLongValue <= 0x1DCD65000))
  {
    v8 = _mediaStorageSizeForCurrentDevice_mediaStorageSize;
  }

  else
  {
    _mediaStorageSizeForCurrentDevice_mediaStorageSize = v8;
  }

  return v8;
}

- (unint64_t)_mediaQuota
{
  if (!self->_mediaQuota)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(objc_opt_class(), "_mediaStorageSizeForCurrentDevice")}];
    mediaQuota = self->_mediaQuota;
    self->_mediaQuota = v3;
  }

  v5 = [(NMSyncDefaults *)self->_sharedDefaults objectForKey:@"AutomaticDownloadsQuota"];
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "unsignedLongLongValue")}];
    v8 = self->_mediaQuota;
    self->_mediaQuota = v7;
  }

  unsignedLongLongValue = [(NSNumber *)self->_mediaQuota unsignedLongLongValue];

  return unsignedLongLongValue;
}

+ (id)_fetchMusicRecommendations
{
  v2 = +[NMSMusicRecommendationManager sharedManager];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v3 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NMSMediaPinningManager__fetchMusicRecommendations__block_invoke;
  v7[3] = &unk_27993E638;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [v2 fetchRecommendationsWithQueue:0 completion:v7];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __52__NMSMediaPinningManager__fetchMusicRecommendations__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (NSArray)albumIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__NMSMediaPinningManager_albumIdentifiers__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__NMSMediaPinningManager_albumIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[8])
  {
    v3 = [v2 _shouldCalculateCachedIdentifiers];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _refreshMusicIdentifiers];
    }

    else
    {
      [v4 _fetchMusicIdentifiers];
    }
  }

  v5 = *(*(a1 + 32) + 64);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)_fetchMusicIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v6 = MEMORY[0x277CCAAC8];
  v7 = MEMORY[0x277CBEA90];
  _cachedAlbumIdentifiersFilePath = [objc_opt_class() _cachedAlbumIdentifiersFilePath];
  v9 = [v7 dataWithContentsOfFile:_cachedAlbumIdentifiersFilePath];
  v22 = 0;
  v10 = [v6 unarchivedObjectOfClasses:v5 fromData:v9 error:&v22];
  v11 = v22;

  if (v11)
  {
    v12 = NMLogForCategory(5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaPinningManager _fetchMusicIdentifiers];
    }
  }

  objc_storeStrong(&self->_cachedAlbumIdentifiers, v10);
  v13 = MEMORY[0x277CCAAC8];
  v14 = MEMORY[0x277CBEA90];
  _cachedPlaylistIdentifiersFilePath = [objc_opt_class() _cachedPlaylistIdentifiersFilePath];
  v16 = [v14 dataWithContentsOfFile:_cachedPlaylistIdentifiersFilePath];
  v21 = 0;
  v17 = [v13 unarchivedObjectOfClasses:v5 fromData:v16 error:&v21];
  v18 = v21;

  if (v18)
  {
    v19 = NMLogForCategory(5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaPinningManager _fetchMusicIdentifiers];
    }
  }

  cachedPlaylistIdentifiers = self->_cachedPlaylistIdentifiers;
  self->_cachedPlaylistIdentifiers = v17;
}

- (void)_refreshMusicIdentifiers
{
  v115 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_internalQueue);
  if ([(NMSMediaPinningManager *)self _deviceSupportsPodcastsPinningSettingsV2])
  {
    v82 = [MEMORY[0x277CBEB58] set];
    v84 = [MEMORY[0x277CBEB58] set];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    selfCopy = self;
    pinnedAlbums = [(NMSyncDefaults *)self->_sharedDefaults pinnedAlbums];
    v4 = [pinnedAlbums countByEnumeratingWithState:&v104 objects:v114 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v105;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v105 != v6)
          {
            objc_enumerationMutation(pinnedAlbums);
          }

          v8 = *(*(&v104 + 1) + 8 * i);
          v9 = objc_alloc(MEMORY[0x277CD5DA0]);
          v10 = MEMORY[0x277CD5E40];
          v11 = [MEMORY[0x277CD5F58] kindWithVariants:1];
          v12 = [v10 kindWithSongKind:v11];
          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke;
          v103[3] = &unk_27993E660;
          v103[4] = v8;
          v13 = [v9 initWithModelKind:v12 block:v103];
          [v82 addObject:v13];
        }

        v5 = [pinnedAlbums countByEnumeratingWithState:&v104 objects:v114 count:16];
      }

      while (v5);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = [(NMSyncDefaults *)self->_sharedDefaults pinnedPlaylists];
    v14 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v100;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v100 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v99 + 1) + 8 * j);
          v19 = objc_alloc(MEMORY[0x277CD5DA0]);
          v20 = MEMORY[0x277CD5EF0];
          v21 = MEMORY[0x277CD5EF8];
          v22 = [MEMORY[0x277CD5F58] kindWithVariants:1];
          v112 = v22;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v112 count:1];
          v24 = [v21 kindWithKinds:v23];
          v25 = [v20 kindWithPlaylistEntryKind:v24 options:0];
          v98[0] = MEMORY[0x277D85DD0];
          v98[1] = 3221225472;
          v98[2] = __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_2;
          v98[3] = &unk_27993E660;
          v98[4] = v18;
          v26 = [v19 initWithModelKind:v25 block:v98];
          [v84 addObject:v26];
        }

        v15 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
      }

      while (v15);
    }

    workoutPlaylistID = [(NMSyncDefaults *)selfCopy->_sharedDefaults workoutPlaylistID];

    if (workoutPlaylistID)
    {
      v28 = objc_alloc(MEMORY[0x277CD5DA0]);
      v29 = MEMORY[0x277CD5EF0];
      v30 = MEMORY[0x277CD5EF8];
      v31 = [MEMORY[0x277CD5F58] kindWithVariants:1];
      v111 = v31;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v111 count:1];
      v33 = [v30 kindWithKinds:v32];
      v34 = [v29 kindWithPlaylistEntryKind:v33 options:0];
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_3;
      v97[3] = &unk_27993E660;
      v97[4] = selfCopy;
      v35 = [v28 initWithModelKind:v34 block:v97];
      [v84 addObject:v35];
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    _fetchMusicRecommendations = [objc_opt_class() _fetchMusicRecommendations];
    v36 = [_fetchMusicRecommendations countByEnumeratingWithState:&v93 objects:v110 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v94;
      v78 = *v94;
      do
      {
        v39 = 0;
        v79 = v37;
        do
        {
          if (*v94 != v38)
          {
            objc_enumerationMutation(_fetchMusicRecommendations);
          }

          v40 = *(*(&v93 + 1) + 8 * v39);
          if ([v40 isSelected])
          {
            v81 = v39;
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            items = [v40 items];
            v42 = [items countByEnumeratingWithState:&v89 objects:v109 count:16];
            if (!v42)
            {
              goto LABEL_36;
            }

            v43 = v42;
            v44 = *v90;
            while (1)
            {
              for (k = 0; k != v43; ++k)
              {
                if (*v90 != v44)
                {
                  objc_enumerationMutation(items);
                }

                v46 = *(*(&v89 + 1) + 8 * k);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v47 = objc_alloc(MEMORY[0x277CD5DA0]);
                  v48 = MEMORY[0x277CD5EF0];
                  v49 = MEMORY[0x277CD5EF8];
                  v50 = [MEMORY[0x277CD5F58] kindWithVariants:1];
                  v108 = v50;
                  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
                  v52 = [v49 kindWithKinds:v51];
                  v53 = [v48 kindWithPlaylistEntryKind:v52 options:0];
                  v88[0] = MEMORY[0x277D85DD0];
                  v88[1] = 3221225472;
                  v88[2] = __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_4;
                  v88[3] = &unk_27993E660;
                  v88[4] = v46;
                  v54 = [v47 initWithModelKind:v53 block:v88];
                  [v84 addObject:v54];
                }

                else
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    continue;
                  }

                  v55 = objc_alloc(MEMORY[0x277CD5DA0]);
                  v56 = MEMORY[0x277CD5E40];
                  v50 = [MEMORY[0x277CD5F58] kindWithVariants:1];
                  v51 = [v56 kindWithSongKind:v50];
                  v87[0] = MEMORY[0x277D85DD0];
                  v87[1] = 3221225472;
                  v87[2] = __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_5;
                  v87[3] = &unk_27993E660;
                  v87[4] = v46;
                  v52 = [v55 initWithModelKind:v51 block:v87];
                  [v82 addObject:v52];
                }
              }

              v43 = [items countByEnumeratingWithState:&v89 objects:v109 count:16];
              if (!v43)
              {
LABEL_36:

                v38 = v78;
                v37 = v79;
                v39 = v81;
                break;
              }
            }
          }

          ++v39;
        }

        while (v39 != v37);
        v37 = [_fetchMusicRecommendations countByEnumeratingWithState:&v93 objects:v110 count:16];
      }

      while (v37);
    }

    allObjects = [v82 allObjects];
    allObjects2 = [v84 allObjects];
    v59 = selfCopy;
    v60 = selfCopy->_cachedAlbumIdentifiers;
    v61 = v60;
    v62 = v60 != allObjects;
    if (v60 != allObjects)
    {
      v63 = [(NSArray *)v60 isEqual:allObjects];

      if (v63)
      {
        v62 = 0;
        v59 = selfCopy;
        goto LABEL_51;
      }

      v86 = 0;
      v64 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:allObjects requiringSecureCoding:1 error:&v86];
      v61 = v86;
      if (v61)
      {
        v65 = NMLogForCategory(5);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [NMSMediaPinningManager _refreshMusicIdentifiers];
        }
      }

      v59 = selfCopy;
      _cachedAlbumIdentifiersFilePath = [objc_opt_class() _cachedAlbumIdentifiersFilePath];
      [v64 writeToFile:_cachedAlbumIdentifiersFilePath atomically:1];

      objc_storeStrong(&selfCopy->_cachedAlbumIdentifiers, allObjects);
    }

LABEL_51:
    cachedPlaylistIdentifiers = v59->_cachedPlaylistIdentifiers;
    p_cachedPlaylistIdentifiers = &v59->_cachedPlaylistIdentifiers;
    v69 = cachedPlaylistIdentifiers;
    v70 = v69;
    if (v69 == allObjects2)
    {
    }

    else
    {
      v71 = [(NSArray *)v69 isEqual:allObjects2];

      if ((v71 & 1) == 0)
      {
        v85 = 0;
        v72 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:allObjects2 requiringSecureCoding:1 error:&v85];
        v73 = v85;
        if (v73)
        {
          v74 = NMLogForCategory(5);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            [NMSMediaPinningManager _refreshMusicIdentifiers];
          }
        }

        _cachedPlaylistIdentifiersFilePath = [objc_opt_class() _cachedPlaylistIdentifiersFilePath];
        [v72 writeToFile:_cachedPlaylistIdentifiersFilePath atomically:1];

        objc_storeStrong(p_cachedPlaylistIdentifiers, allObjects2);
        goto LABEL_60;
      }
    }

    if (!v62)
    {
LABEL_61:

      return;
    }

LABEL_60:
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:0];

    goto LABEL_61;
  }

  [(NMSMediaPinningManager *)self _legacy_refreshMusicIdentifiers];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v2, "longLongValue")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = [v2 workoutPlaylistID];
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v4, "longLongValue")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifiers];
  v4 = [v5 library];
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v4, "persistentID")}];
}

void __50__NMSMediaPinningManager__refreshMusicIdentifiers__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 identifiers];
  v4 = [v5 library];
  [v3 setDeviceLibraryPersistentID:{objc_msgSend(v4, "persistentID")}];
}

- (NSArray)pinnedAlbums
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__NMSMediaPinningManager_pinnedAlbums__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__NMSMediaPinningManager_pinnedAlbums__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) pinnedAlbums];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)playlistIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__NMSMediaPinningManager_playlistIdentifiers__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__NMSMediaPinningManager_playlistIdentifiers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[7])
  {
    v3 = [v2 _shouldCalculateCachedIdentifiers];
    v4 = *(a1 + 32);
    if (v3)
    {
      [v4 _refreshMusicIdentifiers];
    }

    else
    {
      [v4 _fetchMusicIdentifiers];
    }
  }

  v5 = *(*(a1 + 32) + 56);
  v6 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (NSArray)pinnedPlaylists
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke;
  v5[3] = &unk_27993DCA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) pinnedPlaylists];
  v3 = [v2 copy];
  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *(a1 + 32);
  if ((*(v7 + 112) & 1) == 0)
  {
    v8 = *(*(*v4 + 8) + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_2;
    v15[3] = &unk_27993E688;
    v15[4] = v7;
    v9 = [v8 indexesOfObjectsPassingTest:v15];
    v10 = [v9 count];
    if (v10 != [*(*(*v4 + 8) + 40) count])
    {
      v11 = NMLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_cold_1();
      }

      v12 = [*(*(*(a1 + 40) + 8) + 40) objectsAtIndexes:v9];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      [*(*(a1 + 32) + 8) setPinnedPlaylists:*(*(*(a1 + 40) + 8) + 40)];
    }

    *(*(a1 + 32) + 112) = 1;
  }
}

uint64_t __41__NMSMediaPinningManager_pinnedPlaylists__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _playlistPIDValidForPinning:v2];

  return v3;
}

- (BOOL)isAlbumPinned:(id)pinned
{
  pinnedCopy = pinned;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NMSMediaPinningManager_isAlbumPinned___block_invoke;
  block[3] = &unk_27993E548;
  v9 = pinnedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pinnedCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__40__NMSMediaPinningManager_isAlbumPinned___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isAlbumPinned:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)isPlaylistPinned:(id)pinned
{
  pinnedCopy = pinned;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NMSMediaPinningManager_isPlaylistPinned___block_invoke;
  block[3] = &unk_27993E548;
  v9 = pinnedCopy;
  v10 = &v11;
  block[4] = self;
  v6 = pinnedCopy;
  dispatch_sync(internalQueue, block);
  LOBYTE(internalQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalQueue;
}

void *__43__NMSMediaPinningManager_isPlaylistPinned___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _isPlaylistPinned:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)pinAlbum:(id)album completionHandler:(id)handler
{
  albumCopy = album;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NMSMediaPinningManager_pinAlbum_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  v12 = albumCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = albumCopy;
  dispatch_async(internalQueue, block);
}

void __53__NMSMediaPinningManager_pinAlbum_completionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Pinning album <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAlbums];
  v5 = [v4 mutableCopy];

  [v5 addObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedAlbums:v5];
  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }
}

- (void)pinPlaylist:(id)playlist completionHandler:(id)handler
{
  playlistCopy = playlist;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NMSMediaPinningManager_pinPlaylist_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  block[4] = self;
  v12 = playlistCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = playlistCopy;
  dispatch_async(internalQueue, block);
}

uint64_t __56__NMSMediaPinningManager_pinPlaylist_completionHandler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() _playlistPIDValidForPinning:*(a1 + 40)];
  v3 = NMLogForCategory(5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    v5 = *(a1 + 40);
    if (v2)
    {
      v4 = @"YES";
    }

    v11 = 138543618;
    v12 = v5;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_25B27B000, v3, OS_LOG_TYPE_DEFAULT, "[Pinning Validation] pinPlaylist: <%{public}@>, valid: %@", &v11, 0x16u);
  }

  if (v2)
  {
    v6 = NMLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_25B27B000, v6, OS_LOG_TYPE_DEFAULT, "Pinning playlist <%{public}@>", &v11, 0xCu);
    }

    v8 = [*(*(a1 + 32) + 8) pinnedPlaylists];
    v9 = [v8 mutableCopy];

    [v9 addObject:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setPinnedPlaylists:v9];
    [*(a1 + 32) _invalidateMediaCacheForAppIdentifiers:1];
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, v2);
  }

  return result;
}

- (void)unpinAlbum:(id)album completionHandler:(id)handler
{
  albumCopy = album;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__NMSMediaPinningManager_unpinAlbum_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  v12 = albumCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = albumCopy;
  dispatch_async(internalQueue, block);
}

void __55__NMSMediaPinningManager_unpinAlbum_completionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning album <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedAlbums];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedAlbums:v5];
  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }
}

- (void)unpinPlaylist:(id)playlist completionHandler:(id)handler
{
  playlistCopy = playlist;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NMSMediaPinningManager_unpinPlaylist_completionHandler___block_invoke;
  block[3] = &unk_27993DE68;
  v12 = playlistCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = playlistCopy;
  dispatch_async(internalQueue, block);
}

void __58__NMSMediaPinningManager_unpinPlaylist_completionHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = NMLogForCategory(5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_25B27B000, v2, OS_LOG_TYPE_DEFAULT, "Unpinning playlist <%{public}@>", &v7, 0xCu);
  }

  v4 = [*(*(a1 + 40) + 8) pinnedPlaylists];
  v5 = [v4 mutableCopy];

  [v5 removeObject:*(a1 + 32)];
  [*(*(a1 + 40) + 8) setPinnedPlaylists:v5];
  [*(a1 + 40) _invalidateMediaCacheForAppIdentifiers:1];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, 1);
  }
}

+ (BOOL)_playlistPIDValidForPinning:(id)pinning
{
  v26[5] = *MEMORY[0x277D85DE8];
  pinningCopy = pinning;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ([pinningCopy longLongValue])
  {
    v4 = [MEMORY[0x277D2B5C0] predicateWithProperty:*MEMORY[0x277D2B498] value:pinningCopy comparison:1];
    v5 = MEMORY[0x277D2B5C8];
    autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
    v7 = [v5 unrestrictedQueryWithLibrary:autoupdatingSharedLibrary predicate:v4 orderingTerms:0];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    *(v23 + 24) = 1;
    v8 = *MEMORY[0x277D2B4C0];
    v26[0] = *MEMORY[0x277D2B4D8];
    v26[1] = v8;
    v9 = *MEMORY[0x277D2B4B8];
    v26[2] = *MEMORY[0x277D2B4F0];
    v26[3] = v9;
    v26[4] = *MEMORY[0x277D2B4E8];
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:5];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __54__NMSMediaPinningManager__playlistPIDValidForPinning___block_invoke;
    v14[3] = &unk_27993E6B0;
    v16 = &v18;
    v15 = pinningCopy;
    v17 = &v22;
    [v7 enumeratePersistentIDsAndProperties:v10 usingBlock:v14];

    if (v19[3] != 1)
    {
      v11 = NMLogForCategory(5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[NMSMediaPinningManager _playlistPIDValidForPinning:];
      }

      *(v23 + 24) = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[NMSMediaPinningManager _playlistPIDValidForPinning:];
    }
  }

  v12 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v12 & 1;
}

void __54__NMSMediaPinningManager__playlistPIDValidForPinning___block_invoke(void *a1, uint64_t a2, id *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  ++*(*(a1[5] + 8) + 24);
  v5 = [a3[1] BOOLValue];
  v6 = [a3[2] BOOLValue];
  v7 = [a3[3] BOOLValue];
  v8 = [a3[4] BOOLValue];
  v9 = v8;
  if ((v5 & 1) != 0 || (v6 & 1) != 0 || (v7 & 1) != 0 || v8)
  {
    v10 = NMLogForCategory(5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v12 = 138544386;
      v13 = v11;
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v9;
      _os_log_error_impl(&dword_25B27B000, v10, OS_LOG_TYPE_ERROR, "[Pinning Validation] Rejecting invalid Playlist PID: %{public}@ -- hidden:%d geniusPlaylist:%d geniusMix:%d folder:%d", &v12, 0x24u);
    }

    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (void)_updateWorkoutSettingsPlaylistPIDTo:(id)to
{
  toCopy = to;
  v3 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanolifestyle.sessiontrackerapp"];
  if ([toCopy longLongValue])
  {
    [v3 setBool:1 forKey:@"EnableMusicAutoStart"];
    [v3 setObject:toCopy forKey:@"MusicPlaylistPersistentID"];
  }

  else
  {
    [v3 setBool:0 forKey:@"EnableMusicAutoStart"];
    [v3 removeObjectForKey:@"MusicPlaylistPersistentID"];
  }

  synchronize = [v3 synchronize];
  v5 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v6 = [MEMORY[0x277CBEB98] setWithObject:@"MusicPlaylistPersistentID"];
  [v5 synchronizeNanoDomain:@"com.apple.nanolifestyle.sessiontrackerapp" keys:v6];
}

- (void)_setWorkoutPlaylistID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v7 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v7 firstObject];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"06FB3B8E-7CE9-4C98-A47E-87BCCCB70EC1"];
  v10 = [firstObject supportsCapability:v9];

  if (v10)
  {
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = dCopy;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "Setting workoutPlaylistID <%{public}@>", buf, 0xCu);
    }

    [(NMSyncDefaults *)self->_sharedDefaults setWorkoutPlaylistID:dCopy];
    [(NMSMediaPinningManager *)self _updateWorkoutSettingsPlaylistPIDTo:dCopy];
    if (dCopy)
    {
      v12 = [MEMORY[0x277CD5EF0] nms_modelObjectWithLibraryPersistentID:{objc_msgSend(dCopy, "integerValue")}];
      v13 = objc_alloc_init(NMSKeepLocalRequestOptions);
      [(NMSKeepLocalRequestOptions *)v13 setRequiresValidation:0];
      [(NMSKeepLocalRequestOptions *)v13 setPowerPolicy:2];
      [(NMSKeepLocalRequestOptions *)v13 setCellularPolicy:2];
      [(NMSKeepLocalRequestOptions *)v13 setQualityOfService:25];
      [(NMSKeepLocalRequestOptions *)v13 setTimeout:0.0];
      v14 = [objc_alloc(objc_opt_class()) initWithModelObject:v12 enableState:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke;
      v19[3] = &unk_27993E6D8;
      v20 = dCopy;
      [v14 performWithOptions:v13 completion:v19];
    }
  }

  else
  {
    if ([dCopy longLongValue])
    {
      v15 = [objc_opt_class() _playlistPIDValidForPinning:dCopy];
    }

    else
    {
      v15 = 1;
    }

    v16 = NMLogForCategory(5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = @"NO";
      if (v15)
      {
        v17 = @"YES";
      }

      *buf = 138543618;
      v22 = dCopy;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&dword_25B27B000, v16, OS_LOG_TYPE_DEFAULT, "[Pinning Validation] setWorkoutPlaylistID: <%{public}@>, valid: %@", buf, 0x16u);
    }

    if (v15)
    {
      v18 = NMLogForCategory(5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = dCopy;
        _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "Setting workoutPlaylistID <%{public}@>", buf, 0xCu);
      }

      [(NMSyncDefaults *)self->_sharedDefaults setWorkoutPlaylistID:dCopy];
      [(NMSMediaPinningManager *)self _updateWorkoutSettingsPlaylistPIDTo:dCopy];
      [(NMSMediaPinningManager *)self _invalidateMediaCacheForAppIdentifiers:1];
    }
  }
}

void __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = NMLogForCategory(5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

- (void)setWorkoutPlaylistID:(id)d
{
  dCopy = d;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__NMSMediaPinningManager_setWorkoutPlaylistID___block_invoke;
  v7[3] = &unk_27993E570;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(internalQueue, v7);
}

- (BOOL)_deviceSupportsPodcastsPinningSettingsV2
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  activePairedDeviceSelectorBlock = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v4 = [mEMORY[0x277D2BCF8] getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];
  firstObject = [v4 firstObject];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"D718E4BE-8067-432E-AF41-7342473499D5"];
  v7 = [firstObject supportsCapability:v6];

  return v7;
}

- (void)_legacy_refreshMusicIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NMSMediaPinningManager *)self _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v4 = [v3 groupIteratorForBundleIdentifier:@"com.apple.NanoMusic"];
  v5 = [v4 identifiersForContainersOfType:1];

  v6 = [v3 groupIteratorForBundleIdentifier:@"com.apple.NanoMusic"];
  v7 = [v6 identifiersForContainersOfType:0];

  v8 = self->_cachedAlbumIdentifiers;
  v9 = v8;
  if (v8 == v5)
  {

    goto LABEL_9;
  }

  v10 = [(NSArray *)v8 isEqual:v5];

  if (v10)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v26 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v26];
  v12 = v26;
  if (v12)
  {
    v13 = NMLogForCategory(5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaPinningManager _refreshMusicIdentifiers];
    }
  }

  _cachedAlbumIdentifiersFilePath = [objc_opt_class() _cachedAlbumIdentifiersFilePath];
  v15 = 1;
  [v11 writeToFile:_cachedAlbumIdentifiersFilePath atomically:1];

  objc_storeStrong(&self->_cachedAlbumIdentifiers, v5);
LABEL_10:
  p_cachedPlaylistIdentifiers = &self->_cachedPlaylistIdentifiers;
  v17 = self->_cachedPlaylistIdentifiers;
  v18 = v17;
  if (v17 == v7)
  {
  }

  else
  {
    v19 = [(NSArray *)v17 isEqual:v7];

    if ((v19 & 1) == 0)
    {
      v25 = 0;
      v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v25];
      v21 = v25;
      if (v21)
      {
        v22 = NMLogForCategory(5);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [NMSMediaPinningManager _refreshMusicIdentifiers];
        }
      }

      _cachedPlaylistIdentifiersFilePath = [objc_opt_class() _cachedPlaylistIdentifiersFilePath];
      [v20 writeToFile:_cachedPlaylistIdentifiersFilePath atomically:1];

      objc_storeStrong(p_cachedPlaylistIdentifiers, v7);
      goto LABEL_19;
    }
  }

  if (v15)
  {
LABEL_19:
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"NMSMediaPinningManagerMusicIdentifiersDidChangeNotification" object:0];
  }
}

- (void)_legacy_refreshPodcastsIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  obj = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastFeedURLs];
  pinnedPodcastStationUUIDs = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastStationUUIDs];
  savedEpisodesEnabled = [(NMSyncDefaults *)self->_sharedDefaults savedEpisodesEnabled];
  pinnedPodcastsAreUserSet = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastsAreUserSet];
  v6 = self->_legacy_cachedPodcastFeedURLs;
  v7 = v6;
  if (v6 == obj)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)v6 isEqual:?]^ 1;
  }

  v9 = self->_legacy_cachedPodcastStationUUIDs;
  v10 = v9;
  if (v9 == pinnedPodcastStationUUIDs)
  {
    v11 = 0;
  }

  else
  {
    v11 = [(NSArray *)v9 isEqual:pinnedPodcastStationUUIDs]^ 1;
  }

  legacy_cachedSavedEpisodesEnabled = self->_legacy_cachedSavedEpisodesEnabled;
  legacy_cachedPinnedPodcastsAreUserSet = self->_legacy_cachedPinnedPodcastsAreUserSet;
  objc_storeStrong(&self->_legacy_cachedPodcastFeedURLs, obj);
  objc_storeStrong(&self->_legacy_cachedPodcastStationUUIDs, pinnedPodcastStationUUIDs);
  self->_legacy_cachedSavedEpisodesEnabled = savedEpisodesEnabled;
  self->_legacy_cachedPinnedPodcastsAreUserSet = pinnedPodcastsAreUserSet;
  if (((v8 | v11) & 1) != 0 || legacy_cachedSavedEpisodesEnabled != savedEpisodesEnabled || legacy_cachedPinnedPodcastsAreUserSet != pinnedPodcastsAreUserSet)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification" object:0];
  }
}

- (void)_legacy_refreshAudiobooksIdentifiers
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [(NMSMediaPinningManager *)self _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v4 = [v3 groupIteratorForBundleIdentifier:@"com.apple.NanoBooks"];
  v5 = [v4 identifiersForContainersOfType:7];

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__NMSMediaPinningManager__legacy_refreshAudiobooksIdentifiers__block_invoke;
  v17[3] = &unk_27993E700;
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:v17];
  p_cachedAudiobookIdentifiers = &self->_cachedAudiobookIdentifiers;
  v9 = self->_cachedAudiobookIdentifiers;
  v10 = v9;
  if (v9 == v7)
  {
LABEL_8:

    goto LABEL_9;
  }

  v11 = [(NSArray *)v9 isEqual:v7];

  if ((v11 & 1) == 0)
  {
    v16 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v16];
    v10 = v16;
    if (v10)
    {
      v13 = NMLogForCategory(5);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [NMSMediaPinningManager _refreshAudiobooksIdentifiers];
      }
    }

    _cachedAudiobookIdentifiersFilePath = [objc_opt_class() _cachedAudiobookIdentifiersFilePath];
    [v12 writeToFile:_cachedAudiobookIdentifiersFilePath atomically:1];

    objc_storeStrong(p_cachedAudiobookIdentifiers, v6);
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"NMSMediaPinningManagerAudiobooksIdentifiersDidChangeNotification" object:0];

    goto LABEL_8;
  }

LABEL_9:
}

void __62__NMSMediaPinningManager__legacy_refreshAudiobooksIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v5 = [a2 universalStore];
  v4 = [v3 numberWithLongLong:{objc_msgSend(v5, "adamID")}];
  [v2 addObject:v4];
}

- (BOOL)_legacy_musicIsOutOfSpace
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NMSMediaPinningManager__legacy_musicIsOutOfSpace__block_invoke;
  v5[3] = &unk_27993E410;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __51__NMSMediaPinningManager__legacy_musicIsOutOfSpace__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _legacy_quotaManagerWithDownloadedItemsOnly:0];
  v2 = [v3 sizeOfNominatedItemsForBundleIdentifier:@"com.apple.NanoMusic"];
  *(*(*(a1 + 40) + 8) + 24) = v2 > [v3 sizeOfItemsWithinQuotaForBundleIdentifier:@"com.apple.NanoMusic"];
}

- (id)_legacy_newMusicGroupIteratorWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v72 = *MEMORY[0x277D85DE8];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  if ([(NMSMediaPinningManager *)self _shouldIncludeMusicManualDownloadsInQuotaEvaluation])
  {
    workoutPlaylistID = [(NMSyncDefaults *)self->_sharedDefaults workoutPlaylistID];
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v66 = workoutPlaylistID;
      _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) workoutPlaylistID: %{public}@", buf, 0xCu);
    }

    if ([workoutPlaylistID longLongValue])
    {
      v8 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:workoutPlaylistID downloadedItemsOnly:onlyCopy];
      [orderedSet addObject:v8];
    }

    obj = workoutPlaylistID;
    v9 = orderedSet;
    pinnedPlaylists = [(NMSyncDefaults *)self->_sharedDefaults pinnedPlaylists];
    v11 = NMLogForCategory(5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v66 = pinnedPlaylists;
      _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) pinnedPlaylists %{public}@", buf, 0xCu);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v12 = pinnedPlaylists;
    v13 = [v12 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v62;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [NMSMediaItemGroup itemGroupWithSyncedPlaylistID:*(*(&v61 + 1) + 8 * i) downloadedItemsOnly:onlyCopy];
          [v9 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v14);
    }

    pinnedAlbums = [(NMSyncDefaults *)self->_sharedDefaults pinnedAlbums];
    v19 = NMLogForCategory(5);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v66 = pinnedAlbums;
      _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) pinnedAlbums %{public}@", buf, 0xCu);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v20 = pinnedAlbums;
    v21 = [v20 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v58;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v58 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [NMSMediaItemGroup itemGroupWithSyncedAlbumID:*(*(&v57 + 1) + 8 * j) downloadedItemsOnly:onlyCopy];
          [v9 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v22);
    }

    orderedSet = v9;
  }

  [objc_opt_class() _fetchMusicRecommendations];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = v56 = 0u;
  v26 = [obja countByEnumeratingWithState:&v53 objects:v69 count:16];
  if (!v26)
  {
    goto LABEL_52;
  }

  v28 = v26;
  v50 = orderedSet;
  v29 = 0;
  v30 = *v54;
  *&v27 = 138543618;
  v49 = v27;
  do
  {
    for (k = 0; k != v28; ++k)
    {
      if (*v54 != v30)
      {
        objc_enumerationMutation(obja);
      }

      v32 = *(*(&v53 + 1) + 8 * k);
      identifier = [v32 identifier];
      v34 = [identifier isEqualToString:NMSRecommendationRecentMusicIdentifier];

      isSelected = [v32 isSelected];
      v36 = isSelected;
      if (v34)
      {
        if (isSelected)
        {
          if (v29)
          {
            v37 = NMLogForCategory(5);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = v49;
              v66 = v29;
              v67 = 2114;
              v68 = v32;
              _os_log_error_impl(&dword_25B27B000, v37, OS_LOG_TYPE_ERROR, "_quotaManager (Music containers) Multiple recentMusicRecommendation; have:%{public}@; got:%{public}@", buf, 0x16u);
            }
          }

          v38 = v29;
          v29 = v32;
          goto LABEL_46;
        }

        v38 = NMLogForCategory(5);
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_46;
        }

        *buf = 0;
        v40 = v38;
        v41 = "_quotaManager (Music containers) NOT including disabled Recent Music.";
        v42 = 2;
LABEL_45:
        _os_log_impl(&dword_25B27B000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, v42);
        goto LABEL_46;
      }

      v38 = NMLogForCategory(5);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      if (!v36)
      {
        if (!v39)
        {
          goto LABEL_46;
        }

        *buf = 138543362;
        v66 = v32;
        v40 = v38;
        v41 = "_quotaManager (Music containers) NOT including disabled store recommendation %{public}@";
        v42 = 12;
        goto LABEL_45;
      }

      if (v39)
      {
        *buf = 138543362;
        v66 = v32;
        _os_log_impl(&dword_25B27B000, v38, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) including enabled store recommendation %{public}@", buf, 0xCu);
      }

      v38 = [NMSMediaItemGroup itemGroupWithRecommendation:v32 downloadedItemsOnly:onlyCopy];
      [v50 addObject:v38];
LABEL_46:
    }

    v28 = [obja countByEnumeratingWithState:&v53 objects:v69 count:16];
  }

  while (v28);
  orderedSet = v50;
  if (v29)
  {
    v43 = NMLogForCategory(5);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v66 = v29;
      _os_log_impl(&dword_25B27B000, v43, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) including enabled HR recommendation %{public}@", buf, 0xCu);
    }

    v44 = [NMSMediaItemGroup itemGroupWithRecommendation:v29 downloadedItemsOnly:onlyCopy];
    [v50 addObject:v44];
    goto LABEL_55;
  }

LABEL_52:
  v44 = NMLogForCategory(5);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B27B000, v44, OS_LOG_TYPE_DEFAULT, "_quotaManager (Music containers) skipping Recent Music because there is no enabled Recent Music recommendation.", buf, 2u);
  }

  v29 = 0;
LABEL_55:

  v45 = [NMSSequentialMediaItemGroupIterator alloc];
  array = [orderedSet array];
  v47 = [(NMSMediaItemGroupIterator *)v45 initWithItemGroups:array estimatedItemSize:7000000];

  return v47;
}

- (id)_legacy_newPodcastsGroupIteratorWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v47 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  v7 = NMLogForCategory(5);
  v8 = v7;
  if (isReady)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pinnedPodcastsAreUserSet = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastsAreUserSet];
      *buf = 67109120;
      LODWORD(v45) = pinnedPodcastsAreUserSet;
      _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) pinnedPodcastsAreUserSet %x", buf, 8u);
    }

    array = [MEMORY[0x277CBEB18] array];
    if ([(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastsAreUserSet])
    {
      if ([(NMSyncDefaults *)self->_sharedDefaults savedEpisodesEnabled])
      {
        v11 = NMLogForCategory(5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B27B000, v11, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) adding Saved Episodes item group", buf, 2u);
        }

        v12 = [NMSMediaItemGroup itemGroupWithSavedEpisodesDownloadedItemsOnly:onlyCopy];
        [array addObject:v12];
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      selfCopy = self;
      pinnedPodcastStationUUIDs = [(NMSyncDefaults *)self->_sharedDefaults pinnedPodcastStationUUIDs];
      v14 = [pinnedPodcastStationUUIDs countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(pinnedPodcastStationUUIDs);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            v19 = NMLogForCategory(5);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v45 = v18;
              _os_log_impl(&dword_25B27B000, v19, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) adding station %{public}@", buf, 0xCu);
            }

            v20 = [NMSMediaItemGroup itemGroupWithPodcastStationUUID:v18 downloadedItemsOnly:onlyCopy];
            [array addObject:v20];
          }

          v15 = [pinnedPodcastStationUUIDs countByEnumeratingWithState:&v39 objects:v46 count:16];
        }

        while (v15);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      pinnedPodcastFeedURLs = [(NMSyncDefaults *)selfCopy->_sharedDefaults pinnedPodcastFeedURLs];
      v22 = [pinnedPodcastFeedURLs countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v36;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v36 != v24)
            {
              objc_enumerationMutation(pinnedPodcastFeedURLs);
            }

            v26 = *(*(&v35 + 1) + 8 * j);
            v27 = NMLogForCategory(5);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v45 = v26;
              _os_log_impl(&dword_25B27B000, v27, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) adding podcast with feed url %{public}@", buf, 0xCu);
            }

            v28 = [NMSMediaItemGroup itemGroupWithCustomPodcastFeedURL:v26 downloadedItemsOnly:onlyCopy];
            [array addObject:v28];
          }

          v23 = [pinnedPodcastFeedURLs countByEnumeratingWithState:&v35 objects:v43 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v30 = NMLogForCategory(5);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B27B000, v30, OS_LOG_TYPE_DEFAULT, "_quotaManager (Podcasts containers) adding Up Next item group", buf, 2u);
      }

      pinnedPodcastFeedURLs = [NMSMediaItemGroup itemGroupWithUpNextEpisodesDownloadedItemsOnly:onlyCopy];
      [array addObject:pinnedPodcastFeedURLs];
    }

    v31 = [NMSAlternatingMediaItemGroupIterator alloc];
    v32 = [array copy];
    v29 = [(NMSMediaItemGroupIterator *)v31 initWithItemGroups:v32 estimatedItemSize:50000000];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [NMSMediaPinningManager _legacy_newPodcastsGroupIteratorWithDownloadedItemsOnly:v8];
    }

    array = [MEMORY[0x277D3DAF0] sharedInstance];
    [array attemptToFix];
    v29 = 0;
  }

  return v29;
}

- (id)_legacy_newAudiobooksGroupIteratorWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v58 = *MEMORY[0x277D85DE8];
  v5 = NMLogForCategory(5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    wantToReadEnabled = [(NMSyncDefaults *)self->_sharedDefaults wantToReadEnabled];
    readingNowEnabled = [(NMSyncDefaults *)self->_sharedDefaults readingNowEnabled];
    *buf = 67109376;
    *v57 = wantToReadEnabled;
    *&v57[4] = 1024;
    *&v57[6] = readingNowEnabled;
    _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobooks containers) wantToReadEnabled: %x, readingNowEnabled: %x", buf, 0xEu);
  }

  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  [(NMSMediaPinningManager *)self _audiobookDownloadLimit];
  v10 = v9;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  selfCopy = self;
  pinnedAudiobooks = [(NMSyncDefaults *)self->_sharedDefaults pinnedAudiobooks];
  v12 = [pinnedAudiobooks countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(pinnedAudiobooks);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v16 downloadLimit:v10 manuallyAdded:0 downloadedItemsOnly:onlyCopy];
        [orderedSet addObject:v17];

        v18 = NMLogForCategory(5);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v57 = v16;
          _os_log_impl(&dword_25B27B000, v18, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding pinned audiobook %{public}@", buf, 0xCu);
        }
      }

      v13 = [pinnedAudiobooks countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v13);
  }

  v19 = selfCopy;
  if ([(NMSyncDefaults *)selfCopy->_sharedDefaults readingNowEnabled])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    readingNowAudiobooks = [(NMSyncDefaults *)selfCopy->_sharedDefaults readingNowAudiobooks];
    v21 = [readingNowAudiobooks countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(readingNowAudiobooks);
          }

          v25 = *(*(&v45 + 1) + 8 * j);
          v26 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v25 downloadLimit:v10 manuallyAdded:0 downloadedItemsOnly:onlyCopy];
          [orderedSet addObject:v26];

          v27 = NMLogForCategory(5);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v57 = v25;
            _os_log_impl(&dword_25B27B000, v27, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding readingNow audiobook %{public}@", buf, 0xCu);
          }
        }

        v22 = [readingNowAudiobooks countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v22);
    }

    v19 = selfCopy;
  }

  if ([(NMSyncDefaults *)v19->_sharedDefaults wantToReadEnabled])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    wantToReadAudiobooks = [(NMSyncDefaults *)v19->_sharedDefaults wantToReadAudiobooks];
    v29 = [wantToReadAudiobooks countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v42;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(wantToReadAudiobooks);
          }

          v33 = *(*(&v41 + 1) + 8 * k);
          v34 = [NMSMediaItemGroup itemGroupWithAudiobookIdentifier:v33 downloadLimit:v10 manuallyAdded:0 downloadedItemsOnly:onlyCopy];
          [orderedSet addObject:v34];

          v35 = NMLogForCategory(5);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v57 = v33;
            _os_log_impl(&dword_25B27B000, v35, OS_LOG_TYPE_DEFAULT, "_quotaManager (Audiobook containers) adding wantToRead audiobook %{public}@", buf, 0xCu);
          }
        }

        v30 = [wantToReadAudiobooks countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v30);
    }
  }

  v36 = [NMSSequentialMediaItemGroupIterator alloc];
  array = [orderedSet array];
  v38 = [(NMSMediaItemGroupIterator *)v36 initWithItemGroups:array estimatedItemSize:143000000];

  return v38;
}

- (id)_legacy_newGroupIteratorForBundleIdentifier:(id)identifier downloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.NanoMusic"])
  {
    v7 = [(NMSMediaPinningManager *)self _legacy_newMusicGroupIteratorWithDownloadedItemsOnly:onlyCopy];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  if ([identifierCopy isEqualToString:@"com.apple.podcasts"])
  {
    v7 = [(NMSMediaPinningManager *)self _legacy_newPodcastsGroupIteratorWithDownloadedItemsOnly:onlyCopy];
    goto LABEL_7;
  }

  if ([identifierCopy isEqualToString:@"com.apple.NanoBooks"])
  {
    v7 = [(NMSMediaPinningManager *)self _legacy_newAudiobooksGroupIteratorWithDownloadedItemsOnly:onlyCopy];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (id)_legacy_quotaManagerWithDownloadedItemsOnly:(BOOL)only
{
  onlyCopy = only;
  v32 = *MEMORY[0x277D85DE8];
  if ([(NMSMediaPinningManager *)self _shouldSkipQuotaManagerEvaluation])
  {
    v5 = 0;
    goto LABEL_27;
  }

  if (onlyCopy)
  {
    v6 = 136;
  }

  else
  {
    v6 = 128;
  }

  v5 = *(&self->super.isa + v6);
  if (v5)
  {
    goto LABEL_27;
  }

  v21 = v6;
  v7 = NMLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (onlyCopy)
    {
      v8 = @"downloaded";
    }

    else
    {
      v8 = @"added";
    }

    *buf = 138412546;
    v29 = v8;
    v30 = 2048;
    _mediaQuota = [(NMSMediaPinningManager *)self _mediaQuota];
    _os_log_impl(&dword_25B27B000, v7, OS_LOG_TYPE_DEFAULT, "[QuotaManager Caching] Creating new %@ items quota manager for quota:%llu", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27[0] = @"com.apple.NanoMusic";
  v27[1] = @"com.apple.podcasts";
  v27[2] = @"com.apple.NanoBooks";
  [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v25 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (![(NMSMediaPinningManager *)self _isAppDownloadingDormantForBundleIdentifier:v15])
        {
          v16 = [(NMSMediaPinningManager *)self _legacy_newGroupIteratorForBundleIdentifier:v15 downloadedItemsOnly:onlyCopy];
          if (!v16)
          {
            goto LABEL_24;
          }

LABEL_23:
          [dictionary setObject:v16 forKeyedSubscript:v15];
          goto LABEL_24;
        }

        v16 = [(NMSMediaPinningManager *)self _legacy_newGroupIteratorForBundleIdentifier:v15 downloadedItemsOnly:1];
        v17 = NMLogForCategory(12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v15;
          _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_DEFAULT, "Skipping downloading of %@ items because it is download-dormant.", buf, 0xCu);
        }

        if (v16)
        {
          goto LABEL_23;
        }

LABEL_24:
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [NMSMediaQuotaManager_Legacy alloc];
  v19 = [dictionary copy];
  v5 = [(NMSMediaQuotaManager_Legacy *)v18 initWithGroupIterators:v19 quota:[(NMSMediaPinningManager *)self _mediaQuota]];

  objc_storeStrong((&self->super.isa + v21), v5);
LABEL_27:

  return v5;
}

- (void)extensionAccessDidChange
{
  mEMORY[0x277D3DAF0] = [MEMORY[0x277D3DAF0] sharedInstance];
  isReady = [mEMORY[0x277D3DAF0] isReady];

  if (isReady)
  {
    v5 = NMLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B27B000, v5, OS_LOG_TYPE_DEFAULT, "NMSMediaPinningManager can open PodcastsDB again. Invalidating added items and kicking off syncs", v6, 2u);
    }

    [(NMSMediaPinningManager *)self invalidatePodcastsCache];
  }
}

- (void)podcastsDownloadableContentControllerContentDidChange:(id)change
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__NMSMediaPinningManager_podcastsDownloadableContentControllerContentDidChange___block_invoke;
  block[3] = &unk_27993DD20;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __43__NMSMediaPinningManager_workoutPlaylistID__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_4(&dword_25B27B000, a2, a3, "[Pinning Validation] Removing invalid workoutPlaylistID %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __48__NMSMediaPinningManager__setWorkoutPlaylistID___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_0(&dword_25B27B000, a2, a3, "Failed to set keep local for workoutPlaylistID <%{public}@>.  Error=%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end