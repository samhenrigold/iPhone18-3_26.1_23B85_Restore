@interface ATXHeroClipManager
+ (BOOL)clipsSupported;
+ (id)addPredictionLocationToHeroAppPredictions:(id)predictions location:(id)location;
+ (id)sortPredictionsOnFeedback:(id)feedback;
+ (void)openAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion;
- (ATXHeroClipManager)init;
- (ATXHeroClipManager)initWithFeedback:(id)feedback;
- (ATXHeroClipManager)initWithFeedback:(id)feedback tracker:(id)tracker;
- (id)_populateMetadataInHeroAppPrediction:(id)prediction;
- (void)donateAppClipsWithHeroAppPredictions:(id)predictions;
- (void)logSuppressionMetricWithHeroAppPrediction:(id)prediction suppresionType:(int)type;
@end

@implementation ATXHeroClipManager

+ (BOOL)clipsSupported
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x277CFA6B8] isSupported])
  {
    v3 = CFPreferencesCopyAppValue(@"SuggestionsSuggestAppClips", @"com.apple.suggestions");
    v4 = v3;
    if (v3)
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  objc_autoreleasePoolPop(v2);
  return bOOLValue;
}

- (ATXHeroClipManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHeroClipManager *)self initWithFeedback:v3];

  return v4;
}

- (ATXHeroClipManager)initWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = objc_opt_new();
  v6 = [(ATXHeroClipManager *)self initWithFeedback:feedbackCopy tracker:v5];

  return v6;
}

- (ATXHeroClipManager)initWithFeedback:(id)feedback tracker:(id)tracker
{
  feedbackCopy = feedback;
  trackerCopy = tracker;
  v12.receiver = self;
  v12.super_class = ATXHeroClipManager;
  v9 = [(ATXHeroClipManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_feedback, feedback);
    objc_storeStrong(&v10->_tracker, tracker);
  }

  return v10;
}

- (void)donateAppClipsWithHeroAppPredictions:(id)predictions
{
  v59 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  clipsSupported = [objc_opt_class() clipsSupported];
  if ((clipsSupported & 1) == 0)
  {
    v6 = __atxlog_handle_hero(clipsSupported);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Clearing App Clips Suggestions, since ClipServices are not supported on this device.", buf, 2u);
    }

    predictionsCopy = MEMORY[0x277CBEBF8];
  }

  if (![(ATXAppClipsFeedback *)self->_feedback shouldShowAppClips])
  {

    predictionsCopy = MEMORY[0x277CBEBF8];
  }

  v7 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = predictionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v50 + 1) + 8 * i);
        if ([(ATXAppClipsFeedback *)self->_feedback shouldShowAppClipWithHeroAppPrediction:v13])
        {
          [v7 addObject:v13];
        }

        else
        {
          [(ATXHeroClipManager *)self logSuppressionMetricWithHeroAppPrediction:v13 suppresionType:1];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    getCurrentPreciseLocation = [mEMORY[0x277D41BF8] getCurrentPreciseLocation];

    v18 = __atxlog_handle_hero(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [v14 timeIntervalSinceNow];
      *buf = 134217984;
      v57 = -v19;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Took %f seconds to fetch precise location", buf, 0xCu);
    }

    if (getCurrentPreciseLocation)
    {
      v21 = [v7 copy];
      v22 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:v7 currentLocation:getCurrentPreciseLocation];
      v23 = [v22 mutableCopy];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v21;
      v24 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v47;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v47 != v26)
            {
              objc_enumerationMutation(v7);
            }

            v28 = *(*(&v46 + 1) + 8 * j);
            if (([v23 containsObject:v28] & 1) == 0)
            {
              [(ATXHeroClipManager *)self logSuppressionMetricWithHeroAppPrediction:v28 suppresionType:0];
            }
          }

          v25 = [v7 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v25);
      }
    }

    else
    {
      v29 = __atxlog_handle_hero(v20);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroClipManager donateAppClipsWithHeroAppPredictions:];
      }

      v23 = objc_opt_new();
    }

    v30 = [objc_opt_class() addPredictionLocationToHeroAppPredictions:v23 location:getCurrentPreciseLocation];
    v7 = [v30 mutableCopy];
  }

  v31 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = v7;
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v43;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v42 + 1) + 8 * k);
        v38 = [(ATXHeroClipManager *)self _populateMetadataInHeroAppPrediction:v37, v42];
        if (v38)
        {
          [v31 addObject:v38];
        }

        else
        {
          [(ATXHeroClipManager *)self logSuppressionMetricWithHeroAppPrediction:v37 suppresionType:2];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v34);
  }

  v39 = [objc_opt_class() sortPredictionsOnFeedback:v31];
  v40 = __atxlog_handle_hero(v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = [v39 description];
    *buf = 138412290;
    v57 = *&v41;
    _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "Sending app clips predictions to blending layer. Predictions: %@", buf, 0xCu);
  }

  [ATXAppClipsBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v39];
}

- (void)logSuppressionMetricWithHeroAppPrediction:(id)prediction suppresionType:(int)type
{
  v4 = *&type;
  predictionCopy = prediction;
  v9 = objc_opt_new();
  bundleId = [predictionCopy bundleId];
  [v9 setBundleId:bundleId];

  urlHash = [predictionCopy urlHash];

  [v9 setUrlHash:urlHash];
  [v9 setSuppressionType:v4];
  [(ATXPETEventTracker2Protocol *)self->_tracker trackScalarForMessage:v9];
}

- (id)_populateMetadataInHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  [(ATXAppClipsFeedback *)self->_feedback feedbackScoreForAppClipWithHeroAppPrediction:predictionCopy];
  [predictionCopy setScore:?];
  urlHash = [predictionCopy urlHash];

  if (urlHash)
  {
    v7 = objc_alloc(MEMORY[0x277CFA6A8]);
    urlHash2 = [predictionCopy urlHash];
    v9 = [v7 initWithURLHash:urlHash2];

    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy__79;
    v38 = __Block_byref_object_dispose__79;
    v39 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__79;
    v32 = __Block_byref_object_dispose__79;
    v33 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v10 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke;
    v18[3] = &unk_27859F728;
    v21 = &v24;
    v11 = v10;
    v19 = v11;
    v22 = &v34;
    v12 = v9;
    v20 = v12;
    v23 = &v28;
    [v12 requestMetadataWithCompletion:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2;
    v17[3] = &unk_2785967D8;
    v17[4] = &v24;
    [MEMORY[0x277D425A0] waitForSemaphore:v11 timeoutSeconds:&__block_literal_global_178 onAcquire:v17 onTimeout:30.0];
    if (v25[3])
    {
      v13 = 0;
    }

    else
    {
      clipBundleID = [v35[5] clipBundleID];
      [predictionCopy setBundleId:clipBundleID];

      [predictionCopy setClipMetadata:v35[5]];
      path = [v29[5] path];
      [v35[5] setFullAppCachedIconFilePath:path];

      v13 = predictionCopy;
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v12 = __atxlog_handle_hero(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ATXHeroClipManager _populateMetadataInHeroAppPrediction:];
    }

    v13 = 0;
  }

  return v13;
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = __atxlog_handle_hero(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34;
    v14[3] = &unk_27859F700;
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    v16 = *(a1 + 48);
    v17 = v12;
    v15 = *(a1 + 32);
    [v11 requestDownloadedIconWithMetadata:v10 completion:v14];
  }

  else
  {
    v13 = __atxlog_handle_hero(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_2();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = __atxlog_handle_hero(v4);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 absoluteString];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Got clip icon! %@", &v8, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2(uint64_t a1)
{
  v2 = __atxlog_handle_hero(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

+ (id)sortPredictionsOnFeedback:(id)feedback
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC98];
  feedbackCopy = feedback;
  v5 = [[v3 alloc] initWithKey:@"score" ascending:0];
  v6 = __atxlog_handle_hero(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Sorting clip predictions based on score.", v10, 2u);
  }

  v11[0] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [feedbackCopy sortedArrayUsingDescriptors:v7];

  return v8;
}

+ (id)addPredictionLocationToHeroAppPredictions:(id)predictions location:(id)location
{
  v21 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  locationCopy = location;
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = predictionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [locationCopy coordinate];
        [v13 setLatitudeAtPredictionTime:?];
        [locationCopy coordinate];
        [v13 setLongitudeAtPredictionTime:v14];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (void)openAppClipWithHeroAppPrediction:(id)prediction completion:(id)completion
{
  predictionCopy = prediction;
  completionCopy = completion;
  clipsSupported = [self clipsSupported];
  if (clipsSupported)
  {
    clipMetadata = [predictionCopy clipMetadata];
    clipURL = [clipMetadata clipURL];

    if (clipURL)
    {
      clipMetadata2 = [predictionCopy clipMetadata];
      clipURL2 = [clipMetadata2 clipURL];

      v14 = [objc_alloc(MEMORY[0x277CFA6B0]) initWithURL:clipURL2];
      [v14 setShouldReturnErrorOnUserCancellation:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke;
      v19[3] = &unk_278596990;
      v20 = clipURL2;
      v21 = completionCopy;
      v15 = clipURL2;
      [v14 requestClipWithCompletion:v19];

      goto LABEL_10;
    }

    v16 = __atxlog_handle_hero(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroClipManager openAppClipWithHeroAppPrediction:completion:];
    }
  }

  else
  {
    v16 = __atxlog_handle_hero(clipsSupported);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Ignoring App Clips Suggestions, since ClipServices are not supported on this device.", buf, 2u);
    }
  }

  v14 = +[ATXHeroAndClipConstants sharedInstance];
  v17 = MEMORY[0x277CCA9B8];
  appClipsErrorDomain = [v14 appClipsErrorDomain];
  v15 = [v17 errorWithDomain:appClipsErrorDomain code:objc_msgSend(v14 userInfo:{"appClipsLaunchErrorCode"), 0}];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v15);
  }

LABEL_10:
}

void __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_hero(v5);
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __66__ATXHeroClipManager_openAppClipWithHeroAppPrediction_completion___block_invoke_cold_1();
    }

    if ([v5 code] != 8)
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      [v11 openURL:*(a1 + 32) withOptions:0];
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v10 = *(v12 + 16);
      goto LABEL_13;
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Request succeeded for app clip with url: %@", &v13, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = *(v9 + 16);
LABEL_13:
      v10();
    }
  }
}

- (void)donateAppClipsWithHeroAppPredictions:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_34_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__ATXHeroClipManager__populateMetadataInHeroAppPrediction___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)openAppClipWithHeroAppPrediction:completion:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end