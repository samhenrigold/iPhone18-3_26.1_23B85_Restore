@interface DSBlockingAlertController
+ (id)_localizedTitleForPeople:(id)people;
+ (id)alertControllerWithBlockedPeople:(id)people;
- (id)showSafetyCheckHandler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation DSBlockingAlertController

+ (id)alertControllerWithBlockedPeople:(id)people
{
  v21 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  if ([peopleCopy count])
  {
    v5 = DSLog_6;
    if (!DSLog_6)
    {
      v6 = os_log_create("com.apple.DigitalSeparation", "DSSafetyCheck");
      v7 = DSLog_6;
      DSLog_6 = v6;

      v5 = DSLog_6;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = peopleCopy;
      _os_log_impl(&dword_248C7E000, v5, OS_LOG_TYPE_INFO, "[DSBlockingAlertController] creating alert for %@", &v19, 0xCu);
    }

    v8 = [self _localizedTitleForPeople:peopleCopy];
    _localizedMessage = [self _localizedMessage];
    v10 = [self alertControllerWithTitle:v8 message:_localizedMessage preferredStyle:0];

    v11 = MEMORY[0x277D750F8];
    localizedShowSafetyCheckButtonTitle = [self localizedShowSafetyCheckButtonTitle];
    showSafetyCheckHandler = [v10 showSafetyCheckHandler];
    v14 = [v11 actionWithTitle:localizedShowSafetyCheckButtonTitle style:0 handler:showSafetyCheckHandler];

    [v10 addAction:v14];
    [v10 setPreferredAction:v14];
    v15 = MEMORY[0x277D750F8];
    localizedCancelButtonTitle = [self localizedCancelButtonTitle];
    v17 = [v15 actionWithTitle:localizedCancelButtonTitle style:1 handler:&__block_literal_global_13];

    [v10 addAction:v17];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_localizedTitleForPeople:(id)people
{
  peopleCopy = people;
  v4 = [peopleCopy valueForKey:@"displayName"];
  v5 = [peopleCopy count];

  if (v5 == 1)
  {
    [v4 firstObject];
  }

  else
  {
    [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v4];
  }
  v6 = ;
  v7 = MEMORY[0x277CCACA8];
  v8 = DSUILocStringForKey(@"SCWB_ALERT_TITLE");
  v9 = [v7 stringWithFormat:v8, v6];

  return v9;
}

- (id)showSafetyCheckHandler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__DSBlockingAlertController_showSafetyCheckHandler__block_invoke;
  aBlock[3] = &unk_278F750A0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __51__DSBlockingAlertController_showSafetyCheckHandler__block_invoke(uint64_t a1)
{
  v2 = DSLog_6;
  if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "[DSBlockingAlertController] presenting safety check", v5, 2u);
  }

  v3 = [*(a1 + 32) alertPresentingViewController];
  v4 = [*(a1 + 32) safetyCheckController];
  [DSSafetyCheck authForSafetyCheckWithPresentingViewController:v3 safetyCheckController:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = DSBlockingAlertController;
  [(DSBlockingAlertController *)&v5 viewDidAppear:appear];
  presentingViewController = [(DSBlockingAlertController *)self presentingViewController];
  [(DSBlockingAlertController *)self setAlertPresentingViewController:presentingViewController];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = DSBlockingAlertController;
  [(DSBlockingAlertController *)&v5 viewDidDisappear:disappear];
  AnalyticsSendEventLazy();
  presentingViewController = [(DSBlockingAlertController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

id __46__DSBlockingAlertController_viewDidDisappear___block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"entrypoint";
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processName];
  v4[1] = @"presentedViewController";
  v5[0] = v1;
  v5[1] = MEMORY[0x277CBEC28];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end