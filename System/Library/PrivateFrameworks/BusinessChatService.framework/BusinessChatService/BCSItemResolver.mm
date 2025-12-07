@interface BCSItemResolver
- (id)cachedItemMatching:(id)matching;
- (id)initWithItemCache:(void *)cache cacheSkipper:(void *)skipper remoteFetcher:(void *)fetcher metricFactory:;
- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion;
@end

@implementation BCSItemResolver

- (id)initWithItemCache:(void *)cache cacheSkipper:(void *)skipper remoteFetcher:(void *)fetcher metricFactory:
{
  v10 = a2;
  cacheCopy = cache;
  skipperCopy = skipper;
  fetcherCopy = fetcher;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = BCSItemResolver;
    v14 = objc_msgSendSuper2(&v16, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, cache);
      objc_storeStrong(self + 3, skipper);
      objc_storeStrong(self + 4, fetcher);
    }
  }

  return self;
}

- (id)cachedItemMatching:(id)matching
{
  v18 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if (self)
  {
    itemCacheSkipper = self->_itemCacheSkipper;
  }

  else
  {
    itemCacheSkipper = 0;
  }

  v6 = itemCacheSkipper;
  v7 = -[BCSItemCacheSkipping shouldSkipCacheForItemOfType:](v6, "shouldSkipCacheForItemOfType:", [matchingCopy type]);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    if (self)
    {
      itemCache = self->_itemCache;
    }

    else
    {
      itemCache = 0;
    }

    v8 = [(BCSItemCaching *)itemCache itemMatching:matchingCopy];
  }

  if ([v8 isExpired] && objc_msgSend(v8, "type") != 1)
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = NSStringFromBCSType([matchingCopy type]);
      v14 = 136315394;
      v15 = "[BCSItemResolver cachedItemMatching:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s - Cached item found but expired - type: %@ --> deleting", &v14, 0x16u);
    }

    if (self)
    {
      v12 = self->_itemCache;
    }

    else
    {
      v12 = 0;
    }

    [(BCSItemCaching *)v12 deleteItemMatching:matchingCopy];

    v8 = 0;
  }

  return v8;
}

- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  completionCopy = completion;
  metricCopy = metric;
  itemIdentifier = [matchingCopy itemIdentifier];
  config = [matchingCopy config];
  buckets = [config buckets];
  if (self)
  {
    if (0x7FFFFFFFFFFFFFFFLL / buckets <= 25)
    {
      v14 = 25;
    }

    else
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL / buckets;
    }

    v15 = vcvtmd_s64_f64([itemIdentifier truncatedHash] / v14);
    v16 = v14 * v15;
    v17 = v14 * (v15 + 1);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__BCSItemResolver_itemMatching_metric_completion___block_invoke;
  v35[3] = &unk_278D38980;
  v35[4] = self;
  v38 = v16;
  v39 = v17;
  v18 = matchingCopy;
  v36 = v18;
  v19 = completionCopy;
  v37 = v19;
  v20 = MEMORY[0x245D07100](v35);
  itemIdentifier2 = [v18 itemIdentifier];
  v22 = [(BCSItemResolver *)self cachedItemMatching:itemIdentifier2];

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
  itemIdentifier3 = [v18 itemIdentifier];

  v27 = [measurementFactory itemCacheHitMeasurementForItemIdentifier:itemIdentifier3];
  [metricCopy setCacheHitMeasurement:v27];

  cacheHitMeasurement = [metricCopy cacheHitMeasurement];

  [cacheHitMeasurement setFlag:v22 != 0];
  v29 = ABSLogCommon();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v30)
    {
      itemIdentifier4 = [v18 itemIdentifier];
      v32 = NSStringFromBCSType([itemIdentifier4 type]);
      *buf = 136315394;
      v41 = "[BCSItemResolver itemMatching:metric:completion:]";
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&dword_242072000, v29, OS_LOG_TYPE_DEFAULT, "%s - Item found in cache for - type: %@", buf, 0x16u);
    }

    (*(v19 + 2))(v19, v22, 0);
  }

  else
  {
    if (v30)
    {
      itemIdentifier5 = [v18 itemIdentifier];
      v34 = NSStringFromBCSType([itemIdentifier5 type]);
      *buf = 136315394;
      v41 = "[BCSItemResolver itemMatching:metric:completion:]";
      v42 = 2112;
      v43 = v34;
      _os_log_impl(&dword_242072000, v29, OS_LOG_TYPE_DEFAULT, "%s - Item not found in cache for - type: %@", buf, 0x16u);
    }

    v20[2](v20);
  }
}

void __50__BCSItemResolver_itemMatching_metric_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v6 = v2;
  v7 = [v5 itemIdentifier];
  v8 = [v7 type];
  v9 = [*(a1 + 40) clientBundleId];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__BCSItemResolver_itemMatching_metric_completion___block_invoke_2;
  v11[3] = &unk_278D38958;
  v10 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v10;
  v13 = *(a1 + 48);
  [v6 fetchItemsWithBucketStartIndex:v3 endIndex:v4 type:v8 forClientBundleID:v9 completion:v11];
}

void __50__BCSItemResolver_itemMatching_metric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v9;
      *&buf[22] = 2112;
      v45 = v6;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Error remote fetching buckets for - type: %@ - %@", buf, 0x20u);
    }

LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) itemIdentifier];
  v13 = v5;
  v14 = v12;
  v15 = v14;
  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy_;
    v46 = __Block_byref_object_dispose_;
    v47 = 0;
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __47__BCSItemResolver__firstItemInBucket_matching___block_invoke;
    v41 = &unk_278D389A8;
    v42 = v14;
    v43 = buf;
    [v13 enumerateObjectsUsingBlock:&v38];
    v10 = *(*&buf[8] + 40);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = 0;
  }

  v7 = ABSLogCommon();
  v16 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v16)
    {
      v34 = [*(a1 + 40) itemIdentifier];
      v35 = NSStringFromBCSType([v34 type]);
      *buf = 136315394;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v35;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Failed to find matching item in bucket - type: %@", buf, 0x16u);
    }

    goto LABEL_4;
  }

  if (v16)
  {
    v17 = [*(a1 + 40) itemIdentifier];
    v18 = NSStringFromBCSType([v17 type]);
    *buf = 136315394;
    *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke_2";
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Successfully found matching item in bucket - type: %@", buf, 0x16u);
  }

  v19 = [*(a1 + 40) config];
  v20 = [v19 itemTTL];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = [*(a1 + 40) config];
  v22 = [v21 itemTTL];
  [v22 doubleValue];
  v24 = v23 > 0.0;

  if (v24)
  {
    v25 = MEMORY[0x277CBEAA8];
    v26 = [*(a1 + 40) config];
    v27 = [v26 itemTTL];
    [v27 doubleValue];
    v19 = [v25 dateWithTimeIntervalSinceNow:?];

    [v10 setExpirationDate:v19];
LABEL_14:
  }

  if ([v10 isExpired] && objc_msgSend(v10, "type") != 1)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [*(a1 + 40) itemIdentifier];
      v37 = NSStringFromBCSType([v36 type]);
      *buf = 136315394;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v37;
      _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - Not caching matching item because it is already expired - type: %@", buf, 0x16u);
    }
  }

  else
  {
    v28 = ABSLogCommon();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 40) itemIdentifier];
      v30 = NSStringFromBCSType([v29 type]);
      *buf = 136315394;
      *&buf[4] = "[BCSItemResolver itemMatching:metric:completion:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&dword_242072000, v28, OS_LOG_TYPE_DEFAULT, "%s - Caching matching item - type: %@", buf, 0x16u);
    }

    v31 = *(a1 + 32);
    if (v31)
    {
      v31 = v31[1];
    }

    v32 = *(a1 + 40);
    v33 = v31;
    v7 = [v32 itemIdentifier];
    [v33 updateItem:v10 withItemIdentifier:v7];
  }

LABEL_5:

  (*(*(a1 + 48) + 16))();
}

void __47__BCSItemResolver__firstItemInBucket_matching___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 matchesItemIdentifying:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end