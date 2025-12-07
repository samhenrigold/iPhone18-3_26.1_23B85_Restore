@interface BCSQueryChopper
- (id)_chopItemIdentifiersToFetchFromURL:(int)l isBloomFilterCached:;
- (uint64_t)_indexOfItemIdentifierInfo:(void *)info inItemIdentifierInfos:;
- (void)_returnHighestPriorityLinkItemWithItemIdentifiersToFetch:(void *)fetch fetchedItems:(void *)items fetchedErrors:(void *)errors metric:(void *)metric completion:;
- (void)initWithMetricFactory:(void *)factory;
- (void)queryChopperDelegate:(id)delegate fetchLinkItemModelWithURL:(id)l isBloomFilterCached:(BOOL)cached forClientBundleID:(id)d metric:(id)metric completion:(id)completion;
- (void)queryChopperDelegate:(id)delegate isBusinessRegisteredForURL:(id)l isBloomFilterCached:(BOOL)cached forClientBundleID:(id)d metric:(id)metric completion:(id)completion;
@end

@implementation BCSQueryChopper

- (void)initWithMetricFactory:(void *)factory
{
  v4 = a2;
  if (factory)
  {
    v10.receiver = factory;
    v10.super_class = BCSQueryChopper;
    v5 = objc_msgSendSuper2(&v10, sel_init);
    factory = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
      v7 = dispatch_queue_create([@"com.apple.businesschatservice.querychopper.serialqueue" UTF8String], v6);
      v8 = factory[1];
      factory[1] = v7;
    }
  }

  return factory;
}

- (void)queryChopperDelegate:(id)delegate fetchLinkItemModelWithURL:(id)l isBloomFilterCached:(BOOL)cached forClientBundleID:(id)d metric:(id)metric completion:(id)completion
{
  cachedCopy = cached;
  v59 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  lCopy = l;
  dCopy = d;
  metricCopy = metric;
  completionCopy = completion;
  v16 = ABSLogCommon();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
    _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (completionCopy)
  {
    v33 = [(BCSQueryChopper *)self _chopItemIdentifiersToFetchFromURL:lCopy isBloomFilterCached:cachedCopy];
    if ([v33 count])
    {
      v17 = dispatch_group_create();
      v18 = objc_opt_new();
      v19 = objc_opt_new();
      v20 = objc_opt_new();
      *&buf = 0;
      *(&buf + 1) = &buf;
      v57 = 0x2020000000;
      v58 = 0;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke;
      v44[3] = &unk_278D39BB8;
      group = v17;
      v45 = group;
      selfCopy = self;
      v47 = dCopy;
      v48 = delegateCopy;
      v21 = v33;
      v49 = v21;
      v22 = v18;
      v50 = v22;
      v23 = v19;
      v51 = v23;
      v24 = v20;
      v52 = v24;
      p_buf = &buf;
      v25 = metricCopy;
      v53 = v25;
      v26 = completionCopy;
      v54 = v26;
      [v21 enumerateObjectsUsingBlock:v44];
      v27 = lCopy;
      if (self)
      {
        serialDispatchQueue = self->_serialDispatchQueue;
      }

      else
      {
        serialDispatchQueue = 0;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_9;
      block[3] = &unk_278D39BE0;
      v43 = &buf;
      block[4] = self;
      v38 = v21;
      v39 = v23;
      v40 = v24;
      v41 = v25;
      v42 = v26;
      v29 = v24;
      v30 = v23;
      dispatch_group_notify(group, serialDispatchQueue, block);

      lCopy = v27;
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v31 = ABSLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
        _os_log_impl(&dword_242072000, v31, OS_LOG_TYPE_DEFAULT, "%s No items to fetch, bailing...", &buf, 0xCu);
      }

      [metricCopy setSuccessfulChop:-1];
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (id)_chopItemIdentifiersToFetchFromURL:(int)l isBloomFilterCached:
{
  v51[1] = *MEMORY[0x277D85DE8];
  v41 = a2;
  if (self)
  {
    array = [MEMORY[0x277CBEB18] array];
    v39 = [v41 copy];
    v40 = [BCSLinkItemIdentifier identifierWithURL:v39];
    if (v40)
    {
      v6 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v40 chopID:1];
      [array addObject:v6];
    }

    host = [v39 host];
    v8 = [host length];

    if (v8 && l)
    {
      uRLByDeletingFragment = [(NSURL *)v41 URLByDeletingFragment];
      v35 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:uRLByDeletingFragment resolvingAgainstBaseURL:0];
      queryItems = [v35 queryItems];
      firstObject = [queryItems firstObject];

      if (firstObject)
      {
        v51[0] = firstObject;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
        [v35 setQueryItems:v10];

        v11 = v35;
      }

      else
      {
        v11 = v35;
        [v35 setQueryItems:0];
      }

      v30 = [v11 URL];
      v34 = [BCSLinkItemIdentifier identifierWithURL:v30];
      if (v34)
      {
        v12 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v34 chopID:2];
        [array addObject:{v12, v30}];
      }

      v36 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:uRLByDeletingFragment resolvingAgainstBaseURL:0];
      [v36 setQueryItems:0];
      v38 = [v36 URL];
      v33 = [BCSLinkItemIdentifier identifierWithURL:v38];
      if (v33)
      {
        v13 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v33 chopID:3];
        [array addObject:v13];
      }

      lastPathComponent = [v38 lastPathComponent];
      if ([lastPathComponent length])
      {
        v15 = v38;
        do
        {
          lastPathComponent2 = [v15 lastPathComponent];

          v17 = [BCSLinkItemIdentifier identifierWithURL:v15];
          if (v17)
          {
            if ([lastPathComponent2 isEqualToString:@"/"])
            {
              v18 = 5;
            }

            else
            {
              v18 = 4;
            }

            v19 = [BCSChoppedItemIdentifierInfo newWithLinkItemIdentifier:v17 chopID:v18];
            [array addObject:v19];
          }

          absoluteString = [v15 absoluteString];
          v21 = [absoluteString length];

          uRLByDeletingLastPathComponent = [v15 URLByDeletingLastPathComponent];

          absoluteString2 = [uRLByDeletingLastPathComponent absoluteString];
          v24 = [absoluteString2 length];

          if (![lastPathComponent2 length])
          {
            break;
          }

          v25 = [lastPathComponent2 isEqualToString:@"/"];
          v26 = v24 > v21 ? 1 : v25;
          lastPathComponent = lastPathComponent2;
          v15 = uRLByDeletingLastPathComponent;
        }

        while (v26 != 1);
      }

      else
      {
        lastPathComponent2 = lastPathComponent;
      }
    }

    v27 = array;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__4;
    v49 = __Block_byref_object_dispose__4;
    v50 = objc_opt_new();
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__4;
    v43[4] = __Block_byref_object_dispose__4;
    v44 = objc_opt_new();
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __61__BCSQueryChopper__removeLinkItemDuplicatesInOrderFromArray___block_invoke;
    v42[3] = &unk_278D39D20;
    v42[4] = v43;
    v42[5] = &v45;
    [v27 enumerateObjectsUsingBlock:v42];
    v28 = [v46[5] copy];
    _Block_object_dispose(v43, 8);

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = v4[2];
  }

  v5 = v4;
  v6 = [v5 measurementFactory];
  if (v3)
  {
    v7 = v3[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v6 businessLinkChoppedFetchTimingMeasurementForItemIdentifier:v8];

  [v9 begin];
  v10 = [BCSQuery alloc];
  if (v3)
  {
    v11 = v3[1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BCSQuery *)v10 initWithItemIdentifier:v11 clientBundleId:*(a1 + 48) shardType:2];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2;
  v23[3] = &unk_278D39B90;
  v13 = *(a1 + 40);
  v24 = v9;
  v25 = v13;
  v26 = v3;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v27 = v20;
  v28 = v19;
  v32 = *(a1 + 112);
  v29 = *(a1 + 96);
  v31 = *(a1 + 104);
  v30 = *(a1 + 32);
  v21 = v3;
  v22 = v9;
  [v14 fetchItemWithQuery:v12 completion:v23];
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  v7 = [(BCSQueryChopper *)*(a1 + 40) _indexOfItemIdentifierInfo:*(a1 + 56) inItemIdentifierInfos:?];
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromBOOL();
    *buf = 136315906;
    v32 = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke_2";
    v33 = 2114;
    v34 = v9;
    v35 = 2048;
    v36 = v7;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s - chop attempt found item: %{public}@ - itemPriority:%ld - error:%@", buf, 0x2Au);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_3;
  block[3] = &unk_278D39B68;
  v18 = v5;
  v19 = *(a1 + 64);
  v30 = v7;
  v20 = *(a1 + 72);
  v21 = v6;
  v12 = *(a1 + 80);
  v29 = *(a1 + 112);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = *(a1 + 56);
  v26 = *(a1 + 88);
  v28 = *(a1 + 104);
  v27 = *(a1 + 96);
  v15 = v6;
  v16 = v5;
  dispatch_async(v11, block);
}

- (uint64_t)_indexOfItemIdentifierInfo:(void *)info inItemIdentifierInfos:
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  infoCopy = info;
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__BCSQueryChopper__indexOfItemIdentifierInfo_inItemIdentifierInfos___block_invoke;
    v9[3] = &unk_278D39CA8;
    v10 = v5;
    v11 = &v12;
    [infoCopy enumerateObjectsUsingBlock:v9];
    self = v13[3];
    if (self == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = ABSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v17 = "[BCSQueryChopper _indexOfItemIdentifierInfo:inItemIdentifierInfos:]";
        _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "%s - Index of item identifier not found", buf, 0xCu);
      }

      self = 0;
    }

    _Block_object_dispose(&v12, 8);
  }

  return self;
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 128)];
  if (v3)
  {
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v4];

    [*(a1 + 48) addObject:*(a1 + 32)];
  }

  else
  {
    [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v4];

    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CBEB68] null];
    [v5 addObject:v6];
  }

  v7 = *(a1 + 64);
  if (*(a1 + 56))
  {
    [*(a1 + 64) addObject:?];
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB68] null];
    [v7 addObject:v8];

    if (!v3)
    {
      goto LABEL_23;
    }
  }

  if (*(*(*(a1 + 120) + 8) + 24))
  {
    goto LABEL_23;
  }

  v9 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(a1 + 88);
  v12 = *(a1 + 80);
  v13 = v10;
  v14 = v11;
  if (!v9)
  {
    goto LABEL_17;
  }

  v15 = [(BCSQueryChopper *)v9 _indexOfItemIdentifierInfo:v12 inItemIdentifierInfos:v14];
  if (!v15)
  {

LABEL_20:
    *(*(*(a1 + 120) + 8) + 24) = 1;
    v23 = ABSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315138;
      v25 = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke";
      _os_log_impl(&dword_242072000, v23, OS_LOG_TYPE_DEFAULT, "%s - all higher priority items queries have returned from server, return early", &v24, 0xCu);
    }

    [(BCSQueryChopper *)*(a1 + 72) _returnHighestPriorityLinkItemWithItemIdentifiersToFetch:*(a1 + 48) fetchedItems:*(a1 + 64) fetchedErrors:*(a1 + 96) metric:*(a1 + 112) completion:?];
    goto LABEL_23;
  }

  v16 = v15;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v18 = [v13 objectForKeyedSubscript:v17];

  if (!v18)
  {
LABEL_17:

    goto LABEL_23;
  }

  v19 = 1;
  while (v16 != v19)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
    v21 = [v13 objectForKeyedSubscript:v20];

    ++v19;
    if (!v21)
    {
      v22 = v19 - 1;
      goto LABEL_19;
    }
  }

  v22 = v16;
LABEL_19:

  if (v22 >= v16)
  {
    goto LABEL_20;
  }

LABEL_23:
  dispatch_group_leave(*(a1 + 104));
}

- (void)_returnHighestPriorityLinkItemWithItemIdentifiersToFetch:(void *)fetch fetchedItems:(void *)items fetchedErrors:(void *)errors metric:(void *)metric completion:
{
  v11 = a2;
  fetchCopy = fetch;
  itemsCopy = items;
  errorsCopy = errors;
  metricCopy = metric;
  if (self)
  {
    if ([v11 count])
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v24 = 0;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke;
      v16[3] = &unk_278D39CF8;
      v17 = fetchCopy;
      v18 = errorsCopy;
      v21 = metricCopy;
      v22 = v23;
      v19 = v11;
      v20 = itemsCopy;
      [v19 enumerateObjectsUsingBlock:v16];

      _Block_object_dispose(v23, 8);
    }

    else
    {
      [errorsCopy setSuccessfulChop:-1];
      (*(metricCopy + 2))(metricCopy, 0, 0);
    }
  }
}

void __122__BCSQueryChopper_queryChopperDelegate_fetchLinkItemModelWithURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_9(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 80) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = ABSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BCSQueryChopper queryChopperDelegate:fetchLinkItemModelWithURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke";
      _os_log_impl(&dword_242072000, v3, OS_LOG_TYPE_DEFAULT, "%s - All remote queries have finished, return", &v4, 0xCu);
    }

    [(BCSQueryChopper *)*(a1 + 32) _returnHighestPriorityLinkItemWithItemIdentifiersToFetch:*(a1 + 48) fetchedItems:*(a1 + 56) fetchedErrors:*(a1 + 64) metric:*(a1 + 72) completion:?];
  }
}

- (void)queryChopperDelegate:(id)delegate isBusinessRegisteredForURL:(id)l isBloomFilterCached:(BOOL)cached forClientBundleID:(id)d metric:(id)metric completion:(id)completion
{
  cachedCopy = cached;
  v89 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  lCopy = l;
  dCopy = d;
  metricCopy = metric;
  completionCopy = completion;
  v15 = ABSLogCommon();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
    _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  if (!completionCopy)
  {
    goto LABEL_27;
  }

  v43 = [(BCSQueryChopper *)self _chopItemIdentifiersToFetchFromURL:lCopy isBloomFilterCached:cachedCopy];
  if (![v43 count])
  {
    v37 = ABSLogCommon();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]";
      _os_log_impl(&dword_242072000, v37, OS_LOG_TYPE_DEFAULT, "%s No items to check, bailing...", &buf, 0xCu);
    }

    [metricCopy setSuccessfulChop:-1];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    goto LABEL_26;
  }

  v38 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__4;
  v87 = __Block_byref_object_dispose__4;
  v88 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v80 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__4;
  v76 = __Block_byref_object_dispose__4;
  v77 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__4;
  v70 = __Block_byref_object_dispose__4;
  v71 = 0;
  if (!MEMORY[0x245D06CC0]("[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]"))
  {
    goto LABEL_20;
  }

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v43, "count")}];
  v17 = v73[5];
  v73[5] = v16;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v18 = v43;
  v19 = [v18 countByEnumeratingWithState:&v62 objects:v83 count:16];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = *v63;
  do
  {
    v21 = 0;
    do
    {
      if (*v63 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v62 + 1) + 8 * v21);
      v23 = v73[5];
      if (v22)
      {
        v24 = *(v22 + 8);
        v25 = v24;
        if (v24)
        {
          v26 = *(v24 + 2);
          goto LABEL_14;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = 0;
LABEL_14:
      v27 = v26;
      absoluteString = [v27 absoluteString];
      [v23 addObject:absoluteString];

      ++v21;
    }

    while (v19 != v21);
    v29 = [v18 countByEnumeratingWithState:&v62 objects:v83 count:16];
    v19 = v29;
  }

  while (v29);
LABEL_19:

  v30 = v73[5];
  v81 = @"BCSBusinessQueryServiceChoppedURLs";
  v82 = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  v32 = v67[5];
  v67[5] = v31;

LABEL_20:
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke;
  v50[3] = &unk_278D39C58;
  v33 = v38;
  v51 = v33;
  v52 = dCopy;
  v53 = delegateCopy;
  selfCopy = self;
  v57 = v78;
  v58 = v79;
  v34 = metricCopy;
  v55 = v34;
  v59 = &v72;
  v35 = completionCopy;
  v56 = v35;
  v60 = &v66;
  p_buf = &buf;
  [v43 enumerateObjectsUsingBlock:v50];
  if (self)
  {
    serialDispatchQueue = self->_serialDispatchQueue;
  }

  else
  {
    serialDispatchQueue = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2_17;
  block[3] = &unk_278D39C80;
  v47 = v79;
  v45 = v34;
  v46 = v35;
  v48 = &v66;
  v49 = &buf;
  dispatch_group_notify(v33, serialDispatchQueue, block);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v72, 8);

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v79, 8);
  _Block_object_dispose(&buf, 8);

LABEL_26:
LABEL_27:
}

void __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = [BCSQuery alloc];
  if (v5)
  {
    v7 = v5[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BCSQuery *)v6 initWithItemIdentifier:v7 clientBundleId:*(a1 + 40) shardType:2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2;
  v12[3] = &unk_278D39C30;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v12[4] = *(a1 + 56);
  v17 = *(a1 + 80);
  v13 = v10;
  v14 = v5;
  v18 = *(a1 + 96);
  v20 = a3;
  v16 = *(a1 + 72);
  v19 = *(a1 + 104);
  v15 = *(a1 + 32);
  v11 = v5;
  [v9 fetchIsBusinessRegisteredWithQuery:v8 completion:v12];
}

void __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a2 hasBusiness];
  ++*(*(*(a1 + 72) + 8) + 24);
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBOOL();
    v9 = *(*(*(a1 + 72) + 8) + 24);
    *buf = 136315906;
    v30 = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke_2";
    v31 = 2114;
    v32 = v8;
    v33 = 2048;
    v34 = v9;
    v35 = 2112;
    v36 = v5;
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s - chop attempt isBusinessRegistered: %{public}@ - attemptCount:%ld - error:%@", buf, 0x2Au);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_11;
  block[3] = &unk_278D39C08;
  v28 = v6;
  v18 = *(a1 + 80);
  v21 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 112);
  v22 = v12;
  v27 = v13;
  *&v14 = v18;
  *(&v14 + 1) = *(a1 + 88);
  v19 = v14;
  v15 = *(a1 + 64);
  v23 = v5;
  v26 = *(a1 + 96);
  *&v16 = *(a1 + 56);
  *(&v16 + 1) = v15;
  v24 = v16;
  v25 = v19;
  v17 = v5;
  dispatch_async(v11, block);
}

void __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_11(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    [*(a1 + 32) setSuccessfulChop:v3];
    if (MEMORY[0x245D06CC0]("[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke"))
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = *(a1 + 40);
      if (v5)
      {
        v5 = v5[1];
        if (v5)
        {
          v5 = v5[2];
        }
      }

      v6 = v5;
      v7 = [v6 absoluteString];
      v8 = [v4 stringWithFormat:@"%@ (REGISTERED)", v7];

      [*(*(*(a1 + 80) + 8) + 40) replaceObjectAtIndex:*(a1 + 104) withObject:v8];
    }

    v9 = *(*(a1 + 64) + 16);

    v9();
  }

  else
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      objc_storeStrong((*(*(a1 + 96) + 8) + 40), v10);
    }

    v11 = *(a1 + 56);

    dispatch_group_leave(v11);
  }
}

uint64_t __123__BCSQueryChopper_queryChopperDelegate_isBusinessRegisteredForURL_isBloomFilterCached_forClientBundleID_metric_completion___block_invoke_2_17(uint64_t result)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(*(result + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    v3 = ABSLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[BCSQueryChopper queryChopperDelegate:isBusinessRegisteredForURL:isBloomFilterCached:forClientBundleID:metric:completion:]_block_invoke_2";
      _os_log_impl(&dword_242072000, v3, OS_LOG_TYPE_DEFAULT, "%s - All queries have finished, return", &v4, 0xCu);
    }

    [*(v2 + 32) setSuccessfulChop:-1];
    return (*(*(v2 + 40) + 16))();
  }

  return result;
}

void __68__BCSQueryChopper__indexOfItemIdentifierInfo_inItemIdentifierInfos___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[1];
  }

  v12 = v7;
  if (v7)
  {
    v9 = v7[1];
  }

  else
  {
    v9 = 0;
  }

  v10 = v8;
  v11 = [v10 matchesItemIdentifying:v9];

  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke_2;
  v18[3] = &unk_278D39CD0;
  v19 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v22 = v10;
  v23 = v11;
  v24 = a4;
  v25 = a3;
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v9;
  *(&v16 + 1) = v12;
  v20 = v16;
  v21 = v15;
  v17 = v7;
  [v8 enumerateObjectsUsingBlock:v18];
}

void __121__BCSQueryChopper__returnHighestPriorityLinkItemWithItemIdentifiersToFetch_fetchedItems_fetchedErrors_metric_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v20 = a2;
  v7 = [MEMORY[0x277CBEB68] null];

  if (v7 != v20)
  {
    v8 = [v20 linkURL];
    v9 = [BCSLinkItemIdentifier identifierWithURL:v8];

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    if ([v11 matchesItemIdentifying:v9])
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v13 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
      }

      [*(a1 + 40) setSuccessfulChop:v13];
      (*(*(a1 + 72) + 16))();
      v14 = *(a1 + 88);
      *(*(*(a1 + 80) + 8) + 24) = 1;
      *a4 = 1;
      *v14 = 1;
    }
  }

  if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
  {
    v15 = *(a1 + 96);
    if (v15 == [*(a1 + 48) count] - 1 && (objc_msgSend(*(a1 + 56), "count") - 1) == a3)
    {
      v16 = [*(a1 + 64) objectAtIndex:a3];
      [*(a1 + 40) setSuccessfulChop:-1];
      v17 = *(a1 + 72);
      v18 = [MEMORY[0x277CBEB68] null];
      if (v16 == v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16;
      }

      (*(v17 + 16))(v17, 0, v19);

      *a4 = 1;
      **(a1 + 88) = 1;
    }
  }
}

void __61__BCSQueryChopper__removeLinkItemDuplicatesInOrderFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v13 = v3;
  if (v3)
  {
    v5 = v3[1];
    v6 = v5;
    if (v5)
    {
      v7 = [v5[1] copy];
      goto LABEL_4;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_4:
  v8 = [v4 objectForKeyedSubscript:v7];

  if (!v8)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
  }

  v9 = *(*(*(a1 + 32) + 8) + 40);
  if (v13)
  {
    v10 = v13[1];
    v11 = v10;
    if (v10)
    {
      v12 = [v10[1] copy];
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
LABEL_9:
  [v9 setObject:MEMORY[0x277CBEC38] forKey:v12];
}

@end