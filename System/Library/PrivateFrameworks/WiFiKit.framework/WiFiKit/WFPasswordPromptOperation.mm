@interface WFPasswordPromptOperation
+ (id)passwordPromptOperationWithCredentialsContext:(id)context;
@end

@implementation WFPasswordPromptOperation

+ (id)passwordPromptOperationWithCredentialsContext:(id)context
{
  v42 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = WFLogForCategory(3uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    *buf = 136315394;
    v39 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]";
    v40 = 2112;
    v41 = contextCopy;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: creating password prompt for context %@", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v9 localizedStringForKey:@"kWFLocPasswordAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v10 = MEMORY[0x277CCACA8];
  network = [contextCopy network];
  ssid = [network ssid];
  v33 = [v10 stringWithFormat:v34, ssid];

  if (v33)
  {
    [v8 setObject:v33 forKey:*MEMORY[0x277CBF188]];
  }

  else
  {
    v13 = MEMORY[0x277CCACA8];
    network2 = [contextCopy network];
    ssid2 = [network2 ssid];
    v16 = [v13 stringWithFormat:@"Enter the password for “%@”", ssid2];
    [v8 setObject:v16 forKey:*MEMORY[0x277CBF188]];
  }

  [v8 setObject:&unk_288304EB8 forKey:*MEMORY[0x277CBF230]];
  v17 = [v9 localizedStringForKey:@"kWFLocPasswordAlertCancelButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"Cancel";
  }

  [v8 setObject:v19 forKey:*MEMORY[0x277CBF1C0]];
  v20 = [v9 localizedStringForKey:@"kWFLocPasswordAlertJoinButton" value:&stru_2882E4AD8 table:@"WiFiKitUILocalizableStrings"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"Join";
  }

  [v8 setObject:v22 forKey:*MEMORY[0x277CBF1E8]];
  [v8 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v8 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  v23 = [objc_alloc(objc_opt_class()) initWithOptions:v8 timeout:0x10000 flags:0.0];
  [v23 setCredentialsProviderContext:contextCopy];
  objc_initWeak(&location, v23);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke;
  v35[3] = &unk_279EBCEA0;
  objc_copyWeak(&v36, &location);
  [v23 setCompletionBlock:v35];
  v24 = WFLogForCategory(3uLL);
  v25 = OSLogForWFLogLevel(1uLL);
  v26 = v25;
  if (WFCurrentLogLevel(v25, v27) && v24 && os_log_type_enabled(v24, v26))
  {
    *buf = 136315394;
    v39 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]";
    v40 = 2112;
    v41 = v23;
    _os_log_impl(&dword_273ECD000, v24, v26, "%s: password prompt %@", buf, 0x16u);
  }

  v28 = MEMORY[0x277CCACA8];
  network3 = [contextCopy network];
  ssid3 = [network3 ssid];
  v31 = [v28 stringWithFormat:@"Password prompt for '%@'", ssid3];
  [v23 setName:v31];

  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);

  return v23;
}

void __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke_2;
  v4[3] = &unk_279EBCE78;
  v5 = WeakRetained;
  v3 = WeakRetained;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v6);
}

void __75__WFPasswordPromptOperation_passwordPromptOperationWithCredentialsContext___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(3uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6))
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v2 == 2)
  {
    if (v8)
    {
      v9 = v3;
      if (os_log_type_enabled(v9, v5))
      {
        WeakRetained = objc_loadWeakRetained((a1 + 40));
        v26 = 136315394;
        v27 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]_block_invoke_2";
        v28 = 2112;
        v29 = WeakRetained;
        _os_log_impl(&dword_273ECD000, v9, v5, "%s: user entered password %@", &v26, 0x16u);
      }
    }

    v11 = [*(a1 + 32) userResponse];
    if (v11 && (v12 = v11, [*(a1 + 32) userResponse], v13 = objc_claimAutoreleasedReturnValue(), v14 = *MEMORY[0x277CBF238], objc_msgSend(v13, "objectForKey:", *MEMORY[0x277CBF238]), v15 = objc_claimAutoreleasedReturnValue(), v15, v13, v12, v15))
    {
      v16 = [*(a1 + 32) userResponse];
      v17 = [v16 objectForKey:v14];
      [*(a1 + 32) setPassword:v17];
    }

    else
    {
      v16 = WFLogForCategory(3uLL);
      v22 = OSLogForWFLogLevel(1uLL);
      v23 = v22;
      if (WFCurrentLogLevel(v22, v24) && v16 && os_log_type_enabled(v16, v23))
      {
        v25 = *(a1 + 32);
        v26 = 136315394;
        v27 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]_block_invoke";
        v28 = 2112;
        v29 = v25;
        _os_log_impl(&dword_273ECD000, v16, v23, "%s: nil user response from prompt %@", &v26, 0x16u);
      }
    }

    v21 = [*(a1 + 32) credentialsProviderContext];
    [v21 gatherCredentials:0];
  }

  else
  {
    if (v8)
    {
      v18 = v3;
      if (os_log_type_enabled(v18, v5))
      {
        v19 = *(a1 + 32);
        v20 = [v19 credentialsProviderContext];
        v26 = 136315650;
        v27 = "+[WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:]_block_invoke";
        v28 = 2112;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_273ECD000, v18, v5, "%s: user cancelled password prompt %@, cancelling context %@", &v26, 0x20u);
      }
    }

    [*(a1 + 32) setPassword:0];
    v21 = [*(a1 + 32) credentialsProviderContext];
    [v21 cancel];
  }
}

@end