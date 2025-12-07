uint64_t sub_25BF23210()
{
  swift_unknownObjectRelease();

  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25BF2326C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BF232A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BF2344C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBED770, &unk_25BF73C00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 112);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 156));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25BF23518(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBED770, &unk_25BF73C00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 112);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 156)) = (a2 - 1);
  }

  return result;
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id NTSharedLog(uint64_t a1)
{
  if (NTSharedLog_once != -1)
  {
    NTSharedLog_cold_1();
  }

  v2 = NTSharedLog_result;

  return v2;
}

uint64_t __NTSharedLog_block_invoke()
{
  v0 = os_log_create("com.apple.news", "NewsToday");
  v1 = NTSharedLog_result;
  NTSharedLog_result = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void NTDeleteOnDiskAssets(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTDeleteOnDiskAssets_cold_1();
  }

  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __NTDeleteOnDiskAssets_block_invoke;
  v4[3] = &unk_2799829A8;
  v5 = v2;
  v3 = v2;
  [v1 enumerateObjectsUsingBlock:v4];
}

void __NTDeleteOnDiskAssets_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = NTSharedLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25BF21000, v4, OS_LOG_TYPE_INFO, "Deleting on disk asset with assetFileURL: %@", &v5, 0xCu);
  }

  [*(a1 + 32) removeItemAtURL:v3 error:0];
}

id NTPBTodaySectionConfigGenerateArticle(void *a1, BOOL *a2)
{
  v3 = a1;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30708]];
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTPBTodaySectionConfigGenerateArticle_cold_1();
  }

  [v4 setArticleID:v5];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30710]];
  [v4 setDisplayDateString:v6];
  v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30740]];
  [v4 setStoryType:v7];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30738]];
  v9 = v8;
  if (v8)
  {
    v14 = 0;
    v10 = NTPBTodaySectionConfigGenerateArticle(v8, &v14);
    if (v14)
    {
      [v4 setPaidArticle:v10];
    }
  }

  v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30748]];
  [v4 setTitle:v11];
  v12 = [v3 objectForKeyedSubscript:*MEMORY[0x277D30700]];
  [v4 setActionURLString:v12];

  if (a2)
  {
    *a2 = v5 != 0;
  }

  return v4;
}

id NTPBTodaySectionConfigGenerateArticles(void *a1, _BYTE *a2)
{
  v3 = a1;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTPBTodaySectionConfigGenerateArticles_cold_1();
  }

  v4 = objc_opt_new();
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NTPBTodaySectionConfigGenerateArticles_block_invoke;
  v7[3] = &unk_279982B78;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [v3 enumerateObjectsUsingBlock:v7];
  if (a2)
  {
    *a2 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

void sub_25BF28198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NTPBTodaySectionConfigGenerateArticles_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  v6 = NTPBTodaySectionConfigGenerateArticle(a2, &v8);
  [*(a1 + 32) addObject:v6];
  v7 = v8;
  *(*(*(a1 + 40) + 8) + 24) &= v8;
  if (!v7)
  {
    *a4 = 1;
  }
}

id NTPBTodaySectionConfigGenerateItems(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTPBTodaySectionConfigGenerateItems_cold_1();
  }

  v7 = objc_opt_new();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __NTPBTodaySectionConfigGenerateItems_block_invoke;
  v10[3] = &unk_279982B78;
  v8 = v7;
  v11 = v8;
  v12 = &v13;
  [v5 enumerateObjectsUsingBlock:v10];
  if (a3)
  {
    *a3 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_25BF28364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NTPBTodaySectionConfigGenerateItems_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_opt_new();
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D307D0]];
  if ([v8 isEqualToString:*MEMORY[0x277D307C8]])
  {
    [v7 setItemType:0];
    v10 = 0;
    v9 = NTPBTodaySectionConfigGenerateArticle(v6, &v10);
    [v7 setArticle:v9];

    LOBYTE(v9) = v10;
    [*(a1 + 32) addObject:v7];
    *(*(*(a1 + 40) + 8) + 24) &= v9;
    if ((v9 & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(v2 + 28) = 2114;
  *(v2 + 30) = result;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, v4, 0x26u);
}

id NNSetupCompanionSyncLog(uint64_t a1)
{
  if (NNSetupCompanionSyncLog_onceToken != -1)
  {
    NNSetupCompanionSyncLog_cold_1();
  }

  v2 = NNSetupCompanionSyncLog_log;

  return v2;
}

uint64_t __NNSetupCompanionSyncLog_block_invoke()
{
  v0 = os_log_create("com.apple.nanonews", "CompanionSync");
  v1 = NNSetupCompanionSyncLog_log;
  NNSetupCompanionSyncLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id NNNanoSoloLog(uint64_t a1)
{
  if (NNNanoSoloLog_onceToken[0] != -1)
  {
    NNNanoSoloLog_cold_1();
  }

  v2 = NNNanoSoloLog_log;

  return v2;
}

uint64_t __NNNanoSoloLog_block_invoke()
{
  v0 = os_log_create("com.apple.nanonews", "Solo");
  v1 = NNNanoSoloLog_log;
  NNNanoSoloLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id NNHeadlineSyncableResultFromResult(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 sync_expirationDate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v5 forKeyedSubscript:@"sync_expirationDate"];
  }

  v6 = [v3 sync_sections];
  v7 = [v6 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v4;
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (![v14 conformsToProtocol:&unk_286DAE320])
          {
            v4 = v20;
            goto LABEL_14;
          }

          v15 = NNHeadlineSyncableSectionFromSection(v14, a2);
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = [v8 copy];
    v4 = v20;
    [v20 setObject:v9 forKeyedSubscript:@"sync_sections"];
LABEL_14:
  }

  v16 = [v3 sync_headlineCount];
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
    [v4 setObject:v17 forKeyedSubscript:@"sync_headlineCount"];
  }

  v18 = [v4 copy];

  return v18;
}

id NNHeadlineSyncableSectionFromSection(void *a1, uint64_t a2)
{
  v2 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 sync_identifier];
  v6 = [v5 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v6 forKeyedSubscript:@"sync_identifier"];
  }

  v7 = [v3 sync_name];
  v8 = [v7 copy];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    isKindOfClass = [v4 setObject:v8 forKeyedSubscript:@"sync_name"];
  }

  v10 = NNSetupCompanionSyncLog(isKindOfClass);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v37 = v8;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_INFO, "Creating Syncable Section with name=%@ and ID = %@…", buf, 0x16u);
  }

  v11 = [v3 sync_type];
  v12 = v11;
  if (v11 > 5)
  {
    v13 = NNSetupCompanionSyncLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = v3;
      v38 = 2048;
      v39 = v12;
      _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_INFO, "Didn't know what this section type was: %@ %lu", buf, 0x16u);
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v4 setObject:v13 forKeyedSubscript:@"sync_type"];
  }

  v14 = [v3 sync_colorHexString];
  v15 = [v14 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setObject:v15 forKeyedSubscript:@"sync_colorHexString"];
  }

  v16 = [v3 sync_headlines];
  v17 = [v16 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v15;
    v29 = v8;
    v30 = v6;
    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v17, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v31 + 1) + 8 * v23);
        if (![v24 conformsToProtocol:&unk_286DAE380])
        {
          break;
        }

        v25 = NNHeadlineSyncableResultFromHeadline(v24, v2);
        [v18 addObject:v25];

        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v21)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:

      v19 = [v18 copy];
      [v4 setObject:v19 forKeyedSubscript:@"sync_headlines"];
    }

    v8 = v29;
    v6 = v30;
    v15 = v28;
  }

  v26 = [v4 copy];

  return v26;
}

id NNHeadlineSyncableResultFromHeadline(void *a1, int a2)
{
  v3 = a1;
  v4 = [v3 sync_identifier];
  v5 = [v3 sync_title];
  v6 = [v3 sync_excerpt];
  v15 = a2;
  if (a2)
  {
    v7 = [v3 sync_thumbnailImageData];
    v8 = [v3 sync_publisherLogoImageData];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [v3 sync_publisherName];
  v10 = [v3 sync_publisherIdentifier];
  v11 = [v3 sync_NewsURLString];
  v12 = v4;
  v13 = NNCreateHeadlineSyncableHeadline(v4, v5, v6, v7, v8, v9, v10, v11);

  if (v15)
  {
  }

  return v13;
}

id NNCreateHeadlineSyncableHeadline(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a2;
  v39 = a3;
  v16 = a4;
  v17 = a5;
  v38 = a6;
  v37 = a7;
  v18 = a8;
  v19 = MEMORY[0x277CBEB38];
  v20 = a1;
  v21 = [v19 dictionary];
  v22 = [v20 copy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v22 forKeyedSubscript:@"sync_identifier"];
  }

  v33 = v22;
  v36 = v15;
  v23 = [v15 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v23 forKeyedSubscript:@"sync_title"];
  }

  v24 = [v39 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v24 forKeyedSubscript:@"sync_excerpt"];
  }

  v34 = v18;
  v25 = [v18 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v25 forKeyedSubscript:@"sync_NewsURLString"];
  }

  v35 = v16;
  v26 = [v16 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v26 forKeyedSubscript:@"sync_thumbnailImageData"];
  }

  v27 = v17;
  v28 = [v17 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v28 forKeyedSubscript:@"sync_publisherLogoImageData"];
  }

  v29 = [v38 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v29 forKeyedSubscript:@"sync_publisherName"];
  }

  v30 = [v37 copy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setObject:v30 forKeyedSubscript:@"sync_publisherIdentifier"];
  }

  v31 = [v21 copy];

  return v31;
}

void sub_25BF2F220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NTCatchUpOperationArticleIDsRequest *NTArticleIDsRequestWithArticles(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTArticleIDsRequestWithArticles_cold_1();
  }

  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __NTArticleIDsRequestWithArticles_block_invoke;
  v12 = &unk_279982D00;
  v13 = v2;
  v14 = v3;
  v4 = v3;
  v5 = v2;
  [v1 enumerateObjectsUsingBlock:&v9];
  v6 = [NTCatchUpOperationArticleIDsRequest alloc];
  v7 = [(NTCatchUpOperationArticleIDsRequest *)v6 initWithArticleIDs:v5 overrideHeadlineMetadataByArticleID:v4, v9, v10, v11, v12];

  return v7;
}

void __NTArticleIDsRequestWithArticles_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 articleID];
  [*(a1 + 32) addObject:v4];
  [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
}

uint64_t FCConsumedArticleFilterMethodForReadArticlesFilterMethod(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 0);
  }
}

uint64_t FCConsumedArticleFilterMethodForSeenArticlesFilterMethod(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

void sub_25BF30AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BF31DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v48 - 240), 8);
  _Block_object_dispose((v48 - 192), 8);
  _Block_object_dispose((v48 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25BF393BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_25BF3B308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BF3B458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25BF3BCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NTDesiredHeadlineFieldAssetOptionsWithAssetSizes(unint64_t a1, uint64_t a2)
{
  if (a1 > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = qword_25BF73858[a1];
  }

  v3 = v2 | 0x20;
  v4 = v2 | 0x80020;
  if (!a2)
  {
    v2 |= 0x10uLL;
  }

  if (a2 == 1)
  {
    v2 = v4;
  }

  if (a2 == 2)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

void sub_25BF41398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void NTPossiblySimulateCrashWithError(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTPossiblySimulateCrashWithError_cold_1();
  }

  v2 = FCShouldErrorBeExcludedFromSimulatedCrashes();
  if ((v2 & 1) == 0)
  {
    v3 = NTSharedLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v1 description];
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_25BF21000, v3, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
    }

    v6 = NTSharedLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v1 description];
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_25BF21000, v6, OS_LOG_TYPE_INFO, "%@", &v14, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v8 setNumberStyle:5];
    v9 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
    v10 = NTSharedLog([v8 setLocale:v9]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = [v1 domain];
      v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "code")}];
      v13 = [v8 stringFromNumber:v12];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_25BF21000, v10, OS_LOG_TYPE_FAULT, "%{public}@-%{public}@", &v14, 0x16u);
    }
  }
}

double NTHeadlineThumbnailLengthFromThumbnailSizePreset(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 3)
  {
    return dbl_25BF73878[a1];
  }

  return result;
}

double NTHeadlineSourceNameImageHeightFromNameImageSizePreset(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 2)
  {
    return dbl_25BF73898[a1];
  }

  return result;
}

id ColorPoint(void *a1)
{
  v1 = MEMORY[0x277D354E8];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D30600]];
  [v4 doubleValue];
  [v3 setX:?];

  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D30608]];

  [v5 doubleValue];
  [v3 setY:?];

  return v3;
}

id ColorStop(void *a1)
{
  v1 = MEMORY[0x277D35460];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D305F0]];
  [v3 setColor:v4];

  v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D305E0]];

  [v3 setLocation:{objc_msgSend(v5, "intValue")}];

  return v3;
}

id ColorGradientWithJSONDictionary(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277D35448]);
  v3 = [v1 objectForKeyedSubscript:*MEMORY[0x277D30610]];
  v4 = ColorPoint(v3);

  v5 = [v1 objectForKeyedSubscript:*MEMORY[0x277D305F8]];
  v6 = ColorPoint(v5);

  v7 = [v1 objectForKeyedSubscript:*MEMORY[0x277D305E8]];
  v8 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = ColorStop(*(*(&v16 + 1) + 8 * i));
        [v8 addObject:{v14, v16}];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v2 setStartPoint:v4];
  [v2 setEndPoint:v6];
  [v2 setColorStops:v8];

  return v2;
}

id ColorGradientPairWithJSONDictionary(void *a1)
{
  v1 = MEMORY[0x277D35450];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D30670]];
  v5 = ColorGradientWithJSONDictionary(v4);

  v6 = [v2 objectForKeyedSubscript:*MEMORY[0x277D30668]];

  v7 = ColorGradientWithJSONDictionary(v6);

  [v3 setLight:v5];
  [v3 setDark:v7];

  return v3;
}

id ColorPairWithJSONDictionary(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x277D35458];
    v2 = a1;
    v3 = objc_alloc_init(v1);
    v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D30690]];
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x277D30688]];

    [v3 setLight:v4];
    [v3 setDark:v5];
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_25BF44F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_25BF471CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NTTodaySectionReadArticlesFilterMethodToNSString(int a1)
{
  v1 = @"None";
  if (!a1)
  {
    v1 = @"Version";
  }

  if (a1 == 1)
  {
    return @"ArticleID";
  }

  else
  {
    return v1;
  }
}

__CFString *NTTodaySectionSeenArticlesFilterMethodToNSString(int a1)
{
  v1 = @"None";
  if (a1 == 2)
  {
    v1 = @"Version";
  }

  if (a1 == 1)
  {
    return @"ArticleID";
  }

  else
  {
    return v1;
  }
}

id NTAssetFileURL(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTAssetFileURL_cold_1();
  }

  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];
  v4 = [v1 URLByAppendingPathComponent:v3];

  return v4;
}

id NTAssetFileURLWithData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTAssetFileURLWithData_cold_1();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTAssetFileURLWithData_cold_2();
  }

LABEL_6:
  v5 = NTAssetFileURL(v4);
  [v3 writeToURL:v5 atomically:1];

  return v5;
}

id NTAssetFileURLWithFile(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTAssetFileURLWithFile_cold_1();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else if (v4)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTAssetFileURLWithFile_cold_2();
  }

LABEL_6:
  v5 = NTAssetFileURL(v4);
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  [v6 copyItemAtURL:v3 toURL:v5 error:0];

  return v5;
}

BOOL NTIsUserInExperiment(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = vcvtmd_u64_f64(a3 * 100.0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __NTIsUserInExperiment_block_invoke;
  v12[3] = &unk_2799838F0;
  v13 = v5;
  v14 = 100;
  v7 = v5;
  v8 = __NTIsUserInExperiment_block_invoke(v12);
  v10 = v8 >= vcvtmd_u64_f64(a2 * 100.0) && v8 < v6;

  return v10;
}

void *__NTIsUserInExperiment_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return ([result hash] % *(a1 + 40));
  }

  return result;
}

unint64_t NTSectionFeedItemsLimit(int a1, void *a2, unint64_t a3, double a4)
{
  v7 = a2;
  if (!v7 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTSectionFeedItemsLimit_cold_1();
  }

  if (a4 < 0.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTSectionFeedItemsLimit_cold_2();
  }

  v8 = 0.0;
  if (a1)
  {
    [v7 sectionTitleSlotCost];
  }

  v9 = a4 - v8;
  [v7 sectionFooterSlotCost];
  v11 = v9 - v10;
  [v7 headlineSlotCost];
  v13 = v11 - v12;
  if (v13 >= 0.0)
  {
    [v7 headlineSlotCost];
    v14 = (floor(v13 / v15) + 1.0);
  }

  else
  {
    v14 = 0;
  }

  if (v14 < a3)
  {
    a3 = v14;
  }

  return a3;
}

id NTCKRecordFromArticleJSONDictionary(void *a1)
{
  v1 = *MEMORY[0x277D305C0];
  v2 = a1;
  v3 = NTNewsEdgeArticleRecordOverrideKeys(v2);
  v4 = NTNewsEdgeArticleEncodedFields(v3);
  v5 = NTNewsEdgeArticleDateFields(v4);
  v6 = NTCKRecordFromJSONDictionary(v2, v1, v3, v4, v5);

  return v6;
}

id NTCKRecordFromJSONDictionary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = FCAppConfigurationStringValue();
  v15 = FCAppConfigurationStringValue();
  v16 = FCAppConfigurationStringValue();
  v17 = 0;
  if (v14 && v15)
  {
    v18 = objc_alloc(MEMORY[0x277CBC5F8]);
    v24 = [v18 initWithZoneName:*MEMORY[0x277CBC060] ownerName:*MEMORY[0x277CBBF28]];
    v19 = v10;
    v20 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v14 zoneID:v24];
    v25 = v19;
    v21 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:v19 recordID:v20];
    [v21 setEtag:v15];
    if (v16)
    {
      [MEMORY[0x277CBEAA8] fc_dateFromStringWithISO8601Format:v16];
    }

    else
    {
      [MEMORY[0x277CBEAA8] date];
    }
    v22 = ;
    [v21 setModificationDate:v22];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __NTCKRecordFromJSONDictionary_block_invoke;
    v26[3] = &unk_279983970;
    v27 = v11;
    v28 = v12;
    v17 = v21;
    v29 = v17;
    v30 = v13;
    [v9 enumerateKeysAndObjectsUsingBlock:v26];

    v10 = v25;
  }

  return v17;
}

id NTNewsEdgeArticleRecordOverrideKeys(uint64_t a1)
{
  if (NTNewsEdgeArticleRecordOverrideKeys_onceToken != -1)
  {
    NTNewsEdgeArticleRecordOverrideKeys_cold_1();
  }

  v2 = NTNewsEdgeArticleRecordOverrideKeys_result;

  return v2;
}

id NTNewsEdgeArticleEncodedFields(uint64_t a1)
{
  if (NTNewsEdgeArticleEncodedFields_onceToken != -1)
  {
    NTNewsEdgeArticleEncodedFields_cold_1();
  }

  v2 = NTNewsEdgeArticleEncodedFields_result;

  return v2;
}

id NTNewsEdgeArticleDateFields(uint64_t a1)
{
  if (NTNewsEdgeArticleDateFields_onceToken != -1)
  {
    NTNewsEdgeArticleDateFields_cold_1();
  }

  v2 = NTNewsEdgeArticleDateFields_result;

  return v2;
}

id NTCKRecordFromTagJSONDictionary(void *a1)
{
  v1 = *MEMORY[0x277D30660];
  v2 = a1;
  v3 = NTNewsEdgeTagRecordOverrideKeys(v2);
  v4 = NTNewsEdgeTagEncodedFields(v3);
  v5 = NTCKRecordFromJSONDictionary(v2, v1, v3, v4, 0);

  return v5;
}

id NTNewsEdgeTagRecordOverrideKeys(uint64_t a1)
{
  if (NTNewsEdgeTagRecordOverrideKeys_onceToken != -1)
  {
    NTNewsEdgeTagRecordOverrideKeys_cold_1();
  }

  v2 = NTNewsEdgeTagRecordOverrideKeys_result;

  return v2;
}

id NTNewsEdgeTagEncodedFields(uint64_t a1)
{
  if (NTNewsEdgeTagEncodedFields_onceToken != -1)
  {
    NTNewsEdgeTagEncodedFields_cold_1();
  }

  v2 = NTNewsEdgeTagEncodedFields_result;

  return v2;
}

id NTCKRecordFromArticleListJSONDictionary(void *a1)
{
  v1 = *MEMORY[0x277D305A8];
  v2 = a1;
  v3 = NTNewsEdgeArticleListRecordOverrideKeys(v2);
  v4 = NTCKRecordFromJSONDictionary(v2, v1, v3, 0, 0);

  return v4;
}

id NTNewsEdgeArticleListRecordOverrideKeys(uint64_t a1)
{
  if (NTNewsEdgeArticleListRecordOverrideKeys_onceToken != -1)
  {
    NTNewsEdgeArticleListRecordOverrideKeys_cold_1();
  }

  v2 = NTNewsEdgeArticleListRecordOverrideKeys_result;

  return v2;
}

void __NTCKRecordFromJSONDictionary_block_invoke(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = [a1[4] objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  v12 = [a1[5] containsObject:v6];
  if (v12 & 1) != 0 || (v13 = a1[5], v18[0] = MEMORY[0x277D85DD0], v18[1] = 3221225472, v18[2] = __NTCKRecordFromJSONDictionary_block_invoke_2, v18[3] = &unk_279983948, v3 = &v19, v14 = v6, v19 = v14, ([v13 fc_containsObjectPassingTest:v18]))
  {
    v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v7 options:0];
    [a1[6] setObject:v15 forKeyedSubscript:v11];

    if (v12)
    {
      goto LABEL_14;
    }
  }

  else if ([a1[7] containsObject:v14])
  {
    v16 = [MEMORY[0x277CBEAA8] fc_dateFromStringWithISO8601Format:v7];
    [a1[6] setObject:v16 forKeyedSubscript:v11];
  }

  else if (v7)
  {
    v17 = [MEMORY[0x277CBEB68] null];

    if (v17 != v7)
    {
      [a1[6] setObject:v7 forKeyedSubscript:v11];
    }
  }

LABEL_14:
}

void __NTNewsEdgeArticleRecordOverrideKeys_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"scoreTopicTagIDs";
  v3[0] = *MEMORY[0x277D305D0];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = NTNewsEdgeArticleRecordOverrideKeys_result;
  NTNewsEdgeArticleRecordOverrideKeys_result = v0;
}

void __NTNewsEdgeArticleListRecordOverrideKeys_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"articleIds";
  v3[0] = *MEMORY[0x277D305A0];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = NTNewsEdgeArticleListRecordOverrideKeys_result;
  NTNewsEdgeArticleListRecordOverrideKeys_result = v0;
}

void __NTNewsEdgeTagRecordOverrideKeys_block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"publisherPaidDescriptionStrings";
  v3[0] = *MEMORY[0x277D30658];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = NTNewsEdgeTagRecordOverrideKeys_result;
  NTNewsEdgeTagRecordOverrideKeys_result = v0;
}

void __NTNewsEdgeArticleEncodedFields_block_invoke()
{
  v6[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277D305C8];
  v6[0] = *MEMORY[0x277D30598];
  v6[1] = v1;
  v2 = *MEMORY[0x277D30588];
  v6[2] = *MEMORY[0x277D30590];
  v6[3] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v0 setWithArray:v3];
  v5 = NTNewsEdgeArticleEncodedFields_result;
  NTNewsEdgeArticleEncodedFields_result = v4;
}

void __NTNewsEdgeArticleDateFields_block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = *MEMORY[0x277D305B8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = NTNewsEdgeArticleDateFields_result;
  NTNewsEdgeArticleDateFields_result = v2;
}

void __NTNewsEdgeTagEncodedFields_block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = *MEMORY[0x277D30648];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = NTNewsEdgeTagEncodedFields_result;
  NTNewsEdgeTagEncodedFields_result = v2;
}

id NTHeadlineThumbnailFromFCHeadline(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = a1;
  if (!v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTHeadlineThumbnailFromFCHeadline_cold_1();
  }

  v6 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = [v5 thumbnailWidgetHQ];
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_14;
      }

      v7 = FCThumbnailForHeadlineMinimumSizeInPixels();
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_14;
    }

    v7 = [v5 thumbnailWidget];
  }

  else
  {
    v7 = [v5 thumbnailWidgetLQ];
  }

  v6 = v7;
LABEL_14:

  return v6;
}

id NTHeadlineSourceNameImageMaskAssetHandleFromFCHeadline(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTHeadlineSourceNameImageMaskAssetHandleFromFCHeadline_cold_1();
  }

  v4 = [v3 sourceChannel];
  v5 = v4;
  switch(a2)
  {
    case 2:
      goto LABEL_10;
    case 1:
      v7 = [v4 nameImageCompactAssetHandle];

      if (v7)
      {
        v6 = [v5 nameImageCompactAssetHandle];
        goto LABEL_11;
      }

LABEL_10:
      v6 = [v5 nameImageMaskWidgetHQAssetHandle];
      goto LABEL_11;
    case 0:
      v6 = [v4 nameImageMaskWidgetLQAssetHandle];
LABEL_11:
      v8 = v6;
      goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

id NTHeadlineAdElementFromFCHeadline(void *a1)
{
  v1 = a1;
  if (!v1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTHeadlineAdElementFromFCHeadline_cold_1();
  }

  v2 = objc_opt_new();
  v3 = [v1 articleID];
  [v2 setArticleID:v3];

  v4 = [v1 primaryAudience];
  [v2 setArticleRating:v4];

  [v2 setPaidArticle:{objc_msgSend(v1, "isPaid")}];
  [v2 setSponsoredArticle:{objc_msgSend(v1, "isSponsored")}];
  [v2 setDraftArticle:{objc_msgSend(v1, "isDraft")}];
  v5 = [v1 sourceChannel];
  v6 = [v5 primaryAudience];
  [v2 setChannelRating:v6];

  v7 = [v1 sourceChannel];
  v8 = [v7 identifier];
  [v2 setChannelID:v8];

  v9 = [v1 iAdCategories];
  v10 = [v9 mutableCopy];
  [v2 setArticleIAdCategories:v10];

  v11 = [v1 iAdKeywords];
  v12 = [v11 mutableCopy];
  [v2 setArticleIAdKeywords:v12];

  v13 = [v1 iAdSectionIDs];
  v14 = [v13 mutableCopy];
  [v2 setArticleIAdSectionIDs:v14];

  v15 = [v1 sourceChannel];
  v16 = [v15 iAdKeywords];
  v17 = [v16 mutableCopy];
  [v2 setChannelIAdKeywords:v17];

  v18 = [v1 sourceChannel];
  v19 = [v18 iAdCategories];
  v20 = [v19 mutableCopy];
  [v2 setChannelIAdCategories:v20];

  v21 = [v1 sourceChannel];
  [v2 setChannelContentProviderID:{objc_msgSend(v21, "contentProvider")}];

  return v2;
}

id NTHeadlineAnalyticsElementFromFCHeadline(void *a1, int a2)
{
  v3 = a1;
  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTHeadlineAnalyticsElementFromFCHeadline_cold_1();
  }

  v4 = [v3 articleID];
  v5 = MEMORY[0x25F882C50](v3);
  if (a2 == 2)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%lld", v4, v5];
    goto LABEL_8;
  }

  if (a2 == 1)
  {
    v6 = [v4 copy];
LABEL_8:
    v7 = v6;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v8 = objc_opt_new();
  [v8 setArticleID:v4];
  [v8 setArticleVersion:v5];
  [v8 setNeedsSeenStateTracking:v7 != 0];
  v9 = [v3 sourceChannel];
  v10 = [v9 identifier];
  [v8 setChannelID:v10];

  [v8 setPreseenCountTrackingIdentifier:v7];

  return v8;
}

id NTHeadlineBackingElementFromFCHeadline(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 backingArticleRecordData];
    [v2 setArticleRecordData:v3];
  }

  v4 = [v1 sourceChannel];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [v1 sourceChannel];
    v7 = [v6 backingTagRecordData];
    [v2 setSourceChannelRecordData:v7];
  }

  return v2;
}

NTHeadline *NTHeadlineFromFCHeadline(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, double a9, double a10, void *a11, void *a12, void *a13)
{
  v21 = a1;
  v99 = a2;
  v95 = a3;
  v98 = a6;
  v97 = a7;
  v96 = a8;
  v94 = a11;
  v22 = a12;
  v23 = a13;
  if (!v21 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NTHeadlineFromFCHeadline_cold_1();
  }

  v24 = [NTHeadline alloc];
  v25 = [v21 identifier];
  v26 = [(NTHeadline *)v24 initWithIdentifier:v25];

  v27 = [v21 title];
  [(NTHeadline *)v26 setTitle:v27];

  v28 = [v21 titleCompact];
  [(NTHeadline *)v26 setTitleCompact:v28];

  v29 = [v21 shortExcerpt];
  [(NTHeadline *)v26 setShortExcerpt:v29];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __NTHeadlineFromFCHeadline_block_invoke;
  aBlock[3] = &unk_2799839C0;
  v106 = 1;
  v93 = v23;
  v104 = v93;
  v92 = v22;
  v105 = v92;
  v30 = _Block_copy(aBlock);
  v31 = NTHeadlineThumbnailFromFCHeadline(v21, a4, a9, a10);
  v32 = [v31 thumbnailAssetHandle];

  v33 = v30[2](v30, v32);
  [(NTHeadline *)v26 setThumbnailRemoteURL:v33];

  v89 = v32;
  v34 = [v32 uniqueKey];
  [(NTHeadline *)v26 setThumbnailIdentifier:v34];

  [(NTHeadline *)v26 setThumbnailSizePreset:a4];
  if (a4 == 3)
  {
    [v21 thumbnailFocalFrame];
  }

  else
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 1.0;
    v38 = 1.0;
  }

  [(NTHeadline *)v26 setThumbnailFocalFrame:v35, v36, v37, v38];
  NTHeadlineSourceNameImageMaskAssetHandleFromFCHeadline(v21, a5);
  v88 = v91 = v30;
  v39 = (v30[2])(v30);
  [(NTHeadline *)v26 setSourceNameImageRemoteURL:v39];

  v40 = [v21 sourceChannel];
  v41 = [v40 theme];
  [v41 bannerImageScale];
  v43 = v42;

  if (fabs(v43) >= 0.1)
  {
    v44 = v43;
  }

  else
  {
    v44 = 1.0;
  }

  [(NTHeadline *)v26 setSourceNameImageScale:v44];
  v45 = [v40 theme];
  v46 = [v45 bannerImageForMask];
  v47 = [v46 assetHandle];
  v48 = [v47 remoteURL];
  [(NTHeadline *)v26 setCompactSourceNameImageRemoteURL:v48];

  v49 = [v40 name];
  v50 = v49;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = &stru_286D90198;
  }

  [(NTHeadline *)v26 setSourceName:v51];

  v52 = [v40 nameCompact];
  [(NTHeadline *)v26 setCompactSourceName:v52];

  v53 = [v21 sourceChannel];
  v54 = [v53 identifier];
  [(NTHeadline *)v26 setSourceTagID:v54];

  v55 = [v21 language];
  [(NTHeadline *)v26 setLanguage:v55];

  v56 = [v21 displayDate];
  if (v56)
  {
    [(NTHeadline *)v26 setAgeDisplayDate:v56];
  }

  else
  {
    v57 = [v21 publishDate];
    [(NTHeadline *)v26 setAgeDisplayDate:v57];
  }

  if (v99)
  {
    [(NTHeadline *)v26 setNewsURL:v99];
  }

  else
  {
    v58 = [v21 routeURL];
    if (v58)
    {
      [(NTHeadline *)v26 setNewsURL:v58];
    }

    else
    {
      v59 = MEMORY[0x277CBEBC0];
      v60 = [v21 articleID];
      v61 = [v59 fc_NewsURLForArticleID:v60 hardPaywall:1];
      [(NTHeadline *)v26 setNewsURL:v61];
    }
  }

  v62 = [v21 storyStyle];
  v63 = [v21 storyStyle];
  v64 = [v63 label];
  [(NTHeadline *)v26 setStoryType:v64];

  v65 = [v62 foreground_color];
  v66 = [v65 hex];
  [(NTHeadline *)v26 setStoryTypeColorLight:v66];

  v67 = [v62 dark_style_foreground_color];
  v68 = [v67 hex];
  [(NTHeadline *)v26 setStoryTypeColorDark:v68];

  v69 = [v21 topicIDs];
  [(NTHeadline *)v26 setTopicIDs:v69];

  [(NTHeadline *)v26 setAnalyticsElement:v97];
  [(NTHeadline *)v26 setAdElement:v98];
  [(NTHeadline *)v26 setBackingElement:v96];
  [(NTHeadline *)v26 setSupportsSavingForLater:1];
  -[NTHeadline setHiddenFromAutoFavorites:](v26, "setHiddenFromAutoFavorites:", [v21 isHiddenFromAutoFavorites]);
  v70 = [v21 contentWithContext:v95];
  v71 = [v70 anfContent];

  v72 = [v71 anfDocumentAssetHandles];
  v73 = [v72 firstObject];
  v74 = [v73 remoteURL];
  [(NTHeadline *)v26 setFlintDocumentURL:v74];

  v75 = [v21 videoCallToActionTitle];
  [(NTHeadline *)v26 setVideoCallToActionTitle:v75];

  v76 = [v21 videoCallToActionURL];
  [(NTHeadline *)v26 setVideoCallToActionURL:v76];

  v77 = objc_opt_new();
  v78 = [v94 purchasedTagIDs];
  v79 = [v21 sourceChannelID];
  v80 = [v78 containsObject:v79];

  v100[0] = MEMORY[0x277D85DD0];
  v100[1] = 3221225472;
  v100[2] = __NTHeadlineFromFCHeadline_block_invoke_21;
  v100[3] = &unk_2799839E8;
  v102 = v80;
  v101 = v77;
  v81 = v77;
  [v21 enumerateTopicCohortsWithBlock:v100];
  v82 = [NTHeadlinePersonalizationMetadata alloc];
  v83 = [v21 articleID];
  v84 = [v21 publisherID];
  v85 = [(NTHeadlinePersonalizationMetadata *)v82 initWithArticleID:v83 publisherID:v84 scoredTopicIDs:v81];
  [(NTHeadline *)v26 setPersonalizationMetadata:v85];

  v86 = [v94 bundleSubscription];
  -[NTHeadline setIsBundlePaid:](v26, "setIsBundlePaid:", [v86 containsHeadline:v21]);

  -[NTHeadline setAiGenerated:](v26, "setAiGenerated:", [v21 isAIGenerated]);

  return v26;
}

id __NTHeadlineFromFCHeadline_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 remoteURL];
  v5 = [v3 filePath];

  if (*(a1 + 48) == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        if (*(a1 + 40))
        {
          v7 = [v6 objectForKeyedSubscript:v4];

          if (v7)
          {
            goto LABEL_16;
          }

          v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
          v9 = NTAssetFileURLWithFile(v8, *(a1 + 40));
          [*(a1 + 32) setObject:v9 forKeyedSubscript:v4];

          v11 = NTSharedLog(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1 + 40);
            v16 = 138412802;
            v17 = v4;
            v18 = 2112;
            v19 = v5;
            v20 = 2112;
            v21 = v12;
            _os_log_impl(&dword_25BF21000, v11, OS_LOG_TYPE_INFO, "Copying asset with remoteURL: %@ and assetInternalFilePath: %@ to assetsDirectoryFileURL: %@", &v16, 0x20u);
          }

          goto LABEL_12;
        }
      }
    }

    v14 = NTSharedLog(v6);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_25BF21000, v14, OS_LOG_TYPE_INFO, "Failed to copy asset with remoteURL: %@, missing internalFilePath", &v16, 0xCu);
    }
  }

  else if (v5)
  {
    v13 = [*(a1 + 32) objectForKeyedSubscript:v4];

    if (!v13)
    {
      v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:v4];
LABEL_12:
    }
  }

LABEL_16:

  return v4;
}

void __NTHeadlineFromFCHeadline_block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v13 = [a3 cohortWithPreferredType:v5];
  [v13 impressions];
  v8 = v7;
  v9 = MEMORY[0x277CCABB0];
  v10 = 0.0;
  if (v8 != 0.0)
  {
    [v13 clicks];
    v10 = v11 / v8;
  }

  v12 = [v9 numberWithDouble:v10];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:v6];
}

void sub_25BF4C184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v63 - 232), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_25BF51B7C()
{
  sub_25BF6CD10();
  MEMORY[0x25F882B70](0);
  return sub_25BF6CD30();
}

uint64_t sub_25BF51BE8(uint64_t a1)
{
  sub_25BF6CD10();
  MEMORY[0x25F882B70](0);
  return sub_25BF6CD30();
}

id ProxyForYouService.__allocating_init(feedPersonalizer:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___NTProxyForYouService_feedPersonalizer] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProxyForYouService.init(feedPersonalizer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___NTProxyForYouService_feedPersonalizer] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t ProxyForYouService.fetchForYou(with:configuration:fetch:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25BF51DEC;

  return sub_25BF54328(a1);
}

uint64_t sub_25BF51DEC(uint64_t a1, uint64_t a2, char a3)
{
  v13 = *v4;

  v10 = *(v13 + 8);
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3 & 1;
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9, v11);
}

uint64_t sub_25BF51F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v5 = sub_25BF6CA50();
  v4[40] = v5;
  v4[41] = *(v5 - 8);
  v4[42] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED348, &qword_25BF739C8);
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED350, &qword_25BF739D0);
  v4[46] = v7;
  v4[47] = *(v7 - 8);
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BF520A0, 0, 0);
}

uint64_t sub_25BF520A0()
{
  v1 = v0[38];
  [v1 feedItemMaxCount];
  v2 = [v1 localNewsTagID];
  if (v2)
  {
    v3 = v2;
    sub_25BF6CA70();
  }

  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[46];
  v10 = v0[37];
  sub_25BF6C9F0();
  v7 = sub_25BF6C9E0();
  v0[49] = v7;

  v0[2] = v0;
  v0[3] = sub_25BF522E8;
  swift_continuation_init();
  v0[25] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  v0[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED358, &qword_25BF739D8);
  sub_25BF6CAD0();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_25BF52B78;
  v0[21] = &block_descriptor;
  [v10 registerForManagedFeedItemPoolWithOptions:v7 completionHandler:v0 + 18];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25BF522E8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_25BF52A50;
  }

  else
  {
    v2 = sub_25BF523F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25BF523F8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 344);
  v7 = *(v0 + 296);

  sub_25BF6C9D0();
  v4 = sub_25BF6C9C0();
  *(v0 + 416) = v4;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 272;
  *(v0 + 88) = sub_25BF525D8;
  swift_continuation_init();
  *(v0 + 264) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
  *(v0 + 424) = sub_25BF6C9A0();
  sub_25BF6CAD0();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_25BF52C08;
  *(v0 + 232) = &block_descriptor_36;
  [v7 fetchFeedItemPoolWithOptions:v4 completionHandler:v0 + 208];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_25BF525D8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_25BF52AE4;
  }

  else
  {
    v2 = sub_25BF526E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25BF526E8()
{
  v4 = *(v1 + 304);
  v5 = *(v1 + 272);

  *(v1 + 280) = v5;
  if (([v4 feedItemMaxCount] & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    v23 = v6;
    v24 = sub_25BF6CB60();
    v6 = v23;
    if (v24 >= 1)
    {
      goto LABEL_4;
    }

LABEL_18:

    sub_25BF54F8C();
    swift_allocError();
    swift_willThrow();

    v21 = *(v1 + 8);
    goto LABEL_13;
  }

  v7 = sub_25BF6C9B0();
  v2 = v7;
  v0 = v8;
  v3 = v7 >> 62;
  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_18;
  }

LABEL_4:
  v9 = *(v1 + 312);
  v10 = sub_25BF53CF8(v6);

  sub_25BF52CB8(v10);
  v12 = v11;

  v13 = *(v9 + OBJC_IVAR___NTProxyForYouService_feedPersonalizer);
  if ([v13 respondsToSelector_])
  {
    sub_25BF54FE0(0, &qword_27FBED368, 0x277CCABB0);
    v14 = sub_25BF6CA60();
    [v13 prewarmWithTabiScores:v14 configurationSet:11];
  }

  sub_25BF6CA30();

  v15 = sub_25BF6CA40();
  v16 = sub_25BF6CB30();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349312;
    if (v3)
    {
      v18 = sub_25BF6CB60();
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    *(v17 + 12) = 2050;
    v19 = *(v12 + 16);

    *(v17 + 14) = v19;

    _os_log_impl(&dword_25BF21000, v15, v16, "did fetch For You candidate feed items from newsd, items=%{public}ld, nonZeroScores=%{public}ld", v17, 0x16u);
    MEMORY[0x25F8834A0](v17, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v20 = *(v1 + 288);
  (*(*(v1 + 328) + 8))(*(v1 + 336), *(v1 + 320));
  *v20 = v2;
  *(v20 + 8) = v0;
  *(v20 + 16) = 0;

  v21 = *(v1 + 8);
LABEL_13:

  return v21();
}

uint64_t sub_25BF52A50()
{
  v1 = *(v0 + 392);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25BF52AE4()
{
  v1 = *(v0 + 416);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_25BF52B78(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED350, &qword_25BF739D0);
    sub_25BF6CAE0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED350, &qword_25BF739D0);
    sub_25BF6CAF0();
  }
}

void sub_25BF52C08(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED348, &qword_25BF739C8);
    sub_25BF6CAE0();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED348, &qword_25BF739C8);
    sub_25BF6CAF0();
  }

  else
  {
    __break(1u);
  }
}

void sub_25BF52CB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED370, &qword_25BF739E0);
    v2 = sub_25BF6CB70();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_25BF6CB20();
        v18 = sub_25BF53E58(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_25BF5304C(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v9 = sub_25BF6C990();
  v5[5] = v9;
  v5[6] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[7] = v10;
  v5[8] = _Block_copy(a4);
  sub_25BF6C980();
  v11 = a1;
  swift_unknownObjectRetain();
  a5;
  v12 = swift_task_alloc();
  v5[9] = v12;
  *v12 = v5;
  v12[1] = sub_25BF531B8;

  return (sub_25BF54328)(v11, v10);
}

uint64_t sub_25BF531B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;

  v7 = v5[8];
  v8 = v5[4];
  v9 = v5[2];
  (*(v5[6] + 8))(v5[7], v5[5]);

  swift_unknownObjectRelease();
  if (v3)
  {
    v10 = sub_25BF6C970();

    (v7)[2](v7, 0, 0, 0, v10);
    _Block_release(v7);
  }

  else
  {
    sub_25BF54FE0(0, &qword_27FBED328, 0x277D35488);
    v11 = sub_25BF6CAA0();
    sub_25BF54FE0(0, &qword_27FBED330, 0x277D30FA8);
    v12 = sub_25BF6CA60();
    (v7)[2](v7, v11, v12, a3 & 1, 0);

    _Block_release(v7);
  }

  v13 = v6[1];

  return v13();
}

id ProxyForYouService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProxyForYouService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25BF53558(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_25BF551BC;

  return v6();
}

uint64_t sub_25BF53640(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_25BF53728;

  return v7();
}

uint64_t sub_25BF53728()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25BF5381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED2C0, &qword_25BF73950);
  MEMORY[0x28223BE20]();
  v10 = v22 - v9;
  sub_25BF54C2C(a3, v22 - v9);
  v11 = sub_25BF6CB10();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25BF54E08(v10, &qword_27FBED2C0, &qword_25BF73950);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_25BF6CB00();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_25BF6CAC0();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_25BF6CA80() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_25BF54E08(a3, &qword_27FBED2C0, &qword_25BF73950);

    return v20;
  }

LABEL_8:
  sub_25BF54E08(a3, &qword_27FBED2C0, &qword_25BF73950);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_25BF53B08(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25BF53C00;

  return v6(a1);
}

uint64_t sub_25BF53C00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t *sub_25BF53CF8(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20]();
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_25BF53F88(v6, v4, a1);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_25BF54074(v8, v4, a1);
  result = MEMORY[0x25F8834A0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t sub_25BF53E58(uint64_t a1, uint64_t a2)
{
  sub_25BF6CD10();
  sub_25BF6CA90();
  v4 = sub_25BF6CD30();

  return sub_25BF53ED0(a1, a2, v4);
}

unint64_t sub_25BF53ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25BF6CCC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t *sub_25BF53F88(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) != 0.0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_25BF540EC(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_25BF540EC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_25BF54074(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_25BF53F88(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_25BF540EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED378, &qword_25BF739E8);
  result = sub_25BF6CB70();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_25BF6CD10();

    sub_25BF6CA90();
    result = sub_25BF6CD30();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_25BF54328(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_25BF6CA50();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25BF543F4, 0, 0);
}

uint64_t sub_25BF543F4()
{
  sub_25BF6CA30();
  v1 = sub_25BF6CA40();
  v2 = sub_25BF6CB30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25BF21000, v1, v2, "will fetch For You candidate feed items from newsd", v3, 2u);
    MEMORY[0x25F8834A0](v3, -1, -1);
  }

  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];

  v9 = *(v6 + 8);
  v0[11] = v9;
  v9(v4, v5);
  sub_25BF6CA20();
  v0[12] = sub_25BF6CA10();
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  v11 = v8;
  v12 = v7;
  v13 = swift_task_alloc();
  v0[14] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED338, &qword_25BF739B8);
  *v13 = v0;
  v13[1] = sub_25BF545B0;

  return MEMORY[0x28218ED80](v0 + 2, &unk_25BF739B0, v10, v14);
}

uint64_t sub_25BF545B0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_25BF54758;
  }

  else
  {
    v4 = *(v2 + 96);

    v3 = sub_25BF546D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25BF546D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_25BF54758()
{
  v1 = v0[15];
  v2 = v0[12];

  sub_25BF6CA30();
  v3 = v1;
  v4 = sub_25BF6CA40();
  v5 = sub_25BF6CB30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_25BF21000, v4, v5, "failed to fetch For You candidate feed items from newsd, error=%{public}@", v7, 0xCu);
    sub_25BF54E08(v8, &qword_27FBED340, &qword_25BF739C0);
    MEMORY[0x25F8834A0](v8, -1, -1);
    MEMORY[0x25F8834A0](v7, -1, -1);
  }

  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[7];

  v11(v12, v13);
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25BF54998()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25BF53728;

  return sub_25BF5304C(v2, v3, v4, v5, v6);
}

uint64_t sub_25BF54A60()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25BF551BC;

  return sub_25BF53558(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BF54B60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25BF551BC;

  return sub_25BF53640(a1, v4, v5, v6);
}

uint64_t sub_25BF54C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED2C0, &qword_25BF73950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BF54C9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25BF551BC;

  return sub_25BF53B08(a1, v4);
}

uint64_t sub_25BF54D54(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25BF53728;

  return sub_25BF51F0C(a1, a2, v7, v6);
}

uint64_t sub_25BF54E08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25BF54EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_25BF54F8C()
{
  result = qword_27FBED360;
  if (!qword_27FBED360)
  {
    result = swift_getWitnessTable(a9z, &type metadata for ProxyForYouService.Errors, v0, v1);
    atomic_store(result, &qword_27FBED360);
  }

  return result;
}

uint64_t sub_25BF54FE0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProxyForYouService.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ProxyForYouService.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25BF55160()
{
  result = qword_27FBED380;
  if (!qword_27FBED380)
  {
    result = swift_getWitnessTable(byte_25BF73A38, &type metadata for ProxyForYouService.Errors, v0, v1);
    atomic_store(result, &qword_27FBED380);
  }

  return result;
}

id WidgetDebugInspection.__allocating_init(sections:mutedTagIDs:previouslyReadArticleIDs:previouslySeenArticleIDs:rankedSubscribedTagIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___NTWidgetDebugInspection_sections] = a1;
  *&v11[OBJC_IVAR___NTWidgetDebugInspection_mutedTagIDs] = a2;
  *&v11[OBJC_IVAR___NTWidgetDebugInspection_previouslyReadArticleIDs] = a3;
  *&v11[OBJC_IVAR___NTWidgetDebugInspection_previouslySeenArticleIDs] = a4;
  *&v11[OBJC_IVAR___NTWidgetDebugInspection_rankedSubscribedTagIDs] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id WidgetDebugInspection.init(sections:mutedTagIDs:previouslyReadArticleIDs:previouslySeenArticleIDs:rankedSubscribedTagIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___NTWidgetDebugInspection_sections] = a1;
  *&v5[OBJC_IVAR___NTWidgetDebugInspection_mutedTagIDs] = a2;
  *&v5[OBJC_IVAR___NTWidgetDebugInspection_previouslyReadArticleIDs] = a3;
  *&v5[OBJC_IVAR___NTWidgetDebugInspection_previouslySeenArticleIDs] = a4;
  *&v5[OBJC_IVAR___NTWidgetDebugInspection_rankedSubscribedTagIDs] = a5;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t WidgetDebugInspection.toJSON()()
{
  swift_getObjectType();
  v1 = sub_25BF6C920();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BF6C900();
  MEMORY[0x28223BE20]();
  sub_25BF6C960();
  swift_allocObject();
  sub_25BF6C950();
  sub_25BF6C8F0();
  sub_25BF6C910();
  (*(v2 + 104))(v4, *MEMORY[0x277CC8778], v1);
  sub_25BF6C930();
  v9 = v0;
  sub_25BF5C270(&qword_27FBED6B8, v5, type metadata accessor for WidgetDebugInspection, protocol conformance descriptor for WidgetDebugInspection);
  v6 = sub_25BF6C940();

  return v6;
}

id WidgetDebugInspection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_25BF55690()
{
  v1 = *v0;
  v2 = 0x676154646574756DLL;
  v3 = 0xD000000000000018;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x736E6F6974636573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25BF5573C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BF5B604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BF5577C(uint64_t a1)
{
  v2 = sub_25BF55B8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BF557B8(uint64_t a1)
{
  v2 = sub_25BF55B8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetDebugInspection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6C0, &qword_25BF73AB0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF55B8C();
  sub_25BF6CD50();
  v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspection_mutedTagIDs);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6D0, &qword_25BF73AB8);
  sub_25BF56110(&qword_27FBED6D8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_25BF6CCA0();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspection_previouslyReadArticleIDs);
    HIBYTE(v10) = 1;
    sub_25BF6CCA0();
    v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspection_previouslySeenArticleIDs);
    HIBYTE(v10) = 2;
    sub_25BF6CCA0();
    v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspection_rankedSubscribedTagIDs);
    HIBYTE(v10) = 3;
    sub_25BF6CCA0();
    v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspection_sections);
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6E0, &qword_25BF73AC0);
    sub_25BF5617C(&qword_27FBED6E8, &qword_27FBED6F0, protocol conformance descriptor for WidgetDebugInspectionSection, MEMORY[0x277D83948]);
    sub_25BF6CCA0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_25BF55B8C()
{
  result = qword_27FBED6C8;
  if (!qword_27FBED6C8)
  {
    result = swift_getWitnessTable(aUw, &type metadata for WidgetDebugInspection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED6C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *WidgetDebugInspection.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6F8, &qword_25BF73AC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF55B8C();
  sub_25BF6CD40();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6D0, &qword_25BF73AB8);
    v13 = 0;
    sub_25BF56110(&qword_27FBED700, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_25BF6CC00();
    v10[1] = OBJC_IVAR___NTWidgetDebugInspection_mutedTagIDs;
    *(v1 + OBJC_IVAR___NTWidgetDebugInspection_mutedTagIDs) = v14;
    v13 = 1;
    sub_25BF6CC00();
    *(v1 + OBJC_IVAR___NTWidgetDebugInspection_previouslyReadArticleIDs) = v14;
    v13 = 2;
    v10[0] = 0;
    sub_25BF6CC00();
    *(v1 + OBJC_IVAR___NTWidgetDebugInspection_previouslySeenArticleIDs) = v14;
    v13 = 3;
    sub_25BF6CC00();
    *(v1 + OBJC_IVAR___NTWidgetDebugInspection_rankedSubscribedTagIDs) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6E0, &qword_25BF73AC0);
    v13 = 4;
    sub_25BF5617C(&qword_27FBED708, &qword_27FBED710, protocol conformance descriptor for WidgetDebugInspectionSection, MEMORY[0x277D83978]);
    sub_25BF6CC00();
    *(v1 + OBJC_IVAR___NTWidgetDebugInspection_sections) = v14;
    v12.receiver = v1;
    v12.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v12, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_25BF56110(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBED6D0, &qword_25BF73AB8);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BF5617C(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBED6E0, &qword_25BF73AC0);
    v11 = sub_25BF5C270(a2, v10, type metadata accessor for WidgetDebugInspectionSection, a3);
    result = swift_getWitnessTable(a4, v9, &v11);
    atomic_store(result, a1);
  }

  return result;
}

void *WidgetDebugInspectionSection.init(articleIDs:name:sortedCandidates:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = *(type metadata accessor for WidgetDebugInspectionItem(0) - 8);
  MEMORY[0x28223BE20]();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR___NTWidgetDebugInspectionSection_articleIDs] = a1;
  v14 = &v5[OBJC_IVAR___NTWidgetDebugInspectionSection_name];
  *v14 = a2;
  *(v14 + 1) = a3;
  if (!(a4 >> 62))
  {
    v15 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_13:

    v18 = MEMORY[0x277D84F90];
LABEL_14:
    *&v5[OBJC_IVAR___NTWidgetDebugInspectionSection_sortedCandidates] = v18;
    v25.receiver = v5;
    v25.super_class = ObjectType;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  v15 = sub_25BF6CB60();
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  result = sub_25BF5A8C0(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v23 = ObjectType;
    v24 = v5;
    v17 = 0;
    v18 = v26;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8829A0](v17, a4);
      }

      else
      {
        v19 = *(a4 + 8 * v17 + 32);
        swift_unknownObjectRetain();
      }

      sub_25BF56548(v19, v13);
      swift_unknownObjectRelease();
      v26 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25BF5A8C0((v20 > 1), v21 + 1, 1);
        v18 = v26;
      }

      ++v17;
      *(v18 + 16) = v21 + 1;
      sub_25BF5A8E0(v13, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21);
    }

    while (v15 != v17);

    ObjectType = v23;
    v5 = v24;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WidgetDebugInspectionItem(uint64_t a1)
{
  result = qword_27FBED780;
  if (!qword_27FBED780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25BF56548@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBED770, &unk_25BF73C00);
  MEMORY[0x28223BE20]();
  v5 = &v122 - v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    swift_unknownObjectRetain();
  }

  v169 = &unk_286DCB9F0;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    swift_unknownObjectRetain();
  }

  v8 = [a1 articleID];
  if (!v8)
  {
    v163 = 0xE000000000000000;
    v164 = 0;
    v12 = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_10:
    v162 = [v12 backendArticleVersion];
    v161 = 0;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_25BF6CA70();
  v163 = v11;
  v164 = v10;

  v12 = v6;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  v12 = v7;
  if (v7)
  {
    goto LABEL_10;
  }

  v162 = 0;
  v161 = 1;
LABEL_11:
  v160 = [a1 respondsToSelector_];
  if (v160)
  {
    v159 = [a1 bodyTextLength];
  }

  else
  {
    v159 = 0;
  }

  v13 = [a1 clusterID];
  if (v13)
  {
    v14 = v13;
    v15 = sub_25BF6CA70();
    v157 = v16;
    v158 = v15;
  }

  else
  {
    v157 = 0;
    v158 = 0;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && (objc_msgSend(a1, sel_conditionalScore), v17 != 0.0))
  {
    v18 = v17;
    v156 = 0;
  }

  else
  {
    v156 = 1;
    v18 = 0.0;
  }

  [a1 contentType];
  v19 = FCStringFromArticleContentType();
  if (v19)
  {
    v20 = v19;
    v154 = sub_25BF6CA70();
    v155 = v21;
  }

  else
  {
    v154 = 0;
    v155 = 0;
  }

  [a1 globalUserFeedback];
  v23 = v22;
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_hasAudioTrack))
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  v153 = v24;
  v152 = [a1 hasThumbnail];
  v151 = [a1 hasVideo];
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isAIGenerated))
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v150 = v25;
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isBundlePaid))
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v149 = v26;
  v148 = [a1 isCoread];
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isEvergreen))
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  v147 = v27;
  v145 = [a1 isExplicitContent];
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isFeatureCandidate))
  {
    v28 = 1;
  }

  else
  {
    v28 = 2;
  }

  v146 = v28;
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isFeatured))
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  v144 = v29;
  v143 = [a1 isFromBlockedStorefront];
  v141 = [a1 isHiddenFromAutoFavorites];
  if (v6)
  {
    v30 = v6;
  }

  else if (!v7 || (v32 = [v7 respondsToSelector_], v30 = v7, (v32 & 1) == 0))
  {
    v31 = 2;
    goto LABEL_55;
  }

  if ([v30 isIssueOnly])
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

LABEL_55:
  v142 = v31;
  v139 = [a1 isPaid];
  v138 = [a1 isSponsored];
  v140 = [a1 order];
  if (v6)
  {
    v33 = [v6 parentIssueID];
    if (v33)
    {
      goto LABEL_61;
    }
  }

  if (v7)
  {
    if ([v7 respondsToSelector_])
    {
      v34 = [v7 parentIssue];
      if (v34)
      {
        v35 = v34;
        v33 = [v34 identifier];

LABEL_61:
        v36 = sub_25BF6CA70();
        v136 = v37;
        v137 = v36;

        goto LABEL_63;
      }
    }
  }

  v136 = 0;
  v137 = 0;
LABEL_63:
  v38 = [a1 publishDate];
  if (v38)
  {
    v39 = v38;
    sub_25BF6C980();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_25BF6C990();
  (*(*(v41 - 8) + 56))(v5, v40, 1, v41);
  v42 = [a1 publisherID];
  if (v42)
  {
    v43 = v42;
    v44 = sub_25BF6CA70();
    v134 = v45;
    v135 = v44;
  }

  else
  {
    v134 = 0;
    v135 = 0;
  }

  v133 = [a1 publisherArticleVersion];
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_reduceVisibility))
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  v132 = v46;
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_reduceVisibilityForNonFollowers))
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

  v131 = v47;
  v48 = [a1 scoreProfile];
  if (!v48)
  {
    sub_25BF5EF90(v167);
    goto LABEL_81;
  }

  v49 = v48;
  v50 = [v48 pbScoreProfile];

  if (v50)
  {
    v51 = v50;
    sub_25BF5B7C4(v51, v166);

    memcpy(v167, v166, sizeof(v167));
    nullsub_1();
LABEL_81:
    memcpy(v168, v167, sizeof(v168));
    goto LABEL_83;
  }

  v52 = sub_25BF5EF90(v168);
LABEL_83:
  v53 = [a1 feedID];
  v165 = v5;
  if (v53)
  {
    v54 = v53;
    v55 = sub_25BF6CA70();
    v129 = v56;
    v130 = v55;
  }

  else
  {
    v129 = 0;
    v130 = 0;
  }

  if (v6 && (v57 = [v6 surfacedByChannelID]) != 0)
  {
    v58 = v57;
    v59 = sub_25BF6CA70();
    v127 = v60;
    v128 = v59;
  }

  else if (v7 && (v61 = [v7 surfacedByChannelID]) != 0)
  {
    v62 = v61;
    v63 = sub_25BF6CA70();
    v127 = v64;
    v128 = v63;

    if (!v6)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v127 = 0;
    v128 = 0;
    if (!v6)
    {
      goto LABEL_96;
    }
  }

  v65 = [v6 surfacedBySectionID];
  if (v65)
  {
    v66 = v65;
    v67 = sub_25BF6CA70();
    v125 = v68;
    v126 = v67;

    goto LABEL_101;
  }

LABEL_96:
  if (v7 && (v69 = [v7 surfacedBySectionID]) != 0)
  {
    v70 = v69;
    v71 = sub_25BF6CA70();
    v125 = v72;
    v126 = v71;

    if (!v6)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v125 = 0;
    v126 = 0;
    if (!v6)
    {
      goto LABEL_103;
    }
  }

LABEL_101:
  v73 = [v6 surfacedByTopicID];
  if (v73)
  {
    v74 = v73;
    v75 = sub_25BF6CA70();
    v123 = v76;
    v124 = v75;

    goto LABEL_108;
  }

LABEL_103:
  if (v7 && (v77 = [v7 surfacedByTopicID]) != 0)
  {
    v78 = v77;
    v79 = sub_25BF6CA70();
    v123 = v80;
    v124 = v79;

    if (!v6)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v123 = 0;
    v124 = 0;
    if (!v6)
    {
      goto LABEL_112;
    }
  }

LABEL_108:
  v81 = [v6 surfacedByArticleListIDs];
  if (v81)
  {
    v82 = v81;
    v83 = sub_25BF6CAB0();

    if (v83[2])
    {
      v85 = v83[4];
      v84 = v83[5];

      goto LABEL_113;
    }
  }

LABEL_112:
  v85 = 0;
  v84 = 0;
LABEL_113:
  v86 = [a1 topicIDs];
  if (v86)
  {
    v87 = v86;
    v88 = sub_25BF6CAB0();
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  if ([a1 respondsToSelector_])
  {
    v89 = [a1 webConverted];

    swift_unknownObjectRelease();
    v90 = v165;
    if (v89)
    {
      v91 = 1;
      goto LABEL_121;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    v90 = v165;
  }

  v91 = 2;
LABEL_121:
  v92 = v140;
  v93 = v140 == 0;
  v94 = v139;
  v95 = v138 == 0;
  v96 = v163;
  *a2 = v164;
  *(a2 + 8) = v96;
  *(a2 + 16) = v162;
  if (v95)
  {
    v97 = 2;
  }

  else
  {
    v97 = 1;
  }

  *(a2 + 24) = v161;
  if (v94)
  {
    v98 = 1;
  }

  else
  {
    v98 = 2;
  }

  v95 = v141 == 0;
  *(a2 + 32) = v159;
  if (v95)
  {
    v99 = 2;
  }

  else
  {
    v99 = 1;
  }

  v95 = v143 == 0;
  *(a2 + 40) = (v160 & 1) == 0;
  if (v95)
  {
    v100 = 2;
  }

  else
  {
    v100 = 1;
  }

  if (v145)
  {
    v101 = 1;
  }

  else
  {
    v101 = 2;
  }

  v95 = v148 == 0;
  *(a2 + 48) = v158;
  *(a2 + 56) = v157;
  if (v95)
  {
    v102 = 2;
  }

  else
  {
    v102 = 1;
  }

  v103 = v152;
  v95 = v151 == 0;
  *(a2 + 72) = v156;
  if (v95)
  {
    v104 = 2;
  }

  else
  {
    v104 = 1;
  }

  *(a2 + 80) = v154;
  if (v103)
  {
    v105 = 1;
  }

  else
  {
    v105 = 2;
  }

  *(a2 + 88) = v155;
  v106 = v23;
  if (v23 == 0.0)
  {
    v106 = 0.0;
  }

  *(a2 + 96) = v106;
  *(a2 + 104) = v23 == 0.0;
  *(a2 + 105) = v153;
  *(a2 + 106) = v105;
  *(a2 + 107) = v104;
  *(a2 + 108) = v150;
  *(a2 + 109) = v149;
  *(a2 + 110) = v102;
  *(a2 + 111) = v147;
  *(a2 + 112) = v101;
  *(a2 + 113) = v146;
  *(a2 + 114) = v144;
  *(a2 + 115) = v100;
  *(a2 + 116) = v99;
  *(a2 + 117) = v142;
  *(a2 + 118) = v98;
  *(a2 + 119) = v97;
  *(a2 + 120) = v92;
  *(a2 + 128) = v93;
  v107 = v136;
  *(a2 + 136) = v137;
  *(a2 + 144) = v107;
  *(a2 + 64) = v18;
  v108 = type metadata accessor for WidgetDebugInspectionItem(0);
  sub_25BF5C2B8(v90, a2 + v108[28]);
  v109 = (a2 + v108[29]);
  v110 = v134;
  *v109 = v135;
  v109[1] = v110;
  v111 = a2 + v108[30];
  *v111 = v133;
  *(v111 + 8) = 0;
  LOBYTE(v110) = v131;
  *(a2 + v108[31]) = v132;
  *(a2 + v108[32]) = v110;
  result = memcpy((a2 + v108[33]), v168, 0x198uLL);
  v113 = (a2 + v108[34]);
  v114 = v129;
  *v113 = v130;
  v113[1] = v114;
  v115 = (a2 + v108[35]);
  v116 = v127;
  *v115 = v128;
  v115[1] = v116;
  v117 = (a2 + v108[36]);
  v118 = v125;
  *v117 = v126;
  v117[1] = v118;
  v119 = (a2 + v108[37]);
  v120 = v123;
  *v119 = v124;
  v119[1] = v120;
  v121 = (a2 + v108[38]);
  *v121 = v85;
  v121[1] = v84;
  *(a2 + v108[39]) = v88;
  *(a2 + v108[40]) = v91;
  return result;
}

unint64_t sub_25BF571D0()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656C6369747261;
  }
}

uint64_t sub_25BF5722C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BF5C030(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BF57260(uint64_t a1)
{
  v2 = sub_25BF5A944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BF5729C(uint64_t a1)
{
  v2 = sub_25BF5A944();

  return MEMORY[0x2821FE720](a1, v2);
}

id _s9NewsToday21WidgetDebugInspectionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t WidgetDebugInspectionSection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED730, &qword_25BF73AD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5A944();
  sub_25BF6CD50();
  v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspectionSection_articleIDs);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6D0, &qword_25BF73AB8);
  sub_25BF56110(&qword_27FBED6D8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_25BF6CCA0();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_25BF6CC80();
    v11 = *(v3 + OBJC_IVAR___NTWidgetDebugInspectionSection_sortedCandidates);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED740, &qword_25BF73AD8);
    sub_25BF5A998(&qword_27FBED748, &qword_27FBED750, asc_25BF73E5C, MEMORY[0x277D83948]);
    sub_25BF6CCA0();
  }

  return (*(v6 + 8))(v8, v5);
}

char *WidgetDebugInspectionSection.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED758, &qword_25BF73AE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &ObjectType - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5A944();
  sub_25BF6CD40();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6D0, &qword_25BF73AB8);
    v15 = 0;
    sub_25BF56110(&qword_27FBED700, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_25BF6CC00();
    *(v1 + OBJC_IVAR___NTWidgetDebugInspectionSection_articleIDs) = v16;
    LOBYTE(v16) = 1;
    v10 = sub_25BF6CBE0();
    v11 = (v1 + OBJC_IVAR___NTWidgetDebugInspectionSection_name);
    *v11 = v10;
    v11[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED740, &qword_25BF73AD8);
    v15 = 2;
    sub_25BF5A998(&qword_27FBED760, &qword_27FBED768, byte_25BF73E34, MEMORY[0x277D83978]);
    sub_25BF6CC00();
    *(v1 + OBJC_IVAR___NTWidgetDebugInspectionSection_sortedCandidates) = v16;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_25BF579C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_25BF57A48(char a1)
{
  result = 0x49656C6369747261;
  switch(a1)
  {
    case 1:
      v3 = 5;
      goto LABEL_23;
    case 2:
      result = 0x7478655479646F62;
      break;
    case 3:
      result = 0x4972657473756C63;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x54746E65746E6F63;
      break;
    case 6:
    case 15:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6F69647541736168;
      break;
    case 8:
      result = 0x626D756854736168;
      break;
    case 9:
      result = 0x6F65646956736168;
      break;
    case 10:
      result = 0x656E654749417369;
      break;
    case 11:
      result = 0x656C646E75427369;
      break;
    case 12:
      result = 0x646165726F437369;
      break;
    case 13:
      result = 0x7267726576457369;
      break;
    case 14:
    case 33:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x7275746165467369;
      break;
    case 17:
    case 26:
    case 34:
      result = 0xD000000000000017;
      break;
    case 18:
      v3 = 9;
LABEL_23:
      result = v3 | 0xD000000000000010;
      break;
    case 19:
      result = 0x4F65757373497369;
      break;
    case 20:
      result = 0x646961507369;
      break;
    case 21:
      result = 0x6F736E6F70537369;
      break;
    case 22:
      result = 0x726564726FLL;
      break;
    case 23:
      result = 0x7349746E65726170;
      break;
    case 24:
      result = 0x446873696C627570;
      break;
    case 25:
      result = 0x656873696C627570;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0xD00000000000001FLL;
      break;
    case 29:
      result = 0x6F725065726F6373;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
    case 32:
      result = 0xD000000000000013;
      break;
    case 35:
      result = 0x7344496369706F74;
      break;
    case 36:
      result = 0x65766E6F43626577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BF57E50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED808, &qword_25BF73F28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5C158();
  sub_25BF6CD50();
  v16[0] = 0;
  sub_25BF6CC20();
  if (!v2)
  {
    v16[0] = 1;
    sub_25BF6CC60();
    v16[0] = 2;
    sub_25BF6CC60();
    v16[0] = 3;
    sub_25BF6CC20();
    v16[0] = 4;
    sub_25BF6CC40();
    v16[0] = 5;
    sub_25BF6CC20();
    v16[0] = 6;
    sub_25BF6CC40();
    v16[0] = 7;
    sub_25BF6CC30();
    v16[0] = 8;
    sub_25BF6CC30();
    v16[0] = 9;
    sub_25BF6CC30();
    v16[0] = 10;
    sub_25BF6CC30();
    v16[0] = 11;
    sub_25BF6CC30();
    v16[0] = 12;
    sub_25BF6CC30();
    v16[0] = 13;
    sub_25BF6CC30();
    v16[0] = 14;
    sub_25BF6CC30();
    v16[0] = 15;
    sub_25BF6CC30();
    v16[0] = 16;
    sub_25BF6CC30();
    v16[0] = 17;
    sub_25BF6CC30();
    v16[0] = 18;
    sub_25BF6CC30();
    v16[0] = 19;
    sub_25BF6CC30();
    v16[0] = 20;
    sub_25BF6CC30();
    v16[0] = 21;
    sub_25BF6CC30();
    v16[0] = 22;
    sub_25BF6CC70();
    v16[0] = 23;
    sub_25BF6CC20();
    v10 = type metadata accessor for WidgetDebugInspectionItem(0);
    v16[0] = 24;
    sub_25BF6C990();
    sub_25BF5C270(&qword_27FBED818, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25BF6CC50();
    v16[0] = 25;
    sub_25BF6CC20();
    v16[0] = 26;
    sub_25BF6CC60();
    v16[0] = 27;
    sub_25BF6CC30();
    v16[431] = 28;
    sub_25BF6CC30();
    v11 = *(v10 + 132);
    memcpy(v16, (v3 + v11), 0x198uLL);
    memcpy(v15, (v3 + v11), sizeof(v15));
    v16[430] = 29;
    sub_25BF5C1AC(v16, v14);
    sub_25BF5C21C();
    sub_25BF6CC50();
    memcpy(v14, v15, sizeof(v14));
    sub_25BF54E08(v14, &qword_27FBED820, &qword_25BF73F30);
    LOBYTE(v13) = 30;
    sub_25BF6CC20();
    LOBYTE(v13) = 31;
    sub_25BF6CC20();
    LOBYTE(v13) = 32;
    sub_25BF6CC20();
    LOBYTE(v13) = 33;
    sub_25BF6CC20();
    LOBYTE(v13) = 34;
    sub_25BF6CC20();
    v13 = *(v3 + *(v10 + 156));
    v16[429] = 35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6D0, &qword_25BF73AB8);
    sub_25BF56110(&qword_27FBED6D8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_25BF6CCA0();
    LOBYTE(v13) = 36;
    sub_25BF6CC30();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25BF58688@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBED770, &unk_25BF73C00);
  MEMORY[0x28223BE20]();
  v5 = &v53 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED830, &qword_25BF73F38);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v53 - v6;
  v8 = type metadata accessor for WidgetDebugInspectionItem(0);
  MEMORY[0x28223BE20]();
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_25BF5C158();
  v59 = v7;
  sub_25BF6CD40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v61);
  }

  v12 = v58;
  v55 = v8;
  v56 = v10;
  v63[0] = 0;
  v13 = sub_25BF6CB80();
  v14 = v56;
  *v56 = v13;
  *(v14 + 1) = v15;
  v63[0] = 1;
  *(v14 + 2) = sub_25BF6CBC0();
  v14[24] = v16 & 1;
  v63[0] = 2;
  *(v14 + 4) = sub_25BF6CBC0();
  v14[40] = v17 & 1;
  v63[0] = 3;
  *(v14 + 6) = sub_25BF6CB80();
  *(v14 + 7) = v18;
  v63[0] = 4;
  *(v14 + 8) = sub_25BF6CBA0();
  v14[72] = v19 & 1;
  v63[0] = 5;
  *(v14 + 10) = sub_25BF6CB80();
  *(v14 + 11) = v20;
  v63[0] = 6;
  *(v14 + 12) = sub_25BF6CBA0();
  v14[104] = v21 & 1;
  v63[0] = 7;
  v22 = sub_25BF6CB90();
  v54 = v5;
  v56[105] = v22;
  v63[0] = 8;
  v56[106] = sub_25BF6CB90();
  v63[0] = 9;
  v56[107] = sub_25BF6CB90();
  v63[0] = 10;
  v56[108] = sub_25BF6CB90();
  v63[0] = 11;
  v56[109] = sub_25BF6CB90();
  v63[0] = 12;
  v56[110] = sub_25BF6CB90();
  v63[0] = 13;
  v56[111] = sub_25BF6CB90();
  v63[0] = 14;
  v56[112] = sub_25BF6CB90();
  v63[0] = 15;
  v56[113] = sub_25BF6CB90();
  v63[0] = 16;
  v56[114] = sub_25BF6CB90();
  v63[0] = 17;
  v56[115] = sub_25BF6CB90();
  v63[0] = 18;
  v56[116] = sub_25BF6CB90();
  v63[0] = 19;
  v56[117] = sub_25BF6CB90();
  v63[0] = 20;
  v56[118] = sub_25BF6CB90();
  v63[0] = 21;
  v56[119] = sub_25BF6CB90();
  v63[0] = 22;
  v23 = sub_25BF6CBD0();
  v24 = v56;
  *(v56 + 15) = v23;
  v24[128] = v25 & 1;
  v63[0] = 23;
  v26 = sub_25BF6CB80();
  v27 = v56;
  *(v56 + 17) = v26;
  *(v27 + 18) = v28;
  sub_25BF6C990();
  v63[0] = 24;
  sub_25BF5C270(&qword_27FBED838, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_25BF6CBB0();
  sub_25BF5C2B8(v54, &v56[v55[28]]);
  v63[0] = 25;
  v29 = sub_25BF6CB80();
  v30 = &v56[v55[29]];
  *v30 = v29;
  v30[1] = v31;
  v63[0] = 26;
  v32 = sub_25BF6CBC0();
  v33 = &v56[v55[30]];
  *v33 = v32;
  v33[8] = v34 & 1;
  v63[0] = 27;
  v56[v55[31]] = sub_25BF6CB90();
  v63[0] = 28;
  v56[v55[32]] = sub_25BF6CB90();
  v63[431] = 29;
  sub_25BF5C328();
  sub_25BF6CBB0();
  memcpy(&v56[v55[33]], v63, 0x198uLL);
  LOBYTE(v62) = 30;
  v35 = sub_25BF6CB80();
  v36 = &v56[v55[34]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v62) = 31;
  v38 = sub_25BF6CB80();
  v39 = &v56[v55[35]];
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v62) = 32;
  v41 = sub_25BF6CB80();
  v42 = &v56[v55[36]];
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v62) = 33;
  v44 = sub_25BF6CB80();
  v45 = &v56[v55[37]];
  *v45 = v44;
  v45[1] = v46;
  LOBYTE(v62) = 34;
  v47 = sub_25BF6CB80();
  v48 = &v56[v55[38]];
  *v48 = v47;
  v48[1] = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED6D0, &qword_25BF73AB8);
  v63[430] = 35;
  sub_25BF56110(&qword_27FBED700, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_25BF6CC00();
  *&v56[v55[39]] = v62;
  LOBYTE(v62) = 36;
  v50 = sub_25BF6CB90();
  (*(v12 + 8))(v59, v60);
  v51 = v56;
  v56[v55[40]] = v50;
  sub_25BF5C37C(v51, v57);
  __swift_destroy_boxed_opaque_existential_0(v61);
  return sub_25BF5C3E0(v51);
}

uint64_t sub_25BF5943C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED948, &qword_25BF74280);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5F618();
  sub_25BF6CD50();
  v8[15] = 0;
  sub_25BF6CC90();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_25BF6CC80();
  v8[13] = 2;
  sub_25BF6CC90();
  v8[12] = 3;
  sub_25BF6CC90();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25BF595FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED940, &qword_25BF74278);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5F5C4();
  sub_25BF6CD50();
  v8[15] = 0;
  sub_25BF6CC90();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_25BF6CC90();
  v8[13] = 2;
  sub_25BF6CC90();
  v8[12] = 3;
  sub_25BF6CC90();
  v8[11] = 4;
  sub_25BF6CC90();
  v8[10] = 5;
  sub_25BF6CC90();
  v8[9] = 6;
  sub_25BF6CC90();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25BF59824@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BF5C43C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BF59858(uint64_t a1)
{
  v2 = sub_25BF5C158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BF59894(uint64_t a1)
{
  v2 = sub_25BF5C158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BF59900()
{
  v1 = 0x736B63696C63;
  v2 = 0x6973736572706D69;
  if (*v0 != 2)
  {
    v2 = 0x6B63696C43776172;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BF59988@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BF5CFC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BF599BC(uint64_t a1)
{
  v2 = sub_25BF5F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BF599F8(uint64_t a1)
{
  v2 = sub_25BF5F618();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BF59A34@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_25BF5D134(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

unint64_t sub_25BF59AB8()
{
  v1 = *v0;
  v2 = 0x6353726576726573;
  v3 = 0xD000000000000014;
  if (v1 != 5)
  {
    v3 = 0x726F635369626174;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25BF59BAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BF5D378(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BF59BE0(uint64_t a1)
{
  v2 = sub_25BF5F5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BF59C1C(uint64_t a1)
{
  v2 = sub_25BF5F5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_25BF59C58@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_25BF5D5D0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_25BF59CEC(char a1)
{
  result = 0x6C754D6F69647561;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 28:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x6963696666656F63;
      break;
    case 6:
    case 26:
      result = 0xD00000000000001ELL;
      break;
    case 7:
    case 15:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
    case 19:
    case 20:
      result = 0xD000000000000015;
      break;
    case 11:
    case 31:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6F436C61626F6C67;
      break;
    case 14:
      result = 0x696C7069746C756DLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
    case 32:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000017;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x56676E69726F6373;
      break;
    case 24:
      result = 0x616E65506E656573;
      break;
    case 25:
      result = 0xD000000000000020;
      break;
    case 27:
      result = 0x6154776F64616873;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    case 30:
      result = 0x726F635369626174;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_25BF5A058(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED868, &unk_25BF73F48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5ED84();
  sub_25BF6CD50();
  LOBYTE(v14) = 0;
  sub_25BF6CC90();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_25BF6CC40();
    LOBYTE(v14) = 2;
    sub_25BF6CC90();
    LOBYTE(v14) = 3;
    sub_25BF6CC40();
    LOBYTE(v14) = 4;
    sub_25BF6CC40();
    v9 = *(v3 + 80);
    v14 = *(v3 + 64);
    v15 = v9;
    v16[0] = *(v3 + 96);
    *(v16 + 9) = *(v3 + 105);
    v13 = 5;
    sub_25BF5EEE8();
    sub_25BF6CC50();
    LOBYTE(v14) = 6;
    sub_25BF6CC90();
    LOBYTE(v14) = 7;
    sub_25BF6CC90();
    LOBYTE(v14) = 8;
    sub_25BF6CC90();
    LOBYTE(v14) = 9;
    sub_25BF6CC90();
    LOBYTE(v14) = 10;
    sub_25BF6CC90();
    LOBYTE(v14) = 11;
    sub_25BF6CC40();
    LOBYTE(v14) = 12;
    sub_25BF6CC40();
    v10 = *(v3 + 216);
    v14 = *(v3 + 200);
    v15 = v10;
    *&v16[0] = *(v3 + 232);
    v13 = 13;
    sub_25BF5EF3C();
    sub_25BF6CC50();
    LOBYTE(v14) = 14;
    sub_25BF6CC90();
    LOBYTE(v14) = 15;
    sub_25BF6CC90();
    LOBYTE(v14) = 16;
    sub_25BF6CC90();
    LOBYTE(v14) = 17;
    sub_25BF6CC90();
    LOBYTE(v14) = 18;
    sub_25BF6CC90();
    LOBYTE(v14) = 19;
    sub_25BF6CC90();
    LOBYTE(v14) = 20;
    sub_25BF6CC90();
    LOBYTE(v14) = 21;
    sub_25BF6CC90();
    LOBYTE(v14) = 22;
    sub_25BF6CC90();
    LOBYTE(v14) = 23;
    sub_25BF6CCB0();
    LOBYTE(v14) = 24;
    sub_25BF6CC40();
    LOBYTE(v14) = 25;
    sub_25BF6CC90();
    LOBYTE(v14) = 26;
    sub_25BF6CC90();
    LOBYTE(v14) = 27;
    sub_25BF6CC90();
    LOBYTE(v14) = 28;
    sub_25BF6CC90();
    LOBYTE(v14) = 29;
    sub_25BF6CC90();
    LOBYTE(v14) = 30;
    sub_25BF6CC90();
    LOBYTE(v14) = 31;
    sub_25BF6CC40();
    LOBYTE(v14) = 32;
    sub_25BF6CC90();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25BF5A6E0()
{
  v1 = *v0;
  sub_25BF6CD10();
  MEMORY[0x25F882B70](v1);
  return sub_25BF6CD30();
}

uint64_t sub_25BF5A728(uint64_t a1)
{
  v2 = *v1;
  sub_25BF6CD10();
  MEMORY[0x25F882B70](v2);
  return sub_25BF6CD30();
}

uint64_t sub_25BF5A774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25BF5D848(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25BF5A7A8(uint64_t a1)
{
  v2 = sub_25BF5ED84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BF5A7E4(uint64_t a1)
{
  v2 = sub_25BF5ED84();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_25BF5A820@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_25BF5E274(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x198uLL);
  }

  return result;
}

void *sub_25BF5A8C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25BF5B42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BF5A8E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDebugInspectionItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25BF5A944()
{
  result = qword_27FBED738;
  if (!qword_27FBED738)
  {
    result = swift_getWitnessTable(byte_25BF73E84, &type metadata for WidgetDebugInspectionSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED738);
  }

  return result;
}

uint64_t sub_25BF5A998(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBED740, &qword_25BF73AD8);
    v10 = sub_25BF5C270(a2, 255, type metadata accessor for WidgetDebugInspectionItem, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDebugInspectionSection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetDebugInspectionSection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25BF5AC64(uint64_t a1)
{
  sub_25BF5AF4C(319, &qword_27FBED790, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25BF5AF4C(319, &qword_27FBED798, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25BF5AF4C(319, &qword_27FBED7A0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_25BF5AF4C(319, &qword_27FBED7A8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_25BF5AF4C(319, &qword_27FBED7B0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_25BF5AEF4(319);
            if (v6 <= 0x3F)
            {
              sub_25BF5AF4C(319, &qword_27FBED7C0, &type metadata for WidgetDebugInspectionScoreProfile, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_25BF5AF4C(319, &unk_27FBED7C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_25BF5AEF4(uint64_t a1)
{
  if (!qword_27FBED7B8)
  {
    sub_25BF6C990();
    v1 = sub_25BF6CB40();
    if (!v2)
    {
      atomic_store(v1, &qword_27FBED7B8);
    }
  }
}

void sub_25BF5AF4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25BF5AFA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 408))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 216);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25BF5B000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 408) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 408) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDebugInspection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetDebugInspection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BF5B220()
{
  result = qword_27FBED7D8;
  if (!qword_27FBED7D8)
  {
    result = swift_getWitnessTable(byte_25BF73D04, &type metadata for WidgetDebugInspection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED7D8);
  }

  return result;
}

unint64_t sub_25BF5B278()
{
  result = qword_27FBED7E0;
  if (!qword_27FBED7E0)
  {
    result = swift_getWitnessTable(byte_25BF73E0C, &type metadata for WidgetDebugInspectionSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED7E0);
  }

  return result;
}

unint64_t sub_25BF5B2D0()
{
  result = qword_27FBED7E8;
  if (!qword_27FBED7E8)
  {
    result = swift_getWitnessTable("%r,&ث", &type metadata for WidgetDebugInspectionSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED7E8);
  }

  return result;
}

unint64_t sub_25BF5B328()
{
  result = qword_27FBED7F0;
  if (!qword_27FBED7F0)
  {
    result = swift_getWitnessTable(a5n, &type metadata for WidgetDebugInspectionSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED7F0);
  }

  return result;
}

unint64_t sub_25BF5B380()
{
  result = qword_27FBED7F8;
  if (!qword_27FBED7F8)
  {
    result = swift_getWitnessTable(aSX, &type metadata for WidgetDebugInspection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED7F8);
  }

  return result;
}

unint64_t sub_25BF5B3D8()
{
  result = qword_27FBED800;
  if (!qword_27FBED800)
  {
    result = swift_getWitnessTable(aO0, &type metadata for WidgetDebugInspection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED800);
  }

  return result;
}

void *sub_25BF5B42C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED8E8, &qword_25BF73F60);
  v10 = *(type metadata accessor for WidgetDebugInspectionItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WidgetDebugInspectionItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_25BF5B604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676154646574756DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025BF7D6A0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025BF7D6C0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BF7D6E0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25BF6CCC0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_25BF5B7C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 agedPersonalizationScore];
  v5 = v4;
  LODWORD(v6) = [a1 hasDebugFields];
  v7 = 0;
  v8 = 0;
  if (v6)
  {
    result = [a1 debugFields];
    if (!result)
    {
      __break(1u);
      goto LABEL_40;
    }

    v10 = result;
    [result audioMultiplier];
    v8 = v11;
  }

  [a1 autoSubscribeCtr];
  v13 = v12;
  v14 = [a1 hasDebugFields];
  if (!v14)
  {
    goto LABEL_7;
  }

  result = [a1 debugFields];
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = result;
  [result bundleFreeMultiplier];
  v7 = v16;

LABEL_7:
  v17 = [a1 hasDebugFields];
  v18 = 0;
  if (!v17)
  {
    goto LABEL_10;
  }

  result = [a1 debugFields];
  if (!result)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v19 = result;
  [result bundlePaidMultiplier];
  v18 = v20;

LABEL_10:
  if (![a1 hasCoefficients])
  {
    v114 = 1;
    v121 = 0u;
    v123 = 0u;
    v31 = 0;
    v34 = 0;
    v37 = 0;
    goto LABEL_20;
  }

  result = [a1 coefficients];
  if (!result)
  {
    goto LABEL_42;
  }

  v21 = result;
  [result autofavoritedScoreCoefficient];
  v122 = v22;

  result = [a1 coefficients];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v23 = result;
  [result conversionCoefficient];
  v118 = v24;

  result = [a1 coefficients];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = result;
  [result halfLifeCoefficient];
  v120 = v26;

  result = [a1 coefficients];
  if (!result)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v27 = result;
  [result serverScoreCoefficient];
  v116 = v28;

  result = [a1 coefficients];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = result;
  [result subscribedChannelScoreCoefficent];
  v31 = v30;

  result = [a1 coefficients];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v32 = result;
  [result subscribedTopicScoreCoefficient];
  v34 = v33;

  result = [a1 coefficients];
  if (!result)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v35 = result;
  [result tabiScoreCoefficient];
  v37 = v36;

  v114 = 0;
  *&v38 = v120;
  *(&v38 + 1) = v116;
  v121 = v38;
  *&v38 = v122;
  *(&v38 + 1) = v118;
  v123 = v38;
LABEL_20:
  [a1 computedGlobalScoreCoefficient];
  v113 = v39;
  [a1 contentTriggerDampener];
  v112 = v40;
  [a1 conversionMultiplier];
  v111 = v41;
  [a1 dampenedStaticMultiplier];
  v110 = v42;
  [a1 democratizationFactor];
  v109 = v43;
  v44 = [a1 hasDebugFields];
  v45 = v44;
  v117 = 0;
  v119 = 0;
  if (!v44)
  {
    goto LABEL_23;
  }

  result = [a1 debugFields];
  if (!result)
  {
    goto LABEL_46;
  }

  v46 = result;
  [result evergreenMultiplier];
  v119 = v47;

LABEL_23:
  v48 = [a1 hasDebugFields];
  v49 = v48;
  if (!v48)
  {
    goto LABEL_26;
  }

  v50 = v6;
  result = [a1 debugFields];
  if (!result)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v6 = result;
  [result featuredMultiplier];
  v117 = v51;

  LOBYTE(v6) = v50;
LABEL_26:
  v108 = v17;
  v115 = 0;
  if (![a1 hasGlobalCohort])
  {
    v58 = v14;
    v53 = v6;
    v103 = 0;
    v104 = 0;
    v106 = 0;
    v107 = 0;
    v105 = 0;
    goto LABEL_32;
  }

  result = [a1 globalCohort];
  if (!result)
  {
    goto LABEL_49;
  }

  v52 = result;
  v53 = v6;
  [result clicks];
  v107 = v54;

  result = [a1 globalCohort];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v55 = result;
  [result impressions];
  v106 = v56;

  result = [a1 globalCohort];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v57 = result;
  v58 = v14;
  [result rawClicks];
  v105 = v59;

  v103 = 42;
  v104 = 0xE100000000000000;
LABEL_32:
  [a1 multiplier];
  v102 = v60;
  [a1 nicheContentMultiplier];
  v101 = v61;
  [a1 paidNonpaidSubscriptionCtr];
  v100 = v62;
  [a1 personalizationScore];
  v99 = v63;
  [a1 publisherDampener];
  v98 = v64;
  [a1 publisherFavorability];
  v97 = v65;
  [a1 qualitativeMultiplier];
  v96 = v66;
  [a1 rawPersonalizationScore];
  v95 = v67;
  [a1 rawUserFeedbackScore];
  v94 = v68;
  v69 = [a1 scoringVersion];
  v70 = [a1 hasDebugFields];
  v71 = v70;
  if (v70)
  {
    result = [a1 debugFields];
    if (result)
    {
      v72 = result;
      [result seenPenalty];
      v115 = v73;

      goto LABEL_35;
    }

    goto LABEL_53;
  }

LABEL_35:
  v91 = v37;
  v92 = v34;
  v93 = v31;
  [a1 serverScoreDemocratizationFactor];
  v90 = v74;
  [a1 shadowAgedPersonalizationScore];
  v89 = v75;
  [a1 shadowTabiScore];
  v88 = v76;
  [a1 staticMultiplier];
  v87 = v77;
  [a1 subscribedChannelCtr];
  v79 = v78;
  [a1 tabiScore];
  v81 = v80;
  v82 = [a1 hasDebugFields];
  v83 = 0;
  if (!v82)
  {
LABEL_38:
    result = [a1 userFeedbackScore];
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 24) = v13;
    *(a2 + 32) = v7;
    *(a2 + 48) = v18;
    *(a2 + 64) = v123;
    *(a2 + 80) = v121;
    *(a2 + 16) = v53 ^ 1;
    *(a2 + 40) = v58 ^ 1;
    *(a2 + 56) = v108 ^ 1;
    *(a2 + 96) = v93;
    *(a2 + 104) = v92;
    *(a2 + 112) = v91;
    *(a2 + 120) = v114;
    *(a2 + 128) = v113;
    *(a2 + 136) = v112;
    *(a2 + 144) = v111;
    *(a2 + 152) = v110;
    *(a2 + 160) = v109;
    *(a2 + 168) = v119;
    *(a2 + 176) = v45 ^ 1;
    *(a2 + 184) = v117;
    *(a2 + 192) = v49 ^ 1;
    *(a2 + 200) = v107;
    *(a2 + 208) = v103;
    *(a2 + 216) = v104;
    *(a2 + 224) = v106;
    *(a2 + 232) = v105;
    *(a2 + 240) = v102;
    *(a2 + 248) = v101;
    *(a2 + 256) = v100;
    *(a2 + 264) = v99;
    *(a2 + 272) = v98;
    *(a2 + 280) = v97;
    *(a2 + 288) = v96;
    *(a2 + 296) = v95;
    *(a2 + 304) = v94;
    *(a2 + 312) = v69;
    *(a2 + 320) = v115;
    *(a2 + 328) = v71 ^ 1;
    *(a2 + 336) = v90;
    *(a2 + 344) = v89;
    *(a2 + 352) = v88;
    *(a2 + 360) = v87;
    *(a2 + 368) = v79;
    *(a2 + 376) = v81;
    *(a2 + 384) = v83;
    *(a2 + 392) = v82 ^ 1;
    *(a2 + 400) = v86;
    return result;
  }

  result = [a1 debugFields];
  if (result)
  {
    v84 = result;
    [result userConversionScore];
    v83 = v85;

    goto LABEL_38;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_25BF5C030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xEA00000000007344;
  if (v4 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BF7D750 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_25BF6CCC0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_25BF5C158()
{
  result = qword_27FBED810;
  if (!qword_27FBED810)
  {
    result = swift_getWitnessTable(byte_25BF74218, &type metadata for WidgetDebugInspectionItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED810);
  }

  return result;
}

uint64_t sub_25BF5C1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED820, &qword_25BF73F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25BF5C21C()
{
  result = qword_27FBED828;
  if (!qword_27FBED828)
  {
    result = swift_getWitnessTable(byte_25BF73D2C, &type metadata for WidgetDebugInspectionScoreProfile, v0, v1);
    atomic_store(result, &qword_27FBED828);
  }

  return result;
}

uint64_t sub_25BF5C270(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BF5C2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBED770, &unk_25BF73C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25BF5C328()
{
  result = qword_27FBED840;
  if (!qword_27FBED840)
  {
    result = swift_getWitnessTable(byte_25BF73D54, &type metadata for WidgetDebugInspectionScoreProfile, v0, v1);
    atomic_store(result, &qword_27FBED840);
  }

  return result;
}

uint64_t sub_25BF5C37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDebugInspectionItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BF5C3E0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetDebugInspectionItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BF5C43C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656C6369747261 && a2 == 0xE900000000000044;
  if (v4 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BF7D770 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7478655479646F62 && a2 == 0xEE006874676E654CLL || (sub_25BF6CCC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972657473756C63 && a2 == 0xE900000000000044 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BF7D790 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BF7D7B0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69647541736168 && a2 == 0xED00006B63617254 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x626D756854736168 && a2 == 0xEC0000006C69616ELL || (sub_25BF6CCC0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F65646956736168 && a2 == 0xE800000000000000 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656E654749417369 && a2 == 0xED00006465746172 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C646E75427369 && a2 == 0xEC00000064696150 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x646165726F437369 && a2 == 0xE800000000000000 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7267726576457369 && a2 == 0xEB000000006E6565 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BF7D7D0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BF7D7F0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BF7D810 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000019 && 0x800000025BF7D830 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x4F65757373497369 && a2 == 0xEB00000000796C6ELL || (sub_25BF6CCC0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x646961507369 && a2 == 0xE600000000000000 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6F736E6F70537369 && a2 == 0xEB00000000646572 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7349746E65726170 && a2 == 0xED00004449657573 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BF7D850 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BF7D870 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000025BF7D890 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6F725065726F6373 && a2 == 0xEC000000656C6966 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BF7D8B0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BF7D8D0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BF7D8F0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BF7D910 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BF7D930 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x7344496369706F74 && a2 == 0xE800000000000000 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x65766E6F43626577 && a2 == 0xEC00000064657472)
  {

    return 36;
  }

  else
  {
    v6 = sub_25BF6CCC0();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

uint64_t sub_25BF5CFC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B63696C63 && a2 == 0xE600000000000000;
  if (v4 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_25BF6CCC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63696C43776172 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_25BF6CCC0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_25BF5D134@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED930, &qword_25BF74270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5F618();
  sub_25BF6CD40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[15] = 0;
  sub_25BF6CBF0();
  v10 = v9;
  v20[14] = 1;
  v11 = sub_25BF6CBE0();
  v13 = v12;
  v14 = v11;
  v20[13] = 2;
  sub_25BF6CBF0();
  v16 = v15;
  v20[12] = 3;
  sub_25BF6CBF0();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v14;
  a2[2] = v13;
  a2[3] = v16;
  a2[4] = v18;
  return result;
}

uint64_t sub_25BF5D378(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000025BF7DC80 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BF7DCA0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BF7DCC0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6353726576726573 && a2 == 0xEB0000000065726FLL || (sub_25BF6CCC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BF7DCE0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7DD00 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v5 = sub_25BF6CCC0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_25BF5D5D0@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED920, &qword_25BF74268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v24[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5F5C4();
  sub_25BF6CD40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24[15] = 0;
  sub_25BF6CBF0();
  v10 = v9;
  v24[14] = 1;
  sub_25BF6CBF0();
  v12 = v11;
  v24[13] = 2;
  sub_25BF6CBF0();
  v14 = v13;
  v24[12] = 3;
  sub_25BF6CBF0();
  v16 = v15;
  v24[11] = 4;
  sub_25BF6CBF0();
  v18 = v17;
  v24[10] = 5;
  sub_25BF6CBF0();
  v20 = v19;
  v24[9] = 6;
  sub_25BF6CBF0();
  v22 = v21;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  *(a2 + 1) = v12;
  *(a2 + 2) = v14;
  *(a2 + 3) = v16;
  *(a2 + 4) = v18;
  *(a2 + 5) = v20;
  *(a2 + 6) = v22;
  return result;
}

uint64_t sub_25BF5D848(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x800000025BF7D950 == a2;
  if (v3 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C754D6F69647561 && a2 == 0xEF7265696C706974 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BF7D970 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7D990 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7D9B0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6963696666656F63 && a2 == 0xEC00000073746E65 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000025BF7D9D0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BF7D9F0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7DA10 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025BF7DA30 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BF7DA50 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BF7DA70 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025BF7DA90 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F436C61626F6C67 && a2 == 0xEC00000074726F68 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025BF7DAB0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025BF7DAD0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7DAF0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BF7DB10 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BF7DB30 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025BF7DB50 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x800000025BF7DB70 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7DB90 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x56676E69726F6373 && a2 == 0xEE006E6F69737265 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x616E65506E656573 && a2 == 0xEB0000000079746CLL || (sub_25BF6CCC0() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025BF7DBB0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000025BF7DBE0 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6154776F64616873 && a2 == 0xEF65726F63536962 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025BF7DC00 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025BF7DC20 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025BF7DC40 == a2 || (sub_25BF6CCC0() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025BF7DC60 == a2)
  {

    return 32;
  }

  else
  {
    v6 = sub_25BF6CCC0();

    if (v6)
    {
      return 32;
    }

    else
    {
      return 33;
    }
  }
}

void *sub_25BF5E274@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBED848, &qword_25BF73F40);
  v5 = *(v164 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v55 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_25BF5ED84();
  sub_25BF6CD40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v91) = 0;
  sub_25BF6CBF0();
  v10 = v9;
  LOBYTE(v91) = 1;
  v89 = sub_25BF6CBA0();
  v163 = v11 & 1;
  LOBYTE(v91) = 2;
  sub_25BF6CBF0();
  v13 = v12;
  LOBYTE(v91) = 3;
  v88 = sub_25BF6CBA0();
  v161 = v14 & 1;
  LOBYTE(v91) = 4;
  v87 = sub_25BF6CBA0();
  v159 = v15 & 1;
  v145 = 5;
  sub_25BF5EDD8();
  sub_25BF6CBB0();
  *(v158 + 7) = v146;
  *(&v158[1] + 7) = v147;
  *(&v158[2] + 7) = *v148;
  v158[3] = *&v148[9];
  LOBYTE(v91) = 6;
  sub_25BF6CBF0();
  v17 = v16;
  LOBYTE(v91) = 7;
  sub_25BF6CBF0();
  v19 = v18;
  LOBYTE(v91) = 8;
  sub_25BF6CBF0();
  v21 = v20;
  LOBYTE(v91) = 9;
  sub_25BF6CBF0();
  v23 = v22;
  LOBYTE(v91) = 10;
  sub_25BF6CBF0();
  v25 = v24;
  LOBYTE(v91) = 11;
  v26 = sub_25BF6CBA0();
  v156 = v27 & 1;
  LOBYTE(v91) = 12;
  v28 = sub_25BF6CBA0();
  v154 = v29 & 1;
  LOBYTE(v90[0]) = 13;
  sub_25BF5EE2C();
  sub_25BF6CBB0();
  v84 = v92;
  v85 = v91;
  v86 = v93;
  v82 = v95;
  v83 = v94;
  LOBYTE(v91) = 14;
  sub_25BF6CBF0();
  v31 = v30;
  LOBYTE(v91) = 15;
  sub_25BF6CBF0();
  v81 = v32;
  LOBYTE(v91) = 16;
  sub_25BF6CBF0();
  v80 = v33;
  LOBYTE(v91) = 17;
  sub_25BF6CBF0();
  v79 = v34;
  LOBYTE(v91) = 18;
  sub_25BF6CBF0();
  v78 = v35;
  LOBYTE(v91) = 19;
  sub_25BF6CBF0();
  v77 = v36;
  LOBYTE(v91) = 20;
  sub_25BF6CBF0();
  v76 = v37;
  LOBYTE(v91) = 21;
  sub_25BF6CBF0();
  v75 = v38;
  LOBYTE(v91) = 22;
  sub_25BF6CBF0();
  v74 = v39;
  LOBYTE(v91) = 23;
  v73 = sub_25BF6CC10();
  LOBYTE(v91) = 24;
  v72 = sub_25BF6CBA0();
  v152 = v40 & 1;
  LOBYTE(v91) = 25;
  sub_25BF6CBF0();
  v71 = v41;
  LOBYTE(v91) = 26;
  sub_25BF6CBF0();
  v70 = v42;
  LOBYTE(v91) = 27;
  sub_25BF6CBF0();
  v69 = v43;
  LOBYTE(v91) = 28;
  sub_25BF6CBF0();
  v68 = v44;
  LOBYTE(v91) = 29;
  sub_25BF6CBF0();
  v67 = v45;
  LOBYTE(v91) = 30;
  sub_25BF6CBF0();
  v66 = v46;
  LOBYTE(v91) = 31;
  v65 = sub_25BF6CBA0();
  v150 = v47 & 1;
  v144 = 32;
  sub_25BF6CBF0();
  v64 = v48;
  (*(v8 + 8))(v7, v164);
  *(&v90[7] + 1) = v158[0];
  *(&v90[9] + 1) = v158[1];
  *(&v90[11] + 1) = v158[2];
  v90[0] = v10;
  v90[1] = v89;
  v57 = v163;
  LOBYTE(v90[2]) = v163;
  *(&v90[2] + 1) = *v162;
  HIDWORD(v90[2]) = *&v162[3];
  v90[3] = v13;
  v49 = v87;
  v90[4] = v88;
  v56 = v161;
  LOBYTE(v90[5]) = v161;
  *(&v90[5] + 1) = *v160;
  HIDWORD(v90[5]) = *&v160[3];
  v90[6] = v87;
  LOBYTE(v8) = v159;
  LOBYTE(v90[7]) = v159;
  *(&v90[13] + 1) = v158[3];
  *(&v90[15] + 1) = *v157;
  HIDWORD(v90[15]) = *&v157[3];
  v62 = v19;
  v63 = v17;
  v90[16] = v17;
  v90[17] = v19;
  v90[18] = v21;
  v90[19] = v23;
  v90[20] = v25;
  v61 = v26;
  v90[21] = v26;
  LODWORD(v164) = v156;
  LOBYTE(v90[22]) = v156;
  HIDWORD(v90[22]) = *&v155[3];
  *(&v90[22] + 1) = *v155;
  v60 = v28;
  v90[23] = v28;
  v59 = v154;
  LOBYTE(v90[24]) = v154;
  HIDWORD(v90[24]) = *&v153[3];
  *(&v90[24] + 1) = *v153;
  v90[25] = v85;
  v90[26] = v84;
  v50 = v86;
  v90[27] = v86;
  v90[28] = v83;
  v90[29] = v82;
  v90[30] = v31;
  v90[31] = v81;
  v90[32] = v80;
  v90[33] = v79;
  v90[34] = v78;
  v90[35] = v77;
  v90[36] = v76;
  v90[37] = v75;
  v90[38] = v74;
  v90[39] = v73;
  v90[40] = v72;
  v58 = v152;
  LOBYTE(v90[41]) = v152;
  *(&v90[41] + 1) = *v151;
  HIDWORD(v90[41]) = *&v151[3];
  v51 = v70;
  v90[42] = v71;
  v90[43] = v70;
  v90[44] = v69;
  v90[45] = v68;
  v90[46] = v67;
  v90[47] = v66;
  v52 = v65;
  v90[48] = v65;
  HIDWORD(v55) = v150;
  LOBYTE(v90[49]) = v150;
  *(&v90[49] + 1) = *v149;
  HIDWORD(v90[49]) = *&v149[3];
  v53 = v64;
  v90[50] = v64;
  sub_25BF5EE80(v90, &v91);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v91 = v10;
  v92 = v89;
  LOBYTE(v93) = v57;
  *(&v93 + 1) = *v162;
  HIDWORD(v93) = *&v162[3];
  v94 = v13;
  v95 = v88;
  v96 = v56;
  *v97 = *v160;
  *&v97[3] = *&v160[3];
  v98 = v49;
  v99 = v8;
  v103 = v158[3];
  v102 = v158[2];
  v101 = v158[1];
  v100 = v158[0];
  *v104 = *v157;
  *&v104[3] = *&v157[3];
  v105 = v63;
  v106 = v62;
  v107 = v21;
  v108 = v23;
  v109 = v25;
  v110 = v61;
  v111 = v164;
  *&v112[3] = *&v155[3];
  *v112 = *v155;
  v113 = v60;
  v114 = v59;
  *&v115[3] = *&v153[3];
  *v115 = *v153;
  v116 = v85;
  v117 = v84;
  v118 = v50;
  v119 = v83;
  v120 = v82;
  v121 = v31;
  v122 = v81;
  v123 = v80;
  v124 = v79;
  v125 = v78;
  v126 = v77;
  v127 = v76;
  v128 = v75;
  v129 = v74;
  v130 = v73;
  v131 = v72;
  v132 = v58;
  *v133 = *v151;
  *&v133[3] = *&v151[3];
  v134 = v71;
  v135 = v51;
  v136 = v69;
  v137 = v68;
  v138 = v67;
  v139 = v66;
  v140 = v52;
  v141 = BYTE4(v55);
  *v142 = *v149;
  *&v142[3] = *&v149[3];
  v143 = v53;
  sub_25BF5EEB8(&v91);
  return memcpy(a2, v90, 0x198uLL);
}

unint64_t sub_25BF5ED84()
{
  result = qword_27FBED850;
  if (!qword_27FBED850)
  {
    result = swift_getWitnessTable(aAt, &type metadata for WidgetDebugInspectionScoreProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED850);
  }

  return result;
}

unint64_t sub_25BF5EDD8()
{
  result = qword_27FBED858;
  if (!qword_27FBED858)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for WidgetDebugInspectionScoreProfile.Coefficients, v0, v1);
    atomic_store(result, &qword_27FBED858);
  }

  return result;
}

unint64_t sub_25BF5EE2C()
{
  result = qword_27FBED860;
  if (!qword_27FBED860)
  {
    result = swift_getWitnessTable(byte_25BF74178, &type metadata for WidgetDebugInspectionScoreProfile.Cohort, v0, v1);
    atomic_store(result, &qword_27FBED860);
  }

  return result;
}

unint64_t sub_25BF5EEE8()
{
  result = qword_27FBED870;
  if (!qword_27FBED870)
  {
    result = swift_getWitnessTable(byte_25BF74150, &type metadata for WidgetDebugInspectionScoreProfile.Coefficients, v0, v1);
    atomic_store(result, &qword_27FBED870);
  }

  return result;
}

unint64_t sub_25BF5EF3C()
{
  result = qword_27FBED878;
  if (!qword_27FBED878)
  {
    result = swift_getWitnessTable(byte_25BF74128, &type metadata for WidgetDebugInspectionScoreProfile.Cohort, v0, v1);
    atomic_store(result, &qword_27FBED878);
  }

  return result;
}

double sub_25BF5EF90(uint64_t a1)
{
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDebugInspectionScoreProfile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    goto LABEL_17;
  }

  if (a2 + 32 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 32) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 32;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 32;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v8 = v6 - 33;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetDebugInspectionScoreProfile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE0)
  {
    v4 = 0;
  }

  if (a2 > 0xDF)
  {
    v5 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDebugInspectionItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetDebugInspectionItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BF5F290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BF5F2D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BF5F34C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BF5F36C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

unint64_t sub_25BF5F3B8()
{
  result = qword_27FBED8F0;
  if (!qword_27FBED8F0)
  {
    result = swift_getWitnessTable(byte_25BF74048, &type metadata for WidgetDebugInspectionItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED8F0);
  }

  return result;
}

unint64_t sub_25BF5F410()
{
  result = qword_27FBED8F8;
  if (!qword_27FBED8F8)
  {
    result = swift_getWitnessTable(byte_25BF74100, &type metadata for WidgetDebugInspectionScoreProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED8F8);
  }

  return result;
}

unint64_t sub_25BF5F468()
{
  result = qword_27FBED900;
  if (!qword_27FBED900)
  {
    result = swift_getWitnessTable(a1oX, &type metadata for WidgetDebugInspectionScoreProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED900);
  }

  return result;
}

unint64_t sub_25BF5F4C0()
{
  result = qword_27FBED908;
  if (!qword_27FBED908)
  {
    result = swift_getWitnessTable(aAkP, &type metadata for WidgetDebugInspectionScoreProfile.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED908);
  }

  return result;
}

unint64_t sub_25BF5F518()
{
  result = qword_27FBED910;
  if (!qword_27FBED910)
  {
    result = swift_getWitnessTable(byte_25BF73FB8, &type metadata for WidgetDebugInspectionItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED910);
  }

  return result;
}

unint64_t sub_25BF5F570()
{
  result = qword_27FBED918;
  if (!qword_27FBED918)
  {
    result = swift_getWitnessTable(byte_25BF73FE0, &type metadata for WidgetDebugInspectionItem.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED918);
  }

  return result;
}

unint64_t sub_25BF5F5C4()
{
  result = qword_27FBED928;
  if (!qword_27FBED928)
  {
    result = swift_getWitnessTable(byte_25BF74448, &type metadata for WidgetDebugInspectionScoreProfile.Coefficients.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED928);
  }

  return result;
}

unint64_t sub_25BF5F618()
{
  result = qword_27FBED938;
  if (!qword_27FBED938)
  {
    result = swift_getWitnessTable(a1r, &type metadata for WidgetDebugInspectionScoreProfile.Cohort.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDebugInspectionScoreProfile.Cohort.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetDebugInspectionScoreProfile.Cohort.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetDebugInspectionScoreProfile.Coefficients.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetDebugInspectionScoreProfile.Coefficients.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25BF5F910()
{
  result = qword_27FBED950;
  if (!qword_27FBED950)
  {
    result = swift_getWitnessTable(byte_25BF74318, &type metadata for WidgetDebugInspectionScoreProfile.Coefficients.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED950);
  }

  return result;
}

unint64_t sub_25BF5F968()
{
  result = qword_27FBED958;
  if (!qword_27FBED958)
  {
    result = swift_getWitnessTable(byte_25BF743D0, &type metadata for WidgetDebugInspectionScoreProfile.Cohort.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED958);
  }

  return result;
}

unint64_t sub_25BF5F9C0()
{
  result = qword_27FBED960;
  if (!qword_27FBED960)
  {
    result = swift_getWitnessTable(aAl, &type metadata for WidgetDebugInspectionScoreProfile.Cohort.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED960);
  }

  return result;
}

unint64_t sub_25BF5FA18()
{
  result = qword_27FBED968;
  if (!qword_27FBED968)
  {
    result = swift_getWitnessTable(aQh, &type metadata for WidgetDebugInspectionScoreProfile.Cohort.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED968);
  }

  return result;
}

unint64_t sub_25BF5FA70()
{
  result = qword_27FBED970;
  if (!qword_27FBED970)
  {
    result = swift_getWitnessTable(byte_25BF74288, &type metadata for WidgetDebugInspectionScoreProfile.Coefficients.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED970);
  }

  return result;
}

unint64_t sub_25BF5FAC8()
{
  result = qword_27FBED978;
  if (!qword_27FBED978)
  {
    result = swift_getWitnessTable(")i,&ħ", &type metadata for WidgetDebugInspectionScoreProfile.Coefficients.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FBED978);
  }

  return result;
}

void NTDeleteOnDiskAssets_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "assetFileURLs"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTPBTodaySectionConfigGenerateArticle_cold_1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"articleIDs section config articles JSON requires an articleID for every article"];
  v1 = 136315906;
  v2 = "NTPBTodaySectionConfigArticle *NTPBTodaySectionConfigGenerateArticle(NSDictionary<NSString *,id> *__strong, BOOL *)";
  v3 = 2080;
  v4 = "NTPBTodaySectionConfig+NTAdditions.m";
  v5 = 1024;
  v6 = 29;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void NTPBTodaySectionConfigGenerateArticles_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articleDictionaries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTPBTodaySectionConfigGenerateItems_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "itemDictionaries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTArticleIDsRequestWithArticles_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "articles"];
  *buf = 136315906;
  v2 = "NTCatchUpOperationArticleIDsRequest * _Nonnull NTArticleIDsRequestWithArticles(NSArray<NTPBTodaySectionConfigArticle *> *__strong _Nonnull)";
  v3 = 2080;
  v4 = "NTItemsSectionFetchDescriptor.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void NTPossiblySimulateCrashWithError_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "error"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTAssetFileURL_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "assetsDirectoryFileURL"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTAssetFileURLWithData_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "data"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTAssetFileURLWithData_cold_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "assetsDirectoryFileURL"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTAssetFileURLWithFile_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "fileURL"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTAssetFileURLWithFile_cold_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "assetsDirectoryFileURL"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTSectionFeedItemsLimit_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "costInfo"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTSectionFeedItemsLimit_cold_2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "slotsLimit >= 0"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTHeadlineThumbnailFromFCHeadline_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headline"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTHeadlineSourceNameImageMaskAssetHandleFromFCHeadline_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headline"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTHeadlineAdElementFromFCHeadline_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headline"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTHeadlineAnalyticsElementFromFCHeadline_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headline"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

void NTHeadlineFromFCHeadline_cold_1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "headline"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}