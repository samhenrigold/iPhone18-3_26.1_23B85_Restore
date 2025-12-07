@interface BCSShardResolver
- (id)initWithShardCache:(void *)cache cacheSkipper:(void *)skipper megashardFetchTrigger:(void *)trigger metricFactory:;
- (void)shardItemMatching:(id)matching clientBundleID:(id)d cacheOnly:(BOOL)only metric:(id)metric completion:(id)completion;
- (void)shardItemsMatching:(id)matching metric:(id)metric completion:(id)completion;
- (void)triggerMegashardFetchForShardType:(uint64_t)type reason:(void *)reason completion:;
@end

@implementation BCSShardResolver

- (id)initWithShardCache:(void *)cache cacheSkipper:(void *)skipper megashardFetchTrigger:(void *)trigger metricFactory:
{
  v10 = a2;
  cacheCopy = cache;
  skipperCopy = skipper;
  triggerCopy = trigger;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = BCSShardResolver;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, cache);
      objc_storeStrong(self + 3, skipper);
      objc_storeStrong(self + 4, trigger);
      v15 = dispatch_queue_create("com.apple.businessservicesd.BCSShardResolver", 0);
      v16 = self[5];
      self[5] = v15;
    }
  }

  return self;
}

- (void)triggerMegashardFetchForShardType:(uint64_t)type reason:(void *)reason completion:
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (self)
  {
    v9 = *(self + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke;
    v10[3] = &unk_278D39E10;
    v10[4] = self;
    typeCopy = type;
    v13 = a2;
    v11 = reasonCopy;
    dispatch_async(v9, v10);
  }
}

void __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke_2;
  v4[3] = &unk_278D39DE8;
  v3 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 40);
  [v2 triggerFetchForReason:v3 completion:v4];
}

void __72__BCSShardResolver_triggerMegashardFetchForShardType_reason_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ABSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromBCSShardType(*(a1 + 40));
    v9 = 136315650;
    v10 = "[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:]_block_invoke_2";
    v11 = 2112;
    v12 = v7;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Result of fetching megashards of type %@: %d", &v9, 0x1Cu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v5);
  }
}

- (void)shardItemsMatching:(id)matching metric:(id)metric completion:(id)completion
{
  v61 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  metricCopy = metric;
  completionCopy = completion;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__5;
  v54 = __Block_byref_object_dispose__5;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  itemIdentifiers = [matchingCopy itemIdentifiers];
  v55 = [v8 initWithCapacity:{objc_msgSend(itemIdentifiers, "count")}];

  if (self)
  {
    shardCacheSkipper = self->_shardCacheSkipper;
  }

  else
  {
    shardCacheSkipper = 0;
  }

  v11 = shardCacheSkipper;
  v12 = [matchingCopy shardType] - 2;
  if (v12 > 4)
  {
    v13 = 1;
  }

  else
  {
    v13 = qword_2420E9270[v12];
  }

  completionCopy = [(BCSShardCacheSkipping *)v11 shouldSkipCacheForShardItemOfType:v13, completionCopy];

  if (completionCopy)
  {
    v15 = 1;
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    shardIdentifiers = [matchingCopy shardIdentifiers];
    v17 = [shardIdentifiers countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (v17)
    {
      v18 = *v47;
      do
      {
        v19 = 0;
        do
        {
          if (*v47 != v18)
          {
            objc_enumerationMutation(shardIdentifiers);
          }

          if (self)
          {
            shardCache = self->_shardCache;
          }

          else
          {
            shardCache = 0;
          }

          v21 = *(*(&v46 + 1) + 8 * v19);
          v22 = shardCache;
          v23 = [(BCSShardCaching *)v22 shardItemMatching:v21];

          if (!v23 && [v51[5] count])
          {
            [v51[5] removeAllObjects];
            v15 = 0;
            goto LABEL_27;
          }

          if ([v23 isExpired])
          {
            v24 = ABSLogCommon();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = NSStringFromBCSShardType([v21 type]);
              *buf = 136315394;
              v57 = "[BCSShardResolver shardItemsMatching:metric:completion:]";
              v58 = 2112;
              v59 = v25;
              _os_log_impl(&dword_242072000, v24, OS_LOG_TYPE_DEFAULT, "%s cached shard item found but expired - type: %@ --> will use expired shard but will attempt to download megashard from server in background", buf, 0x16u);
            }

            -[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:](self, [v21 type], 4, 0);
          }

          [v51[5] setObject:v23 forKeyedSubscript:v21];

          ++v19;
        }

        while (v17 != v19);
        v26 = [shardIdentifiers countByEnumeratingWithState:&v46 objects:v60 count:16];
        v17 = v26;
      }

      while (v26);
    }

    v15 = 1;
LABEL_27:
  }

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v28 = metricFactory;
  measurementFactory = [(BCSMetricFactoryProtocol *)v28 measurementFactory];
  shardIdentifiers2 = [matchingCopy shardIdentifiers];
  firstObject = [shardIdentifiers2 firstObject];
  v32 = [measurementFactory shardCacheHitMeasurementForShardIdentifier:firstObject];
  [metricCopy setCacheHitMeasurement:v32];

  cacheHitMeasurement = [metricCopy cacheHitMeasurement];
  [cacheHitMeasurement setFlag:v15];

  if (v15 && [v51[5] count])
  {
    v38[2](v38, v51[5], 0);
  }

  else
  {
    v34 = ABSLogCommon();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromBCSShardType([matchingCopy shardType]);
      *buf = 136315394;
      v57 = "[BCSShardResolver shardItemsMatching:metric:completion:]";
      v58 = 2112;
      v59 = v36;
      _os_log_error_impl(&dword_242072000, v34, OS_LOG_TYPE_ERROR, "%s shard item missing!!! - type: %@ --> blocking to download megashard from server", buf, 0x16u);
    }

    shardType = [matchingCopy shardType];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __57__BCSShardResolver_shardItemsMatching_metric_completion___block_invoke;
    v41[3] = &unk_278D39E38;
    v42 = matchingCopy;
    selfCopy = self;
    v45 = &v50;
    v44 = v38;
    [(BCSShardResolver *)self triggerMegashardFetchForShardType:shardType reason:5 completion:v41];
  }

  _Block_object_dispose(&v50, 8);
}

void __57__BCSShardResolver_shardItemsMatching_metric_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [*(a1 + 32) shardIdentifiers];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = *(v13 + 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = [v14 shardItemMatching:*(*(&v20 + 1) + 8 * v11)];
          [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKeyedSubscript:v12];
          if (!v15)
          {
            v16 = ABSLogCommon();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = NSStringFromBCSShardType([*(a1 + 32) shardType]);
              *buf = 136315394;
              v25 = "[BCSShardResolver shardItemsMatching:metric:completion:]_block_invoke";
              v26 = 2112;
              v27 = v17;
              _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s - Successfully fetched megashard of type %@ but did not find shard in cache", buf, 0x16u);
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v18 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        v9 = v18;
      }

      while (v18);
    }

    v6 = v19;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)shardItemMatching:(id)matching clientBundleID:(id)d cacheOnly:(BOOL)only metric:(id)metric completion:(id)completion
{
  onlyCopy = only;
  v42 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  completionCopy = completion;
  if (self)
  {
    shardCacheSkipper = self->_shardCacheSkipper;
  }

  else
  {
    shardCacheSkipper = 0;
  }

  v14 = shardCacheSkipper;
  metricCopy = metric;
  v16 = [matchingCopy type] - 2;
  if (v16 > 4)
  {
    v17 = 1;
  }

  else
  {
    v17 = qword_2420E9270[v16];
  }

  v18 = [(BCSShardCacheSkipping *)v14 shouldSkipCacheForShardItemOfType:v17];

  if (v18)
  {
    v19 = 0;
  }

  else
  {
    if (self)
    {
      shardCache = self->_shardCache;
    }

    else
    {
      shardCache = 0;
    }

    v19 = [(BCSShardCaching *)shardCache shardItemMatching:matchingCopy];
  }

  if ([v19 isExpired])
  {
    v21 = ABSLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = NSStringFromBCSShardType([matchingCopy type]);
      *buf = 136315394;
      v39 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]";
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s cached shard item found but expired - type: %@ --> will use expired shard but will attempt to download megashard from server in background", buf, 0x16u);
    }

    -[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:](self, [matchingCopy type], 4, 0);
  }

  if (self)
  {
    metricFactory = self->_metricFactory;
  }

  else
  {
    metricFactory = 0;
  }

  v24 = metricFactory;
  measurementFactory = [(BCSMetricFactoryProtocol *)v24 measurementFactory];
  v26 = [measurementFactory shardCacheHitMeasurementForShardIdentifier:matchingCopy];

  [metricCopy setCacheHitMeasurement:v26];
  cacheHitMeasurement = [metricCopy cacheHitMeasurement];

  [cacheHitMeasurement setFlag:v19 != 0];
  if (v19)
  {
    completionCopy[2](completionCopy, v19, 0);
  }

  else
  {
    v28 = ABSLogCommon();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (onlyCopy)
    {
      if (v29)
      {
        v32 = NSStringFromBCSShardType([matchingCopy type]);
        *buf = 136315394;
        v39 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]";
        v40 = 2112;
        v41 = v32;
        _os_log_error_impl(&dword_242072000, v28, OS_LOG_TYPE_ERROR, "%s shard item missing!!! - type: %@ --> triggering BACKGROUND download of megashard from server", buf, 0x16u);
      }

      -[BCSShardResolver triggerMegashardFetchForShardType:reason:completion:](self, [matchingCopy type], 5, &__block_literal_global_9);
      v30 = [BCSError errorWithDomain:@"com.apple.businessservices" code:47 errorDescription:@"Query is cache-only, skipping shard fetch"];
      (completionCopy)[2](completionCopy, 0, v30);
    }

    else
    {
      if (v29)
      {
        v33 = NSStringFromBCSShardType([matchingCopy type]);
        *buf = 136315394;
        v39 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]";
        v40 = 2112;
        v41 = v33;
        _os_log_error_impl(&dword_242072000, v28, OS_LOG_TYPE_ERROR, "%s shard item missing!!! - type: %@ --> blocking to download megashard from server", buf, 0x16u);
      }

      type = [matchingCopy type];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __81__BCSShardResolver_shardItemMatching_clientBundleID_cacheOnly_metric_completion___block_invoke_5;
      v34[3] = &unk_278D39E60;
      v35 = matchingCopy;
      selfCopy = self;
      v37 = completionCopy;
      [(BCSShardResolver *)self triggerMegashardFetchForShardType:type reason:5 completion:v34];
    }
  }
}

void __81__BCSShardResolver_shardItemMatching_clientBundleID_cacheOnly_metric_completion___block_invoke_5(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ABSLogCommon();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!a2)
  {
    if (v7)
    {
      v12 = NSStringFromBCSShardType([*(a1 + 32) type]);
      v13 = 136315650;
      v14 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Failed to fetch Megashard of type %@ - Error: %@", &v13, 0x20u);
      goto LABEL_11;
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  if (v7)
  {
    v8 = NSStringFromBCSShardType([*(a1 + 32) type]);
    v13 = 136315394;
    v14 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_242072000, v6, OS_LOG_TYPE_DEFAULT, "%s - Successfully fetched megashard of type %@", &v13, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 shardItemMatching:*(a1 + 32)];
  if (!v11)
  {
    v6 = ABSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromBCSShardType([*(a1 + 32) type]);
      v13 = 136315394;
      v14 = "[BCSShardResolver shardItemMatching:clientBundleID:cacheOnly:metric:completion:]_block_invoke";
      v15 = 2112;
      v16 = v12;
      _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "%s - Successfully fetched megashard of type %@ but did not find shard in cache", &v13, 0x16u);
LABEL_11:

      goto LABEL_12;
    }

    goto LABEL_12;
  }

LABEL_13:
  (*(*(a1 + 48) + 16))();
}

@end