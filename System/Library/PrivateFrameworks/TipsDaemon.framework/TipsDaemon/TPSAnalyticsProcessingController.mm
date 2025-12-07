@interface TPSAnalyticsProcessingController
- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment;
- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment processors:(id)processors;
- (void)processAnalytics;
- (void)resetAnalytics;
@end

@implementation TPSAnalyticsProcessingController

- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment
{
  v19[2] = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  historyMapCopy = historyMap;
  mapCopy = map;
  statusCopy = status;
  v14 = objc_alloc_init(TPSAnalyticsUsageEventsProcessor);
  [(TPSAnalyticsProcessor *)v14 setDataSource:self];
  v15 = objc_alloc_init(TPSAnalyticsHistoricTipsDataProcessor);
  [(TPSAnalyticsProcessor *)v15 setDataSource:self];
  v19[0] = v14;
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v17 = [(TPSAnalyticsProcessingController *)self initWithAllTipStatus:statusCopy contextualInfoMap:mapCopy eventHistoryMap:historyMapCopy experiment:experimentCopy processors:v16];

  return v17;
}

- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment processors:(id)processors
{
  statusCopy = status;
  mapCopy = map;
  historyMapCopy = historyMap;
  experimentCopy = experiment;
  processorsCopy = processors;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsProcessingController;
  v17 = [(TPSAnalyticsProcessingController *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processors, processors);
    objc_storeStrong(&v18->_allTipStatus, status);
    objc_storeStrong(&v18->_contextualInfoMap, map);
    objc_storeStrong(&v18->_eventHistoryMap, historyMap);
    objc_storeStrong(&v18->_experiment, experiment);
  }

  return v18;
}

- (void)processAnalytics
{
  v22 = *MEMORY[0x277D85DE8];
  analytics = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
  {
    processors = self->_processors;
    *buf = 138412290;
    v21 = processors;
    _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_DEFAULT, "Processing analytics: %@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_processors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        date = [MEMORY[0x277CBEAA8] date];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__TPSAnalyticsProcessingController_processAnalytics__block_invoke;
        v13[3] = &unk_2789B08F8;
        v13[4] = v10;
        v14 = date;
        v12 = date;
        [v10 processAnalytics:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)resetAnalytics
{
  v17 = *MEMORY[0x277D85DE8];
  analytics = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
  {
    processors = self->_processors;
    *buf = 138412290;
    v16 = processors;
    _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_DEFAULT, "Resetting analytics: %@", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_processors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) resetAnalytics];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end