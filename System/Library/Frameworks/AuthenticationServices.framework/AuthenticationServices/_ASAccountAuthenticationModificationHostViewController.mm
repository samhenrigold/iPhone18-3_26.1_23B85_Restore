@interface _ASAccountAuthenticationModificationHostViewController
- (_ASAccountAuthenticationModificationHostViewController)initWithExtension:(id)extension serviceIdentifier:(id)identifier;
- (_ASAccountAuthenticationModificationHostViewControllerDelegate)delegate;
- (void)_nonUIRequestDidRequireUserInteraction;
- (void)_requestDidFailWithError:(id)error completion:(id)completion;
- (void)dismissRequestUI:(id)i;
- (void)getSignInWithAppleAuthorizationWithState:(id)state nonce:(id)nonce completion:(id)completion;
- (void)prepareToCancelRequestWithHostContext:(id)context error:(id)error completion:(id)completion;
- (void)prepareToCompleteRequestWithHostContext:(id)context updatedCredential:(id)credential userInfo:(id)info completion:(id)completion;
- (void)prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:(id)context userInfo:(id)info completion:(id)completion;
- (void)updateCredential:(id)credential withNewPassword:(id)password userInfo:(id)info;
- (void)upgradeCredentialToSignInWithApple:(id)apple userInfo:(id)info;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation _ASAccountAuthenticationModificationHostViewController

- (_ASAccountAuthenticationModificationHostViewController)initWithExtension:(id)extension serviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = _ASAccountAuthenticationModificationHostViewController;
  v8 = [(_ASExtensionViewController *)&v18 initWithExtension:extension];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceIdentifier, identifier);
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v9 action:sel__cancelButtonPressed];
    extension = [(_ASExtensionViewController *)v9 extension];
    _plugIn = [extension _plugIn];
    localizedContainingName = [_plugIn localizedContainingName];
    navigationItem = [(_ASAccountAuthenticationModificationHostViewController *)v9 navigationItem];
    [navigationItem setTitle:localizedContainingName];

    navigationItem2 = [(_ASAccountAuthenticationModificationHostViewController *)v9 navigationItem];
    [navigationItem2 setRightBarButtonItem:v10];

    [(_ASAccountAuthenticationModificationHostViewController *)v9 setModalInPresentation:1];
    v16 = v9;
  }

  return v9;
}

- (void)upgradeCredentialToSignInWithApple:(id)apple userInfo:(id)info
{
  appleCopy = apple;
  infoCopy = info;
  self->_accountModificationOperation = 1;
  existingCredential = self->_existingCredential;
  self->_existingCredential = appleCopy;
  v9 = appleCopy;

  objc_storeStrong(&self->_userInfo, info);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __102___ASAccountAuthenticationModificationHostViewController_upgradeCredentialToSignInWithApple_userInfo___block_invoke;
  v11[3] = &unk_1E7AF7A80;
  v11[4] = self;
  v12 = infoCopy;
  v10 = infoCopy;
  [(_ASExtensionViewController *)self _beginNonUIRequest:1 connectionHandler:v11];
}

- (void)updateCredential:(id)credential withNewPassword:(id)password userInfo:(id)info
{
  credentialCopy = credential;
  passwordCopy = password;
  infoCopy = info;
  self->_accountModificationOperation = 0;
  existingCredential = self->_existingCredential;
  self->_existingCredential = credentialCopy;
  v12 = credentialCopy;

  newPassword = self->_newPassword;
  self->_newPassword = passwordCopy;
  v14 = passwordCopy;

  objc_storeStrong(&self->_userInfo, info);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100___ASAccountAuthenticationModificationHostViewController_updateCredential_withNewPassword_userInfo___block_invoke;
  v16[3] = &unk_1E7AF7A80;
  v16[4] = self;
  v17 = infoCopy;
  v15 = infoCopy;
  [(_ASExtensionViewController *)self _beginNonUIRequest:1 connectionHandler:v16];
}

- (void)_nonUIRequestDidRequireUserInteraction
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96___ASAccountAuthenticationModificationHostViewController__nonUIRequestDidRequireUserInteraction__block_invoke;
  v3[3] = &unk_1E7AF7AA8;
  objc_copyWeak(&v4, &location);
  v3[4] = self;
  [(_ASExtensionViewController *)self _beginRequestWithConnectionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_requestDidFailWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_0;
  }

  v7 = _Block_copy(completionCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountModificationHostViewController:self requestCanceledWithError:errorCopy completion:v7];
  }

  else
  {
    v7[2](v7);
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  navigationController = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundColor:systemBackgroundColor];

  navigationController2 = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setTranslucent:0];
}

- (void)prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext:(id)context userInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142___ASAccountAuthenticationModificationHostViewController_prepareToCompleteUpgradeToSignInWithAppleRequestWithHostContext_userInfo_completion___block_invoke;
  block[3] = &unk_1E7AF7790;
  block[4] = self;
  v12 = infoCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = infoCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)prepareToCompleteRequestWithHostContext:(id)context updatedCredential:(id)credential userInfo:(id)info completion:(id)completion
{
  credentialCopy = credential;
  infoCopy = info;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __136___ASAccountAuthenticationModificationHostViewController_prepareToCompleteRequestWithHostContext_updatedCredential_userInfo_completion___block_invoke;
  v15[3] = &unk_1E7AF76D0;
  v15[4] = self;
  v16 = credentialCopy;
  v17 = infoCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = infoCopy;
  v14 = credentialCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

- (void)prepareToCancelRequestWithHostContext:(id)context error:(id)error completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  if (self->_signInWithAppleAuthorization)
  {
    v10 = objc_alloc_init(MEMORY[0x1E698DD10]);
    v11 = objc_alloc(MEMORY[0x1E69635F8]);
    extension = [(_ASExtensionViewController *)self extension];
    _plugIn = [extension _plugIn];
    containingUrl = [_plugIn containingUrl];
    v30 = 0;
    v15 = [v11 initWithURL:containingUrl allowPlaceholder:0 error:&v30];
    v16 = v30;

    if (v16)
    {
      v19 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountAuthenticationModificationHostViewController prepareToCancelRequestWithHostContext:v19 error:v16 completion:?];
      }

      completionCopy[2](completionCopy);
    }

    else
    {
      authorizedRequest = [(AKAuthorization *)self->_signInWithAppleAuthorization authorizedRequest];
      requestIdentifier = [authorizedRequest requestIdentifier];
      uUIDString = [requestIdentifier UUIDString];
      [v10 setTransactionID:uUIDString];

      bundleIdentifier = [v15 bundleIdentifier];
      [v10 setBundleID:bundleIdentifier];

      teamIdentifier = [v15 teamIdentifier];
      [v10 setTeamID:teamIdentifier];

      v25 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __113___ASAccountAuthenticationModificationHostViewController_prepareToCancelRequestWithHostContext_error_completion___block_invoke;
      v26[3] = &unk_1E7AF7AD0;
      v27 = contextCopy;
      selfCopy = self;
      v29 = completionCopy;
      [v25 revokeAuthorizationWithContext:v10 completion:v26];
    }
  }

  else
  {
    v31.receiver = self;
    v31.super_class = _ASAccountAuthenticationModificationHostViewController;
    [(_ASExtensionViewController *)&v31 prepareToCancelRequestWithHostContext:contextCopy error:error completion:completionCopy];
  }
}

- (void)getSignInWithAppleAuthorizationWithState:(id)state nonce:(id)nonce completion:(id)completion
{
  v41[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  nonceCopy = nonce;
  completionCopy = completion;
  if (self->_accountModificationOperation == 1)
  {
    navigationController = [(_ASAccountAuthenticationModificationHostViewController *)self navigationController];

    if (navigationController)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained dismissUIForAccountModificationHostViewController:self];
      }
    }

    v13 = objc_alloc_init(MEMORY[0x1E698DD20]);
    v14 = objc_alloc(MEMORY[0x1E69635F8]);
    extension = [(_ASExtensionViewController *)self extension];
    _plugIn = [extension _plugIn];
    containingUrl = [_plugIn containingUrl];
    v37 = 0;
    v18 = [v14 initWithURL:containingUrl allowPlaceholder:0 error:&v37];
    v19 = v37;

    if (v19)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXAccountAuthenticationModificationExtension(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountAuthenticationModificationHostViewController getSignInWithAppleAuthorizationWithState:v22 nonce:v19 completion:?];
      }

      v23 = MEMORY[0x1E696ABC0];
      v38 = *MEMORY[0x1E696A588];
      v39 = @"Couldn't get application record while fetching authorization.";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v25 = [v23 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v24];
      completionCopy[2](completionCopy, 0, v25);
    }

    else
    {
      objc_initWeak(&location, self);
      [v13 setState:stateCopy];
      [v13 setNonce:nonceCopy];
      entitlements = [v18 entitlements];
      v28 = [entitlements objectForKey:@"application-identifier" ofClass:objc_opt_class()];
      [v13 setAppID:v28];

      bundleIdentifier = [v18 bundleIdentifier];
      [v13 setBundleID:bundleIdentifier];

      teamIdentifier = [v18 teamIdentifier];
      [v13 setTeamID:teamIdentifier];

      v31 = [objc_alloc(MEMORY[0x1E698DD58]) initWithUpgradeContext:v13];
      v32 = objc_alloc_init(MEMORY[0x1E698DCE0]);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __116___ASAccountAuthenticationModificationHostViewController_getSignInWithAppleAuthorizationWithState_nonce_completion___block_invoke;
      v33[3] = &unk_1E7AF7AF8;
      objc_copyWeak(&v35, &location);
      v34 = completionCopy;
      [v32 performAuthorizationWithContext:v31 completion:v33];

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v26 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A588];
    v41[0] = @"Cannot request Sign in with Apple authorization in the middle of a strong password upgrade.";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v13 = [v26 errorWithDomain:@"ASExtensionErrorDomain" code:0 userInfo:v19];
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (void)dismissRequestUI:(id)i
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained dismissUIForAccountModificationHostViewController:self];
  }
}

- (_ASAccountAuthenticationModificationHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)prepareToCancelRequestWithHostContext:(void *)a1 error:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get application record to revoke authorization with error: %{public}@", v7, v8, v9, v10);
}

- (void)getSignInWithAppleAuthorizationWithState:(void *)a1 nonce:(void *)a2 completion:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Failed to get application record to request authorization due to error: %{public}@", v7, v8, v9, v10);
}

@end