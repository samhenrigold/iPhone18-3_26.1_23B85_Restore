@interface NMSPodcastUpNextMediaItemGroup
- (id)_upNextEpisodes;
- (id)_upNextFeedURLs;
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
@end

@implementation NMSPodcastUpNextMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== type)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    _upNextFeedURLs = [(NMSPodcastUpNextMediaItemGroup *)self _upNextFeedURLs];
    v7 = [_upNextFeedURLs countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(_upNextFeedURLs);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x277CD5DA0]);
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __62__NMSPodcastUpNextMediaItemGroup_identifiersForContainerType___block_invoke;
          v16[3] = &unk_27993DFA0;
          v16[4] = v11;
          v13 = [v12 initWithBlock:v16];
          [array addObject:v13];
        }

        v8 = [_upNextFeedURLs countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  v14 = [array copy];

  return v14;
}

- (id)itemList
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(NMSPodcastSizeEstimation);
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__NMSPodcastUpNextMediaItemGroup_itemList__block_invoke;
  v11[3] = &unk_27993E5C0;
  v11[4] = self;
  v12 = v4;
  v13 = array;
  v7 = array;
  v8 = v4;
  [mainOrPrivateContext performBlockAndWait:v11];
  v9 = [v7 copy];

  return v9;
}

void __42__NMSPodcastUpNextMediaItemGroup_itemList__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [*(a1 + 32) _upNextEpisodes];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 podcast];
        v10 = [v9 feedURL];
        [v7 duration];
        v12 = [v8 sizeForFeedURL:v10 duration:objc_msgSend(v7 feedProvidedSize:{"byteSize"), v11}];

        v13 = *(a1 + 48);
        v14 = [NMSDownloadableItem alloc];
        v15 = [v7 uuid];
        v16 = [(NMSDownloadableItem *)v14 initWithMediaLibraryIdentifier:0 externalLibraryIdentifier:v15 size:v12 itemType:1 manuallyAdded:0];
        [v13 addObject:v16];
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }
}

- (id)_upNextEpisodes
{
  upNextEpisodes = self->_upNextEpisodes;
  if (!upNextEpisodes)
  {
    v4 = [NMSPodcastsFetchRequests legacy_fetchRequestForUpNextEpisodesDownloadedOnly:[(NMSMediaItemGroup *)self downloadedItemsOnly]];
    [v4 setFetchBatchSize:20];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__7;
    v19 = __Block_byref_object_dispose__7;
    v20 = 0;
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__NMSPodcastUpNextMediaItemGroup__upNextEpisodes__block_invoke;
    v11[3] = &unk_27993EB48;
    v11[4] = self;
    v7 = mainOrPrivateContext;
    v12 = v7;
    v8 = v4;
    v13 = v8;
    v14 = &v15;
    [v7 performBlockAndWait:v11];
    if (v16[5])
    {
      v9 = NMLogForCategory(5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [NMSPodcastUpNextMediaItemGroup _upNextEpisodes];
      }
    }

    _Block_object_dispose(&v15, 8);
    upNextEpisodes = self->_upNextEpisodes;
  }

  return upNextEpisodes;
}

void __49__NMSPodcastUpNextMediaItemGroup__upNextEpisodes__block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = a1[4];
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_upNextFeedURLs
{
  upNextFeedURLs = self->_upNextFeedURLs;
  if (!upNextFeedURLs)
  {
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__NMSPodcastUpNextMediaItemGroup__upNextFeedURLs__block_invoke;
    v7[3] = &unk_27993DD20;
    v7[4] = self;
    [mainOrPrivateContext performBlockAndWait:v7];

    upNextFeedURLs = self->_upNextFeedURLs;
  }

  return upNextFeedURLs;
}

void __49__NMSPodcastUpNextMediaItemGroup__upNextFeedURLs__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _upNextEpisodes];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *MEMORY[0x277D3DC90], *MEMORY[0x277D3DE68]];
  v3 = [v6 valueForKeyPath:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;
}

@end