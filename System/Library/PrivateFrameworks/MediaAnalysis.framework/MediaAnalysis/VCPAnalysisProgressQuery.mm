@interface VCPAnalysisProgressQuery
+ (id)_processedPredicateForTaskID:(unint64_t)d;
+ (int)_queryProgressDetailExpress:(id *)express photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (int)_scanPhotoLibrary:(id)library taskID:(unint64_t)d statistics:(id *)statistics cancelOrExtendTimeoutBlock:(id)block;
+ (int)queryAnalysisProgress:(float *)progress photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (int)queryCachedFaceAnalysisProgress:(id *)progress photoLibrary:(id)library;
+ (int)queryProgressDetail:(id *)detail photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (int)queryVideoCountAndDurationBreakdown:(id)breakdown photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block;
+ (unint64_t)_countAnalysisWithAssetBatch:(id)batch taskID:(unint64_t)d;
+ (unint64_t)_countFaceAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countFailuresWithAssetBatch:(id)batch database:(id)database taskID:(unint64_t)d;
+ (unint64_t)_countFailuresWithAssetBatch:(id)batch fetchRequest:(id)request taskID:(unint64_t)d;
+ (unint64_t)_countFullImageAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countOCRAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countPECAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countSceneAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_countVisualSearchAnalysisWithAssetBatch:(id)batch;
+ (unint64_t)_vipStatusForPhotoLibrary:(id)library type:(unint64_t)type;
+ (unint64_t)countAllAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error;
+ (unint64_t)countProcessedAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error;
+ (void)_countMediaAnalysisWithAssetBatch:(id)batch database:(id)database analyzedCount:(unint64_t *)count completeAnalyzedCount:(unint64_t *)analyzedCount partialAnalyzedCount:(unint64_t *)partialAnalyzedCount;
@end

@implementation VCPAnalysisProgressQuery

+ (unint64_t)countAllAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:d];
  v9 = v8;
  v10 = PHMediaProcessingTaskIDForVCPTaskID(d);
  v16 = 0;
  *&v11 = v9;
  v12 = [libraryCopy countOfAllAssetsForMediaProcessingTaskID:v10 priority:0 sceneConfidenceThreshold:&v16 error:v11];
  v13 = v16;
  if (v13)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = VCPTaskIDDescription(d);
      *buf = 138412802;
      v18 = v14;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to query total asset count - scene threshold %.2f - %@", buf, 0x20u);
    }

    v12 = 0;
    if (error)
    {
      *error = [v13 copy];
    }
  }

  return v12;
}

+ (unint64_t)countProcessedAssetsForTaskID:(unint64_t)d photoLibrary:(id)library error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v8 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
  [MEMORY[0x1E6978628] mad_sceneConfidenceThresholdForTask:d];
  v10 = v9;
  v11 = PHMediaProcessingTaskIDForVCPTaskID(d);
  v17 = 0;
  LODWORD(v12) = v10;
  v13 = [libraryCopy countOfProcessedAssetsForMediaProcessingTaskID:v11 priority:0 algorithmVersion:v8 sceneConfidenceThreshold:&v17 error:v12];
  v14 = v17;
  if (d == 16)
  {
    v13 -= [libraryCopy vcp_pecFailureVersionAssetCountWithPriority:0];
  }

  if (v14)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = VCPTaskIDDescription(d);
      *buf = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch processed assets - %@", buf, 0x16u);
    }

    v13 = 0;
    if (error)
    {
      *error = [v14 copy];
    }
  }

  return v13;
}

+ (void)_countMediaAnalysisWithAssetBatch:(id)batch database:(id)database analyzedCount:(unint64_t *)count completeAnalyzedCount:(unint64_t *)analyzedCount partialAnalyzedCount:(unint64_t *)partialAnalyzedCount
{
  v53 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  databaseCopy = database;
  array = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = batchCopy;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v10)
  {
    v11 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v9);
        }

        localIdentifier = [*(*(&v47 + 1) + 8 * i) localIdentifier];
        [array addObject:localIdentifier];
      }

      v10 = [v9 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v10);
  }

  if (+[MADManagedPhotosAsset isMACDReadEnabled])
  {
    firstObject = [v9 firstObject];
    photoLibrary = [firstObject photoLibrary];

    mad_fetchRequest = [photoLibrary mad_fetchRequest];
    v41 = [mad_fetchRequest fetchAnalysesWithLocalIdentifiers:array predicate:0];
  }

  else
  {
    v41 = [databaseCopy queryAnalysisPropertiesForAssets:array];
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v9;
  v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v17)
  {
    v37 = 0;
    v38 = 0;
    v18 = 0;
    v40 = *v44;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v44 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v43 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        localIdentifier2 = [v20 localIdentifier];
        v23 = [v41 objectForKeyedSubscript:localIdentifier2];

        v24 = [v20 vcp_needsFullAnalysisProcessing:0];
        if (v23)
        {
          vcp_dateModified = [v23 vcp_dateModified];
          vcp_modificationDate = [v20 vcp_modificationDate];
          if ([vcp_dateModified isEqualToDate:vcp_modificationDate])
          {
            v27 = [v23 vcp_version] == 75;

            if (v27)
            {
              vcp_fullAnalysisTypes = [v20 vcp_fullAnalysisTypes];
              v29 = [v23 vcp_types] & vcp_fullAnalysisTypes & 0xFFFFFFFFFFEFFFFFLL;
              v30 = v29 == (vcp_fullAnalysisTypes & 0xFFFFFFFFFFEFFFFFLL);
              if (v29 == (vcp_fullAnalysisTypes & 0xFFFFFFFFFFEFFFFFLL))
              {
                v31 = v38;
              }

              else
              {
                v31 = v38 + 1;
              }

              v32 = v37;
              if (v30)
              {
                v32 = v37 + 1;
              }

              v37 = v32;
              v38 = v31;
            }
          }

          else
          {
          }
        }

        objc_autoreleasePoolPop(v21);
        v18 += v24 ^ 1u;
      }

      v17 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v17);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v18 = 0;
  }

  *count = v18;
  *analyzedCount = v37;
  *partialAnalyzedCount = v38;
}

+ (unint64_t)_countFaceAnalysisWithAssetBatch:(id)batch
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        faceAdjustmentVersion = [v8 faceAdjustmentVersion];
        adjustmentVersion = [v8 adjustmentVersion];
        v11 = [faceAdjustmentVersion isEqualToDate:adjustmentVersion];

        v4 += v11;
      }

      v5 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countSceneAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needSceneProcessing] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countOCRAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needsOCRProcessing] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countVisualSearchAnalysisWithAssetBatch:(id)batch
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 vcp_needsVisualSearchProcessing] & 1) == 0)
        {
          v4 += [v8 vcp_needsStickerGatingProcessing] ^ 1;
        }
      }

      v5 = [batchCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countPECAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needsPECProcessing] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countFullImageAnalysisWithAssetBatch:(id)batch
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  batchCopy = batch;
  v4 = 0;
  v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(batchCopy);
        }

        v4 += [*(*(&v9 + 1) + 8 * v7++) vcp_needsFullAnalysisProcessing:{0, v9}] ^ 1;
      }

      while (v5 != v7);
      v5 = [batchCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v4;
}

+ (unint64_t)_countAnalysisWithAssetBatch:(id)batch taskID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  if (d > 11)
  {
    switch(d)
    {
      case 0xCuLL:
        v7 = [self _countVisualSearchAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 0x10uLL:
        v7 = [self _countPECAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 0xFFuLL:
        v7 = [self _countFullImageAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
    }
  }

  else
  {
    switch(d)
    {
      case 2uLL:
        v7 = [self _countSceneAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 3uLL:
        v7 = [self _countFaceAnalysisWithAssetBatch:batchCopy];
        goto LABEL_18;
      case 0xAuLL:
        v7 = [self _countOCRAnalysisWithAssetBatch:batchCopy];
LABEL_18:
        v8 = v7;
        goto LABEL_19;
    }
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupport taskID %lu", &v10, 0xCu);
  }

  v8 = 0;
LABEL_19:

  return v8;
}

+ (unint64_t)_countFailuresWithAssetBatch:(id)batch database:(id)database taskID:(unint64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  databaseCopy = database;
  v9 = databaseCopy;
  if (d <= 0x10 && ((1 << d) & 0x1140E) != 0 || d == 255)
  {
    v10 = [databaseCopy queryFailedProcessingStatusFromAssets:batchCopy forTaskID:d];
    v11 = [v10 count];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupport taskID %lu", &v13, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (unint64_t)_countFailuresWithAssetBatch:(id)batch fetchRequest:(id)request taskID:(unint64_t)d
{
  v24 = *MEMORY[0x1E69E9840];
  batchCopy = batch;
  requestCopy = request;
  if (d <= 0x10 && ((1 << d) & 0x1140E) != 0 || d == 255)
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = batchCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v10);
          }

          localIdentifier = [*(*(&v17 + 1) + 8 * v13) localIdentifier];
          [array addObject:localIdentifier];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v11);
    }

    LODWORD(v15) = [requestCopy fetchAssetCountFromLocalIdentifiers:array taskID:d excludingStatuses:&unk_1F49BEA10];
    v15 = v15;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupport taskID %lu", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

+ (unint64_t)_vipStatusForPhotoLibrary:(id)library type:(unint64_t)type
{
  libraryCopy = library;
  v6 = [libraryCopy vcp_vipModelLastGenerationDateForVIPType:type];
  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceDate:v6];
  v9 = v8;

  v10 = [libraryCopy vcp_vipModelFilepathForVIPType:type];
  v11 = [VCPFaceIDModel loadVIPModelAtPath:v10 withVIPType:type error:0];

  v12 = 2;
  if (v9 >= 0x15180uLL)
  {
    v12 = 1;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (int)_scanPhotoLibrary:(id)library taskID:(unint64_t)d statistics:(id *)statistics cancelOrExtendTimeoutBlock:(id)block
{
  v81 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  if (!statistics)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: output parameter statistics must be non-nil", buf, 2u);
    }

    v11 = -50;
    goto LABEL_58;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    statisticsCopy = statistics;
    v10 = VCPTaskIDDescription(d);
    *buf = 134218242;
    *&buf[4] = d;
    v79 = 2112;
    v80 = v10;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Query progress: scan library for %lu - %@", buf, 0x16u);

    statistics = statisticsCopy;
  }

  v65 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
  }

  else
  {
    mad_fetchRequest = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v60 = [MEMORY[0x1E6978628] vcp_fetchOptionsForLibrary:libraryCopy forTaskID:d];
  v13 = mach_absolute_time();
  statisticsCopy2 = statistics;
  v14 = VCPSignPostLog(v13);
  v15 = os_signpost_id_generate(v14);

  v17 = VCPSignPostLog(v16);
  v18 = v17;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "VCPAnalysisProgressQueryScanPhotoLibraryFetch", "", buf, 2u);
  }

  v19 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:v60];
  v20 = VCPSignPostLog(v19);
  v21 = v20;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_END, v15, "VCPAnalysisProgressQueryScanPhotoLibraryFetch", "", buf, 2u);
  }

  if (v13)
  {
    v22 = mach_absolute_time();
    VCPPerformance_LogMeasurement("VCPAnalysisProgressQueryScanPhotoLibraryFetch", v22 - v13);
  }

  v63 = 0;
  v64 = 0;
  v23 = 0;
  v66 = 0;
  v67 = 0;
  v24 = 0;
  while (v23 < [v19 count])
  {
    v25 = objc_autoreleasePoolPush();
    v26 = [v19 objectAtIndexedSubscript:v23];
    [array addObject:v26];

    if ([array count] >= 0x3E8)
    {
      if (blockCopy && blockCopy[2]())
      {
        if (MediaAnalysisLogLevel() >= 5)
        {
          v27 = MEMORY[0x1E69E9C10];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, v27, OS_LOG_TYPE_DEFAULT, "Cancelled during _scanPhotoLibrary", buf, 2u);
          }
        }

        v28 = 0;
        goto LABEL_37;
      }

      v29 = [array count];
      if (+[MADManagedProcessingStatus isMACDReadEnabled])
      {
        v30 = [self _countFailuresWithAssetBatch:array fetchRequest:mad_fetchRequest taskID:d];
      }

      else
      {
        v30 = [self _countFailuresWithAssetBatch:array database:v65 taskID:d];
      }

      v31 = v30;
      if (d == 1)
      {
        *buf = 0;
        v70 = 0;
        v71 = 0;
        [self _countMediaAnalysisWithAssetBatch:array database:v65 analyzedCount:buf completeAnalyzedCount:&v71 partialAnalyzedCount:&v70];
        v32 = *buf;
        v63 += v71;
        v64 += v70;
      }

      else
      {
        v32 = [self _countAnalysisWithAssetBatch:array taskID:d];
      }

      [array removeAllObjects];
      v67 += v29;
      v24 += v31;
      v66 += v32;
    }

    v28 = 1;
LABEL_37:
    objc_autoreleasePoolPop(v25);
    ++v23;
    if ((v28 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ([array count])
  {
    if (blockCopy && blockCopy[2]())
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Cancelled during _scanPhotoLibrary", buf, 2u);
      }

LABEL_38:
      v11 = -128;
      goto LABEL_57;
    }

    v33 = [array count];
    if (mad_fetchRequest)
    {
      v34 = [self _countFailuresWithAssetBatch:array fetchRequest:mad_fetchRequest taskID:d];
    }

    else
    {
      v34 = [self _countFailuresWithAssetBatch:array database:v65 taskID:d];
    }

    v67 += v33;
    v24 += v34;
    if (d == 1)
    {
      *buf = 0;
      v70 = 0;
      v71 = 0;
      [self _countMediaAnalysisWithAssetBatch:array database:v65 analyzedCount:buf completeAnalyzedCount:&v71 partialAnalyzedCount:&v70];
      v66 += *buf;
      v63 += v71;
      v64 += v70;
    }

    else
    {
      v66 += [self _countAnalysisWithAssetBatch:array taskID:d];
    }
  }

  v35 = MEMORY[0x1E695DF90];
  v76[0] = @"failed";
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v24];
  v77[0] = v36;
  v76[1] = @"processed";
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v66];
  v77[1] = v37;
  v76[2] = @"total-allowed";
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67];
  v77[2] = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
  type = [v35 dictionaryWithDictionary:v39];

  if (d == 1)
  {
    v43 = [libraryCopy countOfAllAssetsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) priority:2 sceneConfidenceThreshold:0 error:0.0];
    v44 = PHMediaProcessingTaskIDForVCPTaskID(1);
    v45 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
    v46 = [libraryCopy countOfProcessedAssetsForMediaProcessingTaskID:v44 priority:2 algorithmVersion:v45 sceneConfidenceThreshold:0 error:0.0];

    v47 = [libraryCopy countOfAllAssetsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) priority:4 sceneConfidenceThreshold:0 error:0.0];
    v48 = PHMediaProcessingTaskIDForVCPTaskID(1);
    v49 = [MEMORY[0x1E69788E8] mad_sharedVersionProviderWithPhotoLibrary:libraryCopy];
    v50 = [libraryCopy countOfProcessedAssetsForMediaProcessingTaskID:v48 priority:4 algorithmVersion:v49 sceneConfidenceThreshold:0 error:0.0];

    v72[0] = @"FullAnalysisCompleteProcessed";
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v63];
    v73[0] = v40;
    v72[1] = @"FullAnalysisPartialProcessed";
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v64];
    v73[1] = v41;
    v72[2] = @"FullAnalysisStillImageProcessed";
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v66 - (v46 + v50)];
    v73[2] = v42;
    v72[3] = @"FullAnalysisStillImageCount";
    v51 = v43;
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v67 - (v43 + v47)];
    v73[3] = v52;
    v72[4] = @"FullAnalysisLivePhotoProcessed";
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v46];
    v73[4] = v53;
    v72[5] = @"FullAnalysisLivePhotoCount";
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v51];
    v73[5] = v54;
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:6];
    [type addEntriesFromDictionary:v55];

LABEL_55:
  }

  else if (d == 3)
  {
    v74[0] = @"pet-vip-status";
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 1)}];
    v75[0] = v40;
    v74[1] = @"person-vip-status";
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 0)}];
    v75[1] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
    [type addEntriesFromDictionary:v42];
    goto LABEL_55;
  }

  v56 = type;
  *statisticsCopy2 = type;

  v11 = 0;
LABEL_57:

LABEL_58:
  return v11;
}

+ (id)_processedPredicateForTaskID:(unint64_t)d
{
  if (d > 11)
  {
    if (d == 12)
    {
      v4 = MEMORY[0x1E696AE18];
      v10 = VCPPhotosVisualSearchAlgorithmVersion(self, a2);
      v11 = 1;
      v6 = @"mediaAnalysisAttributes.visualSearchAttributes.algorithmVersion >= %d && mediaAnalysisAttributes.visualSearchAttributes.stickerConfidenceAlgorithmVersion >= %d";
LABEL_13:
      v7 = v4;
      goto LABEL_14;
    }

    if (d == 16)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaAnalysisAttributes.vaAnalysisVersion >= %d", 5, v11, v12];
      goto LABEL_15;
    }

LABEL_8:
    v3 = +[VCPVideoCNNAnalyzer isMUBackboneEnabled];
    v4 = MEMORY[0x1E696AE18];
    v5 = VCPPhotosSceneProcessingVersionInternal();
    if (v3)
    {
      v11 = *MEMORY[0x1E69C0C30];
      v12 = 75;
      v10 = v5;
      v6 = @"additionalAttributes.sceneAnalysisVersion  >= %d &&  additionalAttributes.sceneAnalysisVersion  != %d &&  mediaAnalysisAttributes.imageEmbeddingVersion >= %d ";
    }

    else
    {
      v10 = v5;
      v11 = *MEMORY[0x1E69C0C30];
      v6 = @"additionalAttributes.sceneAnalysisVersion  >= %d &&  additionalAttributes.sceneAnalysisVersion  != %d ";
    }

    goto LABEL_13;
  }

  if (d != 3)
  {
    if (d == 10)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaAnalysisAttributes.characterRecognitionAttributes.algorithmVersion >= %d", 8, v11, v12];
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v7 = MEMORY[0x1E696AE18];
  v6 = @"faceAdjustmentVersion != nil";
LABEL_14:
  [v7 predicateWithFormat:v6, v10, v11, v12];
  v8 = LABEL_15:;

  return v8;
}

+ (int)_queryProgressDetailExpress:(id *)express photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  v110[6] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  if (d <= 0x10)
  {
    if (((1 << d) & 0x1140C) != 0)
    {
      goto LABEL_3;
    }

    if (d == 1)
    {
      v90 = 0;
      v91 = 0;
      goto LABEL_21;
    }
  }

  if (d == 255)
  {
LABEL_3:
    v8 = mach_absolute_time();
    v9 = VCPSignPostLog(v8);
    v10 = os_signpost_id_generate(v9);

    v12 = VCPSignPostLog(v11);
    v13 = v12;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "VCPAnalysisProgressQueryExpressPathFetchTotalCount", "", buf, 2u);
    }

    v91 = [libraryCopy vcp_assetCountForTaskID:d];
    v14 = VCPSignPostLog(v91);
    v15 = v14;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v15, OS_SIGNPOST_INTERVAL_END, v10, "VCPAnalysisProgressQueryExpressPathFetchTotalCount", "", buf, 2u);
    }

    if (v8)
    {
      v16 = mach_absolute_time();
      VCPPerformance_LogMeasurement("VCPAnalysisProgressQueryExpressPathFetchTotalCount", v16 - v8);
    }

    v17 = mach_absolute_time();
    v18 = VCPSignPostLog(v17);
    v19 = os_signpost_id_generate(v18);

    v21 = VCPSignPostLog(v20);
    v22 = v21;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VCPAnalysisProgressQueryExpressPathFetchProcessedCount", "", buf, 2u);
    }

    v90 = [libraryCopy vcp_processedAssetCountForTaskID:d];
    v23 = VCPSignPostLog(v90);
    v24 = v23;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v19, "VCPAnalysisProgressQueryExpressPathFetchProcessedCount", "", buf, 2u);
    }

    if (v17)
    {
      v25 = mach_absolute_time();
      VCPPerformance_LogMeasurement("VCPAnalysisProgressQueryExpressPathFetchProcessedCount", v25 - v17);
    }

LABEL_21:
    v94 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
    if (+[MADManagedProcessingStatus isMACDReadEnabled](MADManagedProcessingStatus, "isMACDReadEnabled") || +[MADManagedKeyValueStore isMACDReadEnabled])
    {
      mad_fetchRequest = [libraryCopy mad_fetchRequest];
    }

    else
    {
      mad_fetchRequest = 0;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (d == 1)
    {
      LOWORD(v83) = 0;
      v88 = [objc_alloc(MEMORY[0x1E69788E8]) initWithSceneAnalysisVersion:0 faceAnalysisVersion:0 characterRecognitionAlgorithmVersion:0 visualSearchAlgorithmVersion:0 stickerConfidenceAlgorithmVersion:0 vaAnalysisVersion:0 vaLocationAnalysisVersion:v83 mediaAnalysisVersion:0 mediaAnalysisImageVersion:0 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];
      v98 = 0;
      v28 = [libraryCopy countOfAssetsByMediaTypeForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) processed:1 algorithmVersion:v88 exactVersionMatch:0 error:&v98];
      v86 = v98;
      if (v28)
      {
        v29 = [v28 objectForKeyedSubscript:*MEMORY[0x1E6978EC8]];
        unsignedLongLongValue = [v29 unsignedLongLongValue];

        v31 = [v28 objectForKeyedSubscript:*MEMORY[0x1E6978EC0]];
        unsignedLongLongValue2 = [v31 unsignedLongLongValue];

        v33 = [v28 objectForKeyedSubscript:*MEMORY[0x1E6978ED0]];
        unsignedLongLongValue3 = [v33 unsignedLongLongValue];

        v107[0] = @"FullAnalysisStillImageCount";
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue];
        v108[0] = v35;
        v107[1] = @"FullAnalysisLivePhotoCount";
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue2];
        v108[1] = v36;
        v107[2] = @"FullAnalysisVideoCount";
        v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue3];
        v108[2] = v37;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
        [dictionary addEntriesFromDictionary:v38];

        v91 = unsignedLongLongValue2 + unsignedLongLongValue + unsignedLongLongValue3;
      }

      else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = [v86 description];
        *buf = 138412546;
        dCopy = v45;
        v105 = 2112;
        v106 = v46;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Failed to get total assets breakdown count from Photos (%@)", buf, 0x16u);
      }

      v47 = objc_alloc(MEMORY[0x1E69788E8]);
      v48 = VCPPhotosSceneProcessingVersionInternal();
      mad_faceProcessingInternalVersion = [libraryCopy mad_faceProcessingInternalVersion];
      LOWORD(v84) = VCPPhotosPECProcessingVersion;
      v51 = [v47 initWithSceneAnalysisVersion:v48 faceAnalysisVersion:mad_faceProcessingInternalVersion characterRecognitionAlgorithmVersion:8 visualSearchAlgorithmVersion:VCPPhotosVisualSearchAlgorithmVersion(mad_faceProcessingInternalVersion stickerConfidenceAlgorithmVersion:v50) vaAnalysisVersion:1 vaLocationAnalysisVersion:v84 mediaAnalysisVersion:75 mediaAnalysisImageVersion:75 captionGenerationVersion:? imageEmbeddingVersion:? videoEmbeddingVersion:?];

      v97 = v86;
      v52 = [libraryCopy countOfAssetsByMediaTypeForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) processed:1 algorithmVersion:v51 exactVersionMatch:0 error:&v97];
      v85 = v97;

      if (v52)
      {
        v53 = [v52 objectForKeyedSubscript:*MEMORY[0x1E6978EC8]];
        unsignedLongLongValue4 = [v53 unsignedLongLongValue];

        v55 = [v52 objectForKeyedSubscript:*MEMORY[0x1E6978EC0]];
        unsignedLongLongValue5 = [v55 unsignedLongLongValue];

        v57 = [v52 objectForKeyedSubscript:*MEMORY[0x1E6978ED0]];
        unsignedLongLongValue6 = [v57 unsignedLongLongValue];

        v101[0] = @"FullAnalysisStillImageProcessed";
        v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue4];
        v102[0] = v59;
        v101[1] = @"FullAnalysisLivePhotoProcessed";
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue5];
        v102[1] = v60;
        v101[2] = @"FullAnalysisVideoProcessed";
        v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongLongValue6];
        v102[2] = v61;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
        [dictionary addEntriesFromDictionary:v62];

        v90 = unsignedLongLongValue5 + unsignedLongLongValue4 + unsignedLongLongValue6;
      }

      else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v63 = objc_opt_class();
        v64 = [v85 description];
        *buf = 138412546;
        dCopy = v63;
        v105 = 2112;
        v106 = v64;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Failed to get processed assets breakdown count from Photos (%@)", buf, 0x16u);
      }
    }

    else
    {
      if (d != 3)
      {
LABEL_59:
        if (+[MADManagedProcessingStatus isMACDReadEnabled])
        {
          v69 = [mad_fetchRequest fetchAssetCountForTaskID:d status:2];
          v70 = [mad_fetchRequest fetchAssetCountForTaskID:d status:7];
          v71 = [mad_fetchRequest fetchAssetCountForTaskID:d status:3];
          v72 = [mad_fetchRequest fetchAssetCountForTaskID:d status:4];
          v73 = [mad_fetchRequest fetchAssetCountForTaskID:d minimumAttempts:2];
        }

        else
        {
          v69 = [v94 countForTaskID:d withProcessingStatus:2];
          v70 = [v94 countForTaskID:d withProcessingStatus:7];
          v71 = [v94 countForTaskID:d withProcessingStatus:3];
          v72 = [v94 countForTaskID:d withProcessingStatus:4];
          v73 = [v94 countForTaskID:d minimumAttempts:2];
        }

        if (v70 + v69 + v71 + v72 >= (v91 - v90))
        {
          v74 = v91 - v90;
        }

        else
        {
          v74 = v70 + v69 + v71 + v72;
        }

        if (v73 >= v74)
        {
          v75 = v74;
        }

        else
        {
          v75 = v73;
        }

        v99[0] = @"sticky-failed";
        v76 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v75];
        v100[0] = v76;
        v99[1] = @"failed";
        v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v74];
        v100[1] = v77;
        v99[2] = @"processed";
        v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v90];
        v100[2] = v78;
        v99[3] = @"total-allowed";
        v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v91];
        v100[3] = v79;
        v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:4];
        [dictionary addEntriesFromDictionary:v80];

        v81 = dictionary;
        v26 = 0;
        v40 = dictionary;
        *express = dictionary;
        goto LABEL_69;
      }

      if (blockCopy && blockCopy[2]())
      {
        if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 0;
        v27 = MEMORY[0x1E69E9C10];
LABEL_44:
        _os_log_impl(&dword_1C9B70000, v27, OS_LOG_TYPE_DEFAULT, "Cancelled during _queryProgressDetailExpress", buf, 2u);
LABEL_45:
        v26 = -128;
        v40 = dictionary;
LABEL_69:

        goto LABEL_70;
      }

      v39 = [libraryCopy vcp_assetCountForTaskID:3 withPriority:1];
      if (blockCopy && blockCopy[2]())
      {
        if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_45;
        }

        *buf = 0;
        v27 = MEMORY[0x1E69E9C10];
        goto LABEL_44;
      }

      v41 = [libraryCopy vcp_processedAssetCountForTaskID:3 withPriority:1];
      if (+[MADManagedKeyValueStore isMACDReadEnabled])
      {
        mad_fetchRequest2 = [libraryCopy mad_fetchRequest];
        v43 = [mad_fetchRequest2 dataStoreValueForKey:@"NumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing"];
        v44 = [mad_fetchRequest2 dataStoreValueForKey:@"VCPKeyValueLastPromoterTimestamp"];
      }

      else
      {
        v43 = [v94 valueForKey:@"NumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing"];
        v44 = [v94 valueForKey:@"VCPKeyValueLastPromoterTimestamp"];
      }

      v109[0] = @"prioritized-processed";
      v85 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v41];
      v110[0] = v85;
      v109[1] = @"prioritized-total-allowed";
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
      v110[1] = v51;
      v109[2] = @"pet-vip-status";
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 1)}];
      v110[2] = v52;
      v109[3] = @"person-vip-status";
      v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_vipStatusForPhotoLibrary:type:", libraryCopy, 0)}];
      v110[3] = v65;
      v109[4] = @"processed-assets-with-promoter";
      v66 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
      v110[4] = v66;
      v109[5] = @"last-promoter-timestamp";
      v67 = [MEMORY[0x1E696AD98] numberWithLongLong:v44];
      v110[5] = v67;
      v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:6];
      [dictionary addEntriesFromDictionary:v68];
    }

    goto LABEL_59;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupported taskID (%lu)", buf, 0xCu);
  }

  v26 = -50;
LABEL_70:

  return v26;
}

+ (int)queryProgressDetail:(id *)detail photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  v32 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  blockCopy = block;
  v12 = blockCopy;
  if (blockCopy && (*(blockCopy + 2))(blockCopy))
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v13 = VCPTaskIDDescription(d);
      *buf = 138412290;
      v31 = v13;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] Cancelled during queryProgressDetail", buf, 0xCu);
    }

    v14 = -128;
  }

  else
  {
    v15 = mach_absolute_time();
    v16 = VCPSignPostLog(v15);
    v17 = os_signpost_id_generate(v16);

    v19 = VCPSignPostLog(v18);
    v20 = v19;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "VCPAnalysisProgressQueryProgressDetail", "", buf, 2u);
    }

    if (d <= 0x10 && ((1 << d) & 0x1140E) != 0 || d == 255)
    {
      if ([self _screenProgress])
      {
        v29 = 0;
        v14 = [VCPAnalysisProgressQuery _scanPhotoLibrary:libraryCopy taskID:d statistics:&v29 cancelOrExtendTimeoutBlock:v12];
        v21 = v29;
        v22 = v21;
        if (!v14)
        {
          v23 = v21;
          *detail = v22;
          v24 = VCPSignPostLog(v23);
          v25 = v24;
          if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, v17, "VCPAnalysisProgressQueryProgressDetail", "", buf, 2u);
          }

          if (v15)
          {
            v26 = mach_absolute_time();
            VCPPerformance_LogMeasurement("VCPAnalysisProgressQueryProgressDetail", v26 - v15);
          }
        }
      }

      else
      {
        v14 = [self _queryProgressDetailExpress:detail photoLibrary:libraryCopy taskID:d cancelOrExtendTimeoutBlock:v12];
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = VCPTaskIDDescription(d);
        *buf = 138412290;
        v31 = v27;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Query progress: unsupported taskID (%@)", buf, 0xCu);
      }

      v14 = -50;
    }
  }

  return v14;
}

+ (int)queryAnalysisProgress:(float *)progress photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v30 = mach_absolute_time();
  v12 = VCPSignPostLog(v30);
  v13 = os_signpost_id_generate(v12);

  v15 = VCPSignPostLog(v14);
  v16 = v15;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "VCPAnalysisProgressQueryProgress", "", buf, 2u);
  }

  v32 = 0;
  v17 = [self queryProgressDetail:&v32 photoLibrary:libraryCopy taskID:d cancelOrExtendTimeoutBlock:blockCopy];
  v18 = v32;
  v19 = v18;
  if (!v17)
  {
    v20 = [v18 objectForKeyedSubscript:@"processed"];
    unsignedIntegerValue = [v20 unsignedIntegerValue];

    v22 = [v19 objectForKeyedSubscript:@"total-allowed"];
    unsignedIntegerValue2 = [v22 unsignedIntegerValue];

    if (unsignedIntegerValue2)
    {
      v25 = unsignedIntegerValue / unsignedIntegerValue2;
    }

    else
    {
      v25 = 1.0;
    }

    *progress = v25;
    v26 = VCPSignPostLog(v24);
    v27 = v26;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *v31 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_END, v13, "VCPAnalysisProgressQueryProgress", "", v31, 2u);
    }

    if (v30)
    {
      v28 = mach_absolute_time();
      VCPPerformance_LogMeasurement("VCPAnalysisProgressQueryProgress", v28 - v30);
    }
  }

  return v17;
}

+ (int)queryCachedFaceAnalysisProgress:(id *)progress photoLibrary:(id)library
{
  v43 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (progress)
  {
    v33 = mach_absolute_time();
    v6 = VCPSignPostLog(v33);
    v7 = os_signpost_id_generate(v6);

    v9 = VCPSignPostLog(v8);
    v10 = v9;
    spid = v7;
    v11 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "VCPAnalysisProgressQueryCachedFaceAnalysisProgress", "", buf, 2u);
    }

    v12 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
    if (v12)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __73__VCPAnalysisProgressQuery_queryCachedFaceAnalysisProgress_photoLibrary___block_invoke;
      aBlock[3] = &unk_1E834D780;
      v35 = libraryCopy;
      v36 = v12;
      v13 = _Block_copy(aBlock);
      v14 = v13[2](v13, @"NumberOfAssetsAllowedForPhotosFaceProcessing");
      if (v14)
      {
        v15 = v13[2](v13, @"NumberOfAssetsAnalyzedForPhotosFaceProcessing");
        v16 = v13[2](v13, @"NumberOfPrioritizedAssetsAnalyzedForPhotosFaceProcessing");
        v17 = v13[2](v13, @"NumberOfPrioritizedAssetsAllowedForPhotosFaceProcessing");
        v31 = v13[2](v13, @"NumberOfProcessedAssetsAfterPromoterForPhotosFaceProcessing");
        v30 = v13[2](v13, @"VCPKeyValueLastPromoterTimestamp");
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218240;
          v40 = v15;
          v41 = 2048;
          v42 = v14;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CachedProgress] Query cached face progress: %ld out of %ld", buf, 0x16u);
        }

        v37[0] = @"prioritized-processed";
        v29 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
        v38[0] = v29;
        v37[1] = @"prioritized-total-allowed";
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
        v38[1] = v18;
        v37[2] = @"processed";
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
        v38[2] = v19;
        v37[3] = @"total-allowed";
        v20 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        v38[3] = v20;
        v37[4] = @"processed-assets-with-promoter";
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:v31];
        v38[4] = v21;
        v37[5] = @"last-promoter-timestamp";
        v22 = [MEMORY[0x1E696AD98] numberWithLongLong:v30];
        v38[5] = v22;
        *progress = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:6];

        v24 = VCPSignPostLog(v23);
        v25 = v24;
        if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v25, OS_SIGNPOST_INTERVAL_END, spid, "VCPAnalysisProgressQueryCachedFaceAnalysisProgress", "", buf, 2u);
        }

        if (v33)
        {
          v26 = mach_absolute_time();
          VCPPerformance_LogMeasurement("VCPAnalysisProgressQueryCachedFaceAnalysisProgress", v26 - v33);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CachedProgress] No cached values", buf, 2u);
      }

      v27 = 0;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CachedProgress] Failed to open MediaAnalysis database", buf, 2u);
      }

      v27 = -18;
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CachedProgress] Nil input parameter 'progress'", buf, 2u);
    }

    v27 = -50;
  }

  return v27;
}

uint64_t __73__VCPAnalysisProgressQuery_queryCachedFaceAnalysisProgress_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[MADManagedKeyValueStore isMACDReadEnabled])
  {
    v4 = [*(a1 + 32) mad_fetchRequest];
    v5 = [v4 dataStoreValueForKey:v3];
  }

  else
  {
    v5 = [*(a1 + 40) valueForKey:v3];
  }

  return v5;
}

+ (int)queryVideoCountAndDurationBreakdown:(id)breakdown photoLibrary:(id)library taskID:(unint64_t)d cancelOrExtendTimeoutBlock:(id)block
{
  v106 = *MEMORY[0x1E69E9840];
  breakdownCopy = breakdown;
  libraryCopy = library;
  blockCopy = block;
  v87 = breakdownCopy;
  if (d != 1)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = VCPTaskIDDescription(d);
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProgressQuery] Unable to query video duration progress for task %@", buf, 0xCu);
    }

    v13 = -4;
    goto LABEL_74;
  }

  if (!breakdownCopy)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ProgressQuery](Video duration) output progress dictionary must be non-nil", buf, 2u);
    }

    v13 = -50;
    goto LABEL_74;
  }

  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = VCPTaskIDDescription(1);
    *buf = 134218242;
    *&buf[4] = 1;
    v104 = 2112;
    v105 = v11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[ProgressQuery](Video duration) scan library duration for %lu - %@", buf, 0x16u);
  }

  v82 = [VCPDatabaseReader databaseForPhotoLibrary:libraryCopy];
  if (+[MADManagedProcessingStatus isMACDReadEnabled])
  {
    mad_fetchRequest = [libraryCopy mad_fetchRequest];
  }

  else
  {
    mad_fetchRequest = 0;
  }

  v70 = [libraryCopy fetchOptionsForMediaProcessingTaskID:PHMediaProcessingTaskIDForVCPTaskID(1) priority:4 algorithmVersion:0 sceneConfidenceThreshold:0 processed:0 exactVersionMatch:0 error:0.0];
  v14 = [MEMORY[0x1E6978628] fetchAssetsWithOptions:?];
  v15 = 0;
  v88 = 0;
  v90 = 0;
  v83 = 0;
  v85 = 0;
  v93 = 0;
  v66 = 0;
  v68 = 0;
  v72 = 0;
  v75 = 0;
  v77 = 0;
  v80 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v71 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v74 = 0.0;
  while (1)
  {
    if (v17 >= [v14 count])
    {
      v100[0] = @"FullAnalysisVideoCount";
      v95 = [MEMORY[0x1E696AD98] numberWithLongLong:v90];
      v101[0] = v95;
      v100[1] = @"FullAnalysisSlowmoVideoCount";
      v91 = [MEMORY[0x1E696AD98] numberWithLongLong:v16];
      v101[1] = v91;
      v100[2] = @"FullAnalysisLongVideoCount";
      v89 = [MEMORY[0x1E696AD98] numberWithLongLong:v88];
      v101[2] = v89;
      v100[3] = @"FullAnalysisVideoProcessed";
      v86 = [MEMORY[0x1E696AD98] numberWithLongLong:v85];
      v101[3] = v86;
      v100[4] = @"FullAnalysisSlowmoVideoProcessed";
      v94 = [MEMORY[0x1E696AD98] numberWithLongLong:v93];
      v101[4] = v94;
      v100[5] = @"FullAnalysisLongVideoProcessed";
      v84 = [MEMORY[0x1E696AD98] numberWithLongLong:v83];
      v101[5] = v84;
      v100[6] = @"FullAnalysisVideoFailed";
      type = [MEMORY[0x1E696AD98] numberWithLongLong:v68];
      v101[6] = type;
      v100[7] = @"FullAnalysisSlowmoVideoFailed";
      v73 = [MEMORY[0x1E696AD98] numberWithLongLong:v72];
      v101[7] = v73;
      v100[8] = @"FullAnalysisLongVideoFailed";
      v69 = [MEMORY[0x1E696AD98] numberWithLongLong:v66];
      v101[8] = v69;
      v100[9] = @"FullAnalysisVideoGated";
      v78 = [MEMORY[0x1E696AD98] numberWithLongLong:v77];
      v101[9] = v78;
      v100[10] = @"FullAnalysisSlowmoVideoGated";
      v81 = [MEMORY[0x1E696AD98] numberWithLongLong:v80];
      v101[10] = v81;
      v100[11] = @"FullAnalysisLongVideoGated";
      v76 = [MEMORY[0x1E696AD98] numberWithLongLong:v75];
      v101[11] = v76;
      v100[12] = @"VideoDuration";
      v67 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v101[12] = v67;
      v100[13] = @"SlowmoVideoDuration";
      v63 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      v101[13] = v63;
      v100[14] = @"LongVideoDuration";
      v62 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      v101[14] = v62;
      v100[15] = @"ProcessedVideoDuration";
      v61 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      v101[15] = v61;
      v100[16] = @"ProcessedSlowmoVideoDuration";
      v60 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
      v101[16] = v60;
      v100[17] = @"ProcessedLongVideoDuration";
      v51 = [MEMORY[0x1E696AD98] numberWithDouble:v23];
      v101[17] = v51;
      v100[18] = @"FailedVideoDuration";
      v52 = [MEMORY[0x1E696AD98] numberWithDouble:v65];
      v101[18] = v52;
      v100[19] = @"FailedSlowmoVideoDuration";
      v53 = [MEMORY[0x1E696AD98] numberWithDouble:v71];
      v101[19] = v53;
      v100[20] = @"FailedLongVideoDuration";
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v64];
      v101[20] = v54;
      v100[21] = @"GatedVideoDuration";
      v55 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
      v101[21] = v55;
      v100[22] = @"GatedSlowmoVideoDuration";
      v56 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
      v101[22] = v56;
      v100[23] = @"GatedLongVideoDuration";
      v57 = [MEMORY[0x1E696AD98] numberWithDouble:v74];
      v101[23] = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:24];
      [v87 addEntriesFromDictionary:v58];

      v13 = 0;
      goto LABEL_73;
    }

    v26 = objc_autoreleasePoolPush();
    v27 = blockCopy == 0;
    if (v15 + 1000 * (v17 / 0x3E8))
    {
      v27 = 1;
    }

    if (v27 || !blockCopy[2](blockCopy))
    {
      v30 = [v14 objectAtIndexedSubscript:v17];
      if (([v30 vcp_needsFullAnalysisProcessing:0] & 1) == 0)
      {
        if ([v30 vcp_isVideoSlowmo])
        {
          objc_msgSend_duration(v30);
          v22 = v22 + v34;
          ++v93;
        }

        else if ([v30 vcp_isLongMovie])
        {
          objc_msgSend_duration(v30);
          v23 = v23 + v35;
          ++v83;
        }

        else
        {
          objc_msgSend_duration(v30);
          v21 = v21 + v40;
          ++v85;
        }

        goto LABEL_55;
      }

      if (mad_fetchRequest)
      {
        *buf = 0;
        v99 = 0;
        v97 = 0;
        v98 = 0;
        localIdentifier = [v30 localIdentifier];
        v32 = [mad_fetchRequest fetchProcessingStatus:buf attempts:&v99 lastAttemptDate:&v98 nextAttemptDate:&v97 localIdentifier:localIdentifier taskID:1];
        v33 = v98;

        if (v32)
        {

          v29 = 12;
LABEL_60:

          goto LABEL_61;
        }

        if (*buf > 6)
        {
          if (*buf == 7)
          {
LABEL_47:

LABEL_48:
            if ([v30 vcp_isVideoSlowmo])
            {
              objc_msgSend_duration(v30);
              v25 = v25 + v41;
              ++v80;
            }

            else if ([v30 vcp_isLongMovie])
            {
              objc_msgSend_duration(v30);
              v74 = v74 + v42;
              ++v75;
            }

            else
            {
              objc_msgSend_duration(v30);
              v24 = v24 + v43;
              ++v77;
            }

            goto LABEL_55;
          }

          if (*buf != 0x7FFFLL)
          {
LABEL_64:

            goto LABEL_66;
          }
        }

        else if (*buf >= 2uLL)
        {
          if (*buf != 2)
          {
            goto LABEL_64;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v102 = v30;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
        v37 = [v82 queryFailedProcessingStatusFromAssets:v36 forTaskID:1];

        localIdentifier2 = [v30 localIdentifier];
        v39 = [v37 objectForKeyedSubscript:localIdentifier2];

        if (!v39)
        {
          goto LABEL_54;
        }

        if ([v39 status] == 2 || objc_msgSend(v39, "status") == 7)
        {

          goto LABEL_48;
        }

        if ([v39 status] != 1)
        {
          v47 = [v39 status] == 0x7FFF;

          if (!v47)
          {
LABEL_66:
            if ([v30 vcp_isVideoSlowmo])
            {
              objc_msgSend_duration(v30);
              v71 = v71 + v48;
              ++v72;
            }

            else if ([v30 vcp_isLongMovie])
            {
              objc_msgSend_duration(v30);
              v64 = v64 + v49;
              ++v66;
            }

            else
            {
              objc_msgSend_duration(v30);
              v65 = v65 + v50;
              ++v68;
            }
          }
        }

        else
        {
LABEL_54:
        }
      }

LABEL_55:
      if ([v30 vcp_isVideoSlowmo])
      {
        objc_msgSend_duration(v30);
        v29 = 0;
        v19 = v19 + v44;
        ++v16;
      }

      else if ([v30 vcp_isLongMovie])
      {
        objc_msgSend_duration(v30);
        v29 = 0;
        v20 = v20 + v45;
        ++v88;
      }

      else
      {
        objc_msgSend_duration(v30);
        v29 = 0;
        v18 = v18 + v46;
        ++v90;
      }

      goto LABEL_60;
    }

    if (MediaAnalysisLogLevel() >= 5)
    {
      v28 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, v28, OS_LOG_TYPE_DEFAULT, "Cancelled during queryVideoDurationProgress", buf, 2u);
      }
    }

    v29 = 1;
LABEL_61:
    objc_autoreleasePoolPop(v26);
    if (v29 != 12)
    {
      if (v29)
      {
        break;
      }
    }

    ++v17;
    --v15;
  }

  v13 = -128;
LABEL_73:

LABEL_74:
  return v13;
}

@end