@interface ATXInformationHeuristicRefreshLocationTrigger
+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithCoder:(id)coder;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocation:(CLLocationCoordinate2D)location notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)exit radiusInMeters:(double)meters;
- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocationManager:(id)manager regionToMonitor:(id)monitor;
- (void)_run;
- (void)_start;
- (void)_stop;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicRefreshLocationTrigger

- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocation:(CLLocationCoordinate2D)location notifyOnEntry:(BOOL)entry notifyOnExit:(BOOL)exit radiusInMeters:(double)meters
{
  exitCopy = exit;
  entryCopy = entry;
  longitude = location.longitude;
  latitude = location.latitude;
  v12 = objc_alloc(MEMORY[0x277CBFBC8]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = [v12 initWithCenter:uUIDString radius:latitude identifier:{longitude, meters}];

  [v15 setNotifyOnEntry:entryCopy];
  [v15 setNotifyOnExit:exitCopy];
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  v17 = [(ATXInformationHeuristicRefreshLocationTrigger *)self initWithLocationManager:mEMORY[0x277D41BF8] regionToMonitor:v15];

  return v17;
}

- (ATXInformationHeuristicRefreshLocationTrigger)initWithLocationManager:(id)manager regionToMonitor:(id)monitor
{
  managerCopy = manager;
  monitorCopy = monitor;
  v12.receiver = self;
  v12.super_class = ATXInformationHeuristicRefreshLocationTrigger;
  v9 = [(ATXInformationHeuristicRefreshTrigger *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationManager, manager);
    objc_storeStrong(&v10->_regionToMonitor, monitor);
  }

  return v10;
}

- (void)_run
{
  v18 = *MEMORY[0x277D85DE8];
  getCurrentLocation = [(ATXLocationManagerProtocol *)self->_locationManager getCurrentLocation];
  v4 = __atxlog_handle_gi(getCurrentLocation);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (getCurrentLocation)
  {
    if (v5)
    {
      v6 = [getCurrentLocation description];
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "[Location] Received %@", &v16, 0xCu);
    }

    v7 = objc_opt_class();
    v8 = [MEMORY[0x277CBEAA8] now];
    LOBYTE(v7) = [v7 _locationIsStaleOrNotAccurateEnough:getCurrentLocation now:v8];

    if ((v7 & 1) == 0)
    {
      regionToMonitor = self->_regionToMonitor;
      [getCurrentLocation coordinate];
      v10 = [(CLCircularRegion *)regionToMonitor containsCoordinate:?];
      notifyOnEntry = [(CLCircularRegion *)self->_regionToMonitor notifyOnEntry];
      if (notifyOnEntry && self->_previouslyOutsideRegion && v10)
      {
        v12 = __atxlog_handle_gi(notifyOnEntry);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshLocationTrigger: Entering monitored region. Triggering heuristics refresh.", &v16, 2u);
        }
      }

      else
      {
        notifyOnExit = [(CLCircularRegion *)self->_regionToMonitor notifyOnExit];
        if (!notifyOnExit || !self->_previouslyInsideRegion || v10)
        {
          goto LABEL_20;
        }

        v12 = __atxlog_handle_gi(notifyOnExit);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshLocationTrigger: Leaving monitored region. Triggering heuristics refresh.", &v16, 2u);
        }
      }

      delegate = [(ATXInformationHeuristicRefreshTrigger *)self delegate];
      registeredHeuristics = [(ATXInformationHeuristicRefreshTrigger *)self registeredHeuristics];
      [delegate informationHeuristicRefreshTrigger:self didTriggerRefreshForHeuristics:registeredHeuristics];

LABEL_20:
      self->_previouslyInsideRegion = v10;
      self->_previouslyOutsideRegion = !v10;
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "[Location] Nil location received. Ignoring trigger.", &v16, 2u);
    }
  }
}

- (void)_start
{
  self->_previouslyInsideRegion = 0;
  self->_previouslyOutsideRegion = 0;
  if (!self->_token)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D77BA8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ATXInformationHeuristicRefreshLocationTrigger__start__block_invoke;
    v6[3] = &unk_278C3D008;
    objc_copyWeak(&v7, &location);
    v4 = [v3 registerForSuggestedActionNudgeOfType:5 withOptions:0 block:v6];
    token = self->_token;
    self->_token = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __55__ATXInformationHeuristicRefreshLocationTrigger__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _run];
  }

  else
  {
    v3 = __atxlog_handle_gi(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __55__ATXInformationHeuristicRefreshLocationTrigger__start__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

+ (BOOL)_locationIsStaleOrNotAccurateEnough:(id)enough now:(id)now
{
  v20 = *MEMORY[0x277D85DE8];
  enoughCopy = enough;
  nowCopy = now;
  timestamp = [enoughCopy timestamp];
  [nowCopy timeIntervalSinceDate:timestamp];
  v9 = v8;

  if (v9 <= 900.0)
  {
    horizontalAccuracy = [enoughCopy horizontalAccuracy];
    if (v14 <= 200.0)
    {
      v16 = 0;
      goto LABEL_10;
    }

    v11 = __atxlog_handle_gi(horizontalAccuracy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      [enoughCopy horizontalAccuracy];
      v18 = 134217984;
      v19 = v15;
      v12 = "[Location] Uncertainty too large, horizontalAccuracy, %f. Ignoring trigger.";
      goto LABEL_7;
    }
  }

  else
  {
    v11 = __atxlog_handle_gi(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v9;
      v12 = "[Location] Location is stale. Age: %f. Ignoring trigger.";
LABEL_7:
      _os_log_impl(&dword_23E3EA000, v11, OS_LOG_TYPE_DEFAULT, v12, &v18, 0xCu);
    }
  }

  v16 = 1;
LABEL_10:

  return v16;
}

- (void)_stop
{
  if (self->_token)
  {
    [MEMORY[0x277D77BA8] unregisterForSuggestedActionNudgeOfType:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshLocationTrigger;
  coderCopy = coder;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_regionToMonitor forKey:{@"regionToMonitor", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshLocationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"regionToMonitor"];
  error = [coderCopy error];

  selfCopy = 0;
  if (!error && v5)
  {
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    self = [(ATXInformationHeuristicRefreshLocationTrigger *)self initWithLocationManager:mEMORY[0x277D41BF8] regionToMonitor:v5];

    selfCopy = self;
  }

  return selfCopy;
}

@end