@interface BCSRemoteFetchPIR
- (id)errorForPIRError:(id)error;
- (id)initWithEnvironment:(void *)environment metricFactory:;
- (void)fetchDataMatching:(id)matching timeout:(int64_t)timeout completion:(id)completion;
- (void)fetchDataMatchingBatch:(id)batch timeout:(int64_t)timeout perItemBlock:(id)block completion:(id)completion;
@end

@implementation BCSRemoteFetchPIR

- (id)initWithEnvironment:(void *)environment metricFactory:
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (self)
  {
    environmentCopy = environment;
    v8 = dispatch_queue_create("com.apple.businesschat.calleridresolver.pir", 0);
    secondaryIdentifier = [v6 secondaryIdentifier];
    if (secondaryIdentifier)
    {
      v10 = secondaryIdentifier;
    }

    else
    {
      v10 = @"com.apple.businessservicesd";
    }

    v11 = objc_alloc(MEMORY[0x277CFA598]);
    pirUseCase = [v6 pirUseCase];
    v26 = v10;
    v13 = [v11 initWithUseCase:pirUseCase sourceApplicationBundleIdentifier:v10];

    v25 = v13;
    v14 = [objc_alloc(MEMORY[0x277CFA5B0]) initWithClientConfig:v13];
    v15 = v6;
    v16 = environmentCopy;
    v17 = v8;
    v18 = v14;
    v27.receiver = self;
    v27.super_class = BCSRemoteFetchPIR;
    v19 = objc_msgSendSuper2(&v27, sel_init);
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(v19 + 1, a2);
      objc_storeStrong(v20 + 2, environment);
      objc_storeStrong(v20 + 3, v14);
      objc_storeStrong(v20 + 4, v8);
      v21 = ABSLogCommon();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        pirUseCase2 = [v15 pirUseCase];
        pirUsesCompression = [v15 pirUsesCompression];
        *buf = 138412546;
        v29 = pirUseCase2;
        v30 = 1024;
        v31 = pirUsesCompression;
        _os_log_impl(&dword_242072000, v21, OS_LOG_TYPE_DEFAULT, "Fetch from PIR configured for use case '%@', compressed: %d", buf, 0x12u);
      }
    }

    self = v20;
  }

  return self;
}

- (void)fetchDataMatchingBatch:(id)batch timeout:(int64_t)timeout perItemBlock:(id)block completion:(id)completion
{
  delta = timeout;
  v64 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  blockCopy = block;
  completionCopy = completion;
  v8 = ABSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]";
    _os_log_impl(&dword_242072000, v8, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v36 = [[BCSPIRBatchRequest alloc] initWithQuery:batchCopy];
  pirKeysToFetch = [(BCSPIRBatchRequest *)v36 pirKeysToFetch];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  invalidIdentifiers = [(BCSPIRBatchRequest *)v36 invalidIdentifiers];
  v10 = [invalidIdentifiers countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v10)
  {
    v11 = *v53;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(invalidIdentifiers);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        v14 = ABSLogCommon();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]";
          _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "%s - Invalid item identifier (non-PIR identifying)", &buf, 0xCu);
        }

        delta = [BCSError errorWithDomain:@"com.apple.businessservices" code:1000 errorDescription:@"Invalid item identifier (non-PIR identifying)", delta];
        if ((blockCopy[2](blockCopy, v13, 0, delta) & 1) == 0)
        {
          v29 = [BCSError errorWithDomain:@"com.apple.businessservices" code:45 errorDescription:@"Request cancelled by caller (perItem block return NO)"];
          completionCopy[2](completionCopy, v29);

          goto LABEL_18;
        }
      }

      v10 = [invalidIdentifiers countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if ([pirKeysToFetch count])
  {
    v16 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0x2020000000;
    v62 = 0;
    metricFactory = [(BCSRemoteFetchPIR *)self metricFactory];
    measurementFactory = [metricFactory measurementFactory];
    itemIdentifier = [batchCopy itemIdentifier];
    v20 = [measurementFactory pirFetchTimingMeasurementForItemIdentifier:itemIdentifier];

    [v20 begin];
    v21 = dispatch_time(0, delta);
    pirQueue = [(BCSRemoteFetchPIR *)self pirQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke;
    block[3] = &unk_278D3A230;
    v23 = v16;
    v49 = v23;
    p_buf = &buf;
    v24 = completionCopy;
    v50 = v24;
    dispatch_after(v21, pirQueue, block);

    v25 = ABSLogCommon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 136315395;
      v57 = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]";
      v58 = 2113;
      v59 = pirKeysToFetch;
      _os_log_impl(&dword_242072000, v25, OS_LOG_TYPE_DEFAULT, "%s - fetching data from PIR for keys '%{private}@'", v56, 0x16u);
    }

    pirQueue2 = [(BCSRemoteFetchPIR *)self pirQueue];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_22;
    v38[3] = &unk_278D3A2A8;
    v39 = v20;
    v40 = v23;
    v47 = &buf;
    v45 = v24;
    v41 = pirKeysToFetch;
    v42 = v36;
    v43 = batchCopy;
    v46 = blockCopy;
    selfCopy = self;
    v27 = v23;
    v28 = v20;
    dispatch_async(pirQueue2, v38);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v30 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 errorDescription:@"No identifiers requested"];
    completionCopy[2](completionCopy, v30);
  }

LABEL_18:
}

void __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24))
  {
    v3 = *(a1 + 32);

    [v3 unlock];
  }

  else
  {
    *(v2 + 24) = 1;
    [*(a1 + 32) unlock];
    v4 = [BCSError errorWithDomain:@"com.apple.businessservices" code:43 errorDescription:@"Timeout waiting for response from PIR"];
    (*(*(a1 + 40) + 16))();
  }
}

void __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_22(uint64_t a1)
{
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_2;
  v32[3] = &unk_278D3A280;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v37 = *(a1 + 96);
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v2;
  *(&v8 + 1) = v3;
  v33 = v8;
  v34 = v7;
  v9 = *(a1 + 64);
  v10 = *(a1 + 88);
  *&v11 = v9;
  *(&v11 + 1) = *(a1 + 72);
  *&v12 = v4;
  *(&v12 + 1) = v10;
  v36 = v12;
  v35 = v11;
  v13 = MEMORY[0x245D07100](v32);
  v14 = +[BCSUserDefaults sharedDefaults];
  v15 = [v14 objectForKey:@"BCSMaxPIRConcurrency"];

  if (v15 && (+[BCSUserDefaults sharedDefaults](BCSUserDefaults, "sharedDefaults"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 integerForKey:@"BCSMaxPIRConcurrency"], v16, v17 > 1))
  {
    v24 = ABSLogCommon();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v24, OS_LOG_TYPE_DEFAULT, "Concurrent PIR requests ENABLED", buf, 2u);
    }

    v25 = [*(a1 + 72) pirClient];
    v26 = *(a1 + 48);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_42;
    v28[3] = &unk_278D38B08;
    v27 = v13;
    v28[4] = *(a1 + 72);
    v29 = v27;
    [v25 requestDataByStringKeywords:v26 completionHandler:v28];

    v21 = v29;
  }

  else
  {
    v18 = ABSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v18, OS_LOG_TYPE_DEFAULT, "Concurrent PIR requests DISABLED", buf, 2u);
    }

    v19 = [*(a1 + 72) pirClient];
    v20 = *(a1 + 48);
    v30 = 0;
    v21 = [v19 dataByStringKeywords:v20 error:&v30];
    v22 = v30;

    v23 = [*(a1 + 72) errorForPIRError:v22];
    (v13)[2](v13, v21, v23);
  }
}

void __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  [*(a1 + 40) lock];
  v7 = *(*(a1 + 96) + 8);
  if (*(v7 + 24))
  {
    [*(a1 + 40) unlock];
  }

  else
  {
    v27 = v6;
    *(v7 + 24) = 1;
    [*(a1 + 40) unlock];
    if ([v5 count])
    {
      v9 = 0;
      v10 = 1;
      *&v8 = 136315650;
      v26 = v8;
      v28 = a1;
      while ((v10 & 1) != 0)
      {
        v11 = [*(a1 + 48) objectAtIndexedSubscript:v9];
        v12 = [*(a1 + 56) identifiersByPIRKey];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (v13 && [v13 count])
        {
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_23;
          v34[3] = &unk_278D3A258;
          v38 = v9;
          v35 = *(a1 + 64);
          v14 = *(a1 + 88);
          v36 = *(a1 + 72);
          v37 = v14;
          v15 = MEMORY[0x245D07100](v34);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = v13;
          v17 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
          if (v17)
          {
            v18 = v17;
            v29 = v11;
            v19 = *v31;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v31 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v30 + 1) + 8 * i);
                v22 = [v5 objectAtIndexedSubscript:{v9, v26}];
                v10 = (v15)[2](v15, v21, v22);
              }

              v18 = [v16 countByEnumeratingWithState:&v30 objects:v39 count:16];
            }

            while (v18);
            a1 = v28;
            v11 = v29;
          }

          else
          {
            v10 = 1;
          }

          v23 = v35;
        }

        else
        {
          v23 = ABSLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = [*(a1 + 64) itemIdentifiers];
            *buf = v26;
            v41 = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]_block_invoke_2";
            v42 = 2112;
            v43 = v11;
            v44 = 2112;
            v45 = v24;
            _os_log_error_impl(&dword_242072000, v23, OS_LOG_TYPE_ERROR, "%s - Unexpectedly invalid identifiers for key (%@{private}) in query item identifiers (%@{private})", buf, 0x20u);
          }

          v10 = 1;
        }

        if (++v9 >= [v5 count])
        {
          goto LABEL_22;
        }
      }

      v25 = [BCSError errorWithDomain:@"com.apple.businessservices" code:45 errorDescription:@"Request cancelled by caller (perItem block return NO)"];
      (*(*(a1 + 80) + 16))();

      v6 = v27;
    }

    else
    {
LABEL_22:
      v6 = v27;
      (*(*(a1 + 80) + 16))();
    }
  }
}

uint64_t __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = ABSLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315395;
        v33 = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]_block_invoke";
        v34 = 2113;
        v35 = v5;
        _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "%s - Failed to fetch requested data (received NSNull for %{private}@)", buf, 0x16u);
      }

      v30 = *MEMORY[0x277CCA450];
      v31 = @"No matching data found";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v9 = 46;
LABEL_16:
      v10 = [BCSError errorWithDomain:@"com.apple.businessservices" code:v9 userInfo:v8];

      v18 = *(*(a1 + 48) + 16);
LABEL_17:
      v11 = v18();
      goto LABEL_18;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = ABSLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v33 = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]_block_invoke";
        v34 = 2112;
        v35 = v6;
        _os_log_error_impl(&dword_242072000, v17, OS_LOG_TYPE_ERROR, "%s - Unexpected response data (received %@, expected NSData)", buf, 0x16u);
      }

      v28 = *MEMORY[0x277CCA450];
      v29 = @"Invalid response from server";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v9 = 100;
      goto LABEL_16;
    }

    v10 = v6;
    v12 = [*(a1 + 40) environment];
    v13 = [v12 pirUsesCompression];

    if (!v13)
    {
      v18 = *(*(a1 + 48) + 16);
      goto LABEL_17;
    }

    v14 = [*(a1 + 40) environment];
    v15 = [v14 pirCompressionType];

    if ([v15 isEqualToString:@"lz4_rwa"])
    {
      v16 = 0;
    }

    else
    {
      v16 = [v15 isEqualToString:@"gzip"];
    }

    v20 = ABSLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v15;
      v34 = 2048;
      v35 = v16;
      _os_log_impl(&dword_242072000, v20, OS_LOG_TYPE_DEFAULT, "Attempting to decompress data using %@ (%lu)", buf, 0x16u);
    }

    v27 = 0;
    v21 = [v10 inflate:v16 error:&v27];
    v22 = v27;
    if (v21)
    {
      v23 = *(*(a1 + 48) + 16);
    }

    else
    {
      v24 = ABSLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v33 = v10;
        v34 = 2112;
        v35 = v22;
        _os_log_error_impl(&dword_242072000, v24, OS_LOG_TYPE_ERROR, "Failed to decompress data (%@): %@", buf, 0x16u);
      }

      v23 = *(*(a1 + 48) + 16);
    }

    v11 = v23();
  }

  else
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 56);
      v26 = [*(a1 + 32) itemIdentifiers];
      *buf = 136315650;
      v33 = "[BCSRemoteFetchPIR fetchDataMatchingBatch:timeout:perItemBlock:completion:]_block_invoke";
      v34 = 2048;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "%s - Unexpectedly invalid index (%lu) in query item identifiers (%@{private})", buf, 0x20u);
    }

    v11 = 1;
  }

LABEL_18:

  return v11;
}

void __76__BCSRemoteFetchPIR_fetchDataMatchingBatch_timeout_perItemBlock_completion___block_invoke_42(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorForPIRError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

- (void)fetchDataMatching:(id)matching timeout:(int64_t)timeout completion:(id)completion
{
  v51[1] = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  completionCopy = completion;
  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    environment = [(BCSRemoteFetchPIR *)self environment];
    pirUseCase = [environment pirUseCase];
    *buf = 136315394;
    *&buf[4] = "[BCSRemoteFetchPIR fetchDataMatching:timeout:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = pirUseCase;
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s (%@)", buf, 0x16u);
  }

  itemIdentifier = [matchingCopy itemIdentifier];
  v14 = [itemIdentifier conformsToProtocol:&unk_2854664E0];

  if (v14)
  {
    itemIdentifier2 = [matchingCopy itemIdentifier];
    v16 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v49 = 0;
    metricFactory = [(BCSRemoteFetchPIR *)self metricFactory];
    measurementFactory = [metricFactory measurementFactory];
    itemIdentifier3 = [matchingCopy itemIdentifier];
    v20 = [measurementFactory pirFetchTimingMeasurementForItemIdentifier:itemIdentifier3];

    [v20 begin];
    v21 = dispatch_time(0, timeout);
    pirQueue = [(BCSRemoteFetchPIR *)self pirQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke;
    block[3] = &unk_278D3A230;
    v23 = v16;
    v41 = v23;
    v43 = buf;
    v24 = completionCopy;
    v42 = v24;
    dispatch_after(v21, pirQueue, block);

    pirKey = [itemIdentifier2 pirKey];
    v26 = ABSLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 136315395;
      v45 = "[BCSRemoteFetchPIR fetchDataMatching:timeout:completion:]";
      v46 = 2113;
      v47 = pirKey;
      _os_log_impl(&dword_242072000, v26, OS_LOG_TYPE_DEFAULT, "%s - fetching data from PIR for key '%{private}@'", v44, 0x16u);
    }

    pirQueue2 = [(BCSRemoteFetchPIR *)self pirQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke_90;
    v33[3] = &unk_278D3A320;
    v34 = v20;
    v35 = v23;
    v39 = buf;
    selfCopy = self;
    v37 = pirKey;
    v38 = v24;
    v28 = pirKey;
    v29 = v23;
    v30 = v20;
    dispatch_async(pirQueue2, v33);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v31 = ABSLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[BCSRemoteFetchPIR fetchDataMatching:timeout:completion:]";
      _os_log_impl(&dword_242072000, v31, OS_LOG_TYPE_DEFAULT, "%s - Invalid item identifier (non-PIR identifying)", buf, 0xCu);
    }

    v50 = *MEMORY[0x277CCA450];
    v51[0] = @"Invalid item identifier (non-PIR identifying)";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    itemIdentifier2 = [BCSError errorWithDomain:@"com.apple.businessservices" code:1000 userInfo:v32];

    (*(completionCopy + 2))(completionCopy, 0, itemIdentifier2);
  }
}

void __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) lock];
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24))
  {
    v3 = *(a1 + 32);

    [v3 unlock];
  }

  else
  {
    *(v2 + 24) = 1;
    [*(a1 + 32) unlock];
    v6 = *MEMORY[0x277CCA450];
    v7[0] = @"Timeout waiting for response from PIR";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    v5 = [BCSError errorWithDomain:@"com.apple.businessservices" code:43 userInfo:v4];

    (*(*(a1 + 40) + 16))();
  }
}

void __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke_90(uint64_t a1)
{
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke_2;
  v25[3] = &unk_278D3A2D0;
  v26 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v27 = v2;
  v28 = v3;
  v20 = *(a1 + 64);
  v4 = v20;
  v29 = v20;
  v5 = MEMORY[0x245D07100](v25);
  v6 = +[BCSUserDefaults sharedDefaults];
  v7 = [v6 objectForKey:@"BCSMaxPIRConcurrency"];

  if (v7 && (+[BCSUserDefaults sharedDefaults](BCSUserDefaults, "sharedDefaults"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 integerForKey:@"BCSMaxPIRConcurrency"], v8, v9 > 1))
  {
    v16 = ABSLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "Concurrent PIR requests ENABLED", buf, 2u);
    }

    v17 = [*(a1 + 48) pirClient];
    v18 = *(a1 + 56);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke_92;
    v21[3] = &unk_278D3A2F8;
    v19 = v5;
    v21[4] = *(a1 + 48);
    v22 = v19;
    [v17 requestDataByStringKeyword:v18 completionHandler:v21];

    v13 = v22;
  }

  else
  {
    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "Concurrent PIR requests DISABLED", buf, 2u);
    }

    v11 = [*(a1 + 48) pirClient];
    v12 = *(a1 + 56);
    v23 = 0;
    v13 = [v11 dataByStringKeyword:v12 error:&v23];
    v14 = v23;

    v15 = [*(a1 + 48) errorForPIRError:v14];
    (v5)[2](v5, v13, v15);
  }
}

void __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) end];
  [*(a1 + 40) lock];
  v7 = *(*(a1 + 64) + 8);
  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    [*(a1 + 40) unlock];
    v8 = v5;
    v9 = [*(a1 + 48) environment];
    v10 = [v9 pirUsesCompression];

    if (v10)
    {
      v11 = [*(a1 + 48) environment];
      v12 = [v11 pirCompressionType];

      if ([v12 isEqualToString:@"lz4_rwa"])
      {
        v13 = 0;
      }

      else
      {
        v13 = [v12 isEqualToString:@"gzip"];
      }

      v14 = ABSLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v19 = v12;
        v20 = 2048;
        v21 = v13;
        _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "Attempting to decompress data using %@ (%lu)", buf, 0x16u);
      }

      v17 = 0;
      v15 = [v8 inflate:v13 error:&v17];
      v16 = v17;

      if (!v15)
      {
        if (v6 && !v16)
        {
          v16 = v6;
        }

        (*(*(a1 + 56) + 16))();

        goto LABEL_12;
      }

      v8 = v15;
    }

    (*(*(a1 + 56) + 16))();
    v12 = v8;
LABEL_12:

    goto LABEL_13;
  }

  [*(a1 + 40) unlock];
LABEL_13:
}

void __58__BCSRemoteFetchPIR_fetchDataMatching_timeout_completion___block_invoke_92(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 errorForPIRError:a3];
  (*(v4 + 16))(v4, v6, v7);
}

- (id)errorForPIRError:(id)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error fetching data from PIR: %@", error, *MEMORY[0x277CCA450]];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [BCSError errorWithDomain:@"com.apple.businessservices" code:48 userInfo:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end