@interface BCSBloomFilterExtractor
- (void)extractShardsURLsFromBloomFilterURL:(id)l completion:(id)completion;
- (void)extractShardsURLsFromFilterShardURL:(id)l domainShardURL:(id)rL completion:(id)completion;
@end

@implementation BCSBloomFilterExtractor

- (void)extractShardsURLsFromBloomFilterURL:(id)l completion:(id)completion
{
  v35[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v7 = ABSLogCommon();
  v8 = os_signpost_id_generate(v7);

  v9 = ABSLogCommon();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_242072000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Unzip Megashard", "", buf, 2u);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke;
  v29[3] = &unk_278D38A90;
  v31 = v8;
  v11 = completionCopy;
  v30 = v11;
  v12 = MEMORY[0x245D07100](v29);
  v13 = +[BCSPathProvider sharedInstance];
  tempURL = [v13 tempURL];

  if (tempURL)
  {
    v15 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v18 = [v15 stringWithFormat:@"%@_%@", @"bloom_filter", uUIDString];

    v19 = [tempURL URLByAppendingPathComponent:v18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke_12;
    v26[3] = &unk_278D38AE0;
    v28 = v12;
    v20 = v19;
    v27 = v20;
    v21 = MEMORY[0x245D07100](v26);
    v22 = ABSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = v20;
      _os_log_debug_impl(&dword_242072000, v22, OS_LOG_TYPE_DEBUG, "Unzipping megashard to %@", buf, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277D19248]);
    v24 = [v23 initWithInputURL:lCopy outputURL:v20 identifier:0 operation:1 completionBlock:v21 queue:MEMORY[0x277D85CD0]];
    [v24 start];
  }

  else
  {
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"Failed get temp directory";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v18 = [BCSError errorWithDomain:@"com.apple.businessservices" code:100 userInfo:v25];

    (v12)[2](v12, 0, v18);
  }
}

void __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ABSLogCommon();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_242072000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Unzip Megashard", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke_12(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 cleanup];
  if ([v3 didErrorOccur])
  {
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Failed to unzip the megashard";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v5 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v4];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__1;
    v28 = __Block_byref_object_dispose__1;
    v29 = 0;
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CBE868]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __74__BCSBloomFilterExtractor_extractShardsURLsFromBloomFilterURL_completion___block_invoke_18;
    v23[3] = &unk_278D38AB8;
    v23[4] = &v24;
    v9 = [v6 enumeratorAtURL:v7 includingPropertiesForKeys:v8 options:0 errorHandler:v23];

    if (v25[5])
    {
      v10 = ABSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "Error enumerating the unzipped shards on disk", buf, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v11 = [MEMORY[0x277CBEB18] array];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v32 count:16];
      if (v13)
      {
        v14 = *v19;
        do
        {
          v15 = 0;
          do
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v12);
            }

            [v11 addObject:{*(*(&v18 + 1) + 8 * v15++), v18}];
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v18 objects:v32 count:16];
        }

        while (v13);
      }

      if ([v11 count])
      {
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v30 = *MEMORY[0x277CCA450];
        v31 = @"No shards in the unzipped megashard";
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v17 = [BCSError errorWithDomain:@"com.apple.businessservices" code:42 userInfo:v16];

        (*(*(a1 + 40) + 16))();
      }
    }

    _Block_object_dispose(&v24, 8);
  }
}

- (void)extractShardsURLsFromFilterShardURL:(id)l domainShardURL:(id)rL completion:(id)completion
{
  lCopy = l;
  rLCopy = rL;
  completionCopy = completion;
  if (completionCopy)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__BCSBloomFilterExtractor_extractShardsURLsFromFilterShardURL_domainShardURL_completion___block_invoke;
    v11[3] = &unk_278D38B30;
    v12 = lCopy;
    v15 = completionCopy;
    v13 = rLCopy;
    selfCopy = self;
    [(BCSBloomFilterExtractor *)self extractShardsURLsFromBloomFilterURL:v12 completion:v11];
  }
}

void __89__BCSBloomFilterExtractor_extractShardsURLsFromFilterShardURL_domainShardURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && *(a1 + 32))
  {
    v7 = *(*(a1 + 56) + 16);
LABEL_7:
    v7();
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    v7 = *(*(a1 + 56) + 16);
    goto LABEL_7;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__BCSBloomFilterExtractor_extractShardsURLsFromFilterShardURL_domainShardURL_completion___block_invoke_2;
  v10[3] = &unk_278D38B08;
  v9 = *(a1 + 48);
  v12 = *(a1 + 56);
  v11 = v5;
  [v9 extractShardsURLsFromBloomFilterURL:v8 completion:v10];

LABEL_8:
}

@end