@interface WFPickerViewProvider
- (WFPickerViewProvider)initWithRootViewController:(id)controller;
- (WFPickerViewProviderDelegate)delegate;
- (id)_promptForEnterpriseJoin:(id)join;
- (id)credentialsViewControllerWithContext:(id)context;
- (id)networkErrorViewControllerWithContext:(id)context;
@end

@implementation WFPickerViewProvider

- (id)_promptForEnterpriseJoin:(id)join
{
  v31 = *MEMORY[0x277D85DE8];
  joinCopy = join;
  v5 = [WFEnterpriseJoinPromptOperation enterpriseJoinPromptOperationWithDeviceCapability:WFCurrentDeviceCapability()];
  network = [joinCopy network];
  v7 = WFLogForCategory(3uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
  {
    *buf = 136315650;
    v26 = "[WFPickerViewProvider _promptForEnterpriseJoin:]";
    v27 = 2112;
    v28 = v5;
    v29 = 2112;
    v30 = network;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: prompt (%@) for enterprise join %@", buf, 0x20u);
  }

  objc_initWeak(buf, v5);
  objc_initWeak(&location, self);
  objc_initWeak(&from, network);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke;
  v17[3] = &unk_279EBE500;
  objc_copyWeak(&v20, buf);
  objc_copyWeak(&v21, &location);
  objc_copyWeak(&v22, &from);
  v11 = network;
  v18 = v11;
  v12 = joinCopy;
  v19 = v12;
  [v5 setCompletionBlock:v17];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v5];

  v14 = v19;
  v15 = v5;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);

  return v15;
}

void __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke_2;
  block[3] = &unk_279EBE500;
  objc_copyWeak(&v5, a1 + 6);
  objc_copyWeak(&v6, a1 + 7);
  objc_copyWeak(&v7, a1 + 8);
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __49__WFPickerViewProvider__promptForEnterpriseJoin___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained result];

  if (v3 == 2)
  {
    v4 = objc_loadWeakRetained((a1 + 56));
    v5 = [v4 delegate];
    v6 = objc_loadWeakRetained((a1 + 64));
    [v5 openSettingsForScanRecord:v6];

    v7 = WFLogForCategory(3uLL);
    v8 = OSLogForWFLogLevel(1uLL);
    v9 = v8;
    if (WFCurrentLogLevel(v8, v10) && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v9))
      {
        v11 = objc_loadWeakRetained((a1 + 48));
        v12 = *(a1 + 32);
        v17 = 136315650;
        v18 = "[WFPickerViewProvider _promptForEnterpriseJoin:]_block_invoke_2";
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v12;
        v13 = "%s: user accepted join prompt (%@) for enterprise network %@";
LABEL_10:
        _os_log_impl(&dword_273ECD000, v7, v9, v13, &v17, 0x20u);

        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [*(a1 + 40) cancel];
    v7 = WFLogForCategory(3uLL);
    v14 = OSLogForWFLogLevel(1uLL);
    v9 = v14;
    if (WFCurrentLogLevel(v14, v15) && v7)
    {
      v7 = v7;
      if (os_log_type_enabled(v7, v9))
      {
        v11 = objc_loadWeakRetained((a1 + 48));
        v16 = *(a1 + 32);
        v17 = 136315650;
        v18 = "[WFPickerViewProvider _promptForEnterpriseJoin:]_block_invoke";
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v16;
        v13 = "%s: user cancelled join prompt (%@) for enterprise network %@";
        goto LABEL_10;
      }

LABEL_11:
    }
  }
}

- (id)credentialsViewControllerWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(WFPickerViewProvider *)self _canHandleCredentialsContext:contextCopy])
  {
    v5 = [WFPasswordPromptOperation passwordPromptOperationWithCredentialsContext:contextCopy];
    v6 = WFLogForCategory(3uLL);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      v16 = 136315650;
      v17 = "[WFPickerViewProvider credentialsViewControllerWithContext:]";
      v18 = 2112;
      v19 = contextCopy;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_273ECD000, v6, v8, "%s: can handle credentials context %@, using prompt %@", &v16, 0x20u);
    }

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v5];
  }

  else
  {
    v11 = WFLogForCategory(3uLL);
    v12 = OSLogForWFLogLevel(1uLL);
    v13 = v12;
    if (WFCurrentLogLevel(v12, v14) && v11 && os_log_type_enabled(v11, v13))
    {
      v16 = 136315394;
      v17 = "[WFPickerViewProvider credentialsViewControllerWithContext:]";
      v18 = 2112;
      v19 = contextCopy;
      _os_log_impl(&dword_273ECD000, v11, v13, "%s: unhandled credentials context %@, launching settings", &v16, 0x16u);
    }

    v5 = [(WFPickerViewProvider *)self _promptForEnterpriseJoin:contextCopy];
  }

  return v5;
}

- (id)networkErrorViewControllerWithContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = [WFErrorPromptOperation errorPromptOperationWithContext:contextCopy];
  v5 = WFLogForCategory(3uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8))
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v4)
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      v14 = 136315650;
      v15 = "[WFPickerViewProvider networkErrorViewControllerWithContext:]";
      v16 = 2112;
      v17 = v4;
      v18 = 2112;
      v19 = contextCopy;
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: error prompt %@ for context %@", &v14, 0x20u);
    }

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v4];

    v12 = v4;
  }

  else
  {
    if (v10 && os_log_type_enabled(v5, v7))
    {
      v14 = 136315394;
      v15 = "[WFPickerViewProvider networkErrorViewControllerWithContext:]";
      v16 = 2112;
      v17 = contextCopy;
      _os_log_impl(&dword_273ECD000, v5, v7, "%s: failed to create error alert for context %@", &v14, 0x16u);
    }
  }

  return v4;
}

- (WFPickerViewProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WFPickerViewProvider)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = WFPickerViewProvider;
  v6 = [(WFPickerViewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootViewController, controller);
  }

  return v7;
}

@end