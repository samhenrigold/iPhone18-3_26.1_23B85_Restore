@interface NMSPodcastsFetchRequests
+ (id)_createFetchRequestForEpisodeDownloadableItem;
+ (id)_predicateForDownloadableWatchEpisodesWithDownloadedOnly:(BOOL)only unplayedOnly:(BOOL)unplayedOnly;
+ (id)fetchRequestForFeedURL:(id)l downloadSettings:(id)settings downloadedOnly:(BOOL)only ctx:(id)ctx;
+ (id)fetchRequestForSavedEpisodesDownloadSettings:(id)settings downloadedOnly:(BOOL)only;
+ (id)fetchRequestForStationUUID:(id)d downloadSettings:(id)settings downloadedOnly:(BOOL)only;
+ (id)fetchRequestForUpNextDownloadSettings:(id)settings downloadedOnly:(BOOL)only;
+ (id)legacy_fetchRequestForEpisodesWithFeedURL:(id)l downloadedOnly:(BOOL)only ctx:(id)ctx;
+ (id)legacy_fetchRequestForSavedEpisodesDownloadedOnly:(BOOL)only;
+ (id)legacy_fetchRequestForStationWithUUID:(id)d;
+ (id)legacy_fetchRequestForUpNextEpisodesDownloadedOnly:(BOOL)only;
@end

@implementation NMSPodcastsFetchRequests

+ (id)fetchRequestForUpNextDownloadSettings:(id)settings downloadedOnly:(BOOL)only
{
  onlyCopy = only;
  settingsCopy = settings;
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  predicateForListenNow = [MEMORY[0x277D3DAF8] predicateForListenNow];
  v9 = [self _predicateForDownloadableWatchEpisodesWithDownloadedOnly:onlyCopy unplayedOnly:0];
  v10 = [predicateForListenNow AND:v9];
  [_createFetchRequestForEpisodeDownloadableItem setPredicate:v10];

  sortDescriptorsForListenNow = [MEMORY[0x277D3DAF8] sortDescriptorsForListenNow];
  [_createFetchRequestForEpisodeDownloadableItem setSortDescriptors:sortDescriptorsForListenNow];

  numberOfEpisodes = [settingsCopy numberOfEpisodes];
  [_createFetchRequestForEpisodeDownloadableItem setFetchLimit:numberOfEpisodes];

  return _createFetchRequestForEpisodeDownloadableItem;
}

+ (id)fetchRequestForStationUUID:(id)d downloadSettings:(id)settings downloadedOnly:(BOOL)only
{
  onlyCopy = only;
  v19[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  dCopy = d;
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  v11 = *MEMORY[0x277D3DC88];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ IN %K.%K", dCopy, *MEMORY[0x277D3DC88], *MEMORY[0x277D3DE08]];

  v13 = [self _predicateForDownloadableWatchEpisodesWithDownloadedOnly:onlyCopy unplayedOnly:1];
  v14 = [v12 AND:v13];
  [_createFetchRequestForEpisodeDownloadableItem setPredicate:v14];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v11 ascending:1];
  v19[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [_createFetchRequestForEpisodeDownloadableItem setSortDescriptors:v16];

  numberOfEpisodes = [settingsCopy numberOfEpisodes];
  [_createFetchRequestForEpisodeDownloadableItem setFetchLimit:numberOfEpisodes];
  [_createFetchRequestForEpisodeDownloadableItem setIncludesPendingChanges:0];

  return _createFetchRequestForEpisodeDownloadableItem;
}

+ (id)fetchRequestForSavedEpisodesDownloadSettings:(id)settings downloadedOnly:(BOOL)only
{
  onlyCopy = only;
  settingsCopy = settings;
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  predicateForBookmarkedEpisodes = [MEMORY[0x277D3DAF8] predicateForBookmarkedEpisodes];
  v9 = [self _predicateForDownloadableWatchEpisodesWithDownloadedOnly:onlyCopy unplayedOnly:0];
  v10 = [predicateForBookmarkedEpisodes AND:v9];
  [_createFetchRequestForEpisodeDownloadableItem setPredicate:v10];

  v11 = [MEMORY[0x277D3DAF8] sortDescriptorsForLastBookmarkedDateAscending:0];
  [_createFetchRequestForEpisodeDownloadableItem setSortDescriptors:v11];

  numberOfEpisodes = [settingsCopy numberOfEpisodes];
  [_createFetchRequestForEpisodeDownloadableItem setFetchLimit:numberOfEpisodes];

  return _createFetchRequestForEpisodeDownloadableItem;
}

+ (id)fetchRequestForFeedURL:(id)l downloadSettings:(id)settings downloadedOnly:(BOOL)only ctx:(id)ctx
{
  onlyCopy = only;
  v51[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  settingsCopy = settings;
  ctxCopy = ctx;
  v12 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*MEMORY[0x277D3DD50]];
  lCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D3DE68], lCopy];
  [v12 setPredicate:lCopy];

  v14 = *MEMORY[0x277D3DE70];
  v51[0] = *MEMORY[0x277D3DF10];
  v51[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  [v12 setPropertiesToFetch:v15];

  [v12 setFetchLimit:1];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __87__NMSPodcastsFetchRequests_fetchRequestForFeedURL_downloadSettings_downloadedOnly_ctx___block_invoke;
  v38[3] = &unk_27993E548;
  v41 = &v42;
  v16 = ctxCopy;
  v39 = v16;
  v17 = v12;
  v40 = v17;
  [v16 performBlockAndWait:v38];
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  uuid = [v43[5] uuid];
  if (uuid)
  {
    v20 = MEMORY[0x277D3DAF8];
    uuid2 = [v43[5] uuid];
    v6 = [v20 predicateForAllEpisodesOnPodcastUuid:uuid2];
    onlyCopy = [self _predicateForDownloadableWatchEpisodesWithDownloadedOnly:onlyCopy unplayedOnly:1];
    self = [v6 AND:onlyCopy];
    v15 = [MEMORY[0x277D3DAF8] predicateForPodcastIsSubscribed:1];
    falsePredicate = [self AND:v15];
  }

  else
  {
    falsePredicate = [MEMORY[0x277CCAC30] falsePredicate];
    uuid2 = falsePredicate;
  }

  [_createFetchRequestForEpisodeDownloadableItem setPredicate:falsePredicate];
  if (uuid)
  {
  }

  v23 = MEMORY[0x277CBEB18];
  v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC60] ascending:0];
  v50[0] = v24;
  v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DBE0] ascending:1];
  v50[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
  v27 = [v23 arrayWithArray:v26];

  sortAscending = [v43[5] sortAscending];
  v29 = *MEMORY[0x277D3DCA0];
  if (sortAscending)
  {
    v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v29 ascending:1];
    v49[0] = v30;
    v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:1];
    v49[1] = v31;
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:0];
    v49[2] = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
    v49[3] = v33;
    [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  }

  else
  {
    v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v29 ascending:0];
    v48[0] = v30;
    v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:0];
    v48[1] = v31;
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:1];
    v48[2] = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
    v48[3] = v33;
    [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  }
  v34 = ;
  [v27 addObjectsFromArray:v34];

  [_createFetchRequestForEpisodeDownloadableItem setSortDescriptors:v27];
  [_createFetchRequestForEpisodeDownloadableItem setFetchLimit:{objc_msgSend(settingsCopy, "numberOfEpisodes")}];

  _Block_object_dispose(&v42, 8);

  return _createFetchRequestForEpisodeDownloadableItem;
}

void __87__NMSPodcastsFetchRequests_fetchRequestForFeedURL_downloadSettings_downloadedOnly_ctx___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) executeFetchRequest:*(a1 + 40)];
  v2 = [v5 firstObject];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)_predicateForDownloadableWatchEpisodesWithDownloadedOnly:(BOOL)only unplayedOnly:(BOOL)unplayedOnly
{
  unplayedOnlyCopy = unplayedOnly;
  onlyCopy = only;
  v6 = [MEMORY[0x277D3DAF8] predicateForAudio:1];
  predicateForEntitledEpisodes = [MEMORY[0x277D3DAF8] predicateForEntitledEpisodes];
  v8 = [v6 AND:predicateForEntitledEpisodes];

  if (onlyCopy)
  {
    v9 = [MEMORY[0x277D3DAF8] predicateForDownloaded:1 excludeHidden:1];
    v10 = [v8 AND:v9];

    v8 = v10;
  }

  if (unplayedOnlyCopy)
  {
    v11 = [MEMORY[0x277D3DAF8] predicateForVisuallyPlayed:0];
    v12 = [v8 AND:v11];

    v8 = v12;
  }

  return v8;
}

+ (id)_createFetchRequestForEpisodeDownloadableItem
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*MEMORY[0x277D3DCF8]];
  propertiesToFetchDownloadInfo = [MEMORY[0x277D3DAF8] propertiesToFetchDownloadInfo];
  [v2 setPropertiesToFetch:propertiesToFetchDownloadInfo];

  relationshipKeyPathsForPrefetchingDownloadInfo = [MEMORY[0x277D3DAF8] relationshipKeyPathsForPrefetchingDownloadInfo];
  [v2 setRelationshipKeyPathsForPrefetching:relationshipKeyPathsForPrefetchingDownloadInfo];

  [v2 setFetchBatchSize:20];

  return v2;
}

+ (id)legacy_fetchRequestForUpNextEpisodesDownloadedOnly:(BOOL)only
{
  onlyCopy = only;
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  predicateForListenNow = [MEMORY[0x277D3DAF8] predicateForListenNow];
  v7 = [self _predicateForDownloadableWatchEpisodesWithDownloadedOnly:onlyCopy unplayedOnly:1];
  v8 = [predicateForListenNow AND:v7];
  [_createFetchRequestForEpisodeDownloadableItem setPredicate:v8];

  sortDescriptorsForListenNow = [MEMORY[0x277D3DAF8] sortDescriptorsForListenNow];
  [_createFetchRequestForEpisodeDownloadableItem setSortDescriptors:sortDescriptorsForListenNow];

  [_createFetchRequestForEpisodeDownloadableItem setFetchLimit:10];

  return _createFetchRequestForEpisodeDownloadableItem;
}

+ (id)legacy_fetchRequestForSavedEpisodesDownloadedOnly:(BOOL)only
{
  onlyCopy = only;
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  predicateForBookmarkedEpisodes = [MEMORY[0x277D3DAF8] predicateForBookmarkedEpisodes];
  v7 = [self _predicateForDownloadableWatchEpisodesWithDownloadedOnly:onlyCopy unplayedOnly:0];
  v8 = [predicateForBookmarkedEpisodes AND:v7];
  [_createFetchRequestForEpisodeDownloadableItem setPredicate:v8];

  v9 = [MEMORY[0x277D3DAF8] sortDescriptorsForPubDateAscending:0];
  [_createFetchRequestForEpisodeDownloadableItem setSortDescriptors:v9];

  return _createFetchRequestForEpisodeDownloadableItem;
}

+ (id)legacy_fetchRequestForStationWithUUID:(id)d
{
  v3 = MEMORY[0x277CBE428];
  v4 = *MEMORY[0x277D3DD48];
  dCopy = d;
  v6 = [v3 fetchRequestWithEntityName:v4];
  dCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D3DE08], dCopy];

  [v6 setPredicate:dCopy];
  [v6 setFetchLimit:1];

  return v6;
}

+ (id)legacy_fetchRequestForEpisodesWithFeedURL:(id)l downloadedOnly:(BOOL)only ctx:(id)ctx
{
  v29[2] = *MEMORY[0x277D85DE8];
  ctxCopy = ctx;
  v9 = MEMORY[0x277CBE428];
  v10 = *MEMORY[0x277D3DD50];
  lCopy = l;
  v12 = [v9 fetchRequestWithEntityName:v10];
  lCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D3DE68], lCopy];

  [v12 setPredicate:lCopy];
  v14 = *MEMORY[0x277D3DE70];
  v29[0] = *MEMORY[0x277D3DF10];
  v29[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v12 setPropertiesToFetch:v15];

  [v12 setFetchLimit:1];
  _createFetchRequestForEpisodeDownloadableItem = [self _createFetchRequestForEpisodeDownloadableItem];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __89__NMSPodcastsFetchRequests_legacy_fetchRequestForEpisodesWithFeedURL_downloadedOnly_ctx___block_invoke;
  v23[3] = &unk_27993E728;
  v24 = ctxCopy;
  v25 = v12;
  v17 = _createFetchRequestForEpisodeDownloadableItem;
  v26 = v17;
  selfCopy = self;
  onlyCopy = only;
  v18 = v12;
  v19 = ctxCopy;
  [v19 performBlockAndWait:v23];
  v20 = v26;
  v21 = v17;

  return v17;
}

void __89__NMSPodcastsFetchRequests_legacy_fetchRequestForEpisodesWithFeedURL_downloadedOnly_ctx___block_invoke(uint64_t a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v24 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v24];
  v5 = v24;
  v6 = [v4 firstObject];

  if (!v5)
  {
    v23 = [MEMORY[0x277D3DAF8] predicateForUserSetTopLevelEpisodes];
    v7 = MEMORY[0x277D3DAF8];
    v8 = [v6 uuid];
    v9 = [v7 predicateForAllEpisodesOnPodcastUuid:v8];
    v10 = [v23 AND:v9];
    v11 = [*(a1 + 56) _predicateForDownloadableWatchEpisodesWithDownloadedOnly:*(a1 + 64) unplayedOnly:1];
    v12 = [v10 AND:v11];
    v13 = [MEMORY[0x277D3DAF8] predicateForPodcastIsSubscribed:1];
    v14 = [v12 AND:v13];
    [*(a1 + 48) setPredicate:v14];

    v15 = [v6 sortAscending];
    v16 = *MEMORY[0x277D3DCA0];
    if (v15)
    {
      v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v16 ascending:1];
      v26[0] = v17;
      v18 = v26;
    }

    else
    {
      v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v16 ascending:0];
      v25 = v17;
      v18 = &v25;
    }

    v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:v15];
    v18[1] = v19;
    v20 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:v15 ^ 1];
    v18[2] = v20;
    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCB8] ascending:1 selector:sel_localizedStandardCompare_];
    v18[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
    [*(a1 + 48) setSortDescriptors:v22];
  }
}

@end