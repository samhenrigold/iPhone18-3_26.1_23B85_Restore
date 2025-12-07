@interface CPAnalyticsDestinationsRegistry
- (CPAnalyticsDestinationsRegistry)init;
- (id)_destinationClassMap;
- (id)_readConfiguration:(id)configuration;
- (void)_parseDestinationsFromConfig:(id)config cpAnalyticsInstance:(id)instance;
- (void)addDestination:(id)destination;
- (void)removeDestination:(id)destination;
- (void)removePhotoLibraryFromDestinations;
- (void)sendToAllDestinations:(id)destinations;
- (void)setupWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance;
- (void)updateWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance;
@end

@implementation CPAnalyticsDestinationsRegistry

- (CPAnalyticsDestinationsRegistry)init
{
  v6.receiver = self;
  v6.super_class = CPAnalyticsDestinationsRegistry;
  v2 = [(CPAnalyticsDestinationsRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    destinations = v2->_destinations;
    v2->_destinations = v3;
  }

  return v2;
}

- (id)_destinationClassMap
{
  v5[8] = *MEMORY[0x277D85DE8];
  v4[0] = @"devLogging";
  v5[0] = objc_opt_class();
  v4[1] = @"metricsDestination";
  v5[1] = objc_opt_class();
  v4[2] = @"signpost";
  v5[2] = objc_opt_class();
  v4[3] = @"appState";
  v5[3] = objc_opt_class();
  v4[4] = @"knowledgeStore";
  v5[4] = objc_opt_class();
  v4[5] = @"interval";
  v5[5] = objc_opt_class();
  v4[6] = @"log";
  v5[6] = objc_opt_class();
  v4[7] = @"biome";
  v5[7] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

- (void)_parseDestinationsFromConfig:(id)config cpAnalyticsInstance:(id)instance
{
  v46 = *MEMORY[0x277D85DE8];
  configCopy = config;
  instanceCopy = instance;
  v29 = configCopy;
  if (configCopy)
  {
    v28 = [configCopy objectForKey:@"destinations"];
    v6 = v28;
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = self->_destinations;
        objc_sync_enter(v7);
        destinations = [(CPAnalyticsDestinationsRegistry *)self destinations];
        v32 = [destinations copy];

        objc_sync_exit(v7);
        _destinationClassMap = [(CPAnalyticsDestinationsRegistry *)self _destinationClassMap];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v9 = v28;
        v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (!v10)
        {
          goto LABEL_39;
        }

        v11 = *v40;
        while (1)
        {
          v12 = 0;
          do
          {
            if (*v40 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v39 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 objectForKey:@"enabled"];
              bOOLValue = [v14 BOOLValue];

              if (bOOLValue)
              {
                v16 = [v13 objectForKey:@"name"];
                v17 = [v13 objectForKey:@"config"];
                v35 = 0;
                v36 = &v35;
                v37 = 0x2050000000;
                v38 = [_destinationClassMap objectForKey:v16];
                if (!v36[3])
                {
                  v20 = CPAnalyticsLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v44 = v16;
                    _os_log_error_impl(&dword_24260A000, v20, OS_LOG_TYPE_ERROR, "Error parsing CPAnalytics config file: destination name '%@' not found in mapping.", buf, 0xCu);
                  }

                  goto LABEL_33;
                }

                v34[0] = MEMORY[0x277D85DD0];
                v34[1] = 3221225472;
                v34[2] = __84__CPAnalyticsDestinationsRegistry__parseDestinationsFromConfig_cpAnalyticsInstance___block_invoke;
                v34[3] = &unk_278D61560;
                v34[4] = &v35;
                v18 = [v32 indexOfObjectPassingTest:v34];
                if (v18 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v19 = [objc_alloc(v36[3]) initWithConfig:v17 cpAnalyticsInstance:instanceCopy];
                  v20 = v19;
                  if (v19)
                  {
                    if (([v19 conformsToProtocol:&unk_2854F29B0]& 1) != 0)
                    {
                      if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 disabled])
                      {
                        v21 = CPAnalyticsLog();
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                        {
                          v22 = objc_opt_class();
                          *buf = 138412290;
                          v44 = v22;
                          v27 = v22;
                          _os_log_impl(&dword_24260A000, v21, OS_LOG_TYPE_INFO, "Destination %@ class is disabled.", buf, 0xCu);
                        }

LABEL_31:
                      }

                      else
                      {
                        [(CPAnalyticsDestinationsRegistry *)self addDestination:v20, v27];
                      }

LABEL_33:

                      _Block_object_dispose(&v35, 8);
                      goto LABEL_34;
                    }

                    v21 = CPAnalyticsLog();
                    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_31;
                    }

                    *buf = 138412290;
                    v44 = v16;
                    v24 = v21;
                    v25 = "Destination %@ class does not conform to CPAnalyticsDestination protocol.";
                  }

                  else
                  {
                    v21 = CPAnalyticsLog();
                    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_31;
                    }

                    *buf = 138412290;
                    v44 = v16;
                    v24 = v21;
                    v25 = "Error initializing %@ destination in CPAnalytics";
                  }

                  _os_log_error_impl(&dword_24260A000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);
                  goto LABEL_31;
                }

                v20 = [v32 objectAtIndexedSubscript:v18];
                if (objc_opt_respondsToSelector())
                {
                  [v20 updateWithConfig:v17];
                  v23 = CPAnalyticsLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v44 = v16;
                    _os_log_impl(&dword_24260A000, v23, OS_LOG_TYPE_INFO, "Updated %@ destination", buf, 0xCu);
                  }
                }

                else
                {
                  v23 = CPAnalyticsLog();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v44 = v16;
                    _os_log_error_impl(&dword_24260A000, v23, OS_LOG_TYPE_ERROR, "Cannot update %@ destination. Missing updateWithConfig selector.", buf, 0xCu);
                  }
                }

                goto LABEL_33;
              }
            }

LABEL_34:
            ++v12;
          }

          while (v10 != v12);
          v26 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
          v10 = v26;
          if (!v26)
          {
LABEL_39:

            v6 = v28;
            break;
          }
        }
      }
    }
  }
}

- (id)_readConfiguration:(id)configuration
{
  v12 = *MEMORY[0x277D85DE8];
  if (configuration)
  {
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
    if (v3)
    {
      v9 = 0;
      v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:&v9];
      v5 = v9;
      if (v5)
      {
        v6 = CPAnalyticsLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v11 = v5;
          _os_log_error_impl(&dword_24260A000, v6, OS_LOG_TYPE_ERROR, "Error parsing CPAnalytics config file: %@", buf, 0xCu);
        }

        v7 = 0;
      }

      else
      {
        v7 = v4;
      }
    }

    else
    {
      v5 = CPAnalyticsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_24260A000, v5, OS_LOG_TYPE_ERROR, "Error reading CPAnalytics config file", buf, 2u);
      }

      v7 = 0;
    }
  }

  else
  {
    v3 = CPAnalyticsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_24260A000, v3, OS_LOG_TYPE_ERROR, "Error reading CPAnalytics config: nil", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)removePhotoLibraryFromDestinations
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = self->_destinations;
  objc_sync_enter(v3);
  destinations = [(CPAnalyticsDestinationsRegistry *)self destinations];
  v5 = [destinations copy];

  objc_sync_exit(v3);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 setPhotoLibrary:{0, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)sendToAllDestinations:(id)destinations
{
  v17 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = self->_destinations;
  objc_sync_enter(v5);
  destinations = [(CPAnalyticsDestinationsRegistry *)self destinations];
  v7 = [destinations copy];

  objc_sync_exit(v5);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) processEvent:{destinationsCopy, v12}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)removeDestination:(id)destination
{
  destinationCopy = destination;
  v4 = self->_destinations;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_destinations removeObject:destinationCopy];
  objc_sync_exit(v4);
}

- (void)addDestination:(id)destination
{
  destinationCopy = destination;
  if (destinationCopy)
  {
    v6 = destinationCopy;
    v5 = self->_destinations;
    objc_sync_enter(v5);
    [(NSMutableArray *)self->_destinations addObject:v6];
    objc_sync_exit(v5);

    destinationCopy = v6;
  }
}

- (void)updateWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance
{
  instanceCopy = instance;
  v7 = [(CPAnalyticsDestinationsRegistry *)self _readConfiguration:l];
  [(CPAnalyticsDestinationsRegistry *)self _parseDestinationsFromConfig:v7 cpAnalyticsInstance:instanceCopy];
}

- (void)setupWithConfigurationAtURL:(id)l cpAnalyticsInstance:(id)instance
{
  lCopy = l;
  instanceCopy = instance;
  v7 = self->_destinations;
  objc_sync_enter(v7);
  [(NSMutableArray *)self->_destinations removeAllObjects];
  objc_sync_exit(v7);

  [(CPAnalyticsDestinationsRegistry *)self updateWithConfigurationAtURL:lCopy cpAnalyticsInstance:instanceCopy];
}

@end