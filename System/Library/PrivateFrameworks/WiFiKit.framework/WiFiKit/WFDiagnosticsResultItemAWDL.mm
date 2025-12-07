@interface WFDiagnosticsResultItemAWDL
- (WFDiagnosticsResultItemAWDL)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemAWDL

- (WFDiagnosticsResultItemAWDL)initWithResults:(id)results
{
  v55 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v52.receiver = self;
  v52.super_class = WFDiagnosticsResultItemAWDL;
  v5 = [(WFDiagnosticsResultItemAWDL *)&v52 init];
  awdlDiagnosticsResults = [resultsCopy awdlDiagnosticsResults];
  [(WFDiagnosticsResultItemAWDL *)v5 setResults:awdlDiagnosticsResults];

  v7 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  results = [(WFDiagnosticsResultItemAWDL *)v5 results];
  v9 = [results countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v49;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v49 != v12)
        {
          objc_enumerationMutation(results);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        if ([v14 testID] == 21)
        {
          if (v11)
          {
            v15 = WFLogForCategory(0);
            v16 = OSLogForWFLogLevel(1uLL);
            v17 = v16;
            if (WFCurrentLogLevel(v16, v18) && v15 && os_log_type_enabled(v15, v17))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v15, v17, "Multiple AWDLEnabled results found!", buf, 2u);
            }

            goto LABEL_18;
          }

          v11 = v14;
        }
      }

      v10 = [results countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  results2 = [(WFDiagnosticsResultItemAWDL *)v5 results];
  v20 = [results2 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v44;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(results2);
        }

        v25 = *(*(&v43 + 1) + 8 * j);
        if ([v25 testID] == 22)
        {
          if (v22)
          {
            v26 = WFLogForCategory(0);
            v27 = OSLogForWFLogLevel(1uLL);
            v28 = v27;
            if (WFCurrentLogLevel(v27, v29) && v26 && os_log_type_enabled(v26, v28))
            {
              *buf = 0;
              _os_log_impl(&dword_273ECD000, v26, v28, "Multiple AWDL real time mode results found!", buf, 2u);
            }

            v30 = v11 != 0;
            v31 = 1;
            goto LABEL_36;
          }

          v22 = v25;
        }
      }

      v21 = [results2 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v22 = 0;
  }

  v30 = v11 != 0;
  v31 = v22 != 0;
  if (v11 | v22)
  {
LABEL_36:
    if ([v11 didPass])
    {
      [v7 addObject:&unk_288304C30];
    }

    if ([v22 didPass])
    {
      [v7 addObject:&unk_288304C48];
    }

    objc_storeStrong(&v5->_failedTests, v7);
    if (v30 && v31 && ([v11 didPass] & 1) == 0)
    {
      v32 = [v22 didPass] ^ 1;
    }

    else
    {
      v32 = 0;
    }

    [(WFDiagnosticsResultItemAWDL *)v5 setDidPassTest:v32];
    WFCurrentDeviceCapability();
    IsChinaDevice = WFCapabilityIsChinaDevice();
    if (![(WFDiagnosticsResultItemAWDL *)v5 didPassTest])
    {
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = v35;
      if (IsChinaDevice)
      {
        v37 = @"kWFLocDiagnosticsAWDLResultTitle_CH";
      }

      else
      {
        v37 = @"kWFLocDiagnosticsAWDLResultTitle";
      }

      if (IsChinaDevice)
      {
        v38 = @"kWFLocDiagnosticsAWDLResultDetailDescription_CH";
      }

      else
      {
        v38 = @"kWFLocDiagnosticsAWDLResultDetailDescription";
      }

      v39 = [v35 localizedStringForKey:v37 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemAWDL *)v5 setTitle:v39];

      v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v40 localizedStringForKey:v38 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      [(WFDiagnosticsResultItemAWDL *)v5 setSuggestion:v41];
    }

    v33 = v5;
  }

  else
  {
    v22 = 0;
    v33 = 0;
  }

  return v33;
}

@end