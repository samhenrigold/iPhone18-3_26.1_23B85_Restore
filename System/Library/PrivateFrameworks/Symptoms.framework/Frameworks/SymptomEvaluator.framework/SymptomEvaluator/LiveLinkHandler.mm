@interface LiveLinkHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
- (BOOL)excludeLocalFlowsTrackingOnInterface:(id)interface;
- (BOOL)includeLocalFlowsTrackingOnInterface:(id)interface;
- (BOOL)noteSymptom:(id)symptom;
- (BOOL)startTrackingLiveLinkOnInterface:(id)interface;
- (BOOL)stopTrackingLiveLinkOnInterface:(id)interface;
@end

@implementation LiveLinkHandler

- (BOOL)startTrackingLiveLinkOnInterface:(id)interface
{
  v14 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if ([interfaceCopy length])
  {
    v4 = liveLinkObservers;
    if (!liveLinkObservers)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v6 = liveLinkObservers;
      liveLinkObservers = dictionary;

      v4 = liveLinkObservers;
    }

    v7 = [v4 objectForKeyedSubscript:interfaceCopy];
    if (v7)
    {
      v8 = v7;
      v9 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = interfaceCopy;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "Already observing health of interface %@", &v12, 0xCu);
      }

      startTracking = 0;
    }

    else
    {
      v8 = [[LiveLinkObserver alloc] initWithInterfaceName:interfaceCopy];
      startTracking = [(LiveLinkObserver *)v8 startTracking];
      [liveLinkObservers setObject:v8 forKeyedSubscript:interfaceCopy];
    }
  }

  else
  {
    startTracking = 0;
  }

  return startTracking;
}

- (BOOL)stopTrackingLiveLinkOnInterface:(id)interface
{
  v12 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  stopTracking = 0;
  if ([interfaceCopy length] && liveLinkObservers)
  {
    v5 = [liveLinkObservers objectForKeyedSubscript:interfaceCopy];
    v6 = v5;
    if (v5)
    {
      stopTracking = [v5 stopTracking];
      [liveLinkObservers setObject:0 forKeyedSubscript:interfaceCopy];
    }

    else
    {
      v7 = liveLinkLogHandle;
      stopTracking = 0;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412290;
        v11 = interfaceCopy;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "Not currently observing health of interface %@", &v10, 0xCu);
        stopTracking = 0;
      }
    }

    if (![liveLinkObservers count])
    {
      v8 = liveLinkObservers;
      liveLinkObservers = 0;
    }
  }

  return stopTracking;
}

- (BOOL)includeLocalFlowsTrackingOnInterface:(id)interface
{
  v11 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if ([interfaceCopy length])
  {
    v4 = [liveLinkObservers objectForKeyedSubscript:interfaceCopy];
    v5 = v4;
    if (v4)
    {
      enableLocalFlowsTracking = [v4 enableLocalFlowsTracking];
    }

    else
    {
      v7 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = interfaceCopy;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Not currently observing health of interface %@", &v9, 0xCu);
      }

      enableLocalFlowsTracking = 0;
    }
  }

  else
  {
    enableLocalFlowsTracking = 0;
  }

  return enableLocalFlowsTracking;
}

- (BOOL)excludeLocalFlowsTrackingOnInterface:(id)interface
{
  v11 = *MEMORY[0x277D85DE8];
  interfaceCopy = interface;
  if ([interfaceCopy length])
  {
    v4 = [liveLinkObservers objectForKeyedSubscript:interfaceCopy];
    v5 = v4;
    if (v4)
    {
      disableLocalFlowsTracking = [v4 disableLocalFlowsTracking];
    }

    else
    {
      v7 = liveLinkLogHandle;
      if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = interfaceCopy;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Not currently observing health of interface %@", &v9, 0xCu);
      }

      disableLocalFlowsTracking = 0;
    }
  }

  else
  {
    disableLocalFlowsTracking = 0;
  }

  return disableLocalFlowsTracking;
}

- (BOOL)noteSymptom:(id)symptom
{
  v20 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  eventKey = [symptomCopy eventKey];
  v6 = [SymptomStore keyFromSymptomName:@"SYMPTOM_START_TRACKING_LIVE_LINK"];
  v7 = [eventKey isEqualToString:v6];

  if (v7)
  {
    v8 = [symptomCopy eventQualifierStringForKey:@"0"];
    v9 = [(LiveLinkHandler *)self startTrackingLiveLinkOnInterface:v8];
    v10 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 1024;
      v19 = v9;
      v11 = "Request to start flows tracking on %@: started = %d";
LABEL_7:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, v11, &v16, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v12 = [SymptomStore keyFromSymptomName:@"SYMPTOM_STOP_TRACKING_LIVE_LINK"];
  v13 = [eventKey isEqualToString:v12];

  if (v13)
  {
    v8 = [symptomCopy eventQualifierStringForKey:@"0"];
    v14 = [(LiveLinkHandler *)self stopTrackingLiveLinkOnInterface:v8];
    v10 = liveLinkLogHandle;
    if (os_log_type_enabled(liveLinkLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 1024;
      v19 = v14;
      v11 = "Request to stop flows tracking on %@: stopped = %d";
      goto LABEL_7;
    }

LABEL_8:
  }

  return 0;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__LiveLinkHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_19 != -1)
  {
    dispatch_once(&sharedInstance_pred_19, block);
  }

  v2 = sharedInstance_sharedInstance_19;

  return v2;
}

void __33__LiveLinkHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_19;
  sharedInstance_sharedInstance_19 = v1;

  v3 = sharedInstance_sharedInstance_19;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[LiveLinkHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

@end