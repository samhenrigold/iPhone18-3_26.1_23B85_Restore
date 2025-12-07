@interface ATXHeroAppManager
- (ATXHeroAppManager)init;
- (ATXHeroAppManager)initWithFeedback:(id)feedback;
- (void)donateHeroAppPredictions:(id)predictions;
@end

@implementation ATXHeroAppManager

- (ATXHeroAppManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXHeroAppManager *)self initWithFeedback:v3];

  return v4;
}

- (ATXHeroAppManager)initWithFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v9.receiver = self;
  v9.super_class = ATXHeroAppManager;
  v6 = [(ATXHeroAppManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heroFeedback, feedback);
  }

  return v7;
}

- (void)donateHeroAppPredictions:(id)predictions
{
  v23 = *MEMORY[0x277D85DE8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__ATXHeroAppManager_donateHeroAppPredictions___block_invoke;
  v20[3] = &unk_278598D10;
  v20[4] = self;
  v3 = [predictions _pas_filteredArrayWithTest:v20];
  v4 = __atxlog_handle_hero(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    *buf = 134217984;
    v22 = *&v5;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Left with %lu predictions after removing predictions based on feedback.", buf, 0xCu);
  }

  v6 = [v3 count];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEAA8] now];
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    getCurrentPreciseLocation = [mEMORY[0x277D41BF8] getCurrentPreciseLocation];

    v11 = __atxlog_handle_hero(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [v7 timeIntervalSinceNow];
      *buf = 134217984;
      v22 = -v12;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Took %f seconds to fetch precise location", buf, 0xCu);
    }

    if (getCurrentPreciseLocation)
    {
      v14 = [ATXHeroDataServerHelper inRadiusPredictionsFrom:v3 currentLocation:getCurrentPreciseLocation];

      v3 = __atxlog_handle_hero(v15);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 count];
        *buf = 134217984;
        v22 = *&v16;
        _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Left with %lu predictions after removing predictions based on gps location.", buf, 0xCu);
      }
    }

    else
    {
      v17 = __atxlog_handle_hero(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroAppManager donateHeroAppPredictions:v17];
      }

      v14 = objc_opt_new();
    }

    v3 = v14;
  }

  else
  {
    getCurrentPreciseLocation = 0;
  }

  v18 = __atxlog_handle_hero(v6);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v3 description];
    *buf = 138412290;
    v22 = *&v19;
    _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Sending hero app predictions to blending layer. Predictions: %@", buf, 0xCu);
  }

  [ATXHeroAppBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v3 currentLocation:getCurrentPreciseLocation];
}

@end