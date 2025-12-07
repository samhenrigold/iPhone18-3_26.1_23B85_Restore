@interface NMSPodcastStationMediaItemGroup
- (id)identifiersForContainerType:(unint64_t)type;
- (id)itemList;
@end

@implementation NMSPodcastStationMediaItemGroup

- (id)identifiersForContainerType:(unint64_t)type
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(NMSMediaItemGroup *)self type]== type)
  {
    v6 = objc_alloc(MEMORY[0x277CD5DA0]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__NMSPodcastStationMediaItemGroup_identifiersForContainerType___block_invoke;
    v10[3] = &unk_27993DFA0;
    v10[4] = self;
    v7 = [v6 initWithBlock:v10];
    [array addObject:v7];
  }

  v8 = [array copy];

  return v8;
}

void __63__NMSPodcastStationMediaItemGroup_identifiersForContainerType___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 referenceObj];
  [v3 setContentItemID:v4];
}

- (id)itemList
{
  v29[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = objc_alloc_init(NMSPodcastSizeEstimation);
  referenceObj = [(NMSMediaItemGroup *)self referenceObj];
  v6 = [NMSPodcastsFetchRequests legacy_fetchRequestForStationWithUUID:referenceObj];

  v7 = *MEMORY[0x277D3DC90];
  v28[0] = *MEMORY[0x277D3DDD8];
  v28[1] = v7;
  v29[0] = v28[0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v9 = [v8 componentsJoinedByString:@"."];
  v29[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  [v6 setRelationshipKeyPathsForPrefetching:v10];

  [v6 setFetchBatchSize:20];
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke;
  v22 = &unk_27993EBB8;
  v23 = mainOrPrivateContext;
  v24 = v6;
  selfCopy = self;
  v26 = v4;
  v27 = array;
  v13 = array;
  v14 = v4;
  v15 = v6;
  v16 = mainOrPrivateContext;
  [v16 performBlockAndWait:&v19];
  v17 = [v13 copy];

  return v17;
}

void __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v28 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v28];
  v5 = v28;
  v6 = [v4 firstObject];

  if (v5)
  {
    v7 = NMLogForCategory(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke_cold_1(a1);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [v6 episodes];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ((![*(a1 + 48) downloadedItemsOnly] || objc_msgSend(v13, "isDownloaded")) && (objc_msgSend(v13, "isHidden") & 1) == 0 && objc_msgSend(v13, "isEntitled"))
        {
          v14 = *(a1 + 56);
          v15 = [v13 podcast];
          v16 = [v15 feedURL];
          [v13 duration];
          v18 = [v14 sizeForFeedURL:v16 duration:objc_msgSend(v13 feedProvidedSize:{"byteSize"), v17}];

          v19 = *(a1 + 64);
          v20 = [NMSDownloadableItem alloc];
          v21 = [v13 uuid];
          v22 = [(NMSDownloadableItem *)v20 initWithMediaLibraryIdentifier:0 externalLibraryIdentifier:v21 size:v18 itemType:1 manuallyAdded:0];
          [v19 addObject:v22];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }
}

void __43__NMSPodcastStationMediaItemGroup_itemList__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) referenceObj];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0(&dword_25B27B000, v2, v3, "Failed to fetch station itemList for station %@ - %@", v4, v5, v6, v7);
}

@end