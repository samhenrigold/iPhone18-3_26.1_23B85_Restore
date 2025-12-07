@interface ATXTransitionPredictorCR
- (ATXTransitionPredictorCR)initWithLocationManager:(id)manager locationPredictionsManager:(id)predictionsManager;
- (BOOL)isCacheValidForDate:(id)date location:(id)location;
- (BOOL)updateCacheOnActivity:(id)activity;
- (NSDate)now;
- (id)getNextTransitionOnActivity:(id)activity;
- (id)getNextTransitionOnActivity:(id)activity date:(id)date location:(id)location;
- (id)nextExitDate;
- (id)nextLoi;
- (void)invalidateCache;
@end

@implementation ATXTransitionPredictorCR

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (ATXTransitionPredictorCR)initWithLocationManager:(id)manager locationPredictionsManager:(id)predictionsManager
{
  managerCopy = manager;
  predictionsManagerCopy = predictionsManager;
  v12.receiver = self;
  v12.super_class = ATXTransitionPredictorCR;
  v9 = [(ATXTransitionPredictorCR *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, manager);
    objc_storeStrong(&v10->_predictionsManager, predictionsManager);
    [(ATXTransitionPredictorCR *)v10 invalidateCache];
  }

  return v10;
}

- (id)getNextTransitionOnActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy shouldDefer])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(ATXTransitionPredictorCR *)self now];
    getCurrentLocation = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
    v5 = [(ATXTransitionPredictorCR *)self getNextTransitionOnActivity:activityCopy date:v6 location:getCurrentLocation];
  }

  return v5;
}

- (id)getNextTransitionOnActivity:(id)activity date:(id)date location:(id)location
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  if (location)
  {
    if (![(ATXTransitionPredictorCR *)self isCacheValidForDate:date location:location])
    {
      v9 = [(ATXTransitionPredictorCR *)self updateCacheOnActivity:activityCopy];
      v10 = v9;
      v11 = __atxlog_handle_dailyroutines(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = @"failure";
        if (v10)
        {
          v12 = @"success";
        }

        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Cache update %@", &v15, 0xCu);
      }
    }

    v13 = self->_upcomingTransition;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isCacheValidForDate:(id)date location:(id)location
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  locationCopy = location;
  v8 = locationCopy;
  if (self->_locationAtLastPrediction && self->_upcomingTransition)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v10 = v9;
    date = [(ATXPredictedTransition *)self->_upcomingTransition date];
    [date timeIntervalSinceReferenceDate];
    v13 = v12 + 60.0;

    [v8 distanceFromLocation:self->_locationAtLastPrediction];
    v15 = v14;
    v16 = @"No";
    if (v14 < 200.0)
    {
      v16 = @"Yes";
    }

    v17 = v16;
    v18 = __atxlog_handle_dailyroutines(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      date2 = [(ATXPredictedTransition *)self->_upcomingTransition date];
      v22 = 138412802;
      v23 = dateCopy;
      v24 = 2112;
      v25 = date2;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Cache status -- time: %@ <? %@ + grace period, location valid: %@", &v22, 0x20u);
    }

    v20 = v15 < 200.0 && v10 < v13;
  }

  else
  {
    v17 = __atxlog_handle_dailyroutines(locationCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Cache not set", &v22, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (void)invalidateCache
{
  locationAtLastPrediction = self->_locationAtLastPrediction;
  self->_locationAtLastPrediction = 0;

  upcomingTransition = self->_upcomingTransition;
  self->_upcomingTransition = 0;
}

- (BOOL)updateCacheOnActivity:(id)activity
{
  activityCopy = activity;
  getCurrentLocation = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  if (getCurrentLocation && ![activityCopy shouldDefer])
  {
    nextExitDate = [(ATXTransitionPredictorCR *)self nextExitDate];
    if ([activityCopy shouldDefer])
    {
      [(ATXTransitionPredictorCR *)self invalidateCache];
      v6 = 0;
    }

    else
    {
      nextLoi = [(ATXTransitionPredictorCR *)self nextLoi];
      objc_storeStrong(&self->_locationAtLastPrediction, getCurrentLocation);
      v9 = [[ATXPredictedTransition alloc] initWithDate:nextExitDate loi:nextLoi];
      upcomingTransition = self->_upcomingTransition;
      self->_upcomingTransition = v9;

      v6 = self->_upcomingTransition != 0;
    }
  }

  else
  {
    [(ATXTransitionPredictorCR *)self invalidateCache];
    v6 = 0;
  }

  return v6;
}

- (id)nextExitDate
{
  predictedExitTimes = [(ATXPredictedLocationsManagerProtocol *)self->_predictionsManager predictedExitTimes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ATXTransitionPredictorCR_nextExitDate__block_invoke;
  v8[3] = &unk_278597FA8;
  v8[4] = self;
  v4 = [predictedExitTimes _pas_filteredArrayWithTest:v8];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];
  firstObject = [v5 firstObject];

  return firstObject;
}

BOOL __40__ATXTransitionPredictorCR_nextExitDate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) now];
  [v3 timeIntervalSinceDate:v4];
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) now];
    [v3 timeIntervalSinceDate:v6];
    v8 = v7 < 7200.0;
  }

  return v8;
}

- (id)nextLoi
{
  predictedLocationsOfInterest = [(ATXPredictedLocationsManagerProtocol *)self->_predictionsManager predictedLocationsOfInterest];
  v3 = [predictedLocationsOfInterest _pas_filteredArrayWithTest:&__block_literal_global_133];
  if ([v3 count] > 1)
  {
    firstObject = 0;
  }

  else
  {
    firstObject = [v3 firstObject];
  }

  return firstObject;
}

BOOL __35__ATXTransitionPredictorCR_nextLoi__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 type] == 1 || objc_msgSend(v2, "type") == 0;

  return v3;
}

@end