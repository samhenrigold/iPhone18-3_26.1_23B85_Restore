@interface ATXHeuristicClipboardUtilities
- (ATXHeuristicClipboardUtilities)initWithDevice:(id)device;
- (id)_appNameFromBundleID:(id)d;
- (id)_dataDetectorsWithContent:(id)content;
- (id)resultWithActions:(id)actions predictionReasons:(unint64_t)reasons;
- (void)_resetContents;
- (void)fetchContents;
@end

@implementation ATXHeuristicClipboardUtilities

- (ATXHeuristicClipboardUtilities)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXHeuristicClipboardUtilities;
  v6 = [(ATXHeuristicClipboardUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_heuristicDevice, device);
  }

  return v7;
}

- (void)fetchContents
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [[ATXClipboardContents alloc] initWithDevice:self->_heuristicDevice];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__1;
  v48 = __Block_byref_object_dispose__1;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__1;
  v42 = __Block_byref_object_dispose__1;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke;
  v31[3] = &unk_278C3CCF8;
  v31[4] = &v44;
  v31[5] = &v32;
  v31[6] = &v38;
  v4 = __atxlog_handle_context_heuristic([(ATXClipboardContents *)v3 contentsWithCallback:v31]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v33[5];
    v6 = v39[5];
    *buf = 138478083;
    v51 = v5;
    v52 = 2113;
    v53 = v6;
    _os_log_impl(&dword_23E3EA000, v4, OS_LOG_TYPE_DEFAULT, "ATXHeuristicClipboardUtilities: Clipboard provided creationDate : %{private}@ originatorBundleID; %{private}@", buf, 0x16u);
  }

  v8 = __atxlog_handle_context_heuristic(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v45[5];
    *buf = 138739971;
    v51 = v9;
    _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_DEFAULT, "ATXHeuristicClipboardUtilities content: %{sensitive}@", buf, 0xCu);
  }

  _resetContents = [(ATXHeuristicClipboardUtilities *)self _resetContents];
  if (v45[5] && v33[5] && v39[5])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.Spotlight", @"com.apple.SafariViewService", @"com.apple.mobilesms.compose", @"com.apple.InCallService", 0}];
    objc_autoreleasePoolPop(v11);
    LODWORD(v11) = [v12 containsObject:v39[5]];

    if (v11)
    {
      v14 = __atxlog_handle_context_heuristic(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v39[5];
        *buf = 138477827;
        v51 = v15;
        v16 = "ATXHeuristicClipboardUtilities: Bundle ID blacklisted %{private}@";
        v17 = v14;
        v18 = 12;
LABEL_13:
        _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

    else
    {
      v19 = [v45[5] length];
      if (v19 >= 0x201)
      {
        v14 = __atxlog_handle_context_heuristic(v19);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v20 = [v45[5] length];
        *buf = 134218240;
        v51 = v20;
        v52 = 2048;
        v53 = 512;
        v16 = "Clipboard too long, length = %lu exceeds max of %lu";
        v17 = v14;
        v18 = 22;
        goto LABEL_13;
      }

      v14 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v33[5] sinceDate:600.0];
      date = [MEMORY[0x277CBEAA8] date];
      v22 = [date compare:v14] == 1;

      if (v22)
      {
        v24 = __atxlog_handle_context_heuristic(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v14;
          _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "Clipboard content expired at %@", buf, 0xCu);
        }
      }

      else
      {
        [(ATXHeuristicClipboardUtilities *)self setContent:v45[5]];
        v25 = [(ATXHeuristicClipboardUtilities *)self _appNameFromBundleID:v39[5]];
        [(ATXHeuristicClipboardUtilities *)self setAppName:v25];

        v26 = [(ATXHeuristicClipboardUtilities *)self _dataDetectorsWithContent:v45[5]];
        [(ATXHeuristicClipboardUtilities *)self setDataDetectors:v26];

        v24 = __atxlog_handle_context_heuristic(v27);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          content = [(ATXHeuristicClipboardUtilities *)self content];
          dataDetectors = [(ATXHeuristicClipboardUtilities *)self dataDetectors];
          appName = [(ATXHeuristicClipboardUtilities *)self appName];
          *buf = 138740483;
          v51 = content;
          v52 = 2112;
          v53 = dataDetectors;
          v54 = 2112;
          v55 = appName;
          _os_log_impl(&dword_23E3EA000, v24, OS_LOG_TYPE_DEFAULT, "ATXHeuristicClipboardUtilities: content %{sensitive}@ dataDetectors:%@ appName:%@", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v14 = __atxlog_handle_context_heuristic(_resetContents);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "ATXHeuristicClipboardUtilities: no clipboard data";
      v17 = v14;
      v18 = 2;
      goto LABEL_13;
    }
  }

LABEL_14:

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&v44, 8);
}

void __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (a5)
  {
    v14 = __atxlog_handle_context_heuristic(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    objc_storeStrong((*(a1[6] + 8) + 40), a4);
  }
}

- (void)_resetContents
{
  [(ATXHeuristicClipboardUtilities *)self setContent:0];
  [(ATXHeuristicClipboardUtilities *)self setDataDetectors:0];

  [(ATXHeuristicClipboardUtilities *)self setAppName:0];
}

- (id)_appNameFromBundleID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isEqualToString:@"com.apple.Pasteboard.pbutil"])
  {
    v4 = @"pbutil";
    goto LABEL_19;
  }

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v6 = [defaultWorkspace applicationIsInstalled:dCopy];

  if ((v6 & 1) == 0)
  {
    v10 = __atxlog_handle_context_heuristic(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = dCopy;
      _os_log_impl(&dword_23E3EA000, v10, OS_LOG_TYPE_INFO, "bundleID has no installed application: %@", buf, 0xCu);
    }

    v4 = 0;
    goto LABEL_18;
  }

  v22 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:1 error:&v22];
  v9 = v22;
  v10 = v9;
  if (v9)
  {
    v11 = __atxlog_handle_context_heuristic(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicClipboardUtilities *)dCopy _appNameFromBundleID:v10, v11];
    }
  }

  else
  {
    if (v8)
    {
      goto LABEL_12;
    }

    v11 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicClipboardUtilities *)dCopy _appNameFromBundleID:v11, v16, v17, v18, v19, v20, v21];
    }
  }

LABEL_12:
  localizedName = [v8 localizedName];
  v4 = localizedName;
  if (localizedName)
  {
    v13 = localizedName;
  }

  else
  {
    v14 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = dCopy;
      _os_log_impl(&dword_23E3EA000, v14, OS_LOG_TYPE_INFO, "LSApplicationRecord cannot find localizedName for bundleID even though it is installed: %@", buf, 0xCu);
    }
  }

LABEL_18:
LABEL_19:

  return v4;
}

- (id)_dataDetectorsWithContent:(id)content
{
  v24 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v4 = [(__CFString *)contentCopy length];
  if (!v4)
  {
LABEL_11:
    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v5 = __atxlog_handle_context_heuristic(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    *&buf[4] = contentCopy;
    _os_log_impl(&dword_23E3EA000, v5, OS_LOG_TYPE_DEFAULT, "Running data detectors on: %{sensitive}@", buf, 0xCu);
  }

  *buf = 0;
  v6 = DDScannerCreate();
  if (!v6)
  {
    v12 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ATXHeuristicClipboardUtilities *)buf _dataDetectorsWithContent:v12, v13, v14, v15, v16, v17, v18];
    }

    goto LABEL_11;
  }

  v7 = v6;
  v8 = DDScannerScanString();
  if (!v8)
  {
    v19 = __atxlog_handle_context_heuristic(v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v20 = "ScanString returned no results";
LABEL_16:
      _os_log_impl(&dword_23E3EA000, v19, OS_LOG_TYPE_DEFAULT, v20, v22, 2u);
    }

LABEL_17:

    v11 = 0;
    goto LABEL_18;
  }

  v9 = DDScannerCopyResultsWithOptions();
  if (!v9)
  {
    v19 = __atxlog_handle_context_heuristic(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      v20 = "No detector results to copy";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v10 = v9;
  v11 = dataDetectorResultsToPlist(v9, contentCopy, 0);
  CFRelease(v10);
LABEL_18:
  CFRelease(v7);
LABEL_19:

  return v11;
}

- (id)resultWithActions:(id)actions predictionReasons:(unint64_t)reasons
{
  actionsCopy = actions;
  v6 = __atxlog_handle_context_heuristic(actionsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_DEFAULT, "heuristicResultWithEnvironment: Generating NSUA for URL from clipboard", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__ATXHeuristicClipboardUtilities_resultWithActions_predictionReasons___block_invoke;
  v11[3] = &__block_descriptor_40_e43___ATXProactiveSuggestion_16__0__ATXAction_8l;
  v11[4] = reasons;
  v7 = [actionsCopy _pas_mappedArrayWithTransform:v11];

  v8 = objc_opt_new();
  v9 = [[ATXContextHeuristicResult alloc] initWithSuggestions:v7 additionalRefreshTriggers:v8];

  return v9;
}

id __70__ATXHeuristicClipboardUtilities_resultWithActions_predictionReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  v5 = [v3 date];
  v6 = [v5 dateByAddingTimeInterval:1800.0];
  v7 = [objc_alloc(MEMORY[0x277CEB2D0]) initWithStartDate:v5 endDate:v6 lockScreenEligible:0 predicate:0];
  [v4 setCriteria:v7];
  v8 = [ATXContextHeuristicSuggestionProducer suggestionWithAction:v4 predictionReasons:*(a1 + 32) localizedReason:0 score:0 dateInterval:70.0];

  return v8;
}

void __47__ATXHeuristicClipboardUtilities_fetchContents__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[ATXHeuristicClipboardUtilities fetchContents]_block_invoke";
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a1, a3, "Error querying data source %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_appNameFromBundleID:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_23E3EA000, log, OS_LOG_TYPE_ERROR, "Couldn't fetch record for bundle %@, error: %@", &v3, 0x16u);
}

- (void)_appNameFromBundleID:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a2, a3, "Fetched nil record for bundle %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_dataDetectorsWithContent:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_2(&dword_23E3EA000, a2, a3, "Error making scanner: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end