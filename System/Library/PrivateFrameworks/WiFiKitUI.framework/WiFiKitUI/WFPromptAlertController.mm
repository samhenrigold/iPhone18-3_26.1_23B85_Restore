@interface WFPromptAlertController
+ (id)promptAlertControllerWithTitle:(id)title message:(id)message cancelTitle:(id)cancelTitle successTitle:(id)successTitle completionHandler:(id)handler;
@end

@implementation WFPromptAlertController

+ (id)promptAlertControllerWithTitle:(id)title message:(id)message cancelTitle:(id)cancelTitle successTitle:(id)successTitle completionHandler:(id)handler
{
  titleCopy = title;
  messageCopy = message;
  cancelTitleCopy = cancelTitle;
  successTitleCopy = successTitle;
  handlerCopy = handler;
  v16 = handlerCopy;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  if (!titleCopy)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    v26 = v25;
    if (!WFCurrentLogLevel(v25, v27) || !v24 || !os_log_type_enabled(v24, v26))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v28 = "Missing alert title";
    goto LABEL_30;
  }

  if (!messageCopy)
  {
    v24 = WFLogForCategory(0);
    v29 = OSLogForWFLogLevel(1uLL);
    v26 = v29;
    if (!WFCurrentLogLevel(v29, v30) || !v24 || !os_log_type_enabled(v24, v26))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v28 = "Missing alert message";
    goto LABEL_30;
  }

  if (!handlerCopy)
  {
    v24 = WFLogForCategory(0);
    v31 = OSLogForWFLogLevel(1uLL);
    v26 = v31;
    if (!WFCurrentLogLevel(v31, v32) || !v24 || !os_log_type_enabled(v24, v26))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v28 = "Missing completion handler";
    goto LABEL_30;
  }

  if (!cancelTitleCopy)
  {
    v24 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(1uLL);
    v26 = v33;
    if (!WFCurrentLogLevel(v33, v34) || !v24 || !os_log_type_enabled(v24, v26))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v28 = "Missing alert cancelTitle";
    goto LABEL_30;
  }

  if (successTitleCopy)
  {
    v17 = [WFPromptAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v18 = v41[5];
    v41[5] = v17;

    [v41[5] setCompletionHandler:v16];
    v19 = v41[5];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke;
    v38[3] = &unk_279EC5468;
    v38[4] = &v40;
    v20 = [MEMORY[0x277D750F8] actionWithTitle:cancelTitleCopy style:1 handler:v38];
    [v19 addAction:v20];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke_2;
    v37[3] = &unk_279EC5468;
    v37[4] = &v40;
    v21 = [MEMORY[0x277D750F8] actionWithTitle:successTitleCopy style:0 handler:v37];
    [v41[5] addAction:v21];
    [v41[5] setPreferredAction:v21];
    goto LABEL_7;
  }

  v24 = WFLogForCategory(0);
  v35 = OSLogForWFLogLevel(1uLL);
  v26 = v35;
  if (WFCurrentLogLevel(v35, v36) && v24 && os_log_type_enabled(v24, v26))
  {
    *buf = 0;
    v28 = "Missing alert cancelTitle";
LABEL_30:
    _os_log_impl(&dword_273FB9000, v24, v26, v28, buf, 2u);
  }

LABEL_31:

  v21 = 0;
LABEL_7:
  v22 = v41[5];

  _Block_object_dispose(&v40, 8);

  return v22;
}

void __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 0);
}

void __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 1);
}

@end