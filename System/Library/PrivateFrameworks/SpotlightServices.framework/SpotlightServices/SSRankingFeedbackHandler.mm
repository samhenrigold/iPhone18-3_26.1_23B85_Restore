@interface SSRankingFeedbackHandler
+ (id)copyRenderEngagementCounts;
+ (id)sharedInstance;
- (SSRankingFeedbackHandler)init;
- (id)fetchResults;
- (id)getSyntheticTestRankingItem;
- (id)getSyntheticTestRankingItemsForStressTest;
- (void)_indexItemWithIdentifier:(id)identifier bundleID:(id)d startDate:(id)date pc:(id)pc;
- (void)_updateSpotlightRecentEngagementWithIdentifier:(id)identifier bundleID:(id)d protectionClass:(id)class queryString:(id)string renderPosition:(id)position;
- (void)didEngageResultWithRankingItem:(id)item startDate:(id)date protectionClass:(id)class query:(id)query;
- (void)fetchBundleRenderAndEngagementInfo:(id)info;
- (void)resetResultWithRankingItems:(id)items;
- (void)resultsWithRankingItemsDidBecomeVisible:(id)visible date:(id)date protectionClassMapping:(id)mapping;
- (void)stressTestCounts;
- (void)testCountsAfterCoupleYears;
- (void)testCountsAfterYear;
- (void)testCountsForRegularEngagement;
- (void)testCountsMovingCoupleOfYearsInPast;
- (void)testCountsMovingDaysInPast;
- (void)testCountsMovingYearInPast;
- (void)testCountsUptoHalfYear;
- (void)testCountsUptoMonth;
- (void)testCountsUptoQuarter;
- (void)testCountsUptoWeek;
- (void)testCountsUptoYear;
- (void)testForDummyEntry;
- (void)testForDurationWithIntervals:(int *)intervals maxIndex:(int)index duration:(int64_t)duration counts:(id)counts;
- (void)writeRenderAndEngagementInfo;
@end

@implementation SSRankingFeedbackHandler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SSRankingFeedbackHandler sharedInstance];
  }

  v3 = sharedInstance_handler;

  return v3;
}

uint64_t __42__SSRankingFeedbackHandler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SSRankingFeedbackHandler);
  v1 = sharedInstance_handler;
  sharedInstance_handler = v0;

  sClientRankAndBlend = _os_feature_enabled_impl();
  v2 = objc_opt_new();
  v3 = sRenderEngagementCountValues;
  sRenderEngagementCountValues = v2;

  if (sClientRankAndBlend == 1)
  {
    v4 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
    v5 = sCSIndex;
    sCSIndex = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69D3DC0] sharedInstance];
    v5 = sIndexer;
    sIndexer = v6;
  }

  return pthread_rwlock_init(&sRWRenderEngagementValueLock, 0);
}

- (SSRankingFeedbackHandler)init
{
  v10.receiver = self;
  v10.super_class = SSRankingFeedbackHandler;
  v2 = [(SSRankingFeedbackHandler *)&v10 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(33, 2uLL);
    v4 = dispatch_queue_create_with_target_V2("queue to fetch bundle render/engagement counts", 0, v3);
    [(SSRankingFeedbackHandler *)v2 setFetchQueue:v4];

    v5 = dispatch_get_global_queue(9, 2uLL);
    v6 = dispatch_queue_create_with_target_V2("queue to update render/engagement counts", 0, v5);
    [(SSRankingFeedbackHandler *)v2 setCountQueue:v6];

    v7 = objc_opt_new();
    [(SSRankingFeedbackHandler *)v2 setMapProtectionClassToBundleIdToItem:v7];

    v8 = objc_opt_new();
    [(SSRankingFeedbackHandler *)v2 setSectionCSItems:v8];
  }

  return v2;
}

+ (id)copyRenderEngagementCounts
{
  pthread_rwlock_rdlock(&sRWRenderEngagementValueLock);
  v2 = [sRenderEngagementCountValues copy];
  pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
  return v2;
}

- (void)_indexItemWithIdentifier:(id)identifier bundleID:(id)d startDate:(id)date pc:(id)pc
{
  v22[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  dateCopy = date;
  pcCopy = pc;
  v12 = MEMORY[0x1E6964E80];
  identifierCopy = identifier;
  v14 = objc_alloc_init(v12);
  [v14 setUniqueIdentifier:identifierCopy];

  [v14 setIsUpdate:1];
  v15 = objc_opt_new();
  v16 = v15;
  if (dateCopy)
  {
    [v15 setAttribute:dateCopy forKey:@"_kMDItemEngagementDate"];
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    [v16 setAttribute:date forKey:@"_kMDItemEngagementDate"];
  }

  [v14 setAttributeSet:v16];
  [v14 setBundleID:dCopy];
  if (sClientRankAndBlend == 1)
  {
    v18 = sCSIndex;
    v22[0] = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v20 = &__block_literal_global_31;
  }

  else
  {
    v18 = sIndexer;
    v21 = v14;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v20 = &__block_literal_global_33;
  }

  [v18 indexSearchableItems:v19 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:pcCopy forBundleID:dCopy options:0 completionHandler:v20];
}

- (void)_updateSpotlightRecentEngagementWithIdentifier:(id)identifier bundleID:(id)d protectionClass:(id)class queryString:(id)string renderPosition:(id)position
{
  v29[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  classCopy = class;
  if (dCopy && identifier && string && position)
  {
    v14 = MEMORY[0x1E6964E90];
    positionCopy = position;
    stringCopy = string;
    identifierCopy = identifier;
    v18 = [v14 alloc];
    v28[0] = @"_kMDItemLastSpotlightEngagementQuery";
    v28[1] = @"_kMDItemLastSpotlightEngagementRenderPosition";
    v29[0] = stringCopy;
    v29[1] = positionCopy;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v20 = [v18 initWithAttributes:v19];

    v21 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:identifierCopy domainIdentifier:0 attributeSet:v20];
    [v21 setIsUpdate:1];
    [v21 setBundleID:dCopy];
    countQueue = [(SSRankingFeedbackHandler *)self countQueue];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __127__SSRankingFeedbackHandler__updateSpotlightRecentEngagementWithIdentifier_bundleID_protectionClass_queryString_renderPosition___block_invoke;
    v24[3] = &unk_1E85957A0;
    v25 = v21;
    v26 = classCopy;
    v27 = dCopy;
    v23 = v21;
    dispatch_async(countQueue, v24);
  }
}

void __127__SSRankingFeedbackHandler__updateSpotlightRecentEngagementWithIdentifier_bundleID_protectionClass_queryString_renderPosition___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (sClientRankAndBlend == 1)
  {
    v2 = sCSIndex;
    v8[0] = a1[4];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v4 = a1[5];
    v5 = a1[6];
    v6 = &__block_literal_global_42;
  }

  else
  {
    v2 = sIndexer;
    v7 = a1[4];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v7 count:1];
    v4 = a1[5];
    v5 = a1[6];
    v6 = &__block_literal_global_44;
  }

  [v2 indexSearchableItems:v3 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v4 forBundleID:v5 options:0 completionHandler:v6];
}

- (void)didEngageResultWithRankingItem:(id)item startDate:(id)date protectionClass:(id)class query:(id)query
{
  itemCopy = item;
  dateCopy = date;
  classCopy = class;
  queryCopy = query;
  countQueue = [(SSRankingFeedbackHandler *)self countQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__SSRankingFeedbackHandler_didEngageResultWithRankingItem_startDate_protectionClass_query___block_invoke;
  block[3] = &unk_1E85957F0;
  v20 = itemCopy;
  selfCopy = self;
  v22 = dateCopy;
  v23 = classCopy;
  v24 = queryCopy;
  v15 = queryCopy;
  v16 = classCopy;
  v17 = dateCopy;
  v18 = itemCopy;
  dispatch_sync(countQueue, block);
}

void __91__SSRankingFeedbackHandler_didEngageResultWithRankingItem_startDate_protectionClass_query___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) rankingFeedbackBundleID];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  [v2 _indexItemWithIdentifier:v3 bundleID:v10 startDate:*(a1 + 48) pc:*(a1 + 56)];

  [*(a1 + 40) _indexItemWithIdentifier:v10 bundleID:@"com.apple.searchd" startDate:*(a1 + 48) pc:*MEMORY[0x1E696A388]];
  if (sRenderEngagementCountValues)
  {
    pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
    v4 = sRenderEngagementCountValues;
    v5 = [*(a1 + 32) sectionBundleIdentifier];
    v6 = [v4 objectForKey:v5];

    if (v6)
    {
      v7 = [v6 copy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    [v7 incrementRankingValuesForType:0];
    [sRenderEngagementCountValues setValue:v7 forKey:v10];
    pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) identifier];
  [v8 _updateSpotlightRecentEngagementWithIdentifier:v9 bundleID:v10 protectionClass:*(a1 + 56) queryString:*(a1 + 64) renderPosition:&unk_1F55B3A50];
}

- (void)resultsWithRankingItemsDidBecomeVisible:(id)visible date:(id)date protectionClassMapping:(id)mapping
{
  visibleCopy = visible;
  dateCopy = date;
  mappingCopy = mapping;
  countQueue = [(SSRankingFeedbackHandler *)self countQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke;
  v15[3] = &unk_1E85957C8;
  v16 = visibleCopy;
  v17 = mappingCopy;
  selfCopy = self;
  v19 = dateCopy;
  v12 = dateCopy;
  v13 = mappingCopy;
  v14 = visibleCopy;
  dispatch_sync(countQueue, v15);
}

void __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v78 = objc_opt_new();
  v79 = a1;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v116;
    v85 = *v116;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v116 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v115 + 1) + 8 * i);
        v7 = [v6 identifier];
        v8 = [v6 rankingFeedbackBundleID];
        v9 = *(v79 + 40);
        v10 = [v6 identifier];
        v11 = [v9 objectForKey:v10];

        if (v7)
        {
          v12 = v11 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = v79;
          if (([v78 containsObject:v8] & 1) == 0)
          {
            v14 = [*(v79 + 48) sectionCSItems];
            v15 = objc_msgSend_count(v14);

            if (v15 <= 0x95)
            {
              v16 = objc_alloc_init(MEMORY[0x1E6964E80]);
              [v16 setUniqueIdentifier:v8];
              [v16 setIsUpdate:1];
              v17 = objc_opt_new();
              v18 = v17;
              v19 = *(v79 + 56);
              if (v19)
              {
                [v17 setAttribute:v19 forKey:@"_kMDItemRenderDate"];
              }

              else
              {
                v20 = [MEMORY[0x1E695DF00] date];
                [v18 setAttribute:v20 forKey:@"_kMDItemRenderDate"];
              }

              [v16 setAttributeSet:v18];
              [v16 setBundleID:@"com.apple.searchd"];
              v13 = v79;
              v21 = [*(v79 + 48) sectionCSItems];
              [v21 addObject:v16];

              v4 = v85;
            }
          }

          [v78 addObject:v8];
          v22 = objc_alloc_init(MEMORY[0x1E6964E80]);
          v23 = [v6 identifier];
          [v22 setUniqueIdentifier:v23];

          [v22 setIsUpdate:1];
          v24 = objc_opt_new();
          v25 = v24;
          v26 = *(v13 + 56);
          if (v26)
          {
            [v24 setAttribute:v26 forKey:@"_kMDItemRenderDate"];
          }

          else
          {
            v27 = [MEMORY[0x1E695DF00] date];
            [v25 setAttribute:v27 forKey:@"_kMDItemRenderDate"];
          }

          [v22 setAttributeSet:v25];
          [v22 setBundleID:v8];
          if ([v11 length])
          {
            v28 = [*(v79 + 48) mapProtectionClassToBundleIdToItem];
            v29 = [v28 objectForKey:v11];

            if (!v29)
            {
              v29 = objc_opt_new();
            }

            v30 = [v29 objectForKey:v8];
            if (!v30)
            {
              v30 = objc_opt_new();
            }

            if (objc_msgSend_count(v30) <= 0x95)
            {
              [v30 addObject:v22];
            }

            [v29 setObject:v30 forKey:v8];
            v31 = [*(v79 + 48) mapProtectionClassToBundleIdToItem];
            [v31 setObject:v29 forKey:v11];

            v4 = v85;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v115 objects:v126 count:16];
    }

    while (v3);
  }

  if (_os_feature_enabled_impl())
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v32 = v79;
    v33 = [*(v79 + 48) mapProtectionClassToBundleIdToItem];
    v34 = [v33 allKeys];

    v74 = v34;
    v76 = [v34 countByEnumeratingWithState:&v111 objects:v125 count:16];
    if (v76)
    {
      v75 = *v112;
      v82 = *MEMORY[0x1E6964A48];
      do
      {
        v35 = 0;
        do
        {
          if (*v112 != v75)
          {
            objc_enumerationMutation(v74);
          }

          v77 = v35;
          v36 = *(*(&v111 + 1) + 8 * v35);
          v37 = [*(v32 + 48) mapProtectionClassToBundleIdToItem];
          v83 = v36;
          v38 = [v37 objectForKey:v36];

          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v81 = [v38 allKeys];
          v86 = [v81 countByEnumeratingWithState:&v107 objects:v124 count:16];
          if (v86)
          {
            v84 = *v108;
            v80 = v38;
            do
            {
              for (j = 0; j != v86; ++j)
              {
                if (*v108 != v84)
                {
                  objc_enumerationMutation(v81);
                }

                v40 = *(*(&v107 + 1) + 8 * j);
                if (([v40 isEqual:@"com.apple.parsec.stocks"] & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"com.apple.parsec.sports") & 1) != 0 || (objc_msgSend(v40, "isEqual:", @"com.apple.parsec.maps") & 1) != 0 || objc_msgSend(v40, "isEqual:", @"com.apple.parsec.itunes.iosSoftware"))
                {
                  v41 = [v38 objectForKey:v40];
                  v42 = CS_simplifyItemArray();

                  v43 = objc_opt_new();
                  v103 = 0u;
                  v104 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  v44 = v42;
                  v45 = [v44 countByEnumeratingWithState:&v103 objects:v123 count:16];
                  if (v45)
                  {
                    v46 = v45;
                    v47 = *v104;
                    do
                    {
                      for (k = 0; k != v46; ++k)
                      {
                        if (*v104 != v47)
                        {
                          objc_enumerationMutation(v44);
                        }

                        v49 = [*(*(&v103 + 1) + 8 * k) uniqueIdentifier];
                        [v43 addObject:v49];
                      }

                      v46 = [v44 countByEnumeratingWithState:&v103 objects:v123 count:16];
                    }

                    while (v46);
                  }

                  if (objc_msgSend_count(v43))
                  {
                    obja = v40;
                    v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:objc_msgSend_count(v44)];
                    v99 = 0u;
                    v100 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    v51 = v44;
                    v52 = [v51 countByEnumeratingWithState:&v99 objects:v122 count:16];
                    if (v52)
                    {
                      v53 = v52;
                      v54 = *v100;
                      do
                      {
                        for (m = 0; m != v53; ++m)
                        {
                          if (*v100 != v54)
                          {
                            objc_enumerationMutation(v51);
                          }

                          v56 = [*(*(&v99 + 1) + 8 * m) copy];
                          [v50 addObject:v56];
                        }

                        v53 = [v51 countByEnumeratingWithState:&v99 objects:v122 count:16];
                      }

                      while (v53);
                    }

                    if (sClientRankAndBlend == 1)
                    {
                      aBlock[0] = MEMORY[0x1E69E9820];
                      aBlock[1] = 3221225472;
                      aBlock[2] = __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_2;
                      aBlock[3] = &unk_1E8595C80;
                      v97[0] = v51;
                      v97[1] = v83;
                      v57 = obja;
                      v98 = v57;
                      v58 = _Block_copy(aBlock);
                      v59 = [MEMORY[0x1E6964E78] defaultSearchableIndex];
                      v121 = v82;
                      v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
                      v61 = [v43 array];
                      v38 = v80;
                      [v59 slowFetchAttributes:v60 protectionClass:v83 bundleID:v57 identifiers:v61 completionHandler:v58];

                      v63 = &v98;
                      v62 = v97;
                    }

                    else
                    {
                      v58 = [MEMORY[0x1E69D3DC0] sharedInstance];
                      v120 = v82;
                      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
                      v60 = [v43 array];
                      v93[0] = MEMORY[0x1E69E9820];
                      v93[1] = 3221225472;
                      v93[2] = __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_4;
                      v93[3] = &unk_1E8595CA8;
                      v94[0] = v50;
                      v94[1] = v83;
                      v95 = obja;
                      [v58 fetchAttributesForProtectionClass:v83 attributes:v59 bundleID:v95 identifiers:v60 completion:v93];
                      v63 = &v95;
                      v62 = v94;
                    }

                    v40 = obja;
                  }
                }
              }

              v86 = [v81 countByEnumeratingWithState:&v107 objects:v124 count:16];
            }

            while (v86);
          }

          v35 = v77 + 1;
          v32 = v79;
        }

        while (v77 + 1 != v76);
        v76 = [v74 countByEnumeratingWithState:&v111 objects:v125 count:16];
      }

      while (v76);
    }
  }

  if (sRenderEngagementCountValues)
  {
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v64 = v78;
    v65 = [v64 countByEnumeratingWithState:&v89 objects:v119 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v90;
      do
      {
        for (n = 0; n != v66; ++n)
        {
          if (*v90 != v67)
          {
            objc_enumerationMutation(v64);
          }

          v69 = *(*(&v89 + 1) + 8 * n);
          pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
          v70 = [sRenderEngagementCountValues objectForKey:v69];
          if (v70)
          {
            v71 = v70;
            v72 = [v70 copy];
          }

          else
          {
            v72 = objc_opt_new();
          }

          [v72 incrementRankingValuesForType:{1, context}];
          [sRenderEngagementCountValues setValue:v72 forKey:v69];
          pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
        }

        v66 = [v64 countByEnumeratingWithState:&v89 objects:v119 count:16];
      }

      while (v66);
    }
  }

  objc_autoreleasePoolPop(context);
}

void __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!objc_msgSend_count(v3))
  {
    goto LABEL_23;
  }

  [MEMORY[0x1E695DF70] array];
  v22 = v21 = v3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v25;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      if (!v11)
      {
        goto LABEL_15;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_15;
      }

      v12 = SSFetchAttributeValueIsValid(v11);

      if (!v12)
      {
        v7 = 0;
LABEL_15:
        ++v8;
        continue;
      }

      v7 = v12;
      v13 = [*(a1 + 32) objectAtIndexedSubscript:v8];
      if (objc_msgSend_count(v7) == 1)
      {
        [v7 objectAtIndexedSubscript:0];
        v23 = v7;
        v14 = v4;
        v16 = v15 = a1;
        v17 = [MEMORY[0x1E695DFB0] null];
        v18 = [v16 isEqual:v17];

        a1 = v15;
        v4 = v14;
        v7 = v23;
        if (v18)
        {
          v19 = [v13 copy];
          v20 = [v19 attributeSet];
          [v20 setAttribute:0 forKey:@"_kMDItemRenderDate"];

          [v22 addObject:v19];
        }
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
LABEL_20:

  if (objc_msgSend_count(v22))
  {
    [sCSIndex indexSearchableItems:v22 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*(a1 + 40) forBundleID:*(a1 + 48) options:0 completionHandler:&__block_literal_global_54];
  }

  v3 = v21;
LABEL_23:
}

void __96__SSRankingFeedbackHandler_resultsWithRankingItemsDidBecomeVisible_date_protectionClassMapping___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [MEMORY[0x1E695DF70] array];
  v18 = v17 = a1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v3 objectForKeyedSubscript:v10];

        if (objc_msgSend_count(v11) == 1)
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [MEMORY[0x1E695DFB0] null];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            v15 = [v9 copy];
            v16 = [v15 attributeSet];
            [v16 setAttribute:0 forKey:@"_kMDItemRenderDate"];

            [v18 addObject:v15];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if (objc_msgSend_count(v18))
  {
    [sIndexer indexSearchableItems:v18 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*(v17 + 40) forBundleID:*(v17 + 48) options:0 completionHandler:&__block_literal_global_57];
  }
}

- (void)fetchBundleRenderAndEngagementInfo:(id)info
{
  infoCopy = info;
  fetchQueue = [(SSRankingFeedbackHandler *)self fetchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke;
  block[3] = &unk_1E8595778;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_sync(fetchQueue, block);
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke(uint64_t a1)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_kMDItemBundleID=%@", @"com.apple.searchd"];
  v3 = objc_opt_new();
  [v3 setInternal:1];
  [v3 setLowPriority:0];
  v43[0] = @"com.apple.searchd";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  [v3 setBundleIDs:v4];

  [v3 setMaxCount:400];
  [v3 setLive:1];
  v42[0] = *MEMORY[0x1E6964C48];
  v42[1] = @"_kMDItemRenderValues";
  v42[2] = @"_kMDItemEngagementValues";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:3];
  [v3 setFetchAttributes:v5];

  if (*(a1 + 32))
  {
    [v3 setProtectionClasses:?];
  }

  else
  {
    v41 = *MEMORY[0x1E696A388];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v3 setProtectionClasses:v6];
  }

  v7 = [v3 fetchAttributes];
  v8 = objc_msgSend_count(v7);

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  if (sClientRankAndBlend == 1)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_2;
    aBlock[3] = &unk_1E8595CD0;
    aBlock[4] = &v33;
    v10 = _Block_copy(aBlock);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_3;
    v29[3] = &unk_1E8595CF8;
    v31 = &v37;
    v11 = v9;
    v30 = v11;
    v12 = _Block_copy(v29);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_4;
    v25[3] = &unk_1E8595D20;
    v27 = &v33;
    v28 = &v37;
    v13 = v12;
    v26 = v13;
    v14 = _Block_copy(v25);
    v15 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v2 context:v3];
    v16 = v15;
    if (v15)
    {
      [v15 setFoundItemsHandler:v10];
      [v16 setGatherEndedHandler:v13];
      [v16 setCompletionHandler:v14];
      [v16 start];
    }

    else
    {
      dispatch_group_leave(v11);
    }

    _Block_object_dispose(&v33, 8);
    v19 = 0;
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v17 = sIndexer;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_5;
    v21[3] = &unk_1E8595D68;
    v23 = &v33;
    v24 = v8;
    v18 = v9;
    v22 = v18;
    v19 = [v17 startQuery:v2 withContext:v3 handler:v21];
    if (!v19)
    {
      dispatch_group_leave(v18);
    }

    _Block_object_dispose(&v33, 8);
    v16 = 0;
  }

  v20 = dispatch_time(0, 250000000);
  dispatch_group_wait(v9, v20);
  if (sClientRankAndBlend == 1)
  {
    if (v16 && (v38[3] & 1) == 0)
    {
      [v16 cancel];
    }
  }

  else if (v19)
  {
    [sIndexer cancelQuery:v19];
  }

  _Block_object_dispose(&v37, 8);
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a2;
  pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v2;
  v23 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v23)
  {
    v22 = *v25;
    v21 = *MEMORY[0x1E6963D40];
    do
    {
      v3 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * v3);
        v5 = objc_opt_new();
        v6 = [v4 attributeSet];
        v7 = [v6 attributeDictionary];
        v8 = [v7 objectForKey:v21];
        if (v8)
        {
          v9 = [v7 objectForKey:@"_kMDItemRenderValues"];
          v10 = objc_msgSend_count(v9);
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v29 = 0;
            v28 = 0;
            do
            {
              if (v12 >= v11)
              {
                *(&v28 + v12) = 0;
              }

              else
              {
                v13 = [v9 objectAtIndexedSubscript:v12];
                *(&v28 + v12) = [v13 integerValue];
              }

              ++v12;
            }

            while (v12 != 6);
            [v5 setRankingValues:&v28 forType:1];
          }

          v14 = [v7 objectForKey:@"_kMDItemEngagementValues"];

          v15 = objc_msgSend_count(v14);
          if (v15)
          {
            v16 = v15;
            v17 = 0;
            v29 = 0;
            v28 = 0;
            do
            {
              if (v17 >= v16)
              {
                *(&v28 + v17) = 0;
              }

              else
              {
                v18 = [v14 objectAtIndexedSubscript:v17];
                *(&v28 + v17) = [v18 integerValue];
              }

              ++v17;
            }

            while (v17 != 6);
            [v5 setRankingValues:&v28 forType:0];
          }

          [sRenderEngagementCountValues setObject:v5 forKey:v8];
        }

        ++v3;
      }

      while (v3 != v23);
      v23 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v23);
  }

  pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  if (*(*(a1[5] + 8) + 24) == 1 && !v3 && (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    (*(a1[4] + 16))();
    v3 = 0;
  }
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  if (a2 == 2)
  {
    v10 = *(*(a1 + 40) + 8);
    if ((*(v10 + 24) & 1) == 0)
    {
      *(v10 + 24) = 1;
      v13 = v9;
      dispatch_group_leave(*(a1 + 32));
      v9 = v13;
    }
  }

  else if (a2 != 1)
  {
    if (a2)
    {
      goto LABEL_10;
    }

    v12 = v9;
    pthread_rwlock_wrlock(&sRWRenderEngagementValueLock);
    [a5 enumerateQueryResults:*(a1 + 48) stringCache:0 usingBlock:&__block_literal_global_73];
    pthread_rwlock_unlock(&sRWRenderEngagementValueLock);
    goto LABEL_9;
  }

  v11 = *(*(a1 + 40) + 8);
  if (*(v11 + 24))
  {
    goto LABEL_10;
  }

  *(v11 + 24) = 1;
  v12 = v9;
  dispatch_group_leave(*(a1 + 32));
LABEL_9:
  v9 = v12;
LABEL_10:
}

void __63__SSRankingFeedbackHandler_fetchBundleRenderAndEngagementInfo___block_invoke_6(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = *a2;
  v5 = *MEMORY[0x1E695E738];
  if (*a2 == *MEMORY[0x1E695E738])
  {
    v4 = 0;
  }

  v6 = v4;
  if (v6)
  {
    v7 = *(a2 + 8);
    if (v7 == v5)
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = objc_msgSend_count(v8);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v21 = 0;
      v20 = 0;
      do
      {
        if (v11 >= v10)
        {
          v13 = 0;
        }

        else
        {
          v12 = [v8 objectAtIndexedSubscript:v11];
          v13 = [v12 integerValue];
        }

        *(&v20 + v11++) = v13;
      }

      while (v11 != 6);
      [v3 setRankingValues:&v20 forType:1];
    }

    v14 = *(a2 + 16);
    if (v14 == v5)
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = objc_msgSend_count(v15);
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v21 = 0;
      v20 = 0;
      do
      {
        if (v18 >= v17)
        {
          *(&v20 + v18) = 0;
        }

        else
        {
          v19 = [v15 objectAtIndexedSubscript:v18];
          *(&v20 + v18) = [v19 integerValue];
        }

        ++v18;
      }

      while (v18 != 6);
      [v3 setRankingValues:&v20 forType:0];
    }

    [sRenderEngagementCountValues setObject:v3 forKey:v6];
  }
}

- (void)writeRenderAndEngagementInfo
{
  countQueue = [(SSRankingFeedbackHandler *)self countQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SSRankingFeedbackHandler_writeRenderAndEngagementInfo__block_invoke;
  block[3] = &unk_1E8595778;
  block[4] = self;
  dispatch_sync(countQueue, block);
}

void __56__SSRankingFeedbackHandler_writeRenderAndEngagementInfo__block_invoke(uint64_t a1)
{
  v1 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v2 = [*(a1 + 32) mapProtectionClassToBundleIdToItem];
  v3 = [v2 allKeys];

  v30 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v30)
  {
    v28 = *v37;
    v29 = v1;
    do
    {
      v4 = 0;
      do
      {
        if (*v37 != v28)
        {
          objc_enumerationMutation(v3);
        }

        v31 = v4;
        v5 = *(*(&v36 + 1) + 8 * v4);
        v6 = [*(v1 + 32) mapProtectionClassToBundleIdToItem];
        v7 = [v6 objectForKey:v5];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v8 = [v7 allKeys];
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v32 + 1) + 8 * i);
              v14 = [v7 objectForKey:v13];
              v15 = CS_simplifyItemArray();

              if (v15 && objc_msgSend_count(v15))
              {
                v16 = &__block_literal_global_78;
                if (sClientRankAndBlend)
                {
                  v16 = &__block_literal_global_76;
                }

                v17 = &sCSIndex;
                if (!sClientRankAndBlend)
                {
                  v17 = &sIndexer;
                }

                [*v17 indexSearchableItems:v15 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v5 forBundleID:v13 options:0 completionHandler:v16];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        v4 = v31 + 1;
        v1 = v29;
      }

      while (v31 + 1 != v30);
      v30 = [v3 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v30);
  }

  v18 = [*(v1 + 32) sectionCSItems];
  v19 = objc_msgSend_count(v18);

  if (v19)
  {
    if (sClientRankAndBlend)
    {
      v20 = &__block_literal_global_80;
    }

    else
    {
      v20 = &__block_literal_global_82;
    }

    v21 = &sCSIndex;
    if (!sClientRankAndBlend)
    {
      v21 = &sIndexer;
    }

    v22 = *v21;
    v23 = [*(v1 + 32) sectionCSItems];
    v24 = [v23 copy];
    v25 = CS_simplifyItemArray();
    [v22 indexSearchableItems:v25 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:*MEMORY[0x1E696A388] forBundleID:@"com.apple.searchd" options:0 completionHandler:v20];
  }

  v26 = [*(v1 + 32) mapProtectionClassToBundleIdToItem];
  [v26 removeAllObjects];

  v27 = [*(v1 + 32) sectionCSItems];
  [v27 removeAllObjects];
}

- (id)fetchResults
{
  v27[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = objc_opt_new();
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_kMDItemBundleID=%@ && kMDItemDisplayName=%@", @"com.apple.application", @"Reminders"];
  v3 = objc_opt_new();
  [v3 setInternal:1];
  [v3 setLowPriority:0];
  v27[0] = @"com.apple.application";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  [v3 setBundleIDs:v4];

  [v3 setMaxCount:400];
  v26[0] = *MEMORY[0x1E6964C48];
  v26[1] = @"_kMDItemRenderData";
  v26[2] = @"_kMDItemEngagementData";
  v26[3] = @"_kMDItemRenderValues";
  v26[4] = @"_kMDItemEngagementValues";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  [v3 setFetchAttributes:v5];

  [v3 setClientBundleID:@"com.apple.application"];
  v25 = *MEMORY[0x1E696A388];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v3 setProtectionClasses:v6];

  fetchAttributes = [v3 fetchAttributes];
  v8 = objc_msgSend_count(fetchAttributes);

  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  mEMORY[0x1E69D3DC0] = [MEMORY[0x1E69D3DC0] sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke;
  v15[3] = &unk_1E8595D68;
  v17 = &v19;
  v18 = v8;
  v11 = v9;
  v16 = v11;
  v12 = [mEMORY[0x1E69D3DC0] startQuery:v2 withContext:v3 handler:v15];

  if (!v12)
  {
    dispatch_group_leave(v11);
  }

  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a6;
  if (a2 == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  else if (!a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_2;
    v11[3] = &unk_1E8596060;
    v10 = *(a1 + 48);
    v11[4] = *(a1 + 40);
    [a5 enumerateQueryResults:v10 stringCache:0 usingBlock:v11];
  }
}

void __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *MEMORY[0x1E695E738];
  if (*a2 == *MEMORY[0x1E695E738])
  {
    v4 = 0;
  }

  v6 = v4;
  if (v6)
  {
    v24 = v6;
    v7 = objc_opt_new();
    [v7 setIdentifier:v24];
    v8 = *(a2 + 8);
    if (v8 == v5)
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v9;
    if (v9)
    {
      v27 = 0;
      v28 = 0;
      __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_3(v9, v9, &v28, &v27);
      v11 = v28;
      v12 = v28;
      v13 = v27;
      v14 = v27;
      objc_storeStrong(&sRenderCountSentinelDate, v11);
      objc_storeStrong(&sRenderCountData, v13);
    }

    else
    {
      v14 = 0;
      v12 = 0;
    }

    v15 = *(a2 + 16);
    if (v15 == v5)
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v25 = v14;
      v26 = v12;
      __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_3(v17, v16, &v26, &v25);
      v18 = v26;
      v19 = v26;

      v20 = v25;
      v21 = v25;

      objc_storeStrong(&sEngagementCountSentinelDate, v18);
      objc_storeStrong(&sEngagementCountData, v20);
      v14 = v21;
      v12 = v19;
    }

    [v7 setSectionBundleIdentifier:@"com.apple.application"];
    [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
    if (*(a2 + 24) == v5)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(a2 + 24);
    }

    objc_storeStrong(&sRenderCounts, v22);
    if (*(a2 + 32) == v5)
    {
      v23 = 0;
    }

    else
    {
      v23 = *(a2 + 32);
    }

    objc_storeStrong(&sEngagementCounts, v23);

    v6 = v24;
  }
}

void __47__SSRankingFeedbackHandler_Tests__fetchResults__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v9 = 0;
  if ([v6 length])
  {
    [v6 getBytes:&v9 length:1];
    if (v9 == 9)
    {
      v7 = [v6 subdataWithRange:{1, 9}];
      v8 = [v7 bytes];
      *a3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*v8];
      *a4 = [v6 subdataWithRange:{9, objc_msgSend(v6, "length") - 9}];
    }
  }
}

- (void)resetResultWithRankingItems:(id)items
{
  v37 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = itemsCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  v6 = *MEMORY[0x1E695E738];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        identifier = [*(*(&v31 + 1) + 8 * v9) identifier];
        v11 = objc_alloc_init(MEMORY[0x1E6964E80]);
        [v11 setUniqueIdentifier:identifier];
        [v11 setIsUpdate:1];
        [v11 setBundleID:@"com.apple.application"];
        v12 = objc_opt_new();
        [v12 setObject:v6 forKey:@"_kMDItemRenderData"];
        [v12 setObject:v6 forKey:@"_kMDItemEngagementData"];
        v13 = [objc_alloc(MEMORY[0x1E6964E90]) initWithAttributes:v12];
        [v11 setAttributeSet:v13];

        [v4 addObject:v11];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  mEMORY[0x1E69D3DC0] = [MEMORY[0x1E69D3DC0] sharedInstance];
  v16 = v4;
  v17 = [v4 copy];
  v18 = *MEMORY[0x1E696A388];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63__SSRankingFeedbackHandler_Tests__resetResultWithRankingItems___block_invoke;
  v29[3] = &unk_1E8595FC0;
  v19 = v14;
  v30 = v19;
  [mEMORY[0x1E69D3DC0] indexSearchableItems:v17 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v18 forBundleID:@"com.apple.application" options:0 completionHandler:v29];

  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  v20 = objc_alloc_init(MEMORY[0x1E6964E80]);
  [v20 setUniqueIdentifier:@"com.apple.application"];
  [v20 setIsUpdate:1];
  v21 = objc_opt_new();
  [v21 setAttribute:v6 forKey:@"_kMDItemRenderData"];
  [v21 setAttribute:v6 forKey:@"_kMDItemEngagementData"];
  [v20 setAttributeSet:v21];
  [v20 setBundleID:@"com.apple.searchd"];
  dispatch_group_enter(v19);
  mEMORY[0x1E69D3DC0]2 = [MEMORY[0x1E69D3DC0] sharedInstance];
  v35 = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  bundleID = [v20 bundleID];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __63__SSRankingFeedbackHandler_Tests__resetResultWithRankingItems___block_invoke_2;
  v27[3] = &unk_1E8595FC0;
  v28 = v19;
  v25 = v19;
  [mEMORY[0x1E69D3DC0]2 indexSearchableItems:v23 deleteSearchableItemsWithIdentifiers:0 clientState:0 protectionClass:v18 forBundleID:bundleID options:0 completionHandler:v27];

  dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)getSyntheticTestRankingItem
{
  v2 = objc_opt_new();
  [v2 setSectionBundleIdentifier:@"com.apple.application"];
  [v2 setIdentifier:@"com.apple.reminders"];

  return v2;
}

- (id)getSyntheticTestRankingItemsForStressTest
{
  v2 = objc_opt_new();
  for (i = 0; i != 100000; ++i)
  {
    v4 = objc_opt_new();
    [v4 setSectionBundleIdentifier:@"com.apple.application"];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.reminders.%ld", i];
    [v4 setIdentifier:v5];

    [v2 addObject:v4];
  }

  v6 = [v2 objectAtIndexedSubscript:0];
  [v6 setIdentifier:@"com.apple.reminders"];

  v7 = [v2 copy];

  return v7;
}

- (void)testForDurationWithIntervals:(int *)intervals maxIndex:(int)index duration:(int64_t)duration counts:(id)counts
{
  v105 = *MEMORY[0x1E69E9840];
  countsCopy = counts;
  if (testForDurationWithIntervals_maxIndex_duration_counts__onceToken != -1)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v9 = objc_opt_new();
  v10 = MEMORY[0x1E696A388];
  intervalsCopy = intervals;
  if (sStressMode == 1)
  {
    getSyntheticTestRankingItemsForStressTest = [(SSRankingFeedbackHandler *)self getSyntheticTestRankingItemsForStressTest];
    getSyntheticTestRankingItem = objc_opt_new();
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = getSyntheticTestRankingItemsForStressTest;
    v13 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v95;
      v16 = *MEMORY[0x1E696A388];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v95 != v15)
          {
            objc_enumerationMutation(obj);
          }

          identifier = [*(*(&v94 + 1) + 8 * i) identifier];
          [getSyntheticTestRankingItem setObject:v16 forKey:identifier];
        }

        v14 = [obj countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v14);
    }

    [(SSRankingFeedbackHandler *)self resetResultWithRankingItems:obj];
    v78 = [getSyntheticTestRankingItem copy];
    intervals = intervalsCopy;
    v10 = MEMORY[0x1E696A388];
  }

  else
  {
    getSyntheticTestRankingItem = [(SSRankingFeedbackHandler *)self getSyntheticTestRankingItem];
    v103 = getSyntheticTestRankingItem;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
    [(SSRankingFeedbackHandler *)self resetResultWithRankingItems:?];
    identifier2 = [getSyntheticTestRankingItem identifier];
    v101 = identifier2;
    v102 = *v10;
    v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  }

  date = [MEMORY[0x1E695DF00] date];
  if ((index & 0x80000000) == 0)
  {
    indexCopy = index;
    do
    {
      [date timeIntervalSinceReferenceDate];
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v22 + intervals[indexCopy] * -86400.0];
      [v9 addObject:v23];

      --indexCopy;
    }

    while (indexCopy != -1);
  }

  v74 = date;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v24 = v9;
  v25 = [v24 countByEnumeratingWithState:&v90 objects:v100 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v91;
    v28 = *v10;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v91 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v90 + 1) + 8 * j);
        [(SSRankingFeedbackHandler *)self resultsWithRankingItemsDidBecomeVisible:obj date:v30 protectionClassMapping:v78];
        v31 = [obj objectAtIndexedSubscript:0];
        [(SSRankingFeedbackHandler *)self didEngageResultWithRankingItem:v31 startDate:v30 protectionClass:v28 query:@"a"];

        [(SSRankingFeedbackHandler *)self writeRenderAndEngagementInfo];
      }

      v26 = [v24 countByEnumeratingWithState:&v90 objects:v100 count:16];
    }

    while (v26);
  }

  fetchResults = [(SSRankingFeedbackHandler *)self fetchResults];
  [v74 timeIntervalSinceReferenceDate];
  v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v33 + (*intervalsCopy + 364) * -86400.0];
  v35 = objc_opt_new();
  v76 = objc_opt_new();
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v36 = v24;
  v37 = [v36 countByEnumeratingWithState:&v86 objects:v99 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v87;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v87 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v86 + 1) + 8 * k);
        if ([v42 compare:v34] == -1)
        {
          if (objc_msgSend_count(v35))
          {
            [v35 objectAtIndexedSubscript:0];
          }

          else
          {
            [MEMORY[0x1E695DF00] date];
          }
          v44 = ;

          v39 = v44;
        }

        else
        {
          if (!v39 || [v39 compare:v42] != -1)
          {
            v43 = v42;

            v39 = v43;
          }

          [v35 addObject:v42];
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v86 objects:v99 count:16];
    }

    while (v38);
  }

  else
  {
    v39 = 0;
  }

  v72 = v36;

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v45 = v35;
  v46 = [v45 countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = 0;
    v49 = *v83;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v83 != v49)
        {
          objc_enumerationMutation(v45);
        }

        v51 = *(*(&v82 + 1) + 8 * m);
        v81 = 0;
        if (v48)
        {
          v52 = [v45 objectAtIndexedSubscript:v48 - 1];
        }

        else
        {
          v52 = v39;
        }

        v53 = v52;
        [v51 timeIntervalSinceReferenceDate];
        v55 = v54;
        [v53 timeIntervalSinceReferenceDate];
        v57 = ((86400 * ((v55 - v56) / 0x15180)) / 86400.0);
        if ((duration & 0x8000000000000000) == 0 || !v57)
        {
          v80 = 0;
          if (v57 >= 256)
          {
            v80 = (v57 + 1);
            LOBYTE(v57) = -1;
          }

          LOBYTE(v81) = v57;
          HIBYTE(v81) = 1;
          [v76 appendBytes:&v81 length:2];
          if (v80)
          {
            [v76 appendBytes:&v80 length:2];
          }

          ++v48;
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v82 objects:v98 count:16];
    }

    while (v47);
  }

  v58 = [v76 copy];
  v59 = [v58 length];
  if (!sRenderCountSentinelDate)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v60 = v59;
  [v39 timeIntervalSinceReferenceDate];
  v62 = v61;
  [sRenderCountSentinelDate timeIntervalSinceReferenceDate];
  if (v62 - v63 >= 86400.0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if (!sEngagementCountSentinelDate)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  [sEngagementCountSentinelDate timeIntervalSinceReferenceDate];
  v65 = v64;
  [v39 timeIntervalSinceReferenceDate];
  if (v65 - v66 >= 86400.0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if (([sEngagementCountData isEqualToData:v58] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if (([sRenderCountData isEqualToData:v58] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if ([sRenderCountData length] != v60)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  if ([sEngagementCountData length] != v60)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v67 = objc_msgSend_count(sRenderCounts);
  if (v67 != objc_msgSend_count(countsCopy))
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v68 = objc_msgSend_count(sEngagementCounts);
  if (v68 != objc_msgSend_count(countsCopy))
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v69 = [MEMORY[0x1E695DFD8] setWithArray:countsCopy];
  v70 = [MEMORY[0x1E695DFD8] setWithArray:sRenderCounts];
  if (([v69 isEqualToSet:v70] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }

  v71 = [MEMORY[0x1E695DFD8] setWithArray:sEngagementCounts];

  if (([v69 isEqualToSet:v71] & 1) == 0)
  {
    [SSRankingFeedbackHandler(Tests) testForDurationWithIntervals:maxIndex:duration:counts:];
  }
}

uint64_t __89__SSRankingFeedbackHandler_Tests__testForDurationWithIntervals_maxIndex_duration_counts___block_invoke()
{
  userDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];

  return MEMORY[0x1EEE66BB8]();
}

- (void)testCountsUptoWeek
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1DA0D54C0;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:&v2 maxIndex:3 duration:7 counts:&unk_1F55B7298];
}

- (void)testCountsUptoMonth
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1DA0D54D0;
  v2[1] = unk_1DA0D54E0;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:7 duration:30 counts:&unk_1F55B72B0];
}

- (void)testCountsUptoQuarter
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1DA0D54F0;
  v2[1] = unk_1DA0D5500;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:7 duration:90 counts:&unk_1F55B72C8];
}

- (void)testCountsUptoHalfYear
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1DA0D5510;
  v2[1] = unk_1DA0D5520;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:7 duration:180 counts:&unk_1F55B72E0];
}

- (void)testCountsUptoYear
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1DA0D5530;
  v3 = 0x16C0000016BLL;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:&v2 maxIndex:5 duration:365 counts:&unk_1F55B72F8];
}

- (void)testCountsAfterYear
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1DA0D5548;
  v2[1] = unk_1DA0D5558;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:7 duration:381 counts:&unk_1F55B7310];
}

- (void)testCountsAfterCoupleYears
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x30C00000014;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:1 duration:781 counts:&unk_1F55B7328];
}

- (void)testCountsMovingDaysInPast
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0xFFFFFFFE00000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:1 duration:-3 counts:&unk_1F55B7340];
}

- (void)testCountsMovingYearInPast
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0xFFFFFE8900000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:1 duration:-376 counts:&unk_1F55B7358];
}

- (void)testCountsMovingCoupleOfYearsInPast
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0xFFFFFCF400000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:1 duration:-781 counts:&unk_1F55B7370];
}

- (void)testForDummyEntry
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x14000000000;
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v2 maxIndex:1 duration:321 counts:&unk_1F55B7388];
}

- (void)testCountsForRegularEngagement
{
  v10[364] = *MEMORY[0x1E69E9840];
  bzero(&v9, 0xB68uLL);
  v3 = 0;
  v4 = xmmword_1DA0D5490;
  v5 = xmmword_1DA0D54A0;
  v6 = v10;
  v7 = vdupq_n_s64(0x2DAuLL);
  v8 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v7, v5)), *v4.i8).u8[0])
    {
      *(v6 - 2) = v3;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2DAuLL), *&v5)), *&v4).i8[2])
    {
      *(v6 - 1) = v3 + 1;
    }

    if (vuzp1_s16(*&v4, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2DAuLL), *&v4))).i32[1])
    {
      *v6 = v3 + 2;
      v6[1] = v3 + 3;
    }

    v3 += 4;
    v4 = vaddq_s64(v4, v8);
    v5 = vaddq_s64(v5, v8);
    v6 += 4;
  }

  while (v3 != 732);
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:&v9 maxIndex:729 duration:731 counts:&unk_1F55B73A0, *v4.i64, *v5.i64];
}

- (void)stressTestCounts
{
  v2 = 0;
  v6 = *MEMORY[0x1E69E9840];
  sStressMode = 1;
  v3 = xmmword_1DA0D54B0;
  memset(v5, 0, sizeof(v5));
  v4.i64[0] = 0x400000004;
  v4.i64[1] = 0x400000004;
  do
  {
    v5[v2] = v3;
    v3 = vaddq_s32(v3, v4);
    ++v2;
  }

  while (v2 != 25);
  [(SSRankingFeedbackHandler *)self testForDurationWithIntervals:v5 maxIndex:99 duration:101 counts:&unk_1F55B73B8, *v3.i64];
}

@end