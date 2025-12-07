@interface WFErrorAlertController
+ (id)errorAlertControllerWithContext:(id)context;
@end

@implementation WFErrorAlertController

+ (id)errorAlertControllerWithContext:(id)context
{
  v38 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      error = [contextCopy error];
      *buf = 136315394;
      v35 = "+[WFErrorAlertController errorAlertControllerWithContext:]";
      v36 = 2112;
      v37 = error;
      _os_log_impl(&dword_273FB9000, v8, v6, "%s: error %@", buf, 0x16u);
    }
  }

  error2 = [contextCopy error];
  if ([error2 code] == 19)
  {
    goto LABEL_11;
  }

  error3 = [contextCopy error];
  if ([error3 code] == 17)
  {
LABEL_10:

LABEL_11:
    v13 = 1;
    localizedDescription = &stru_288308678;
LABEL_12:

    goto LABEL_13;
  }

  error4 = [contextCopy error];
  if ([error4 code] == 4)
  {

    goto LABEL_10;
  }

  error5 = [contextCopy error];
  v27 = [error5 code] == 16;

  if (!v27)
  {
    error2 = [contextCopy error];
    localizedDescription = [error2 localizedDescription];
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
  localizedDescription = &stru_288308678;
LABEL_13:
  if (![(__CFString *)localizedDescription length])
  {

    localizedDescription = 0;
  }

  error6 = [contextCopy error];
  v16 = error6;
  if (v13)
  {
    [error6 localizedDescription];
  }

  else
  {
    [error6 localizedRecoverySuggestion];
  }
  v17 = ;

  v18 = [WFErrorAlertController alertControllerWithTitle:localizedDescription message:v17 preferredStyle:1];
  error7 = [contextCopy error];
  localizedRecoveryOptions = [error7 localizedRecoveryOptions];
  v21 = [localizedRecoveryOptions objectAtIndexedSubscript:0];

  [v18 setContext:contextCopy];
  objc_initWeak(buf, contextCopy);
  v22 = MEMORY[0x277D750F8];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __58__WFErrorAlertController_errorAlertControllerWithContext___block_invoke;
  v31 = &unk_279EC5510;
  v23 = localizedDescription;
  v32 = v23;
  objc_copyWeak(&v33, buf);
  v24 = [v22 actionWithTitle:v21 style:0 handler:&v28];
  [v18 addAction:{v24, v28, v29, v30, v31}];
  [v18 setPreferredAction:v24];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);

  return v18;
}

void __58__WFErrorAlertController_errorAlertControllerWithContext___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  v4 = v3;
  if (WFCurrentLogLevel(v3, v5) >= 3 && v2 && os_log_type_enabled(v2, v4))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_273FB9000, v2, v4, "user dismissed alert %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];
}

@end