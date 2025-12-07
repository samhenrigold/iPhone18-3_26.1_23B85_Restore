@interface ATXHeroAppFeedback
- (ATXHeroAppFeedback)init;
- (ATXHeroAppFeedback)initWithHistogram:(id)histogram;
- (BOOL)shouldShowHeroAppPrediction:(id)prediction;
- (double)_confirmsForHeroAppPrediction:(id)prediction;
- (double)_engagementForHeroAppPrediction:(id)prediction;
- (double)_rejectsForHeroAppPrediction:(id)prediction;
- (void)addConfirmForHeroAppPredictionWithBundleId:(id)id weight:(float)weight;
- (void)addRejectForHeroAppPredictionWithBundleId:(id)id weight:(float)weight;
@end

@implementation ATXHeroAppFeedback

- (ATXHeroAppFeedback)init
{
  v3 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v4 = [v3 categoricalHistogramForLaunchType:49];
  v5 = [(ATXHeroAppFeedback *)self initWithHistogram:v4];

  return v5;
}

- (ATXHeroAppFeedback)initWithHistogram:(id)histogram
{
  histogramCopy = histogram;
  v9.receiver = self;
  v9.super_class = ATXHeroAppFeedback;
  v6 = [(ATXHeroAppFeedback *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heroAppHistogram, histogram);
  }

  return v7;
}

- (void)addConfirmForHeroAppPredictionWithBundleId:(id)id weight:(float)weight
{
  heroAppHistogram = self->_heroAppHistogram;
  v6 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v9 = [v6 now];
  *&v8 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram addLaunchWithBundleId:idCopy date:v9 category:@"confirms_hero" weight:v8];
}

- (void)addRejectForHeroAppPredictionWithBundleId:(id)id weight:(float)weight
{
  heroAppHistogram = self->_heroAppHistogram;
  v6 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v9 = [v6 now];
  *&v8 = weight;
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram addLaunchWithBundleId:idCopy date:v9 category:@"rejects_hero" weight:v8];
}

- (BOOL)shouldShowHeroAppPrediction:(id)prediction
{
  v35 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  if (![MEMORY[0x277D42590] isInternalBuild] || (v5 = *MEMORY[0x277CEBDC8], LOBYTE(v27) = 0, AppBooleanValue = CFPreferencesGetAppBooleanValue(v5, *MEMORY[0x277CEBD00], &v27), !AppBooleanValue))
  {
    v7 = +[ATXHeroAndClipConstants sharedInstance];
    [(ATXHeroAppFeedback *)self _rejectsForHeroAppPrediction:predictionCopy];
    v10 = v9;
    [(ATXHeroAppFeedback *)self _confirmsForHeroAppPrediction:predictionCopy];
    v12 = v11;
    heroAppMinimumRejects = [v7 heroAppMinimumRejects];
    if (v10 >= v14)
    {
      [(ATXHeroAppFeedback *)self _engagementForHeroAppPrediction:predictionCopy];
      v20 = v19;
      heroAppEngagementThreshold = [v7 heroAppEngagementThreshold];
      v23 = v22;
      v15 = __atxlog_handle_hero(heroAppEngagementThreshold);
      v24 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v20 < v23)
      {
        if (v24)
        {
          [v7 heroAppEngagementThreshold];
          v27 = 138413058;
          v28 = predictionCopy;
          v29 = 2048;
          v30 = v10;
          v31 = 2048;
          v32 = v20;
          v33 = 2048;
          v34 = v25;
          _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "%@ has enough rejects: %f, and engagement is: %f which is less than the threshold: %f. Hence, not showing this suggestion.", &v27, 0x2Au);
        }

        v8 = 0;
        goto LABEL_17;
      }

      if (v24)
      {
        v27 = 134218496;
        v28 = v12;
        v29 = 2048;
        v30 = v10;
        v31 = 2048;
        v32 = v20;
        v16 = "All app clip specific thresholds passed. Confirms: %f, Rejects: %f,  engagement: %f";
        v17 = v15;
        v18 = 32;
        goto LABEL_15;
      }
    }

    else
    {
      v15 = __atxlog_handle_hero(heroAppMinimumRejects);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 134218240;
        v28 = v12;
        v29 = 2048;
        v30 = v10;
        v16 = "Not enough rejects to consider engagement. Allowing hero app. Confirms: %f Rejects: %f";
        v17 = v15;
        v18 = 22;
LABEL_15:
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, v16, &v27, v18);
      }
    }

    v8 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v7 = __atxlog_handle_hero(AppBooleanValue);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Defaults for OverrideHeroAppPredictionEligibility set to True: Overriding hero app user engagement feedback", &v27, 2u);
  }

  v8 = 1;
LABEL_18:

  return v8;
}

- (double)_engagementForHeroAppPrediction:(id)prediction
{
  predictionCopy = prediction;
  [(ATXHeroAppFeedback *)self _confirmsForHeroAppPrediction:predictionCopy];
  v6 = v5;
  [(ATXHeroAppFeedback *)self _rejectsForHeroAppPrediction:predictionCopy];
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

- (double)_confirmsForHeroAppPrediction:(id)prediction
{
  heroAppHistogram = self->_heroAppHistogram;
  bundleId = [prediction bundleId];
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram totalLaunchesForBundleId:bundleId category:@"confirms_hero"];
  v6 = v5;

  return v6;
}

- (double)_rejectsForHeroAppPrediction:(id)prediction
{
  heroAppHistogram = self->_heroAppHistogram;
  bundleId = [prediction bundleId];
  [(_ATXAppLaunchCategoricalHistogram *)heroAppHistogram totalLaunchesForBundleId:bundleId category:@"rejects_hero"];
  v6 = v5;

  return v6;
}

@end