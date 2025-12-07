@interface WFDiagnosticsResultItemBT
- (WFDiagnosticsResultItemBT)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemBT

- (WFDiagnosticsResultItemBT)initWithResults:(id)results
{
  v36 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v34.receiver = self;
  v34.super_class = WFDiagnosticsResultItemBT;
  v5 = [(WFDiagnosticsResultItemBT *)&v34 init];
  btDiagnosticsResults = [resultsCopy btDiagnosticsResults];
  [(WFDiagnosticsResultItemBT *)v5 setResults:btDiagnosticsResults];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  results = [(WFDiagnosticsResultItemBT *)v5 results];
  v8 = [results countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v31;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(results);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if ([v12 testID] == 19)
        {
          if (v9)
          {
            v13 = WFLogForCategory(0);
            v14 = OSLogForWFLogLevel(1uLL);
            v15 = v14;
            if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
            {
              *v29 = 0;
              _os_log_impl(&dword_273ECD000, v13, v15, "Multiple BTConnected results found!", v29, 2u);
            }

            goto LABEL_18;
          }

          v9 = v12;
        }
      }

      v8 = [results countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (!v9)
    {
      v8 = 0;
      goto LABEL_26;
    }

LABEL_18:
    info = [v9 info];
    v18 = [info objectForKey:@"BTConnectedCount"];
    -[WFDiagnosticsResultItemBT setDidPassTest:](v5, "setDidPassTest:", [v18 intValue] < 5);

    failedTests = v5->_failedTests;
    v5->_failedTests = MEMORY[0x277CBEBF8];

    WFCurrentDeviceCapability();
    IsChinaDevice = WFCapabilityIsChinaDevice();
    if (![(WFDiagnosticsResultItemBT *)v5 didPassTest])
    {
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"kWFLocDiagnosticsBTResultTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemBT *)v5 setTitle:v22];

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = v23;
      if (IsChinaDevice)
      {
        v25 = @"kWFLocDiagnosticsBTResultDetailDescription_CH";
      }

      else
      {
        v25 = @"kWFLocDiagnosticsBTResultDetailDescription";
      }

      v26 = [v23 localizedStringForKey:v25 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemBT *)v5 setSuggestion:v26];

      v27 = v5->_failedTests;
      v5->_failedTests = &unk_288304FA8;
    }

    v8 = v5;
  }

  else
  {
    v9 = results;
  }

LABEL_26:
  return v8;
}

@end