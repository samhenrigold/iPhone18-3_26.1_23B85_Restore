@interface ATXAppClipsFeedback
- (ATXAppClipsFeedback)init;
- (ATXAppClipsFeedback)initWithAppClipsHistogram:(id)histogram appClipsHistogramNoDecay:(id)decay;
- (BOOL)_shouldHideAppClipForLowEngagementNoDecay:(id)decay;
- (BOOL)shouldShowAppClipWithHeroAppPrediction:(id)prediction;
- (BOOL)shouldShowAppClips;
- (double)_confirmsForAppClipWithHeroAppPrediction:(id)prediction;
- (double)_confirmsForAppClipWithHeroAppPredictionNoDecay:(id)decay;
- (double)_engagementForAppClipWithHeroAppPrediction:(id)prediction;
- (double)_engagementForAppClipWithHeroAppPredictionNoDecay:(id)decay;
- (double)_overallAppClipsengagement;
- (double)_rejectsForAppClipWithHeroAppPrediction:(id)prediction;
- (double)_rejectsForAppClipWithHeroAppPredictionNoDecay:(id)decay;
- (double)feedbackScoreForAppClipWithHeroAppPrediction:(id)prediction;
- (void)addConfirmForAppClipWithHeroAppPrediction:(id)prediction weight:(float)weight;
- (void)addRejectForAppClipWithHeroAppPrediction:(id)prediction weight:(float)weight;
@end

@implementation ATXAppClipsFeedback

- (ATXAppClipsFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:49];
  v5 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v6 = [v5 categoricalHistogramForLaunchType:94];
  v7 = [(ATXAppClipsFeedback *)self initWithAppClipsHistogram:v4 appClipsHistogramNoDecay:v6];

  return v7;
}

- (ATXAppClipsFeedback)initWithAppClipsHistogram:(id)histogram appClipsHistogramNoDecay:(id)decay
{
  histogramCopy = histogram;
  decayCopy = decay;
  v12.receiver = self;
  v12.super_class = ATXAppClipsFeedback;
  v9 = [(ATXAppClipsFeedback *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appClipsAndHeroAppHistogram, histogram);
    objc_storeStrong(&v10->_appClipsAndHeroAppHistogramNoDecay, decay);
  }

  return v10;
}

- (void)addConfirmForAppClipWithHeroAppPrediction:(id)prediction weight:(float)weight
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  predictionCopy = prediction;
  urlHash = [predictionCopy urlHash];
  v9 = [MEMORY[0x277CBEAA8] now];
  *&v10 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram addLaunchWithBundleId:urlHash date:v9 category:@"confirms_clips" weight:v10];

  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  urlHash2 = [predictionCopy urlHash];

  v12 = [MEMORY[0x277CBEAA8] now];
  *&v13 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay addLaunchWithBundleId:urlHash2 date:v12 category:@"confirms_clips" weight:v13];
}

- (void)addRejectForAppClipWithHeroAppPrediction:(id)prediction weight:(float)weight
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  predictionCopy = prediction;
  urlHash = [predictionCopy urlHash];
  v9 = [MEMORY[0x277CBEAA8] now];
  *&v10 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram addLaunchWithBundleId:urlHash date:v9 category:@"rejects_clips" weight:v10];

  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  urlHash2 = [predictionCopy urlHash];

  v12 = [MEMORY[0x277CBEAA8] now];
  *&v13 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay addLaunchWithBundleId:urlHash2 date:v12 category:@"rejects_clips" weight:v13];
}

- (BOOL)shouldShowAppClipWithHeroAppPrediction:(id)prediction
{
  v46 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  if (![MEMORY[0x277D42590] isInternalBuild] || (v5 = *MEMORY[0x277CEBDC8], LOBYTE(v36) = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, *MEMORY[0x277CEBD00], &v36), !AppBooleanValue))
  {
    v7 = +[ATXHeroAndClipConstants sharedInstance];
    if ([(ATXAppClipsFeedback *)self _shouldHideAppClipForLowEngagementNoDecay:predictionCopy])
    {
      [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPredictionNoDecay:predictionCopy];
      v10 = v9;
      [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPredictionNoDecay:predictionCopy];
      v12 = v11;
      v13 = [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPredictionNoDecay:predictionCopy];
      v15 = v14;
      v16 = __atxlog_handle_hero(v13);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }

      [v7 appClipsPerAppClipEngagementThresholdNoDecay];
      v36 = 138413314;
      v37 = predictionCopy;
      v38 = 2048;
      v39 = v10;
      v40 = 2048;
      v41 = v12;
      v42 = 2048;
      v43 = v17;
      v44 = 2048;
      v45 = v15;
      v18 = "%@ has enough non-decaying rejects: %f, and engagement is: %f which is less than the threshold: %f. Hence, not showing this suggestion. Confirms: %f.";
LABEL_9:
      _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, v18, &v36, 0x34u);
      goto LABEL_10;
    }

    [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPrediction:predictionCopy];
    v20 = v19;
    [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPrediction:predictionCopy];
    v22 = v21;
    appClipsPerAppClipMinRejects = [v7 appClipsPerAppClipMinRejects];
    if (v20 >= v24)
    {
      [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPrediction:predictionCopy];
      v29 = v28;
      appClipsPerAppClipEngagementThreshold = [v7 appClipsPerAppClipEngagementThreshold];
      v32 = v31;
      v16 = __atxlog_handle_hero(appClipsPerAppClipEngagementThreshold);
      v33 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v29 < v32)
      {
        if (!v33)
        {
          goto LABEL_10;
        }

        [v7 appClipsPerAppClipEngagementThreshold];
        v36 = 138413314;
        v37 = predictionCopy;
        v38 = 2048;
        v39 = v20;
        v40 = 2048;
        v41 = v29;
        v42 = 2048;
        v43 = v34;
        v44 = 2048;
        v45 = v22;
        v18 = "%@ has enough rejects: %f, and engagement is: %f which is less than the threshold: %f. Hence, not showing this suggestion. Confirms: %f.";
        goto LABEL_9;
      }

      if (v33)
      {
        v36 = 134218496;
        v37 = v22;
        v38 = 2048;
        v39 = v20;
        v40 = 2048;
        v41 = v29;
        v25 = "All app clip specific thresholds passed. Confirms: %f, Rejects: %f, Engagement: %f";
        v26 = v16;
        v27 = 32;
        goto LABEL_19;
      }
    }

    else
    {
      v16 = __atxlog_handle_hero(appClipsPerAppClipMinRejects);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 134218240;
        v37 = v22;
        v38 = 2048;
        v39 = v20;
        v25 = "Not enough app clip specific rejects to consider engagement.  Confirms: %f, Rejects: %f ";
        v26 = v16;
        v27 = 22;
LABEL_19:
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, v25, &v36, v27);
      }
    }

    v8 = 1;
    goto LABEL_21;
  }

  v7 = __atxlog_handle_hero(AppBooleanValue);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v36) = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding app clip user engagement feedback", &v36, 2u);
  }

  v8 = 1;
LABEL_22:

  return v8;
}

- (double)feedbackScoreForAppClipWithHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = +[ATXHeroAndClipConstants sharedInstance];
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPrediction:predictionCopy];
  v7 = v6;
  [v5 appClipsPerAppClipMinRejects];
  v8 = 1.0;
  if (v7 >= v9)
  {
    [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPrediction:predictionCopy];
    v8 = v10;
  }

  return v8;
}

- (BOOL)shouldShowAppClips
{
  v33 = *MEMORY[0x277D85DE8];
  if (![MEMORY[0x277D42590] isInternalBuild] || (v3 = *MEMORY[0x277CEBDC8], LOBYTE(v25) = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, *MEMORY[0x277CEBD00], &v25), !AppBooleanValue))
  {
    v5 = +[ATXHeroAndClipConstants sharedInstance];
    [(ATXAppClipsFeedback *)self _overallConfirms];
    v8 = v7;
    [(ATXAppClipsFeedback *)self _overallRejects];
    v10 = v9;
    appClipsOverallMinRejects = [v5 appClipsOverallMinRejects];
    if (v10 >= v12)
    {
      [(ATXAppClipsFeedback *)self _overallAppClipsengagement];
      v18 = v17;
      appClipsOverallEngagementThreshold = [v5 appClipsOverallEngagementThreshold];
      v21 = v20;
      v13 = __atxlog_handle_hero(appClipsOverallEngagementThreshold);
      v22 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v18 < v21)
      {
        if (v22)
        {
          [v5 appClipsOverallEngagementThreshold];
          v25 = 134218752;
          v26 = v10;
          v27 = 2048;
          v28 = v18;
          v29 = 2048;
          v30 = v23;
          v31 = 2048;
          v32 = v8;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "There are enough overall rejects: %f, and overall App Clips Engagement is: %f which is less than the threshold: %f. Hence, not showing app clip suggestions. Confirms: %f", &v25, 0x2Au);
        }

        v6 = 0;
        goto LABEL_17;
      }

      if (v22)
      {
        v25 = 134218496;
        v26 = v8;
        v27 = 2048;
        v28 = v10;
        v29 = 2048;
        v30 = v18;
        v14 = "All overall app clip thresholds passed. Confirms: %f, Rejects: %f, Engagement: %f";
        v15 = v13;
        v16 = 32;
        goto LABEL_15;
      }
    }

    else
    {
      v13 = __atxlog_handle_hero(appClipsOverallMinRejects);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134218240;
        v26 = v8;
        v27 = 2048;
        v28 = v10;
        v14 = "Not enough overall rejects to consider engagement. Confirms: %f, Rejects: %f";
        v15 = v13;
        v16 = 22;
LABEL_15:
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, v14, &v25, v16);
      }
    }

    v6 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v5 = __atxlog_handle_hero(AppBooleanValue);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding app clip user engagement feedback", &v25, 2u);
  }

  v6 = 1;
LABEL_18:

  return v6;
}

- (double)_overallAppClipsengagement
{
  [(ATXAppClipsFeedback *)self _overallConfirms];
  v4 = v3;
  [(ATXAppClipsFeedback *)self _overallRejects];
  if (v5 == 0.0)
  {
    return 1.0;
  }

  else
  {
    return v4 / (v4 + v5);
  }
}

- (double)_engagementForAppClipWithHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPrediction:predictionCopy];
  v6 = v5;
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPrediction:predictionCopy];
  v8 = v7;

  if (v8 == 0.0)
  {
    return 1.0;
  }

  else
  {
    return v6 / (v6 + v8);
  }
}

- (double)_confirmsForAppClipWithHeroAppPrediction:(id)prediction
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  urlHash = [prediction urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram totalLaunchesForBundleId:urlHash category:@"confirms_clips"];
  v6 = v5;

  return v6;
}

- (double)_rejectsForAppClipWithHeroAppPrediction:(id)prediction
{
  appClipsAndHeroAppHistogram = self->_appClipsAndHeroAppHistogram;
  urlHash = [prediction urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogram totalLaunchesForBundleId:urlHash category:@"rejects_clips"];
  v6 = v5;

  return v6;
}

- (BOOL)_shouldHideAppClipForLowEngagementNoDecay:(id)decay
{
  decayCopy = decay;
  v5 = +[ATXHeroAndClipConstants sharedInstance];
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPredictionNoDecay:decayCopy];
  v7 = v6;
  [v5 appClipsPerAppClipMinRejectsNoDecay];
  if (v7 >= v8)
  {
    [(ATXAppClipsFeedback *)self _engagementForAppClipWithHeroAppPredictionNoDecay:decayCopy];
    v11 = v10;
    [v5 appClipsPerAppClipEngagementThresholdNoDecay];
    v9 = v11 < v12;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)_engagementForAppClipWithHeroAppPredictionNoDecay:(id)decay
{
  decayCopy = decay;
  [(ATXAppClipsFeedback *)self _confirmsForAppClipWithHeroAppPredictionNoDecay:decayCopy];
  v6 = v5;
  [(ATXAppClipsFeedback *)self _rejectsForAppClipWithHeroAppPredictionNoDecay:decayCopy];
  v8 = v7;

  if (v8 == 0.0)
  {
    return 1.0;
  }

  else
  {
    return v6 / (v6 + v8);
  }
}

- (double)_confirmsForAppClipWithHeroAppPredictionNoDecay:(id)decay
{
  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  urlHash = [decay urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay totalLaunchesForBundleId:urlHash category:@"confirms_clips"];
  v6 = v5;

  return v6;
}

- (double)_rejectsForAppClipWithHeroAppPredictionNoDecay:(id)decay
{
  appClipsAndHeroAppHistogramNoDecay = self->_appClipsAndHeroAppHistogramNoDecay;
  urlHash = [decay urlHash];
  [(_ATXAppLaunchCategoricalHistogram *)appClipsAndHeroAppHistogramNoDecay totalLaunchesForBundleId:urlHash category:@"rejects_clips"];
  v6 = v5;

  return v6;
}

@end