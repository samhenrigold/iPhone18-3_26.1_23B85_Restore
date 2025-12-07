@interface PGSettlingEffectScoreHelper
+ (float)analyzedSettlingEffectScoreForAsset:(id)asset requestedOnDemand:(BOOL *)demand;
+ (float)requestSettlingEffectScoreForAsset:(id)asset error:(id *)error;
@end

@implementation PGSettlingEffectScoreHelper

+ (float)requestSettlingEffectScoreForAsset:(id)asset error:(id *)error
{
  v57[2] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v6 = 0.0;
  if ([MEMORY[0x277D3C810] assetIsEligibleForSettlingEffect:assetCopy])
  {
    v7 = os_log_create("com.apple.PhotosGraph", "suggestions");
    analysisService = [MEMORY[0x277D267E8] analysisService];
    v56[0] = *MEMORY[0x277D26828];
    v56[1] = @"AllowStreaming";
    v57[0] = MEMORY[0x277CBEC38];
    v57[1] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
    mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
    v10 = v7;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      uuid = [assetCopy uuid];
      [mediaAnalysisProperties settlingEffectScore];
      v13 = v12;
      [mediaAnalysisProperties activityScore];
      *buf = 138412802;
      *&buf[4] = uuid;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      *&buf[22] = 2048;
      v53 = v14;
      _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "[PGSettlingEffectScoreHelper] Requesting settlingEffectScore for asset:%@. (current SettlingEffectScore:%.2f, ActivityScore:%.2f)", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = COERCE_DOUBLE(__Block_byref_object_copy__63382);
    v54 = __Block_byref_object_dispose__63383;
    v55 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v15 = dispatch_semaphore_create(0);
    v16 = v10;
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v47 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "SettingEffectScoreRequest", "", v47, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v20 = mach_absolute_time();
    v51 = assetCopy;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __72__PGSettlingEffectScoreHelper_requestSettlingEffectScoreForAsset_error___block_invoke_2;
    v32[3] = &unk_2788884C8;
    v33 = assetCopy;
    v35 = &v43;
    v36 = &v39;
    v37 = buf;
    v22 = v15;
    v34 = v22;
    [analysisService requestAnalysisTypes:0x40000 forAssets:v21 withOptions:v8 progressHandler:&__block_literal_global_63387 andCompletionHandler:v32];

    v23 = dispatch_time(0, 60000000000);
    dispatch_semaphore_wait(v22, v23);
    v24 = mach_absolute_time();
    v25 = info;
    v26 = v19;
    v27 = v26;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v47 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_END, v17, "SettingEffectScoreRequest", "", v47, 2u);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *v47 = 136315394;
      v48 = COERCE_DOUBLE("SettingEffectScoreRequest");
      v49 = 2048;
      v50 = ((((v24 - v20) * v25.numer) / v25.denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v47, 0x16u);
    }

    if (error)
    {
      *error = *(*&buf[8] + 40);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = v44[6];
      v29 = v40[6];
      *v47 = 134218240;
      v48 = v28;
      v49 = 2048;
      v50 = v29;
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[PGSettlingEffectScoreHelper] settlingEffectScore:%.2f, activityScore:%.2f", v47, 0x16u);
    }

    v6 = v44[6];

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(buf, 8);
  }

  return v6;
}

void __72__PGSettlingEffectScoreHelper_requestSettlingEffectScoreForAsset_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  if (v17)
  {
    v6 = [*(a1 + 32) localIdentifier];
    v7 = [v17 objectForKeyedSubscript:v6];
    v8 = [v7 objectForKey:*MEMORY[0x277D267C8]];
    v9 = [v8 firstObject];

    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D267B8]];
    [v10 floatValue];
    *(*(*(a1 + 48) + 8) + 24) = v11;

    v12 = [v9 objectForKeyedSubscript:*MEMORY[0x277D26798]];
    v13 = [v12 objectForKeyedSubscript:@"RankingLevel"];
    [v13 floatValue];
    *(*(*(a1 + 56) + 8) + 24) = v14;
  }

  else
  {
    v15 = *(*(a1 + 64) + 8);
    v16 = v5;
    v9 = *(v15 + 40);
    *(v15 + 40) = v16;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

+ (float)analyzedSettlingEffectScoreForAsset:(id)asset requestedOnDemand:(BOOL *)demand
{
  v18 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
  [mediaAnalysisProperties settlingEffectScore];
  v8 = v7;

  if (v8 <= -1.0 || ([assetCopy mediaAnalysisProperties], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "activityScore"), v11 = v10, v9, v11 == 0.5))
  {
    if (demand)
    {
      *demand = 1;
    }

    v15 = 0;
    [PGSettlingEffectScoreHelper requestSettlingEffectScoreForAsset:assetCopy error:&v15];
    v8 = v12;
    v13 = v15;
    if (v13 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v13;
      _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "[PGSettlingEffectScoreHelper] Error requesting settlingEffectScore: %@", buf, 0xCu);
    }
  }

  return v8;
}

@end