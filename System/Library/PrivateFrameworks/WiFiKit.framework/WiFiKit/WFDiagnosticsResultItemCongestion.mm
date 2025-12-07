@interface WFDiagnosticsResultItemCongestion
- (WFDiagnosticsResultItemCongestion)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemCongestion

- (WFDiagnosticsResultItemCongestion)initWithResults:(id)results
{
  v34 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v32.receiver = self;
  v32.super_class = WFDiagnosticsResultItemCongestion;
  v5 = [(WFDiagnosticsResultItemCongestion *)&v32 init];
  congestionDiagnosticsResults = [resultsCopy congestionDiagnosticsResults];
  [(WFDiagnosticsResultItemCongestion *)v5 setResults:congestionDiagnosticsResults];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  results = [(WFDiagnosticsResultItemCongestion *)v5 results];
  v8 = [results countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v29;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(results);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if ([v12 testID] == 24)
        {
          if (v9)
          {
            v13 = WFLogForCategory(0);
            v14 = OSLogForWFLogLevel(1uLL);
            v15 = v14;
            if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
            {
              *v27 = 0;
              _os_log_impl(&dword_273ECD000, v13, v15, "Multiple channel congestion results found!", v27, 2u);
            }

            goto LABEL_18;
          }

          v9 = v12;
        }
      }

      v8 = [results countByEnumeratingWithState:&v28 objects:v33 count:16];
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
    -[WFDiagnosticsResultItemCongestion setDidPassTest:](v5, "setDidPassTest:", [v9 didPass]);
    failedTests = v5->_failedTests;
    v5->_failedTests = MEMORY[0x277CBEBF8];

    WFCurrentDeviceCapability();
    IsChinaDevice = WFCapabilityIsChinaDevice();
    if (![(WFDiagnosticsResultItemCongestion *)v5 didPassTest])
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      if (IsChinaDevice)
      {
        v21 = @"kWFLocDiagnosticsCongestionResultTitle_CH";
      }

      else
      {
        v21 = @"kWFLocDiagnosticsCongestionResultTitle";
      }

      v22 = [v19 localizedStringForKey:v21 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemCongestion *)v5 setTitle:v22];

      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"kWFLocDiagnosticsCongestionResultDetailDescription" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemCongestion *)v5 setSuggestion:v24];

      v25 = v5->_failedTests;
      v5->_failedTests = &unk_288304EE8;
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