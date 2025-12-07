@interface BCSBusinessEmailResolver
- (id)cachedItemMatching:(id)matching;
- (id)initWithMetadataEnvironment:(void *)environment logoEnvironment:(void *)logoEnvironment itemCache:(void *)cache cacheSkipper:(void *)skipper metricFactory:;
- (void)_logoMatching:(id)matching metric:(id)metric completion:(id)completion;
- (void)_metadataMatching:(id)matching metric:(id)metric completion:(id)completion;
- (void)_metadataMatching:(id)matching metric:(id)metric perItemBlock:(id)block completion:(id)completion;
- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion;
- (void)itemsMatching:(id)matching metric:(id)metric perItemBlock:(id)block completion:(id)completion;
@end

@implementation BCSBusinessEmailResolver

- (id)initWithMetadataEnvironment:(void *)environment logoEnvironment:(void *)logoEnvironment itemCache:(void *)cache cacheSkipper:(void *)skipper metricFactory:
{
  v11 = a2;
  environmentCopy = environment;
  logoEnvironmentCopy = logoEnvironment;
  cacheCopy = cache;
  skipperCopy = skipper;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = BCSBusinessEmailResolver;
    v16 = objc_msgSendSuper2(&v22, sel_init);
    self = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 1, logoEnvironment);
      objc_storeStrong(self + 2, cache);
      objc_storeStrong(self + 3, skipper);
      v17 = [[BCSRemoteFetchPIR alloc] initWithEnvironment:v11 metricFactory:skipperCopy];
      v18 = self[4];
      self[4] = v17;

      v19 = [[BCSRemoteFetchPIR alloc] initWithEnvironment:environmentCopy metricFactory:skipperCopy];
      v20 = self[5];
      self[5] = v19;
    }
  }

  return self;
}

- (id)cachedItemMatching:(id)matching
{
  v17 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if ([matchingCopy type] == 4)
  {
    itemCacheSkipper = [(BCSBusinessEmailResolver *)self itemCacheSkipper];
    v6 = [itemCacheSkipper shouldSkipCacheForItemOfType:{objc_msgSend(matchingCopy, "type")}];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      itemCache = [(BCSBusinessEmailResolver *)self itemCache];
      v7 = [itemCache itemMatching:matchingCopy];
    }

    if (![v7 isExpired] || objc_msgSend(v7, "type") == 4)
    {
      goto LABEL_11;
    }

    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBCSType([matchingCopy type]);
      v13 = 136315394;
      v14 = "[BCSBusinessEmailResolver cachedItemMatching:]";
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s - Cached item found but expired - type: %@ --> deleting", &v13, 0x16u);
    }

    itemCache2 = [(BCSBusinessEmailResolver *)self itemCache];
    [itemCache2 deleteItemMatching:matchingCopy];
  }

  v7 = 0;
LABEL_11:

  return v7;
}

- (void)itemMatching:(id)matching metric:(id)metric completion:(id)completion
{
  v44[1] = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  metricCopy = metric;
  completionCopy = completion;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v40 = "[BCSBusinessEmailResolver itemMatching:metric:completion:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  itemIdentifier = [matchingCopy itemIdentifier];
  type = [itemIdentifier type];

  if (type != 4)
  {
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"Invalid type";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v15 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v25];

    completionCopy[2](completionCopy, 0, v15);
    goto LABEL_9;
  }

  itemIdentifier2 = [matchingCopy itemIdentifier];
  v15 = [(BCSBusinessEmailResolver *)self cachedItemMatching:itemIdentifier2];

  metricFactory = [(BCSBusinessEmailResolver *)self metricFactory];
  measurementFactory = [metricFactory measurementFactory];
  itemIdentifier3 = [matchingCopy itemIdentifier];
  v19 = [measurementFactory itemCacheHitMeasurementForItemIdentifier:itemIdentifier3];
  [metricCopy setCacheHitMeasurement:v19];

  cacheHitMeasurement = [metricCopy cacheHitMeasurement];
  [cacheHitMeasurement setFlag:v15 != 0];

  v21 = ABSLogCommon();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v22)
    {
      itemIdentifier4 = [matchingCopy itemIdentifier];
      v27 = NSStringFromBCSType([itemIdentifier4 type]);
      *buf = 136315394;
      v40 = "[BCSBusinessEmailResolver itemMatching:metric:completion:]";
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s - Item not found in cache for - type: %@", buf, 0x16u);
    }

    if ([matchingCopy cacheOnly])
    {
      v28 = ABSLogCommon();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        itemIdentifier5 = [matchingCopy itemIdentifier];
        v30 = NSStringFromBCSType([itemIdentifier5 type]);
        *buf = 136315394;
        v40 = "[BCSBusinessEmailResolver itemMatching:metric:completion:]";
        v41 = 2112;
        v42 = v30;
        _os_log_impl(&dword_242072000, v28, OS_LOG_TYPE_DEFAULT, "%s - Query is cache-only, skipping fetch for item of type: %@", buf, 0x16u);
      }

      v31 = [BCSError errorWithDomain:@"com.apple.businessservices" code:47 errorDescription:@"Item not found in cache"];
    }

    else
    {
      itemIdentifier6 = [matchingCopy itemIdentifier];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(BCSBusinessEmailResolver *)self _metadataMatching:matchingCopy metric:metricCopy completion:completionCopy];
        goto LABEL_21;
      }

      itemIdentifier7 = [matchingCopy itemIdentifier];
      objc_opt_class();
      v35 = objc_opt_isKindOfClass();

      if (v35)
      {
        [(BCSBusinessEmailResolver *)self _logoMatching:matchingCopy metric:metricCopy completion:completionCopy];
        goto LABEL_21;
      }

      v37 = *MEMORY[0x277CCA450];
      v38 = @"Invalid identifier type";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v31 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v36];
    }

    completionCopy[2](completionCopy, 0, v31);

LABEL_21:
    v15 = 0;
    goto LABEL_9;
  }

  if (v22)
  {
    itemIdentifier8 = [matchingCopy itemIdentifier];
    v24 = NSStringFromBCSType([itemIdentifier8 type]);
    *buf = 136315394;
    v40 = "[BCSBusinessEmailResolver itemMatching:metric:completion:]";
    v41 = 2112;
    v42 = v24;
    _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "%s - Item found in cache for - type: %@", buf, 0x16u);
  }

  (completionCopy)[2](completionCopy, v15, 0);
LABEL_9:
}

- (void)itemsMatching:(id)matching metric:(id)metric perItemBlock:(id)block completion:(id)completion
{
  v74[1] = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  metricCopy = metric;
  blockCopy = block;
  completionCopy = completion;
  v12 = ABSLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v63 = "[BCSBusinessEmailResolver itemsMatching:metric:perItemBlock:completion:]";
    _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  itemIdentifier = [matchingCopy itemIdentifier];
  type = [itemIdentifier type];

  if (type != 4)
  {
    v73 = *MEMORY[0x277CCA450];
    v74[0] = @"Invalid type";
    v19 = MEMORY[0x277CBEAC0];
    v20 = v74;
    v21 = &v73;
LABEL_7:
    v17 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v18 = 42;
    goto LABEL_8;
  }

  itemIdentifier2 = [matchingCopy itemIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v71 = *MEMORY[0x277CCA450];
    v72 = @"Unsupported type (batch requests for logos are unimplemented)";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v18 = 44;
LABEL_8:
    v22 = [BCSError errorWithDomain:@"com.apple.businessservices" code:v18 userInfo:v17];

    completionCopy[2](completionCopy, v22);
    goto LABEL_9;
  }

  itemIdentifier3 = [matchingCopy itemIdentifier];
  objc_opt_class();
  v24 = objc_opt_isKindOfClass();

  if ((v24 & 1) == 0)
  {
    v69 = *MEMORY[0x277CCA450];
    v70 = @"Invalid identifier type";
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v70;
    v21 = &v69;
    goto LABEL_7;
  }

  v52 = completionCopy;
  v25 = objc_alloc(MEMORY[0x277CBEB58]);
  itemIdentifiers = [matchingCopy itemIdentifiers];
  v55 = [v25 initWithArray:itemIdentifiers];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v53 = matchingCopy;
  obj = [matchingCopy itemIdentifiers];
  v27 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v58 + 1) + 8 * i);
        v32 = [(BCSBusinessEmailResolver *)self cachedItemMatching:v31, v52];
        metricFactory = [(BCSBusinessEmailResolver *)self metricFactory];
        measurementFactory = [metricFactory measurementFactory];
        v35 = [measurementFactory itemCacheHitMeasurementForItemIdentifier:v31];
        [metricCopy setCacheHitMeasurement:v35];

        cacheHitMeasurement = [metricCopy cacheHitMeasurement];
        [cacheHitMeasurement setFlag:v32 != 0];

        if (v32)
        {
          v37 = ABSLogCommon();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = NSStringFromBCSType([v31 type]);
            *buf = 136315394;
            v63 = "[BCSBusinessEmailResolver itemsMatching:metric:perItemBlock:completion:]";
            v64 = 2112;
            v65 = v38;
            _os_log_impl(&dword_242072000, v37, OS_LOG_TYPE_DEFAULT, "%s - Item found in cache for - type: %@", buf, 0x16u);
          }

          [v55 removeObject:v31];
          blockCopy[2](blockCopy, v31, v32, 0);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v28);
  }

  v22 = v55;
  v39 = [v55 count];
  v40 = ABSLogCommon();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
  if (v39)
  {
    completionCopy = v52;
    matchingCopy = v53;
    if (v41)
    {
      v42 = [v55 count];
      itemIdentifier4 = [v53 itemIdentifier];
      v44 = NSStringFromBCSType([itemIdentifier4 type]);
      *buf = 136315650;
      v63 = "[BCSBusinessEmailResolver itemsMatching:metric:perItemBlock:completion:]";
      v64 = 2048;
      v65 = v42;
      v66 = 2112;
      v67 = v44;
      _os_log_impl(&dword_242072000, v40, OS_LOG_TYPE_DEFAULT, "%s - %ld items not found in cache for - type: %@", buf, 0x20u);
    }

    v45 = [BCSBatchQuery alloc];
    allObjects = [v55 allObjects];
    config = [v53 config];
    clientBundleId = [v53 clientBundleId];
    v49 = -[BCSBatchQuery initWithItemIdentifiers:config:clientBundleId:shardType:skipRegistrationCheck:](v45, "initWithItemIdentifiers:config:clientBundleId:shardType:skipRegistrationCheck:", allObjects, config, clientBundleId, [v53 shardType], objc_msgSend(v53, "skipRegistrationCheck"));

    [(BCSBusinessEmailResolver *)self _metadataMatching:v49 metric:metricCopy perItemBlock:blockCopy completion:v52];
  }

  else
  {
    completionCopy = v52;
    matchingCopy = v53;
    if (v41)
    {
      itemIdentifier5 = [v53 itemIdentifier];
      v51 = NSStringFromBCSType([itemIdentifier5 type]);
      *buf = 136315394;
      v63 = "[BCSBusinessEmailResolver itemsMatching:metric:perItemBlock:completion:]";
      v64 = 2112;
      v65 = v51;
      _os_log_impl(&dword_242072000, v40, OS_LOG_TYPE_DEFAULT, "%s - All items found in cache for type: %@", buf, 0x16u);
    }

    v52[2](v52, 0);
  }

LABEL_9:
}

- (void)_metadataMatching:(id)matching metric:(id)metric perItemBlock:(id)block completion:(id)completion
{
  matchingCopy = matching;
  blockCopy = block;
  completionCopy = completion;
  metricFactory = [(BCSBusinessEmailResolver *)self metricFactory];
  measurementFactory = [metricFactory measurementFactory];
  itemIdentifier = [matchingCopy itemIdentifier];
  v15 = [measurementFactory businessEmailFetchTimingMeasurementForItemIdentifier:itemIdentifier];

  [v15 begin];
  pirFetchMetadata = [(BCSBusinessEmailResolver *)self pirFetchMetadata];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__BCSBusinessEmailResolver__metadataMatching_metric_perItemBlock_completion___block_invoke;
  v24[3] = &unk_278D399E8;
  selfCopy = self;
  v27 = blockCopy;
  v25 = matchingCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__BCSBusinessEmailResolver__metadataMatching_metric_perItemBlock_completion___block_invoke_88;
  v21[3] = &unk_278D396C8;
  v22 = v15;
  v23 = completionCopy;
  v17 = completionCopy;
  v18 = v15;
  v19 = matchingCopy;
  v20 = blockCopy;
  [pirFetchMetadata fetchDataMatchingBatch:v19 timeout:30000000000 perItemBlock:v24 completion:v21];
}

uint64_t __77__BCSBusinessEmailResolver__metadataMatching_metric_perItemBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v8)
    {
      v11 = [[BCSEmailMetadataParquetMessage alloc] initWithData:v8];
      if (v11)
      {
        v12 = [[BCSBusinessEmailItem alloc] initWithEmailMessage:v11];
        if ([v7 conformsToProtocol:&unk_285466448])
        {
          v13 = [v7 matchingTruncatedHash];
          v14 = [(BCSBusinessEmailItem *)v12 identifier];
          [v14 setMatchingTruncatedHash:v13];
        }

        v15 = [*(a1 + 40) itemCache];
        [v15 updateItem:v12 withItemIdentifier:v7];

        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 32) itemIdentifier];
          v18 = NSStringFromBCSType([v17 type]);
          v24 = 136315650;
          v25 = "[BCSBusinessEmailResolver _metadataMatching:metric:perItemBlock:completion:]_block_invoke";
          v26 = 2112;
          v27 = v18;
          v28 = 2112;
          v29 = v12;
          _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "%s - Item fetched from PIR for metadata - type: %@, item: %@", &v24, 0x20u);
        }
      }

      else
      {
        v30 = *MEMORY[0x277CCA450];
        v31 = @"Failed to decode PIR record";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v12 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v20];

        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 32) itemIdentifier];
          v22 = NSStringFromBCSType([v21 type]);
          v24 = 136315650;
          v25 = "[BCSBusinessEmailResolver _metadataMatching:metric:perItemBlock:completion:]_block_invoke";
          v26 = 2112;
          v27 = v22;
          v28 = 2112;
          v29 = v8;
          _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "%s - Invalid message from PIR for metadata - type: %@, data: %@", &v24, 0x20u);
        }
      }

      v10 = (*(*(a1 + 48) + 16))();
    }

    else
    {
      v32 = *MEMORY[0x277CCA450];
      v33[0] = @"No data received";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v11 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v19];

      v10 = (*(*(a1 + 48) + 16))();
    }
  }

  return v10;
}

void __77__BCSBusinessEmailResolver__metadataMatching_metric_perItemBlock_completion___block_invoke_88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 end];
  (*(*(a1 + 40) + 16))();
}

- (void)_metadataMatching:(id)matching metric:(id)metric completion:(id)completion
{
  matchingCopy = matching;
  completionCopy = completion;
  metricFactory = [(BCSBusinessEmailResolver *)self metricFactory];
  measurementFactory = [metricFactory measurementFactory];
  itemIdentifier = [matchingCopy itemIdentifier];
  v12 = [measurementFactory businessEmailFetchTimingMeasurementForItemIdentifier:itemIdentifier];

  [v12 begin];
  pirFetchMetadata = [(BCSBusinessEmailResolver *)self pirFetchMetadata];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__BCSBusinessEmailResolver__metadataMatching_metric_completion___block_invoke;
  v17[3] = &unk_278D38C78;
  v18 = v12;
  v19 = matchingCopy;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = matchingCopy;
  v16 = v12;
  [pirFetchMetadata fetchDataMatching:v15 timeout:30000000000 completion:v17];
}

void __64__BCSBusinessEmailResolver__metadataMatching_metric_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (!v5)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 138412290;
      v33 = v9;
      v10 = "No match found in PIR for metadata of type: %@";
      v11 = v7;
      v12 = 12;
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_19;
  }

  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      v33 = "[BCSBusinessEmailResolver _metadataMatching:metric:completion:]_block_invoke";
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      v37 = v6;
      v10 = "%s - Error fetching from PIR for metadata - type: %@, error: %@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [[BCSEmailMetadataParquetMessage alloc] initWithData:v5];
  if (v13)
  {
    v14 = [[BCSBusinessEmailItem alloc] initWithEmailMessage:v13];
    v15 = [*(a1 + 40) itemIdentifier];
    v16 = [v15 conformsToProtocol:&unk_285466448];

    if (v16)
    {
      v17 = [*(a1 + 40) itemIdentifier];
      v18 = [v17 matchingTruncatedHash];
      v19 = [(BCSBusinessEmailItem *)v14 identifier];
      [v19 setMatchingTruncatedHash:v18];
    }

    v20 = [*(a1 + 48) itemCache];
    v21 = [*(a1 + 40) itemIdentifier];
    [v20 updateItem:v14 withItemIdentifier:v21];

    v22 = ABSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 40) itemIdentifier];
      v24 = NSStringFromBCSType([v23 type]);
      *buf = 136315650;
      v33 = "[BCSBusinessEmailResolver _metadataMatching:metric:completion:]_block_invoke";
      v34 = 2112;
      v35 = v24;
      v36 = 2112;
      v37 = v14;
      _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "%s - Item fetched from PIR for metadata - type: %@, item: %@", buf, 0x20u);
    }

    v25 = *(*(a1 + 56) + 16);
  }

  else
  {
    v30 = *MEMORY[0x277CCA450];
    v31 = @"Failed to decode PIR record";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v14 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v26];

    v27 = ABSLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [*(a1 + 40) itemIdentifier];
      v29 = NSStringFromBCSType([v28 type]);
      *buf = 136315650;
      v33 = "[BCSBusinessEmailResolver _metadataMatching:metric:completion:]_block_invoke";
      v34 = 2112;
      v35 = v29;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_242072000, v27, OS_LOG_TYPE_DEFAULT, "%s - Invalid message from PIR for metadata - type: %@, data: %@", buf, 0x20u);
    }

    v25 = *(*(a1 + 56) + 16);
  }

  v25();

LABEL_19:
}

- (void)_logoMatching:(id)matching metric:(id)metric completion:(id)completion
{
  matchingCopy = matching;
  completionCopy = completion;
  metricFactory = [(BCSBusinessEmailResolver *)self metricFactory];
  measurementFactory = [metricFactory measurementFactory];
  itemIdentifier = [matchingCopy itemIdentifier];
  v12 = [measurementFactory businessEmailFetchTimingMeasurementForItemIdentifier:itemIdentifier];

  [v12 begin];
  pirFetchLogo = [(BCSBusinessEmailResolver *)self pirFetchLogo];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__BCSBusinessEmailResolver__logoMatching_metric_completion___block_invoke;
  v17[3] = &unk_278D38C78;
  v18 = v12;
  v19 = matchingCopy;
  selfCopy = self;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = matchingCopy;
  v16 = v12;
  [pirFetchLogo fetchDataMatching:v15 timeout:30000000000 completion:v17];
}

void __60__BCSBusinessEmailResolver__logoMatching_metric_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  if (!v5)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 138412290;
      v28 = v9;
      v10 = "No match found in PIR for logo of type: %@";
      v11 = v7;
      v12 = 12;
      goto LABEL_7;
    }

LABEL_8:

    (*(*(a1 + 56) + 16))();
    goto LABEL_17;
  }

  if (v6)
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) itemIdentifier];
      v9 = NSStringFromBCSType([v8 type]);
      *buf = 136315650;
      v28 = "[BCSBusinessEmailResolver _logoMatching:metric:completion:]_block_invoke";
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v6;
      v10 = "%s - Error fetching from PIR for logo - type: %@, error: %@";
      v11 = v7;
      v12 = 32;
LABEL_7:
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = [[BCSEmailLogoParquetMessage alloc] initWithData:v5];
  if (v13)
  {
    v14 = [[BCSBusinessLogo alloc] initWithMessage:v13 logoURL:0];
    v15 = [*(a1 + 48) itemCache];
    v16 = [*(a1 + 40) itemIdentifier];
    [v15 updateItem:v14 withItemIdentifier:v16];

    v17 = ABSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 40) itemIdentifier];
      v19 = NSStringFromBCSType([v18 type]);
      *buf = 136315650;
      v28 = "[BCSBusinessEmailResolver _logoMatching:metric:completion:]_block_invoke";
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_242072000, v17, OS_LOG_TYPE_DEFAULT, "%s - Item fetched from PIR for logo - type: %@, item: %@", buf, 0x20u);
    }

    v20 = *(*(a1 + 56) + 16);
  }

  else
  {
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Failed to decode PIR record";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v14 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v21];

    v22 = ABSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 40) itemIdentifier];
      v24 = NSStringFromBCSType([v23 type]);
      *buf = 136315650;
      v28 = "[BCSBusinessEmailResolver _logoMatching:metric:completion:]_block_invoke";
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = v5;
      _os_log_impl(&dword_242072000, v22, OS_LOG_TYPE_DEFAULT, "%s - Invalid message from PIR for logo - type: %@, data: %@", buf, 0x20u);
    }

    v20 = *(*(a1 + 56) + 16);
  }

  v20();

LABEL_17:
}

@end