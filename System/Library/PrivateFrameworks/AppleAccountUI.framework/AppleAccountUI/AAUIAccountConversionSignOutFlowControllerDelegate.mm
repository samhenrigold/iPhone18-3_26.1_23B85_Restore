@interface AAUIAccountConversionSignOutFlowControllerDelegate
- (AAUIAccountConversionSignOutFlowControllerDelegate)init;
- (AAUIAccountConversionSignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller shouldRemoveAppleAccount:(BOOL)account;
- (UIViewController)presentingViewController;
- (void)_completedRestoreFromiCloud:(id)cloud;
- (void)_disableDeviceLocatorForAccount:(id)account inViewController:(id)controller completion:(id)completion;
- (void)signOutController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)signOutControllerDidCancel:(id)cancel;
- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion;
- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion;
- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion;
@end

@implementation AAUIAccountConversionSignOutFlowControllerDelegate

- (AAUIAccountConversionSignOutFlowControllerDelegate)init
{
  v6.receiver = self;
  v6.super_class = AAUIAccountConversionSignOutFlowControllerDelegate;
  v2 = [(AAUIAccountConversionSignOutFlowControllerDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v2->_shouldRemoveAppleAccount = 1;
  }

  return v2;
}

- (AAUIAccountConversionSignOutFlowControllerDelegate)initWithPresentingViewController:(id)controller shouldRemoveAppleAccount:(BOOL)account
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = AAUIAccountConversionSignOutFlowControllerDelegate;
  v7 = [(AAUIAccountConversionSignOutFlowControllerDelegate *)&v11 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v7->_accountStore;
    v7->_accountStore = v8;

    objc_storeWeak(&v7->_presentingViewController, controllerCopy);
    v7->_shouldRemoveAppleAccount = account;
  }

  return v7;
}

- (void)signOutFlowController:(id)controller showAlertWithTitle:(id)title message:(id)message completion:(id)completion
{
  titleCopy = title;
  messageCopy = message;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];

    v15 = MEMORY[0x1E69DC650];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __114__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_showAlertWithTitle_message_completion___block_invoke;
    v18[3] = &unk_1E820B820;
    v19 = completionCopy;
    v16 = [v15 alertWithTitle:titleCopy message:messageCopy buttonTitle:v14 actionHandler:v18];
    v17 = objc_loadWeakRetained(&self->_presentingViewController);
    [v17 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)signOutFlowController:(id)controller disableFindMyDeviceForAccount:(id)account completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  v9 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = accountCopy;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Account Conversion - Attempting to disableFindMyDevice for %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke;
  v12[3] = &unk_1E820C5D0;
  v13 = accountCopy;
  v14 = completionCopy;
  v12[4] = self;
  v10 = accountCopy;
  v11 = completionCopy;
  [(AAUIAccountConversionSignOutFlowControllerDelegate *)self _completedRestoreFromiCloud:v12];
}

void __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Account Conversion - Device is restoring from iCloud but allowing account removal anyways", buf, 2u);
    }
  }

  v8 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Account Conversion - Starting to refresh current FMIP state...", buf, 2u);
  }

  v9 = +[AAUIDeviceLocatorService sharedInstance];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_44;
  v13[3] = &unk_1E820C5A8;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15 = v10;
  v13[4] = v11;
  v14 = v12;
  [v9 refreshCurrentState:v13];
}

void __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = a2;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Account Conversion - FMIP state came back as %lu", buf, 0xCu);
  }

  v5 = +[AAUIDeviceLocatorService sharedInstance];
  v6 = [v5 isStateKnown];

  if ((v6 & 1) == 0)
  {
    v15 = _AAUILogSystem(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Account Conversion - FMiP state is unknown, stopping converison.", buf, 2u);
    }

    v16 = *(a1 + 48);
    WeakRetained = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
    (*(v16 + 16))(v16, 0, WeakRetained);
    goto LABEL_17;
  }

  v8 = +[AAUIDeviceLocatorService sharedInstance];
  v9 = [v8 isEnabled];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    if (WeakRetained)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_46;
      v20[3] = &unk_1E820C308;
      v21 = *(a1 + 48);
      [v12 _disableDeviceLocatorForAccount:v13 inViewController:WeakRetained completion:v20];
      v14 = v21;
    }

    else
    {
      v18 = _AAUILogSystem(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "Account Conversion - No view controller provided for sign out, unable to disable FMiP.", buf, 2u);
      }

      v19 = *(a1 + 48);
      v14 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
      (*(v19 + 16))(v19, 0, v14);
    }

LABEL_17:
    return;
  }

  v17 = _AAUILogSystem(v10);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "Account Conversion - Device locator not enabled, allowing account removal.", buf, 2u);
  }

  (*(*(a1 + 48) + 16))();
}

void __117__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_disableFindMyDeviceForAccount_completion___block_invoke_46(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - Device locator disabled with success %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_disableDeviceLocatorForAccount:(id)account inViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke;
  v9[3] = &unk_1E820C620;
  v10 = completionCopy;
  v8 = completionCopy;
  [AAUIDeviceLocatorConfirmationUtilities showDisableAlertForAccount:account presentingViewController:controller withCompletion:v9];
}

void __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Account Conversion - User canceled FMiP password prompt.", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = +[AAUIDeviceLocatorService sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke_56;
    v9[3] = &unk_1E820C5F8;
    v10 = *(a1 + 32);
    [v8 disableInContext:2 withWipeToken:v6 completion:v9];
  }
}

void __114__AAUIAccountConversionSignOutFlowControllerDelegate__disableDeviceLocatorForAccount_inViewController_completion___block_invoke_56(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = _AAUILogSystem(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Account Conversion - Failed to disable FMiP for account deletion.", buf, 2u);
    }

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-11];
    (*(v6 + 16))(v6, 0, v7);
  }

  else
  {
    if (v5)
    {
      *v8 = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Account Conversion - Successfully disabled FMiP for account deletion!", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)signOutFlowController:(id)controller signOutAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  shouldRemoveAppleAccount = self->_shouldRemoveAppleAccount;
  v10 = _AAUILogSystem(completionCopy);
  v11 = v10;
  if (shouldRemoveAppleAccount)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Account Conversion - Removing Apple Account", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke;
    block[3] = &unk_1E820B708;
    v13 = accountCopy;
    selfCopy = self;
    v15 = completionCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [AAUIAccountConversionSignOutFlowControllerDelegate signOutFlowController:v11 signOutAccount:? completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke(uint64_t a1)
{
  v2 = [[AAUISignOutController alloc] initWithAccount:*(a1 + 32)];
  v3 = [MEMORY[0x1E695DF20] dictionary];
  [(AAUISignOutController *)v2 _setDataclassOptions:v3];

  [(AAUISignOutController *)v2 setDelegate:*(a1 + 40)];
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2;
  block[3] = &unk_1E820B708;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  dispatch_async(v4, block);
}

void __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = _AAUILogSystem(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "Account Conversion - Attempting to sign out account %@ with no dataclass actions.", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 16);
  v7 = [MEMORY[0x1E695DF20] dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_61;
  v8[3] = &unk_1E820C308;
  v9 = *(a1 + 48);
  [v6 removeAccount:v5 withDataclassActions:v7 completion:v8];
}

void __102__AAUIAccountConversionSignOutFlowControllerDelegate_signOutFlowController_signOutAccount_completion___block_invoke_61(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Account Conversion - Removal of account completed with success: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)signOutFlowController:(id)controller performWalrusValidationForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  v6 = _AAUILogSystem(completionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [AAUIAccountConversionSignOutFlowControllerDelegate signOutFlowController:v6 performWalrusValidationForAccount:? completion:?];
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)signOutControllerDidCancel:(id)cancel
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    v5 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
    pendingSignOutCompletion[2](pendingSignOutCompletion, 0, v5);

    v6 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }
}

- (void)signOutController:(id)controller didCompleteWithSuccess:(BOOL)success error:(id)error
{
  pendingSignOutCompletion = self->_pendingSignOutCompletion;
  if (pendingSignOutCompletion)
  {
    pendingSignOutCompletion[2](pendingSignOutCompletion, success, error);
    v7 = self->_pendingSignOutCompletion;
    self->_pendingSignOutCompletion = 0;
  }
}

- (void)_completedRestoreFromiCloud:(id)cloud
{
  v21 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  v4 = _AAUISignpostLogSystem(cloudCopy);
  v5 = _AAUISignpostCreate(v4);
  v7 = v6;

  v9 = _AAUISignpostLogSystem(v8);
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SignOutRestoreBackupCheck", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = _AAUISignpostLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v5;
    _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SignOutRestoreBackupCheck  enableTelemetry=YES ", buf, 0xCu);
  }

  v13 = objc_alloc_init(MEMORY[0x1E69B1968]);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__AAUIAccountConversionSignOutFlowControllerDelegate__completedRestoreFromiCloud___block_invoke;
  v15[3] = &unk_1E820C648;
  v17 = v5;
  v18 = v7;
  v16 = cloudCopy;
  v14 = cloudCopy;
  [v13 fetchiCloudRestoreIsCompleteWithCompletion:v15];
}

void __82__AAUIAccountConversionSignOutFlowControllerDelegate__completedRestoreFromiCloud___block_invoke(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  Nanoseconds = _AAUISignpostGetNanoseconds(a1[5], a1[6]);
  v7 = _AAUISignpostLogSystem(Nanoseconds);
  v8 = v7;
  v9 = a1[5];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v15 = 67240448;
    *v16 = a2;
    *&v16[4] = 1026;
    *&v16[6] = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_1C5355000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SignOutRestoreBackupCheck", " RestoreIsComplete=%{public,signpost.telemetry:number1,name=RestoreIsComplete}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v15, 0xEu);
  }

  v11 = _AAUISignpostLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = Nanoseconds / 1000000000.0;
    v13 = a1[5];
    v14 = [v5 code];
    v15 = 134218752;
    *v16 = v13;
    *&v16[8] = 2048;
    v17 = v12;
    v18 = 1026;
    v19 = a2;
    v20 = 1026;
    v21 = v14;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SignOutRestoreBackupCheck  RestoreIsComplete=%{public,signpost.telemetry:number1,name=RestoreIsComplete}d  Error=%{public,signpost.telemetry:number2,name=Error}d ", &v15, 0x22u);
  }

  (*(a1[4] + 16))();
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end