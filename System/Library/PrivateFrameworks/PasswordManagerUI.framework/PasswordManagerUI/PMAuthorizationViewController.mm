@interface PMAuthorizationViewController
- (ASAuthorizationViewControllerDelegate)delegate;
- (BOOL)_shouldPresentSignInWithAppleForkingAlertForLoginChoice:(id)choice;
- (PMAuthorizationViewController)initWithPresentationContext:(id)context activity:(id)activity;
- (id)_cableClientViewControllerWithLoginChoice:(id)choice;
- (id)_controllerForCABLEAuthenticatorError:(id)error;
- (id)_initialViewControllerForPresentationContext:(id)context expandingOtherLoginChoices:(BOOL)choices;
- (id)_presentationContextControllerTitle;
- (id)_securityKeyRequestViewController;
- (id)_setUpContainerViewControllerWithCredentialRequestViewController:(id)controller;
- (id)_setUpInitialViewController;
- (id)_titleBarButtonItem;
- (void)_cancelButtonSelected:(id)selected;
- (void)_enableBluetoothAndShowCABLEClientViewControllerWithLoginChoice:(id)choice;
- (void)_enableBluetoothAndShowCABLEConnectingViewController;
- (void)_presentManualPasswordEntryInterface;
- (void)_presentNewPINEntryInterface;
- (void)_presentPINEntryInterface;
- (void)_presentSignInWithAppleForkingAlertWithContinueHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)_pushActivateSecurityKeyAgainViewController;
- (void)_pushCABLEAuthenticatingViewController;
- (void)_pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext:(id)context;
- (void)_pushCABLEClientViewControllerForCABLELoginChoice:(id)choice;
- (void)_pushCABLEConnectingViewController;
- (void)_pushPlatformKeyViewControllerWithSubtitle:(id)subtitle;
- (void)_pushRequestPaneViewControllerWithExpandedLoginChoiceList:(BOOL)list;
- (void)_pushSecurityKeyViewController;
- (void)_pushSecurityKeyViewController:(id)controller;
- (void)_pushSecurityKeyViewControllerWithError:(int64_t)error;
- (void)_showCABLEAuthenticatorError:(id)error;
- (void)_showEnableBluetoothViewControllerForCABLEAuthenticator;
- (void)_showEnableBluetoothViewControllerForCABLEClientWithLoginChoice:(id)choice;
- (void)_startCABLEAuthenticator;
- (void)_startCABLEAuthenticatorOnInitialPresentationIfNeeded;
- (void)_startCABLEClientForSingleLoginChoiceIfNeeded;
- (void)_startCABLEClientWithLoginChoice:(id)choice;
- (void)passwordAuthenticationViewController:(id)controller completedWithManuallyEnteredPasswordCredential:(id)credential;
- (void)passwordAuthenticationViewController:(id)controller completedWithUserEnteredPIN:(id)n;
- (void)performConditionalRegistrationIfPossible;
- (void)presentNewPINEntryInterface;
- (void)presentPINEntryInterface;
- (void)pushOrUpdateBasicPaneViewControllerWithError:(int64_t)error overrideUserVisibleErrorMessage:(id)message;
- (void)requestPaneViewController:(id)controller didRequestCredentialForLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler;
- (void)requestPaneViewController:(id)controller dismissWithCredential:(id)credential error:(id)error;
- (void)requestPaneViewControllerNeedsReload:(id)reload;
- (void)requestPaneViewControllerStartCABLEAuthentication:(id)authentication;
- (void)updateInterfaceWithLoginChoices:(id)choices;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PMAuthorizationViewController

- (PMAuthorizationViewController)initWithPresentationContext:(id)context activity:(id)activity
{
  contextCopy = context;
  activityCopy = activity;
  v18.receiver = self;
  v18.super_class = PMAuthorizationViewController;
  v9 = [(PMAuthorizationViewController *)&v18 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentationContext, context);
    objc_storeStrong(&v10->_authorizationActivity, activity);
    v11 = objc_alloc_init(MEMORY[0x277D54D00]);
    wirelessSettingsController = v10->_wirelessSettingsController;
    v10->_wirelessSettingsController = v11;

    v10->_biometricsEnabled = [MEMORY[0x277CF0470] isBiometricAuthenticationAvailable];
    mEMORY[0x277D49A50] = [MEMORY[0x277D49A50] sharedMonitor];
    if ([mEMORY[0x277D49A50] isKeychainSyncEnabled])
    {
      iCloudKeychainPasskeyLoginChoiceCount = [(ASCAuthorizationPresentationContext *)v10->_presentationContext iCloudKeychainPasskeyLoginChoiceCount];

      if (iCloudKeychainPasskeyLoginChoiceCount)
      {
        v15 = [(ASCAuthorizationPresentationContext *)v10->_presentationContext externalPasskeyLoginChoiceCount]!= 0;
LABEL_7:
        v10->_hasInternalAndExternalPasskeyLoginChoices = v15;
        v16 = v10;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v15 = 0;
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

- (void)updateInterfaceWithLoginChoices:(id)choices
{
  choicesCopy = choices;
  if ([choicesCopy count])
  {
    [(ASCAuthorizationPresentationContext *)self->_presentationContext updateLoginChoices:choicesCopy];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_4;
    block[3] = &unk_27831C9D8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global);
  }
}

void __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_cold_1();
  }
}

void __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_4(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _initialViewControllerForPresentationContext:*(*(a1 + 32) + 992) expandingOtherLoginChoices:1];
  v3 = v2;
  v4 = *(a1 + 32);
  if (v2)
  {
    [v2 setDelegate:v4];
    v5 = *(*(a1 + 32) + 1000);
    v7[0] = v3;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [v5 setViewControllers:v6 animated:1];
  }

  else
  {
    os_activity_apply(*(v4 + 1008), &__block_literal_global_6);
  }
}

void __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __65__PMAuthorizationViewController_updateInterfaceWithLoginChoices___block_invoke_2_cold_1();
  }
}

- (void)presentPINEntryInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PMAuthorizationViewController_presentPINEntryInterface__block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)presentNewPINEntryInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__PMAuthorizationViewController_presentNewPINEntryInterface__block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)pushOrUpdateBasicPaneViewControllerWithError:(int64_t)error overrideUserVisibleErrorMessage:(id)message
{
  messageCopy = message;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke;
  aBlock[3] = &unk_27831CA28;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_3;
  v11[3] = &unk_27831CA78;
  v11[4] = self;
  v8 = _Block_copy(v11);
  v9 = v8;
  if (error <= 0x10)
  {
    if (((1 << error) & 0x20C0) != 0)
    {
      v10 = descriptionForErrorCode();
      (v9)[2](v9, v10);
    }

    else if (((1 << error) & 0x30) != 0)
    {
      v7[2](v7, error);
    }

    else if (error == 16)
    {
      (*(v8 + 2))(v8, messageCopy);
    }
  }
}

void __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_2;
  v2[3] = &unk_27831CA00;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __110__PMAuthorizationViewController_pushOrUpdateBasicPaneViewControllerWithError_overrideUserVisibleErrorMessage___block_invoke_4;
  v5[3] = &unk_27831CA50;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

- (void)performConditionalRegistrationIfPossible
{
  v3 = [(PMAuthorizationViewController *)self _initialViewControllerForPresentationContext:self->_presentationContext];
  conditionalRegistrationViewController = self->_conditionalRegistrationViewController;
  self->_conditionalRegistrationViewController = v3;

  [(ASCredentialPickerViewControllerProtocol *)self->_conditionalRegistrationViewController setDelegate:self];
  v5 = self->_conditionalRegistrationViewController;

  [(ASCredentialPickerViewControllerProtocol *)v5 performConditionalRegistrationIfPossible];
}

- (id)_presentationContextControllerTitle
{
  overrideHeader = [(ASCAuthorizationPresentationContext *)self->_presentationContext overrideHeader];

  presentationContext = self->_presentationContext;
  if (overrideHeader)
  {
    overrideHeader2 = [(ASCAuthorizationPresentationContext *)presentationContext overrideHeader];
  }

  else if ([(ASCAuthorizationPresentationContext *)presentationContext requestTypes]== 2)
  {
    [MEMORY[0x277D49A08] isAppleAccountBrandingEnabled];
    overrideHeader2 = _WBSLocalizedString();
  }

  else
  {
    overrideHeader2 = 0;
  }

  return overrideHeader2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v25 = *MEMORY[0x277D85DE8];
  v5 = WBS_LOG_CHANNEL_PREFIXServiceLifecycle(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v24 = objc_opt_class();
    _os_log_impl(&dword_21C6E5000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will appear", buf, 0xCu);
  }

  v22.receiver = self;
  v22.super_class = PMAuthorizationViewController;
  [(PMAuthorizationViewController *)&v22 viewWillAppear:appearCopy];
  isBeingPresented = [(PMAuthorizationViewController *)self isBeingPresented];
  if (isBeingPresented)
  {
    _setUpInitialViewController = [(PMAuthorizationViewController *)self _setUpInitialViewController];
    v10 = _setUpInitialViewController;
    if (!_setUpInitialViewController)
    {
LABEL_13:

      return;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PMAuthorizationViewController_viewWillAppear___block_invoke;
    aBlock[3] = &unk_27831CA50;
    aBlock[4] = self;
    v21 = _setUpInitialViewController;
    v11 = _Block_copy(aBlock);
    loginChoices = [(ASCAuthorizationPresentationContext *)self->_presentationContext loginChoices];
    if ([loginChoices count] == 1)
    {
      loginChoices2 = [(ASCAuthorizationPresentationContext *)self->_presentationContext loginChoices];
      firstObject = [loginChoices2 firstObject];
      v15 = [(PMAuthorizationViewController *)self _shouldPresentSignInWithAppleForkingAlertForLoginChoice:firstObject];

      if (v15)
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __48__PMAuthorizationViewController_viewWillAppear___block_invoke_3;
        v18[3] = &unk_27831CAA0;
        v19 = v11;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __48__PMAuthorizationViewController_viewWillAppear___block_invoke_4;
        v17[3] = &unk_27831C9D8;
        v17[4] = self;
        [(PMAuthorizationViewController *)self _presentSignInWithAppleForkingAlertWithContinueHandler:v18 cancelHandler:v17];

LABEL_12:
        goto LABEL_13;
      }
    }

    else
    {
    }

    v11[2](v11);
    goto LABEL_12;
  }

  v16 = WBS_LOG_CHANNEL_PREFIXServiceLifecycle(isBeingPresented, v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [PMAuthorizationViewController viewWillAppear:];
  }
}

uint64_t __48__PMAuthorizationViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__PMAuthorizationViewController_viewWillAppear___block_invoke_2;
  v4[3] = &unk_27831C9D8;
  v4[4] = v2;
  return [v2 presentViewController:v1 animated:1 completion:v4];
}

uint64_t __48__PMAuthorizationViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
  [WeakRetained authorizationViewControllerDidCompleteInitialPresentation:*(a1 + 32)];

  [*(a1 + 32) _startCABLEClientForSingleLoginChoiceIfNeeded];
  v3 = *(a1 + 32);

  return [v3 _startCABLEAuthenticatorOnInitialPresentationIfNeeded];
}

void __48__PMAuthorizationViewController_viewWillAppear___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1056));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBA8A8] code:1009 userInfo:0];
  [WeakRetained authorizationViewController:v2 didCompleteWithCredential:0 error:v3];
}

- (id)_titleBarButtonItem
{
  _presentationContextControllerTitle = [(PMAuthorizationViewController *)self _presentationContextControllerTitle];

  if (_presentationContextControllerTitle)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:20.0 weight:*MEMORY[0x277D74420]];
    [v5 setFont:v6];

    _presentationContextControllerTitle2 = [(PMAuthorizationViewController *)self _presentationContextControllerTitle];
    [v5 setText:_presentationContextControllerTitle2];

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v5];
    [v8 setHidesSharedBackground:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_setUpInitialViewController
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(PMAuthorizationViewController *)self _initialViewControllerForPresentationContext:self->_presentationContext];
  if (v3)
  {
    v4 = [(PMAuthorizationViewController *)self _setUpContainerViewControllerWithCredentialRequestViewController:v3];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_24);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CF0400];
    v11 = *MEMORY[0x277CCA470];
    v12[0] = @"No view controller specified for request.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v6 errorWithDomain:v7 code:1 userInfo:v8];
    [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v9];

    v4 = 0;
  }

  return v4;
}

void __60__PMAuthorizationViewController__setUpInitialViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__PMAuthorizationViewController__setUpInitialViewController__block_invoke_cold_1();
  }
}

- (id)_initialViewControllerForPresentationContext:(id)context expandingOtherLoginChoices:(BOOL)choices
{
  choicesCopy = choices;
  v42[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  cableAuthenticatorURL = [contextCopy cableAuthenticatorURL];

  if (cableAuthenticatorURL)
  {
    if ([contextCopy shouldRequireCABLEAuthenticatorConsent])
    {
      _securityKeyRequestViewController2 = [objc_alloc(MEMORY[0x277CBA938]) initWithPresentationContext:contextCopy];
      cancelBarButtonItem = [(ASCredentialRequestPaneViewController *)_securityKeyRequestViewController2 cancelBarButtonItem];
      v42[0] = cancelBarButtonItem;
      v10 = MEMORY[0x277CBEA60];
      v11 = v42;
    }

    else
    {
      _securityKeyRequestViewController2 = objc_alloc_init(MEMORY[0x277CBA930]);
      cancelBarButtonItem = [(ASCredentialRequestPaneViewController *)_securityKeyRequestViewController2 cancelBarButtonItem];
      v41 = cancelBarButtonItem;
      v10 = MEMORY[0x277CBEA60];
      v11 = &v41;
    }

    cancelBarButtonItem2 = [v10 arrayWithObjects:v11 count:1];
    as_navigationItem = [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 as_navigationItem];
    [as_navigationItem setRightBarButtonItems:cancelBarButtonItem2];
    goto LABEL_8;
  }

  loginChoices = [contextCopy loginChoices];
  if ([loginChoices count])
  {
  }

  else
  {
    isProxiedRequest = [contextCopy isProxiedRequest];

    if ((isProxiedRequest & 1) == 0)
    {
      v22 = MEMORY[0x277CBA970];
      serviceName = [(ASCAuthorizationPresentationContext *)self->_presentationContext serviceName];
      cancelBarButtonItem = [v22 noCredentialsErrorWithServiceName:serviceName];

      _securityKeyRequestViewController2 = [objc_alloc(MEMORY[0x277CBA918]) initWithConfiguration:cancelBarButtonItem];
      cancelBarButtonItem2 = [(ASCredentialRequestPaneViewController *)_securityKeyRequestViewController2 cancelBarButtonItem];
      v40 = cancelBarButtonItem2;
      as_navigationItem = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      as_navigationItem2 = [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 as_navigationItem];
      [as_navigationItem2 setRightBarButtonItems:as_navigationItem];

LABEL_8:
      goto LABEL_39;
    }
  }

  requestTypes = [contextCopy requestTypes];
  cancelBarButtonItem = [contextCopy loginChoices];
  cancelBarButtonItem2 = [MEMORY[0x277D49A50] sharedMonitor];
  if (([cancelBarButtonItem2 isKeychainSyncEnabled] & 1) == 0 && (objc_msgSend(cancelBarButtonItem2, "canKeychainSyncBeEnabled") & 1) == 0)
  {
    externalPasskeyLoginChoiceCount = [contextCopy externalPasskeyLoginChoiceCount];
    v18 = [cancelBarButtonItem safari_filterObjectsUsingBlock:&__block_literal_global_35];

    if (!externalPasskeyLoginChoiceCount)
    {
      requestTypes &= 0xFFFFFFFFFFFFFFF3;
    }

    cancelBarButtonItem = v18;
  }

  if (requestTypes == 32)
  {
    firstObject = [cancelBarButtonItem firstObject];
    if ([cancelBarButtonItem count] != 1 || objc_msgSend(firstObject, "loginChoiceKind") != 3 || objc_msgSend(firstObject, "credentialKind") != 2)
    {
      _securityKeyRequestViewController2 = 0;
LABEL_27:

      if (_securityKeyRequestViewController2)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    _securityKeyRequestViewController = [(PMAuthorizationViewController *)self _securityKeyRequestViewController];
LABEL_25:
    _securityKeyRequestViewController2 = _securityKeyRequestViewController;
    goto LABEL_27;
  }

  if (requestTypes == 16)
  {
    _securityKeyRequestViewController2 = [(PMAuthorizationViewController *)self _securityKeyRequestViewController];
    if (_securityKeyRequestViewController2)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (-[PMAuthorizationViewController _shouldPresentCABLEAsInitialViewControllerForRequestTypes:shouldAllowSecurityKeysFromCABLEView:](self, "_shouldPresentCABLEAsInitialViewControllerForRequestTypes:shouldAllowSecurityKeysFromCABLEView:", requestTypes, [contextCopy shouldAllowSecurityKeysFromCABLEView]))
  {
    firstObject = [cancelBarButtonItem firstObject];
    _securityKeyRequestViewController = [objc_alloc(MEMORY[0x277CBA928]) initWithPresentationContext:self->_presentationContext loginChoice:firstObject activity:self->_authorizationActivity];
    goto LABEL_25;
  }

LABEL_28:
  loginChoices2 = [(ASCAuthorizationPresentationContext *)self->_presentationContext loginChoices];
  if ([loginChoices2 count])
  {

    goto LABEL_33;
  }

  isProxiedRequest2 = [(ASCAuthorizationPresentationContext *)self->_presentationContext isProxiedRequest];

  if (!isProxiedRequest2)
  {
LABEL_33:
    _securityKeyRequestViewController2 = [[_TtC17PasswordManagerUI32PMCredentialPickerViewController alloc] initWithPresentationContext:contextCopy shouldExpandOtherLoginChoices:choicesCopy activity:self->_authorizationActivity];
    if (!_securityKeyRequestViewController2)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  v26 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:3 presentationContext:contextCopy];
  _securityKeyRequestViewController2 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:v26];
  [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 setAuthenticationDelegate:self];

LABEL_34:
  as_navigationItem3 = [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 as_navigationItem];
  leftBarButtonItems = [as_navigationItem3 leftBarButtonItems];
  v29 = [leftBarButtonItems count];

  if (!v29)
  {
    _titleBarButtonItem = [(PMAuthorizationViewController *)self _titleBarButtonItem];
    as_navigationItem4 = [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 as_navigationItem];
    [as_navigationItem4 setLeftBarButtonItem:_titleBarButtonItem];
  }

  as_navigationItem5 = [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 as_navigationItem];
  rightBarButtonItems = [as_navigationItem5 rightBarButtonItems];
  v34 = [rightBarButtonItems count];

  if (!v34)
  {
    cancelBarButtonItem3 = [(ASCredentialRequestPaneViewController *)_securityKeyRequestViewController2 cancelBarButtonItem];
    v39 = cancelBarButtonItem3;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    as_navigationItem6 = [(PMCredentialPickerViewController *)_securityKeyRequestViewController2 as_navigationItem];
    [as_navigationItem6 setRightBarButtonItems:v36];
  }

  [(ASCredentialRequestPaneViewController *)_securityKeyRequestViewController2 setDelegate:self];
LABEL_39:

  return _securityKeyRequestViewController2;
}

uint64_t __105__PMAuthorizationViewController__initialViewControllerForPresentationContext_expandingOtherLoginChoices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 loginChoiceKind];
  if (v3 == 7)
  {
    v4 = 0;
  }

  else if (v3 == 2)
  {
    v4 = [v2 isExternal];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_securityKeyRequestViewController
{
  v2 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext];

  return v2;
}

- (void)_presentPINEntryInterface
{
  self->_isPresentingNewPINEntryView = 0;
  v3 = self->_pinEntryAttempt + 1;
  self->_pinEntryAttempt = v3;
  if (v3 >= 2 && ([(ASNavigationController *)self->_navigationController topViewController], v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v4, (isKindOfClass & 1) != 0))
  {
    topViewController = [(ASNavigationController *)self->_navigationController topViewController];
    v6 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:1 presentationContext:self->_presentationContext];
    [topViewController updateWithConfiguration:v6];
  }

  else
  {
    topViewController = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:0 presentationContext:self->_presentationContext];
    v6 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:topViewController];
    [v6 setDelegate:self];
    [v6 setAuthenticationDelegate:self];
    _titleBarButtonItem = [(PMAuthorizationViewController *)self _titleBarButtonItem];
    as_navigationItem = [v6 as_navigationItem];
    [as_navigationItem setLeftBarButtonItem:_titleBarButtonItem];

    [(ASNavigationController *)self->_navigationController pushViewController:v6 animated:0];
  }
}

- (void)_presentNewPINEntryInterface
{
  v10[1] = *MEMORY[0x277D85DE8];
  self->_isPresentingNewPINEntryView = 1;
  v3 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:2 presentationContext:self->_presentationContext];
  v4 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:v3];
  [v4 setDelegate:self];
  [v4 setAuthenticationDelegate:self];
  _titleBarButtonItem = [(PMAuthorizationViewController *)self _titleBarButtonItem];
  as_navigationItem = [v4 as_navigationItem];
  [as_navigationItem setLeftBarButtonItem:_titleBarButtonItem];

  cancelBarButtonItem = [v4 cancelBarButtonItem];
  v10[0] = cancelBarButtonItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  as_navigationItem2 = [v4 as_navigationItem];
  [as_navigationItem2 setRightBarButtonItems:v8];

  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:0];
}

- (void)_presentManualPasswordEntryInterface
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA9B0]) initWithPersona:3 presentationContext:self->_presentationContext];
  v4 = [objc_alloc(MEMORY[0x277CBA9A8]) initWithConfiguration:v3];
  [v4 setDelegate:self];
  [v4 setAuthenticationDelegate:self];
  cancelBarButtonItem = [v4 cancelBarButtonItem];
  v8[0] = cancelBarButtonItem;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  as_navigationItem = [v4 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v6];

  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:0];
}

- (void)_presentSignInWithAppleForkingAlertWithContinueHandler:(id)handler cancelHandler:(id)cancelHandler
{
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  v21 = _WBSLocalizedString();
  v8 = MEMORY[0x277CCACA8];
  v9 = _WBSLocalizedString();
  serviceName = [(ASCAuthorizationPresentationContext *)self->_presentationContext serviceName];
  v11 = [v8 localizedStringWithFormat:v9, serviceName];

  v12 = _WBSLocalizedString();
  v13 = _WBSLocalizedString();
  v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v21 message:v11 preferredStyle:1];
  v15 = MEMORY[0x277D750F8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __102__PMAuthorizationViewController__presentSignInWithAppleForkingAlertWithContinueHandler_cancelHandler___block_invoke;
  v24[3] = &unk_27831CAE8;
  v25 = handlerCopy;
  v16 = handlerCopy;
  v17 = [v15 actionWithTitle:v12 style:0 handler:v24];
  v18 = MEMORY[0x277D750F8];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__PMAuthorizationViewController__presentSignInWithAppleForkingAlertWithContinueHandler_cancelHandler___block_invoke_2;
  v22[3] = &unk_27831CAE8;
  v23 = cancelHandlerCopy;
  v19 = cancelHandlerCopy;
  v20 = [v18 actionWithTitle:v13 style:0 handler:v22];
  [v14 addAction:v20];
  [v14 addAction:v17];
  [(PMAuthorizationViewController *)self presentViewController:v14 animated:1 completion:0];
}

- (void)_cancelButtonSelected:(id)selected
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CF0400] code:2 userInfo:0];
  [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v4];
}

- (id)_setUpContainerViewControllerWithCredentialRequestViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  v5 = [objc_alloc(MEMORY[0x277CBA990]) initWithRootViewController:controllerCopy];

  navigationController = self->_navigationController;
  self->_navigationController = v5;

  v7 = [objc_alloc(MEMORY[0x277CBA950]) initWithRootViewController:self->_navigationController];
  [v7 setPaneDelegate:self];
  [(ASNavigationController *)self->_navigationController setDelegate:v7];

  return v7;
}

- (void)_pushSecurityKeyViewController
{
  v3 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext];
  [(PMAuthorizationViewController *)self _pushSecurityKeyViewController:v3];
}

- (void)_pushSecurityKeyViewControllerWithError:(int64_t)error
{
  v4 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext presentingError:error];
  [(PMAuthorizationViewController *)self _pushSecurityKeyViewController:v4];
}

- (void)_pushSecurityKeyViewController:(id)controller
{
  v10[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  cancelBarButtonItem = [controllerCopy cancelBarButtonItem];
  v10[0] = cancelBarButtonItem;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  as_navigationItem = [controllerCopy as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v6];

  _titleBarButtonItem = [(PMAuthorizationViewController *)self _titleBarButtonItem];
  as_navigationItem2 = [controllerCopy as_navigationItem];
  [as_navigationItem2 setLeftBarButtonItem:_titleBarButtonItem];

  [(ASNavigationController *)self->_navigationController pushViewController:controllerCopy animated:1];
}

- (void)_pushPlatformKeyViewControllerWithSubtitle:(id)subtitle
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBA970] signInFailedErrorWithSubtitle:subtitle];
  v5 = [objc_alloc(MEMORY[0x277CBA918]) initWithConfiguration:v4];
  [v5 setDelegate:self];
  cancelBarButtonItem = [v5 cancelBarButtonItem];
  v12[0] = cancelBarButtonItem;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  as_navigationItem = [v5 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v7];

  navigationController = self->_navigationController;
  v11 = v5;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v10 animated:1];
}

- (void)_pushActivateSecurityKeyAgainViewController
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA980]) initWithPresentationContext:self->_presentationContext reinsertSecurityKey:1];
  _titleBarButtonItem = [(PMAuthorizationViewController *)self _titleBarButtonItem];
  v5 = _titleBarButtonItem;
  if (_titleBarButtonItem)
  {
    v12[0] = _titleBarButtonItem;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    as_navigationItem = [v3 as_navigationItem];
    [as_navigationItem setLeftBarButtonItems:v6];
  }

  cancelBarButtonItem = [v3 cancelBarButtonItem];
  v11 = cancelBarButtonItem;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  as_navigationItem2 = [v3 as_navigationItem];
  [as_navigationItem2 setRightBarButtonItems:v9];

  [v3 setDelegate:self];
  [(ASNavigationController *)self->_navigationController pushViewController:v3 animated:1];
}

- (id)_cableClientViewControllerWithLoginChoice:(id)choice
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBA928];
  choiceCopy = choice;
  v6 = [[v4 alloc] initWithPresentationContext:self->_presentationContext loginChoice:choiceCopy activity:self->_authorizationActivity];

  [v6 setDelegate:self];
  cancelBarButtonItem = [v6 cancelBarButtonItem];
  v11[0] = cancelBarButtonItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  as_navigationItem = [v6 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v8];

  return v6;
}

- (void)_pushCABLEClientViewControllerForCABLELoginChoice:(id)choice
{
  v4 = [(PMAuthorizationViewController *)self _cableClientViewControllerWithLoginChoice:choice];
  [(ASNavigationController *)self->_navigationController pushViewController:v4 animated:1];
}

- (void)_pushCABLEConnectingViewController
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBA930]);
  [v3 setDelegate:self];
  cancelBarButtonItem = [v3 cancelBarButtonItem];
  v10[0] = cancelBarButtonItem;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  as_navigationItem = [v3 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v5];

  navigationController = self->_navigationController;
  v9 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v8 animated:1];
}

- (void)_pushCABLEAuthenticatingViewController
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA920]) initWithPresentationContext:self->_presentationContext];
  [v3 setDelegate:self];
  cancelBarButtonItem = [v3 cancelBarButtonItem];
  v10[0] = cancelBarButtonItem;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  as_navigationItem = [v3 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v5];

  navigationController = self->_navigationController;
  v9 = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v8 animated:1];
}

- (void)_startCABLEClientWithLoginChoice:(id)choice
{
  choiceCopy = choice;
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__PMAuthorizationViewController__startCABLEClientWithLoginChoice___block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  os_activity_apply(authorizationActivity, block);
  if (([(SFWirelessSettingsController *)self->_wirelessSettingsController isBluetoothEnabled]& 1) == 0)
  {
    [(PMAuthorizationViewController *)self _showEnableBluetoothViewControllerForCABLEClientWithLoginChoice:choiceCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationViewController:self didRequestCredentialForLoginChoice:choiceCopy authenticatedContext:0 completionHandler:&__block_literal_global_63];
}

void __66__PMAuthorizationViewController__startCABLEClientWithLoginChoice___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 1016);
    v5 = v3;
    v6[0] = 67109120;
    v6[1] = [v4 isBluetoothEnabled];
    _os_log_impl(&dword_21C6E5000, v5, OS_LOG_TYPE_DEFAULT, "Starting caBLE client: bluetoothEnabled: %{BOOL}d", v6, 8u);
  }
}

- (void)_startCABLEClientForSingleLoginChoiceIfNeeded
{
  if ([(PMAuthorizationViewController *)self _shouldPresentCABLEAsInitialViewControllerForRequestTypes:[(ASCAuthorizationPresentationContext *)self->_presentationContext requestTypes] shouldAllowSecurityKeysFromCABLEView:[(ASCAuthorizationPresentationContext *)self->_presentationContext shouldAllowSecurityKeysFromCABLEView]])
  {
    loginChoices = [(ASCAuthorizationPresentationContext *)self->_presentationContext loginChoices];
    v5 = [loginChoices safari_firstObjectPassingTest:&__block_literal_global_65];

    v4 = v5;
    if (v5)
    {
      [(PMAuthorizationViewController *)self _startCABLEClientWithLoginChoice:v5];
      v4 = v5;
    }
  }
}

- (void)_showEnableBluetoothViewControllerForCABLEClientWithLoginChoice:(id)choice
{
  choiceCopy = choice;
  v5 = [objc_alloc(MEMORY[0x277CBA958]) initWithPresentationContext:self->_presentationContext activity:self->_authorizationActivity];
  [v5 setDelegate:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __97__PMAuthorizationViewController__showEnableBluetoothViewControllerForCABLEClientWithLoginChoice___block_invoke;
  v10 = &unk_27831CA50;
  selfCopy = self;
  v12 = choiceCopy;
  v6 = choiceCopy;
  [v5 setEnableBluetoothHandler:&v7];
  [(ASNavigationController *)self->_navigationController pushViewController:v5 animated:1, v7, v8, v9, v10, selfCopy];
}

- (void)_enableBluetoothAndShowCABLEClientViewControllerWithLoginChoice:(id)choice
{
  v4 = [(ASNavigationController *)self->_navigationController popViewControllerAnimated:1];
  os_activity_apply(self->_authorizationActivity, &__block_literal_global_68);
  wirelessSettingsController = self->_wirelessSettingsController;

  [(SFWirelessSettingsController *)wirelessSettingsController setBluetoothEnabled:1];
}

void __97__PMAuthorizationViewController__enableBluetoothAndShowCABLEClientViewControllerWithLoginChoice___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_21C6E5000, v2, OS_LOG_TYPE_DEFAULT, "Enabling Bluetooth", v3, 2u);
  }
}

- (void)_pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext:(id)context
{
  v19[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  objc_storeStrong(&self->_presentationContext, context);
  v6 = [[_TtC17PasswordManagerUI32PMCredentialPickerViewController alloc] initWithPresentationContext:contextCopy shouldExpandOtherLoginChoices:0 activity:self->_authorizationActivity];
  [(ASCredentialRequestPaneViewController *)v6 setDelegate:self];
  if (v6)
  {
    cancelBarButtonItem = [(ASCredentialRequestPaneViewController *)v6 cancelBarButtonItem];
    v17 = cancelBarButtonItem;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    as_navigationItem = [(PMCredentialPickerViewController *)v6 as_navigationItem];
    [as_navigationItem setRightBarButtonItems:v8];

    navigationController = self->_navigationController;
    v16 = v6;
    WeakRetained = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(ASNavigationController *)navigationController setViewControllers:WeakRetained animated:1];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_70);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CF0400];
    v18 = *MEMORY[0x277CCA470];
    v19[0] = @"No view controller specified for request.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v12 errorWithDomain:v13 code:1 userInfo:v14];
    [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v15];
  }
}

void __110__PMAuthorizationViewController__pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __110__PMAuthorizationViewController__pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext___block_invoke_cold_1();
  }
}

- (void)_showCABLEAuthenticatorError:(id)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = [(PMAuthorizationViewController *)self _controllerForCABLEAuthenticatorError:error];
  cancelBarButtonItem = [v4 cancelBarButtonItem];
  v11[0] = cancelBarButtonItem;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  as_navigationItem = [v4 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v6];

  navigationController = self->_navigationController;
  v10 = v4;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(ASNavigationController *)navigationController setViewControllers:v9 animated:1];
}

- (id)_controllerForCABLEAuthenticatorError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  mEMORY[0x277D49DC8] = [MEMORY[0x277D49DC8] sharedManager];
  getEnabledExtensionsSynchronously = [mEMORY[0x277D49DC8] getEnabledExtensionsSynchronously];

  v7 = [getEnabledExtensionsSynchronously countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v23;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(getEnabledExtensionsSynchronously);
        }

        v9 = *(*(&v22 + 1) + 8 * v11);

        mEMORY[0x277D49DC8]2 = [MEMORY[0x277D49DC8] sharedManager];
        v14 = [mEMORY[0x277D49DC8]2 extensionSupportsPasskeys:v9];

        if (v14)
        {
          v15 = 1;
          goto LABEL_12;
        }

        ++v11;
        v12 = v9;
      }

      while (v8 != v11);
      v8 = [getEnabledExtensionsSynchronously countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
  v9 = 0;
LABEL_12:

  if ([errorCopy safari_matchesErrorDomain:*MEMORY[0x277CF0400] andCode:5] && (objc_msgSend(MEMORY[0x277D49A50], "sharedMonitor"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isKeychainSyncEnabled"), v16, ((v15 | v17) & 1) == 0))
  {
    v20 = objc_alloc_init(MEMORY[0x277CBA960]);
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277CBA940]);
    sf_bundleIdentifierForContainingApp = [v9 sf_bundleIdentifierForContainingApp];
    v20 = [v18 initWithError:errorCopy applicationBundleIdentifier:sf_bundleIdentifierForContainingApp];
  }

  [v20 setDelegate:self];

  return v20;
}

- (void)_startCABLEAuthenticatorOnInitialPresentationIfNeeded
{
  cableAuthenticatorURL = [(ASCAuthorizationPresentationContext *)self->_presentationContext cableAuthenticatorURL];
  if (cableAuthenticatorURL)
  {
    v4 = cableAuthenticatorURL;
    shouldRequireCABLEAuthenticatorConsent = [(ASCAuthorizationPresentationContext *)self->_presentationContext shouldRequireCABLEAuthenticatorConsent];

    if ((shouldRequireCABLEAuthenticatorConsent & 1) == 0)
    {

      [(PMAuthorizationViewController *)self _startCABLEAuthenticator];
    }
  }
}

- (void)_startCABLEAuthenticator
{
  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke;
  block[3] = &unk_27831C9D8;
  block[4] = self;
  os_activity_apply(authorizationActivity, block);
  if (([(SFWirelessSettingsController *)self->_wirelessSettingsController isBluetoothEnabled]& 1) == 0)
  {
    [(PMAuthorizationViewController *)self _showEnableBluetoothViewControllerForCABLEAuthenticator];
  }

  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_74;
  v5[3] = &unk_27831CB58;
  objc_copyWeak(&v6, &location);
  [WeakRetained authorizationViewController:self startCABLEAuthenticationWithCompletionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 1016);
    v5 = v3;
    v6[0] = 67109120;
    v6[1] = [v4 isBluetoothEnabled];
    _os_log_impl(&dword_21C6E5000, v5, OS_LOG_TYPE_DEFAULT, "Starting caBLE authenticator: bluetoothEnabled: %{BOOL}d", v6, 8u);
  }
}

void __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_2;
  block[3] = &unk_27831CB30;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __57__PMAuthorizationViewController__startCABLEAuthenticator__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained _pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext:?];
    }

    else
    {
      [WeakRetained _showCABLEAuthenticatorError:*(a1 + 40)];
    }

    WeakRetained = v3;
  }
}

- (void)_showEnableBluetoothViewControllerForCABLEAuthenticator
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBA958]) initWithPresentationContext:self->_presentationContext activity:self->_authorizationActivity];
  [v3 setDelegate:self];
  cancelBarButtonItem = [v3 cancelBarButtonItem];
  v8[0] = cancelBarButtonItem;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  as_navigationItem = [v3 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v5];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__PMAuthorizationViewController__showEnableBluetoothViewControllerForCABLEAuthenticator__block_invoke;
  v7[3] = &unk_27831C9D8;
  v7[4] = self;
  [v3 setEnableBluetoothHandler:v7];
  [(ASNavigationController *)self->_navigationController pushViewController:v3 animated:1];
}

- (void)_enableBluetoothAndShowCABLEConnectingViewController
{
  [(PMAuthorizationViewController *)self _pushCABLEConnectingViewController];
  os_activity_apply(self->_authorizationActivity, &__block_literal_global_77);
  wirelessSettingsController = self->_wirelessSettingsController;

  [(SFWirelessSettingsController *)wirelessSettingsController setBluetoothEnabled:1];
}

void __85__PMAuthorizationViewController__enableBluetoothAndShowCABLEConnectingViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_21C6E5000, v2, OS_LOG_TYPE_DEFAULT, "Enabling Bluetooth", v3, 2u);
  }
}

- (void)requestPaneViewController:(id)controller dismissWithCredential:(id)credential error:(id)error
{
  errorCopy = error;
  credentialCopy = credential;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationViewController:self didCompleteWithCredential:credentialCopy error:errorCopy];
}

- (void)requestPaneViewController:(id)controller didRequestCredentialForLoginChoice:(id)choice authenticatedContext:(id)context completionHandler:(id)handler
{
  choiceCopy = choice;
  contextCopy = context;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([choiceCopy loginChoiceKind] == 3)
  {
    v12 = choiceCopy;
    credentialKind = [v12 credentialKind];
    if (credentialKind == 2)
    {
      [(PMAuthorizationViewController *)self _pushSecurityKeyViewController];
      if (![(ASCAuthorizationPresentationContext *)self->_presentationContext shouldAllowSecurityKeysFromCABLEView])
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0);
        goto LABEL_11;
      }
    }

    else if (credentialKind != 1)
    {
      if (credentialKind)
      {
LABEL_11:

        goto LABEL_12;
      }

      [(PMAuthorizationViewController *)self _pushSecurityKeyViewController];
    }

    [WeakRetained authorizationViewController:self didRequestCredentialForLoginChoice:v12 authenticatedContext:contextCopy completionHandler:handlerCopy];
    goto LABEL_11;
  }

  if ([choiceCopy loginChoiceKind] == 4)
  {
    [(PMAuthorizationViewController *)self _pushCABLEClientViewControllerForCABLELoginChoice:choiceCopy];
    [(PMAuthorizationViewController *)self _startCABLEClientWithLoginChoice:choiceCopy];
  }

  else
  {
    [WeakRetained authorizationViewController:self didRequestCredentialForLoginChoice:choiceCopy authenticatedContext:contextCopy completionHandler:handlerCopy];
  }

LABEL_12:
}

- (void)requestPaneViewControllerNeedsReload:(id)reload
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissAndPresentAgain:self];
}

- (void)_pushRequestPaneViewControllerWithExpandedLoginChoiceList:(BOOL)list
{
  listCopy = list;
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = [[_TtC17PasswordManagerUI32PMCredentialPickerViewController alloc] initWithPresentationContext:self->_presentationContext shouldExpandOtherLoginChoices:list activity:self->_authorizationActivity];
  v6 = v5;
  if (!v5)
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_79);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CF0400];
    v18 = *MEMORY[0x277CCA470];
    v19[0] = @"No view controller specified for request.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v12 errorWithDomain:v13 code:1 userInfo:v14];
    [WeakRetained authorizationViewController:self didCompleteWithCredential:0 error:v15];

LABEL_6:
    goto LABEL_7;
  }

  [(ASCredentialRequestPaneViewController *)v5 setDelegate:self];
  cancelBarButtonItem = [(ASCredentialRequestPaneViewController *)v6 cancelBarButtonItem];
  v17 = cancelBarButtonItem;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  as_navigationItem = [(PMCredentialPickerViewController *)v6 as_navigationItem];
  [as_navigationItem setRightBarButtonItems:v8];

  navigationController = self->_navigationController;
  if (!listCopy)
  {
    v16 = v6;
    WeakRetained = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    [(ASNavigationController *)navigationController setViewControllers:WeakRetained animated:0];
    goto LABEL_6;
  }

  [(ASNavigationController *)navigationController pushViewController:v6 animated:1];
LABEL_7:
}

void __91__PMAuthorizationViewController__pushRequestPaneViewControllerWithExpandedLoginChoiceList___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __110__PMAuthorizationViewController__pushCABLEAuthenticatorCredentialPickerViewControllerWithPresentationContext___block_invoke_cold_1();
  }
}

- (void)requestPaneViewControllerStartCABLEAuthentication:(id)authentication
{
  [(PMAuthorizationViewController *)self _pushCABLEConnectingViewController];

  [(PMAuthorizationViewController *)self _startCABLEAuthenticator];
}

- (void)passwordAuthenticationViewController:(id)controller completedWithUserEnteredPIN:(id)n
{
  nCopy = n;
  if (self->_isPresentingNewPINEntryView)
  {
    [(PMAuthorizationViewController *)self _pushActivateSecurityKeyAgainViewController];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke;
  v7[3] = &unk_27831CBA8;
  v7[4] = self;
  [WeakRetained authorizationViewController:self validateUserEnteredPIN:nCopy completionHandler:v7];
}

void __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_2;
    block[3] = &unk_27831C9D8;
    block[4] = *(a1 + 32);
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
  }

  else
  {
    v7 = *(*(a1 + 32) + 1048);
    v8 = dispatch_time(0, 200000000);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_3;
    v9[3] = &unk_27831CB80;
    v9[4] = *(a1 + 32);
    v11 = v7;
    v10 = v5;
    dispatch_after(v8, MEMORY[0x277D85CD0], v9);
  }
}

void __98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v4 = *(a1 + 32);

    [v4 _pushActivateSecurityKeyAgainViewController];
  }
}

void *__98__PMAuthorizationViewController_passwordAuthenticationViewController_completedWithUserEnteredPIN___block_invoke_3(void *result)
{
  v2 = *(result + 4);
  if (*(v2 + 1048) == *(result + 6))
  {
    *(v2 + 1048) = 0;
    v3 = *(result + 4);
    v4 = [*(result + 5) code];

    return [v3 _pushSecurityKeyViewControllerWithError:v4];
  }

  return result;
}

- (void)passwordAuthenticationViewController:(id)controller completedWithManuallyEnteredPasswordCredential:(id)credential
{
  credentialCopy = credential;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained authorizationViewController:self didCompleteWithCredential:credentialCopy error:0];
}

- (ASAuthorizationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_shouldPresentSignInWithAppleForkingAlertForLoginChoice:(id)choice
{
  sub_21CB81BE4();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (v3)
  {
    swift_unknownObjectRetain();
    v4 = sub_21CB81BB4();
    swift_unknownObjectRelease();
  }

  return v4 & 1;
}

@end