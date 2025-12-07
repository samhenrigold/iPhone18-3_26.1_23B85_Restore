@interface ATXHomeScreenPageIconRanker
- (ATXHomeScreenPageIconRanker)init;
- (ATXHomeScreenPageIconRanker)initWithCache:(id)cache;
- (id)_pageForPageIndex:(unint64_t)index;
- (id)iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:(unint64_t)index;
@end

@implementation ATXHomeScreenPageIconRanker

- (ATXHomeScreenPageIconRanker)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHomeScreenPageIconRanker *)self initWithCache:v3];

  return v4;
}

- (ATXHomeScreenPageIconRanker)initWithCache:(id)cache
{
  cacheCopy = cache;
  v9.receiver = self;
  v9.super_class = ATXHomeScreenPageIconRanker;
  v6 = [(ATXHomeScreenPageIconRanker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cache, cache);
  }

  return v7;
}

- (id)iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:(unint64_t)index
{
  v3 = [(ATXHomeScreenPageIconRanker *)self _pageForPageIndex:index];
  v4 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v8 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:-2419200.0];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    v11 = BiomeLibrary();
    v12 = [v11 App];
    inFocus = [v12 InFocus];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v15 = [inFocus atx_publisherFromStartTime:v14];

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_2;
    v69[3] = &unk_1E80C1DE8;
    v57 = v3;
    v16 = v3;
    v70 = v16;
    v17 = v6;
    v71 = v17;
    v18 = v5;
    v72 = v18;
    v19 = v7;
    v73 = v19;
    v58 = v15;
    v20 = [v15 sinkWithCompletion:&__block_literal_global_22 receiveInput:v69];
    v21 = objc_opt_new();
    leafIcons = [v16 leafIcons];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_5;
    v66[3] = &unk_1E80C1E10;
    v23 = v18;
    v67 = v23;
    v24 = v21;
    v68 = v24;
    [leafIcons enumerateObjectsUsingBlock:v66];

    v26 = __atxlog_handle_default(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    allObjects = [v17 allObjects];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_27;
    v64[3] = &unk_1E80C17F0;
    v28 = v17;
    v65 = v28;
    v29 = [allObjects sortedArrayUsingComparator:v64];

    v31 = __atxlog_handle_default(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    leafIcons2 = [v16 leafIcons];
    v33 = [leafIcons2 _pas_mappedArrayWithIndexedTransform:&__block_literal_global_32_0];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v4;
    }

    v36 = v35;

    v38 = __atxlog_handle_default(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    v39 = objc_opt_new();
    v40 = v16;
    v41 = objc_opt_new();
    leafIcons3 = [v40 leafIcons];

    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __folderIndexesForPage_block_invoke;
    v74[3] = &unk_1E80C1E58;
    v75 = v41;
    v43 = v41;
    [leafIcons3 enumerateObjectsUsingBlock:v74];

    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_34;
    v61[3] = &unk_1E80C1218;
    v44 = v19;
    v62 = v44;
    v45 = v39;
    v63 = v45;
    [v43 enumerateIndexesUsingBlock:v61];

    v47 = __atxlog_handle_default(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    allObjects2 = [v44 allObjects];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_36;
    v59[3] = &unk_1E80C17F0;
    v49 = v44;
    v60 = v49;
    v50 = [allObjects2 sortedArrayUsingComparator:v59];

    v52 = __atxlog_handle_default(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    v4 = objc_opt_new();
    v53 = [v45 copy];
    [v4 addObjectsFromArray:v53];

    v54 = [v24 copy];
    [v4 addObjectsFromArray:v54];

    [v4 addObjectsFromArray:v36];
    [v4 addObjectsFromArray:v50];
    v55 = __atxlog_handle_default([v4 addObjectsFromArray:v29]);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      [ATXHomeScreenPageIconRanker iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex:];
    }

    v3 = v57;
  }

  return v4;
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_2(id *a1, void *a2)
{
  v3 = [a2 eventBody];
  if ([v3 starting])
  {
    v4 = [v3 bundleID];
    v5 = [a1[4] leafIcons];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_3;
    v7[3] = &unk_1E80C1DC0;
    v8 = v4;
    v9 = a1[5];
    v10 = a1[6];
    v11 = a1[7];
    v6 = v4;
    [v5 enumerateObjectsUsingBlock:v7];
  }
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 bundleId];
    if ([*(a1 + 32) isEqualToString:v8])
    {
      v9 = *(a1 + 40);
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v9 addObject:v10];

      [*(a1 + 48) addObject:*(a1 + 32)];
      *a4 = 1;

      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_4;
    v11[3] = &unk_1E80C1D98;
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = a3;
    [v7 enumerateApps:v11];
  }

LABEL_7:
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_4(void *a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:a1[4]];

  if (v4)
  {
    v5 = a1[5];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
    [v5 addObject:v6];
  }
}

uint64_t __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v11;
  if (isKindOfClass)
  {
    v7 = [v11 bundleId];
    if ((objc_msgSend_containsObject_(*(a1 + 32)) & 1) == 0)
    {
      v8 = *(a1 + 40);
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      [v8 addObject:v9];
    }

    v6 = v11;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

uint64_t __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

id __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_34(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  if ((objc_msgSend_containsObject_(*(a1 + 32)) & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __88__ATXHomeScreenPageIconRanker_iconIndexesInAscendingOrderOfHistoricalUsageForPageIndex___block_invoke_36(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (id)_pageForPageIndex:(unint64_t)index
{
  v23 = *MEMORY[0x1E69E9840];
  cache = self->_cache;
  v21 = 0;
  v5 = [(ATXHomeScreenConfigCache *)cache loadHomeScreenAndTodayPageConfigurationsWithError:&v21];
  v6 = v21;
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_default(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenPageIconRanker _pageForPageIndex:];
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 pageIndex] == index)
        {
          v15 = v14;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (void)_pageForPageIndex:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, v0, OS_LOG_TYPE_ERROR, "ATXHomeScreenPageIconRanker: Unable to retrieve home screen config: %@", v1, 0xCu);
}

@end