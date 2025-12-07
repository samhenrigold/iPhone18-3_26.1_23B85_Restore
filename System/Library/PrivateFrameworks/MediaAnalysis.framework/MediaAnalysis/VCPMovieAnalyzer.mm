@interface VCPMovieAnalyzer
+ (BOOL)canAnalyzeUndegraded:(id)undegraded withResources:(id)resources;
+ (BOOL)enableAudioVideoFusion;
+ (float)getMaximumHighlightInSec;
+ (id)analyzerWithVCPAsset:(id)asset withExistingAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types withOptions:(id)options;
+ (void)getMaximumHighlightInSec;
- (VCPMovieAnalyzer)initWithPHAsset:(id)asset existingAnalysis:(id)analysis analysisTypes:(unint64_t)types downloadedData:(id)data;
- (VCPMovieAnalyzer)initWithPHAsset:(id)asset withPausedAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types;
- (VCPMovieAnalyzer)initWithVCPAsset:(id)asset withExistingAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types withOptions:(id)options;
- (id)analyzeAsset:(id)asset streamed:(BOOL *)streamed;
- (id)createDecoderForTrack:(id)track timerange:(id *)timerange forAnalysisTypes:(unint64_t)types decodedFrameRate:(float *)rate;
- (id)createVideoAnalyzerWithOrientation:(int)orientation preferredTransform:(CGAffineTransform *)transform embeddings:(id)embeddings;
- (id)processExistingAnalysisForTimeRange:(id *)range analysisTypes:(unint64_t *)types;
- (int)_waitForAsyncAudioResults;
- (int)analyzeVideoSegment:(id)segment timerange:(id *)timerange forAnalysisTypes:(unint64_t)types cancel:(id)cancel;
- (int)analyzeVideoTrack:(id)track start:(id *)start forAnalysisTypes:(unint64_t)types cancel:(id)cancel;
- (int)generateAndPersistVideoThumbnailResources:(id)resources forPHAsset:(id)asset withResults:(id)results cancelBlock:(id)block;
- (int)generateKeyFrameResource:(id)resource;
- (int)performMetadataAnalysisOnAsset:(id)asset withCancelBlock:(id)block;
- (int)postProcessAnimalResults:(id)results;
- (int)postProcessAutoPlayable:(id)playable;
- (void)loadPropertiesForAsset:(id)asset;
@end

@implementation VCPMovieAnalyzer

+ (BOOL)canAnalyzeUndegraded:(id)undegraded withResources:(id)resources
{
  undegradedCopy = undegraded;
  resourcesCopy = resources;
  if ([undegradedCopy vcp_isVideoSlowmo])
  {
    v7 = [resourcesCopy vcp_hasLocalSlowmo:{objc_msgSend(undegradedCopy, "vcp_hasAdjustments")}];
  }

  else
  {
    v7 = [resourcesCopy vcp_hasLocalMovie:{objc_msgSend(undegradedCopy, "hasAdjustments")}];
  }

  v8 = v7;

  return v8;
}

+ (float)getMaximumHighlightInSec
{
  if ((atomic_load_explicit(byte_1ED942830, memory_order_acquire) & 1) == 0)
  {
    +[VCPMovieAnalyzer getMaximumHighlightInSec];
  }

  return *&_MergedGlobals_2;
}

+ (BOOL)enableAudioVideoFusion
{
  if (_os_feature_enabled_impl())
  {
    v2 = 7;
  }

  else
  {
    v2 = 5;
  }

  {
    v4 = v2;
    {
      +[VCPMovieAnalyzer enableAudioVideoFusion]::enable = [VCPAudioVideoEmbeddingFuser supportFusionForVersion:v4];
    }
  }

  return +[VCPMovieAnalyzer enableAudioVideoFusion]::enable;
}

- (VCPMovieAnalyzer)initWithVCPAsset:(id)asset withExistingAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types withOptions:(id)options
{
  v60 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  optionsCopy = options;
  v55.receiver = self;
  v55.super_class = VCPMovieAnalyzer;
  v14 = [(VCPMovieAnalyzer *)&v55 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_47;
  }

  modificationDate = [assetCopy modificationDate];
  v17 = modificationDate == 0;

  if (!v17)
  {
    *(v14 + 129) = 0;
    v14[131] = 1;
    [objc_opt_class() getMaximumHighlightInSec];
    *(v14 + 33) = v18;
    *(v14 + 18) = 0;
    *(v14 + 19) = 0;
    *(v14 + 17) = 1;
    *(v14 + 1) = types;
    objc_storeStrong(v14 + 4, asset);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v20 = *(v14 + 2);
    *(v14 + 2) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v22 = *(v14 + 3);
    *(v14 + 3) = dictionary2;

    v14[56] = 0;
    if (SocType(v23, v24) < 247)
    {
      v25 = 0;
    }

    else
    {
      v25 = [assetCopy isLivePhoto] ^ 1;
    }

    v14[40] = v25;
    objc_storeStrong(v14 + 9, options);
    if (+[VCPMovieAnalyzer shouldProcessAudioAsync])
    {
      *(v14 + 26) = 0;
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v28 = *(v14 + 14);
      *(v14 + 14) = dictionary3;

      *(v14 + 15) = 0;
      v29 = dispatch_queue_create("com.apple.mediaanalysisd.audioanalysis", 0);
      v30 = *(v14 + 11);
      *(v14 + 11) = v29;

      v31 = dispatch_group_create();
      v32 = *(v14 + 12);
      *(v14 + 12) = v31;

      v14[128] = 0;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier = [*(v14 + 4) localIdentifier];
      v34 = MediaAnalysisTypeShortDescription(*(v14 + 1));
      *buf = 138412546;
      v57 = localIdentifier;
      v58 = 2112;
      v59 = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initialize to process (%@)", buf, 0x16u);
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [*(v14 + 4) localIdentifier];
      v36 = [analysisCopy vcp_analysisDescriptionWithResultDetails:1];
      *buf = 138412546;
      v57 = localIdentifier2;
      v58 = 2112;
      v59 = v36;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initializing with existing analysis %@", buf, 0x16u);
    }

    if (analysisCopy)
    {
      vcp_version = [analysisCopy vcp_version];
      v38 = 75;
      if (vcp_version == 75)
      {
        v39 = analysisCopy;
        v40 = *(v14 + 6);
        *(v14 + 6) = v39;
        v38 = vcp_version;
        goto LABEL_22;
      }
    }

    else
    {
      v38 = 75;
    }

    v40 = *(v14 + 6);
    *(v14 + 6) = 0;
LABEL_22:

    [*(v14 + 2) vcp_setVersion:v38];
    v41 = *(v14 + 2);
    modificationDate2 = [assetCopy modificationDate];
    [v41 vcp_setDateModified:modificationDate2];

    [*(v14 + 2) vcp_setStatsFlags:0];
    v43 = *(v14 + 1);
    if ((v43 & 0x8000000000000) != 0)
    {
      *(v14 + 1) = v43 | 0x40064008;
      v44 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
      v43 = *(v14 + 1);
      if (v44)
      {
        v43 |= 0x80000000000uLL;
        *(v14 + 1) = v43;
      }
    }

    if ((v43 & 0x40000) != 0)
    {
      v43 |= 0x40142089CuLL;
      *(v14 + 1) = v43;
    }

    if ((v43 & 0x80000000000) != 0)
    {
      enableAudioVideoFusion = [objc_opt_class() enableAudioVideoFusion];
      v43 = *(v14 + 1);
      if (enableAudioVideoFusion)
      {
        v43 |= 0x800000000000uLL;
        *(v14 + 1) = v43;
      }
    }

    if ((v43 & 0x200000000000) != 0)
    {
      isLivePhoto = [assetCopy isLivePhoto];
      v47 = 0x40000000;
      if (!isLivePhoto)
      {
        v47 = 0x80000000000;
      }

      v43 = *(v14 + 1) | v47;
      *(v14 + 1) = v43;
    }

    if ((v43 & 0x8000) != 0 && v14[40] == 1)
    {
      v43 |= 0x4088uLL;
      *(v14 + 1) = v43;
    }

    v48 = (v43 >> 7) & 0x80 | (v43 >> 20) & 0x20000 | v43;
    if ((v43 & 0x2000004000) != 0)
    {
      *(v14 + 1) = v48;
    }

    v49 = (v43 >> 7) & 0x80 | (v43 >> 20) & 0x20000 | v43;
    if ((v48 & 0x80) != 0)
    {
      v49 = v48 | 0x1018;
      *(v14 + 1) = v48 | 0x1018;
      if (v14[40] == 1)
      {
        v49 = v48 | 0x5018;
        *(v14 + 1) = v48 | 0x5018;
      }
    }

    if ((v49 & 0x4000004000) != 0)
    {
      *(v14 + 1) = (v49 << 28) & 0x40000000000 | (((v49 >> 38) & 1) << 40) | v49;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier3 = [*(v14 + 4) localIdentifier];
      v51 = MediaAnalysisTypeShortDescription(*(v14 + 1));
      *buf = 138412546;
      v57 = localIdentifier3;
      v58 = 2112;
      v59 = v51;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initialized to process (%@)", buf, 0x16u);
    }

    goto LABEL_47;
  }

  if (!*(v14 + 18))
  {
    *(v14 + 9) = xmmword_1C9F62E20;
  }

  *(v14 + 17) = 3;
  v26 = *(v14 + 2);
  *(v14 + 2) = 0;

LABEL_47:
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier4 = [(VCPAsset *)v15->_asset localIdentifier];
    v53 = [(NSMutableDictionary *)v15->_analysis vcp_analysisDescriptionWithResultDetails:1];
    *buf = 138412546;
    v57 = localIdentifier4;
    v58 = 2112;
    v59 = v53;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] Initialized analysis %@", buf, 0x16u);
  }

  return v15;
}

+ (id)analyzerWithVCPAsset:(id)asset withExistingAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types withOptions:(id)options
{
  assetCopy = asset;
  analysisCopy = analysis;
  optionsCopy = options;
  v12 = [objc_alloc(objc_opt_class()) initWithVCPAsset:assetCopy withExistingAnalysis:analysisCopy forAnalysisTypes:types withOptions:optionsCopy];

  return v12;
}

- (VCPMovieAnalyzer)initWithPHAsset:(id)asset withPausedAnalysis:(id)analysis forAnalysisTypes:(unint64_t)types
{
  v32 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  objc_storeStrong(&self->_phAsset, asset);
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier = [(VCPAsset *)self->_asset localIdentifier];
    v12 = [analysisCopy vcp_analysisDescriptionWithResultDetails:1];
    v28 = 138412546;
    v29 = localIdentifier;
    v30 = 2112;
    v31 = v12;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer][Pause] Initializing with paused analysis %@", &v28, 0x16u);
  }

  if (!analysisCopy)
  {
    goto LABEL_14;
  }

  if ([analysisCopy vcp_version] != 75 || (objc_msgSend(analysisCopy, "vcp_dateModified"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(assetCopy, "vcp_modificationDate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToDate:", v14), v14, v13, (v15 & 1) == 0))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier2 = [assetCopy localIdentifier];
      v28 = 138412290;
      v29 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Existing analysis outdated; dropping", &v28, 0xCu);
    }

LABEL_14:
    v26 = [VCPPhotosAsset assetWithPHAsset:assetCopy];
    v17 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v26 withExistingAnalysis:0 forAnalysisTypes:types withOptions:0];

    goto LABEL_15;
  }

  v16 = [VCPPhotosAsset assetWithPHAsset:assetCopy];
  v17 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v16 withExistingAnalysis:0 forAnalysisTypes:types withOptions:0];

  if (v17)
  {
    vcp_types = [analysisCopy vcp_types];
    analysis = v17->_analysis;
    v17->_requestedAnalyses &= ~vcp_types;
    -[NSMutableDictionary vcp_setTypes:](analysis, "vcp_setTypes:", [analysisCopy vcp_types]);
    -[NSMutableDictionary vcp_setFlags:](v17->_analysis, "vcp_setFlags:", [analysisCopy vcp_flags]);
    -[NSMutableDictionary vcp_setStatsFlags:](v17->_analysis, "vcp_setStatsFlags:", [analysisCopy vcp_statsFlags]);
    v20 = v17->_analysis;
    vcp_results = [analysisCopy vcp_results];
    [(NSMutableDictionary *)v20 vcp_addEntriesFromResults:vcp_results];

    v22 = v17->_analysis;
    objc_msgSend_vcp_syncPoint(analysisCopy);
    [(NSMutableDictionary *)v22 vcp_setSyncPoint:&v28];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier3 = [(VCPAsset *)v17->_asset localIdentifier];
      v24 = [(NSMutableDictionary *)v17->_analysis vcp_analysisDescriptionWithResultDetails:1];
      v28 = 138412546;
      v29 = localIdentifier3;
      v30 = 2112;
      v31 = v24;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer][Pause] Initialized analysis %@", &v28, 0x16u);
    }
  }

LABEL_15:

  return v17;
}

- (VCPMovieAnalyzer)initWithPHAsset:(id)asset existingAnalysis:(id)analysis analysisTypes:(unint64_t)types downloadedData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  analysisCopy = analysis;
  dataCopy = data;
  objc_storeStrong(&self->_phAsset, asset);
  if (!analysisCopy)
  {
LABEL_7:
    v21 = [VCPPhotosAsset assetWithPHAsset:assetCopy downloadedData:dataCopy];
    v19 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v21 withExistingAnalysis:0 forAnalysisTypes:types withOptions:0];

    goto LABEL_8;
  }

  vcp_dateModified = [analysisCopy vcp_dateModified];
  vcp_modificationDate = [assetCopy vcp_modificationDate];
  v16 = [vcp_dateModified isEqualToDate:vcp_modificationDate];

  if ((v16 & 1) == 0)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [assetCopy localIdentifier];
      v23 = 138412290;
      v24 = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "  [%@] Existing analysis outdated; dropping", &v23, 0xCu);
    }

    goto LABEL_7;
  }

  v17 = [VCPPhotosAsset assetWithPHAsset:assetCopy downloadedData:dataCopy];
  v18 = MediaAnalysisStripOutdatedAnalysis(assetCopy, analysisCopy);
  v19 = [(VCPMovieAnalyzer *)self initWithVCPAsset:v17 withExistingAnalysis:v18 forAnalysisTypes:types withOptions:0];

LABEL_8:
  return v19;
}

- (void)loadPropertiesForAsset:(id)asset
{
  v18[3] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = *MEMORY[0x1E69875D0];
  v17[0] = *MEMORY[0x1E69875A0];
  v17[1] = v4;
  v18[0] = &unk_1F49BEED8;
  v18[1] = &unk_1F49BEEF0;
  v17[2] = *MEMORY[0x1E6987608];
  v18[2] = &unk_1F49BEF08;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v6 = dispatch_group_create();
  v7 = dispatch_group_create();
  dispatch_group_enter(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke;
  v12[3] = &unk_1E834D048;
  v13 = v5;
  v8 = assetCopy;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v9 = v6;
  v10 = v7;
  v11 = v5;
  [v8 loadValuesAsynchronouslyForKeys:&unk_1F49BEF20 completionHandler:v12];
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke_2;
  v3[3] = &unk_1E834C610;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
  dispatch_group_leave(*(a1 + 56));
}

void __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) tracksWithMediaType:a2];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        dispatch_group_enter(*(a1 + 40));
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __43__VCPMovieAnalyzer_loadPropertiesForAsset___block_invoke_3;
        v11[3] = &unk_1E834BDC0;
        v12 = *(a1 + 40);
        [v10 loadValuesAsynchronouslyForKeys:v5 completionHandler:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (id)processExistingAnalysisForTimeRange:(id *)range analysisTypes:(unint64_t *)types
{
  v52 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  existingAnalysis = self->_existingAnalysis;
  if (existingAnalysis)
  {
    v6 = [(NSDictionary *)existingAnalysis objectForKey:@"performedAnalysisTypes"];

    if (v6)
    {
      *types = self->_requestedAnalyses & [(NSDictionary *)self->_existingAnalysis vcp_types];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      vcp_results = [(NSDictionary *)self->_existingAnalysis vcp_results];
      allKeys = [vcp_results allKeys];

      obj = allKeys;
      v9 = [allKeys countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v9)
      {
        v30 = *v47;
        v10 = MEMORY[0x1E6960CC0];
        do
        {
          v11 = 0;
          v31 = v9;
          do
          {
            if (*v47 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v46 + 1) + 8 * v11);
            array = [MEMORY[0x1E695DF70] array];
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            vcp_results2 = [(NSDictionary *)self->_existingAnalysis vcp_results];
            v15 = [vcp_results2 objectForKeyedSubscript:v12];

            v33 = v12;
            v16 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
            if (v16)
            {
              v17 = *v43;
              do
              {
                v18 = 0;
                do
                {
                  if (*v43 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v42 + 1) + 8 * v18);
                  memset(&v41, 0, sizeof(v41));
                  CMTimeRangeMakeFromDictionary(&v41, v19);
                  if ((v41.start.flags & 1) == 0 || (v41.duration.flags & 1) == 0 || v41.duration.epoch || v41.duration.value < 0 || (range = v41, v20 = *&range->var0.var3, *&otherRange.start.value = *&range->var0.var0, *&otherRange.start.epoch = v20, *&otherRange.duration.timescale = *&range->var1.var1, CMTimeRangeGetIntersection(&v40, &range, &otherRange), (v40.start.flags & 1) == 0) || (range = v41, v21 = *&range->var0.var3, *&otherRange.start.value = *&range->var0.var0, *&otherRange.start.epoch = v21, *&otherRange.duration.timescale = *&range->var1.var1, CMTimeRangeGetIntersection(&v37, &range, &otherRange), (v37.duration.flags & 1) == 0) || (range = v41, v22 = *&range->var0.var3, *&otherRange.start.value = *&range->var0.var0, *&otherRange.start.epoch = v22, *&otherRange.duration.timescale = *&range->var1.var1, CMTimeRangeGetIntersection(&v36, &range, &otherRange), v36.duration.epoch) || (range = v41, v23 = *&range->var0.var3, *&otherRange.start.value = *&range->var0.var0, *&otherRange.start.epoch = v23, *&otherRange.duration.timescale = *&range->var1.var1, CMTimeRangeGetIntersection(&v35, &range, &otherRange), v35.duration.value < 0) || (range = v41, v24 = *&range->var0.var3, *&otherRange.start.value = *&range->var0.var0, *&otherRange.start.epoch = v24, *&otherRange.duration.timescale = *&range->var1.var1, CMTimeRangeGetIntersection(&v34, &range, &otherRange), range.start = v34.duration, *&otherRange.start.value = *v10, otherRange.start.epoch = *(v10 + 16), CMTimeCompare(&range.start, &otherRange.start)))
                  {
                    [array addObject:v19];
                  }

                  ++v18;
                }

                while (v16 != v18);
                v25 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
                v16 = v25;
              }

              while (v25);
            }

            if ([array count])
            {
              [dictionary setObject:array forKey:v33];
            }

            else
            {
              *types &= ~MediaAnalysisResultsKeyToAnalysisType(v33);
            }

            ++v11;
          }

          while (v11 != v31);
          allKeys = obj;
          v9 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v9);
      }
    }
  }

  return dictionary;
}

- (int)performMetadataAnalysisOnAsset:(id)asset withCancelBlock:(id)block
{
  assetCopy = asset;
  blockCopy = block;
  v8 = VCPSignPostLog(blockCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = VCPSignPostLog(v10);
  v12 = v11;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer_Metadata", "", buf, 2u);
  }

  requestedAnalyses = self->_requestedAnalyses;
  vcp_types = [(NSMutableDictionary *)self->_analysis vcp_types];
  v15 = requestedAnalyses & 0x40 | (4 * ((requestedAnalyses & 0xC) == 4));
  if ((requestedAnalyses & 0x880) != 0)
  {
    v15 |= 0x80uLL;
  }

  v16 = (v15 | requestedAnalyses & 0x4000014030000200) & ~vcp_types;
  if (v16)
  {
    v17 = VCPSignPostLog(vcp_types);
    v18 = os_signpost_id_generate(v17);

    v20 = VCPSignPostLog(v19);
    v21 = v20;
    v22 = v18 - 1;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "VCPMovieAnalyzer_Metadata_VCPLightVideoAnalyzer", "", buf, 2u);
    }

    v23 = [[VCPLightVideoAnalyzer alloc] initWithAVAsset:assetCopy forAnalysisTypes:v16];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    [(VCPLightVideoAnalyzer *)v23 setPhotoOffset:?];
    if (v23)
    {
      spid = v18;
      *buf = 0;
      v24 = [(VCPLightVideoAnalyzer *)v23 analyzeAsset:blockCopy flags:buf];
      if (v24)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F62E30;
        }
      }

      else
      {
        v36 = blockCopy;
        v37 = assetCopy;
        analysis = self->_analysis;
        publicResults = [(VCPLightVideoAnalyzer *)v23 publicResults];
        [(NSMutableDictionary *)analysis vcp_addEntriesFromResults:publicResults];

        [(NSMutableDictionary *)self->_analysis vcp_addFlags:*buf];
        [(NSMutableDictionary *)self->_analysis vcp_addTypes:v16 & 0xBFFFFEFFCFFFFDFFLL];
        privateResults = self->_privateResults;
        privateResults = [(VCPLightVideoAnalyzer *)v23 privateResults];
        [(NSMutableDictionary *)privateResults addEntriesFromDictionary:privateResults];

        blockCopy = v36;
        assetCopy = v37;
        v30 = VCPSignPostLog(v29);
        v31 = v30;
        if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
        {
          *v39 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieAnalyzer_Metadata_VCPLightVideoAnalyzer", "", v39, 2u);
        }

        v33 = VCPSignPostLog(v32);
        v34 = v33;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *v39 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, v9, "VCPMovieAnalyzer_Metadata", "", v39, 2u);
        }
      }
    }

    else
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62E40;
      }

      v24 = -108;
    }
  }

  else
  {
    v24 = 0;
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62E50;
    }
  }

  return v24;
}

- (id)createDecoderForTrack:(id)track timerange:(id *)timerange forAnalysisTypes:(unint64_t)types decodedFrameRate:(float *)rate
{
  v26[2] = *MEMORY[0x1E69E9840];
  trackCopy = track;
  v11 = trackCopy;
  if ((types & 0x4024000000) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704422];
    v26[0] = v12;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704438];
    v26[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];

    v24 = *MEMORY[0x1E6966130];
    v25 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v11 nominalFrameRate];
    *rate = v16;
    v17 = [[VCPVideoTrackStandardDecoder alloc] initWithTrack:v11 timerange:timerange withSettings:v15 applyTransform:0];

    goto LABEL_9;
  }

  [trackCopy nominalFrameRate];
  time.epoch = 0;
  *&time.value = kSampleInterval;
  if (1.25 / CMTimeGetSeconds(&time) >= v18)
  {
    [v11 nominalFrameRate];
    *rate = v21;
    if ([(VCPAsset *)self->_asset isSlowmo])
    {
      v17 = 0;
      goto LABEL_9;
    }

    v20 = [[VCPVideoTrackStandardDecoder alloc] initWithTrack:v11 timerange:timerange];
  }

  else
  {
    time.epoch = 0;
    *&time.value = kSampleInterval;
    v19 = 1.0 / CMTimeGetSeconds(&time);
    *rate = v19;
    v20 = [[VCPVideoTrackSubsamplingDecoder alloc] initWithTrack:v11 timerange:timerange atInterval:&kSampleInterval];
  }

  v17 = v20;
LABEL_9:

  return v17;
}

- (id)createVideoAnalyzerWithOrientation:(int)orientation preferredTransform:(CGAffineTransform *)transform embeddings:(id)embeddings
{
  v6 = *&orientation;
  embeddingsCopy = embeddings;
  v9 = [(NSMutableDictionary *)self->_privateResults objectForKey:@"OrientationResults"];
  v10 = [VCPFullVideoAnalyzer alloc];
  v11 = *&transform->c;
  v26[0] = *&transform->a;
  v26[1] = v11;
  v26[2] = *&transform->tx;
  privateResults = self->_privateResults;
  isTimelapse = [(VCPAsset *)self->_asset isTimelapse];
  isLivePhoto = [(VCPAsset *)self->_asset isLivePhoto];
  [(VCPAsset *)self->_asset photoOffsetSeconds];
  v16 = v15;
  [(VCPAsset *)self->_asset exposureTimeSeconds];
  v18 = v17;
  [(VCPAsset *)self->_asset slowmoRate];
  LODWORD(v20) = v19;
  BYTE1(v25) = self->_faceDominated;
  LOBYTE(v25) = isLivePhoto;
  LODWORD(v21) = v16;
  LODWORD(v22) = v18;
  v23 = [(VCPFullVideoAnalyzer *)v10 initWithVideoOrientation:v6 preferredTransform:v26 metaOrientation:v9 privateResults:privateResults embeddings:embeddingsCopy isTimelapse:isTimelapse isIris:v21 irisPhotoOffsetSec:v22 irisPhotoExposureSec:v20 slowMoRate:v25 faceDominated:?];

  return v23;
}

- (int)_waitForAsyncAudioResults
{
  result = +[VCPMovieAnalyzer shouldProcessAudioAsync];
  if (result)
  {
    dispatch_group_wait(self->_audioGroup, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_asyncAudioTypes)
    {
      if (!self->_asyncAdded)
      {
        [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:self->_asyncAudioAnalysis];
        [(NSMutableDictionary *)self->_analysis vcp_addTypes:self->_asyncAudioTypes];
        self->_asyncAdded = 1;
      }
    }

    return self->_asyncAudioStatus;
  }

  return result;
}

- (int)analyzeVideoSegment:(id)segment timerange:(id *)timerange forAnalysisTypes:(unint64_t)types cancel:(id)cancel
{
  v614 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  cancelCopy = cancel;
  v8 = VCPSignPostLog(cancelCopy);
  v9 = os_signpost_id_generate(v8);

  v11 = VCPSignPostLog(v10);
  v12 = v11;
  v518 = v9 - 1;
  spid = v9;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "VCPMovieAnalyzer_AnalyzeVideoSegment", "", buf, 2u);
  }

  v602 = 0;
  v13 = *&timerange->var0.var3;
  *buf = *&timerange->var0.var0;
  *&buf[16] = v13;
  *&buf[32] = *&timerange->var1.var1;
  v14 = [(VCPMovieAnalyzer *)self processExistingAnalysisForTimeRange:buf analysisTypes:&v602];
  v15 = v602;
  v542 = v14;
  v16 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  v17 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  v18 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  vcp_types = [(NSDictionary *)self->_existingAnalysis vcp_types];
  v20 = v15 & ~v16;
  v548 = types & ~(v17 | v20);
  v521 = v18 & types;
  v516 = +[VCPAudioAnalyzer supportedAnalysisTypes]& vcp_types;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      if (self->_phAsset)
      {
        [(PHAsset *)self->_phAsset localIdentifier];
      }

      else
      {
        [(VCPAsset *)self->_asset mainFileURL];
      }
      v23 = ;
      v24 = MediaAnalysisTypeShortDescription(v548);
      v25 = MediaAnalysisTypeShortDescription(v20);
      v26 = MediaAnalysisTypeShortDescription(v521);
      v27 = MediaAnalysisTypeShortDescription(v516);
      *buf = 138413314;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      *&buf[22] = 2112;
      *&buf[24] = v25;
      *&buf[32] = 2112;
      *&buf[34] = v26;
      *&buf[42] = 2112;
      *&buf[44] = v27;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MovieAnalyzer][%@] Video segment requested video types: %@, existing video types: %@, requested audio types: %@, existing audio types: %@", buf, 0x34u);
    }
  }

  [(NSMutableDictionary *)self->_analysis vcp_addTypes:v602];
  v526 = objc_autoreleasePoolPush();
  v527 = objc_autoreleasePoolPush();
  v28 = [VCPVideoEmbeddings alloc];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[VCPVideoTransformerBackbone embeddingVersion](VCPVideoTransformerBackbone, "embeddingVersion")}];
  v537 = [(VCPVideoEmbeddings *)v28 initWithEmbeddingType:2 version:v29];

  v601 = 0;
  if ((v548 & 0x20000000) == 0)
  {
    v32 = 0;
    v536 = 0;
    goto LABEL_13;
  }

  v34 = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaInterpolatedFrameKey"];
  if ([v34 count])
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Video has already been FRC processed", buf, 2u);
    }

    p_errorCode = &self->_errorCode;
    context = -18;
    if (self->_errorCode)
    {
      goto LABEL_20;
    }

    v49 = 717;
LABEL_34:
    v47 = 0;
    *p_errorCode = 45;
    goto LABEL_35;
  }

  v44 = [VCPVideoInterpolator alloc];
  privateResults = self->_privateResults;
  localIdentifier = [(VCPAsset *)self->_asset localIdentifier];
  v536 = [(VCPVideoInterpolator *)v44 initWithTimestamps:privateResults andIdentifier:localIdentifier andTrack:segmentCopy];

  v47 = v536;
  if (!v536)
  {
    p_errorCode = &self->_errorCode;
    context = -108;
    if (self->_errorCode)
    {
LABEL_20:
      v536 = 0;
LABEL_36:

      v32 = 0;
      v531 = 0;
      v532 = 0;
      v50 = 0;
      v528 = 0;
      v529 = 0;
      v51 = 0;
      v530 = 0;
      v534 = 0;
      v535 = 0;
      v52 = 0;
      v547 = 0;
      v546 = 0;
      obj = 0;
      v540 = 0;
      v541 = 0;
      v539 = 0;
      flags = 0;
LABEL_41:
      v53 = 10;
      goto LABEL_338;
    }

    v49 = 721;
    goto LABEL_34;
  }

  if (self->_requestedAnalyses == 0x20000000)
  {
    processAborted = [(VCPVideoInterpolator *)v536 processAborted];
    v47 = v536;
    if (processAborted)
    {
      context = 0;
      if (self->_errorCode)
      {
        goto LABEL_36;
      }

      v49 = 723;
LABEL_35:
      v536 = v47;
      self->_errorLine = v49;
      goto LABEL_36;
    }
  }

  objc_msgSend_adjustedTimeRange(v47);
  v32 = [(VCPMovieAnalyzer *)self createDecoderForTrack:segmentCopy timerange:buf forAnalysisTypes:v548 decodedFrameRate:&v601];

LABEL_13:
  v33 = segmentCopy;
  if ((v548 & 0x8000000000000) != 0)
  {
    vcp_results = [(NSMutableDictionary *)self->_analysis vcp_results];
    v37 = [vcp_results objectForKeyedSubscript:@"VideoThumbnailResults"];

    v529 = [[VCPVideoThumbnailAnalyzer alloc] initWithExistingThumbnails:v37];
    v33 = segmentCopy;
  }

  else
  {
    v529 = 0;
  }

  if ((v548 & 0x4000000000) == 0)
  {
    if (v32)
    {
      v532 = 0;
      goto LABEL_48;
    }

    v532 = 0;
    goto LABEL_46;
  }

  v38 = [(NSMutableDictionary *)self->_analysis objectForKeyedSubscript:@"metadataRanges"];
  v39 = [v38 objectForKeyedSubscript:@"VideoStabilizationResults"];
  v40 = [v39 objectAtIndexedSubscript:0];
  v41 = [v40 objectForKeyedSubscript:@"attributes"];
  v42 = [v41 objectForKeyedSubscript:@"stabilizationRecipe"];

  v43 = [[VCPSettlingEffectAnalyzer alloc] initWithTimestamps:self->_privateResults andTrack:segmentCopy andRecipe:v42 withOptions:self->_options];
  if (!v43)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62E60;
    }

    v531 = 0;
    v532 = 0;
    v50 = 0;
    v528 = 0;
    v51 = 0;
    v530 = 0;
    v534 = 0;
    v535 = 0;
    v52 = 0;
    v547 = 0;
    v546 = 0;
    obj = 0;
    v540 = 0;
    v541 = 0;
    v539 = 0;
    flags = 0;
    context = -108;
    goto LABEL_41;
  }

  v532 = v43;

  if (v32)
  {
    v33 = segmentCopy;
    goto LABEL_48;
  }

  v33 = segmentCopy;
  if (![(VCPSettlingEffectAnalyzer *)v532 processAborted])
  {
    objc_msgSend_adjustedTimeRange(v532);
    goto LABEL_47;
  }

LABEL_46:
  v54 = *&timerange->var0.var3;
  *buf = *&timerange->var0.var0;
  *&buf[16] = v54;
  *&buf[32] = *&timerange->var1.var1;
LABEL_47:
  HasANE = [(VCPMovieAnalyzer *)self createDecoderForTrack:v33 timerange:buf forAnalysisTypes:v548 decodedFrameRate:&v601];
  v32 = HasANE;
LABEL_48:
  v520 = v32;
  if ((v548 & 0x880) != 0)
  {
    vcp_orientation = [v33 vcp_orientation];
    if (v33)
    {
      objc_msgSend_preferredTransform(v33);
    }

    else
    {
      memset(buf, 0, 48);
    }

    HasANE = [(VCPMovieAnalyzer *)self createVideoAnalyzerWithOrientation:vcp_orientation preferredTransform:buf embeddings:v537];
    v541 = HasANE;
    if (!HasANE)
    {
      selfCopy5 = self;
      if (self->_errorCode)
      {
        v530 = 0;
        v531 = 0;
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v534 = 0;
        v52 = 0;
        v547 = 0;
        v546 = 0;
        obj = 0;
        v540 = 0;
        v541 = 0;
        goto LABEL_153;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v534 = 0;
      v535 = 0;
      v52 = 0;
      v547 = 0;
      v546 = 0;
      obj = 0;
      v540 = 0;
      v541 = 0;
      v539 = 0;
      flags = 0;
      v84 = xmmword_1C9F62E70;
LABEL_250:
      *&selfCopy5->_errorCode = v84;
      context = -108;
      v53 = 10;
      goto LABEL_337;
    }
  }

  else
  {
    v541 = 0;
  }

  if ((v548 & 8) != 0)
  {
    vcp_results2 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v57 = [vcp_results2 objectForKeyedSubscript:@"FacePrintResults"];

    v58 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v58;
    *&buf[32] = *(MEMORY[0x1E695EFD0] + 32);
    v540 = [VCPVideoFaceDetector faceDetectorWithTransform:buf withExistingFaceprints:v57 tracking:[(VCPAsset *)self->_asset isLivePhoto]^ 1 faceDominated:self->_faceDominated cancel:cancelCopy];
    if (!v540)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62E80;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v534 = 0;
      v52 = 0;
      v547 = 0;
      v546 = 0;
      obj = 0;
      v540 = 0;
      goto LABEL_153;
    }
  }

  else
  {
    v540 = 0;
  }

  if ((v548 & 0x8000) != 0 && (HasANE = SocType(HasANE, v31), HasANE >= 247) && (HasANE = [(VCPAsset *)self->_asset isLivePhoto], (HasANE & 1) == 0))
  {
    HasANE = objc_alloc_init(VCPVideoActivityAnalyzer);
    obj = HasANE;
    if (!HasANE)
    {
      selfCopy5 = self;
      if (self->_errorCode)
      {
        v530 = 0;
        v531 = 0;
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v534 = 0;
        v52 = 0;
        v547 = 0;
        v546 = 0;
        obj = 0;
        goto LABEL_153;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v534 = 0;
      v535 = 0;
      v52 = 0;
      v547 = 0;
      v546 = 0;
      obj = 0;
      v539 = 0;
      flags = 0;
      v84 = xmmword_1C9F62E90;
      goto LABEL_250;
    }
  }

  else
  {
    obj = 0;
  }

  if ((v548 & 0x4000) != 0)
  {
    HasANE = objc_alloc_init(VCPVideoSceneClassifier);
    v546 = HasANE;
    if (!HasANE)
    {
      selfCopy5 = self;
      if (self->_errorCode)
      {
        v530 = 0;
        v531 = 0;
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v534 = 0;
        v52 = 0;
        v547 = 0;
        v546 = 0;
        goto LABEL_153;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v534 = 0;
      v535 = 0;
      v52 = 0;
      v547 = 0;
      v546 = 0;
      v539 = 0;
      flags = 0;
      v84 = xmmword_1C9F62EA0;
      goto LABEL_250;
    }
  }

  else
  {
    v546 = 0;
  }

  if ((v548 & 0x1000) != 0)
  {
    v59 = [VCPVideoSaliencyAnalyzer alloc];
    v60 = *(MEMORY[0x1E695EFD0] + 16);
    *buf = *MEMORY[0x1E695EFD0];
    *&buf[16] = v60;
    *&buf[32] = *(MEMORY[0x1E695EFD0] + 32);
    HasANE = [(VCPVideoSaliencyAnalyzer *)v59 initWithTransform:buf];
    v547 = HasANE;
    if (!HasANE)
    {
      selfCopy5 = self;
      if (self->_errorCode)
      {
        v530 = 0;
        v531 = 0;
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v534 = 0;
        v52 = 0;
        v547 = 0;
        goto LABEL_153;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v534 = 0;
      v535 = 0;
      v52 = 0;
      v547 = 0;
      v539 = 0;
      flags = 0;
      v84 = xmmword_1C9F62EB0;
      goto LABEL_250;
    }
  }

  else
  {
    v547 = 0;
  }

  if ((v548 & 0x20000) != 0)
  {
    HasANE = DeviceHasANE(HasANE, v31);
    if (HasANE)
    {
      v61 = [VCPVideoPetsAnalyzer alloc];
      v62 = MEMORY[0x1E695EFD0];
      v63 = *(MEMORY[0x1E695EFD0] + 16);
      *buf = *MEMORY[0x1E695EFD0];
      *&buf[16] = v63;
      *&buf[32] = *(MEMORY[0x1E695EFD0] + 32);
      v52 = [(VCPVideoPetsAnalyzer *)v61 initWithTransform:buf];
      if (v52)
      {
        vcp_results3 = [(NSMutableDictionary *)self->_analysis vcp_results];
        v65 = [vcp_results3 objectForKeyedSubscript:@"AnimalPrintResults"];

        v66 = [VCPVideoAnimalDetector alloc];
        v67 = v62[1];
        *buf = *v62;
        *&buf[16] = v67;
        *&buf[32] = v62[2];
        v534 = [(VCPVideoAnimalDetector *)v66 initWithTransform:buf withExistingAnimalprints:v65];
        if (v534)
        {

          v513 = v52;
          goto LABEL_74;
        }

        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F62EC0;
        }

        v530 = 0;
        v531 = 0;
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v534 = 0;
LABEL_153:
        v535 = 0;
        v539 = 0;
        flags = 0;
        context = -108;
        v53 = 10;
        goto LABEL_337;
      }

      selfCopy5 = self;
      if (self->_errorCode)
      {
        v530 = 0;
        v531 = 0;
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v534 = 0;
        v52 = 0;
        goto LABEL_153;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v534 = 0;
      v535 = 0;
      v52 = 0;
      v539 = 0;
      flags = 0;
      v84 = xmmword_1C9F62ED0;
      goto LABEL_250;
    }
  }

  v534 = 0;
  v513 = 0;
LABEL_74:
  if ((v548 & 0x2000000000) != 0 && DeviceHasANE(HasANE, v31))
  {
    v531 = [[VCPVideoPetsActionAnalyzer alloc] initWithTimeOfInterest:0];
    if (!v531)
    {
      selfCopy8 = self;
      if (self->_errorCode)
      {
        v531 = 0;
LABEL_133:
        v50 = 0;
        v528 = 0;
        v51 = 0;
        v530 = 0;
LABEL_138:
        v535 = 0;
        v539 = 0;
        flags = 0;
        context = -108;
        v53 = 10;
        goto LABEL_336;
      }

      v530 = 0;
      v531 = 0;
      v50 = 0;
      v528 = 0;
      v51 = 0;
      v535 = 0;
      v539 = 0;
      flags = 0;
      v113 = xmmword_1C9F62EE0;
LABEL_248:
      *&selfCopy8->_errorCode = v113;
      context = -108;
      v53 = 10;
      v52 = v513;
      goto LABEL_337;
    }
  }

  else
  {
    v531 = 0;
  }

  if ((v548 & 0x40000) != 0)
  {
    v71 = self->_privateResults;
    if (!v71 || (-[NSMutableDictionary objectForKeyedSubscript:](v71, "objectForKeyedSubscript:", @"MetaLensSwitchResults"), v72 = objc_claimAutoreleasedReturnValue(), v73 = [v72 count] == 0, v72, v71 = self->_privateResults, v73))
    {
      bOOLValue = 0;
    }

    else
    {
      v74 = [(NSMutableDictionary *)v71 objectForKeyedSubscript:@"MetaLensSwitchResults"];
      v75 = [v74 objectAtIndexedSubscript:0];
      v76 = [v75 objectForKeyedSubscript:@"quality"];
      bOOLValue = [v76 BOOLValue];

      v71 = self->_privateResults;
    }

    v78 = [(NSMutableDictionary *)v71 objectForKeyedSubscript:@"MetaLensSwitchResults"];
    v79 = [v78 objectAtIndexedSubscript:0];
    v80 = [v79 objectForKeyedSubscript:@"ZoomChangeScore"];
    bOOLValue2 = [v80 BOOLValue];

    v82 = [VCPMovieCurationAnalyzer alloc];
    vcp_types2 = [(NSMutableDictionary *)self->_analysis vcp_types];
    if (segmentCopy)
    {
      objc_msgSend_preferredTransform(segmentCopy);
    }

    else
    {
      memset(buf, 0, 48);
    }

    v85 = *&timerange->var0.var3;
    *time = *&timerange->var0.var0;
    *&time[16] = v85;
    v600 = *&timerange->var1.var1;
    isLivePhoto = [(VCPAsset *)self->_asset isLivePhoto];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    v88 = v87;
    hadFlash = [(VCPAsset *)self->_asset hadFlash];
    v90 = [v542 objectForKeyedSubscript:@"KeyFrameResults"];
    isTimelapse = [(VCPAsset *)self->_asset isTimelapse];
    asset = self->_asset;
    if (asset)
    {
      objc_msgSend_slomoRange(asset);
    }

    else
    {
      memset(v598, 0, sizeof(v598));
    }

    asset = [segmentCopy asset];
    LOBYTE(v482) = isTimelapse;
    LOBYTE(v481) = bOOLValue2;
    LODWORD(v94) = v88;
    v95 = [(VCPMovieCurationAnalyzer *)v82 initWithAnalysisTypes:vcp_types2 | v548 transform:buf timeRange:time isLivePhoto:isLivePhoto photoOffset:hadFlash hadFlash:bOOLValue hadZoom:v94 settlingHadZoom:v481 keyFrameResults:v90 isTimelapse:v482 preferredTimeRange:v598 asset:asset];

    if (!v95)
    {
      selfCopy8 = self;
      if (self->_errorCode)
      {
        goto LABEL_133;
      }

      v50 = 0;
      v528 = 0;
      v51 = 0;
      v530 = 0;
      v535 = 0;
      v539 = 0;
      flags = 0;
      v113 = xmmword_1C9F62EF0;
      goto LABEL_248;
    }

    *&v96 = self->_maxHighlightDuration;
    v69 = v95;
    [(VCPMovieCurationAnalyzer *)v95 setMaxHighlightDuration:v96];
  }

  else
  {
    v69 = 0;
  }

  v530 = v69;
  if ((v548 & 0x4000000) != 0)
  {
    v97 = [VCPVideoStabilizer videoStabilizerforAnalysisType:0x4000000 withMetadata:0 sourceSize:*MEMORY[0x1E695F060] cropRect:*(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    if (!v97)
    {
      selfCopy8 = self;
      if (self->_errorCode)
      {
        v50 = 0;
        v528 = 0;
        v51 = 0;
        goto LABEL_138;
      }

      v50 = 0;
      v528 = 0;
      v51 = 0;
      v535 = 0;
      v539 = 0;
      flags = 0;
      v113 = xmmword_1C9F62F00;
      goto LABEL_248;
    }
  }

  else
  {
    v97 = 0;
  }

  v528 = v97;
  v98 = +[VCPMovieAnalyzer getEnableMovieHumanAction];
  if (v98)
  {
    v100 = 1;
  }

  else
  {
    v100 = DeviceHasANE(v98, v99);
  }

  if ((v548 & 0x80040040000) == 0)
  {
    goto LABEL_122;
  }

  if ([(VCPAsset *)self->_asset isLivePhoto])
  {
    faces = [(VCPAsset *)self->_asset faces];
    v102 = MEMORY[0x1E696AD98];
    [(VCPAsset *)self->_asset photoOffsetSeconds];
    [v102 numberWithFloat:?];
    v103 = 0;
    v100 = 1;
    v515 = v514 = faces;
    goto LABEL_123;
  }

  if ((v548 & 0x40000000) == 0 || ![(VCPAsset *)self->_asset isMovie]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (phAsset = self->_phAsset) == 0 || [(PHAsset *)phAsset vcp_quickFaceClassificationDone])
  {
LABEL_122:
    v514 = 0;
    v515 = 0;
    v103 = 0;
    goto LABEL_123;
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v179 = MEMORY[0x1E69E9C10];
    v180 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v179, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Movie analyzer perform VCPPhotosQuickFaceDetection", buf, 2u);
    }
  }

  v181 = objc_autoreleasePoolPush();
  v182 = VCPSignPostLog(v181);
  v183 = os_signpost_id_generate(v182);

  v185 = VCPSignPostLog(v184);
  v186 = v185;
  if (v183 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v185))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v186, OS_SIGNPOST_INTERVAL_BEGIN, v183, "VCPMovieAnalyzer_Video_VCPPhotosQuickFaceDetection", "", buf, 2u);
  }

  v187 = [VCPPhotosQuickFaceDetectionManager alloc];
  photoLibrary = [(PHAsset *)self->_phAsset photoLibrary];
  v189 = [(VCPPhotosQuickFaceDetectionManager *)v187 initWithPhotoLibrary:photoLibrary];

  if (v189)
  {
    v190 = [(VCPPhotosQuickFaceDetectionManager *)v189 processAsset:self->_phAsset];
    context = v190;
    if (!v190)
    {
      v365 = VCPSignPostLog(v190);
      v366 = v365;
      if (v183 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v365))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v366, OS_SIGNPOST_INTERVAL_END, v183, "VCPMovieAnalyzer_Video_VCPPhotosQuickFaceDetection", "", buf, 2u);
      }

      v53 = 0;
      context = 0;
      v191 = 1;
      goto LABEL_490;
    }

    v191 = 0;
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62F10;
    }
  }

  else
  {
    v191 = 0;
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F62F20;
    }

    context = -18;
  }

  v53 = 10;
LABEL_490:

  objc_autoreleasePoolPop(v181);
  if ((v191 & 1) == 0)
  {
    v514 = 0;
    v512 = 0;
    v50 = 0;
    v51 = 0;
    v535 = 0;
    v539 = 0;
    flags = 0;

    goto LABEL_335;
  }

  v514 = 0;
  v515 = 0;
  v103 = context;
LABEL_123:
  if ((v548 & 0x40400000) != 0 && +[VCPCNNEspressoContext supportGPU]&& !self->_faceDominated)
  {
    v105 = [[VCPVideoHumanActionAnalyzer alloc] initWithTimeOfInterest:v515 phFaces:v514];
    if (!v105)
    {
      selfCopy14 = self;
      if (!self->_errorCode)
      {
        v512 = 0;
        v50 = 0;
        v51 = 0;
        v535 = 0;
        v539 = 0;
        flags = 0;
        v166 = xmmword_1C9F62F30;
        goto LABEL_274;
      }

      v512 = 0;
      v50 = 0;
      v51 = 0;
      goto LABEL_240;
    }
  }

  else
  {
    v105 = 0;
  }

  if ((v548 & 0x200000000000) != 0)
  {
    v106 = [VCPVideoCaptionAnalyzer alloc];
    v107 = v601;
    if (segmentCopy)
    {
      objc_msgSend_timeRange(segmentCopy);
    }

    else
    {
      HIDWORD(v108) = 0;
      memset(buf, 0, 48);
    }

    LODWORD(v108) = v107;
    v50 = [(VCPVideoCaptionAnalyzer *)v106 initWithModelType:2 frameRate:buf timeRange:v108];
    if (v50)
    {
      goto LABEL_157;
    }

    selfCopy14 = self;
    if (!self->_errorCode)
    {
      v51 = v105;
      v512 = 0;
      v50 = 0;
      v535 = 0;
      v539 = 0;
      flags = 0;
      v166 = xmmword_1C9F62F40;
      goto LABEL_274;
    }

    v51 = v105;
    goto LABEL_239;
  }

  if ((v548 & 0x100000000) == 0)
  {
    v50 = 0;
    goto LABEL_157;
  }

  v109 = [VCPVideoCaptionAnalyzer alloc];
  v110 = v601;
  if (segmentCopy)
  {
    objc_msgSend_timeRange(segmentCopy);
  }

  else
  {
    HIDWORD(v111) = 0;
    memset(buf, 0, 48);
  }

  LODWORD(v111) = v110;
  v50 = [(VCPVideoCaptionAnalyzer *)v109 initWithModelType:1 frameRate:buf timeRange:v111];
  if (!v50)
  {
    v51 = v105;
    selfCopy14 = self;
    if (!self->_errorCode)
    {
      v512 = 0;
      v50 = 0;
      v535 = 0;
      v539 = 0;
      flags = 0;
      v166 = xmmword_1C9F62F50;
      goto LABEL_274;
    }

LABEL_239:
    v512 = 0;
    v50 = 0;
LABEL_240:
    v535 = 0;
    v539 = 0;
    goto LABEL_241;
  }

LABEL_157:
  v114 = v548 & 0x80000000000;
  if (((v548 & 0x240040000) == 0 || (v100 & 1) == 0) && !v114)
  {
    v115 = 0;
    goto LABEL_164;
  }

  v116 = [VCPVideoCNNAnalyzer alloc];
  v117 = v601;
  isLivePhoto2 = [(VCPAsset *)self->_asset isLivePhoto];
  if (segmentCopy)
  {
    objc_msgSend_timeRange(segmentCopy);
  }

  else
  {
    memset(buf, 0, 48);
  }

  [(VCPAsset *)self->_asset photoOffsetSeconds];
  LODWORD(v120) = v119;
  LODWORD(v121) = v117;
  v115 = [(VCPVideoCNNAnalyzer *)v116 initWithTimeOfInteret:v515 frameRate:isLivePhoto2 isLivePhoto:v514 phFaces:buf timeRange:v537 withEmbeddings:v548 requestedAnalyses:v121 photoOffset:v120];
  if (!v115)
  {
    v51 = v105;
    selfCopy14 = self;
    if (!self->_errorCode)
    {
      v512 = 0;
      v535 = 0;
      v539 = 0;
      flags = 0;
      v166 = xmmword_1C9F62F60;
      goto LABEL_274;
    }

    v512 = 0;
    goto LABEL_240;
  }

LABEL_164:
  v539 = v115;
  v535 = 0;
  if ([objc_opt_class() enableAudioVideoFusion] && ((v516 | v521) & 0x800000000000) != 0 && ((v548 | v20) & 0x80000000000) != 0 && v521 & 0x800000000000 | v114)
  {
    v122 = _os_feature_enabled_impl();
    v123 = [VCPAudioVideoEmbeddingFuser alloc];
    v124 = v122 ? 7 : 5;
    v535 = [(VCPAudioVideoEmbeddingFuser *)v123 initWithEmbeddingVersion:v124];
    if (!v535)
    {
      v51 = v105;
      selfCopy14 = self;
      if (!self->_errorCode)
      {
        v512 = 0;
        v535 = 0;
        flags = 0;
        v166 = xmmword_1C9F62F70;
        goto LABEL_274;
      }

      v512 = 0;
      v535 = 0;
LABEL_241:
      flags = 0;
      context = -108;
      v53 = 10;
      goto LABEL_334;
    }
  }

  if ((v548 & 0x40000000000) != 0)
  {
    v126 = objc_alloc_init(MADVideoSafetyClassifier);
    v125 = v126;
    if (v126)
    {
      *buf = *&timerange->var1.var0;
      *&buf[16] = timerange->var1.var3;
      [(MADVideoSafetyClassifier *)v126 configureProcessTimeIntervalFrom:buf];
      v497 = v105;
      goto LABEL_176;
    }

    v51 = v105;
    selfCopy14 = self;
    if (self->_errorCode)
    {
      v512 = 0;
      flags = 0;
LABEL_275:
      context = -108;
      v53 = 10;
      goto LABEL_334;
    }

    v512 = 0;
    flags = 0;
    v166 = xmmword_1C9F62F80;
LABEL_274:
    *&selfCopy14->_errorCode = v166;
    goto LABEL_275;
  }

  v497 = v105;
  v125 = 0;
LABEL_176:
  if (v546)
  {
    supportConditionalAnalysis = self->_supportConditionalAnalysis;
  }

  else
  {
    supportConditionalAnalysis = 0;
  }

  v496 = v125;
  v503 = v103;
  if (v115)
  {
    v128 = [VCPVideoCNNHighlightTimeRangePredictor alloc];
    highlightEnabled = [(VCPVideoCNNAnalyzer *)v115 highlightEnabled];
    postInference = [(VCPVideoCNNAnalyzer *)v115 postInference];
    [(VCPVideoCNNAnalyzer *)v115 minProcessingInterval];
    v132 = v131;
    objc_msgSend_timeStart(v115);
    LODWORD(v133) = v132;
    v134 = [(VCPVideoCNNHighlightTimeRangePredictor *)v128 initWithHightlightEnabled:highlightEnabled postInference:postInference minProcessingInterval:buf startTime:v133];
  }

  else
  {
    v134 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke;
  aBlock[3] = &unk_1E8350360;
  v135 = cancelCopy;
  v597 = v135;
  aBlock[4] = self;
  v136 = v536;
  v587 = v136;
  v494 = v540;
  v588 = v494;
  v490 = v546;
  v589 = v490;
  v487 = v547;
  v590 = v487;
  v495 = v134;
  v591 = v495;
  v504 = v497;
  v592 = v504;
  v502 = v50;
  v593 = v502;
  v486 = v513;
  v594 = v486;
  v484 = v534;
  v595 = v484;
  v485 = v531;
  v596 = v485;
  v511 = _Block_copy(aBlock);
  v582[0] = MEMORY[0x1E69E9820];
  v582[1] = 3221225472;
  v582[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_707;
  v582[3] = &unk_1E8350388;
  v137 = v135;
  v584 = v137;
  v582[4] = self;
  v516 = v541;
  v583 = v516;
  v585 = supportConditionalAnalysis;
  v510 = _Block_copy(v582);
  v572[0] = MEMORY[0x1E69E9820];
  v572[1] = 3221225472;
  v572[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_714;
  v572[3] = &unk_1E83503B0;
  v138 = v137;
  v581 = v138;
  v499 = v136;
  v573 = v499;
  selfCopy15 = self;
  v488 = obj;
  v575 = v488;
  v483 = v530;
  v576 = v483;
  v498 = v115;
  v577 = v498;
  v501 = v528;
  v578 = v501;
  v500 = v532;
  v579 = v500;
  v512 = v496;
  v580 = v512;
  v509 = _Block_copy(v572);
  if (v501)
  {
    v569[0] = MEMORY[0x1E69E9820];
    v569[1] = 3221225472;
    v569[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_727;
    v569[3] = &unk_1E83503D8;
    v571 = v138;
    v569[4] = self;
    v570 = v501;
    v505 = _Block_copy(v569);
  }

  else
  {
    v505 = 0;
  }

  if (v500)
  {
    v566[0] = MEMORY[0x1E69E9820];
    v566[1] = 3221225472;
    v566[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_732;
    v566[3] = &unk_1E83503D8;
    v568 = v138;
    v566[4] = self;
    v567 = v500;
    v506 = _Block_copy(v566);
  }

  else
  {
    v506 = 0;
  }

  if (v512)
  {
    v563[0] = MEMORY[0x1E69E9820];
    v563[1] = 3221225472;
    v563[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_737;
    v563[3] = &unk_1E83503D8;
    v565 = v138;
    v563[4] = self;
    v564 = v512;
    v507 = _Block_copy(v563);
  }

  else
  {
    v507 = 0;
  }

  if (v499)
  {
    v560[0] = MEMORY[0x1E69E9820];
    v560[1] = 3221225472;
    v560[2] = __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_742;
    v560[3] = &unk_1E83503D8;
    v562 = v138;
    v560[4] = self;
    v561 = v499;
    v508 = _Block_copy(v560);
  }

  else
  {
    v508 = 0;
  }

  v139 = objc_autoreleasePoolPush();
  contexta = v139;
  if ((v548 & 0x2C636446D888) == 0)
  {
    v53 = 0;
    flags = 0;
    goto LABEL_297;
  }

  v140 = VCPSignPostLog(v139);
  v492 = os_signpost_id_generate(v140);

  v142 = VCPSignPostLog(v141);
  v143 = v142;
  if (v492 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v143, OS_SIGNPOST_INTERVAL_BEGIN, v492, "VCPMovieAnalyzer_AnalyzeVideoSegment_FrameProcessing", "", buf, 2u);
  }

  if (DeviceHasANE(v144, v145) && (_os_feature_enabled_impl() & 1) != 0)
  {
    v146 = MEMORY[0x1E695DF70];
    v147 = _Block_copy(v511);
    v612[0] = v147;
    v148 = _Block_copy(v510);
    v612[1] = v148;
    v149 = _Block_copy(v509);
    v612[2] = v149;
    v150 = [MEMORY[0x1E695DEC8] arrayWithObjects:v612 count:3];
    v151 = [v146 arrayWithArray:v150];

    if (+[VCPVideoAnalysisPipelineManager shouldUseGraphProcessing])
    {
      if (v505)
      {
        v152 = _Block_copy(v505);
        [v151 addObject:v152];
      }

      if (v506)
      {
        v153 = _Block_copy(v506);
        [v151 addObject:v153];
      }

      if (v507)
      {
        v154 = _Block_copy(v507);
        [v151 addObject:v154];
      }

      if (v508)
      {
        v155 = _Block_copy(v508);
        [v151 addObject:v155];
      }
    }

    v156 = [[VCPVideoAnalysisPipelineManager alloc] initWithVideoAnalysisBlocks:v151 videoDecoder:v520 maxBufferedFrames:20 cancelBlock:v138];
    v157 = [(VCPVideoAnalysisPipelineManager *)v156 run];
    if (v157)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v158 = MEMORY[0x1E69E9C10];
        v159 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          v160 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v160;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on running VCPVideoAnalysisPipelineManager, bail out.", buf, 0xCu);
        }
      }

      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F62F90;
      }

      flags = 0;
      v53 = 10;
      v503 = v157;
    }

    else
    {
      flags = [(VCPVideoAnalysisPipelineManager *)v156 flags];
LABEL_277:

      v178 = VCPSignPostLog(v177);
      v151 = v178;
      if (v492 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v178))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v151, OS_SIGNPOST_INTERVAL_END, v492, "VCPMovieAnalyzer_AnalyzeVideoSegment_FrameProcessing", "", buf, 2u);
      }

      v53 = 0;
    }

    goto LABEL_296;
  }

  v156 = 0;
  v151 = 0;
  flags = 0;
  while (1)
  {
    copyNextSampleBuffer = [v520 copyNextSampleBuffer];
    v162 = v156;

    v151 = v162;
    if (copyNextSampleBuffer)
    {
      v163 = [[VCPVideoAnalysisPipelineFrameResource alloc] initWithSampleBuffer:copyNextSampleBuffer];

      v156 = v163;
    }

    else
    {
      v156 = 0;
      v163 = v162;
    }

    if (v162 | v156)
    {
      v164 = 0;
    }

    else
    {
      v164 = 100;
    }

    if (!v162)
    {
      goto LABEL_229;
    }

    v165 = (*(v511 + 2))(v511, v162, [(VCPVideoAnalysisPipelineManager *)v156 frameSampleBuffer]);
    if (v165)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v167 = MEMORY[0x1E69E9C10];
        v168 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
        {
          v169 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v169;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on executing pipelineBlock0, bail out.", buf, 0xCu);
        }
      }

      if (self->_errorCode)
      {
        goto LABEL_294;
      }

      v170 = 1433;
      goto LABEL_293;
    }

    v165 = (*(v510 + 2))(v510, v151, [(VCPVideoAnalysisPipelineManager *)v156 frameSampleBuffer]);
    if (v165)
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v171 = MEMORY[0x1E69E9C10];
        v172 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          v173 = objc_opt_class();
          *buf = 138412290;
          *&buf[4] = v173;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on executing pipelineBlock1, bail out.", buf, 0xCu);
        }
      }

      if (self->_errorCode)
      {
        goto LABEL_294;
      }

      v170 = 1435;
LABEL_293:
      self->_errorCode = 45;
      self->_errorLine = v170;
      goto LABEL_294;
    }

    v165 = (*(v509 + 2))(v509, v151, [(VCPVideoAnalysisPipelineManager *)v156 frameSampleBuffer]);
    if (v165)
    {
      break;
    }

    v164 = 0;
    flags |= [v151 frameFlags];
LABEL_229:
    if (v164)
    {
      if ([v520 status] == 2)
      {
        goto LABEL_277;
      }

      v165 = -19;
      if (self->_errorCode)
      {
        v503 = -19;
        goto LABEL_295;
      }

      v170 = 1441;
      goto LABEL_293;
    }
  }

  if (MediaAnalysisLogLevel() >= 3)
  {
    v174 = MEMORY[0x1E69E9C10];
    v175 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
    {
      v176 = objc_opt_class();
      *buf = 138412290;
      *&buf[4] = v176;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed on executing pipelineBlock2, bail out.", buf, 0xCu);
    }
  }

  if (!self->_errorCode)
  {
    v170 = 1437;
    goto LABEL_293;
  }

LABEL_294:
  v503 = v165;
LABEL_295:

  v53 = 10;
LABEL_296:

LABEL_297:
  objc_autoreleasePoolPop(contexta);
  if (v53)
  {
    context = v503;
    goto LABEL_333;
  }

  v193 = VCPSignPostLog(v192);
  v493 = os_signpost_id_generate(v193);

  v195 = VCPSignPostLog(v194);
  v196 = v195;
  if (v493 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v195))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v196, OS_SIGNPOST_INTERVAL_BEGIN, v493, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
  }

  if (!v494)
  {
LABEL_313:
    if (v516)
    {
      v210 = VCPSignPostLog(processAborted2);
      v211 = os_signpost_id_generate(v210);

      v213 = VCPSignPostLog(v212);
      v214 = v213;
      if (v211 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v213))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v214, OS_SIGNPOST_INTERVAL_BEGIN, v211, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", buf, 2u);
      }

      v215 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v215;
      *&buf[32] = *&timerange->var1.var1;
      context = [v516 finishAnalysisPass:buf];
      if (context)
      {
        selfCopy18 = self;
        if (self->_errorCode)
        {
          goto LABEL_332;
        }

        v205 = xmmword_1C9F62FB0;
LABEL_331:
        *&selfCopy18->_errorCode = v205;
        goto LABEL_332;
      }

      results = [v516 results];
      [v542 addEntriesFromDictionary:results];

      v217 = self->_privateResults;
      privateResults = [v516 privateResults];
      [(NSMutableDictionary *)v217 addEntriesFromDictionary:privateResults];

      v220 = VCPSignPostLog(v219);
      v221 = v220;
      if (v211 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v220))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v221, OS_SIGNPOST_INTERVAL_END, v211, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", buf, 2u);
      }
    }

    if (v546)
    {
      v222 = VCPSignPostLog(processAborted2);
      v223 = os_signpost_id_generate(v222);

      v225 = VCPSignPostLog(v224);
      v226 = v225;
      if (v223 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v225))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v226, OS_SIGNPOST_INTERVAL_BEGIN, v223, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", buf, 2u);
      }

      v227 = [v542 objectForKeyedSubscript:@"SceneResults"];
      [v490 setSceneResults:v227];

      v228 = [v542 objectForKeyedSubscript:@"QualityResults"];
      [v490 setQualityResults:v228];

      v229 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v229;
      *&buf[32] = *&timerange->var1.var1;
      context = [v490 finishAnalysisPass:buf];
      if (context)
      {
        selfCopy18 = self;
        if (self->_errorCode)
        {
          goto LABEL_332;
        }

        v205 = xmmword_1C9F62FC0;
        goto LABEL_331;
      }

      results2 = [v490 results];
      [v542 addEntriesFromDictionary:results2];

      v326 = VCPSignPostLog(v325);
      v327 = v326;
      if (v223 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v326))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v327, OS_SIGNPOST_INTERVAL_END, v223, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", buf, 2u);
      }
    }

    if (v488)
    {
      v328 = VCPSignPostLog(processAborted2);
      v329 = os_signpost_id_generate(v328);

      v331 = VCPSignPostLog(v330);
      v332 = v331;
      if (v329 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v331))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v332, OS_SIGNPOST_INTERVAL_BEGIN, v329, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
      }

      isSlowmo = [(VCPAsset *)self->_asset isSlowmo];
      v334 = self->_asset;
      if (isSlowmo)
      {
        [(VCPAsset *)v334 slowmoRate];
      }

      else
      {
        [(VCPAsset *)v334 timelapseRate];
      }

      v336 = v335;
      v337 = [v542 objectForKeyedSubscript:@"QualityResults"];
      v338 = [v542 objectForKeyedSubscript:@"InterestingnessResults"];
      v339 = [v542 objectForKeyedSubscript:@"ObstructionResults"];
      v340 = [v542 objectForKeyedSubscript:@"ClassificationResults"];
      v341 = [v542 objectForKeyedSubscript:@"FineSubjectMotionResults"];
      v342 = [v542 objectForKeyedSubscript:@"FaceResults"];
      [v516 getSceneSwichFrequency];
      [v488 preProcessQualityResults:v337 interestingnessResults:v338 obstructionResults:v339 classificationResults:v340 fineActionResults:v341 faceResults:v342 sceneSwitchFrequency:?];

      v343 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v343;
      *&buf[32] = *&timerange->var1.var1;
      LODWORD(v516) = [v488 finishAnalysisPass:buf fpsRate:{COERCE_DOUBLE(__PAIR64__(*&buf[36], v336))}];
      if (v516)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F62FD0;
        }

        v53 = 1;
LABEL_446:
        context = v503;
        goto LABEL_333;
      }

      results3 = [v488 results];
      [v542 addEntriesFromDictionary:results3];

      v346 = VCPSignPostLog(v345);
      v347 = v346;
      if (v329 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v346))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v347, OS_SIGNPOST_INTERVAL_END, v329, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
      }
    }

    if (v487)
    {
      v348 = VCPSignPostLog(processAborted2);
      v349 = os_signpost_id_generate(v348);

      v351 = VCPSignPostLog(v350);
      v352 = v351;
      if (v349 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v351))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v352, OS_SIGNPOST_INTERVAL_BEGIN, v349, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", buf, 2u);
      }

      v353 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v353;
      *&buf[32] = *&timerange->var1.var1;
      context = [v487 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F62FE0;
LABEL_612:
          *&self->_errorCode = v354;
          goto LABEL_613;
        }

        goto LABEL_602;
      }

      results4 = [v487 results];
      [v542 addEntriesFromDictionary:results4];

      v357 = VCPSignPostLog(v356);
      v358 = v357;
      if (v349 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v357))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v358, OS_SIGNPOST_INTERVAL_END, v349, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", buf, 2u);
      }
    }

    if (v504)
    {
      v359 = VCPSignPostLog(processAborted2);
      v360 = os_signpost_id_generate(v359);

      v362 = VCPSignPostLog(v361);
      v363 = v362;
      if (v360 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v362))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v363, OS_SIGNPOST_INTERVAL_BEGIN, v360, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", buf, 2u);
      }

      v364 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v364;
      *&buf[32] = *&timerange->var1.var1;
      context = [(VCPVideoHumanActionAnalyzer *)v504 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F62FF0;
          goto LABEL_612;
        }

LABEL_602:
        LODWORD(v516) = 0;
LABEL_613:
        v53 = 10;
        goto LABEL_333;
      }

      results5 = [(VCPVideoHumanActionAnalyzer *)v504 results];
      [v542 addEntriesFromDictionary:results5];

      v368 = self->_privateResults;
      privateResults2 = [(VCPVideoHumanActionAnalyzer *)v504 privateResults];
      [(NSMutableDictionary *)v368 addEntriesFromDictionary:privateResults2];

      v371 = VCPSignPostLog(v370);
      v372 = v371;
      if (v360 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v371))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v372, OS_SIGNPOST_INTERVAL_END, v360, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", buf, 2u);
      }
    }

    if (v502)
    {
      v373 = VCPSignPostLog(processAborted2);
      v374 = os_signpost_id_generate(v373);

      v376 = VCPSignPostLog(v375);
      v377 = v376;
      if (v374 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v376))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v377, OS_SIGNPOST_INTERVAL_BEGIN, v374, "VCPMovieAnalyzer_Video_videoCaptionAnalyzer", "", buf, 2u);
      }

      v378 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v378;
      *&buf[32] = *&timerange->var1.var1;
      context = [(VCPVideoCaptionAnalyzer *)v502 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63000;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results6 = [(VCPVideoCaptionAnalyzer *)v502 results];
      [v542 addEntriesFromDictionary:results6];

      v381 = VCPSignPostLog(v380);
      v382 = v381;
      if (v374 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v381))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v382, OS_SIGNPOST_INTERVAL_END, v374, "VCPMovieAnalyzer_Video_videoCaptionAnalyzer", "", buf, 2u);
      }
    }

    if (v486)
    {
      v383 = VCPSignPostLog(processAborted2);
      v384 = os_signpost_id_generate(v383);

      v386 = VCPSignPostLog(v385);
      v387 = v386;
      if (v384 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v386))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v387, OS_SIGNPOST_INTERVAL_BEGIN, v384, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", buf, 2u);
      }

      v388 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v388;
      *&buf[32] = *&timerange->var1.var1;
      context = [(VCPVideoPetsAnalyzer *)v486 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63010;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results7 = [(VCPVideoPetsAnalyzer *)v486 results];
      [v542 addEntriesFromDictionary:results7];

      v391 = VCPSignPostLog(v390);
      v392 = v391;
      if (v384 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v391))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v392, OS_SIGNPOST_INTERVAL_END, v384, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", buf, 2u);
      }
    }

    if (v485)
    {
      v393 = VCPSignPostLog(processAborted2);
      v394 = os_signpost_id_generate(v393);

      v396 = VCPSignPostLog(v395);
      v397 = v396;
      if (v394 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v396))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v397, OS_SIGNPOST_INTERVAL_BEGIN, v394, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", buf, 2u);
      }

      v398 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v398;
      *&buf[32] = *&timerange->var1.var1;
      context = [(VCPVideoPetsActionAnalyzer *)v485 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63020;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results8 = [(VCPVideoPetsActionAnalyzer *)v485 results];
      [v542 addEntriesFromDictionary:results8];

      v401 = VCPSignPostLog(v400);
      v402 = v401;
      if (v394 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v401))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v402, OS_SIGNPOST_INTERVAL_END, v394, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", buf, 2u);
      }
    }

    if (v484)
    {
      v403 = VCPSignPostLog(processAborted2);
      v404 = os_signpost_id_generate(v403);

      v406 = VCPSignPostLog(v405);
      v407 = v406;
      if (v404 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v406))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v407, OS_SIGNPOST_INTERVAL_BEGIN, v404, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", buf, 2u);
      }

      v408 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v408;
      *&buf[32] = *&timerange->var1.var1;
      context = [(VCPVideoAnimalDetector *)v484 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63030;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results9 = [(VCPVideoAnimalDetector *)v484 results];
      [v542 addEntriesFromDictionary:results9];

      v411 = VCPSignPostLog(v410);
      v412 = v411;
      if (v404 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v411))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v412, OS_SIGNPOST_INTERVAL_END, v404, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", buf, 2u);
      }
    }

    if (v483)
    {
      _waitForAsyncAudioResults = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
      context = _waitForAsyncAudioResults;
      if (_waitForAsyncAudioResults)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63040;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v414 = VCPSignPostLog(_waitForAsyncAudioResults);
      v415 = os_signpost_id_generate(v414);

      v417 = VCPSignPostLog(v416);
      v418 = v417;
      if (v415 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v417))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v418, OS_SIGNPOST_INTERVAL_BEGIN, v415, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
      }

      [segmentCopy naturalSize];
      contextb = v419;
      v517 = v420;
      if (segmentCopy)
      {
        objc_msgSend_preferredTransform(segmentCopy);
        v421 = *&buf[16];
        v491 = *buf;
      }

      else
      {
        v421 = 0uLL;
        v491 = 0u;
      }

      v489 = v421;
      vcp_results4 = [(NSMutableDictionary *)self->_analysis vcp_results];
      vcp_types3 = [(NSMutableDictionary *)self->_analysis vcp_types];
      privateResults3 = [(VCPVideoCNNAnalyzer *)v498 privateResults];
      faceRanges = [v494 faceRanges];
      [(VCPMovieCurationAnalyzer *)v483 loadVideoAnalysisResults:v542 audioAnalysisResults:vcp_results4 resultTypes:vcp_types3 videoCNNResults:privateResults3 andFaceRanges:faceRanges frameSize:vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v489, v517), v491, contextb))];

      context = [(VCPMovieCurationAnalyzer *)v483 generateMovieCurations];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63050;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results10 = [(VCPMovieCurationAnalyzer *)v483 results];
      [v542 addEntriesFromDictionary:results10];

      v428 = VCPSignPostLog(v427);
      v429 = v428;
      if (v415 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v428))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v429, OS_SIGNPOST_INTERVAL_END, v415, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
      }
    }

    if (v501)
    {
      v430 = VCPSignPostLog(processAborted2);
      v431 = os_signpost_id_generate(v430);

      v433 = VCPSignPostLog(v432);
      v434 = v433;
      if (v431 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v433))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v434, OS_SIGNPOST_INTERVAL_BEGIN, v431, "VCPMovieAnalyzer_Video_VCPVideoStabilizer", "", buf, 2u);
      }

      context = [v501 convertAnalysisResult];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63060;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      v435 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v435;
      *&buf[32] = *&timerange->var1.var1;
      context = [v501 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F63070;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results11 = [v501 results];
      [v542 addEntriesFromDictionary:results11];

      v438 = VCPSignPostLog(v437);
      v439 = v438;
      if (v431 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v438))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v439, OS_SIGNPOST_INTERVAL_END, v431, "VCPMovieAnalyzer_Video_VCPVideoStabilizer", "", buf, 2u);
      }
    }

    if (v499)
    {
      processAborted2 = [(VCPVideoInterpolator *)v499 processAborted];
      if ((processAborted2 & 1) == 0)
      {
        v440 = VCPSignPostLog(processAborted2);
        v441 = os_signpost_id_generate(v440);

        v443 = VCPSignPostLog(v442);
        v444 = v443;
        if (v441 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v443))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v444, OS_SIGNPOST_INTERVAL_BEGIN, v441, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
        }

        v445 = *&timerange->var0.var3;
        *buf = *&timerange->var0.var0;
        *&buf[16] = v445;
        *&buf[32] = *&timerange->var1.var1;
        context = [(VCPVideoInterpolator *)v499 finishAnalysisPass:buf];
        if (context)
        {
          if (!self->_errorCode)
          {
            LODWORD(v516) = 0;
            v354 = xmmword_1C9F63080;
            goto LABEL_612;
          }

          goto LABEL_602;
        }

        results12 = [(VCPVideoInterpolator *)v499 results];
        [v542 addEntriesFromDictionary:results12];

        v448 = VCPSignPostLog(v447);
        v449 = v448;
        if (v441 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v448))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v449, OS_SIGNPOST_INTERVAL_END, v441, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
        }
      }
    }

    if (v500)
    {
      v450 = VCPSignPostLog(processAborted2);
      v451 = os_signpost_id_generate(v450);

      v453 = VCPSignPostLog(v452);
      v454 = v453;
      if (v451 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v453))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v454, OS_SIGNPOST_INTERVAL_BEGIN, v451, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
      }

      if (![(VCPSettlingEffectAnalyzer *)v500 processAborted])
      {
        [segmentCopy vcp_fullFrameSize];
        v456 = v455;
        v458 = v457;
        v559 = 0;
        *time = 0;
        v459 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
        v460 = v459 == 0;

        if (v460)
        {
          if (v456 >= v458)
          {
            v464 = v456;
          }

          else
          {
            v464 = v458;
          }

          *buf = [(VCPAsset *)self->_asset imageWithPreferredDimension:v464 orientation:&v559];
          CF<__CVBuffer *>::operator=(time, buf);
          CF<__CVBuffer *>::~CF(buf);
        }

        else
        {
          asset2 = [segmentCopy asset];
          v462 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
          CMTimeMakeFromDictionary(buf, v462);
          if (v456 >= v458)
          {
            v463 = v456;
          }

          else
          {
            v463 = v458;
          }

          *&v598[0] = [asset2 vcp_frameAtTimeStamp:buf withMaxDimension:v463];
          CF<__CVBuffer *>::operator=(time, v598);
          CF<__CVBuffer *>::~CF(v598);
        }

        objc_msgSend_adjustedTimeRange(v500);
        context = [(VCPSettlingEffectAnalyzer *)v500 finishAnalysisPass:buf withStillImageBuffer:*time];
        if (context)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63090;
          }

          CF<__CVBuffer *>::~CF(time);
          goto LABEL_602;
        }

        CF<__CVBuffer *>::~CF(time);
      }

      results13 = [(VCPSettlingEffectAnalyzer *)v500 results];
      [v542 addEntriesFromDictionary:results13];

      v467 = VCPSignPostLog(v466);
      v468 = v467;
      if (v451 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v467))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v468, OS_SIGNPOST_INTERVAL_END, v451, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
      }
    }

    if (v512)
    {
      v469 = VCPSignPostLog(processAborted2);
      v470 = os_signpost_id_generate(v469);

      v472 = VCPSignPostLog(v471);
      v473 = v472;
      if (v470 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v472))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v473, OS_SIGNPOST_INTERVAL_BEGIN, v470, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
      }

      v474 = *&timerange->var0.var3;
      *buf = *&timerange->var0.var0;
      *&buf[16] = v474;
      *&buf[32] = *&timerange->var1.var1;
      context = [(MADVideoSafetyClassifier *)v512 finishAnalysisPass:buf];
      if (context)
      {
        if (!self->_errorCode)
        {
          LODWORD(v516) = 0;
          v354 = xmmword_1C9F630A0;
          goto LABEL_612;
        }

        goto LABEL_602;
      }

      results14 = [(MADVideoSafetyClassifier *)v512 results];
      [v542 addEntriesFromDictionary:results14];

      v477 = VCPSignPostLog(v476);
      v478 = v477;
      if (v470 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v477))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v478, OS_SIGNPOST_INTERVAL_END, v470, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
      }
    }

    v479 = VCPSignPostLog(processAborted2);
    v480 = v479;
    if (v493 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v479))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v480, OS_SIGNPOST_INTERVAL_END, v493, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
    }

    v53 = 0;
    LODWORD(v516) = 0;
    goto LABEL_446;
  }

  v198 = VCPSignPostLog(processAborted2);
  v199 = os_signpost_id_generate(v198);

  v201 = VCPSignPostLog(v200);
  v202 = v201;
  if (v199 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v201))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v202, OS_SIGNPOST_INTERVAL_BEGIN, v199, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", buf, 2u);
  }

  v203 = *&timerange->var0.var3;
  *buf = *&timerange->var0.var0;
  *&buf[16] = v203;
  *&buf[32] = *&timerange->var1.var1;
  context = [v494 finishAnalysisPass:buf];
  if (!context)
  {
    results15 = [v494 results];
    [v542 addEntriesFromDictionary:results15];

    v208 = VCPSignPostLog(v207);
    v209 = v208;
    if (v199 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v208))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v209, OS_SIGNPOST_INTERVAL_END, v199, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", buf, 2u);
    }

    goto LABEL_313;
  }

  selfCopy18 = self;
  if (!self->_errorCode)
  {
    v205 = xmmword_1C9F62FA0;
    goto LABEL_331;
  }

LABEL_332:
  v53 = 10;
LABEL_333:

  v50 = v502;
  v51 = v504;
  v539 = v498;
LABEL_334:

LABEL_335:
LABEL_336:
  v52 = v513;
LABEL_337:
  v32 = v520;
LABEL_338:

  objc_autoreleasePoolPop(v527);
  if (v53)
  {
LABEL_339:
    v230 = context;
    goto LABEL_393;
  }

  if (!v539)
  {
    goto LABEL_363;
  }

  _waitForAsyncAudioResults2 = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
  v230 = _waitForAsyncAudioResults2;
  if (!_waitForAsyncAudioResults2)
  {
    v234 = VCPSignPostLog(_waitForAsyncAudioResults2);
    v235 = os_signpost_id_generate(v234);

    v237 = VCPSignPostLog(v236);
    v238 = v237;
    if (v235 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v237))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v238, OS_SIGNPOST_INTERVAL_BEGIN, v235, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
    }

    v240 = VCPSignPostLog(v239);
    v241 = os_signpost_id_generate(v240);

    v243 = VCPSignPostLog(v242);
    v244 = v243;
    if (v241 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v243))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v244, OS_SIGNPOST_INTERVAL_BEGIN, v241, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
    }

    vcp_results5 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v246 = [vcp_results5 objectForKeyedSubscript:@"VoiceResults"];
    v230 = [(VCPVideoCNNAnalyzer *)v539 loadAnalysisResults:v542 audioResults:v246];

    if (v230)
    {
      selfCopy22 = self;
      if (self->_errorCode)
      {
        goto LABEL_392;
      }

      v233 = xmmword_1C9F630C0;
LABEL_391:
      *&selfCopy22->_errorCode = v233;
      goto LABEL_392;
    }

    v247 = *&timerange->var0.var3;
    *buf = *&timerange->var0.var0;
    *&buf[16] = v247;
    *&buf[32] = *&timerange->var1.var1;
    v230 = [(VCPVideoCNNAnalyzer *)v539 finishAnalysisPass:buf];
    if (v230)
    {
      selfCopy22 = self;
      if (self->_errorCode)
      {
        goto LABEL_392;
      }

      v233 = xmmword_1C9F630D0;
      goto LABEL_391;
    }

    results16 = [(VCPVideoCNNAnalyzer *)v539 results];
    [v542 addEntriesFromDictionary:results16];

    v249 = self->_privateResults;
    privateResults4 = [(VCPVideoCNNAnalyzer *)v539 privateResults];
    [(NSMutableDictionary *)v249 addEntriesFromDictionary:privateResults4];

    v252 = VCPSignPostLog(v251);
    v253 = v252;
    if (v241 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v252))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v253, OS_SIGNPOST_INTERVAL_END, v241, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
    }

    v255 = VCPSignPostLog(v254);
    v256 = v255;
    if (v235 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v255))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v256, OS_SIGNPOST_INTERVAL_END, v235, "VCPMovieAnalyzer_AnalyzeVideoSegment_PostProcessing", "", buf, 2u);
    }

LABEL_363:
    isLivePhoto3 = [(VCPAsset *)self->_asset isLivePhoto];
    if ((isLivePhoto3 & ((v548 & 0x200000000000) != 0)) != 1)
    {
      goto LABEL_387;
    }

    results17 = [(VCPVideoCNNAnalyzer *)v539 results];
    v259 = [results17 objectForKeyedSubscript:@"HumanActionClassificationResults"];
    v260 = v259 == 0;

    v262 = 0.0;
    if (!v260)
    {
      v557 = 0u;
      v558 = 0u;
      v555 = 0u;
      v556 = 0u;
      results18 = [(VCPVideoCNNAnalyzer *)v539 results];
      obja = [results18 objectForKeyedSubscript:@"HumanActionClassificationResults"];

      v264 = [obja countByEnumeratingWithState:&v555 objects:v611 count:16];
      if (v264)
      {
        v549 = *v556;
        do
        {
          for (i = 0; i != v264; ++i)
          {
            if (*v556 != v549)
            {
              objc_enumerationMutation(obja);
            }

            v266 = [*(*(&v555 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v267 = [v266 objectForKeyedSubscript:@"humanActions"];

            allKeys = [v267 allKeys];
            v553 = 0u;
            v554 = 0u;
            v551 = 0u;
            v552 = 0u;
            v269 = allKeys;
            v270 = [v269 countByEnumeratingWithState:&v551 objects:v610 count:16];
            if (v270)
            {
              v271 = *v552;
              do
              {
                for (j = 0; j != v270; ++j)
                {
                  if (*v552 != v271)
                  {
                    objc_enumerationMutation(v269);
                  }

                  v273 = *(*(&v551 + 1) + 8 * j);
                  if ([v273 intValue])
                  {
                    v274 = [v267 objectForKeyedSubscript:v273];
                    [v274 floatValue];
                    v276 = v275 > v262;

                    if (v276)
                    {
                      v277 = [v267 objectForKeyedSubscript:v273];
                      [v277 floatValue];
                      v262 = v278;
                    }
                  }
                }

                v270 = [v269 countByEnumeratingWithState:&v551 objects:v610 count:16];
              }

              while (v270);
            }
          }

          v264 = [obja countByEnumeratingWithState:&v555 objects:v611 count:16];
        }

        while (v264);

        if (v262 > 0.1)
        {
          v279 = 1;
LABEL_386:
          v608 = @"VideoCaptionPreferenceResults";
          v605 = @"attributes";
          v603[0] = @"videoCaptionPreferenceScore";
          *&v261 = v262;
          v280 = [MEMORY[0x1E696AD98] numberWithFloat:v261];
          v604[0] = v280;
          v603[1] = @"videoCaptionPreference";
          v281 = [MEMORY[0x1E696AD98] numberWithBool:v279];
          v604[1] = v281;
          v282 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v604 forKeys:v603 count:2];
          v606 = v282;
          v283 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v606 forKeys:&v605 count:1];
          v607 = v283;
          v284 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v607 count:1];
          v609 = v284;
          v285 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];

          [v542 addEntriesFromDictionary:v285];
LABEL_387:
          if (v535)
          {
            _waitForAsyncAudioResults3 = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
            v230 = _waitForAsyncAudioResults3;
            if (_waitForAsyncAudioResults3)
            {
              selfCopy22 = self;
              if (self->_errorCode)
              {
                goto LABEL_392;
              }

              v233 = xmmword_1C9F630E0;
              goto LABEL_391;
            }

            v291 = VCPSignPostLog(_waitForAsyncAudioResults3);
            v292 = os_signpost_id_generate(v291);

            v294 = VCPSignPostLog(v293);
            v295 = v294;
            if (v292 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v294))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v295, OS_SIGNPOST_INTERVAL_BEGIN, v292, "VCPMovieAnalyzer_Video_VCPAudioVideoEmbeddingFuser", "", buf, 2u);
            }

            vcp_results6 = [(NSMutableDictionary *)self->_analysis vcp_results];
            v297 = [vcp_results6 objectForKeyedSubscript:@"AudioEmbeddingResults"];
            v298 = [v542 objectForKeyedSubscript:@"VideoEmbeddingResults"];
            v299 = [(VCPAudioVideoEmbeddingFuser *)v535 loadAudioEmbeddingResults:v297 andVideoEmbeddingResults:v298];

            if (v299)
            {
              if (!self->_errorCode)
              {
                *&self->_errorCode = xmmword_1C9F630F0;
              }

              v53 = 1;
              v230 = context;
              LODWORD(v516) = v299;
              goto LABEL_393;
            }

            v300 = [(VCPAudioVideoEmbeddingFuser *)v535 fuse:cancelCopy];
            if (v300)
            {
              if (!self->_errorCode)
              {
                *&self->_errorCode = xmmword_1C9F63100;
              }

              v53 = 1;
              v230 = context;
              LODWORD(v516) = v300;
              goto LABEL_393;
            }

            results19 = [(VCPAudioVideoEmbeddingFuser *)v535 results];
            [v542 addEntriesFromDictionary:results19];

            v303 = VCPSignPostLog(v302);
            v304 = v303;
            if (v292 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v303))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v304, OS_SIGNPOST_INTERVAL_END, v292, "VCPMovieAnalyzer_Video_VCPAudioVideoEmbeddingFuser", "", buf, 2u);
            }
          }

          if (v529)
          {
            v305 = VCPSignPostLog(isLivePhoto3);
            v306 = os_signpost_id_generate(v305);

            v308 = VCPSignPostLog(v307);
            v309 = v308;
            if (v306 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v308))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v309, OS_SIGNPOST_INTERVAL_BEGIN, v306, "VCPMovieAnalyzer_Video_VCPVideoThumbnailAnalyzer", "", buf, 2u);
            }

            v310 = +[VCPMovieAnalyzer MaxNumThumbnailsPerVideo];
            *buf = *&timerange->var1.var0;
            *&buf[16] = timerange->var1.var3;
            Seconds = CMTimeGetSeconds(buf);
            if (segmentCopy)
            {
              objc_msgSend_timeRange(segmentCopy);
            }

            else
            {
              memset(buf, 0, 48);
            }

            *time = *&buf[24];
            *&time[16] = *&buf[40];
            v312 = CMTimeGetSeconds(time);
            vcp_results7 = [(NSMutableDictionary *)self->_analysis vcp_results];
            v314 = [vcp_results7 objectForKeyedSubscript:@"VideoThumbnailResults"];

            v315 = [v314 count];
            v316 = vcvtpd_s64_f64(Seconds / v312 * v310);
            if (v310 - v315 >= v316)
            {
              v317 = v316;
            }

            else
            {
              v317 = (v310 - v315);
            }

            v318 = self->_privateResults;
            v319 = *&timerange->var0.var3;
            *buf = *&timerange->var0.var0;
            *&buf[16] = v319;
            *&buf[32] = *&timerange->var1.var1;
            v320 = [(VCPVideoThumbnailAnalyzer *)v529 addThumbnailToResults:v542 withPrivateResults:v318 videoRange:buf assetMaxNumThumbnails:v317];

            v322 = VCPSignPostLog(v321);
            v323 = v322;
            if (v306 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v322))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v323, OS_SIGNPOST_INTERVAL_END, v306, "VCPMovieAnalyzer_Video_VCPVideoThumbnailAnalyzer", "", buf, 2u);
            }

            v53 = 0;
            v542 = v320;
          }

          else
          {
            v53 = 0;
          }

          goto LABEL_339;
        }
      }

      else
      {
      }
    }

    v279 = 0;
    goto LABEL_386;
  }

  selfCopy22 = self;
  if (!self->_errorCode)
  {
    v233 = xmmword_1C9F630B0;
    goto LABEL_391;
  }

LABEL_392:
  v53 = 10;
LABEL_393:

  objc_autoreleasePoolPop(v526);
  v287 = v516;
  if (v53 == 10)
  {
LABEL_399:
    v287 = v230;
  }

  else if (!v53)
  {
    [(VCPMovieAnalyzer *)self postProcessAutoPlayable:v542];
    [(VCPMovieAnalyzer *)self postProcessAnimalResults:v542];
    [(NSMutableDictionary *)self->_analysis vcp_addFlags:flags];
    v288 = VCPSignPostLog([(NSMutableDictionary *)self->_analysis vcp_appendResults:v542]);
    v289 = v288;
    if (v518 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v288))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v289, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieAnalyzer_AnalyzeVideoSegment", "", buf, 2u);
    }

    goto LABEL_399;
  }

  return v287;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke(uint64_t a1, void *a2)
{
  v124 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock0", "", &buf, 2u);
  }

  v118 = 0;
  v9 = (*(*(a1 + 120) + 16))();
  if (v9)
  {
    v10 = 4294967168;
    goto LABEL_112;
  }

  if (!v3)
  {
    v9 = MediaAnalysisLogLevel();
    if (v9 >= 3)
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = @"[pipelineBlock0]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &buf, 0xCu);
      }
    }

    v27 = *(a1 + 32);
    v23 = a1 + 32;
    v26 = v27;
    if (*(v27 + 144))
    {
      goto LABEL_25;
    }

    *(v26 + 144) = 45;
    v10 = 4294967278;
    v25 = 949;
    goto LABEL_111;
  }

  v11 = [v3 frameSampleBuffer];
  v12 = v11;
  if (!v11)
  {
    v9 = MediaAnalysisLogLevel();
    if (v9 >= 3)
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        LODWORD(buf.start.value) = 138412290;
        *(&buf.start.value + 4) = @"[pipelineBlock0]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &buf, 0xCu);
      }
    }

    v29 = *(a1 + 32);
    v23 = a1 + 32;
    v28 = v29;
    if (*(v29 + 144))
    {
LABEL_25:
      v10 = 4294967278;
      goto LABEL_112;
    }

    *(v28 + 144) = 45;
    v10 = 4294967278;
    v25 = 951;
LABEL_111:
    *(*v23 + 152) = v25;
    goto LABEL_112;
  }

  CMSampleBufferGetPresentationTimeStamp(&buf.start, v11);
  v121 = *&buf.start.value;
  epoch = buf.start.epoch;
  CMSampleBufferGetDuration(&buf.start, v12);
  v119 = *&buf.start.value;
  v120 = buf.start.epoch;
  ImageBuffer = CMSampleBufferGetImageBuffer(v12);
  v14 = [v3 frameFlags];
  v118 = v14;
  if (*(a1 + 40) || (v14 = CVPixelBufferFillExtendedPixels(ImageBuffer), v10 = v14, !v14))
  {
    if (*(a1 + 48))
    {
      v15 = VCPSignPostLog(v14);
      v16 = os_signpost_id_generate(v15);

      v18 = VCPSignPostLog(v17);
      v19 = v18;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", &buf, 2u);
      }

      v20 = *(a1 + 48);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      v21 = [v3 frameStats];
      v10 = [v20 analyzeFrame:ImageBuffer timestamp:&buf duration:v117 frameStats:v21 flags:&v118];

      if (v10)
      {
        v24 = *(a1 + 32);
        v23 = a1 + 32;
        v22 = v24;
        if (*(v24 + 144))
        {
          goto LABEL_112;
        }

        *(v22 + 144) = 45;
        v25 = 970;
        goto LABEL_111;
      }

      v31 = VCPSignPostLog(v9);
      v32 = v31;
      if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v16, "VCPMovieAnalyzer_Video_VCPVideoFaceDetector", "", &buf, 2u);
      }
    }

    if (*(a1 + 56))
    {
      v33 = VCPSignPostLog(v14);
      v34 = os_signpost_id_generate(v33);

      v36 = VCPSignPostLog(v35);
      v37 = v36;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v37, OS_SIGNPOST_INTERVAL_BEGIN, v34, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", &buf, 2u);
      }

      v38 = *(a1 + 56);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      *v117 = v119;
      *&v117[16] = v120;
      v9 = [v38 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v117 flags:&v118];
      v10 = v9;
      if (v9)
      {
        v40 = *(a1 + 32);
        v23 = a1 + 32;
        v39 = v40;
        if (*(v40 + 144))
        {
          goto LABEL_112;
        }

        *(v39 + 144) = 45;
        v25 = 980;
        goto LABEL_111;
      }

      v41 = [*(a1 + 56) frameScenes];
      [v3 setSceneAnalysisResults:v41];

      v43 = VCPSignPostLog(v42);
      v44 = v43;
      if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_END, v34, "VCPMovieAnalyzer_Video_VCPVideoSceneClassifier", "", &buf, 2u);
      }
    }

    if (*(a1 + 64))
    {
      v45 = VCPSignPostLog(v14);
      v46 = os_signpost_id_generate(v45);

      v48 = VCPSignPostLog(v47);
      v49 = v48;
      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", &buf, 2u);
      }

      v50 = *(a1 + 64);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      *v117 = v119;
      *&v117[16] = v120;
      v9 = [v50 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v117 flags:&v118];
      v10 = v9;
      if (v9)
      {
        v52 = *(a1 + 32);
        v23 = a1 + 32;
        v51 = v52;
        if (*(v52 + 144))
        {
          goto LABEL_112;
        }

        *(v51 + 144) = 79;
        v25 = 991;
        goto LABEL_111;
      }

      v53 = VCPSignPostLog(v9);
      v54 = v53;
      if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v54, OS_SIGNPOST_INTERVAL_END, v46, "VCPMovieAnalyzer_Video_VCPVideoSaliencyAnalyzer", "", &buf, 2u);
      }
    }

    v55 = *(a1 + 72);
    if (v55)
    {
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      objc_msgSend_timeRangeAtTime_(v55);
      buf = *&v117[56];
      [v3 setPredictedTimeRange:&buf];
      v56 = *(a1 + 72);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      v55 = [v56 updateForTime:&buf];
    }

    if (*(a1 + 80))
    {
      v57 = VCPSignPostLog(v55);
      v58 = os_signpost_id_generate(v57);

      v60 = VCPSignPostLog(v59);
      v61 = v60;
      if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v60))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v61, OS_SIGNPOST_INTERVAL_BEGIN, v58, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", &buf, 2u);
      }

      v62 = *(a1 + 80);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      v63 = [v3 frameStats];
      v10 = [v62 analyzeFrame:ImageBuffer timestamp:&buf duration:v117 frameStats:v63 flags:&v118];

      if (v10)
      {
        v65 = *(a1 + 32);
        v23 = a1 + 32;
        v64 = v65;
        if (*(v65 + 144))
        {
          goto LABEL_112;
        }

        *(v64 + 144) = 68;
        v25 = 1007;
        goto LABEL_111;
      }

      objc_msgSend_predictedTimeRange(v3);
      v66 = *(MEMORY[0x1E6960C98] + 16);
      *v117 = *MEMORY[0x1E6960C98];
      *&v117[16] = v66;
      *&v117[32] = *(MEMORY[0x1E6960C98] + 32);
      v67 = CMTimeRangeEqual(&buf, v117);
      if (!v67)
      {
        v68 = *(a1 + 80);
        objc_msgSend_predictedTimeRange(v3);
        v69 = [v68 clipResults:&buf];
        [v3 setActionAnalysisResults:v69];
      }

      v70 = VCPSignPostLog(v67);
      v71 = v70;
      if (v58 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v71, OS_SIGNPOST_INTERVAL_END, v58, "VCPMovieAnalyzer_Video_VCPVideoHumanActionAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 88))
    {
      v72 = VCPSignPostLog(v55);
      v73 = os_signpost_id_generate(v72);

      v75 = VCPSignPostLog(v74);
      v76 = v75;
      if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v76, OS_SIGNPOST_INTERVAL_BEGIN, v73, "VCPMovieAnalyzer_Video_VCPVideoCaptionAnalyzer", "", &buf, 2u);
      }

      v77 = *(a1 + 88);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      *v117 = v119;
      *&v117[16] = v120;
      v9 = [v77 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v117 flags:&v118];
      v10 = v9;
      if (v9)
      {
        v79 = *(a1 + 32);
        v23 = a1 + 32;
        v78 = v79;
        if (*(v79 + 144))
        {
          goto LABEL_112;
        }

        *(v78 + 144) = 63;
        v25 = 1021;
        goto LABEL_111;
      }

      v80 = VCPSignPostLog(v9);
      v81 = v80;
      if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v81, OS_SIGNPOST_INTERVAL_END, v73, "VCPMovieAnalyzer_Video_VCPVideoCaptionAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 96))
    {
      v82 = VCPSignPostLog(v55);
      v83 = os_signpost_id_generate(v82);

      v85 = VCPSignPostLog(v84);
      v86 = v85;
      if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v85))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v86, OS_SIGNPOST_INTERVAL_BEGIN, v83, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", &buf, 2u);
      }

      v87 = *(a1 + 96);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      v88 = [v3 frameStats];
      v10 = [v87 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v117 flags:&v118 frameStats:v88];

      if (v10)
      {
        v90 = *(a1 + 32);
        v23 = a1 + 32;
        v89 = v90;
        if (*(v90 + 144))
        {
          goto LABEL_112;
        }

        *(v89 + 144) = 78;
        v25 = 1033;
        goto LABEL_111;
      }

      v91 = VCPSignPostLog(v9);
      v92 = v91;
      if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v92, OS_SIGNPOST_INTERVAL_END, v83, "VCPMovieAnalyzer_Video_VCPVideoPetsAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 104))
    {
      v93 = VCPSignPostLog(v55);
      v94 = os_signpost_id_generate(v93);

      v96 = VCPSignPostLog(v95);
      v97 = v96;
      if (v94 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v97, OS_SIGNPOST_INTERVAL_BEGIN, v94, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", &buf, 2u);
      }

      v98 = *(a1 + 104);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      *v117 = v119;
      *&v117[16] = v120;
      v9 = [v98 analyzeFrame:ImageBuffer withTimestamp:&buf andDuration:v117 flags:&v118];
      v10 = v9;
      if (v9)
      {
        v100 = *(a1 + 32);
        v23 = a1 + 32;
        v99 = v100;
        if (*(v100 + 144))
        {
          goto LABEL_112;
        }

        *(v99 + 144) = 78;
        v25 = 1044;
        goto LABEL_111;
      }

      v101 = VCPSignPostLog(v9);
      v102 = v101;
      if (v94 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v101))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v102, OS_SIGNPOST_INTERVAL_END, v94, "VCPMovieAnalyzer_Video_VCPVideoAnimalAnalyzer", "", &buf, 2u);
      }
    }

    if (*(a1 + 112))
    {
      v103 = VCPSignPostLog(v55);
      v104 = os_signpost_id_generate(v103);

      v106 = VCPSignPostLog(v105);
      v107 = v106;
      if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v106))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v107, OS_SIGNPOST_INTERVAL_BEGIN, v104, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", &buf, 2u);
      }

      v108 = *(a1 + 112);
      *&buf.start.value = v121;
      buf.start.epoch = epoch;
      v109 = [v3 frameStats];
      v10 = [v108 analyzeFrame:ImageBuffer timestamp:&buf duration:v117 frameStats:v109 flags:&v118];

      if (v10)
      {
        v111 = *(a1 + 32);
        v23 = a1 + 32;
        v110 = v111;
        if (*(v111 + 144))
        {
          goto LABEL_112;
        }

        *(v110 + 144) = 77;
        v25 = 1056;
        goto LABEL_111;
      }

      v115 = VCPSignPostLog(v9);
      v116 = v115;
      if (v104 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v115))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v116, OS_SIGNPOST_INTERVAL_END, v104, "VCPMovieAnalyzer_Video_VCPVideoPetActionAnalyzer", "", &buf, 2u);
      }
    }

    v9 = [v3 setFrameFlags:v118];
    v10 = 0;
LABEL_112:
    v112 = VCPSignPostLog(v9);
    v113 = v112;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v113, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock0", "", &buf, 2u);
    }

    goto LABEL_116;
  }

  v30 = *(a1 + 32);
  if (!*(v30 + 144))
  {
    *(v30 + 144) = 45;
    *(*(a1 + 32) + 152) = 960;
  }

LABEL_116:

  return v10;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_707(uint64_t a1, void *a2, opaqueCMSampleBuffer *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = VCPSignPostLog(v5);
  v7 = os_signpost_id_generate(v6);

  v9 = VCPSignPostLog(v8);
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock1", "", &buf, 2u);
  }

  v51 = 0;
  v11 = (*(*(a1 + 48) + 16))();
  if ((v11 & 1) == 0)
  {
    if (v5)
    {
      v13 = [v5 frameSampleBuffer];
      v14 = v13;
      if (v13)
      {
        CMSampleBufferGetPresentationTimeStamp(&buf.start, v13);
        v54 = *&buf.start.value;
        epoch = buf.start.epoch;
        CMSampleBufferGetDuration(&buf.start, v14);
        v52 = *&buf.start.value;
        v53 = buf.start.epoch;
        ImageBuffer = CMSampleBufferGetImageBuffer(v14);
        v16 = [v5 frameFlags];
        v51 = v16;
        if (*(a1 + 40))
        {
          v17 = (a1 + 32);
          if ([*(*(a1 + 32) + 32) isSlowmo])
          {
            if (a3)
            {
              v18 = CMSampleBufferGetImageBuffer(a3);
            }

            else
            {
              v18 = 0;
            }

            [*(a1 + 40) setNextCaptureFrame:v18];
          }

          if (*(a1 + 56) == 1)
          {
            v25 = *(a1 + 40);
            v26 = [v5 sceneAnalysisResults];
            [v25 prepareVideoAnalysisByScenes:v26];
          }

          if ((*(*v17 + 56) & 1) == 0 && [*(*v17 + 32) isLivePhoto])
          {
            v27 = *v17;
            if ((*(*v17 + 57) & 1) == 0)
            {
              v28 = *(a1 + 40);
              v29 = [*(v27 + 32) scenes];
              [v28 prepareLivePhotoAnalysisByScenes:v29];

              v27 = *v17;
            }

            v30 = *(a1 + 40);
            v31 = [*(v27 + 32) scenes];
            [v30 prepareVideoAnalysisByScenes:v31];

            *(*v17 + 56) = 1;
          }

          v32 = [VCPSaliencyRegion salientRegionsFromPixelBuffer:ImageBuffer];
          [VCPSaliencyRegion attachSalientRegions:v32 toPixelBuffer:ImageBuffer];

          v34 = VCPSignPostLog(v33);
          v35 = os_signpost_id_generate(v34);

          v37 = VCPSignPostLog(v36);
          v38 = v37;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
          {
            LOWORD(buf.start.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", &buf, 2u);
          }

          v39 = *(a1 + 40);
          *&buf.start.value = v54;
          buf.start.epoch = epoch;
          v40 = [v5 frameStats];
          v12 = [v39 analyzeFrame:ImageBuffer timestamp:&buf duration:&v50 frameStats:v40 flags:&v51 cancel:*(a1 + 48)];

          if (v12)
          {
            if (*(*v17 + 144))
            {
              goto LABEL_47;
            }

            *(*v17 + 144) = 62;
            v22 = 1114;
LABEL_39:
            *(*v17 + 152) = v22;
            goto LABEL_47;
          }

          objc_msgSend_predictedTimeRange(v5);
          v41 = *(MEMORY[0x1E6960C98] + 16);
          *&v50.start.value = *MEMORY[0x1E6960C98];
          *&v50.start.epoch = v41;
          *&v50.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
          v42 = CMTimeRangeEqual(&buf, &v50);
          if (!v42)
          {
            v43 = *(a1 + 40);
            objc_msgSend_predictedTimeRange(v5);
            v44 = [v43 clipResults:&buf];
            [v5 setFullAnalysisResults:v44];
          }

          v45 = VCPSignPostLog(v42);
          v46 = v45;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
          {
            LOWORD(buf.start.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v46, OS_SIGNPOST_INTERVAL_END, v35, "VCPMovieAnalyzer_Video_VCPFullVideoAnalyzer", "", &buf, 2u);
          }

          v16 = v51;
        }

        v11 = [v5 setFrameFlags:v16];
        v12 = 0;
        goto LABEL_47;
      }

      v11 = MediaAnalysisLogLevel();
      if (v11 >= 3)
      {
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v11)
        {
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = @"[pipelineBlock1]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &buf, 0xCu);
        }
      }

      v24 = *(a1 + 32);
      v20 = (a1 + 32);
      v23 = v24;
      if (*(v24 + 144))
      {
LABEL_21:
        v12 = 4294967278;
        goto LABEL_47;
      }

      *(v23 + 144) = 45;
      v12 = 4294967278;
      v22 = 1080;
    }

    else
    {
      v11 = MediaAnalysisLogLevel();
      if (v11 >= 3)
      {
        v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v11)
        {
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = @"[pipelineBlock1]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &buf, 0xCu);
        }
      }

      v21 = *(a1 + 32);
      v20 = (a1 + 32);
      v19 = v21;
      if (*(v21 + 144))
      {
        goto LABEL_21;
      }

      *(v19 + 144) = 45;
      v12 = 4294967278;
      v22 = 1078;
    }

    v17 = v20;
    goto LABEL_39;
  }

  v12 = 4294967168;
LABEL_47:
  v47 = VCPSignPostLog(v11);
  v48 = v47;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v48, OS_SIGNPOST_INTERVAL_END, v7, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock1", "", &buf, 2u);
  }

  return v12;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_714(uint64_t a1, void *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf[0].value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock2", "", buf, 2u);
  }

  v106 = 0;
  if ((*(*(a1 + 96) + 16))())
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      [v9 setCancelled:1];
    }
  }

  v10 = (*(*(a1 + 96) + 16))();
  if ((v10 & 1) == 0)
  {
    if (v3)
    {
      v12 = [v3 frameSampleBuffer];
      v13 = v12;
      if (v12)
      {
        CMSampleBufferGetPresentationTimeStamp(buf, v12);
        v108 = buf[0];
        CMSampleBufferGetDuration(buf, v13);
        v107 = buf[0];
        ImageBuffer = CMSampleBufferGetImageBuffer(v13);
        v14 = [v3 frameFlags];
        v106 = v14;
        if (*(a1 + 48))
        {
          v15 = VCPSignPostLog(v14);
          v16 = os_signpost_id_generate(v15);

          v18 = VCPSignPostLog(v17);
          v19 = v18;
          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
          }

          v20 = *(a1 + 48);
          buf[0] = v108;
          v105 = v107;
          v21 = [v3 frameStats];
          v11 = [v20 analyzeFrame:ImageBuffer timestamp:buf duration:&v105 frameStats:v21 flags:&v106];

          if (v11)
          {
            v24 = *(a1 + 40);
            v23 = (a1 + 40);
            v22 = v24;
            if (*(v24 + 144))
            {
              goto LABEL_42;
            }

            *(v22 + 144) = 61;
            v25 = 1160;
            goto LABEL_40;
          }

          v30 = VCPSignPostLog(v10);
          v31 = v30;
          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_END, v16, "VCPMovieAnalyzer_Video_VCPVideoActivityAnalyzer", "", buf, 2u);
          }
        }

        if (*(a1 + 56))
        {
          v32 = VCPSignPostLog(v14);
          v33 = os_signpost_id_generate(v32);

          v35 = VCPSignPostLog(v34);
          v36 = v35;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_BEGIN, v33, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
          }

          v37 = *(a1 + 56);
          buf[0] = v108;
          v105 = v107;
          v38 = [v3 frameStats];
          v39 = (a1 + 40);
          [*(*(a1 + 40) + 32) photoOffsetSeconds];
          v11 = [v37 analyzeKeyFrame:ImageBuffer timestamp:buf duration:&v105 frameStats:v38 flags:&v106 photoOffset:?];

          if (v11)
          {
            if (*(*v39 + 144))
            {
              goto LABEL_42;
            }

            *(*v39 + 144) = 46;
            v25 = 1174;
LABEL_41:
            *(*v39 + 152) = v25;
            goto LABEL_42;
          }

          v43 = VCPSignPostLog(v10);
          v44 = v43;
          if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v44, OS_SIGNPOST_INTERVAL_END, v33, "VCPMovieAnalyzer_Video_VCPMovieCurationAnalyzer", "", buf, 2u);
          }
        }

        if (*(a1 + 64))
        {
          v45 = VCPSignPostLog(v14);
          v46 = os_signpost_id_generate(v45);

          v48 = VCPSignPostLog(v47);
          v49 = v48;
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_BEGIN, v46, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
          }

          v50 = *(a1 + 64);
          v51 = [v3 fullAnalysisResults];
          v52 = [v3 actionAnalysisResults];
          objc_msgSend_predictedTimeRange(v3);
          v105 = v108;
          v11 = [v50 loadFullAnalysisResults:v51 actionAnalysisResults:v52 predictedTimeRange:buf timestamp:&v105];

          if (v11)
          {
            v54 = *(a1 + 40);
            v23 = (a1 + 40);
            v53 = v54;
            if (*(v54 + 144))
            {
              goto LABEL_42;
            }

            *(v53 + 144) = 64;
            v25 = 1185;
            goto LABEL_40;
          }

          v55 = *(a1 + 64);
          buf[0] = v108;
          v105 = v107;
          v10 = [v55 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v105 flags:&v106];
          v11 = v10;
          if (v10)
          {
            v57 = *(a1 + 40);
            v23 = (a1 + 40);
            v56 = v57;
            if (*(v57 + 144))
            {
              goto LABEL_42;
            }

            *(v56 + 144) = 64;
            v25 = 1191;
            goto LABEL_40;
          }

          v58 = VCPSignPostLog(v10);
          v59 = v58;
          if (v46 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v59, OS_SIGNPOST_INTERVAL_END, v46, "VCPMovieAnalyzer_Video_VCPVideoCNNAnalyzer", "", buf, 2u);
          }
        }

        v60 = +[VCPVideoAnalysisPipelineManager shouldUseGraphProcessing];
        if (v60)
        {
LABEL_65:
          v10 = [v3 setFrameFlags:v106];
          v11 = 0;
          goto LABEL_42;
        }

        if (*(a1 + 72))
        {
          v61 = VCPSignPostLog(v60);
          v62 = os_signpost_id_generate(v61);

          v64 = VCPSignPostLog(v63);
          v65 = v64;
          if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v65, OS_SIGNPOST_INTERVAL_BEGIN, v62, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", buf, 2u);
          }

          v66 = *(a1 + 72);
          buf[0] = v108;
          v105 = v107;
          v10 = [v66 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v105 flags:&v106];
          v11 = v10;
          if (v10)
          {
            v68 = *(a1 + 40);
            v23 = (a1 + 40);
            v67 = v68;
            if (*(v68 + 144))
            {
              goto LABEL_42;
            }

            *(v67 + 144) = 45;
            v25 = 1205;
            goto LABEL_40;
          }

          v69 = VCPSignPostLog(v10);
          v70 = v69;
          if (v62 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v70, OS_SIGNPOST_INTERVAL_END, v62, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", buf, 2u);
          }
        }

        v71 = *(a1 + 32);
        if (v71)
        {
          v72 = [v71 processAborted];
          if ((v72 & 1) == 0)
          {
            v73 = VCPSignPostLog(v72);
            v74 = os_signpost_id_generate(v73);

            v76 = VCPSignPostLog(v75);
            v77 = v76;
            if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
            {
              LOWORD(buf[0].value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v77, OS_SIGNPOST_INTERVAL_BEGIN, v74, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
            }

            v78 = *(a1 + 32);
            buf[0] = v108;
            v105 = v107;
            v10 = [v78 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v105 flags:&v106];
            v11 = v10;
            v39 = (a1 + 40);
            v79 = *(a1 + 40);
            if (v10)
            {
              if (*(v79 + 144))
              {
                goto LABEL_42;
              }

              *(v79 + 144) = 45;
              v25 = 1217;
              goto LABEL_41;
            }

            if (*(v79 + 8) == 0x20000000)
            {
              v10 = [*(a1 + 32) processAborted];
              if (v10)
              {
                if (*(*v39 + 144))
                {
                  goto LABEL_65;
                }

                *(*v39 + 144) = 45;
                v80 = *v39;
                v81 = 1219;
LABEL_105:
                *(v80 + 152) = v81;
                goto LABEL_65;
              }
            }

            v82 = VCPSignPostLog(v10);
            v83 = v82;
            if (v74 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
            {
              LOWORD(buf[0].value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v83, OS_SIGNPOST_INTERVAL_END, v74, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", buf, 2u);
            }
          }
        }

        v84 = *(a1 + 80);
        if (v84)
        {
          v84 = [v84 processAborted];
          if ((v84 & 1) == 0)
          {
            v85 = VCPSignPostLog(v84);
            v86 = os_signpost_id_generate(v85);

            v88 = VCPSignPostLog(v87);
            v89 = v88;
            if (v86 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v88))
            {
              LOWORD(buf[0].value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v89, OS_SIGNPOST_INTERVAL_BEGIN, v86, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
            }

            v90 = *(a1 + 80);
            buf[0] = v108;
            v105 = v107;
            v10 = [v90 analyzeFrame:ImageBuffer withTimestamp:buf andDuration:&v105 flags:&v106];
            v11 = v10;
            v39 = (a1 + 40);
            v91 = *(a1 + 40);
            if (v10)
            {
              if (*(v91 + 144))
              {
                goto LABEL_42;
              }

              *(v91 + 144) = 51;
              v25 = 1231;
              goto LABEL_41;
            }

            if (*(v91 + 8) == 0x4000000000)
            {
              v10 = [*(a1 + 80) processAborted];
              if (v10)
              {
                if (*(*v39 + 144))
                {
                  goto LABEL_65;
                }

                *(*v39 + 144) = 51;
                v80 = *v39;
                v81 = 1233;
                goto LABEL_105;
              }
            }

            v92 = VCPSignPostLog(v10);
            v93 = v92;
            if (v86 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
            {
              LOWORD(buf[0].value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v93, OS_SIGNPOST_INTERVAL_END, v86, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", buf, 2u);
            }
          }
        }

        if (!*(a1 + 88))
        {
          goto LABEL_65;
        }

        v94 = VCPSignPostLog(v84);
        v95 = os_signpost_id_generate(v94);

        v97 = VCPSignPostLog(v96);
        v98 = v97;
        if (v95 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
        {
          LOWORD(buf[0].value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v98, OS_SIGNPOST_INTERVAL_BEGIN, v95, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
        }

        v99 = *(a1 + 88);
        buf[0] = v108;
        v105 = v107;
        v10 = [v99 analyzeFrameWithSampleBuffer:v13 timestamp:buf duration:&v105 andFlags:&v106];
        v11 = v10;
        if (!v10)
        {
          v102 = VCPSignPostLog(v10);
          v103 = v102;
          if (v95 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
          {
            LOWORD(buf[0].value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v103, OS_SIGNPOST_INTERVAL_END, v95, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", buf, 2u);
          }

          goto LABEL_65;
        }

        v101 = *(a1 + 40);
        v23 = (a1 + 40);
        v100 = v101;
        if (*(v101 + 144))
        {
          goto LABEL_42;
        }

        *(v100 + 144) = 45;
        v25 = 1244;
LABEL_40:
        v39 = v23;
        goto LABEL_41;
      }

      v10 = MediaAnalysisLogLevel();
      if (v10 >= 3)
      {
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v10)
        {
          LODWORD(buf[0].value) = 138412290;
          *(&buf[0].value + 4) = @"[pipelineBlock2]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", buf, 0xCu);
        }
      }

      v29 = *(a1 + 40);
      v23 = (a1 + 40);
      v28 = v29;
      if (!*(v29 + 144))
      {
        *(v28 + 144) = 45;
        v11 = 4294967278;
        v25 = 1146;
        goto LABEL_40;
      }
    }

    else
    {
      v10 = MediaAnalysisLogLevel();
      if (v10 >= 3)
      {
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v10)
        {
          LODWORD(buf[0].value) = 138412290;
          *(&buf[0].value + 4) = @"[pipelineBlock2]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", buf, 0xCu);
        }
      }

      v27 = *(a1 + 40);
      v23 = (a1 + 40);
      v26 = v27;
      if (!*(v27 + 144))
      {
        *(v26 + 144) = 45;
        v11 = 4294967278;
        v25 = 1144;
        goto LABEL_40;
      }
    }

    v11 = 4294967278;
    goto LABEL_42;
  }

  v11 = 4294967168;
LABEL_42:
  v40 = VCPSignPostLog(v10);
  v41 = v40;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    LOWORD(buf[0].value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v41, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock2", "", buf, 2u);
  }

  return v11;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_727(void *a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock3", "", &buf, 2u);
  }

  v33 = 0;
  v10 = VCPSignPostLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = VCPSignPostLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v36.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", &v36, 2u);
  }

  v15 = (*(a1[6] + 16))();
  if (v15)
  {
    v16 = 4294967168;
    goto LABEL_29;
  }

  if (v3)
  {
    v17 = [v3 frameSampleBuffer];
    v18 = v17;
    if (v17)
    {
      CMSampleBufferGetPresentationTimeStamp(&v36, v17);
      buf = v36;
      CMSampleBufferGetDuration(&v36, v18);
      v34 = v36;
      ImageBuffer = CMSampleBufferGetImageBuffer(v18);
      v33 = [v3 frameFlags];
      v20 = a1[5];
      v36 = buf;
      v32 = v34;
      v15 = [v20 analyzeFrame:ImageBuffer withTimestamp:&v36 andDuration:&v32 flags:&v33];
      v16 = v15;
      if (v15)
      {
        v22 = a1[4];
        v21 = a1 + 4;
        v23 = (v22 + 144);
        if (*(v22 + 144))
        {
          goto LABEL_29;
        }

        v24 = 1284;
LABEL_24:
        *v23 = 45;
        *(*v21 + 152) = v24;
        goto LABEL_29;
      }

      v27 = VCPSignPostLog(v15);
      v28 = v27;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        LOWORD(v36.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v11, "VCPMovieAnalyzer_Video_VCPVideoStabilizerPixel", "", &v36, 2u);
      }

      v15 = [v3 setFrameFlags:v33];
      v16 = 0;
    }

    else
    {
      v15 = MediaAnalysisLogLevel();
      if (v15 >= 3)
      {
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v15)
        {
          LODWORD(v36.value) = 138412290;
          *(&v36.value + 4) = @"[pipelineBlock3]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v36, 0xCu);
        }
      }

      v26 = a1[4];
      v21 = a1 + 4;
      v23 = (v26 + 144);
      v16 = 4294967278;
      if (!*(v26 + 144))
      {
        v24 = 1273;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v15 = MediaAnalysisLogLevel();
    if (v15 >= 3)
    {
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v15)
      {
        LODWORD(v36.value) = 138412290;
        *(&v36.value + 4) = @"[pipelineBlock3]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v36, 0xCu);
      }
    }

    v25 = a1[4];
    v21 = a1 + 4;
    v23 = (v25 + 144);
    v16 = 4294967278;
    if (!*(v25 + 144))
    {
      v24 = 1271;
      goto LABEL_24;
    }
  }

LABEL_29:
  v29 = VCPSignPostLog(v15);
  v30 = v29;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    LOWORD(v36.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock3", "", &v36, 2u);
  }

  return v16;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_732(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock4", "", &buf, 2u);
  }

  v35 = 0;
  v9 = (*(*(a1 + 48) + 16))();
  if ((v9 & 1) == 0)
  {
    if (v3)
    {
      v11 = [v3 frameSampleBuffer];
      v12 = v11;
      if (v11)
      {
        CMSampleBufferGetPresentationTimeStamp(&v38, v11);
        buf = v38;
        CMSampleBufferGetDuration(&v38, v12);
        v36 = v38;
        ImageBuffer = CMSampleBufferGetImageBuffer(v12);
        v35 = [v3 frameFlags];
        v14 = [*(a1 + 40) processAborted];
        if ((v14 & 1) == 0)
        {
          v15 = VCPSignPostLog(v14);
          v16 = os_signpost_id_generate(v15);

          v18 = VCPSignPostLog(v17);
          v19 = v18;
          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
          {
            LOWORD(v38.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", &v38, 2u);
          }

          v20 = *(a1 + 40);
          v38 = buf;
          v34 = v36;
          v9 = [v20 analyzeFrame:ImageBuffer withTimestamp:&v38 andDuration:&v34 flags:&v35];
          v10 = v9;
          v22 = a1 + 32;
          v21 = *(a1 + 32);
          if (v9)
          {
            if (*(v21 + 144))
            {
              goto LABEL_37;
            }

            *(v21 + 144) = 51;
            v23 = 1323;
LABEL_27:
            *(*v22 + 152) = v23;
            goto LABEL_37;
          }

          if (*(v21 + 8) == 0x4000000000 && (v9 = [*(a1 + 40) processAborted], v9))
          {
            if (!*(*v22 + 144))
            {
              *(*v22 + 144) = 51;
              *(*v22 + 152) = 1325;
            }
          }

          else
          {
            v29 = VCPSignPostLog(v9);
            v30 = v29;
            if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
            {
              LOWORD(v38.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v16, "VCPMovieAnalyzer_Video_VCPSettlingEffectAnalyzer", "", &v38, 2u);
            }
          }
        }

        v9 = [v3 setFrameFlags:v35];
        v10 = 0;
        goto LABEL_37;
      }

      v9 = MediaAnalysisLogLevel();
      if (v9 >= 3)
      {
        v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v9)
        {
          LODWORD(v38.value) = 138412290;
          *(&v38.value + 4) = @"[pipelineBlock4]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v38, 0xCu);
        }
      }

      v28 = *(a1 + 32);
      v25 = a1 + 32;
      v27 = v28;
      if (*(v28 + 144))
      {
LABEL_24:
        v10 = 4294967278;
        goto LABEL_37;
      }

      *(v27 + 144) = 45;
      v10 = 4294967278;
      v23 = 1310;
    }

    else
    {
      v9 = MediaAnalysisLogLevel();
      if (v9 >= 3)
      {
        v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v9)
        {
          LODWORD(v38.value) = 138412290;
          *(&v38.value + 4) = @"[pipelineBlock4]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v38, 0xCu);
        }
      }

      v26 = *(a1 + 32);
      v25 = a1 + 32;
      v24 = v26;
      if (*(v26 + 144))
      {
        goto LABEL_24;
      }

      *(v24 + 144) = 45;
      v10 = 4294967278;
      v23 = 1308;
    }

    v22 = v25;
    goto LABEL_27;
  }

  v10 = 4294967168;
LABEL_37:
  v31 = VCPSignPostLog(v9);
  v32 = v31;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    LOWORD(v38.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock4", "", &v38, 2u);
  }

  return v10;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_737(void *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock5", "", &buf, 2u);
  }

  v32 = 0;
  v10 = VCPSignPostLog(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = VCPSignPostLog(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v35.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", &v35, 2u);
  }

  v15 = (*(a1[6] + 16))();
  if (v15)
  {
    v16 = 4294967168;
    goto LABEL_29;
  }

  if (v3)
  {
    v17 = [v3 frameSampleBuffer];
    v18 = v17;
    if (v17)
    {
      CMSampleBufferGetPresentationTimeStamp(&v35, v17);
      buf = v35;
      CMSampleBufferGetDuration(&v35, v18);
      v33 = v35;
      CMSampleBufferGetImageBuffer(v18);
      v32 = [v3 frameFlags];
      v19 = a1[5];
      v35 = buf;
      v31 = v33;
      v15 = [v19 analyzeFrameWithSampleBuffer:v18 timestamp:&v35 duration:&v31 andFlags:&v32];
      v16 = v15;
      if (v15)
      {
        v21 = a1[4];
        v20 = a1 + 4;
        v22 = (v21 + 144);
        if (*(v21 + 144))
        {
          goto LABEL_29;
        }

        v23 = 1364;
LABEL_24:
        *v22 = 45;
        *(*v20 + 152) = v23;
        goto LABEL_29;
      }

      v26 = VCPSignPostLog(v15);
      v27 = v26;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        LOWORD(v35.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v11, "VCPMovieAnalyzer_Video_MADVideoSafetyClassifier", "", &v35, 2u);
      }

      v15 = [v3 setFrameFlags:v32];
      v16 = 0;
    }

    else
    {
      v15 = MediaAnalysisLogLevel();
      if (v15 >= 3)
      {
        v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v15)
        {
          LODWORD(v35.value) = 138412290;
          *(&v35.value + 4) = @"[pipelineBlock5]";
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v35, 0xCu);
        }
      }

      v25 = a1[4];
      v20 = a1 + 4;
      v22 = (v25 + 144);
      v16 = 4294967278;
      if (!*(v25 + 144))
      {
        v23 = 1353;
        goto LABEL_24;
      }
    }
  }

  else
  {
    v15 = MediaAnalysisLogLevel();
    if (v15 >= 3)
    {
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v15)
      {
        LODWORD(v35.value) = 138412290;
        *(&v35.value + 4) = @"[pipelineBlock5]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v35, 0xCu);
      }
    }

    v24 = a1[4];
    v20 = a1 + 4;
    v22 = (v24 + 144);
    v16 = 4294967278;
    if (!*(v24 + 144))
    {
      v23 = 1351;
      goto LABEL_24;
    }
  }

LABEL_29:
  v28 = VCPSignPostLog(v15);
  v29 = v28;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    LOWORD(v35.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock5", "", &v35, 2u);
  }

  return v16;
}

uint64_t __74__VCPMovieAnalyzer_analyzeVideoSegment_timerange_forAnalysisTypes_cancel___block_invoke_742(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = VCPSignPostLog(v3);
  v5 = os_signpost_id_generate(v4);

  v7 = VCPSignPostLog(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock6", "", &buf, 2u);
  }

  v35 = 0;
  v9 = (*(*(a1 + 48) + 16))();
  if (v9)
  {
    v10 = 4294967168;
    goto LABEL_36;
  }

  if (v3)
  {
    v11 = [v3 frameSampleBuffer];
    v12 = v11;
    if (v11)
    {
      CMSampleBufferGetPresentationTimeStamp(&v38, v11);
      buf = v38;
      CMSampleBufferGetDuration(&v38, v12);
      v36 = v38;
      ImageBuffer = CMSampleBufferGetImageBuffer(v12);
      v35 = [v3 frameFlags];
      v14 = [*(a1 + 40) processAborted];
      if ((v14 & 1) == 0)
      {
        v15 = VCPSignPostLog(v14);
        v16 = os_signpost_id_generate(v15);

        v18 = VCPSignPostLog(v17);
        v19 = v18;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          LOWORD(v38.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", &v38, 2u);
        }

        v20 = *(a1 + 40);
        v38 = buf;
        v34 = v36;
        v9 = [v20 analyzeFrame:ImageBuffer withTimestamp:&v38 andDuration:&v34 flags:&v35];
        v10 = v9;
        v22 = a1 + 32;
        v21 = *(a1 + 32);
        if (v9)
        {
          v24 = *(v21 + 144);
          v23 = (v21 + 144);
          if (v24)
          {
            goto LABEL_36;
          }

          v25 = 1404;
LABEL_26:
          *v23 = 45;
          *(*v22 + 152) = v25;
          goto LABEL_36;
        }

        if (*(v21 + 8) == 0x20000000 && (v9 = [*(a1 + 40) processAborted], v9))
        {
          if (!*(*v22 + 144))
          {
            *(*v22 + 144) = 45;
            *(*v22 + 152) = 1406;
          }
        }

        else
        {
          v29 = VCPSignPostLog(v9);
          v30 = v29;
          if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
          {
            LOWORD(v38.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v16, "VCPMovieAnalyzer_Video_VCPVideoInterpolator", "", &v38, 2u);
          }
        }
      }

      v9 = [v3 setFrameFlags:v35];
      v10 = 0;
      goto LABEL_36;
    }

    v9 = MediaAnalysisLogLevel();
    if (v9 >= 3)
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        LODWORD(v38.value) = 138412290;
        *(&v38.value + 4) = @"[pipelineBlock6]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid frameSampleBuffer.", &v38, 0xCu);
      }
    }

    v28 = *(a1 + 32);
    v26 = a1 + 32;
    v23 = (v28 + 144);
    v10 = 4294967278;
    if (!*(v28 + 144))
    {
      v25 = 1391;
      goto LABEL_25;
    }
  }

  else
  {
    v9 = MediaAnalysisLogLevel();
    if (v9 >= 3)
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        LODWORD(v38.value) = 138412290;
        *(&v38.value + 4) = @"[pipelineBlock6]";
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%@ Invalid currFrameResource.", &v38, 0xCu);
      }
    }

    v27 = *(a1 + 32);
    v26 = a1 + 32;
    v23 = (v27 + 144);
    v10 = 4294967278;
    if (!*(v27 + 144))
    {
      v25 = 1389;
LABEL_25:
      v22 = v26;
      goto LABEL_26;
    }
  }

LABEL_36:
  v31 = VCPSignPostLog(v9);
  v32 = v31;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    LOWORD(v38.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v5, "VCPMovieAnalyzer_AnalyzeVideoSegment_FramePipelineBlock6", "", &v38, 2u);
  }

  return v10;
}

- (int)postProcessAnimalResults:(id)results
{
  v76 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v3 = [resultsCopy objectForKeyedSubscript:?];
  if (v3)
  {
    v4 = [resultsCopy objectForKeyedSubscript:@"AnimalPrintResults"];
    v5 = [v4 count];

    if (v5 >= 6)
    {
      [MEMORY[0x1E695DF90] dictionary];
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v57 = v70 = 0u;
      v6 = [resultsCopy objectForKeyedSubscript:?];
      obj = v6;
      v7 = [v6 countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v7)
      {
        v8 = *v70;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v70 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = [*(*(&v69 + 1) + 8 * i) objectForKeyedSubscript:@"attributes"];
            v11 = v10;
            if (v10)
            {
              v12 = [v10 objectForKeyedSubscript:@"faceBounds"];
              v77 = NSRectFromString(v12);
              width = v77.size.width;
              height = v77.size.height;

              v15 = [v11 objectForKeyedSubscript:@"animalId"];
              integerValue = [v15 integerValue];

              allKeys = [v57 allKeys];
              v18 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
              v19 = [allKeys containsObject:v18];

              v20 = MEMORY[0x1E696AD98];
              if (v19)
              {
                height = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
                v22 = [v57 objectForKeyedSubscript:height];
                [v22 floatValue];
                v24 = width * height;
                if (*&v23 < v24)
                {
                  *&v23 = width * height;
                }

                v25 = [v20 numberWithFloat:v23];
                v26 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
                [v57 setObject:v25 forKeyedSubscript:v26];
              }

              else
              {
                height = [MEMORY[0x1E696AD98] numberWithDouble:width * height];
                v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
                [v57 setObject:height forKeyedSubscript:v22];
              }
            }
          }

          v6 = obj;
          v7 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v7);
      }

      allKeys2 = [v57 allKeys];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __45__VCPMovieAnalyzer_postProcessAnimalResults___block_invoke;
      v67[3] = &unk_1E8350400;
      v49 = v57;
      v50 = allKeys2;
      v68 = v49;
      v51 = [allKeys2 sortedArrayUsingComparator:v67];
      if ([v51 count] > 5)
      {
        v56 = [v51 subarrayWithRange:{0, 5}];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Animal post processing - unexpected animalPrint vs animalDetection results", buf, 2u);
        }

        v56 = v51;
      }

      obja = [MEMORY[0x1E695DF70] array];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v28 = [resultsCopy objectForKeyedSubscript:@"AnimalPrintResults"];
      v29 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v29)
      {
        v30 = *v63;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v63 != v30)
            {
              objc_enumerationMutation(v28);
            }

            v32 = *(*(&v62 + 1) + 8 * j);
            v33 = [v32 objectForKeyedSubscript:@"attributes"];
            v34 = v33;
            if (v33)
            {
              v35 = [v33 objectForKeyedSubscript:@"animalId"];
              integerValue2 = [v35 integerValue];

              v37 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue2];
              LODWORD(v35) = [v56 containsObject:v37];

              if (v35)
              {
                [obja addObject:v32];
              }
            }
          }

          v29 = [v28 countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v29);
      }

      [resultsCopy setObject:obja forKeyedSubscript:@"AnimalPrintResults"];
      array = [MEMORY[0x1E695DF70] array];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v38 = [resultsCopy objectForKeyedSubscript:@"AnimalResults"];
      v39 = [v38 countByEnumeratingWithState:&v58 objects:v73 count:16];
      if (v39)
      {
        v40 = *v59;
        do
        {
          for (k = 0; k != v39; ++k)
          {
            if (*v59 != v40)
            {
              objc_enumerationMutation(v38);
            }

            v42 = *(*(&v58 + 1) + 8 * k);
            v43 = [v42 objectForKeyedSubscript:@"attributes"];
            v44 = v43;
            if (v43)
            {
              v45 = [v43 objectForKeyedSubscript:@"animalId"];
              integerValue3 = [v45 integerValue];

              v47 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue3];
              LODWORD(integerValue3) = [v56 containsObject:v47];

              if (integerValue3)
              {
                [array addObject:v42];
              }
            }
          }

          v39 = [v38 countByEnumeratingWithState:&v58 objects:v73 count:16];
        }

        while (v39);
      }

      [resultsCopy setObject:array forKeyedSubscript:@"AnimalResults"];
    }
  }

  return 0;
}

uint64_t __45__VCPMovieAnalyzer_postProcessAnimalResults___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v6 floatValue];
  v8 = v7;

  v9 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v9 floatValue];
  v11 = v10;

  if (v8 >= v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = -1;
  }

  if (v8 > v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (int)postProcessAutoPlayable:(id)playable
{
  v25[1] = *MEMORY[0x1E69E9840];
  playableCopy = playable;
  v4 = [playableCopy objectForKeyedSubscript:@"MovieSummaryResults"];

  if (v4)
  {
    v5 = [playableCopy objectForKeyedSubscript:@"MovieSummaryResults"];
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 mutableCopy];

    v8 = [v7 objectForKeyedSubscript:@"flags"];
    if (([v8 intValue] & 0x80000) != 0)
    {
      v9 = [v7 objectForKeyedSubscript:@"quality"];
      [v9 floatValue];
      v11 = v10;

      if (v11 <= 0.5)
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = [v7 objectForKeyedSubscript:@"flags"];
        v14 = [v12 numberWithUnsignedLongLong:{(objc_msgSend(v13, "intValue") & 0xFFF7FFFF)}];
        [v7 setObject:v14 forKeyedSubscript:@"flags"];

        v25[0] = v7;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
        [playableCopy setObject:v15 forKeyedSubscript:@"MovieSummaryResults"];
      }
    }

    else
    {
    }

    if (!+[VCPMovieAnalyzer isHeuristicStickerScoreEnabled])
    {
      v16 = [playableCopy objectForKeyedSubscript:@"AnimatedStickerResults"];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [playableCopy objectForKeyedSubscript:@"AnimatedStickerResults"];
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v19 mutableCopy];

        v21 = [v7 objectForKeyedSubscript:@"quality"];
        [v20 setObject:v21 forKeyedSubscript:@"quality"];

        v24 = v20;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
        [playableCopy setObject:v22 forKeyedSubscript:@"AnimatedStickerResults"];
      }
    }
  }

  return 0;
}

- (int)analyzeVideoTrack:(id)track start:(id *)start forAnalysisTypes:(unint64_t)types cancel:(id)cancel
{
  v60 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  cancelCopy = cancel;
  v46 = cancelCopy;
  if (trackCopy)
  {
    objc_msgSend_timeRange(trackCopy);
  }

  else
  {
    memset(range, 0, 48);
  }

  *time = *&start->var0;
  *&time[16] = start->var3;
  if (!CMTimeRangeContainsTime(range, time))
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63120;
    }

    v13 = -50;
    goto LABEL_65;
  }

  selfCopy = self;
  {
    CMTimeMake([VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration, 300, 1);
  }

  memset(&time[48], 0, 24);
  if (trackCopy)
  {
    objc_msgSend_vcp_endTime(trackCopy);
    p_maxAnalysisLength = &self->_maxAnalysisLength;
    maxAnalysisLength = self->_maxAnalysisLength;
    if (maxAnalysisLength <= 0.0)
    {
      goto LABEL_16;
    }

    objc_msgSend_vcp_endTime(trackCopy);
  }

  else
  {
    p_maxAnalysisLength = &self->_maxAnalysisLength;
    maxAnalysisLength = self->_maxAnalysisLength;
    if (maxAnalysisLength <= 0.0)
    {
      goto LABEL_16;
    }

    memset(range, 0, 24);
  }

  if (CMTimeGetSeconds(range) > maxAnalysisLength)
  {
    CMTimeMakeWithSeconds(range, *p_maxAnalysisLength, 600);
    *&time[48] = *range;
  }

LABEL_16:
  v48 = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaSegmentResults"];
  if (trackCopy)
  {
    objc_msgSend_timeRange(trackCopy);
  }

  else
  {
    memset(range, 0, 48);
  }

  *time = *&range[24];
  *&time[16] = *&range[40];
  time2[0] = *[VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration;
  if (CMTimeCompare(time, time2) < 1 && [v48 count] < 2)
  {
    v41 = 0;
    typesCopy = types;
  }

  else
  {
    typesCopy = types & 0xFFFFFBFFFFFFFFFFLL;
    v41 = 1;
  }

  memset(time, 0, 48);
  if ([v48 count] < 2)
  {
    v15 = *(MEMORY[0x1E6960C98] + 16);
    *time = *MEMORY[0x1E6960C98];
    *&time[16] = v15;
    *&time[32] = *(MEMORY[0x1E6960C98] + 32);
  }

  else
  {
    v14 = [v48 objectAtIndexedSubscript:0];
    CMTimeRangeMakeFromDictionary(time, v14);
  }

  v43 = 0;
  while (1)
  {
    *range = *&start->var0;
    *&range[16] = start->var3;
    time2[0] = *&time[48];
    if ((CMTimeCompare(range, time2) & 0x80000000) == 0)
    {
      break;
    }

    memset(&time2[1], 0, sizeof(CMTime));
    time2[0] = *start;
    *range = *&time[48];
    *&rhs.start.value = *&start->var0;
    rhs.start.epoch = start->var3;
    CMTimeSubtract(&v51.start, range, &rhs.start);
    *range = *&v51.start.value;
    *&range[16] = v51.start.epoch;
    *&rhs.start.value = *[VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration;
    rhs.start.epoch = *&[VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration[16];
    v16 = CMTimeCompare(range, &rhs.start);
    v17 = &v51;
    if (v16 >= 0)
    {
      v17 = [VCPMovieAnalyzer analyzeVideoTrack:start:forAnalysisTypes:cancel:]::kMaxSegmentDuration;
    }

    time2[1] = v17->start;
    if ((time[12] & 1) != 0 && (time[36] & 1) != 0 && !*&time[40] && (*&time[24] & 0x8000000000000000) == 0)
    {
      *&rhs.start.value = *&time2[0].value;
      *&rhs.start.epoch = *&time2[0].epoch;
      *&rhs.duration.timescale = *&time2[1].timescale;
      v51 = *time;
      CMTimeRangeGetIntersection(range, &rhs, &v51);
      *&time2[0].value = *range;
      *&time2[0].epoch = *&range[16];
      *&time2[1].timescale = *&range[32];
      CMTimeRangeGetEnd(&v51.start, range);
      *range = *time;
      CMTimeRangeGetEnd(&v50, range);
      *range = *&v51.start.value;
      *&range[16] = v51.start.epoch;
      rhs.start = v50;
      if (!CMTimeCompare(range, &rhs.start))
      {
        if ([v48 count] > ++v43)
        {
          v19 = [v48 objectAtIndexedSubscript:?];
          CMTimeRangeMakeFromDictionary(range, v19);
          *time = *range;
        }

        else
        {
          v20 = *(MEMORY[0x1E6960C98] + 16);
          *time = *MEMORY[0x1E6960C98];
          *&time[16] = v20;
          *&time[32] = *(MEMORY[0x1E6960C98] + 32);
        }
      }
    }

    memset(&v50, 0, sizeof(v50));
    *range = *&time2[0].value;
    *&range[16] = *&time2[0].epoch;
    *&range[32] = *&time2[1].timescale;
    CMTimeRangeGetEnd(&v50, range);
    if (MediaAnalysisLogLevel() >= 7)
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        phAsset = self->_phAsset;
        if (phAsset)
        {
          localIdentifier = [(PHAsset *)self->_phAsset localIdentifier];
          v47 = localIdentifier;
        }

        else
        {
          localIdentifier = [(VCPAsset *)self->_asset mainFileURL];
          v45 = localIdentifier;
        }

        v25 = trackCopy;
        trackID = [trackCopy trackID];
        value = time2[0].value;
        timescale = time2[0].timescale;
        rhs.start = time2[0];
        Seconds = CMTimeGetSeconds(&rhs.start);
        v30 = v50.value;
        v31 = v50.timescale;
        rhs.start = v50;
        v32 = CMTimeGetSeconds(&rhs.start);
        *range = 138414082;
        *&range[4] = localIdentifier;
        *&range[12] = 1024;
        *&range[14] = trackID;
        *&range[18] = 2048;
        *&range[20] = value;
        *&range[28] = 1024;
        *&range[30] = timescale;
        *&range[34] = 2048;
        *&range[36] = Seconds;
        *&range[44] = 2048;
        *&range[46] = v30;
        v56 = 1024;
        v57 = v31;
        v58 = 2048;
        v59 = v32;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MovieAnalyzer][%@] Analyzing Video Segment - Track ID: %d Start: %lld/%d (%0.3fs) End: %lld/%d (%0.3fs)", range, 0x46u);
        v33 = v47;
        if (!phAsset)
        {
          v33 = v45;
        }

        cancelCopy = v46;
        self = selfCopy;
        trackCopy = v25;
      }
    }

    if (cancelCopy && (cancelCopy[2](cancelCopy) & 1) != 0)
    {
      v13 = -128;
      goto LABEL_64;
    }

    v13 = [(VCPMovieAnalyzer *)self analyzeVideoSegment:trackCopy timerange:time2 forAnalysisTypes:typesCopy cancel:cancelCopy];
    if (v13)
    {
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F63110;
      }

      goto LABEL_64;
    }

    *&rhs.start.value = *&start->var0;
    rhs.start.epoch = start->var3;
    v51.start = time2[1];
    CMTimeAdd(range, &rhs.start, &v51.start);
    *&start->var0 = *range;
    v34 = *&range[16];
    start->var3 = *&range[16];
    analysis = self->_analysis;
    *range = *&start->var0;
    *&range[16] = v34;
    [(NSMutableDictionary *)analysis vcp_setSyncPoint:range];
  }

  v36 = v41 ^ 1;
  if ((types & 0x40000000000) == 0)
  {
    v36 = 1;
  }

  if ((v36 & 1) == 0)
  {
    mainFileURL = [(VCPAsset *)self->_asset mainFileURL];
    localIdentifier2 = [(VCPAsset *)self->_asset localIdentifier];
    if (trackCopy)
    {
      objc_msgSend_timeRange(trackCopy);
    }

    else
    {
      memset(range, 0, 48);
    }

    v39 = [MADVideoSafetyClassifier analyzeVideoAssetOnDemandWithURL:mainFileURL localIdentifier:localIdentifier2 timeRange:range cancelBlock:cancelCopy andProgressHandler:0];

    [(NSMutableDictionary *)self->_analysis vcp_appendResults:v39];
  }

  if (([objc_opt_class() persistAudioEmbedding] & 1) == 0)
  {
    [(NSMutableDictionary *)self->_analysis vcp_removeResultForKey:@"AudioEmbeddingResults"];
  }

  v13 = 0;
LABEL_64:

LABEL_65:
  return v13;
}

- (id)analyzeAsset:(id)asset streamed:(BOOL *)streamed
{
  v242[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v8 = assetCopy;
  if (streamed)
  {
    *streamed = 0;
  }

  if (self->_status != 1)
  {
    goto LABEL_166;
  }

  v9 = VCPSignPostLog(assetCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = VCPSignPostLog(v11);
  v13 = v12;
  spid = v10;
  v199 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPMovieAnalyzer", "", &buf, 2u);
  }

  requestedAnalyses = self->_requestedAnalyses;
  v15 = +[VCPAudioAnalyzer supportedAnalysisTypes];
  if (v8 && (v8[2](v8) & 1) != 0)
  {
LABEL_154:
    self->_status = 4;
    p_analysis = &self->_analysis;
    analysis = self->_analysis;
    if (analysis)
    {
      isMovie = objc_msgSend_vcp_syncPoint(analysis);
      if (buf.start.flags)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_158;
  }

  v197 = objc_autoreleasePoolPush();
  movie = [(VCPAsset *)self->_asset movie];
  if (!movie)
  {
    allowStreaming = [(VCPMovieAnalyzer *)self allowStreaming];
    if (!allowStreaming)
    {
      goto LABEL_28;
    }

    v24 = VCPSignPostLog(allowStreaming);
    v25 = os_signpost_id_generate(v24);

    v27 = VCPSignPostLog(v26);
    v28 = v27;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VCPMovieAnalyzer_ResourceDownload", "", &buf, 2u);
    }

    [(NSMutableDictionary *)self->_analysis vcp_addFlags:0x20000000];
    if (streamed)
    {
      *streamed = 1;
    }

    v29 = [(VCPAsset *)self->_asset streamedMovie:[(VCPMovieAnalyzer *)self requiresOnDemandDownload]];
    movie = v29;
    if (v29)
    {
      v29 = [(VCPMovieAnalyzer *)self loadPropertiesForAsset:v29];
    }

    v30 = VCPSignPostLog(v29);
    audioGroup = v30;
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      LOWORD(buf.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_END, v25, "VCPMovieAnalyzer_ResourceDownload", "", &buf, 2u);
    }

    if (!movie)
    {
LABEL_28:
      movie = 0;
      if (!self->_errorCode)
      {
        *&self->_errorCode = xmmword_1C9F631B0;
      }

      goto LABEL_41;
    }
  }

  if (![(VCPAsset *)self->_asset isMovie]|| (objc_msgSend_duration(self->_asset), v17 >= 1.0))
  {
    if (![movie vcp_isMontage])
    {
      if ([(VCPAsset *)self->_asset isMovie])
      {
        objc_msgSend_duration(self->_asset);
        if (v31 < 3.0)
        {
          v32 = self->_requestedAnalyses;
          if ((v32 & 0x8000000000000) != 0)
          {
            self->_requestedAnalyses = v32 & 0xFFF7FFFFFFFFFFFFLL;
            [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x8000000000000];
          }
        }
      }

      v33 = v15 & requestedAnalyses;
      if ((v15 & requestedAnalyses) == 0)
      {
        v37 = 0;
        goto LABEL_66;
      }

      context = objc_autoreleasePoolPush();
      v34 = MediaAnalysisLogLevel();
      if (v34 >= 6)
      {
        v35 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          if (self->_phAsset)
          {
            [(PHAsset *)self->_phAsset localIdentifier];
          }

          else
          {
            [(VCPAsset *)self->_asset mainFileURL];
          }
          v38 = ;
          v39 = MediaAnalysisTypeShortDescription(v33);
          LODWORD(buf.start.value) = 138412546;
          *(&buf.start.value + 4) = v38;
          LOWORD(buf.start.flags) = 2112;
          *(&buf.start.flags + 2) = v39;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MovieAnalyzer][%@] Analyzing audio types %@", &buf, 0x16u);
        }
      }

      v40 = VCPSignPostLog(v34);
      v41 = os_signpost_id_generate(v40);

      v43 = VCPSignPostLog(v42);
      audioGroup = v43;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, v41, "VCPMovieAnalyzer_Audio", "", &buf, 2u);
      }

      v44 = [[VCPAudioAnalyzer alloc] initWithAnalysisTypes:v33 forStreaming:0 andResultHandler:0];
      if (!v44)
      {
        v46 = 0;
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63140;
        }

        v22 = 4;
        _waitForAsyncAudioResults = -18;
        goto LABEL_64;
      }

      if (+[VCPMovieAnalyzer shouldProcessAudioAsync])
      {
        audioQueue = self->_audioQueue;
        audioGroup = self->_audioGroup;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42__VCPMovieAnalyzer_analyzeAsset_streamed___block_invoke;
        block[3] = &unk_1E8350428;
        block[4] = self;
        v204 = v44;
        v205 = movie;
        v206 = v8;
        v207 = v33;
        v208 = v41;
        v209 = 0;
        dispatch_group_async(audioGroup, audioQueue, block);
      }

      else
      {
        v202 = 0;
        _waitForAsyncAudioResults = [(VCPAudioAnalyzer *)v44 analyzeAsset:movie cancel:v8 results:&v202];
        v47 = v202;
        audioGroup = v47;
        if (_waitForAsyncAudioResults)
        {
          if (!self->_errorCode)
          {
            *&self->_errorCode = xmmword_1C9F63130;
          }

          v46 = 0;
          v22 = 4;
          goto LABEL_64;
        }

        [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v47];
        v48 = VCPSignPostLog([(NSMutableDictionary *)self->_analysis vcp_addTypes:v33]);
        v49 = v48;
        if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_END, v41, "VCPMovieAnalyzer_Audio", "", &buf, 2u);
        }
      }

      _waitForAsyncAudioResults = 0;
      v22 = 0;
      v46 = 1;
LABEL_64:

      objc_autoreleasePoolPop(context);
      if ((v46 & 1) == 0)
      {
LABEL_127:
        v21 = 1;
        goto LABEL_128;
      }

      v37 = _waitForAsyncAudioResults;
LABEL_66:
      v50 = [(VCPMovieAnalyzer *)self performMetadataAnalysisOnAsset:movie withCancelBlock:v8];
      _waitForAsyncAudioResults = v50;
      if (v50)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F63150;
        }

        goto LABEL_126;
      }

      v51 = self->_requestedAnalyses;
      v191 = v37;
      if ((v51 & 0x4000010010000000) == 0)
      {
LABEL_178:
        if ((v51 & 0x82C636446D888) == 0)
        {
          v21 = 1;
          goto LABEL_192;
        }

        v126 = VCPSignPostLog(v50);
        v127 = os_signpost_id_generate(v126);

        v129 = VCPSignPostLog(v128);
        audioGroup = v129;
        if (v127 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v129))
        {
          LOWORD(buf.start.value) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, v127, "VCPMovieAnalyzer_Video", "", &buf, 2u);
        }

        v130 = [movie vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
        v131 = v130;
        if (v130)
        {
          [v130 naturalSize];
          v134 = *&v133;
          v135 = v132;
          if (v133 >= 1.0 && v132 >= 1.0)
          {
            [v131 nominalFrameRate];
            v21 = v136 < 25.0;
            memset(&start, 0, sizeof(start));
            v137 = self->_analysis;
            if (v137)
            {
              objc_msgSend_vcp_syncPoint(v137);
            }

            buf.start = start;
            *&time2.start.value = *MEMORY[0x1E6960C70];
            time2.start.epoch = *(MEMORY[0x1E6960C70] + 16);
            if (CMTimeCompare(&buf.start, &time2.start))
            {
              objc_msgSend_timeRange(v131);
              time2.start = start;
              started = CMTimeRangeContainsTime(&buf, &time2.start);
              if (!started)
              {
                _waitForAsyncAudioResults = -18;
                if (!self->_errorCode)
                {
                  v139 = 2090;
LABEL_224:
                  self->_errorCode = 45;
                  self->_errorLine = v139;
                  goto LABEL_225;
                }

                goto LABEL_225;
              }
            }

            else
            {
              started = objc_msgSend_vcp_startTime(v131);
              start = buf.start;
            }

            v149 = self->_requestedAnalyses;
            if ((v149 & 0x4024000000) != 0)
            {
              buf.start = start;
              started = [(VCPMovieAnalyzer *)self analyzeVideoTrack:v131 start:&buf forAnalysisTypes:v149 & 0x4024000000 cancel:v8];
              _waitForAsyncAudioResults = started;
              if (started)
              {
                if (!self->_errorCode)
                {
                  v139 = 2103;
                  goto LABEL_224;
                }

LABEL_225:

LABEL_226:
                v22 = 4;
                goto LABEL_128;
              }

              v149 = self->_requestedAnalyses;
            }

            if ((v149 & 0x82C234046D888) != 0)
            {
              buf.start = start;
              started = [(VCPMovieAnalyzer *)self analyzeVideoTrack:v131 start:&buf forAnalysisTypes:v149 & 0xFFFFFFBFDBFFFFFFLL cancel:v8];
              _waitForAsyncAudioResults = started;
              if (started)
              {
                if (!self->_errorCode)
                {
                  v139 = 2110;
                  goto LABEL_224;
                }

                goto LABEL_225;
              }

              v149 = self->_requestedAnalyses;
            }

            if ((v149 & 8) != 0)
            {
              started = [(NSMutableDictionary *)self->_analysis vcp_addTypes:12];
              v149 = self->_requestedAnalyses;
            }

            if ((v149 & 0x880) != 0)
            {
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:192];
              started = [(NSMutableDictionary *)self->_analysis vcp_addTypes:2048];
              v149 = self->_requestedAnalyses;
            }

            if ((v149 & 0x40000) != 0)
            {
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x40000];
              started = [(VCPAsset *)self->_asset isLivePhoto];
              if ((started & 1) == 0)
              {
                started = [(VCPMovieAnalyzer *)self generateKeyFrameResource:movie];
                _waitForAsyncAudioResults = started;
                if (started)
                {
                  if (self->_errorCode)
                  {
                    goto LABEL_225;
                  }

                  v139 = 2127;
                  goto LABEL_224;
                }
              }
            }

            v153 = self->_requestedAnalyses;
            if ((v153 & 0x8000000000000) != 0 && !self->_onDemand)
            {
              v164 = VCPSignPostLog(started);
              contextb = os_signpost_id_generate(v164);

              v166 = VCPSignPostLog(v165);
              audioGroup = v166;
              if ((contextb - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v166))
              {
                LOWORD(buf.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, contextb, "VCPMovieAnalyzer_GenerateAndPersistVideoThumbnailResources", "", &buf, 2u);
              }

              phAsset = self->_phAsset;
              if (!phAsset)
              {
                _waitForAsyncAudioResults = -18;
                if (self->_errorCode)
                {
                  goto LABEL_225;
                }

                v139 = 2133;
                goto LABEL_224;
              }

              vcp_results = [(NSMutableDictionary *)self->_analysis vcp_results];
              audioGroup = [vcp_results objectForKeyedSubscript:@"VideoThumbnailResults"];
              _waitForAsyncAudioResults = [(VCPMovieAnalyzer *)self generateAndPersistVideoThumbnailResources:movie forPHAsset:phAsset withResults:audioGroup cancelBlock:v8];

              if (_waitForAsyncAudioResults)
              {
                if (self->_errorCode)
                {
                  goto LABEL_225;
                }

                v139 = 2137;
                goto LABEL_224;
              }

              v180 = VCPSignPostLog(v168);
              v181 = v180;
              if ((contextb - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v180))
              {
                LOWORD(buf.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v181, OS_SIGNPOST_INTERVAL_END, contextb, "VCPMovieAnalyzer_GenerateAndPersistVideoThumbnailResources", "", &buf, 2u);
              }

              v153 = self->_requestedAnalyses;
            }

            v154 = VCPSignPostLog([(NSMutableDictionary *)self->_analysis vcp_addTypes:v153 & 0x82C617542D000]);
            audioGroup = v154;
            if (v127 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v154))
            {
              LOWORD(buf.start.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_END, v127, "VCPMovieAnalyzer_Video", "", &buf, 2u);
            }

            v37 = v191;
LABEL_192:
            _waitForAsyncAudioResults = [(VCPMovieAnalyzer *)self _waitForAsyncAudioResults];
            if (!_waitForAsyncAudioResults)
            {
              v22 = 0;
              _waitForAsyncAudioResults = v37;
              goto LABEL_128;
            }

            if (!self->_errorCode)
            {
              *&self->_errorCode = xmmword_1C9F631A0;
            }

            goto LABEL_226;
          }

          if (MediaAnalysisLogLevel() >= 3)
          {
            v147 = MEMORY[0x1E69E9C10];
            v148 = MEMORY[0x1E69E9C10];
            audioGroup = 16;
            if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.start.value) = 134218240;
              *(&buf.start.value + 4) = v134;
              LOWORD(buf.start.flags) = 2048;
              *(&buf.start.flags + 2) = v135;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "    Video track has invalid dimensions (%.f,%.f)", &buf, 0x16u);
            }
          }

          if (self->_errorCode)
          {
LABEL_208:

LABEL_41:
            v22 = 4;
            v21 = 1;
            _waitForAsyncAudioResults = -18;
            goto LABEL_128;
          }

          v146 = 2083;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v140 = MEMORY[0x1E69E9C10];
            v141 = MEMORY[0x1E69E9C10];
            audioGroup = 16;
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              localIdentifier = [(VCPAsset *)self->_asset localIdentifier];
              tracks = [movie tracks];
              v144 = [tracks count];
              tracks2 = [movie tracks];
              LODWORD(buf.start.value) = 138412802;
              *(&buf.start.value + 4) = localIdentifier;
              LOWORD(buf.start.flags) = 2048;
              *(&buf.start.flags + 2) = v144;
              HIWORD(buf.start.epoch) = 2112;
              buf.duration.value = tracks2;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  [%@] Asset does not have valid video track; all %lu tracks: %@", &buf, 0x20u);
            }
          }

          if (self->_errorCode)
          {
            goto LABEL_208;
          }

          v146 = 2078;
        }

        self->_errorCode = 45;
        self->_errorLine = v146;
        goto LABEL_208;
      }

      v52 = VCPSignPostLog(v50);
      v192 = os_signpost_id_generate(v52);

      v54 = VCPSignPostLog(v53);
      audioGroup = v54;
      if (v192 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_BEGIN, v192, "VCPMovieAnalyzer_Stabilization", "", &buf, 2u);
      }

      contexta = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaStabilizationResults"];
      if ((self->_requestedAnalyses & 0x10000000000) != 0)
      {
        audioGroup = @"LivePhotoKeyFrameTimestamp";
        v57 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
        v58 = v57 == 0;

        if (v58)
        {
          v56 = [(NSMutableDictionary *)self->_privateResults objectForKeyedSubscript:@"MetaStillImageHomographyResults"];
        }

        else
        {
          v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v241 = @"attributes";
          v240[0] = &unk_1F49BEF38;
          v239[0] = @"MetaStillImagePerspectiveTransformResults";
          v239[1] = @"MetaPresentationTimeResults";
          v60 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
          v240[1] = v60;
          audioGroup = [MEMORY[0x1E695DF20] dictionaryWithObjects:v240 forKeys:v239 count:2];
          v242[0] = audioGroup;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v242 forKeys:&v241 count:1];
          [v59 addObject:v61];

          v56 = v59;
        }

        v55 = [v56 count];
        if (!v55)
        {
          goto LABEL_93;
        }

        v55 = [contexta count];
      }

      else
      {
        v55 = [contexta count];
        v56 = 0;
      }

      if (v55)
      {
        v62 = [movie vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
        if (v62)
        {
          audioGroup = @"LivePhotoKeyFrameTimestamp";
          v63 = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
          if (v63)
          {
            objc_msgSend_timeRange(v62);
            CMTimeRangeGetEnd(&start, &buf);
            audioGroup = [(NSDictionary *)self->_options objectForKeyedSubscript:@"LivePhotoKeyFrameTimestamp"];
            CMTimeMakeFromDictionary(&v200, audioGroup);
            buf.start = start;
            time2.start = v200;
            v64 = CMTimeCompare(&buf.start, &time2.start);

            if (v64 < 0)
            {
              v236 = @"PathConstraintsStabilizationResults";
              v233 = @"attributes";
              v231 = @"settlingEffectStatus";
              v229 = @"settlingEffectLivePhotoKeyFrameTimeOutOfBoundFailure";
              v230 = MEMORY[0x1E695E118];
              v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v230 forKeys:&v229 count:1];
              v189 = v232;
              v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v232 forKeys:&v231 count:1];
              v234 = v120;
              v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v234 forKeys:&v233 count:1];
              v235 = v121;
              v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v235 count:1];
              v237 = v122;
              v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];

              [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v123];
              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
              v124 = self->_requestedAnalyses;
              if ((v124 & 0x4000000000) != 0)
              {
                self->_requestedAnalyses = v124 & 0xFFFFFFBFFFFFFFFFLL;
              }

              [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];

              goto LABEL_173;
            }
          }

          [v62 vcp_fullFrameSize];
          v67 = v66;
          v68 = v65;
          if (v66 >= 1.0 && v65 >= 1.0)
          {
            [v62 vcp_cleanApertureRect];
            x = v244.origin.x;
            y = v244.origin.y;
            width = v244.size.width;
            height = v244.size.height;
            if (CGRectIsEmpty(v244))
            {
              if (MediaAnalysisLogLevel() >= 3)
              {
                v73 = MEMORY[0x1E69E9C10];
                v74 = MEMORY[0x1E69E9C10];
                audioGroup = 16;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.start.value) = 0;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "    Video track has invalid clean aperture rect", &buf, 2u);
                }
              }

              if (self->_errorCode)
              {
                goto LABEL_124;
              }

              v75 = xmmword_1C9F63170;
              goto LABEL_123;
            }

            audioGroup = [contexta objectForKeyedSubscript:@"MetaHomographyDimensionResults"];
            v150 = NSSizeFromString(audioGroup);

            if (v150.width == *MEMORY[0x1E695F060] && v150.height == *(MEMORY[0x1E695F060] + 8))
            {
              if (self->_errorCode)
              {
                goto LABEL_124;
              }

              v75 = xmmword_1C9F63160;
              goto LABEL_123;
            }

            memset(&buf, 0, sizeof(buf));
            if ((self->_requestedAnalyses & 0x10000000000) != 0)
            {
              SettlingEffectTimeRange_withOptions = objc_msgSend_getSettlingEffectTimeRange_withOptions_(VCPSettlingEffectAnalyzer);
              if ((self->_requestedAnalyses & 0x10000000000) != 0 && ((buf.start.flags & 1) == 0 || (buf.duration.flags & 1) == 0 || buf.duration.epoch || buf.duration.value < 0))
              {
                if (MediaAnalysisLogLevel() >= 7)
                {
                  v169 = MEMORY[0x1E69E9C10];
                  v170 = MEMORY[0x1E69E9C10];
                  if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
                  {
                    localIdentifier2 = [(VCPAsset *)self->_asset localIdentifier];
                    LODWORD(time2.start.value) = 138412290;
                    *(&time2.start.value + 4) = localIdentifier2;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset has invalid time range for path constraint stabilization", &time2, 0xCu);
                  }
                }

                v227 = @"PathConstraintsStabilizationResults";
                v224 = @"attributes";
                v222 = @"settlingEffectStatus";
                v220 = @"settlingEffectInvalidTimeRange";
                v221 = MEMORY[0x1E695E118];
                v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
                v223 = v172;
                v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
                v225 = v173;
                v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                v226 = v174;
                v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v226 count:1];
                v228 = v175;
                v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v228 forKeys:&v227 count:1];

                [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v161];
                [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
                v176 = self->_requestedAnalyses;
                if ((v176 & 0x4000000000) != 0)
                {
                  self->_requestedAnalyses = v176 & 0xFFFFFFBFFFFFFFFFLL;
                }

                [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];
LABEL_294:

                goto LABEL_173;
              }
            }

            else
            {
              v152 = *(MEMORY[0x1E6960C98] + 16);
              *&buf.start.value = *MEMORY[0x1E6960C98];
              *&buf.start.epoch = v152;
              *&buf.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
            }

            v155 = VCPSignPostLog(SettlingEffectTimeRange_withOptions);
            v190 = os_signpost_id_generate(v155);

            v157 = VCPSignPostLog(v156);
            v158 = v157;
            v188 = v190 - 1;
            if (v190 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v157))
            {
              LOWORD(time2.start.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v158, OS_SIGNPOST_INTERVAL_BEGIN, v190, "VCPMovieAnalyzer_Stabilization_VCPVideoStabilizerGyro", "", &time2, 2u);
            }

            v159 = [VCPVideoGyroStabilizer alloc];
            audioGroup = [contexta objectForKeyedSubscript:@"MetaStabilizationFrameResults"];
            v160 = v150.width / v67;
            v161 = v150.height / v68;
            time2 = buf;
            v161 = [(VCPVideoGyroStabilizer *)v159 initWithMetadata:audioGroup sourceSize:v56 cropRect:&time2 stillImageMetadata:v150.width timeRange:v150.height, x * v160, y * v161, width * v160, height * v161];

            if (!v161)
            {
              _waitForAsyncAudioResults = -108;
              if (!self->_errorCode)
              {
                v163 = 2017;
                goto LABEL_262;
              }

LABEL_263:

              goto LABEL_125;
            }

            _waitForAsyncAudioResults = [(VCPVideoGyroStabilizer *)v161 convertAnalysisResult];
            if (_waitForAsyncAudioResults)
            {
              if (!self->_errorCode)
              {
                v163 = 2018;
LABEL_262:
                self->_errorCode = 45;
                self->_errorLine = v163;
                goto LABEL_263;
              }

              goto LABEL_263;
            }

            if ((self->_requestedAnalyses & 0x4000000000000000) != 0)
            {
              objc_msgSend_preferredTransform(v62);
              [(VCPVideoGyroStabilizer *)v161 storeAnalytics:&time2 isLivePhoto:[(VCPAsset *)self->_asset isLivePhoto]];
            }

            v188 = [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000000000, v188];
            v178 = self->_requestedAnalyses;
            if ((v178 & 0x10000000) != 0)
            {
              self->_requestedAnalyses = v178 & 0xFFFFFFFFFBFFFFFFLL;
              v179 = *(MEMORY[0x1E6960CA8] + 16);
              *&time2.start.value = *MEMORY[0x1E6960CA8];
              *&time2.start.epoch = v179;
              *&time2.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
              _waitForAsyncAudioResults = [(VCPVideoStabilizer *)v161 finishAnalysisPass:&time2];
              if (_waitForAsyncAudioResults)
              {
                if (self->_errorCode)
                {
                  goto LABEL_263;
                }

                v163 = 2025;
                goto LABEL_262;
              }

              v182 = self->_analysis;
              audioGroup = [(VCPVideoStabilizer *)v161 results];
              [(NSMutableDictionary *)v182 vcp_addEntriesFromResults:audioGroup];

              v188 = [(NSMutableDictionary *)self->_analysis vcp_addTypes:335544320];
              v178 = self->_requestedAnalyses;
            }

            if ((v178 & 0x10000000000) != 0)
            {
              v185 = *(MEMORY[0x1E6960CA8] + 16);
              *&time2.start.value = *MEMORY[0x1E6960CA8];
              *&time2.start.epoch = v185;
              *&time2.duration.timescale = *(MEMORY[0x1E6960CA8] + 32);
              _waitForAsyncAudioResults = [(VCPVideoStabilizer *)v161 finishAnalysisPass:&time2];
              if (_waitForAsyncAudioResults)
              {
                if (self->_errorCode)
                {
                  goto LABEL_263;
                }

                v163 = 2030;
                goto LABEL_262;
              }

              v186 = self->_analysis;
              results = [(VCPVideoStabilizer *)v161 results];
              [(NSMutableDictionary *)v186 vcp_addEntriesFromResults:results];

              v188 = [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
              if ((self->_requestedAnalyses & 0x4000000000) != 0)
              {
                if ([(VCPVideoStabilizer *)v161 stabilizationFaild])
                {
                  self->_requestedAnalyses &= ~0x4000000000uLL;
                }

                v188 = [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];
              }
            }

            v183 = VCPSignPostLog(v188);
            v184 = v183;
            if (v188 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v183))
            {
              LOWORD(time2.start.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v184, OS_SIGNPOST_INTERVAL_END, v190, "VCPMovieAnalyzer_Stabilization_VCPVideoStabilizerGyro", "", &time2, 2u);
            }

            goto LABEL_294;
          }

          if (MediaAnalysisLogLevel() >= 3)
          {
            v91 = MEMORY[0x1E69E9C10];
            v92 = MEMORY[0x1E69E9C10];
            audioGroup = 16;
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf.start.value) = 134218240;
              *(&buf.start.value + 4) = v67;
              LOWORD(buf.start.flags) = 2048;
              *(&buf.start.flags + 2) = v68;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "    Video track has invalid full frame dimensions (%.f,%.f)", &buf, 0x16u);
            }
          }

          if (self->_errorCode)
          {
            goto LABEL_124;
          }

          v75 = xmmword_1C9F63180;
        }

        else
        {
          if (self->_errorCode)
          {
LABEL_124:
            _waitForAsyncAudioResults = -18;
LABEL_125:

LABEL_126:
            v22 = 4;
            goto LABEL_127;
          }

          v75 = xmmword_1C9F63190;
        }

LABEL_123:
        *&self->_errorCode = v75;
        goto LABEL_124;
      }

LABEL_93:
      v76 = self->_requestedAnalyses;
      if ((v76 & 0x4000000000000000) != 0)
      {
        v55 = [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000000000];
        v76 = self->_requestedAnalyses;
      }

      if ((v76 & 0x10000000) != 0)
      {
        if (MediaAnalysisLogLevel() >= 7)
        {
          v77 = MEMORY[0x1E69E9C10];
          v78 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            localIdentifier3 = [(VCPAsset *)self->_asset localIdentifier];
            LODWORD(buf.start.value) = 138412290;
            *(&buf.start.value + 4) = localIdentifier3;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset doesn't have gyro metadata", &buf, 0xCu);
          }
        }

        v55 = [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000];
        v76 = self->_requestedAnalyses;
      }

      if ((v76 & 0x10000000000) == 0)
      {
        goto LABEL_174;
      }

      if (![contexta count] && MediaAnalysisLogLevel() >= 7)
      {
        v80 = MEMORY[0x1E69E9C10];
        v81 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          localIdentifier4 = [(VCPAsset *)self->_asset localIdentifier];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = localIdentifier4;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset doesn't have gyro metadata", &buf, 0xCu);
        }
      }

      if (![v56 count] && MediaAnalysisLogLevel() >= 7)
      {
        v83 = MEMORY[0x1E69E9C10];
        v84 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          localIdentifier5 = [(VCPAsset *)self->_asset localIdentifier];
          LODWORD(buf.start.value) = 138412290;
          *(&buf.start.value + 4) = localIdentifier5;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  [%@] Asset doesn't have still image metadata", &buf, 0xCu);
        }
      }

      v217 = @"PathConstraintsStabilizationResults";
      v214 = @"attributes";
      v212 = @"settlingEffectStatus";
      v210 = @"settlingEffectMissingMetadata";
      v211 = MEMORY[0x1E695E118];
      v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
      v213 = v86;
      v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
      v215 = v87;
      v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
      v216 = v88;
      v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v216 count:1];
      v218 = v89;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];

      [(NSMutableDictionary *)self->_analysis vcp_addEntriesFromResults:v62];
      [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x10000000000];
      v90 = self->_requestedAnalyses;
      if ((v90 & 0x4000000000) != 0)
      {
        self->_requestedAnalyses = v90 & 0xFFFFFFBFFFFFFFFFLL;
      }

      [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x4000000000];
LABEL_173:

LABEL_174:
      v125 = VCPSignPostLog(v55);
      audioGroup = v125;
      if (v192 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v125))
      {
        LOWORD(buf.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, audioGroup, OS_SIGNPOST_INTERVAL_END, v192, "VCPMovieAnalyzer_Stabilization", "", &buf, 2u);
      }

      v51 = self->_requestedAnalyses;
      v37 = v191;
      goto LABEL_178;
    }
  }

  v18 = self->_analysis;
  date = [MEMORY[0x1E695DF00] date];
  [(NSMutableDictionary *)v18 vcp_setDateAnalyzed:date];

  [(NSMutableDictionary *)self->_analysis vcp_setFlags:0];
  [(NSMutableDictionary *)self->_analysis vcp_setQuality:0.0];
  [(NSMutableDictionary *)self->_analysis vcp_setStatsFlags:4];
  [(NSMutableDictionary *)self->_analysis vcp_setTypes:0x7FFFFFFFFFFFFFFFLL];
  self->_status = 2;
  if ((self->_requestedAnalyses & 0x20000000) != 0)
  {
    +[VCPVideoInterpolator sendPreGatedAnalytics];
  }

  audioGroup = self->_analysis;
  _waitForAsyncAudioResults = 0;
  v21 = 1;
  v22 = 1;
LABEL_128:

  objc_autoreleasePoolPop(v197);
  if (v22 == 4)
  {
    goto LABEL_152;
  }

  if (v22)
  {
    goto LABEL_167;
  }

  [(NSMutableDictionary *)self->_analysis vcp_removeSyncPoint];
  v94 = self->_analysis;
  date2 = [MEMORY[0x1E695DF00] date];
  [(NSMutableDictionary *)v94 vcp_setDateAnalyzed:date2];

  vcp_results2 = [(NSMutableDictionary *)self->_analysis vcp_results];
  v97 = [vcp_results2 objectForKey:@"QualityResults"];
  v98 = [v97 count] == 0;

  if (!v98)
  {
    v99 = objc_alloc_init(VCPVideoGlobalAnalyzer);
    isSlowmo = [(VCPAsset *)self->_asset isSlowmo];
    asset = self->_asset;
    if (isSlowmo)
    {
      [(VCPAsset *)asset slowmoRate];
    }

    else
    {
      [(VCPAsset *)asset timelapseRate];
    }

    [(VCPVideoGlobalAnalyzer *)v99 analyzeOverallQuality:self->_analysis withFpsRate:v188];
    v103 = v102;
    if (v103 != -1.0)
    {
      [(NSMutableDictionary *)self->_analysis vcp_setQuality:v103, -1.0];
    }

    if ((self->_requestedAnalyses & 0x80000000) != 0)
    {
      if ([(VCPAsset *)self->_asset isLivePhoto]&& ![(VCPAsset *)self->_asset hadFlash])
      {
        v104 = [(NSMutableDictionary *)self->_analysis objectForKey:@"metadataRanges"];
        [(VCPVideoGlobalAnalyzer *)v99 generateLivePhotoRecommendationForResults:v104 andPrivateResults:self->_privateResults usingFaceAction:v21];
      }

      [(NSMutableDictionary *)self->_analysis vcp_addTypes:0x80000000];
    }
  }

  if (([(NSMutableDictionary *)self->_analysis vcp_types]& 0x80) != 0)
  {
    vcp_results3 = [(NSMutableDictionary *)self->_analysis vcp_results];
    v106 = vcp_results3 == 0;

    if (!v106)
    {
      v107 = objc_alloc_init(VCPVideoGlobalAnalyzer);
      vcp_results4 = [(NSMutableDictionary *)self->_analysis vcp_results];
      v109 = [(VCPVideoGlobalAnalyzer *)v107 setActivityLevel:vcp_results4];

      if (v109)
      {
        if (!self->_errorCode)
        {
          *&self->_errorCode = xmmword_1C9F631C0;
        }

        _waitForAsyncAudioResults = v109;
        goto LABEL_152;
      }
    }
  }

  isMovie = [(VCPAsset *)self->_asset isMovie];
  if (isMovie)
  {
    isMovie = [(NSMutableDictionary *)self->_analysis vcp_addStatsFlags:4];
  }

  self->_status = 2;
LABEL_152:
  if (!_waitForAsyncAudioResults)
  {
    goto LABEL_159;
  }

  if (_waitForAsyncAudioResults == -128)
  {
    goto LABEL_154;
  }

  self->_status = 3;
  p_analysis = &self->_analysis;
LABEL_158:
  v112 = *p_analysis;
  *p_analysis = 0;

LABEL_159:
  v113 = VCPSignPostLog(isMovie);
  v114 = v113;
  if (v199 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v113))
  {
    LOWORD(buf.start.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v114, OS_SIGNPOST_INTERVAL_END, spid, "VCPMovieAnalyzer", "", &buf, 2u);
  }

  if (MediaAnalysisLogLevel() >= 7)
  {
    v115 = MEMORY[0x1E69E9C10];
    v116 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
    {
      localIdentifier6 = [(VCPAsset *)self->_asset localIdentifier];
      v118 = [(NSMutableDictionary *)self->_analysis vcp_analysisDescriptionWithResultDetails:1];
      LODWORD(buf.start.value) = 138412546;
      *(&buf.start.value + 4) = localIdentifier6;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = v118;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][MovieAnalyzer] After analyzing %@", &buf, 0x16u);
    }
  }

LABEL_166:
  audioGroup = self->_analysis;
LABEL_167:

  return audioGroup;
}

void __42__VCPMovieAnalyzer_analyzeAsset_streamed___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v16 = 0;
  v5 = [v2 analyzeAsset:v3 cancel:v4 results:&v16];
  v6 = v16;
  v7 = v6;
  *(a1[4] + 104) = v5;
  if (!*(a1[4] + 104))
  {
    v8 = [v6 mutableCopy];
    v9 = a1[4];
    v10 = *(v9 + 112);
    *(v9 + 112) = v8;

    *(a1[4] + 120) = a1[8];
  }

  v11 = VCPSignPostLog(v6);
  v12 = v11;
  v13 = a1[9];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v13, "VCPMovieAnalyzer_Audio", "", v15, 2u);
  }

  if (a1[10])
  {
    v14 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VCPMovieAnalyzer_Audio", v14 - a1[10]);
  }
}

- (int)generateKeyFrameResource:(id)resource
{
  resourceCopy = resource;
  vcp_results = [(NSMutableDictionary *)self->_analysis vcp_results];
  v6 = [vcp_results objectForKeyedSubscript:@"MovieSummaryResults"];

  if (![v6 count])
  {
    goto LABEL_6;
  }

  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [v7 objectForKeyedSubscript:@"attributes"];

  if (![v8 count])
  {
    if (!self->_errorCode)
    {
      v18 = xmmword_1C9F631F0;
LABEL_11:
      *&self->_errorCode = v18;
    }

LABEL_15:

    v17 = -18;
    goto LABEL_16;
  }

  v9 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:resourceCopy];
  v10 = v9;
  if (!v9)
  {
    if (!self->_errorCode)
    {
      v18 = xmmword_1C9F631E0;
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  [v9 setAppliesPreferredTrackTransform:1];
  [v10 setMaximumSize:{576, 576}];
  v11 = MEMORY[0x1E6960CC0];
  v21 = **&MEMORY[0x1E6960CC0];
  [v10 setRequestedTimeToleranceAfter:&v21];
  v21 = *v11;
  [v10 setRequestedTimeToleranceBefore:&v21];
  memset(&v21, 0, sizeof(v21));
  v12 = [v6 objectAtIndexedSubscript:0];
  v13 = [v12 objectForKeyedSubscript:@"start"];
  CMTimeMakeFromDictionary(&v21, v13);

  v20 = v21;
  v14 = [v10 copyCGImageAtTime:&v20 actualTime:0 error:0];
  if (!v14)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F631D0;
    }

    goto LABEL_15;
  }

  analysis = self->_analysis;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v14, 0}];
  [(NSMutableDictionary *)analysis vcp_appendResult:v16 forKey:@"KeyFrameResourceResults"];

LABEL_6:
  v17 = 0;
LABEL_16:

  return v17;
}

- (int)generateAndPersistVideoThumbnailResources:(id)resources forPHAsset:(id)asset withResults:(id)results cancelBlock:(id)block
{
  v69 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  assetCopy = asset;
  resultsCopy = results;
  blockCopy = block;
  v60 = resultsCopy;
  v54 = assetCopy;
  if (!resultsCopy)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier = [assetCopy localIdentifier];
      *buf = 138412290;
      *&buf[4] = localIdentifier;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[MovieAnalyzer][%@] No video thumbnail results exist, skip generating resources", buf, 0xCu);
    }

    v58 = 0;
    goto LABEL_60;
  }

  pixelWidth = [(VCPAsset *)self->_asset pixelWidth];
  pixelHeight = [(VCPAsset *)self->_asset pixelHeight];
  pixelWidth2 = [(VCPAsset *)self->_asset pixelWidth];
  pixelHeight2 = [(VCPAsset *)self->_asset pixelHeight];
  v16 = pixelWidth / pixelHeight;
  if (pixelWidth2 <= pixelHeight2)
  {
    v18 = 360.0;
    v17 = 360.0 / v16;
  }

  else
  {
    v17 = 360.0;
    v18 = v16 * 360.0;
  }

  v20 = [MEMORY[0x1E6987E68] assetImageGeneratorWithAsset:resourcesCopy];
  v56 = v20;
  if (!v20)
  {
    if (!self->_errorCode)
    {
      *&self->_errorCode = xmmword_1C9F63240;
    }

    v58 = -18;
    goto LABEL_59;
  }

  [v20 setAppliesPreferredTrackTransform:1];
  [v56 setMaximumSize:{v18, v17}];
  CMTimeMake(&v67, 30, 600);
  *buf = v67;
  [v56 setRequestedTimeToleranceAfter:buf];
  CMTimeMake(&v66, 30, 600);
  *buf = v66;
  [v56 setRequestedTimeToleranceBefore:buf];
  selfCopy = self;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0;
  *(&v22 + 1) = 2269;
  *&v22 = 138412802;
  v50 = v22;
  while (v21 < [v60 count])
  {
    v23 = objc_autoreleasePoolPush();
    if (!blockCopy || (blockCopy[2]() & 1) == 0)
    {
      v25 = [v60 objectAtIndexedSubscript:v21];
      v26 = [v25 objectForKeyedSubscript:@"attributes"];
      v27 = [v26 objectForKeyedSubscript:@"thumbnailID"];

      if (v27)
      {
        memset(&v65, 0, sizeof(v65));
        v28 = [v25 objectForKeyedSubscript:@"start"];
        CMTimeMakeFromDictionary(&v65, v28);

        if ((v65.flags & 1) == 0)
        {
          v29 = selfCopy;
          if (!selfCopy->_errorCode)
          {
            v24 = 0;
            v30 = xmmword_1C9F63220;
            goto LABEL_49;
          }

LABEL_38:
          v24 = 0;
LABEL_50:
          v58 = -18;
LABEL_51:

          goto LABEL_52;
        }

        *buf = v65;
        v31 = [v56 copyCGImageAtTime:buf actualTime:0 error:0];
        if (v31)
        {
          [dictionary setObject:v31 forKeyedSubscript:v27];

          if ([dictionary count] != 5 && v21 != objc_msgSend(v60, "count") - 1)
          {
            goto LABEL_46;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            localIdentifier2 = [v54 localIdentifier];
            v33 = [dictionary count];
            *buf = 138412546;
            *&buf[4] = localIdentifier2;
            *&buf[12] = 1024;
            *&buf[14] = v33;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MovieAnalyzer][%@] Persisting %d thumbnail resources to Photos", buf, 0x12u);
          }

          v52 = mach_absolute_time();
          v34 = VCPSignPostLog(v52);
          v35 = os_signpost_id_generate(v34);

          v37 = VCPSignPostLog(v36);
          v38 = v37;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_BEGIN, v35, "VCPMovieAnalyzer_PersistVideoThumbnailResources", "", buf, 2u);
          }

          photoLibrary = [v54 photoLibrary];
          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __97__VCPMovieAnalyzer_generateAndPersistVideoThumbnailResources_forPHAsset_withResults_cancelBlock___block_invoke;
          v62[3] = &unk_1E834D238;
          v40 = v54;
          v63 = v40;
          v41 = dictionary;
          v64 = v41;
          v61 = 0;
          v42 = [photoLibrary performChangesAndWait:v62 error:&v61];
          v51 = v61;

          v44 = VCPSignPostLog(v43);
          v45 = v44;
          if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v45, OS_SIGNPOST_INTERVAL_END, v35, "VCPMovieAnalyzer_PersistVideoThumbnailResources", "", buf, 2u);
          }

          if (v52)
          {
            v46 = mach_absolute_time();
            VCPPerformance_LogMeasurement("VCPMovieAnalyzer_PersistVideoThumbnailResources", v46 - v52);
          }

          if (v42)
          {
            [v41 removeAllObjects];
          }

          else
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              localIdentifier3 = [v40 localIdentifier];
              v48 = [v41 count];
              *buf = v50;
              *&buf[4] = localIdentifier3;
              *&buf[12] = 1024;
              *&buf[14] = v48;
              *&buf[18] = 2112;
              *&buf[20] = v51;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[MovieAnalyzer][%@] Failed to persist %d thumbnail resources: %@", buf, 0x1Cu);
            }

            if (!selfCopy->_errorCode)
            {
              *&selfCopy->_errorCode = xmmword_1C9F63200;
            }

            v58 = -18;
          }

          if ((v42 & 1) == 0)
          {
            v24 = 0;
          }

          else
          {
LABEL_46:
            v24 = 1;
          }

          goto LABEL_51;
        }

        v29 = selfCopy;
        if (selfCopy->_errorCode)
        {
          goto LABEL_38;
        }

        v24 = 0;
        v30 = xmmword_1C9F63210;
      }

      else
      {
        v29 = selfCopy;
        if (selfCopy->_errorCode)
        {
          goto LABEL_38;
        }

        v24 = 0;
        v30 = xmmword_1C9F63230;
      }

LABEL_49:
      *&v29->_errorCode = v30;
      goto LABEL_50;
    }

    v24 = 0;
    v58 = -128;
LABEL_52:
    objc_autoreleasePoolPop(v23);
    ++v21;
    if ((v24 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  v58 = 0;
LABEL_58:

LABEL_59:
LABEL_60:

  return v58;
}

void __97__VCPMovieAnalyzer_generateAndPersistVideoThumbnailResources_forPHAsset_withResults_cancelBlock___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978640] changeRequestForAsset:*(a1 + 32)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(a1 + 40) objectForKeyedSubscript:{v7, v10}];

        [v2 setContextualVideoThumbnailImage:v9 withIdentifier:v7];
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

+ (void)getMaximumHighlightInSec
{
  if (__cxa_guard_acquire(byte_1ED942830))
  {
    _MergedGlobals_2 = 1092616192;

    __cxa_guard_release(byte_1ED942830);
  }
}

@end