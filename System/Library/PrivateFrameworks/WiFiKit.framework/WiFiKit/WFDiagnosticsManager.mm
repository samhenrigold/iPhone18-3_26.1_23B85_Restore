@interface WFDiagnosticsManager
- (NSArray)noInternetTestRequests;
- (WFDiagnosticsManager)init;
- (WFDiagnosticsManager)initWithCustomTests:(id)tests;
- (id)_joinFailureDiagnosticsResultFromW5Results:(id)results;
- (id)_noInternetDiagnosticsResultFromW5Results:(id)results;
- (id)joinFailureTestRequestsFor:(id)for;
- (void)runCustomDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result;
- (void)runJoinFailureDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result;
- (void)runNoInternetDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result;
@end

@implementation WFDiagnosticsManager

- (WFDiagnosticsManager)init
{
  v7.receiver = self;
  v7.super_class = WFDiagnosticsManager;
  v2 = [(WFDiagnosticsManager *)&v7 init];
  if (v2)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v3 = getW5ClientClass_softClass_0;
    v12 = getW5ClientClass_softClass_0;
    if (!getW5ClientClass_softClass_0)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __getW5ClientClass_block_invoke_0;
      v8[3] = &unk_279EBCD88;
      v8[4] = &v9;
      __getW5ClientClass_block_invoke_0(v8);
      v3 = v10[3];
    }

    v4 = v3;
    _Block_object_dispose(&v9, 8);
    sharedClient = [v3 sharedClient];
    [(WFDiagnosticsManager *)v2 setClient:sharedClient];
  }

  return v2;
}

- (WFDiagnosticsManager)initWithCustomTests:(id)tests
{
  v19 = *MEMORY[0x277D85DE8];
  testsCopy = tests;
  v5 = [(WFDiagnosticsManager *)self init];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = testsCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [getW5DiagnosticsTestRequestClass() requestWithTestID:objc_msgSend(*(*(&v14 + 1) + 8 * v11) configuration:{"intValue", v14), 0}];
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(WFDiagnosticsManager *)v5 setCustomTestRequests:v6];
  return v5;
}

- (id)joinFailureTestRequestsFor:(id)for
{
  v10[2] = *MEMORY[0x277D85DE8];
  forCopy = for;
  v4 = [getW5DiagnosticsTestRequestClass() requestWithTestID:24 configuration:0];
  if (forCopy)
  {
    v5 = objc_opt_new();
    [v5 setObject:forCopy forKeyedSubscript:@"NetworkName"];
    v6 = [getW5DiagnosticsTestRequestClass() requestWithTestID:24 configuration:v5];

    v4 = v6;
  }

  v7 = [getW5DiagnosticsTestRequestClass() requestWithTestID:19 configuration:0];
  v10[0] = v7;
  v10[1] = v4;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

- (NSArray)noInternetTestRequests
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInt:5];
  [v2 setObject:v3 forKeyedSubscript:@"Timeout"];

  v4 = [getW5DiagnosticsTestRequestClass() requestWithTestID:11 configuration:v2];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)_joinFailureDiagnosticsResultFromW5Results:(id)results
{
  resultsCopy = results;
  v4 = [[WFDiagnosticsResultItemBT alloc] initWithResults:resultsCopy];
  v5 = v4;
  if (v4 && ![(WFDiagnosticsResultItemBT *)v4 didPassTest])
  {
    v9 = v5;
    v8 = v9;
  }

  else
  {
    v6 = [[WFDiagnosticsResultItemCongestion alloc] initWithResults:resultsCopy];
    v7 = v6;
    if (v6 && ![(WFDiagnosticsResultItemCongestion *)v6 didPassTest])
    {
      v9 = v7;
      v8 = v9;
    }

    else
    {
      v8 = [[WFDiagnosticsResultItemTestPass alloc] initWithResults:resultsCopy];
      v9 = 0;
    }
  }

  return v8;
}

- (id)_noInternetDiagnosticsResultFromW5Results:(id)results
{
  resultsCopy = results;
  v4 = [[WFDiagnosticsResultItemNoInternet alloc] initWithResults:resultsCopy];

  return v4;
}

- (void)runCustomDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result
{
  v33 = *MEMORY[0x277D85DE8];
  forCopy = for;
  updateCopy = update;
  resultCopy = result;
  customTestRequests = [(WFDiagnosticsManager *)self customTestRequests];
  v12 = [customTestRequests count] == 0;

  v13 = WFLogForCategory(0);
  if (v12)
  {
    v20 = OSLogForWFLogLevel(1uLL);
    v21 = v20;
    if (WFCurrentLogLevel(v20, v22) && v13 && os_log_type_enabled(v13, v21))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v13, v21, "No test requests to run.", buf, 2u);
    }
  }

  else
  {
    v14 = OSLogForWFLogLevel(3uLL);
    v15 = v14;
    if (WFCurrentLogLevel(v14, v16) >= 3 && v13 && os_log_type_enabled(v13, v15))
    {
      *buf = 136315394;
      v30 = "[WFDiagnosticsManager runCustomDiagnosticsFor:withUpdate:result:]";
      v31 = 2112;
      v32 = forCopy;
      _os_log_impl(&dword_273ECD000, v13, v15, "%s: Running a Custom test for %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    client = self->_client;
    customTestRequests = self->_customTestRequests;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke;
    v27[3] = &unk_279EBE1F8;
    v28 = updateCopy;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_3;
    v23[3] = &unk_279EBE248;
    v24 = forCopy;
    objc_copyWeak(&v26, buf);
    v25 = resultCopy;
    v19 = [(W5Client *)client runDiagnostics:customTestRequests configuration:0 update:v27 reply:v23];

    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }
}

void __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_2;
  v6[3] = &unk_279EBDA98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_3(id *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      v12 = a1[4];
      *buf = 138412546;
      v54 = v12;
      v55 = 2048;
      v56 = [v6 count];
      _os_log_impl(&dword_273ECD000, v11, v9, "Custom test for %@ completed with %lu raw results", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v14 = [WeakRetained _joinFailureDiagnosticsResultFromW5Results:v6];

  if (!v14 || [v14 didPassTest])
  {
    v15 = objc_loadWeakRetained(a1 + 6);
    v16 = [v15 _noInternetDiagnosticsResultFromW5Results:v6];

    v14 = v16;
  }

  v17 = objc_loadWeakRetained(a1 + 6);

  if (v17 && v14)
  {
    v18 = +[WFMetricsManager sharedManager];
    v19 = [WFDiagnosticsEvent alloc];
    v20 = [v14 didPassTest];
    v21 = [v14 failedTests];
    v22 = [(WFDiagnosticsEvent *)v19 initWithDiagnosticsEventType:2 didPassTest:v20 failedTests:v21];
    [v18 processEvent:v22];

LABEL_33:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__WFDiagnosticsManager_runCustomDiagnosticsFor_withUpdate_result___block_invoke_21;
    block[3] = &unk_279EBE220;
    v47 = a1[5];
    v44 = v5;
    v45 = v14;
    v46 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v38 = v47;
    goto LABEL_34;
  }

  v23 = objc_loadWeakRetained(a1 + 6);

  if (v23)
  {
    if (v14)
    {
      goto LABEL_33;
    }

    v42 = v5;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v24 = v6;
    v25 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v49;
      v28 = &stru_2882E4AD8;
      do
      {
        v29 = 0;
        v30 = v28;
        do
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [v30 stringByAppendingFormat:@"\n%@", *(*(&v48 + 1) + 8 * v29)];

          ++v29;
          v30 = v28;
        }

        while (v26 != v29);
        v26 = [v24 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v26);
    }

    else
    {
      v28 = &stru_2882E4AD8;
    }

    v34 = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(1uLL);
    v36 = v35;
    if (WFCurrentLogLevel(v35, v37) && v34 && os_log_type_enabled(v34, v36))
    {
      *buf = 138412290;
      v54 = v28;
      _os_log_impl(&dword_273ECD000, v34, v36, "Custom diagnostics result failed to generate from raw results: %@", buf, 0xCu);
    }

    v5 = v42;
  }

  else
  {
    v28 = WFLogForCategory(0);
    v31 = OSLogForWFLogLevel(4uLL);
    v32 = v31;
    if (WFCurrentLogLevel(v31, v33) >= 4 && v28 && os_log_type_enabled(v28, v32))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v28, v32, "Test finished after WFDiagnosticsMananger deallocated!", buf, 2u);
    }
  }

  if (v14)
  {
    goto LABEL_33;
  }

  v38 = WFLogForCategory(0);
  v39 = OSLogForWFLogLevel(1uLL);
  v40 = v39;
  if (WFCurrentLogLevel(v39, v41) && v38 && os_log_type_enabled(v38, v40))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v38, v40, "Empty custom diagnostics result, discarding result callback!", buf, 2u);
  }

LABEL_34:
}

- (void)runJoinFailureDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result
{
  v32 = *MEMORY[0x277D85DE8];
  forCopy = for;
  updateCopy = update;
  resultCopy = result;
  v11 = [(WFDiagnosticsManager *)self joinFailureTestRequestsFor:forCopy];
  objc_initWeak(&location, self);
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(3uLL);
  v14 = v13;
  if (WFCurrentLogLevel(v13, v15) >= 3 && v12 && os_log_type_enabled(v12, v14))
  {
    *buf = 136315394;
    v29 = "[WFDiagnosticsManager runJoinFailureDiagnosticsFor:withUpdate:result:]";
    v30 = 2112;
    v31 = forCopy;
    _os_log_impl(&dword_273ECD000, v12, v14, "%s: Running a Join Failure test for %@", buf, 0x16u);
  }

  client = [(WFDiagnosticsManager *)self client];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke;
  v25[3] = &unk_279EBE1F8;
  v17 = updateCopy;
  v26 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_3;
  v21[3] = &unk_279EBE248;
  v18 = forCopy;
  v22 = v18;
  objc_copyWeak(&v24, &location);
  v19 = resultCopy;
  v23 = v19;
  v20 = [client runDiagnostics:v11 configuration:0 update:v25 reply:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_2;
  v6[3] = &unk_279EBDA98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_3(id *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      v12 = a1[4];
      *buf = 138412546;
      v52 = v12;
      v53 = 2048;
      v54 = [v6 count];
      _os_log_impl(&dword_273ECD000, v11, v9, "Join Failure test for %@ completed with %lu raw results", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v14 = [WeakRetained _joinFailureDiagnosticsResultFromW5Results:v6];

  v15 = objc_loadWeakRetained(a1 + 6);
  if (v15 && v14)
  {
    v16 = +[WFMetricsManager sharedManager];
    v17 = [WFDiagnosticsEvent alloc];
    v18 = [v14 didPassTest];
    v19 = [v14 failedTests];
    v20 = [(WFDiagnosticsEvent *)v17 initWithDiagnosticsEventType:0 didPassTest:v18 failedTests:v19];
    [v16 processEvent:v20];

LABEL_30:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__WFDiagnosticsManager_runJoinFailureDiagnosticsFor_withUpdate_result___block_invoke_23;
    block[3] = &unk_279EBE220;
    v45 = a1[5];
    v42 = v5;
    v43 = v14;
    v44 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v36 = v45;
    goto LABEL_31;
  }

  v21 = objc_loadWeakRetained(a1 + 6);

  if (v21)
  {
    if (v14)
    {
      goto LABEL_30;
    }

    v40 = v5;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      v26 = &stru_2882E4AD8;
      do
      {
        v27 = 0;
        v28 = v26;
        do
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v26 = [v28 stringByAppendingFormat:@"\n%@", *(*(&v46 + 1) + 8 * v27)];

          ++v27;
          v28 = v26;
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = &stru_2882E4AD8;
    }

    v32 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(1uLL);
    v34 = v33;
    if (WFCurrentLogLevel(v33, v35) && v32 && os_log_type_enabled(v32, v34))
    {
      *buf = 138412290;
      v52 = v26;
      _os_log_impl(&dword_273ECD000, v32, v34, "Join Failure diagnostics result failed to generate from raw results: %@", buf, 0xCu);
    }

    v5 = v40;
  }

  else
  {
    v26 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(4uLL);
    v30 = v29;
    if (WFCurrentLogLevel(v29, v31) >= 4 && v26 && os_log_type_enabled(v26, v30))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v26, v30, "Test finished after WFDiagnosticsMananger deallocated!", buf, 2u);
    }
  }

  if (v14)
  {
    goto LABEL_30;
  }

  v36 = WFLogForCategory(0);
  v37 = OSLogForWFLogLevel(1uLL);
  v38 = v37;
  if (WFCurrentLogLevel(v37, v39) && v36 && os_log_type_enabled(v36, v38))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v36, v38, "Empty join failure diagnostics result, discarding result callback!", buf, 2u);
  }

LABEL_31:
}

- (void)runNoInternetDiagnosticsFor:(id)for withUpdate:(id)update result:(id)result
{
  v32 = *MEMORY[0x277D85DE8];
  forCopy = for;
  updateCopy = update;
  resultCopy = result;
  objc_initWeak(&location, self);
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  v13 = v12;
  if (WFCurrentLogLevel(v12, v14) >= 3 && v11 && os_log_type_enabled(v11, v13))
  {
    *buf = 136315394;
    v29 = "[WFDiagnosticsManager runNoInternetDiagnosticsFor:withUpdate:result:]";
    v30 = 2112;
    v31 = forCopy;
    _os_log_impl(&dword_273ECD000, v11, v13, "%s: Running a No Internet test for %@", buf, 0x16u);
  }

  client = [(WFDiagnosticsManager *)self client];
  noInternetTestRequests = [(WFDiagnosticsManager *)self noInternetTestRequests];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke;
  v25[3] = &unk_279EBE1F8;
  v17 = updateCopy;
  v26 = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_3;
  v21[3] = &unk_279EBE248;
  v18 = forCopy;
  v22 = v18;
  objc_copyWeak(&v24, &location);
  v19 = resultCopy;
  v23 = v19;
  v20 = [client runDiagnostics:noInternetTestRequests configuration:0 update:v25 reply:v21];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_2;
  v6[3] = &unk_279EBDA98;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_3(id *a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      v12 = a1[4];
      *buf = 138412546;
      v52 = v12;
      v53 = 2048;
      v54 = [v6 count];
      _os_log_impl(&dword_273ECD000, v11, v9, "No Internet test for %@ completed with %lu raw results", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v14 = [WeakRetained _noInternetDiagnosticsResultFromW5Results:v6];

  v15 = objc_loadWeakRetained(a1 + 6);
  if (v15 && v14)
  {
    v16 = +[WFMetricsManager sharedManager];
    v17 = [WFDiagnosticsEvent alloc];
    v18 = [v14 didPassTest];
    v19 = [v14 failedTests];
    v20 = [(WFDiagnosticsEvent *)v17 initWithDiagnosticsEventType:1 didPassTest:v18 failedTests:v19];
    [v16 processEvent:v20];

LABEL_30:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__WFDiagnosticsManager_runNoInternetDiagnosticsFor_withUpdate_result___block_invoke_24;
    block[3] = &unk_279EBE220;
    v45 = a1[5];
    v42 = v5;
    v43 = v14;
    v44 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);

    v36 = v45;
    goto LABEL_31;
  }

  v21 = objc_loadWeakRetained(a1 + 6);

  if (v21)
  {
    if (v14)
    {
      goto LABEL_30;
    }

    v40 = v5;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v6;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      v26 = &stru_2882E4AD8;
      do
      {
        v27 = 0;
        v28 = v26;
        do
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v26 = [v28 stringByAppendingFormat:@"\n%@", *(*(&v46 + 1) + 8 * v27)];

          ++v27;
          v28 = v26;
        }

        while (v24 != v27);
        v24 = [v22 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = &stru_2882E4AD8;
    }

    v32 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(1uLL);
    v34 = v33;
    if (WFCurrentLogLevel(v33, v35) && v32 && os_log_type_enabled(v32, v34))
    {
      *buf = 138412290;
      v52 = v26;
      _os_log_impl(&dword_273ECD000, v32, v34, "No Internet diagnostics result failed to generate from raw results: %@", buf, 0xCu);
    }

    v5 = v40;
  }

  else
  {
    v26 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(4uLL);
    v30 = v29;
    if (WFCurrentLogLevel(v29, v31) >= 4 && v26 && os_log_type_enabled(v26, v30))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v26, v30, "Test finished after WFDiagnosticsMananger deallocated!", buf, 2u);
    }
  }

  if (v14)
  {
    goto LABEL_30;
  }

  v36 = WFLogForCategory(0);
  v37 = OSLogForWFLogLevel(1uLL);
  v38 = v37;
  if (WFCurrentLogLevel(v37, v39) && v36 && os_log_type_enabled(v36, v38))
  {
    *buf = 0;
    _os_log_impl(&dword_273ECD000, v36, v38, "Empty no internet diagnostics result, discarding result callback!", buf, 2u);
  }

LABEL_31:
}

@end