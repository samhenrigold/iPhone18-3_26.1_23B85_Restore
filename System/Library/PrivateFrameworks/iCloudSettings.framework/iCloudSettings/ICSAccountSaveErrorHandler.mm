@interface ICSAccountSaveErrorHandler
- (ICSAccountSaveErrorHandler)initWithPresenter:(id)presenter;
- (void)_beginManateeUpgradeForAccount:(id)account failedDataclassName:(id)name;
- (void)_displayAccountSaveErrorAlertWithTitle:(id)title message:(id)message alternativeAction:(id)action;
- (void)_handleInsufficientStorageWithUserInfo:(id)info;
- (void)_handleManateeErrorForAccount:(id)account withDescription:(id)description failedDataclasses:(id)dataclasses;
- (void)_handleMaxTierAndInsufficientStorageErrorWithFailedDataclasses:(id)dataclasses;
- (void)handleAccountSaveError:(id)error forAccount:(id)account failedDataclasses:(id)dataclasses;
@end

@implementation ICSAccountSaveErrorHandler

- (ICSAccountSaveErrorHandler)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v8.receiver = self;
  v8.super_class = ICSAccountSaveErrorHandler;
  v5 = [(ICSAccountSaveErrorHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presenter, presenterCopy);
  }

  return v6;
}

- (void)handleAccountSaveError:(id)error forAccount:(id)account failedDataclasses:(id)dataclasses
{
  errorCopy = error;
  accountCopy = account;
  dataclassesCopy = dataclasses;
  domain = [errorCopy domain];
  v12 = [domain isEqualToString:*MEMORY[0x277CEC6A8]];

  if (v12)
  {
    code = [errorCopy code];
    localizedRecoverySuggestion = LogSubsystem(code);
    v15 = os_log_type_enabled(localizedRecoverySuggestion, OS_LOG_TYPE_ERROR);
    if (code == 2)
    {
      if (v15)
      {
        [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
      }

      [(ICSAccountSaveErrorHandler *)self _handleMaxTierAndInsufficientStorageErrorWithFailedDataclasses:dataclassesCopy];
    }

    else
    {
      if (code == 1)
      {
        if (v15)
        {
          [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
        }

        localizedRecoverySuggestion = [errorCopy localizedRecoverySuggestion];
        [(ICSAccountSaveErrorHandler *)self _handleManateeErrorForAccount:accountCopy withDescription:localizedRecoverySuggestion failedDataclasses:dataclassesCopy];
      }

      else if (code)
      {
        if (v15)
        {
          [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
        }
      }

      else
      {
        if (v15)
        {
          [ICSAccountSaveErrorHandler handleAccountSaveError:forAccount:failedDataclasses:];
        }

        localizedRecoverySuggestion = [errorCopy userInfo];
        [(ICSAccountSaveErrorHandler *)self _handleInsufficientStorageWithUserInfo:localizedRecoverySuggestion];
      }
    }
  }

  [accountCopy reload];
}

- (void)_handleInsufficientStorageWithUserInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke;
  v6[3] = &unk_27A666410;
  v7 = infoCopy;
  selfCopy = self;
  v5 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = objc_alloc_init(ICSCloudStorageOffersManager);
  v2 = [*(a1 + 32) objectForKey:*MEMORY[0x277CEC6B0]];
  v3 = v8[5];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v5 = [WeakRetained navigationController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke_49;
  v6[3] = &unk_27A666700;
  v6[4] = &v7;
  [v3 presentCloudStorageOffersPageFromNavigationController:v5 requiredStorageThreshold:v2 completionHandler:v6];

  _Block_object_dispose(&v7, 8);
}

void __69__ICSAccountSaveErrorHandler__handleInsufficientStorageWithUserInfo___block_invoke_49(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_handleManateeErrorForAccount:(id)account withDescription:(id)description failedDataclasses:(id)dataclasses
{
  accountCopy = account;
  dataclassesCopy = dataclasses;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__ICSAccountSaveErrorHandler__handleManateeErrorForAccount_withDescription_failedDataclasses___block_invoke;
  block[3] = &unk_27A666728;
  v12 = dataclassesCopy;
  selfCopy = self;
  v14 = accountCopy;
  v9 = accountCopy;
  v10 = dataclassesCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __94__ICSAccountSaveErrorHandler__handleManateeErrorForAccount_withDescription_failedDataclasses___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) anyObject];
  v8 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v2 = v8;
    if (isKindOfClass)
    {
      v5 = objc_loadWeakRetained((*(a1 + 40) + 8));
      v6 = [v5 specifierForID:v8];

      v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
      [v7 startSpinnerInSpecifier:v6];

      v2 = v8;
    }
  }

  [*(a1 + 40) _beginManateeUpgradeForAccount:*(a1 + 48) failedDataclassName:v2];
}

- (void)_beginManateeUpgradeForAccount:(id)account failedDataclassName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  v8 = objc_alloc(MEMORY[0x277CFDAE8]);
  aa_altDSID = [accountCopy aa_altDSID];
  v10 = [v8 initWithAltDSID:aa_altDSID];

  [v10 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [v10 setDeviceToDeviceEncryptionUpgradeType:0];
  if ([nameCopy isEqualToString:*MEMORY[0x277CB89D8]])
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"UPGRADE_ACCOUNT_SECURITY_FEATURE_MESSAGES" value:&stru_288487370 table:@"Localizable-AppleID"];
    [v10 setFeatureName:v12];
  }

  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [v10 setPresentingViewController:WeakRetained];

  v14 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v10];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke;
  v17[3] = &unk_27A666778;
  v17[4] = self;
  v18 = nameCopy;
  v19 = accountCopy;
  v15 = accountCopy;
  v16 = nameCopy;
  [v14 performDeviceToDeviceEncryptionStateRepairWithCompletion:v17];
}

void __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v9 stopSpinnerInActiveSpecifier];
  }

  if ((a2 & 1) == 0)
  {
    v15 = LogSubsystem(v8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_cold_1();
    }

    v16 = [v5 domain];
    if ([v16 isEqualToString:*MEMORY[0x277CFD418]])
    {
      v17 = [v5 code] == 5900;
    }

    else
    {
      v17 = 0;
    }

    if ([MEMORY[0x277CE4560] isInternalBuild] && objc_msgSend(v5, "code") != -5307)
    {
      if ([v5 code] == -5308 && !v17)
      {
        goto LABEL_22;
      }
    }

    else if (!v17)
    {
      goto LABEL_22;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = *(a1 + 40);
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = v20;
    if (v19)
    {
      v22 = [v20 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:*(a1 + 40) value:&stru_288487370 table:@"Localizable-AppleID"];
      v25 = [*(a1 + 48) aa_formattedUsername];
      v10 = [v18 stringWithFormat:v22, v24, v25];

      v26 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = [v29 localizedStringForKey:*(a1 + 40) value:&stru_288487370 table:@"Localizable-AppleID"];
      v31 = [v26 stringWithFormat:v28, v30];
    }

    else
    {
      v32 = [v20 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_MESSAGE_NO_FEATURE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v33 = [*(a1 + 48) aa_formattedUsername];
      v10 = [v18 stringWithFormat:v32, v33];

      v34 = MEMORY[0x277CCACA8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_TITLE_NO_FEATURE" value:&stru_288487370 table:@"Localizable-AppleID"];
      v31 = [v34 stringWithFormat:v28];
    }

    v35 = MEMORY[0x277D750F8];
    v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v37 = [v36 localizedStringForKey:@"LEARN_MORE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_83;
    v39[3] = &unk_27A666750;
    v39[4] = *(a1 + 32);
    v38 = [v35 actionWithTitle:v37 style:0 handler:v39];

    [*(a1 + 32) _displayAccountSaveErrorAlertWithTitle:v31 message:v10 alternativeAction:v38];
    goto LABEL_21;
  }

  if (*(a1 + 40))
  {
    v10 = [*(a1 + 48) copy];
    [v10 reload];
    [v10 setEnabled:1 forDataclass:*(a1 + 40)];
    v11 = objc_loadWeakRetained((*(a1 + 32) + 8));
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v14 = [v13 accountOperationsHelper];
      [v14 saveAccount:v10 requireVerification:0];
    }

LABEL_21:
  }

LABEL_22:
}

void __81__ICSAccountSaveErrorHandler__beginManateeUpgradeForAccount_failedDataclassName___block_invoke_83(uint64_t a1)
{
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v1 = MEMORY[0x277CBEBC0];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HSA2_UPGRADE_FAILURE_ARTICLE_PATH" value:&stru_288487370 table:@"Localizable-AppleID"];
  v4 = [v1 URLWithString:v3];
  [v5 openURL:v4 withCompletionHandler:0];
}

- (void)_handleMaxTierAndInsufficientStorageErrorWithFailedDataclasses:(id)dataclasses
{
  dataclassesCopy = dataclasses;
  v4 = [dataclassesCopy count];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4)
  {
    anyObject = [dataclassesCopy anyObject];
    v8 = [v6 localizedStringForKey:anyObject value:&stru_288487370 table:@"Localizable-AppleID"];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MAX_TIER_AND_INSUFFICIENT_STORAGE_ALERT_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v12 = [v9 stringWithFormat:v11, v8];

    v6 = v8;
  }

  else
  {
    v12 = [v5 localizedStringForKey:@"MAX_TIER_AND_INSUFFICIENT_STORAGE_ALERT_MESSAGE_NO_FEATURE" value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"MAX_TIER_AND_INSUFFICIENT_STORAGE_ALERT_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [(ICSAccountSaveErrorHandler *)self _displayAccountSaveErrorAlertWithTitle:v14 message:v12 alternativeAction:0];
}

- (void)_displayAccountSaveErrorAlertWithTitle:(id)title message:(id)message alternativeAction:(id)action
{
  titleCopy = title;
  messageCopy = message;
  actionCopy = action;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__ICSAccountSaveErrorHandler__displayAccountSaveErrorAlertWithTitle_message_alternativeAction___block_invoke;
  v14[3] = &unk_27A6667A0;
  v15 = messageCopy;
  selfCopy = self;
  v17 = titleCopy;
  v18 = actionCopy;
  v11 = actionCopy;
  v12 = titleCopy;
  v13 = messageCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __95__ICSAccountSaveErrorHandler__displayAccountSaveErrorAlertWithTitle_message_alternativeAction___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ([MEMORY[0x277CE4560] isInternalBuild])
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"ACCOUNT_SAVE_ERROR_INTERNAL_MESSAGE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v6 = [v3 stringByAppendingFormat:@"\n%@", v5];

    v7 = MEMORY[0x277D750F8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"TAP_TO_RADAR_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __95__ICSAccountSaveErrorHandler__displayAccountSaveErrorAlertWithTitle_message_alternativeAction___block_invoke_2;
    v17[3] = &unk_27A666750;
    v18 = *(a1 + 48);
    v10 = [v7 actionWithTitle:v9 style:0 handler:v17];

    v2 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277D75110] alertWithTitle:*(a1 + 48) message:v2];
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_288487370 table:@"Localizable-AppleID"];
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];
  [v11 addAction:v15];

  if (v10)
  {
    [v11 addAction:v10];
  }

  if (*(a1 + 56))
  {
    [v11 addAction:?];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  [WeakRetained presentViewController:v11 animated:1 completion:0];
}

@end