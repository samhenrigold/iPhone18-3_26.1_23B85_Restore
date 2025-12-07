@interface BCSMegashardFetcher
- (BCSMegashardFetcher)initWithShardType:(int64_t)type configCache:(id)cache shardCache:(id)shardCache shardCacheSkipper:(id)skipper shardInstantiator:(id)instantiator megashardRemoteFetcher:(id)fetcher userDefaults:(id)defaults metricFactory:(id)self0;
- (void)addFetchTrigger:(id)trigger;
@end

@implementation BCSMegashardFetcher

- (BCSMegashardFetcher)initWithShardType:(int64_t)type configCache:(id)cache shardCache:(id)shardCache shardCacheSkipper:(id)skipper shardInstantiator:(id)instantiator megashardRemoteFetcher:(id)fetcher userDefaults:(id)defaults metricFactory:(id)self0
{
  cacheCopy = cache;
  shardCacheCopy = shardCache;
  skipperCopy = skipper;
  instantiatorCopy = instantiator;
  fetcherCopy = fetcher;
  defaultsCopy = defaults;
  factoryCopy = factory;
  v30.receiver = self;
  v30.super_class = BCSMegashardFetcher;
  v18 = [(BCSMegashardFetcher *)&v30 init];
  v19 = v18;
  if (v18)
  {
    v18->_shardType = type;
    if ((type - 2) > 4)
    {
      v20 = 1;
    }

    else
    {
      v20 = qword_2420E9108[type - 2];
    }

    v18->_type = v20;
    objc_storeStrong(&v18->_configCache, cache);
    objc_storeStrong(&v19->_shardCache, shardCache);
    objc_storeStrong(&v19->_shardCacheSkipper, skipper);
    objc_storeStrong(&v19->_megashardRemoteFetcher, fetcher);
    objc_storeStrong(&v19->_shardInstantiator, instantiator);
    objc_storeStrong(&v19->_userDefaults, defaults);
    objc_storeStrong(&v19->_metricFactory, factory);
    v21 = [MEMORY[0x277CBEB58] set];
    triggers = v19->_triggers;
    v19->_triggers = v21;
  }

  return v19;
}

- (void)addFetchTrigger:(id)trigger
{
  triggerCopy = trigger;
  objc_initWeak(&location, self);
  v5 = [triggerCopy description];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __39__BCSMegashardFetcher_addFetchTrigger___block_invoke;
  v12 = &unk_278D38840;
  objc_copyWeak(&v15, &location);
  v6 = v5;
  v13 = v6;
  selfCopy = self;
  [triggerCopy scheduleFetchBlock:&v9];
  if (self)
  {
    triggers = self->_triggers;
  }

  else
  {
    triggers = 0;
  }

  v8 = triggers;
  [(NSMutableSet *)v8 addObject:triggerCopy, v9, v10, v11, v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __39__BCSMegashardFetcher_addFetchTrigger___block_invoke(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    (*(v8 + 2))(v8, 0, 0);
  }

  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    if (WeakRetained)
    {
      v12 = *(WeakRetained + 2);
    }

    else
    {
      v12 = 0;
    }

    v13 = NSStringFromBCSShardType(v12);
    v14 = NSStringFromBCSFetchReason(a3);
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v56 = v14;
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%@ triggered a fetch of the megashard for type %{public}@ - %{public}@", buf, 0x20u);
  }

  v15 = *(a1 + 40);
  if (v15 && ((v16 = *(v15 + 16), v17 = *(v15 + 40), v18 = v17, v19 = v16 - 2, (v16 - 2) > 4) ? (v20 = 1) : (v20 = qword_2420E9108[v19]), (v21 = [v17 shouldSkipCacheForShardItemOfType:v20], v18, a3 != 6) || (v21 & 1) != 0 || !objc_msgSend(*(v15 + 32), "countOfShardsOfType:", v16) || objc_msgSend(*(v15 + 32), "countOfExpiredShardsOfType:", v16) > 0 || ((v42 = *(v15 + 24), v43 = v42, v19 > 4) ? (v44 = 1) : (v44 = qword_2420E9108[v19]), (objc_msgSend(v42, "configItemForType:", v44), v45 = objc_claimAutoreleasedReturnValue(), v43, !v45) || (v46 = objc_msgSend(v45, "isExpired"), v45, v46))))
  {
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __39__BCSMegashardFetcher_addFetchTrigger___block_invoke_13;
    v50[3] = &unk_278D38818;
    v51 = v8;
    v22 = v50;
    if (WeakRetained)
    {
      v23 = *(WeakRetained + 1);
      v24 = *(WeakRetained + 9);
      v25 = v7;
      v26 = [v24 megashardFetchMetricForType:v23];

      v27 = *(WeakRetained + 1) - 1;
      if (v27 > 4 || ([*(WeakRetained + 8) doubleForKey:off_278D38900[v27]], v28 == 0.0))
      {
        v29 = -1;
      }

      else
      {
        v40 = v28;
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v29 = ((v41 - v40) / 60.0 / 60.0);
      }

      v49 = v8;
      [v26 setHoursSinceLastSuccessfulFetch:v29];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke;
      v56 = &unk_278D38868;
      v57 = WeakRetained;
      v58 = v26;
      v60 = a3;
      v59 = v22;
      v30 = v26;
      v31 = MEMORY[0x245D07100](buf);
      v32 = *(WeakRetained + 2) - 2;
      v33 = v7;
      if (v32 > 4)
      {
        v34 = 1;
      }

      else
      {
        v34 = qword_2420E9108[v32];
      }

      v35 = MEMORY[0x277CCA8D8];
      v36 = *(WeakRetained + 6);
      v37 = [v35 mainBundle];
      v38 = [v37 bundleIdentifier];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke_2;
      v52[3] = &unk_278D388E0;
      v53 = v31;
      v54 = v34;
      v52[4] = WeakRetained;
      v39 = v31;
      [v36 fetchMegashardItemWithType:v34 clientBundleID:v38 systemTask:v25 completion:v52];

      v7 = v33;
      v8 = v49;
    }
  }

  else
  {
    v47 = ABSLogCommon();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = *(a1 + 32);
      *buf = 138412290;
      *&buf[4] = v48;
      _os_log_impl(&dword_242072000, v47, OS_LOG_TYPE_DEFAULT, "%@ Megashard fetch not required. Bailing.", buf, 0xCu);
    }

    (*(v8 + 2))(v8, 0, 0);
  }
}

void __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v4 + 8);
    v7 = a3;
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_21;
        }

        v9 = @"BCSMegashardPrefetchLastSuccessfulFetchBusinessCaller";
      }

      else if (v6 == 4)
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_21;
        }

        v9 = @"BCSMegashardPrefetchLastSuccessfulFetchBusinessEmail";
      }

      else
      {
        if (v6 != 5 || a2 == 0)
        {
          goto LABEL_21;
        }

        v9 = @"BCSMegashardPrefetchLastSuccessfulFetchWebPresentment";
      }

      goto LABEL_20;
    }

    if (v6 == 1)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_21;
      }

      v9 = @"BCSMegashardPrefetchLastSuccessfulFetchChatSuggest";
      goto LABEL_20;
    }

    if (v6 == 2 && (a2 & 1) != 0)
    {
      v9 = @"BCSMegashardPrefetchLastSuccessfulFetchBusinessLink";
LABEL_20:
      v10 = *(v4 + 64);
      v11 = MEMORY[0x277CBEAA8];
      v12 = v10;
      [v11 timeIntervalSinceReferenceDate];
      [v12 setDouble:v9 forKey:?];
    }
  }

  else
  {
    v13 = a3;
  }

LABEL_21:
  [*(a1 + 40) setReason:*(a1 + 56)];
  [*(a1 + 40) setErrorCode:{objc_msgSend(a3, "code")}];
  [*(a1 + 40) submitForPostProcessing];
  (*(*(a1 + 48) + 16))(*(a1 + 48), a3 == 0);
}

void __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = ABSLogCommon();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = a1[6];
      *buf = 136315650;
      v37 = "[BCSMegashardFetcher _fetchMegashardForReason:withBGSystemTask:completion:]_block_invoke";
      v38 = 2048;
      v39 = v15;
      v40 = 2112;
      v41 = v12;
      _os_log_error_impl(&dword_242072000, v14, OS_LOG_TYPE_ERROR, "%s failed to prefetch bloom filter + config item for type:%ld error: %@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromBCSType(a1[6]);
      *buf = 136315394;
      v37 = "[BCSMegashardFetcher _fetchMegashardForReason:withBGSystemTask:completion:]_block_invoke_2";
      v38 = 2112;
      v39 = v16;
      _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "%s successfully prefetched bloom filter + config item for type: %@", buf, 0x16u);
    }

    v17 = a1[4];
    if (v17)
    {
      v18 = *(v17 + 24);
    }

    else
    {
      v18 = 0;
    }

    [v18 updateConfigItem:v11 withType:a1[6]];
    if ([v9 count])
    {
      v19 = a1[6] - 2;
      if (v19 > 3)
      {
        v20 = 1;
      }

      else
      {
        v20 = qword_2420E9130[v19];
      }

      v21 = a1[4];
      if (v21)
      {
        v22 = *(v21 + 32);
      }

      else
      {
        v22 = 0;
      }

      [v22 deleteShardItemsOfType:v20];
      v23 = a1[4];
      if (v23)
      {
        v24 = *(v23 + 32);
      }

      else
      {
        v24 = 0;
      }

      [v24 beginBatch];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke_17;
      v35[3] = &unk_278D38890;
      v35[4] = a1[4];
      v35[5] = v20;
      [v9 enumerateObjectsUsingBlock:v35];
      v25 = a1[4];
      if (v25)
      {
        v26 = *(v25 + 32);
      }

      else
      {
        v26 = 0;
      }

      [v26 endBatch];
    }

    if ([v10 count])
    {
      v27 = a1[4];
      if (v27)
      {
        v28 = *(v27 + 32);
      }

      else
      {
        v28 = 0;
      }

      [v28 deleteShardItemsOfType:3];
      v29 = a1[4];
      if (v29)
      {
        v30 = *(v29 + 32);
      }

      else
      {
        v30 = 0;
      }

      [v30 beginBatch];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke_2_19;
      v34[3] = &unk_278D388B8;
      v34[4] = a1[4];
      [v10 enumerateObjectsUsingBlock:v34];
      v31 = a1[4];
      if (v31)
      {
        v32 = *(v31 + 32);
      }

      else
      {
        v32 = 0;
      }

      [v32 endBatch];
    }

    v14 = ABSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v33 = NSStringFromBCSType(a1[6]);
      *buf = 136315394;
      v37 = "[BCSMegashardFetcher _fetchMegashardForReason:withBGSystemTask:completion:]_block_invoke_3";
      v38 = 2112;
      v39 = v33;
      _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "%s successfully cached bloom filter + config item for type: %@", buf, 0x16u);
    }
  }

  (*(a1[5] + 16))();
}

void __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 shardItemFromURL:v9 type:*(a1 + 40)];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  [v8 updateShardItem:v6 withShardIdentifier:v6];

  objc_autoreleasePoolPop(v3);
}

void __76__BCSMegashardFetcher__fetchMegashardForReason_withBGSystemTask_completion___block_invoke_2_19(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 shardItemFromURL:v9 type:3];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
  }

  else
  {
    v8 = 0;
  }

  [v8 updateShardItem:v6 withShardIdentifier:v6];

  objc_autoreleasePoolPop(v3);
}

@end