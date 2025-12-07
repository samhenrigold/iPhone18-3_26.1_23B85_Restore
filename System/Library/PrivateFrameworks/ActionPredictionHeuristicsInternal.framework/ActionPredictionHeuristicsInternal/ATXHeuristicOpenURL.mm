@interface ATXHeuristicOpenURL
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
- (id)urlsFromDataDetectorResults:(id)results;
@end

@implementation ATXHeuristicOpenURL

- (id)permanentRefreshTriggers
{
  v2 = [[ATXInformationHeuristicRefreshNotitifcationTrigger alloc] initWithNotification:@"ATXLocalPasteboardDidChangeNotification" type:0];
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v2, 0}];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (id)heuristicResultWithEnvironment:(id)environment
{
  v38 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXHeuristicClipboardUtilities alloc];
  heuristicDevice = [environmentCopy heuristicDevice];

  v7 = [(ATXHeuristicClipboardUtilities *)v5 initWithDevice:heuristicDevice];
  [(ATXHeuristicClipboardUtilities *)v7 fetchContents];
  dataDetectors = [(ATXHeuristicClipboardUtilities *)v7 dataDetectors];
  v9 = [(ATXHeuristicOpenURL *)self urlsFromDataDetectorResults:dataDetectors];
  v10 = __atxlog_handle_context_heuristic(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v37 = v9;
    _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: urls:%{sensitive}@", buf, 0xCu);
  }

  v11 = [v9 count];
  if (v11 == 1)
  {
    firstObject = [v9 firstObject];
    v13 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:firstObject];
    host = [v13 host];

    v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2850BA260];
    v16 = v15;
    if (host && (v17 = [v15 containsObject:host], v17))
    {
      v18 = __atxlog_handle_context_heuristic(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = firstObject;
        _os_log_impl(&dword_23E3EA000, v18, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing action prediction for URL that will not actually open in Safari but punch out to an app immediately: %@", buf, 0xCu);
      }

      v19 = objc_opt_new();
    }

    else
    {
      v34 = v16;
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = MEMORY[0x277CCACA8];
      v23 = [v21 localizedStringForKey:@"OPEN_CLIPBOARD_LINK_TITLE" value:&stru_2850AD368 table:0];
      appName = [(ATXHeuristicClipboardUtilities *)v7 appName];
      v25 = [v22 localizedStringWithFormat:v23, appName];

      v26 = MEMORY[0x277CEB2C8];
      v27 = *MEMORY[0x277CCA850];
      v28 = objc_opt_new();
      v29 = [v26 atx_userActivityActionWithTitle:v25 subtitle:0 bundleID:@"com.apple.mobilesafari" activityType:v27 urlString:firstObject userInfo:v28 heuristicName:@"openUrl"];

      if (v29)
      {
        v35 = v29;
        v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v19 = [(ATXHeuristicClipboardUtilities *)v7 resultWithActions:v31 predictionReasons:0x8000000];
      }

      else
      {
        v32 = __atxlog_handle_context_heuristic(v30);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [(ATXHeuristicOpenURL *)firstObject heuristicResultWithEnvironment:v32];
        }

        v19 = objc_opt_new();
      }

      v16 = v34;
    }
  }

  else
  {
    v20 = __atxlog_handle_context_heuristic(v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v20, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: action prediction for URL because did not detect exactly 1 URL.", buf, 2u);
    }

    v19 = objc_opt_new();
  }

  return v19;
}

- (id)urlsFromDataDetectorResults:(id)results
{
  v28 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = resultsCopy;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"value"];

        if (v11)
        {
          v13 = [v10 objectForKeyedSubscript:@"type"];
          v14 = [v13 isEqualToString:@"HttpURL"];

          if (v14)
          {
            v15 = [v10 objectForKeyedSubscript:@"value"];
            [v4 addObject:v15];
          }

          else
          {
            v16 = [v10 objectForKeyedSubscript:@"type"];
            v17 = [v16 isEqualToString:@"WebURL"];

            if (!v17)
            {
              continue;
            }

            v18 = MEMORY[0x277CCACA8];
            v15 = [v10 objectForKeyedSubscript:@"value"];
            v19 = [v18 stringWithFormat:@"http://%@", v15];
            [v4 addObject:v19];
          }
        }

        else
        {
          v15 = __atxlog_handle_context_heuristic(v12);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [(ATXHeuristicOpenURL *)&buf urlsFromDataDetectorResults:v22, v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)heuristicResultWithEnvironment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXHeuristicOpenURL heuristicResultWithEnvironment: Action created from URL %@ is nil. No results returned", &v2, 0xCu);
}

- (void)urlsFromDataDetectorResults:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_23E3EA000, log, OS_LOG_TYPE_FAULT, "ATXHeuristicOpenURL urlsFromDataDetectorResults: nil value in result", buf, 2u);
}

@end