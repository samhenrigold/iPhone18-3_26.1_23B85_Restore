@interface ATXWidgetMetadataDataSource
- (ATXWidgetMetadataDataSource)initWithDevice:(id)device;
- (void)fetchWidgetMetadataForAppBundleIds:(id)ids callback:(id)callback;
@end

@implementation ATXWidgetMetadataDataSource

- (ATXWidgetMetadataDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXWidgetMetadataDataSource;
  v6 = [(ATXWidgetMetadataDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)fetchWidgetMetadataForAppBundleIds:(id)ids callback:(id)callback
{
  v65 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  callbackCopy = callback;
  v7 = objc_autoreleasePoolPush();
  if (idsCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CEB568]);
    v57 = 0;
    v9 = [v8 loadHomeScreenAndTodayPageConfigurationsWithError:&v57];
    v10 = v57;
    v11 = v10;
    if (v9)
    {
      v30 = v10;
      v32 = v8;
      v33 = v7;
      v34 = callbackCopy;
      v35 = idsCopy;
      v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:idsCopy];
      v44 = objc_opt_new();
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v31 = v9;
      obj = v9;
      v38 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
      if (!v38)
      {
        goto LABEL_39;
      }

      v37 = *v54;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v54 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = v13;
          v14 = *(*(&v53 + 1) + 8 * v13);
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          stacks = [v14 stacks];
          v42 = [stacks countByEnumeratingWithState:&v49 objects:v63 count:16];
          if (v42)
          {
            v41 = *v50;
            do
            {
              v15 = 0;
              do
              {
                if (*v50 != v41)
                {
                  objc_enumerationMutation(stacks);
                }

                v43 = v15;
                v16 = *(*(&v49 + 1) + 8 * v15);
                v45 = 0u;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                widgets = [v16 widgets];
                v18 = [widgets countByEnumeratingWithState:&v45 objects:v62 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v46;
                  do
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      if (*v46 != v20)
                      {
                        objc_enumerationMutation(widgets);
                      }

                      v22 = *(*(&v45 + 1) + 8 * i);
                      appBundleId = [v22 appBundleId];
                      if (appBundleId)
                      {
                        widgetKind = [v22 widgetKind];
                        if (widgetKind)
                        {
                          extensionBundleId = [v22 extensionBundleId];
                          if (extensionBundleId)
                          {
                            if ([v12 containsObject:appBundleId])
                            {
                              v58[0] = @"widgetBundleId";
                              v58[1] = @"widgetKind";
                              v59[0] = extensionBundleId;
                              v59[1] = widgetKind;
                              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
                              v27 = [v44 objectForKeyedSubscript:appBundleId];
                              if (!v27)
                              {
                                v27 = objc_opt_new();
                                [v44 setObject:v27 forKeyedSubscript:appBundleId];
                              }

                              if (([v27 containsObject:v26] & 1) == 0)
                              {
                                [v27 addObject:v26];
                              }

                              goto LABEL_31;
                            }
                          }

                          else
                          {
                            v26 = __atxlog_handle_heuristic();
                            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138412290;
                              v61 = v22;
                              _os_log_error_impl(&dword_23E3EA000, v26, OS_LOG_TYPE_ERROR, "ATXWidgetMetadataDataSource: no widget bundle id for widget: %@", buf, 0xCu);
                            }

LABEL_31:
                          }
                        }

                        else
                        {
                          extensionBundleId = __atxlog_handle_heuristic();
                          if (os_log_type_enabled(extensionBundleId, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 138412290;
                            v61 = v22;
                            _os_log_error_impl(&dword_23E3EA000, extensionBundleId, OS_LOG_TYPE_ERROR, "ATXWidgetMetadataDataSource: no widget kind for widget: %@", buf, 0xCu);
                          }
                        }
                      }
                    }

                    v19 = [widgets countByEnumeratingWithState:&v45 objects:v62 count:16];
                  }

                  while (v19);
                }

                v15 = v43 + 1;
              }

              while (v43 + 1 != v42);
              v42 = [stacks countByEnumeratingWithState:&v49 objects:v63 count:16];
            }

            while (v42);
          }

          v13 = v39 + 1;
        }

        while (v39 + 1 != v38);
        v38 = [obj countByEnumeratingWithState:&v53 objects:v64 count:16];
        if (!v38)
        {
LABEL_39:

          callbackCopy = v34;
          (v34)[2](v34, v44, 0);

          idsCopy = v35;
          v8 = v32;
          v7 = v33;
          v11 = v30;
          v9 = v31;
          goto LABEL_46;
        }
      }
    }

    v29 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetMetadataDataSource fetchWidgetMetadataForAppBundleIds:v11 callback:v29];
    }

    callbackCopy[2](callbackCopy, 0, v11);
LABEL_46:
  }

  else
  {
    v28 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXWidgetMetadataDataSource fetchWidgetMetadataForAppBundleIds:v28 callback:?];
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    callbackCopy[2](callbackCopy, 0, v8);
  }

  objc_autoreleasePoolPop(v7);
}

- (void)fetchWidgetMetadataForAppBundleIds:(uint64_t)a1 callback:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXWidgetMetadataDataSource: could not fetch page configs with error: %@", &v2, 0xCu);
}

@end