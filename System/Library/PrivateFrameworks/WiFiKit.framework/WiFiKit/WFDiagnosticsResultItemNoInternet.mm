@interface WFDiagnosticsResultItemNoInternet
- (WFDiagnosticsResultItemNoInternet)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemNoInternet

- (WFDiagnosticsResultItemNoInternet)initWithResults:(id)results
{
  v31 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v29.receiver = self;
  v29.super_class = WFDiagnosticsResultItemNoInternet;
  v5 = [(WFDiagnosticsResultItemNoInternet *)&v29 init];
  noInternetDiagnosticsResults = [resultsCopy noInternetDiagnosticsResults];
  [(WFDiagnosticsResultItemNoInternet *)v5 setResults:noInternetDiagnosticsResults];

  v7 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  results = [(WFDiagnosticsResultItemNoInternet *)v5 results];
  v9 = [results countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(results);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      if ([v14 testID] == 11)
      {
        if (v11)
        {
          v15 = WFLogForCategory(0);
          v16 = OSLogForWFLogLevel(1uLL);
          v17 = v16;
          if (WFCurrentLogLevel(v16, v18) && v15 && os_log_type_enabled(v15, v17))
          {
            *v24 = 0;
            _os_log_impl(&dword_273ECD000, v15, v17, "Multiple RetrieveAppleDisallowCellular results found!", v24, 2u);
          }

          goto LABEL_18;
        }

        v11 = v14;
      }

      if (v10 == ++v13)
      {
        v10 = [results countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_18:
        if (([v11 didPass]& 1) == 0)
        {
          [v7 addObject:&unk_288304D20];
        }

        objc_storeStrong(&v5->_failedTests, v7);
        [(WFDiagnosticsResultItemNoInternet *)v5 setDidPassTest:[v11 didPass]];
        v19 = v5;
        goto LABEL_27;
      }
    }
  }

LABEL_22:
  v11 = WFLogForCategory(0);
  v20 = OSLogForWFLogLevel(1uLL);
  v21 = v20;
  v19 = 0;
  if (WFCurrentLogLevel(v20, v22) && v11)
  {
    if (os_log_type_enabled(v11, v21))
    {
      *v24 = 0;
      _os_log_impl(&dword_273ECD000, v11, v21, "No Internet tests didn't have complete test results!", v24, 2u);
    }

    v19 = 0;
  }

LABEL_27:

  return v19;
}

@end