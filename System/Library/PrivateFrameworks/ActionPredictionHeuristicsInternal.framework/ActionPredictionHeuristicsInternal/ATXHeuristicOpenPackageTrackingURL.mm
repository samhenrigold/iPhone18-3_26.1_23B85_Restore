@interface ATXHeuristicOpenPackageTrackingURL
- (id)heuristicResultWithEnvironment:(id)environment;
- (id)permanentRefreshTriggers;
@end

@implementation ATXHeuristicOpenPackageTrackingURL

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
  v41 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = [ATXHeuristicClipboardUtilities alloc];
  heuristicDevice = [environmentCopy heuristicDevice];

  v7 = [(ATXHeuristicClipboardUtilities *)v5 initWithDevice:heuristicDevice];
  [(ATXHeuristicClipboardUtilities *)v7 fetchContents];
  dataDetectors = [(ATXHeuristicClipboardUtilities *)v7 dataDetectors];
  appName = [(ATXHeuristicClipboardUtilities *)v7 appName];
  v10 = [appName isEqualToString:@"Safari"];

  if (v10)
  {
    v12 = __atxlog_handle_context_heuristic(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing action for package tracking number copied from Safari.", buf, 2u);
    }

    v13 = objc_opt_new();
  }

  else
  {
    v14 = [(ATXHeuristicOpenPackageTrackingURL *)self packageTrackingNumbersFromDataDetectorResults:dataDetectors];

    v16 = __atxlog_handle_context_heuristic(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v14;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: results:%@", buf, 0xCu);
    }

    v17 = [v14 count];
    if (v17 == 1)
    {
      firstObject = [v14 firstObject];
      v19 = [firstObject objectForKeyedSubscript:@"trackingNumber"];
      v20 = [firstObject objectForKeyedSubscript:@"urlEncodedTrackingNumber"];
      v21 = [firstObject objectForKeyedSubscript:@"companyName"];
      v37 = v20;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://trackingshipment.apple.com/?Company=%@&TrackingNumber=%@", v21, v20];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = MEMORY[0x277CCACA8];
      v36 = v23;
      v25 = [v23 localizedStringForKey:@"OPEN_PACKAGE_TRACKING_LINK_TITLE" value:&stru_2850AD368 table:0];
      v26 = [v24 localizedStringWithFormat:v25, v21];

      v27 = MEMORY[0x277CEB2C8];
      v28 = *MEMORY[0x277CCA850];
      v29 = objc_opt_new();
      v30 = [v27 atx_userActivityActionWithTitle:v26 subtitle:v19 bundleID:@"com.apple.mobilesafari" activityType:v28 urlString:v22 userInfo:v29 heuristicName:@"openPackageTrackingUrl"];

      if (v30)
      {
        v38 = v30;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        v13 = [(ATXHeuristicClipboardUtilities *)v7 resultWithActions:v32 predictionReasons:0x4000000];
      }

      else
      {
        v34 = __atxlog_handle_context_heuristic(v31);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(ATXHeuristicOpenPackageTrackingURL *)v22 heuristicResultWithEnvironment:v34];
        }

        v13 = objc_opt_new();
      }
    }

    else
    {
      v33 = __atxlog_handle_context_heuristic(v17);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E3EA000, v33, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Suppressing action prediction for package tracking number because did not detect exactly 1 URL.", buf, 2u);
      }

      v13 = objc_opt_new();
    }

    dataDetectors = v14;
  }

  return v13;
}

uint64_t __84__ATXHeuristicOpenPackageTrackingURL_packageTrackingNumbersFromDataDetectorResults___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"type"];
  v3 = [v2 isEqualToString:@"TrackingNumber"];

  return v3;
}

- (void)heuristicResultWithEnvironment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "ATXHeuristicOpenPackageTrackingURL heuristicResultWithEnvironment: Action created from URL %@ is nil. No results returned", &v2, 0xCu);
}

@end