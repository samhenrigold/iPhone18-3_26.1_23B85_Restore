@interface AAUIDeviceLocatorConfirmationUtilities
+ (id)_authContextForPresentingVC:(id)c navController:(id)controller theftAndLossViewControllerAvailable:(BOOL)available context:(id)context;
+ (id)_messageForError:(id)error account:(id)account;
+ (id)_titleForError:(id)error account:(id)account;
+ (void)_handleFMIPAuthenticationResponse:(id)response withError:(id)error forContext:(id)context completion:(id)completion;
+ (void)_performFMIPAuthenticationForContext:(id)context completion:(id)completion;
+ (void)_showErrorUserNotificationForAccount:(id)account error:(id)error withCompletion:(id)completion;
+ (void)checkIfWatchHasAppleIDAccount:(id)account;
+ (void)dismissViewController:(id)controller;
+ (void)showDisableAlertForAccount:(id)account presentingViewController:(id)controller telemetryFlowID:(id)d withCompletion:(id)completion;
+ (void)showDisableAlertForAccount:(id)account presentingViewController:(id)controller withCompletion:(id)completion;
+ (void)showDisableAlertForAccount:(id)account withMessage:(id)message confirmationButtonTitle:(id)title presentingViewController:(id)controller completion:(id)completion;
+ (void)showDisableAlertForContext:(id)context withCompletion:(id)completion;
+ (void)showEnableAlertWithCompletion:(id)completion;
@end

@implementation AAUIDeviceLocatorConfirmationUtilities

+ (void)showEnableAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x1E69B36C0] = [MEMORY[0x1E69B36C0] sharedInstance];
  getActivePairedDevice = [mEMORY[0x1E69B36C0] getActivePairedDevice];

  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"02168E84-5DD8-4B19-9204-A79F04B33A32"];
  v8 = [getActivePairedDevice supportsCapability:v7];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke;
    v9[3] = &__block_descriptor_40_e11_v16__0B8B12l;
    v9[4] = self;
    [AAUIDeviceLocatorConfirmationUtilities checkIfWatchHasAppleIDAccount:v9];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

void __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke(uint64_t a1, char a2, char a3)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke_2;
  v3[3] = &__block_descriptor_42_e5_v8__0l;
  v4 = a2;
  v5 = a3;
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __72__AAUIDeviceLocatorConfirmationUtilities_showEnableAlertWithCompletion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || *(a1 + 41) == 1)
  {
    v1 = [MEMORY[0x1E699C848] sharedInstance];
    [v1 userNotifiedOfActivationLockForAllPairedDevices];

    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v2 localizedStringForKey:@"DEVICE_LOCATOR_TITLE" value:&stru_1F447F790 table:@"Localizable"];

    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"ENABLE_DEVICE_LOCATOR_MESSAGE_WATCH_REBRAND" value:&stru_1F447F790 table:@"Localizable"];

    v5 = MEMORY[0x1E698B9E0];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    [v5 showUserNotificationWithTitle:v8 message:v4 cancelButtonTitle:0 otherButtonTitle:v7 withCompletionBlock:0];
  }
}

+ (void)checkIfWatchHasAppleIDAccount:(id)account
{
  accountCopy = account;
  v4 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke;
  block[3] = &unk_1E820B820;
  v7 = accountCopy;
  v5 = accountCopy;
  dispatch_async(v4, block);
}

void __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = [v3 aa_primaryAppleAccount];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v4 = getNSSManagerClass_softClass;
  v25 = getNSSManagerClass_softClass;
  if (!getNSSManagerClass_softClass)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __getNSSManagerClass_block_invoke;
    v21[3] = &unk_1E820BE08;
    v21[4] = &v22;
    __getNSSManagerClass_block_invoke(v21);
    v4 = v23[3];
  }

  v5 = v4;
  _Block_object_dispose(&v22, 8);
  v6 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119;
  v11[3] = &unk_1E820BC78;
  v13 = v19;
  v14 = &v15;
  v7 = v2;
  v12 = v7;
  [v6 getiCloudInfo:v11];
  v8 = dispatch_time(0, 4000000000);
  v9 = dispatch_semaphore_wait(v7, v8);
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, *(v16 + 24), v9 > 0);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);
}

void __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v4 = a3;
  v24 = v4;
  if (v4)
  {
    v5 = _AAUILogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Error getting Watch Account: %@", &buf, 0xCu);
    }

    goto LABEL_27;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v6 = getkNSSiCloudAccountsKeySymbolLoc_ptr;
  v34 = getkNSSiCloudAccountsKeySymbolLoc_ptr;
  if (!getkNSSiCloudAccountsKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getkNSSiCloudAccountsKeySymbolLoc_block_invoke;
    v38 = &unk_1E820BE08;
    v39 = &v31;
    v7 = NanoSystemSettingsLibrary();
    v8 = dlsym(v7, "kNSSiCloudAccountsKey");
    *(v39[1] + 24) = v8;
    getkNSSiCloudAccountsKeySymbolLoc_ptr = *(v39[1] + 24);
    v6 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v6)
  {
    __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119_cold_1();
    goto LABEL_31;
  }

  v9 = [v25 objectForKeyedSubscript:*v6];
  v10 = [*(*(*(a1 + 40) + 8) + 40) aa_personID];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v9;
  v11 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = *v28;
LABEL_9:
  v13 = 0;
  while (1)
  {
    if (*v28 != v12)
    {
      objc_enumerationMutation(v5);
    }

    v14 = *(*(&v27 + 1) + 8 * v13);
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v15 = getkNSSiCloudPersonIDKeySymbolLoc_ptr;
    v34 = getkNSSiCloudPersonIDKeySymbolLoc_ptr;
    if (!getkNSSiCloudPersonIDKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v37 = __getkNSSiCloudPersonIDKeySymbolLoc_block_invoke;
      v38 = &unk_1E820BE08;
      v39 = &v31;
      v16 = NanoSystemSettingsLibrary();
      v17 = dlsym(v16, "kNSSiCloudPersonIDKey");
      *(v39[1] + 24) = v17;
      getkNSSiCloudPersonIDKeySymbolLoc_ptr = *(v39[1] + 24);
      v15 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (!v15)
    {
      goto LABEL_30;
    }

    v18 = [v14 objectForKeyedSubscript:*v15];
    if ([v18 isEqualToString:v10])
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v19 = getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr;
  v34 = getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr;
  if (!getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v37 = __getkNSSiCloudIsAuthenticatedKeySymbolLoc_block_invoke;
    v38 = &unk_1E820BE08;
    v39 = &v31;
    v20 = NanoSystemSettingsLibrary();
    v21 = dlsym(v20, "kNSSiCloudIsAuthenticatedKey");
    *(v39[1] + 24) = v21;
    getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr = *(v39[1] + 24);
    v19 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (!v19)
  {
LABEL_30:
    __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119_cold_1();
LABEL_31:
    __break(1u);
  }

  v22 = [v14 objectForKeyedSubscript:*v19];
  v23 = v22;
  if (!v22 || [v22 BOOLValue])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_26:
LABEL_27:

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)showDisableAlertForAccount:(id)account presentingViewController:(id)controller withCompletion:(id)completion
{
  v8 = MEMORY[0x1E696AAE8];
  completionCopy = completion;
  controllerCopy = controller;
  accountCopy = account;
  v12 = [v8 bundleForClass:objc_opt_class()];
  v13 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DISABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
  v16 = [v12 localizedStringForKey:v13 value:&stru_1F447F790 table:@"Localizable"];

  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"DISABLE_DEVICE_LOCATOR_BUTTON" value:&stru_1F447F790 table:@"Localizable"];

  [self showDisableAlertForAccount:accountCopy withMessage:v16 confirmationButtonTitle:v15 presentingViewController:controllerCopy completion:completionCopy];
}

+ (void)showDisableAlertForAccount:(id)account presentingViewController:(id)controller telemetryFlowID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v10 = MEMORY[0x1E696AAE8];
  dCopy = d;
  controllerCopy = controller;
  accountCopy = account;
  v14 = [v10 bundleForClass:objc_opt_class()];
  v15 = [MEMORY[0x1E69DC938] modelSpecificLocalizedStringKeyForKey:@"DISABLE_DEVICE_LOCATOR_MESSAGE_REBRAND"];
  v16 = [v14 localizedStringForKey:v15 value:&stru_1F447F790 table:@"Localizable"];

  v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"DISABLE_DEVICE_LOCATOR_BUTTON" value:&stru_1F447F790 table:@"Localizable"];

  v19 = objc_opt_new();
  [v19 setAccount:accountCopy];

  [v19 setMessage:v16];
  [v19 setButtonTitle:v18];
  [v19 setPresentingViewController:controllerCopy];

  [v19 setTelemetryFlowID:dCopy];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __125__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_presentingViewController_telemetryFlowID_withCompletion___block_invoke;
  v22[3] = &unk_1E820BCA0;
  v23 = completionCopy;
  v20 = completionCopy;
  [self showDisableAlertForContext:v19 withCompletion:v22];
}

void __125__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_presentingViewController_telemetryFlowID_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 fmipWipeToken];
  (*(v4 + 16))(v4, a2, v5);
}

+ (void)showDisableAlertForAccount:(id)account withMessage:(id)message confirmationButtonTitle:(id)title presentingViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  titleCopy = title;
  messageCopy = message;
  accountCopy = account;
  v17 = objc_opt_new();
  [v17 setAccount:accountCopy];

  [v17 setMessage:messageCopy];
  [v17 setButtonTitle:titleCopy];

  [v17 setPresentingViewController:controllerCopy];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __141__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_withMessage_confirmationButtonTitle_presentingViewController_completion___block_invoke;
  v19[3] = &unk_1E820BCA0;
  v20 = completionCopy;
  v18 = completionCopy;
  [self showDisableAlertForContext:v17 withCompletion:v19];
}

void __141__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForAccount_withMessage_confirmationButtonTitle_presentingViewController_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 fmipWipeToken];
  (*(v4 + 16))(v4, a2, v5);
}

+ (id)_authContextForPresentingVC:(id)c navController:(id)controller theftAndLossViewControllerAvailable:(BOOL)available context:(id)context
{
  availableCopy = available;
  cCopy = c;
  controllerCopy = controller;
  contextCopy = context;
  account = [contextCopy account];
  message = [contextCopy message];
  buttonTitle = [contextCopy buttonTitle];
  v16 = buttonTitle;
  if (cCopy)
  {
    v17 = objc_alloc_init(MEMORY[0x1E698DE80]);
    if ([self shouldShowTnLCoverageLoss] && availableCopy && (objc_msgSend(contextCopy, "skipTnLScreen") & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v18 = v17;
      v19 = controllerCopy;
    }

    else
    {
      v18 = v17;
      v19 = cCopy;
    }

    [v18 setPresentingViewController:v19];
    [v17 setForceInlinePresentation:1];
  }

  else
  {
    v20 = _AAUILogSystem(buttonTitle);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 0;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "AAUIDeviceLocatorConfirmationUtilities: Warning! Caller has not provided a presenting VC.", v34, 2u);
    }

    v17 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    [v17 _setProxyingForApp:1];
  }

  username = [account username];
  [v17 setUsername:username];

  aa_altDSID = [account aa_altDSID];
  [v17 setAltDSID:aa_altDSID];

  [v17 setReason:message];
  [v17 setShouldPromptForPasswordOnly:1];
  [v17 setAuthenticationType:2];
  [v17 setIsEphemeral:1];
  [v17 setIsUsernameEditable:0];
  [v17 setDefaultButtonString:v16];
  [v17 setMaximumLoginAttempts:2];
  [v17 setEnablePasscodeAuth:0];
  clientID = [contextCopy clientID];

  if (clientID)
  {
    v25 = _AAUILogSystem(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [AAUIDeviceLocatorConfirmationUtilities _authContextForPresentingVC:contextCopy navController:v25 theftAndLossViewControllerAvailable:? context:?];
    }

    clientID2 = [contextCopy clientID];
    [v17 setAppProvidedContext:clientID2];
  }

  if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v27 = MEMORY[0x1E69DCAB8];
    v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v29 = [v27 imageNamed:@"AppleAccount_Icon_Blue" inBundle:v28];

    v30 = UIImagePNGRepresentation(v29);
    [v17 setDisplayImageData:v30];

    v31 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"CONFIRM_PASSWORD" value:&stru_1F447F790 table:@"Localizable"];
    [v17 setTitle:v32];
  }

  return v17;
}

+ (void)showDisableAlertForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  presentingViewController = [contextCopy presentingViewController];
  v9 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke;
  aBlock[3] = &unk_1E820BD40;
  v10 = contextCopy;
  v31 = v10;
  selfCopy = self;
  v11 = presentingViewController;
  v32 = v11;
  v12 = v9;
  v33 = v12;
  v13 = completionCopy;
  v34 = v13;
  v14 = _Block_copy(aBlock);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if ([self shouldShowTnLCoverageLoss] && (objc_msgSend(v10, "skipTnLScreen") & 1) == 0)
  {
    v15 = objc_alloc_init(AAUITheftAndLossCoverageProvider);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_5;
    v24[3] = &unk_1E820B820;
    v25 = v14;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_6;
    v21[3] = &unk_1E820B780;
    v22 = v12;
    v23 = v13;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7;
    v16[3] = &unk_1E820BD68;
    v19 = v25;
    v20 = &v26;
    v17 = v11;
    v18 = v22;
    [(AAUITheftAndLossCoverageProvider *)v15 createTnLDisclaimerViewControllerWithConfirmActionHandler:v24 cancelActionHandler:v21 completion:v16];
  }

  else
  {
    (*(v14 + 2))(v14, *(v27 + 24));
  }

  _Block_object_dispose(&v26, 8);
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] account];
  v5 = [a1[8] _authContextForPresentingVC:a1[5] navController:a1[6] theftAndLossViewControllerAvailable:a2 context:a1[4]];
  if (!_authController)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v7 = _authController;
    _authController = v6;
  }

  v8 = MEMORY[0x1E6985DB0];
  v9 = *MEMORY[0x1E698BA30];
  v10 = [v4 aa_altDSID];
  v11 = [a1[4] telemetryFlowID];
  v12 = [v8 analyticsEventWithName:v9 altDSID:v10 flowID:v11];

  v13 = _authController;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_2;
  v17[3] = &unk_1E820BD18;
  v14 = a1[8];
  v18 = v12;
  v24 = v14;
  v19 = a1[6];
  v23 = a1[7];
  v25 = a2;
  v20 = a1[4];
  v21 = a1[5];
  v22 = v4;
  v15 = v4;
  v16 = v12;
  [v13 authenticateWithContext:v5 completion:v17];
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _authController;
  _authController = 0;

  if (v6)
  {
    [*(a1 + 32) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    [*(a1 + 32) populateUnderlyingErrorsStartingWithRootError:v6];
    if ([v6 ak_isUserCancelError])
    {
      v8 = [MEMORY[0x1E698B810] reporter];
      [v8 sendEvent:*(a1 + 32)];

      [*(a1 + 80) dismissViewController:*(a1 + 40)];
      v9 = *(*(a1 + 72) + 16);
LABEL_10:
      v9();
      goto LABEL_11;
    }

    v12 = [v6 ak_isAuthenticationErrorWithCode:-7005];
    v13 = [MEMORY[0x1E698B810] reporter];
    [v13 sendEvent:*(a1 + 32)];

    if (!v12)
    {
      [*(a1 + 80) dismissViewController:*(a1 + 40)];
      v9 = *(*(a1 + 72) + 16);
      goto LABEL_10;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_3;
    v14[3] = &unk_1E820BCF0;
    v19 = *(a1 + 80);
    v15 = *(a1 + 40);
    v18 = *(a1 + 72);
    v20 = *(a1 + 88);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }

  else
  {
    if (([*(a1 + 48) keepAlertVisible] & 1) == 0)
    {
      [*(a1 + 80) dismissViewController:*(a1 + 40)];
    }

    [*(a1 + 32) setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6985E40]];
    v10 = [MEMORY[0x1E698B810] reporter];
    [v10 sendEvent:*(a1 + 32)];

    v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
    [*(a1 + 64) aa_setPassword:v11];
    [*(a1 + 80) _performFMIPAuthenticationForContext:*(a1 + 48) completion:*(a1 + 72)];
  }

LABEL_11:
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"VERIFICATION_FAILED_TITLE" value:&stru_1F447F790 table:@"Localizable"];

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"BAD_NETWORK_ALERT_MESSAGE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];

  v6 = MEMORY[0x1E69DC650];
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_4;
  v12[3] = &unk_1E820BCC8;
  v15 = *(a1 + 64);
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v9 = [v6 alertWithTitle:v3 message:v5 buttonTitle:v8 actionHandler:v12];

  if ([*(a1 + 64) shouldShowTnLCoverageLoss] && *(a1 + 72) == 1 && (objc_msgSend(*(a1 + 40), "skipTnLScreen") & 1) == 0)
  {
    v10 = [*(a1 + 32) topViewController];

    if (v10)
    {
      v11 = [*(a1 + 32) topViewController];
      [v11 presentViewController:v9 animated:0 completion:0];
    }
  }

  else
  {
    [*(a1 + 48) presentViewController:v9 animated:0 completion:0];
  }
}

uint64_t __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 48) dismissViewController:*(a1 + 32)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v11 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_4();
    }

    goto LABEL_12;
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  if (!*(a1 + 32))
  {
    v11 = _AAUILogSystem(v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_3();
    }

LABEL_12:

    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  objc_opt_class();
  v8 = *(a1 + 32);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    if (v8)
    {
      v10 = _AAUILogSystem(isKindOfClass);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_1();
      }

      [v8 pushViewController:v5 animated:1];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v12 = _AAUILogSystem(isKindOfClass);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __84__AAUIDeviceLocatorConfirmationUtilities_showDisableAlertForContext_withCompletion___block_invoke_7_cold_2();
  }

  v13 = *(a1 + 40);
  v15[0] = v5;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v13 setViewControllers:v14 animated:1];

  [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
LABEL_17:
}

+ (void)_performFMIPAuthenticationForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E698B8B0]);
  account = [contextCopy account];
  v10 = [v8 initWithAccount:account];

  customRequestHeaders = [contextCopy customRequestHeaders];
  [v10 setCustomHeaders:customRequestHeaders];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __90__AAUIDeviceLocatorConfirmationUtilities__performFMIPAuthenticationForContext_completion___block_invoke;
  v14[3] = &unk_1E820BD90;
  v16 = completionCopy;
  selfCopy = self;
  v15 = contextCopy;
  v12 = completionCopy;
  v13 = contextCopy;
  [v10 performRequestWithHandler:v14];
}

void __90__AAUIDeviceLocatorConfirmationUtilities__performFMIPAuthenticationForContext_completion___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1[6];
  v9 = v6;
  if (v6)
  {
    v8 = [v6 error];
    [v7 _handleFMIPAuthenticationResponse:v9 withError:v8 forContext:a1[4] completion:a1[5]];
  }

  else
  {
    [v7 _handleFMIPAuthenticationResponse:0 withError:a4 forContext:a1[4] completion:a1[5]];
  }
}

+ (void)_handleFMIPAuthenticationResponse:(id)response withError:(id)error forContext:(id)context completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  contextCopy = context;
  completionCopy = completion;
  v14 = completionCopy;
  if (!responseCopy || errorCopy || ([responseCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = _AAUILogSystem(completionCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = responseCopy;
      v27 = 2112;
      v28 = errorCopy;
      _os_log_impl(&dword_1C5355000, v16, OS_LOG_TYPE_DEFAULT, "Failed to obtain an FMiP wipe token. Response: %@ and Error: %@", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __108__AAUIDeviceLocatorConfirmationUtilities__handleFMIPAuthenticationResponse_withError_forContext_completion___block_invoke;
    aBlock[3] = &unk_1E820BDB8;
    selfCopy = self;
    v17 = contextCopy;
    v22 = v17;
    v23 = v14;
    v18 = _Block_copy(aBlock);
    account = [v17 account];
    [self _showErrorUserNotificationForAccount:account error:errorCopy withCompletion:v18];
  }

  else
  {
    v20 = _AAUILogSystem(completionCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "FMIPAuthenticationRequest succeeded!", buf, 2u);
    }

    (v14)[2](v14, 0, responseCopy);
  }
}

uint64_t __108__AAUIDeviceLocatorConfirmationUtilities__handleFMIPAuthenticationResponse_withError_forContext_completion___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 || +[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v4 = *(a1[5] + 16);

    return v4();
  }

  else
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[4];

    return [v6 showDisableAlertForContext:v8 withCompletion:v7];
  }
}

+ (void)_showErrorUserNotificationForAccount:(id)account error:(id)error withCompletion:(id)completion
{
  accountCopy = account;
  errorCopy = error;
  completionCopy = completion;
  if (+[AAUIFeatureFlags isSignOutRedesignEnabled])
  {
    v11 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v12 localizedStringForKey:@"CANCEL" value:&stru_1F447F790 table:@"Localizable"];
  }

  v13 = +[AAUIFeatureFlags isSignOutRedesignEnabled];
  v14 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = v14;
  if (v13)
  {
    v16 = @"OK";
  }

  else
  {
    v16 = @"RETRY";
  }

  v17 = [v14 localizedStringForKey:v16 value:&stru_1F447F790 table:@"Localizable"];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __100__AAUIDeviceLocatorConfirmationUtilities__showErrorUserNotificationForAccount_error_withCompletion___block_invoke;
  v23[3] = &unk_1E820BDE0;
  v24 = errorCopy;
  v25 = accountCopy;
  v26 = v11;
  v27 = v17;
  v28 = completionCopy;
  selfCopy = self;
  v18 = completionCopy;
  v19 = v17;
  v20 = v11;
  v21 = accountCopy;
  v22 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v23);
}

void __100__AAUIDeviceLocatorConfirmationUtilities__showErrorUserNotificationForAccount_error_withCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E698B9E0];
  v4 = [*(a1 + 72) _titleForError:*(a1 + 32) account:*(a1 + 40)];
  v3 = [*(a1 + 72) _messageForError:*(a1 + 32) account:*(a1 + 40)];
  [v2 showUserNotificationWithTitle:v4 message:v3 cancelButtonTitle:*(a1 + 48) otherButtonTitle:*(a1 + 56) withCompletionBlock:*(a1 + 64)];
}

+ (id)_titleForError:(id)error account:(id)account
{
  code = [error code];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (code == 401)
  {
    v7 = @"MOBILEME_AUTHENTICATION_FAILED_MESSAGE_REBRAND";
  }

  else
  {
    v7 = @"VERIFICATION_FAILED_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F447F790 table:@"Localizable"];

  return v8;
}

+ (id)_messageForError:(id)error account:(id)account
{
  errorCopy = error;
  if ([errorCopy code] == 401)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    localizedDescription = [v5 localizedStringForKey:@"FIND_MY_AUTHENTICATION_ERROR_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
  }

  return localizedDescription;
}

+ (void)dismissViewController:(id)controller
{
  controllerCopy = controller;
  if ([self shouldShowTnLCoverageLoss])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__AAUIDeviceLocatorConfirmationUtilities_dismissViewController___block_invoke;
    block[3] = &unk_1E820B8F0;
    v6 = controllerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __72__AAUIDeviceLocatorConfirmationUtilities_checkIfWatchHasAppleIDAccount___block_invoke_119_cold_1()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [AAUIDeviceLocatorConfirmationUtilities _authContextForPresentingVC:v1 navController:v2 theftAndLossViewControllerAvailable:? context:?];
}

+ (void)_authContextForPresentingVC:(void *)a1 navController:(NSObject *)a2 theftAndLossViewControllerAvailable:context:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 clientID];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1C5355000, a2, OS_LOG_TYPE_DEBUG, "AAUIDeviceLocatorConfirmationUtilitiesContext clientID: %@", &v4, 0xCu);
}

@end