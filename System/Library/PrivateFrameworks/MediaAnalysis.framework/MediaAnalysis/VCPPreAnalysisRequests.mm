@interface VCPPreAnalysisRequests
+ (id)_cachedRequestIdealDimension;
+ (unint64_t)sharpnessRevision;
+ (void)asyncCacheRequestIdealDimension;
+ (void)asyncLoadSharedPhotoFormatsObjects;
+ (void)sharpnessRevision;
- (id)gatherAvailableRequests;
- (id)mapAvailableRequestsToResolution;
@end

@implementation VCPPreAnalysisRequests

+ (unint64_t)sharpnessRevision
{
  if ((atomic_load_explicit(byte_1ED942810, memory_order_acquire) & 1) == 0)
  {
    +[VCPPreAnalysisRequests sharpnessRevision];
  }

  return _MergedGlobals_0;
}

- (id)gatherAvailableRequests
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_aestheticsRequest)
  {
    [array addObject:?];
  }

  if (self->_classificationRequest)
  {
    [v4 addObject:?];
  }

  if (self->_sceneprintRequest)
  {
    [v4 addObject:?];
  }

  if (self->_saliencyRequest)
  {
    [v4 addObject:?];
  }

  if (self->_junkImageRequest)
  {
    [v4 addObject:?];
  }

  if (self->_objectRequest)
  {
    [v4 addObject:?];
  }

  if (self->_saliencyObjectnessRequest)
  {
    [v4 addObject:?];
  }

  if (self->_landmarkRequest)
  {
    [v4 addObject:?];
  }

  if (self->_nsfwRequest)
  {
    [v4 addObject:?];
  }

  if (self->_tabooRequest)
  {
    [v4 addObject:?];
  }

  if (self->_semanticRequest)
  {
    [v4 addObject:?];
  }

  if (self->_sceneprintRawRequest)
  {
    [v4 addObject:?];
  }

  if (self->_memeRequest)
  {
    [v4 addObject:?];
  }

  if (self->_adjustmentsRequest)
  {
    [v4 addObject:?];
  }

  if (self->_documentRequest)
  {
    [v4 addObject:?];
  }

  if (self->_cityNatureRequest)
  {
    [v4 addObject:?];
  }

  if (self->_imagefingerprintsRequest)
  {
    [v4 addObject:?];
  }

  if (self->_classifyImageRequest)
  {
    [v4 addObject:?];
  }

  return v4;
}

+ (id)_cachedRequestIdealDimension
{
  if (+[VCPPreAnalysisRequests _cachedRequestIdealDimension]::once != -1)
  {
    +[VCPPreAnalysisRequests _cachedRequestIdealDimension];
  }

  v3 = +[VCPPreAnalysisRequests _cachedRequestIdealDimension]::cachedRequestIdealDimension;

  return v3;
}

void __54__VCPPreAnalysisRequests__cachedRequestIdealDimension__block_invoke(uint64_t a1, uint64_t a2)
{
  v66[15] = *MEMORY[0x1E69E9840];
  v65[0] = objc_opt_class();
  v65[1] = &unk_1F49BBCB0;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
  v66[0] = v29;
  v64[0] = objc_opt_class();
  v64[1] = &unk_1F49BBCC8;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v66[1] = v37;
  v63[0] = objc_opt_class();
  v63[1] = &unk_1F49BBCE0;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v66[2] = v35;
  v62[0] = objc_opt_class();
  v62[1] = &unk_1F49BBCB0;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  v66[3] = v33;
  v61[0] = objc_opt_class();
  v61[1] = &unk_1F49BBCF8;
  type = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v66[4] = type;
  v60[0] = objc_opt_class();
  v60[1] = &unk_1F49BBCB0;
  obja = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v66[5] = obja;
  v59[0] = objc_opt_class();
  v59[1] = &unk_1F49BBD10;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v66[6] = v2;
  v58[0] = objc_opt_class();
  v58[1] = &unk_1F49BBD28;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v66[7] = v3;
  v57[0] = objc_opt_class();
  v57[1] = &unk_1F49BBCB0;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v66[8] = v4;
  v56[0] = objc_opt_class();
  v56[1] = &unk_1F49BBD40;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v66[9] = v5;
  v55[0] = objc_opt_class();
  v55[1] = &unk_1F49BBD58;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v66[10] = v6;
  v54[0] = objc_opt_class();
  v54[1] = &unk_1F49BBD70;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v66[11] = v7;
  v53[0] = objc_opt_class();
  v53[1] = &unk_1F49BBD28;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v66[12] = v8;
  v52[0] = objc_opt_class();
  v52[1] = &unk_1F49BBD58;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v66[13] = v9;
  v51[0] = objc_opt_class();
  v51[1] = &unk_1F49BBCB0;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v66[14] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:15];

  v12 = v11;
  v36 = [MEMORY[0x1E695DF90] dictionary];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v13)
  {
    v38 = 0;
    v34 = *v41;
    v14 = MEMORY[0x1E69E9C10];
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = [v16 objectAtIndexedSubscript:0];
        v18 = [v16 objectAtIndexedSubscript:1];
        v19 = [v18 unsignedIntValue];

        v20 = objc_alloc_init(v17);
        v39 = v38;
        v21 = [v20 setRevision:v19 error:&v39];
        v22 = v39;

        v38 = v22;
        if (!v21)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v45 = v17;
            v46 = 2048;
            v47 = v19;
            v48 = 2112;
            v49 = v22;
            v24 = v14;
            v25 = "Failed to set %@::setRevision %lu: %@";
            v26 = 32;
LABEL_14:
            _os_log_impl(&dword_1C9B70000, v24, OS_LOG_TYPE_ERROR, v25, buf, v26);
          }

LABEL_15:
          v23 = &unk_1F49BBC98;
          goto LABEL_16;
        }

        v23 = [v20 vcp_idealDimension];
        if (!v23)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v45 = v17;
            v46 = 2048;
            v47 = v19;
            v24 = v14;
            v25 = "Failed to get the ideal size of request %@ with revision %lu";
            v26 = 22;
            goto LABEL_14;
          }

          goto LABEL_15;
        }

LABEL_16:
        [v36 setObject:v23 forKeyedSubscript:v16];
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v45 = v17;
          v46 = 2048;
          v47 = v19;
          v48 = 2112;
          v49 = v23;
          _os_log_impl(&dword_1C9B70000, v14, OS_LOG_TYPE_DEBUG, "Request %@ (revision %lu) ideal size %@", buf, 0x20u);
        }
      }

      v13 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (!v13)
      {
        goto LABEL_23;
      }
    }
  }

  v38 = 0;
LABEL_23:

  v27 = +[VCPPreAnalysisRequests _cachedRequestIdealDimension]::cachedRequestIdealDimension;
  +[VCPPreAnalysisRequests _cachedRequestIdealDimension]::cachedRequestIdealDimension = v36;
  v28 = v36;
}

- (id)mapAvailableRequestsToResolution
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  gatherAvailableRequests = [(VCPPreAnalysisRequests *)self gatherAvailableRequests];
  _cachedRequestIdealDimension = [objc_opt_class() _cachedRequestIdealDimension];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = gatherAvailableRequests;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v26[0] = objc_opt_class();
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "revision")}];
        v26[1] = v9;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

        v11 = [_cachedRequestIdealDimension objectForKeyedSubscript:v10];
        if (!v11)
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v12 = [v8 description];
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Ideal size for request %@ not cached", buf, 0xCu);
          }

          v11 = &unk_1F49BBC98;
        }

        v13 = [dictionary objectForKeyedSubscript:v11];
        v14 = v13 == 0;

        if (v14)
        {
          array = [MEMORY[0x1E695DF70] array];
          [dictionary setObject:array forKeyedSubscript:v11];
        }

        v16 = [dictionary objectForKeyedSubscript:v11];
        [v16 addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v5);
  }

  return dictionary;
}

+ (void)asyncCacheRequestIdealDimension
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCPPreAnalysisRequests_asyncCacheRequestIdealDimension__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v3, block);
}

void __57__VCPPreAnalysisRequests_asyncCacheRequestIdealDimension__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = VCPSignPostLog(v2);
  v4 = os_signpost_id_generate(v3);

  v6 = VCPSignPostLog(v5);
  v7 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VCPPreAnalysisRequests_CacheRequestIdealDimension", "", &v14, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Caching Vision request input resolutions ... ", &v14, 2u);
  }

  v8 = [*(a1 + 32) _cachedRequestIdealDimension];
  v9 = MediaAnalysisLogLevel();
  if (v9 >= 7)
  {
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      v10 = [v8 count];
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Cached %lu request", &v14, 0xCu);
    }
  }

  v11 = VCPSignPostLog(v9);
  v12 = v11;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v4, "VCPPreAnalysisRequests_CacheRequestIdealDimension", "", &v14, 2u);
  }

  if (v2)
  {
    v13 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VCPPreAnalysisRequests_CacheRequestIdealDimension", v13 - v2);
  }
}

+ (void)asyncLoadSharedPhotoFormatsObjects
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_444);
}

void __60__VCPPreAnalysisRequests_asyncLoadSharedPhotoFormatsObjects__block_invoke()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v23 = mach_absolute_time();
  v0 = VCPSignPostLog(v23);
  v1 = os_signpost_id_generate(v0);

  v3 = VCPSignPostLog(v2);
  v4 = v3;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v1, "VCPPreAnalysisRequests_LoadPFSceneObjects", "", buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Initializing PFSceneObjects ... ", buf, 2u);
  }

  v5 = [MEMORY[0x1E69C0858] vcp_sharedTaxonomy];
  if (!v5)
  {
    v11 = MediaAnalysisLogLevel();
    if (v11 < 3)
    {
      goto LABEL_21;
    }

    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "[PreAnalysis] Failed to initialize PFSceneTaxonomy";
    goto LABEL_20;
  }

  v6 = [MEMORY[0x1E69C0848] vcp_sharedSceneGeography];
  if (!v6)
  {
    v11 = MediaAnalysisLogLevel();
    if (v11 < 3)
    {
      goto LABEL_21;
    }

    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v11)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "[PreAnalysis] Failed to initialize PFSceneGeography";
LABEL_20:
    _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
LABEL_21:
    v16 = 0;
    v19 = 0;
    goto LABEL_27;
  }

  v7 = [MEMORY[0x1E6978A30] vcp_instanceWithExtendedSceneIdentifier:1472 confidence:0.001];
  v8 = v7;
  if (v7)
  {
    v9 = MEMORY[0x1E69C1528];
    v28[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v9 assetIconicScoreForSceneClassifications:v10 assetLatitude:v6 assetLongitude:v5 sceneGeography:45.5787 sceneTaxonomy:-122.1177];

    v11 = MediaAnalysisLogLevel();
    if (v11 >= 7)
    {
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412546;
        v25 = v13;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PreAnalysis] Initialized %@ and %@", buf, 0x16u);
      }
    }

    v16 = v8;
  }

  else
  {
    v11 = MediaAnalysisLogLevel();
    if (v11 >= 3)
    {
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v11)
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PreAnalysis] Failed to create scene classification", buf, 2u);
      }
    }

    v16 = 0;
  }

  v19 = v6;
LABEL_27:
  v20 = VCPSignPostLog(v11);
  v21 = v20;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v1, "VCPPreAnalysisRequests_LoadPFSceneObjects", "", buf, 2u);
  }

  if (v23)
  {
    v22 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VCPPreAnalysisRequests_LoadPFSceneObjects", v22 - v23);
  }
}

+ (void)sharpnessRevision
{
  if (__cxa_guard_acquire(byte_1ED942810))
  {
    _MergedGlobals_0 = 2;

    __cxa_guard_release(byte_1ED942810);
  }
}

@end