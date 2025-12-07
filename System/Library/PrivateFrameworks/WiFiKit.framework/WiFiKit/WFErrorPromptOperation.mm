@interface WFErrorPromptOperation
+ (id)errorPromptOperationWithContext:(id)context;
@end

@implementation WFErrorPromptOperation

+ (id)errorPromptOperationWithContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = WFLogForCategory(3uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      error = [contextCopy error];
      *buf = 136315650;
      v36 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
      v37 = 2112;
      v38 = contextCopy;
      v39 = 2112;
      v40 = error;
      _os_log_impl(&dword_273ECD000, v8, v6, "%s: creating error prompt for context %@ (error %@)", buf, 0x20u);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  error2 = [contextCopy error];
  localizedDescription = [error2 localizedDescription];

  if ([localizedDescription length])
  {
    [v10 setObject:localizedDescription forKey:*MEMORY[0x277CBF188]];
    v13 = WFLogForCategory(3uLL);
    v14 = OSLogForWFLogLevel(1uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) && v13 && os_log_type_enabled(v13, v15))
    {
      *buf = 136315394;
      v36 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
      v37 = 2112;
      v38 = localizedDescription;
      _os_log_impl(&dword_273ECD000, v13, v15, "%s: prompt title %@", buf, 0x16u);
    }
  }

  error3 = [contextCopy error];
  localizedRecoverySuggestion = [error3 localizedRecoverySuggestion];

  if (localizedRecoverySuggestion)
  {
    [v10 setObject:localizedRecoverySuggestion forKey:*MEMORY[0x277CBF198]];
    v19 = WFLogForCategory(3uLL);
    v20 = OSLogForWFLogLevel(1uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) && v19 && os_log_type_enabled(v19, v21))
    {
      *buf = 136315394;
      v36 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
      v37 = 2112;
      v38 = localizedRecoverySuggestion;
      _os_log_impl(&dword_273ECD000, v19, v21, "%s: prompt message %@", buf, 0x16u);
    }
  }

  error4 = [contextCopy error];
  localizedRecoveryOptions = [error4 localizedRecoveryOptions];
  v25 = [localizedRecoveryOptions objectAtIndexedSubscript:0];

  [v10 setObject:v25 forKey:*MEMORY[0x277CBF1E8]];
  [v10 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v10 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  v26 = [objc_alloc(objc_opt_class()) initWithOptions:v10 timeout:0 flags:0.0];
  [v26 setContext:contextCopy];
  objc_initWeak(&location, v26);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke;
  v32[3] = &unk_279EBCEA0;
  objc_copyWeak(&v33, &location);
  [v26 setCompletionBlock:v32];
  v27 = WFLogForCategory(3uLL);
  v28 = OSLogForWFLogLevel(1uLL);
  v29 = v28;
  if (WFCurrentLogLevel(v28, v30) && v27 && os_log_type_enabled(v27, v29))
  {
    *buf = 136315394;
    v36 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]";
    v37 = 2112;
    v38 = v26;
    _os_log_impl(&dword_273ECD000, v27, v29, "%s: password prompt %@", buf, 0x16u);
  }

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);

  return v26;
}

void __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke_2;
  block[3] = &unk_279EBCEA0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __58__WFErrorPromptOperation_errorPromptOperationWithContext___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(3uLL);
  v3 = OSLogForWFLogLevel(1uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) && v2)
  {
    v6 = v2;
    if (os_log_type_enabled(v6, v4))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = 136315394;
      v11 = "+[WFErrorPromptOperation errorPromptOperationWithContext:]_block_invoke_2";
      v12 = 2112;
      v13 = WeakRetained;
      _os_log_impl(&dword_273ECD000, v6, v4, "%s: user dismissed alert %@", &v10, 0x16u);
    }
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 context];
  [v9 cancel];
}

@end