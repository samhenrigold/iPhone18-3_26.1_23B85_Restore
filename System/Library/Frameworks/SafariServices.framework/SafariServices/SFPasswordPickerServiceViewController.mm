@interface SFPasswordPickerServiceViewController
+ (BOOL)_shouldRestoreStateForAutoFillForAppID:(id)d;
+ (void)_rememberStateForAutoFillWithSearchQuery:(id)query savedAccount:(id)account;
+ (void)_restoreStateForAutoFillToAccountPickerConfiguration:(id)configuration isForFillingIndividualAccountFields:(BOOL)fields;
- (BOOL)_isConfiguredForSystemAutoFill;
- (SFPasswordPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_actionForPresentingPasswordManagerExtension:(id)extension;
- (id)_context;
- (id)authenticationMessageForContext:(id)context;
- (id)passcodePromptForContext:(id)context;
- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:(id)context completionHandler:(id)handler;
- (void)_authenticateToViewOtherPasswordsWithCompletion:(id)completion;
- (void)_dismiss;
- (void)_fillCredential:(id)credential needsAuthentication:(BOOL)authentication;
- (void)_presentCredentialListForExtension:(id)extension;
- (void)_sendCredentialToClient:(id)client needsAuthentication:(BOOL)authentication;
- (void)_sendCredentialToClientAndDismiss:(id)dismiss providerBundleIdentifier:(id)identifier;
- (void)accountPickerViewController:(id)controller fillPasswordForSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillText:(id)text;
- (void)accountPickerViewController:(id)controller fillText:(id)text forSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillUsernameForSavedAccount:(id)account;
- (void)accountPickerViewController:(id)controller fillVerificationCode:(id)code;
- (void)accountPickerViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential completion:(id)completion;
- (void)credentialListViewController:(id)controller didFinishWithText:(id)text completion:(id)completion;
- (void)setAuthenticationGracePeriod:(double)period;
- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:(id)domains;
- (void)setPageID:(id)d frameID:(id)iD credentialType:(id)type;
- (void)setRemoteAppID:(id)d;
- (void)setRemoteLocalizedAppName:(id)name;
- (void)setRemoteUnlocalizedAppName:(id)name;
- (void)setSystemAutoFillDocumentTraits:(id)traits;
- (void)setWebViewURL:(id)l;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFPasswordPickerServiceViewController

- (id)authenticationMessageForContext:(id)context
{
  v3 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForFillingSavedPassword];

  return v3;
}

- (id)passcodePromptForContext:(id)context
{
  v3 = +[SFAutoFillAuthenticationUtilities passcodePromptForFillingSavedAccount];

  return v3;
}

- (id)_context
{
  context = self->_context;
  if (!context)
  {
    v4 = objc_alloc_init(_SFAuthenticationContext);
    v5 = self->_context;
    self->_context = v4;

    [(_SFAuthenticationContext *)self->_context setDelegate:self];
    context = self->_context;
  }

  v6 = context;

  return v6;
}

- (SFPasswordPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v18.receiver = self;
  v18.super_class = SFPasswordPickerServiceViewController;
  v4 = [(SFPasswordPickerServiceViewController *)&v18 initWithNibName:name bundle:bundle];
  if (v4)
  {
    objc_initWeak(&location, v4);
    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    [mEMORY[0x1E69C8DE0] addObserver:v4];

    v6 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v4->_authenticationServicesAgentProxy;
    v4->_authenticationServicesAgentProxy = v6;

    v8 = MEMORY[0x1E695A988];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__SFPasswordPickerServiceViewController_initWithNibName_bundle___block_invoke;
    v15[3] = &unk_1E84905C0;
    objc_copyWeak(&v16, &location);
    v9 = [v8 callObserverWithBlock:v15];
    callObserver = v4->_callObserver;
    v4->_callObserver = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695A970]);
    conditionalRegistrationRequester = v4->_conditionalRegistrationRequester;
    v4->_conditionalRegistrationRequester = v11;

    v13 = v4;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __64__SFPasswordPickerServiceViewController_initWithNibName_bundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _dismiss];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  [mEMORY[0x1E69C8DE0] removeObserver:self];

  v6.receiver = self;
  v6.super_class = SFPasswordPickerServiceViewController;
  [(SFPasswordPickerServiceViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = SFPasswordPickerServiceViewController;
  [(SFPasswordPickerServiceViewController *)&v9 viewDidAppear:appear];
  view = [(SFPasswordPickerServiceViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  presentCredentialsHandler = self->_presentCredentialsHandler;
  if (presentCredentialsHandler)
  {
    presentCredentialsHandler[2]();
    v8 = self->_presentCredentialsHandler;
    self->_presentCredentialsHandler = 0;
  }
}

- (void)_dismiss
{
  self->_hasAuthenticationForOtherPasswords = 0;
  _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy willDismissServiceViewController];
}

- (void)_authenticateToViewOtherPasswordsWithCompletion:(id)completion
{
  v23[2] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_hasAuthenticationForOtherPasswords)
  {
    (completionCopy[2])(completionCopy, 1, 0);
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E696EE50]);
    v20 = 0u;
    v21 = 0u;
    objc_msgSend__hostAuditToken(self);
    v18 = 0u;
    v19 = 0u;
    if (WBSAuditTokenHasEntitlement())
    {
      [v6 setTouchIDAuthenticationAllowableReuseDuration:self->_authenticationGracePeriod];
    }

    v7 = WBSAuthenticationPolicyForPasswordManager();
    v17 = 0;
    v8 = [v6 canEvaluatePolicy:v7 error:&v17];
    v9 = v17;
    v10 = v9;
    if (v8)
    {
      v22[0] = &unk_1F5023110;
      v11 = +[SFAutoFillAuthenticationUtilities passcodePromptForViewingSavedAccounts];
      v22[1] = &unk_1F5023128;
      v23[0] = v11;
      v12 = +[SFAutoFillAuthenticationUtilities customAuthenticationTitleForViewingSavedAccounts];
      v23[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke;
      v14[3] = &unk_1E8492518;
      v14[4] = self;
      v16 = v5;
      v15 = v6;
      [v15 evaluatePolicy:v7 options:v13 reply:v14];
    }

    else
    {
      self->_hasAuthenticationForOtherPasswords = [v9 code] == -5;
      v5[2](v5);
    }
  }
}

void __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(a1 + 32) + 1041) = v4 == 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2;
  v7[3] = &unk_1E84924F0;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2_cold_1();
    }

    [*(a1 + 40) _dismiss];
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 56) + 16);

    return v5();
  }
}

- (id)_actionForPresentingPasswordManagerExtension:(id)extension
{
  extensionCopy = extension;
  objc_initWeak(&location, self);
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  v6 = [mEMORY[0x1E69C8DE0] displayNameForExtension:extensionCopy];

  v7 = MEMORY[0x1E696AEC0];
  v8 = _WBSLocalizedString();
  v9 = [v7 stringWithFormat:v8, v6];

  v10 = MEMORY[0x1E69DC648];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__SFPasswordPickerServiceViewController__actionForPresentingPasswordManagerExtension___block_invoke;
  v14[3] = &unk_1E8492540;
  objc_copyWeak(&v16, &location);
  v11 = extensionCopy;
  v15 = v11;
  v12 = [v10 _actionWithTitle:v9 image:0 style:0 handler:v14 shouldDismissHandler:&__block_literal_global_28];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

void __86__SFPasswordPickerServiceViewController__actionForPresentingPasswordManagerExtension___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _presentCredentialListForExtension:*(a1 + 32)];
}

- (void)_presentCredentialListForExtension:(id)extension
{
  v27[1] = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke;
  aBlock[3] = &unk_1E8492590;
  aBlock[4] = self;
  v5 = extensionCopy;
  v26 = v5;
  v6 = _Block_copy(aBlock);
  v23 = 0u;
  v24 = 0u;
  objc_msgSend__hostAuditToken(self);
  v21 = 0u;
  v22 = 0u;
  HasEntitlement = WBSAuditTokenHasEntitlement();
  v8 = HasEntitlement;
  if (HasEntitlement && (remoteAppID = self->_remoteAppID) != 0)
  {
    applicationIdentifier = remoteAppID;
  }

  else
  {
    applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  }

  v11 = applicationIdentifier;
  if (self->_webViewURL)
  {
    v12 = objc_alloc(MEMORY[0x1E695A920]);
    absoluteString = [(NSURL *)self->_webViewURL absoluteString];
    v14 = [v12 initWithIdentifier:absoluteString type:1];
    v27[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v6[2](v6, v15, v11);
  }

  else
  {
    v16 = MEMORY[0x1E69C8E18];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_4;
    v17[3] = &unk_1E84925E0;
    v20 = v8;
    v17[4] = self;
    v19 = v6;
    v18 = v11;
    [v16 bestDomainForAppID:v18 completionHandler:v17];
  }
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_2;
  aBlock[3] = &unk_1E8492568;
  v6 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v8 = a3;
  v9 = _Block_copy(aBlock);
  [*(*(a1 + 32) + 1024) getPasskeyAssertionRequestParametersForApplicationIdentifier:v8 completionHandler:v9];
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 1136) isExplicitAutoFillMode])
  {
    v4 = [objc_alloc(MEMORY[0x1E695A980]) initForTextSelectingWithExtension:*(a1 + 40) serviceIdentifiers:*(a1 + 48)];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695A980]) initWithExtension:*(a1 + 40) serviceIdentifiers:*(a1 + 48) requestParameters:v3];
  }

  v5 = v4;
  [v4 setDelegate:*(a1 + 32)];
  v6 = [*(a1 + 48) firstObject];
  if ([v6 type] == 1)
  {
    v7 = MEMORY[0x1E695DFF8];
    v8 = [v6 identifier];
    v9 = [v7 URLWithString:v8];

    v10 = [v9 host];
    v11 = *(a1 + 32);
    v12 = *(v11 + 1016);
    *(v11 + 1016) = v10;
  }

  else
  {
    v13 = [v6 identifier];
    v14 = *(a1 + 32);
    v9 = *(v14 + 1016);
    *(v14 + 1016) = v13;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_3;
  v16[3] = &unk_1E848F9B0;
  v16[4] = *(a1 + 32);
  v17 = v5;
  v15 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_5;
  block[3] = &unk_1E84925B8;
  v11 = *(a1 + 56);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __76__SFPasswordPickerServiceViewController__presentCredentialListForExtension___block_invoke_5(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3;
    v5 = *(a1 + 56);
LABEL_3:
    v1 = [objc_alloc(MEMORY[0x1E695A920]) initWithIdentifier:v4 type:0];
    v11[0] = v1;
    v6 = 1;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    goto LABEL_10;
  }

  if (*(a1 + 64) == 1 && (v8 = *(a1 + 40), (v9 = *(v8 + 1088)) != 0))
  {
    v10 = [MEMORY[0x1E69C8E18] bestDomainForAutoFillFromDomains:v9 appID:*(v8 + 1064)];
    v5 = *(a1 + 56);
    if (v10)
    {
      v4 = v10;
      goto LABEL_3;
    }

    v6 = 0;
    v4 = 0;
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v5 = *(a1 + 56);
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_10:
  (*(v5 + 16))(v5, v7, *(a1 + 48));
  if (v6)
  {
  }
}

- (void)_fillCredential:(id)credential needsAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  credentialCopy = credential;
  if ([credentialCopy isExternal])
  {
    externalCredential = [credentialCopy externalCredential];
    objc_storeStrong(&self->_credentialIdentityToFill, externalCredential);
    owningExtensionState = [externalCredential owningExtensionState];
    providerBundleID = [owningExtensionState providerBundleID];

    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke;
    v12[3] = &unk_1E8492630;
    v11 = externalCredential;
    v13 = v11;
    selfCopy = self;
    [mEMORY[0x1E69C8DE0] getExtensionWithBundleID:providerBundleID completion:v12];
  }

  else
  {
    [(SFPasswordPickerServiceViewController *)self _sendCredentialToClient:credentialCopy needsAuthentication:authenticationCopy];
  }
}

void __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) type];
  if (v4 == 1)
  {
    v5 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:*(a1 + 32)];
    v12 = [objc_alloc(MEMORY[0x1E695A978]) initWithExtension:v3 credentialIdentity:v5];
    v13 = *(a1 + 40);
    v14 = *(v13 + 1000);
    *(v13 + 1000) = v12;

    [*(*(a1 + 40) + 1000) setDelegate:?];
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 32);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke_2;
    v18 = &unk_1E8492608;
    v19 = *(a1 + 40);
    v20 = v3;
    v6 = _Block_copy(&v15);
    v7 = *(a1 + 40);
    v8 = v7[128];
    v9 = [v7 applicationIdentifier];
    v10 = [v5 serviceIdentifier];
    v11 = [v5 credentialID];
    [v8 getExternalPasskeyRequestForApplicationIdentifier:v9 relyingPartyIdentifier:v10 credentialID:v11 completionHandler:v6];

LABEL_5:
  }
}

void __77__SFPasswordPickerServiceViewController__fillCredential_needsAuthentication___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695A978]) initWithExtension:*(a1 + 40) passkeyAssertionRequest:v6];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1000);
    *(v4 + 1000) = v3;

    [*(*(a1 + 32) + 1000) setDelegate:?];
  }

  else
  {
    [*(a1 + 32) _dismiss];
  }
}

- (void)_sendCredentialToClient:(id)client needsAuthentication:(BOOL)authentication
{
  authenticationCopy = authentication;
  clientCopy = client;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke;
  aBlock[3] = &unk_1E848F9B0;
  v7 = clientCopy;
  v14 = v7;
  selfCopy = self;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (authenticationCopy)
  {
    _context = [(SFPasswordPickerServiceViewController *)self _context];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126;
    v11[3] = &unk_1E8492658;
    v11[4] = self;
    v12 = v9;
    [_context authenticateForClient:self userInitiated:1 completion:v11];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

uint64_t __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) user];
    if ([v4 length])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v6 = v5;
    v7 = [*(a1 + 32) password];
    if ([v7 length])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    v10 = [*(a1 + 32) site];
    if ([v10 length])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v17 = 138543874;
    v18 = v6;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v12 = v11;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEFAULT, "Sending credential with non-empty username: %{public}@, non-empty password: %{public}@, non-empty site: %{public}@", &v17, 0x20u);
  }

  v15 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) user];
    objc_claimAutoreleasedReturnValue();
    [*(a1 + 32) site];
    objc_claimAutoreleasedReturnValue();
    __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_cold_1();
  }

  return [*(a1 + 40) _sendCredentialToClientAndDismiss:*(a1 + 32) providerBundleIdentifier:*MEMORY[0x1E69C8CC0]];
}

void __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126(uint64_t a1, char a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1D4644000, v8, OS_LOG_TYPE_DEFAULT, "Successfully authenticated App AutoFill", v10, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [v7 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126_cold_1();
    }

    [*(a1 + 32) _dismiss];
  }
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  inited = objc_initWeak(location, self);
  v10 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(inited, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
  }

  presentedViewController = [(SFPasswordPickerServiceViewController *)self presentedViewController];

  if (presentedViewController)
  {
    handlerCopy[2](handlerCopy, 1);
    goto LABEL_27;
  }

  v50 = 0u;
  v51 = 0u;
  v36 = contextCopy;
  objc_msgSend__hostAuditToken(self);
  v48 = 0u;
  v49 = 0u;
  HasEntitlement = WBSAuditTokenHasEntitlement();
  v13 = HasEntitlement;
  v15 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(HasEntitlement, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else if (!v13)
  {
    goto LABEL_10;
  }

  remoteAppID = self->_remoteAppID;
  if (remoteAppID)
  {
    applicationIdentifier = remoteAppID;
    goto LABEL_11;
  }

LABEL_10:
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
LABEL_11:
  v19 = applicationIdentifier;
  v35 = applicationIdentifier;
  v20 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(applicationIdentifier, v18);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
  }

  _isConfiguredForSystemAutoFill = [(SFPasswordPickerServiceViewController *)self _isConfiguredForSystemAutoFill];
  v22 = _isConfiguredForSystemAutoFill;
  v24 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isConfiguredForSystemAutoFill, v23);
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_19:
    isExplicitAutoFillMode = 0;
    goto LABEL_20;
  }

  [SFPasswordPickerServiceViewController _authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:];
  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_15:
  if ([(RTIDocumentTraits *)self->_systemAutoFillDocumentTraits autofillMode]== 1)
  {
    isExplicitAutoFillMode = [(RTIDocumentTraits *)self->_systemAutoFillDocumentTraits isExplicitAutoFillMode];
  }

  else
  {
    isExplicitAutoFillMode = 1;
  }

LABEL_20:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke;
  aBlock[3] = &unk_1E8492868;
  v43 = handlerCopy;
  aBlock[4] = self;
  v45 = v13;
  v26 = v19;
  v41 = v26;
  v46 = v22;
  v42 = contextCopy;
  v47 = isExplicitAutoFillMode;
  objc_copyWeak(&v44, location);
  v27 = _Block_copy(aBlock);
  if (v13)
  {
    v28 = self->_externallyVerifiedAssociatedDomains;
  }

  else
  {
    v28 = 0;
  }

  v29 = MEMORY[0x1E69C8E18];
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = &stru_1F4FE9E38;
  }

  webFrameIdentifier = self->_webFrameIdentifier;
  webViewURL = self->_webViewURL;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_9;
  v37[3] = &unk_1E84928E0;
  v33 = v26;
  v38 = v33;
  v39 = v27;
  v34 = v27;
  [v29 getCredentialsForAppWithAppID:v30 frameIdentifier:webFrameIdentifier externallyVerifiedAndApprovedSharedWebCredentialDomains:v28 websiteURL:webViewURL completionHandler:v37];

  objc_destroyWeak(&v44);
  contextCopy = v36;
LABEL_27:
  objc_destroyWeak(location);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v153 = *MEMORY[0x1E69E9840];
  v102 = a2;
  v103 = a3;
  v104 = a4;
  v7 = [MEMORY[0x1E69C8DB8] sharedFeatureManager];
  v105 = [v7 shouldAutoFillPasswordsFromKeychain];

  v8 = [MEMORY[0x1E69C8DE0] sharedManager];
  v106 = [v8 enabledExtensions];

  if ((v105 & 1) == 0 && ![v106 count])
  {
    v25 = [v106 safari_mapObjectsUsingBlock:&__block_literal_global_131];
    v26 = [v106 count];
    if (v26 <= 1)
    {
      if (!v26)
      {
        v32 = _WBSLocalizedString();
        v33 = 0;
        v78 = 1;
LABEL_76:
        v80 = MEMORY[0x1E69DC650];
        v81 = _WBSLocalizedString();
        v82 = [v80 alertControllerWithTitle:v81 message:v32 imageNamed:@"alert-passwords" preferredStyle:1];

        if (v78)
        {
          v83 = MEMORY[0x1E69DC648];
          v84 = _WBSLocalizedString();
          v149[0] = MEMORY[0x1E69E9820];
          v149[1] = 3221225472;
          v149[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_152;
          v149[3] = &unk_1E84926A0;
          v149[4] = *(a1 + 32);
          v85 = [v83 actionWithTitle:v84 style:0 handler:v149];
          [v82 addAction:v85];

          v86 = MEMORY[0x1E69DC648];
          v87 = _WBSLocalizedString();
          v148[0] = MEMORY[0x1E69E9820];
          v148[1] = 3221225472;
          v148[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_3;
          v148[3] = &unk_1E84926A0;
          v148[4] = *(a1 + 32);
          v88 = [v86 actionWithTitle:v87 style:0 handler:v148];
          [v82 addAction:v88];
        }

        else
        {
          if (v33)
          {
            v89 = MEMORY[0x1E69DC648];
            v90 = MEMORY[0x1E696AEC0];
            v91 = _WBSLocalizedString();
            v92 = [v25 objectAtIndexedSubscript:0];
            v93 = [v90 stringWithFormat:v91, v92];
            v146[0] = MEMORY[0x1E69E9820];
            v146[1] = 3221225472;
            v146[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4;
            v146[3] = &unk_1E84926A0;
            v147 = v106;
            v94 = [v89 actionWithTitle:v93 style:0 handler:v146];
            [v82 addAction:v94];
          }

          v95 = MEMORY[0x1E69DC648];
          v96 = _WBSLocalizedString();
          v145[0] = MEMORY[0x1E69E9820];
          v145[1] = 3221225472;
          v145[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_164;
          v145[3] = &unk_1E84926A0;
          v145[4] = *(a1 + 32);
          v97 = [v95 actionWithTitle:v96 style:0 handler:v145];
          [v82 addAction:v97];
        }

        v98 = [*(a1 + 32) presentViewController:v82 animated:1 completion:0];
        v100 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v98, v99);
        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D4644000, v100, OS_LOG_TYPE_INFO, "There is no available CPE that supports explicit AutoFill.", buf, 2u);
        }

        (*(*(a1 + 56) + 16))();

LABEL_84:
        goto LABEL_68;
      }

      if (v26 == 1)
      {
        v28 = MEMORY[0x1E696AEC0];
        v29 = _WBSLocalizedString();
        v30 = [v25 objectAtIndexedSubscript:0];
        v31 = [v25 objectAtIndexedSubscript:0];
        v32 = [v28 stringWithFormat:v29, v30, v31];
        v33 = 1;
LABEL_75:

        v78 = 0;
        goto LABEL_76;
      }

LABEL_69:
      v77 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v26, v27);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
      {
        __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_cold_1();
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_84;
    }

    if (v26 == 2)
    {
      v79 = MEMORY[0x1E696AEC0];
      v29 = _WBSLocalizedString();
      v30 = [v25 objectAtIndexedSubscript:0];
      v31 = [v25 objectAtIndexedSubscript:1];
      v32 = [v79 stringWithFormat:v29, v30, v31];
    }

    else
    {
      if (v26 != 3)
      {
        goto LABEL_69;
      }

      v37 = MEMORY[0x1E696AEC0];
      v29 = _WBSLocalizedString();
      v30 = [v25 objectAtIndexedSubscript:0];
      v31 = [v25 objectAtIndexedSubscript:1];
      v38 = [v25 objectAtIndexedSubscript:2];
      v32 = [v37 stringWithFormat:v29, v30, v31, v38];
    }

    v33 = 0;
    goto LABEL_75;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165;
  aBlock[3] = &unk_1E8492788;
  v142 = *(a1 + 72);
  aBlock[4] = *(a1 + 32);
  v9 = v102;
  v137 = v9;
  v138 = *(a1 + 40);
  v143 = *(a1 + 73);
  v139 = v104;
  v10 = v103;
  v140 = v10;
  v141 = *(a1 + 48);
  v101 = _Block_copy(aBlock);
  v11 = (([v106 count] != 0) & v105) == 0 && objc_msgSend(v106, "count") < 2;
  if (*(a1 + 74) == 1)
  {
    v12 = [v106 safari_filterObjectsUsingBlock:&__block_literal_global_217];
    v13 = [v12 count];

    v14 = v13 != 0;
    v11 = v13 + v105 == 1;
  }

  else
  {
    v14 = 0;
  }

  if (*(*(a1 + 32) + 1040) == 1)
  {
    if ([v106 count] != 0 && !v11)
    {
LABEL_12:
      if (*(a1 + 74) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = MEMORY[0x1E69DC650];
      }

      else
      {
        v21 = [v9 count];
        v17 = MEMORY[0x1E69DC650];
        if (v21)
        {
          v16 = _WBSLocalizedString();
          v15 = 1;
        }

        else
        {
          v15 = 0;
          v16 = 0;
        }
      }

      v109 = [v17 alertControllerWithTitle:v16 message:0 imageNamed:@"alert-passwords" preferredStyle:_SFDeviceAlertStyle()];
      if (v15)
      {

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        obj = v9;
        v39 = [obj countByEnumeratingWithState:&v126 objects:v152 count:16];
        if (v39)
        {
          v108 = *v127;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v127 != v108)
              {
                objc_enumerationMutation(obj);
              }

              v41 = *(*(&v126 + 1) + 8 * i);
              v42 = MEMORY[0x1E696AEC0];
              v43 = _WBSLocalizedString();
              v44 = [v41 site];
              v45 = [v42 stringWithFormat:v43, v44];

              if ([v41 isExternal])
              {
                v46 = [v41 externalCredential];
                v47 = [MEMORY[0x1E69C8E18] titleForCredentialIdentity:v46 formURL:0];

                v45 = v47;
              }

              v48 = [v41 user];
              v49 = [v41 creationDate];
              v50 = [SFCredentialDisplayData descriptionForPasswordWithUser:v48 creationDate:v49];

              v51 = v10;
              if (!v10)
              {
                v4 = [*(*(a1 + 32) + 1048) host];
                v51 = v4;
              }

              [v41 setRequestedHost:v51];
              if (!v10)
              {
              }

              v125[0] = MEMORY[0x1E69E9820];
              v125[1] = 3221225472;
              v125[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4_228;
              v125[3] = &unk_1E84927F8;
              v125[4] = *(a1 + 32);
              v125[5] = v41;
              v52 = [SFMultipleLineAlertAction actionWithTitle:v50 detail:v45 handler:v125];
              [v109 addAction:v52];
            }

            v39 = [obj countByEnumeratingWithState:&v126 objects:v152 count:16];
          }

          while (v39);
        }
      }

      v53 = [MEMORY[0x1E695DF70] array];
      v54 = _WBSLocalizedString();
      if ([v106 count])
      {
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v55 = v106;
        v56 = [v55 countByEnumeratingWithState:&v121 objects:v151 count:16];
        if (v56)
        {
          v57 = *v122;
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (*v122 != v57)
              {
                objc_enumerationMutation(v55);
              }

              v59 = *(*(&v121 + 1) + 8 * j);
              v60 = [MEMORY[0x1E69C8DE0] sharedManager];
              v61 = [v60 extensionSupportsTextInsertion:v59];

              if (v61 & 1 | ((*(a1 + 74) & 1) == 0))
              {
                v62 = [*(a1 + 32) _actionForPresentingPasswordManagerExtension:v59];
                [v53 addObject:v62];
              }
            }

            v56 = [v55 countByEnumeratingWithState:&v121 objects:v151 count:16];
          }

          while (v56);
        }

        v63 = _WBSLocalizedString();

        v54 = v63;
      }

      if (v105)
      {
        v64 = MEMORY[0x1E69DC648];
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5_239;
        v119[3] = &unk_1E8492820;
        v120 = v101;
        v65 = [v64 actionWithTitle:v54 style:0 handler:v119];
        [v53 addObject:v65];
      }

      [v53 sortUsingComparator:&__block_literal_global_242];
      v118 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      v66 = v53;
      v67 = [v66 countByEnumeratingWithState:&v115 objects:v150 count:16];
      if (v67)
      {
        v68 = *v116;
        do
        {
          for (k = 0; k != v67; ++k)
          {
            if (*v116 != v68)
            {
              objc_enumerationMutation(v66);
            }

            [v109 addAction:*(*(&v115 + 1) + 8 * k)];
          }

          v67 = [v66 countByEnumeratingWithState:&v115 objects:v150 count:16];
        }

        while (v67);
      }

      v70 = MEMORY[0x1E69DC648];
      v71 = _WBSLocalizedString();
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_7;
      v114[3] = &unk_1E84926A0;
      v114[4] = *(a1 + 32);
      v72 = [v70 actionWithTitle:v71 style:1 handler:v114];
      [v109 addAction:v72];

      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_8;
      v111[3] = &unk_1E84927D0;
      objc_copyWeak(&v113, (a1 + 64));
      v73 = v109;
      v112 = v73;
      v74 = _Block_copy(v111);
      v75 = *(a1 + 32);
      v76 = *(v75 + 1120);
      *(v75 + 1120) = v74;

      (*(*(a1 + 56) + 16))();
      objc_destroyWeak(&v113);

      goto LABEL_67;
    }
  }

  else if (!v11)
  {
    goto LABEL_12;
  }

  if (*(a1 + 74) != 1)
  {
    if ([v106 count])
    {
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_3_219;
      v130[3] = &unk_1E84927D0;
      objc_copyWeak(&v132, (a1 + 64));
      v131 = v106;
      v22 = _Block_copy(v130);
      v23 = *(a1 + 32);
      v24 = *(v23 + 1120);
      *(v23 + 1120) = v22;

      (*(*(a1 + 56) + 16))();
      objc_destroyWeak(&v132);
      goto LABEL_67;
    }

LABEL_26:
    v34 = _Block_copy(v101);
    v35 = *(a1 + 32);
    v36 = *(v35 + 1120);
    *(v35 + 1120) = v34;

    (*(*(a1 + 56) + 16))();
    goto LABEL_67;
  }

  if (!v14)
  {
    goto LABEL_26;
  }

  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_218;
  v133[3] = &unk_1E84927D0;
  objc_copyWeak(&v135, (a1 + 64));
  v134 = v106;
  v18 = _Block_copy(v133);
  v19 = *(a1 + 32);
  v20 = *(v19 + 1120);
  *(v19 + 1120) = v18;

  (*(*(a1 + 56) + 16))();
  objc_destroyWeak(&v135);
LABEL_67:

LABEL_68:
}

id __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [v2 sf_bundleIdentifierForContainingApp];
  v5 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];
  v6 = [v5 localizedName];

  return v6;
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_152(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_154;
  v2[3] = &unk_1E84906D0;
  v2[4] = *(a1 + 32);
  return [MEMORY[0x1E695A948] openCredentialProviderAppSettingsWithCompletionHandler:v2];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) objectAtIndexedSubscript:0];
  v2 = [v1 sf_bundleIdentifierForContainingApp];

  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v4 = objc_alloc_init(MEMORY[0x1E69636B8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5;
  v6[3] = &unk_1E84926C8;
  v5 = v2;
  v7 = v5;
  [v3 openApplicationWithBundleIdentifier:v5 configuration:v4 completionHandler:v6];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5_cold_1(result, v4);
    }
  }
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165(uint64_t a1)
{
  v101 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v3[48] == 1 && (v4 = v2[133]) != 0)
  {
    v90 = 0;
    v73 = [v4 safari_bundleIdentifierFromApplicationIdentifier:&v90];
    v5 = v90;
    v7 = v5;
    if (!v73)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v5, v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [v7 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_1();
      }
    }
  }

  else
  {
    v73 = [v2 _hostApplicationBundleIdentifier];
  }

  v9 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v73];
  v72 = [v9 localizedNameForContext:0];

  if (![v72 length])
  {
    v11 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(0, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_2();
    }
  }

  v68 = [*(*v3 + 1048) safari_originalDataAsString];
  v69 = [*(a1 + 40) safari_mapObjectsUsingBlock:&__block_literal_global_170_0];
  v74 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 80) != 1)
  {
    goto LABEL_19;
  }

  v12 = *(*v3 + 1080);
  v13 = *(*v3 + 1072);
  if (!v12)
  {
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_19:
    v12 = v72;
    if (!v72)
    {
LABEL_21:
      v14 = *v3;
      goto LABEL_22;
    }

LABEL_20:
    [v74 addObject:v12];
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_17:
  [v74 addObject:*(*v3 + 1072)];
  v14 = *v3;
  v12 = *(*v3 + 1080);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_22:
  if (v14)
  {
    objc_msgSend__hostAuditToken(v14);
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v15 = *(a1 + 48);
  *buf = v88;
  *&buf[16] = v89;
  if (WBSAuditTokenHasEntitlement())
  {

LABEL_27:
    v16 = 1;
LABEL_37:
    v24 = *(a1 + 48);
    v86 = 0;
    v87 = 0;
    [MEMORY[0x1E69C8990] getHintStringsForAppID:v24 appNames:v74 matchedSites:v69 urlString:v68 outServiceNameHintStrings:&v87 outDomainHintStrings:&v86];
    v70 = v87;
    v71 = v86;
    v26 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v71, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v64 = *(a1 + 32);
      v65 = *(a1 + 48);
      v66 = [v69 count];
      *buf = 134219522;
      *&buf[4] = v64;
      *&buf[12] = 2112;
      *&buf[14] = v65;
      *&buf[22] = 2112;
      *&buf[24] = v74;
      v93 = 2048;
      v94 = v66;
      v95 = 2112;
      v96 = v68;
      v97 = 2112;
      v98 = v70;
      v99 = 2112;
      v100 = v71;
      _os_log_debug_impl(&dword_1D4644000, v26, OS_LOG_TYPE_DEBUG, "Password view controller %p requested hint strings for app ID %@, appNames %@, number of matchedSites %lu, urlString %@; got service name hint strings: %@ and domain hint strings: %@", buf, 0x48u);
    }

    goto LABEL_40;
  }

  *buf = v88;
  *&buf[16] = v89;
  if (WBSAuditTokenHasEntitlement())
  {
    v91 = 0;
    v17 = [MEMORY[0x1E6963620] bundleRecordWithApplicationIdentifier:v15 error:&v91];
    v18 = v91;
    v19 = v18;
    if (v17)
    {
      v20 = [v17 entitlements];
      v21 = [v20 objectForKey:@"com.apple.developer.web-browser" ofClass:objc_opt_class()];
      v22 = [v21 BOOLValue];

      if (v22)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  if (!*(*v3 + 1048) || [*(a1 + 40) count])
  {
    v16 = 0;
    goto LABEL_37;
  }

  v63 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(0, v23);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
  {
    __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_3();
  }

  v16 = 0;
  v70 = 0;
  v71 = 0;
LABEL_40:
  v27 = objc_alloc_init(SFAccountPickerConfiguration);
  [(SFAccountPickerConfiguration *)v27 setMinimumNumberOfCredentialsToShowLikelyMatchesSection:10];
  [(SFAccountPickerConfiguration *)v27 setServiceNameHintStrings:v70];
  [(SFAccountPickerConfiguration *)v27 setDomainHintStrings:v71];
  if (v16)
  {
    [(SFAccountPickerConfiguration *)v27 setCurrentWebFrameIdentifierForAutoFillPasskeys:*(*v3 + 1104)];
  }

  v67 = [v74 firstObject];
  [(SFAccountPickerConfiguration *)v27 setAddPasswordSuggestedLabel:?];
  if (*(a1 + 81) == 1 && [*(*v3 + 1136) isExplicitAutoFillMode])
  {
    goto LABEL_44;
  }

  v30 = *(*v3 + 1048);
  if (v30)
  {
    v31 = [v30 safari_userVisibleString];
    v29 = [v31 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

    v32 = MEMORY[0x1E696AEC0];
    v33 = _WBSLocalizedString();
    v34 = [v32 stringWithFormat:v33, v29];
    [(SFAccountPickerConfiguration *)v27 setPrompt:v34];

    v35 = MEMORY[0x1E696AEC0];
    v36 = _WBSLocalizedString();
    v37 = [v35 stringWithFormat:v36, v29];
    [(SFAccountPickerConfiguration *)v27 setPromptWhenPasskeysAreAvailable:v37];
  }

  else
  {
    if (![v67 length])
    {
LABEL_44:
      v28 = _WBSLocalizedString();
      [(SFAccountPickerConfiguration *)v27 setPrompt:v28];

      v29 = _WBSLocalizedString();
      [(SFAccountPickerConfiguration *)v27 setPromptWhenPasskeysAreAvailable:v29];
      goto LABEL_50;
    }

    v38 = MEMORY[0x1E696AEC0];
    v39 = _WBSLocalizedString();
    v40 = [v38 stringWithFormat:v39, v67];
    [(SFAccountPickerConfiguration *)v27 setPrompt:v40];

    v41 = MEMORY[0x1E696AEC0];
    v29 = _WBSLocalizedString();
    v36 = [v41 stringWithFormat:v29, v67];
    [(SFAccountPickerConfiguration *)v27 setPromptWhenPasskeysAreAvailable:v36];
  }

LABEL_50:
  [(SFAccountPickerConfiguration *)v27 setShouldEnableAddingNewPasswordsIfPossible:1];
  [(SFAccountPickerConfiguration *)v27 setShouldShowAutoFillPasskeys:1];
  v42 = *v3;
  v43 = v16 ^ 1;
  if (!*(*v3 + 1104))
  {
    v43 = 1;
  }

  if ((v43 & 1) != 0 || ([(SFAccountPickerConfiguration *)v27 setShouldShowPasskeysInAccountPicker:1], (v42 = *v3) != 0))
  {
    objc_msgSend__hostAuditToken(v42);
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  *buf = v84;
  *&buf[16] = v85;
  [(SFAccountPickerConfiguration *)v27 setConnectedAppAuditToken:buf];
  v44 = [&unk_1F5023E60 containsObject:*(a1 + 48)];
  if (*(*v3 + 1048))
  {
    v45 = [*(*v3 + 1048) host];
    v46 = [*(*v3 + 1048) safari_userVisibleString];
    v47 = [v46 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

    [(SFAccountPickerConfiguration *)v27 setAddPasswordSuggestedDomain:v47];
    v48 = *(a1 + 56);
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_207;
    v81[3] = &unk_1E8492710;
    v49 = v45;
    v82 = v49;
    v50 = v47;
    v83 = v50;
    if ([v48 safari_containsObjectPassingTest:v81])
    {
      [(SFAccountPickerConfiguration *)v27 setBundleIDForFallbackIcon:v73];
    }
  }

  else if ((v44 & 1) == 0)
  {
    [(SFAccountPickerConfiguration *)v27 setBundleIDForFallbackIcon:v73];
    if ([*(a1 + 64) length])
    {
      [(SFAccountPickerConfiguration *)v27 setAddPasswordSuggestedDomain:*(a1 + 64)];
    }
  }

  if (*(a1 + 81) == 1)
  {
    if ([*(*(a1 + 32) + 1136) autofillMode] == 1)
    {
      v51 = [*(*v3 + 1136) isExplicitAutoFillMode];
    }

    else
    {
      v51 = 1;
    }

    [(SFAccountPickerConfiguration *)v27 setIsForFillingIndividualAccountFields:v51];
    [(SFAccountPickerConfiguration *)v27 setShouldShowReceivedVerificationCodes:1];
    [(SFAccountPickerConfiguration *)v27 setWebsiteURLForReceivedVerificationCodes:*(*v3 + 1048)];
  }

  if ([objc_opt_class() _shouldRestoreStateForAutoFillForAppID:*(a1 + 48)])
  {
    [objc_opt_class() _restoreStateForAutoFillToAccountPickerConfiguration:v27 isForFillingIndividualAccountFields:{-[SFAccountPickerConfiguration isForFillingIndividualAccountFields](v27, "isForFillingIndividualAccountFields")}];
  }

  else
  {
    [objc_opt_class() _rememberStateForAutoFillWithSearchQuery:0 savedAccount:0];
  }

  [(SFAccountPickerConfiguration *)v27 setAppID:*(a1 + 48)];
  [(SFAccountPickerConfiguration *)v27 setIsConnectedAppAWebBrowser:v16];
  [(SFAccountPickerConfiguration *)v27 setSavedAccountContext:*(a1 + 72)];
  v52 = [SFAccountPickerViewController alloc];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_210;
  v77[3] = &unk_1E8492738;
  v53 = v27;
  v54 = *(a1 + 32);
  v78 = v53;
  v79 = v54;
  v80 = *(a1 + 64);
  v55 = [(SFAccountPickerViewController *)v52 initWithConfiguration:v53 completionHandler:v77];
  v56 = *(*v3 + 1032);
  *(*v3 + 1032) = v55;

  [*(*v3 + 1032) setModalPresentationStyle:2];
  v57 = *v3;
  v58 = [*(*v3 + 1032) presentationController];
  [v58 setDelegate:v57];

  v59 = [*(*v3 + 1032) setSystemAutoFillDelegate:?];
  v61 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v59, v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_4();
  }

  v62 = *(a1 + 32);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_212;
  v75[3] = &unk_1E8492760;
  v75[4] = v62;
  v76 = *(a1 + 48);
  [v62 _authenticateToViewOtherPasswordsWithCompletion:v75];
}

id __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_167(uint64_t a1, void *a2)
{
  v2 = [a2 site];

  return v2;
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = [a2 domain];
  if ([v3 isEqualToString:*(a1 + 32)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:*(a1 + 40)];
  }

  return v4;
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_210(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v40 = a3;
  if (([*(a1 + 32) isForFillingIndividualAccountFields] & 1) == 0)
  {
    v6 = [v5 firstObject];
    v8 = v6;
    if (v6)
    {
      if (v40)
      {
        v38 = v40;
      }

      else
      {
        v38 = [v6 password];
      }

      v37 = v5;
      v39 = v8;
      v10 = objc_alloc(MEMORY[0x1E69C8E10]);
      v11 = [v8 user];
      v12 = [v8 userVisibleDomain];
      v13 = [v12 safari_simplifiedSiteNameForCredentialLookup];
      v14 = [v39 creationDate];
      v15 = [v39 customTitle];
      v16 = [v39 sharedGroupName];
      v17 = *(a1 + 48);
      v18 = v17;
      if (!v17)
      {
        v18 = [*(*(a1 + 40) + 1048) host];
      }

      v19 = [v10 initWithUser:v11 password:v38 site:v13 creationDate:v14 customTitle:v15 groupName:v16 requestedHost:v18];
      if (!v17)
      {
      }

      v22 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v20, v21);
      v5 = v37;
      v8 = v39;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v19 user];
        if ([v36 length])
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v24 = v23;
        v25 = [v19 password];
        if ([v25 length])
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v27 = v26;
        v28 = [v19 site];
        if ([v28 length])
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        *buf = 138543874;
        v42 = v24;
        v43 = 2114;
        v44 = v27;
        v45 = 2114;
        v46 = v29;
        v30 = v29;
        _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_DEFAULT, "Sending credential with non-empty username: %{public}@, non-empty password: %{public}@, non-empty site: %{public}@", buf, 0x20u);

        v8 = v39;
      }

      v33 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        [v19 user];
        objc_claimAutoreleasedReturnValue();
        [v19 site];
        objc_claimAutoreleasedReturnValue();
        __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_cold_1();
      }

      v34 = objc_opt_class();
      v35 = [*(*(a1 + 40) + 1032) searchQuery];
      [v34 _rememberStateForAutoFillWithSearchQuery:v35 savedAccount:v8];

      [*(a1 + 40) _sendCredentialToClientAndDismiss:v19 providerBundleIdentifier:*MEMORY[0x1E69C8CC0]];
    }

    else
    {
      v9 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(0, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D4644000, v9, OS_LOG_TYPE_DEFAULT, "Not sending a credential because we didn't receive one from the password picker", buf, 2u);
      }

      [objc_opt_class() _rememberStateForAutoFillWithSearchQuery:0 savedAccount:0];
      [*(a1 + 40) _dismiss];
    }
  }
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_212(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v7 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_212_cold_1();
  }

  if (v3)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      v12 = objc_opt_class();
      v13 = *(*(a1 + 32) + 1032);
      v14 = 134218498;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_debug_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEBUG, "View controller %p presenting password view controller %{public}@ <%p>", &v14, 0x20u);
    }

    [*(*(a1 + 32) + 1032) setAuthenticatedContext:v5];
    [*(a1 + 32) presentViewController:*(*(a1 + 32) + 1032) animated:1 completion:0];
    objc_storeStrong(&lastUsedAppIDForAutoFill, *(a1 + 40));
  }

  else
  {
    [*(a1 + 32) _dismiss];
  }
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_214(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69C8DE0] sharedManager];
  v4 = [v3 extensionSupportsTextInsertion:v2];

  return v4;
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_2_218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) firstObject];
  [WeakRetained _presentCredentialListForExtension:v2];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_3_219(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) firstObject];
  [WeakRetained _presentCredentialListForExtension:v2];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_4_228(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = +[_SFManagedFeatureObserver sharedObserver];
  [v1 _fillCredential:v2 needsAuthentication:{objc_msgSend(v3, "authenticationRequiredToAutoFill")}];
}

uint64_t __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];
  v7 = [v5 localizedCaseInsensitiveCompare:v6];

  return v7;
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69C8E18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_10;
  v8[3] = &unk_1E84928B8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 bestDomainAndAllApprovedDatabaseEntriesForAppID:v5 completionHandler:v8];
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_11;
  v9[3] = &unk_1E8492890;
  v13 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

- (void)_sendCredentialToClientAndDismiss:(id)dismiss providerBundleIdentifier:(id)identifier
{
  v26[4] = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  identifierCopy = identifier;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  v26[0] = 0;
  v9 = [applicationIdentifier safari_bundleIdentifierFromApplicationIdentifier:v26];
  v10 = v26[0];

  if (v9)
  {
    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
    user = [dismissCopy user];
    requestedHost = [dismissCopy requestedHost];
    [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy didFillCredentialForUsername:user forHost:requestedHost fromProviderWithBundleIdentifier:identifierCopy inAppWithBundleIdentifier:v9 externalProviderConditionalRegistrationRequester:self->_conditionalRegistrationRequester];
  }

  else
  {
    user = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v11, v12);
    if (os_log_type_enabled(user, OS_LOG_TYPE_ERROR))
    {
      [(SFPasswordServiceViewController *)self applicationIdentifier];
      objc_claimAutoreleasedReturnValue();
      [v10 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      [SFPasswordPickerServiceViewController _sendCredentialToClientAndDismiss:providerBundleIdentifier:];
    }
  }

  objc_msgSend__hostAuditToken(self);
  HasEntitlement = WBSAuditTokenHasEntitlement();
  v17 = HasEntitlement;
  v19 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(HasEntitlement, v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    [SFPasswordPickerServiceViewController _sendCredentialToClientAndDismiss:providerBundleIdentifier:];
  }

  if (v17)
  {
    v22 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v22, OS_LOG_TYPE_INFO, "Dismissing password picker service view controller after sending credential directly", buf, 2u);
    }

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy selectedCredential:dismissCopy];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke;
    v24[3] = &unk_1E8490658;
    v24[4] = self;
    [MEMORY[0x1E69D9578] sendAutofillCredentialCandidate:dismissCopy completionHandler:v24];
  }
}

void __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke_2;
  block[3] = &unk_1E8490658;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __100__SFPasswordPickerServiceViewController__sendCredentialToClientAndDismiss_providerBundleIdentifier___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Dismissing password picker service view controller after sending credential via TextInput", v5, 2u);
  }

  return [*(a1 + 32) _dismiss];
}

- (void)setWebViewURL:(id)l
{
  lCopy = l;
  v7 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(lCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setWebViewURL:];
  }

  scheme = [lCopy scheme];
  lowercaseString = [scheme lowercaseString];

  v10 = [MEMORY[0x1E695DFD8] setWithObjects:{@"http", @"https", 0}];
  if ([lowercaseString length] && (objc_msgSend(v10, "containsObject:", lowercaseString) & 1) != 0)
  {
    objc_storeStrong(&self->_webViewURL, l);
  }
}

- (void)setRemoteAppID:(id)d
{
  dCopy = d;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(dCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setRemoteAppID:];
  }

  v7 = [dCopy copy];
  remoteAppID = self->_remoteAppID;
  self->_remoteAppID = v7;
}

- (void)setRemoteLocalizedAppName:(id)name
{
  nameCopy = name;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(nameCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setRemoteLocalizedAppName:];
  }

  v7 = [nameCopy copy];
  remoteLocalizedAppName = self->_remoteLocalizedAppName;
  self->_remoteLocalizedAppName = v7;
}

- (void)setRemoteUnlocalizedAppName:(id)name
{
  nameCopy = name;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(nameCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setRemoteUnlocalizedAppName:];
  }

  v7 = [nameCopy copy];
  remoteUnlocalizedAppName = self->_remoteUnlocalizedAppName;
  self->_remoteUnlocalizedAppName = v7;
}

- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:(id)domains
{
  domainsCopy = domains;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(domainsCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:];
  }

  v7 = [domainsCopy copy];
  externallyVerifiedAssociatedDomains = self->_externallyVerifiedAssociatedDomains;
  self->_externallyVerifiedAssociatedDomains = v7;
}

- (void)setAuthenticationGracePeriod:(double)period
{
  v5 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setAuthenticationGracePeriod:];
  }

  self->_authenticationGracePeriod = period;
}

- (void)setPageID:(id)d frameID:(id)iD credentialType:(id)type
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(typeCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134218754;
    selfCopy = self;
    v17 = 2112;
    v18 = dCopy;
    v19 = 2112;
    v20 = iDCopy;
    v21 = 2112;
    v22 = typeCopy;
    _os_log_debug_impl(&dword_1D4644000, v12, OS_LOG_TYPE_DEBUG, "View controller %p setPageID: %@ frameID: %@ credentialType: %@", &v15, 0x2Au);
    if (!dCopy)
    {
      goto LABEL_5;
    }
  }

  else if (!dCopy)
  {
    goto LABEL_5;
  }

  if (iDCopy)
  {
    v13 = [objc_alloc(MEMORY[0x1E69C88A0]) initWithPageID:dCopy frameID:iDCopy];
    webFrameIdentifier = self->_webFrameIdentifier;
    self->_webFrameIdentifier = v13;

    objc_storeStrong(&self->_credentialType, type);
  }

LABEL_5:
}

- (void)setSystemAutoFillDocumentTraits:(id)traits
{
  traitsCopy = traits;
  v6 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(traitsCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SFPasswordPickerServiceViewController setSystemAutoFillDocumentTraits:];
  }

  v7 = [traitsCopy copy];
  systemAutoFillDocumentTraits = self->_systemAutoFillDocumentTraits;
  self->_systemAutoFillDocumentTraits = v7;
}

- (BOOL)_isConfiguredForSystemAutoFill
{
  objc_msgSend__hostAuditToken(self, a2);
  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (HasEntitlement)
  {
    LOBYTE(HasEntitlement) = self->_systemAutoFillDocumentTraits != 0;
  }

  return HasEntitlement;
}

- (void)credentialListViewController:(id)controller didFinishWithCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __105__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithCredential_completion___block_invoke;
  v24 = &unk_1E8492908;
  v11 = completionCopy;
  v27 = v11;
  v12 = credentialCopy;
  v25 = v12;
  selfCopy = self;
  [controllerCopy dismissViewControllerAnimated:1 completion:&v21];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E69C8E10]);
    user = [v12 user];
    password = [v12 password];
    date = [MEMORY[0x1E695DF00] date];
    v17 = [v13 initWithUser:user password:password site:&stru_1F4FE9E38 creationDate:date customTitle:0 groupName:0 requestedHost:{self->_hostForCredentialList, v21, v22, v23, v24}];

    extension = [controllerCopy extension];
    sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];
    [(SFPasswordPickerServiceViewController *)self _sendCredentialToClientAndDismiss:v17 providerBundleIdentifier:sf_bundleIdentifierForContainingApp];

    credentialIdentityToFill = self->_credentialIdentityToFill;
    self->_credentialIdentityToFill = 0;
  }
}

void *__105__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithCredential_completion___block_invoke(void *a1)
{
  result = (*(a1[6] + 16))();
  if (!a1[4])
  {
    v3 = a1[5];

    return [v3 _dismiss];
  }

  return result;
}

- (void)credentialListViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  relyingParty = [credentialCopy relyingParty];
  authenticatorData = [credentialCopy authenticatorData];
  signature = [credentialCopy signature];
  userHandle = [credentialCopy userHandle];
  credentialID = [credentialCopy credentialID];
  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:applicationIdentifier relyingPartyIdentifier:relyingParty authenticatorData:authenticatorData signature:signature userHandle:userHandle credentialID:credentialID];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __121__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke;
  v19[3] = &unk_1E84904F8;
  v17 = completionCopy;
  v19[4] = self;
  v20 = v17;
  [controllerCopy dismissViewControllerAnimated:1 completion:v19];
}

uint64_t __121__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithPasskeyAssertionCredential_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _dismiss];
}

- (void)credentialListViewController:(id)controller didFinishWithText:(id)text completion:(id)completion
{
  textCopy = text;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithText_completion___block_invoke;
  v15[3] = &unk_1E8492908;
  v10 = completionCopy;
  v18 = v10;
  v11 = textCopy;
  v16 = v11;
  selfCopy = self;
  [controller dismissViewControllerAnimated:1 completion:v15];
  if ([v11 length])
  {
    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy fillText:v11];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(0, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController credentialListViewController:didFinishWithText:completion:];
    }
  }
}

void *__99__SFPasswordPickerServiceViewController_credentialListViewController_didFinishWithText_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  result = [*(a1 + 32) length];
  if (!result)
  {
    v3 = *(a1 + 40);

    return [v3 _dismiss];
  }

  return result;
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;

  presentingViewController = [controllerCopy presentingViewController];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke;
  aBlock[3] = &unk_1E8492908;
  v14 = completionCopy;
  v40 = v14;
  v15 = credentialCopy;
  v38 = v15;
  selfCopy = self;
  v35 = _Block_copy(aBlock);
  [controllerCopy dismissViewControllerAnimated:1 completion:v35];
  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x1E69C8E10]);
    user = [v15 user];
    password = [v15 password];
    date = [MEMORY[0x1E695DF00] date];
    serviceIdentifier = [(SFCredentialIdentity *)self->_credentialIdentityToFill serviceIdentifier];
    v34 = [v16 initWithUser:user password:password site:&stru_1F4FE9E38 creationDate:date customTitle:0 groupName:0 requestedHost:serviceIdentifier];

    v21 = v34;
    if (presentingViewController)
    {
      authenticationRequiredToAutoFill = 0;
    }

    else
    {
      user = +[_SFManagedFeatureObserver sharedObserver];
      authenticationRequiredToAutoFill = [user authenticationRequiredToAutoFill];
    }

    [(SFPasswordPickerServiceViewController *)self _sendCredentialToClient:v34 needsAuthentication:authenticationRequiredToAutoFill];
    if (!presentingViewController)
    {
    }

    applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
    v36 = 0;
    v33 = [applicationIdentifier safari_bundleIdentifierFromApplicationIdentifier:&v36];
    v24 = v36;

    if (v24)
    {
      user2 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v25, v26);
      if (os_log_type_enabled(user2, OS_LOG_TYPE_ERROR))
      {
        [v24 safari_privacyPreservingDescription];
        objc_claimAutoreleasedReturnValue();
        __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_1();
      }
    }

    else
    {
      authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
      user2 = [v15 user];
      site = [(SFCredentialIdentity *)self->_credentialIdentityToFill site];
      extension = [controllerCopy extension];
      sf_bundleIdentifierForContainingApp = [extension sf_bundleIdentifierForContainingApp];
      [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy didFillCredentialForUsername:user2 forHost:site fromProviderWithBundleIdentifier:sf_bundleIdentifierForContainingApp inAppWithBundleIdentifier:v33 externalProviderConditionalRegistrationRequester:self->_conditionalRegistrationRequester];

      v21 = v34;
    }

    credentialIdentityToFill = self->_credentialIdentityToFill;
    self->_credentialIdentityToFill = 0;
  }
}

void *__121__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke(void *a1)
{
  result = (*(a1[6] + 16))();
  if (!a1[4])
  {
    v3 = a1[5];

    return [v3 _dismiss];
  }

  return result;
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  completionCopy = completion;
  externalCredentialViewController = self->_externalCredentialViewController;
  self->_externalCredentialViewController = 0;

  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  relyingParty = [credentialCopy relyingParty];
  authenticatorData = [credentialCopy authenticatorData];
  signature = [credentialCopy signature];
  userHandle = [credentialCopy userHandle];
  credentialID = [credentialCopy credentialID];
  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:applicationIdentifier relyingPartyIdentifier:relyingParty authenticatorData:authenticatorData signature:signature userHandle:userHandle credentialID:credentialID];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __137__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke;
  v21[3] = &unk_1E84904F8;
  v19 = completionCopy;
  v21[4] = self;
  v22 = v19;
  [controllerCopy dismissViewControllerAnimated:1 completion:v21];
}

uint64_t __137__SFPasswordPickerServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _dismiss];
}

- (void)accountPickerViewController:(id)controller fillUsernameForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  _isClientEntitledToDirectlyReceiveCredentials = [(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials];
  if (_isClientEntitledToDirectlyReceiveCredentials)
  {
    v10 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v10 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    user = [accountCopy user];
    [_remoteViewControllerProxy fillUsername:user];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isClientEntitledToDirectlyReceiveCredentials, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillPasswordForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  _isClientEntitledToDirectlyReceiveCredentials = [(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials];
  if (_isClientEntitledToDirectlyReceiveCredentials)
  {
    v10 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v10 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    password = [accountCopy password];
    [_remoteViewControllerProxy fillPassword:password];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isClientEntitledToDirectlyReceiveCredentials, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillVerificationCodeForSavedAccount:(id)account
{
  controllerCopy = controller;
  accountCopy = account;
  _isClientEntitledToDirectlyReceiveCredentials = [(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials];
  if (_isClientEntitledToDirectlyReceiveCredentials)
  {
    v10 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v10 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    currentOneTimeCode = [accountCopy currentOneTimeCode];
    [_remoteViewControllerProxy fillVerificationCode:currentOneTimeCode];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isClientEntitledToDirectlyReceiveCredentials, v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillVerificationCode:(id)code
{
  codeCopy = code;
  _isClientEntitledToDirectlyReceiveCredentials = [(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials];
  if (_isClientEntitledToDirectlyReceiveCredentials)
  {
    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    code = [codeCopy code];
    [_remoteViewControllerProxy fillVerificationCode:code];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isClientEntitledToDirectlyReceiveCredentials, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillText:(id)text
{
  textCopy = text;
  _isClientEntitledToDirectlyReceiveCredentials = [(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials];
  if (_isClientEntitledToDirectlyReceiveCredentials)
  {
    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy fillText:textCopy];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isClientEntitledToDirectlyReceiveCredentials, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

- (void)accountPickerViewController:(id)controller fillText:(id)text forSavedAccount:(id)account
{
  controllerCopy = controller;
  textCopy = text;
  accountCopy = account;
  _isClientEntitledToDirectlyReceiveCredentials = [(SFPasswordPickerServiceViewController *)self _isClientEntitledToDirectlyReceiveCredentials];
  if (_isClientEntitledToDirectlyReceiveCredentials)
  {
    v13 = objc_opt_class();
    searchQuery = [controllerCopy searchQuery];
    [v13 _rememberStateForAutoFillWithSearchQuery:searchQuery savedAccount:accountCopy];

    _remoteViewControllerProxy = [(SFPasswordPickerServiceViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy fillText:textCopy];

    [(SFPasswordPickerServiceViewController *)self _dismiss];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(_isClientEntitledToDirectlyReceiveCredentials, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SFPasswordPickerServiceViewController accountPickerViewController:fillUsernameForSavedAccount:];
    }
  }
}

+ (BOOL)_shouldRestoreStateForAutoFillForAppID:(id)d
{
  LODWORD(v3) = [d isEqualToString:lastUsedAppIDForAutoFill];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] now];
    [v4 timeIntervalSinceReferenceDate];
    v6 = v5 - *&timeIntervalSinceReferenceDateOfLastAutoFill;

    if (v6 <= 120.0)
    {
      v3 = [lastSearchQueryForAutoFill length];
      LOBYTE(v3) = (v3 | lastUsedSavedAccountForAutoFill) != 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

+ (void)_restoreStateForAutoFillToAccountPickerConfiguration:(id)configuration isForFillingIndividualAccountFields:(BOOL)fields
{
  fieldsCopy = fields;
  configurationCopy = configuration;
  [configurationCopy setInitialSearchQuery:lastSearchQueryForAutoFill];
  if (fieldsCopy)
  {
    [configurationCopy setSavedAccountToInitiallyShowDetailsFor:lastUsedSavedAccountForAutoFill];
  }

  [self _rememberStateForAutoFillWithSearchQuery:0 savedAccount:0];
}

+ (void)_rememberStateForAutoFillWithSearchQuery:(id)query savedAccount:(id)account
{
  queryCopy = query;
  accountCopy = account;
  objc_storeStrong(&lastSearchQueryForAutoFill, query);
  objc_storeStrong(&lastUsedSavedAccountForAutoFill, account);
  v7 = [MEMORY[0x1E695DF00] now];
  [v7 timeIntervalSinceReferenceDate];
  timeIntervalSinceReferenceDateOfLastAutoFill = v8;
}

void __89__SFPasswordPickerServiceViewController__authenticateToViewOtherPasswordsWithCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to get authentication for other passwords: %{public}@", v5);
}

void __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_1(v2, v3, v4, 5.8081e-34);
  _os_log_debug_impl(&dword_1D4644000, v6, OS_LOG_TYPE_DEBUG, "Sending credential with username: %{private}@, site: %{private}@", v5, 0x16u);
}

void __85__SFPasswordPickerServiceViewController__sendCredentialToClient_needsAuthentication___block_invoke_126_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to get authentication to fill password with error: %{public}@", v5);
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to open app with bundle ID %@", &v3, 0xCu);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_1()
{
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_7_0(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_3_0(&dword_1D4644000, v3, v4, "Failed to get application bundle identifier with error: %{public}@", v5);
}

void __127__SFPasswordPickerServiceViewController__authenticateAndSetPresentCredentialsHandlerWithSavedAccountContext_completionHandler___block_invoke_165_cold_3()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_sendCredentialToClientAndDismiss:providerBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  *v2 = 138543618;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2114;
  *(v2 + 14) = v4;
  _os_log_error_impl(&dword_1D4644000, v6, OS_LOG_TYPE_ERROR, "Could not determine bundle identifier for app identifier %{public}@: %{public}@", v5, 0x16u);
}

- (void)_sendCredentialToClientAndDismiss:providerBundleIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)setWebViewURL:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteAppID:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteLocalizedAppName:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setRemoteUnlocalizedAppName:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setExternallyVerifiedAndApprovedSharedWebCredentialsDomains:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setSystemAutoFillDocumentTraits:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end