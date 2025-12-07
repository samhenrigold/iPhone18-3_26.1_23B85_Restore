@interface SFExternalPasswordCredentialServiceViewController
+ (id)_exportedInterface;
- (SFExternalPasswordCredentialServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_authenticationContext;
- (void)_autoFillWithCredentialIdentity:(id)identity pageID:(id)d frameID:(id)iD;
- (void)_dismiss;
- (void)_finishRequestToAutoFillCredential:(id)credential extensionShowedUI:(BOOL)i error:(id)error completion:(id)completion;
- (void)_finishRequestToReturnCredential:(id)credential extensionShowedUI:(BOOL)i error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithOneTimeCodeCredential:(id)credential error:(id)error completion:(id)completion;
- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion;
- (void)getCredentialForCredentialIdentity:(id)identity completion:(id)completion;
- (void)presentUIForPasswordCredentialAuthenticationViewController:(id)controller;
@end

@implementation SFExternalPasswordCredentialServiceViewController

- (void)_dismiss
{
  mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
  [mEMORY[0x1E69C8DE0] removeObserver:self];

  _remoteViewControllerProxy = [(SFExternalPasswordCredentialServiceViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy willDismissServiceViewController];
}

- (id)_authenticationContext
{
  authenticationContext = self->_authenticationContext;
  if (!authenticationContext)
  {
    v4 = objc_alloc_init(_SFAuthenticationContext);
    v5 = self->_authenticationContext;
    self->_authenticationContext = v4;

    [(_SFAuthenticationContext *)self->_authenticationContext setDelegate:self];
    authenticationContext = self->_authenticationContext;
  }

  v6 = authenticationContext;

  return v6;
}

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F50A9B00];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_autoFillWithCredentialIdentity_ argumentIndex:0 ofReply:0];
  [v2 setClasses:v3 forSelector:sel_getCredentialForCredentialIdentity_completion_ argumentIndex:0 ofReply:0];
  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_getCredentialForCredentialIdentity_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

- (SFExternalPasswordCredentialServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = SFExternalPasswordCredentialServiceViewController;
  v4 = [(SFExternalPasswordCredentialServiceViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69C8818]);
    authenticationServicesAgentProxy = v4->_authenticationServicesAgentProxy;
    v4->_authenticationServicesAgentProxy = v5;

    mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
    [mEMORY[0x1E69C8DE0] addObserver:v4];

    v8 = objc_alloc_init(MEMORY[0x1E695A970]);
    conditionalRegistrationRequester = v4->_conditionalRegistrationRequester;
    v4->_conditionalRegistrationRequester = v8;

    v10 = v4;
  }

  return v4;
}

- (void)_autoFillWithCredentialIdentity:(id)identity pageID:(id)d frameID:(id)iD
{
  identityCopy = identity;
  applicationIdentifier = [(SFPasswordServiceViewController *)self applicationIdentifier];
  v49 = 0;
  v8 = [applicationIdentifier safari_bundleIdentifierFromApplicationIdentifier:&v49];
  v9 = v49;
  clientBundleID = self->_clientBundleID;
  self->_clientBundleID = v8;

  if (!self->_clientBundleID && (v13 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v11, v12), v11 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR)))
  {
    [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:v13 pageID:v9 frameID:?];
    if (identityCopy)
    {
LABEL_4:
      owningExtensionState = [identityCopy owningExtensionState];
      providerBundleID = [owningExtensionState providerBundleID];

      mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
      v17 = [mEMORY[0x1E69C8DE0] enabledExtensionWithContainingAppBundleID:providerBundleID];

      if (!v17)
      {
        v25 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v18, v19);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:pageID:frameID:];
        }

        [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
        goto LABEL_19;
      }

      self->_completionAction = 0;
      type = [identityCopy type];
      switch(type)
      {
        case 4:
          v31 = objc_alloc(MEMORY[0x1E695A978]);
          v32 = objc_alloc(MEMORY[0x1E695A930]);
          v33 = [objc_alloc(MEMORY[0x1E695A928]) _initWithFoundationCredentialIdentity:identityCopy];
          v34 = [v32 initWithCredentialIdentity:v33];
          v35 = [v31 initWithExtension:v17 oneTimeCodeCredentialRequest:v34];
          extensionController = self->_extensionController;
          self->_extensionController = v35;

          break;
        case 2:
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __100__SFExternalPasswordCredentialServiceViewController__autoFillWithCredentialIdentity_pageID_frameID___block_invoke;
          aBlock[3] = &unk_1E84934C0;
          aBlock[4] = self;
          v48 = v17;
          v46 = _Block_copy(aBlock);
          v26 = identityCopy;
          objc_msgSend__hostAuditToken(self);
          v27 = WBSApplicationIdentifierFromAuditToken();
          authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
          serviceIdentifier = [v26 serviceIdentifier];
          credentialID = [v26 credentialID];

          [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy getExternalPasskeyRequestForApplicationIdentifier:v27 relyingPartyIdentifier:serviceIdentifier credentialID:credentialID completionHandler:v46];
          goto LABEL_15;
        case 1:
          v21 = objc_alloc(MEMORY[0x1E695A978]);
          v22 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:identityCopy];
          v23 = [v21 initWithExtension:v17 credentialIdentity:v22];
          v24 = self->_extensionController;
          self->_extensionController = v23;

          break;
        default:
          goto LABEL_15;
      }

      [(_ASCredentialAuthenticationViewController *)self->_extensionController setDelegate:self];
LABEL_15:
      serviceIdentifierType = [identityCopy serviceIdentifierType];
      if (serviceIdentifierType)
      {
        if (serviceIdentifierType == 1)
        {
          v38 = MEMORY[0x1E695DFF8];
          serviceIdentifier2 = [identityCopy serviceIdentifier];
          v40 = [v38 URLWithString:serviceIdentifier2];
          host = [v40 host];
          hostForLastAutoFill = self->_hostForLastAutoFill;
          self->_hostForLastAutoFill = host;
        }
      }

      else
      {
        serviceIdentifier3 = [identityCopy serviceIdentifier];
        v44 = self->_hostForLastAutoFill;
        self->_hostForLastAutoFill = serviceIdentifier3;
      }

LABEL_19:

      goto LABEL_24;
    }
  }

  else if (identityCopy)
  {
    goto LABEL_4;
  }

  v45 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v11, v12);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:pageID:frameID:];
  }

  [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
LABEL_24:
}

void __100__SFExternalPasswordCredentialServiceViewController__autoFillWithCredentialIdentity_pageID_frameID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [objc_alloc(MEMORY[0x1E695A978]) initWithExtension:*(a1 + 40) passkeyAssertionRequest:v6];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1008);
    *(v4 + 1008) = v3;

    [*(*(a1 + 32) + 1008) setDelegate:?];
  }

  else
  {
    [*(a1 + 32) _dismiss];
  }
}

- (void)_finishRequestToAutoFillCredential:(id)credential extensionShowedUI:(BOOL)i error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke;
  aBlock[3] = &unk_1E8495628;
  v11 = completionCopy;
  v21 = v11;
  v12 = credentialCopy;
  v20 = v12;
  v13 = _Block_copy(aBlock);
  if (i || (+[_SFManagedFeatureObserver sharedObserver](_SFManagedFeatureObserver, "sharedObserver"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 authenticationRequiredToAutoFill], v14, (v15 & 1) == 0))
  {
    v13[2](v13, 1);
  }

  else
  {
    _authenticationContext = [(SFExternalPasswordCredentialServiceViewController *)self _authenticationContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_2;
    v17[3] = &unk_1E8491E88;
    v18 = v13;
    [_authenticationContext authenticateForClient:self userInitiated:1 completion:v17];
  }
}

void __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      v6 = *(a1 + 32);
      v7 = v3;
      v8 = [v6 user];
      if ([v8 length])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v10 = v9;
      v11 = [*(a1 + 32) password];
      if ([v11 length])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = v12;
      *buf = 138543618;
      v21 = v10;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_1D4644000, v7, OS_LOG_TYPE_DEFAULT, "Sending credential with non-empty username: %{public}@, non-empty password: %{public}@", buf, 0x16u);
    }

    v14 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v4, v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_cold_1(a1, v14);
    }

    v15 = MEMORY[0x1E69D9578];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_68;
    v18[3] = &unk_1E84909E8;
    v16 = *(a1 + 32);
    v19 = *(a1 + 40);
    [v15 sendAutofillCredentialCandidate:v16 completionHandler:v18];
  }

  else
  {
    v17 = *(*(a1 + 40) + 16);

    v17();
  }
}

- (void)getCredentialForCredentialIdentity:(id)identity completion:(id)completion
{
  v35[1] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completionCopy = completion;
  if (completionCopy)
  {
    objc_msgSend__hostAuditToken(self);
    HasEntitlement = WBSAuditTokenHasEntitlement();
    if (HasEntitlement)
    {
      owningExtensionState = [identityCopy owningExtensionState];
      providerBundleID = [owningExtensionState providerBundleID];

      mEMORY[0x1E69C8DE0] = [MEMORY[0x1E69C8DE0] sharedManager];
      v13 = [mEMORY[0x1E69C8DE0] enabledExtensionWithContainingAppBundleID:providerBundleID];

      if (v13)
      {
        v16 = _Block_copy(completionCopy);
        getCredentialCompletion = self->_getCredentialCompletion;
        self->_getCredentialCompletion = v16;

        self->_completionAction = 1;
        v18 = objc_alloc(MEMORY[0x1E695A978]);
        v19 = [objc_alloc(MEMORY[0x1E695A940]) initWithFoundationCredentialIdentity:identityCopy];
        v20 = [v18 initWithExtension:v13 credentialIdentity:v19];
        extensionController = self->_extensionController;
        self->_extensionController = v20;

        [(_ASCredentialAuthenticationViewController *)self->_extensionController setDelegate:self];
      }

      else
      {
        v27 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v14, v15);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [SFExternalPasswordCredentialServiceViewController _autoFillWithCredentialIdentity:pageID:frameID:];
        }

        v28 = MEMORY[0x1E696ABC0];
        v29 = *MEMORY[0x1E695A8F0];
        v32 = *MEMORY[0x1E696A588];
        v33 = @"Primary credential provider extension was not found";
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v31 = [v28 errorWithDomain:v29 code:0 userInfo:v30];
        (*(completionCopy + 2))(completionCopy, 0, 0, v31);

        [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
      }
    }

    else
    {
      v22 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(HasEntitlement, v9);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [SFExternalPasswordCredentialServiceViewController getCredentialForCredentialIdentity:completion:];
      }

      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A250];
      v34 = *MEMORY[0x1E696A588];
      v35[0] = @"Calling process is not entitled";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      v26 = [v23 errorWithDomain:v24 code:4099 userInfo:v25];
      (*(completionCopy + 2))(completionCopy, 0, 0, v26);

      [(SFExternalPasswordCredentialServiceViewController *)self _dismiss];
    }
  }
}

- (void)_finishRequestToReturnCredential:(id)credential extensionShowedUI:(BOOL)i error:(id)error completion:(id)completion
{
  getCredentialCompletion = self->_getCredentialCompletion;
  if (getCredentialCompletion)
  {
    iCopy = i;
    v11 = getCredentialCompletion[2];
    completionCopy = completion;
    v11(getCredentialCompletion, credential, !iCopy, error);
  }

  else
  {
    completionCopy2 = completion;
    v15 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(completionCopy2, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SFExternalPasswordCredentialServiceViewController _finishRequestToReturnCredential:extensionShowedUI:error:completion:];
    }
  }

  (*(completion + 2))(completion);
}

- (void)presentUIForPasswordCredentialAuthenticationViewController:(id)controller
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __112__SFExternalPasswordCredentialServiceViewController_presentUIForPasswordCredentialAuthenticationViewController___block_invoke;
  v3[3] = &unk_1E848F810;
  v3[4] = self;
  [(SFExternalPasswordCredentialServiceViewController *)self presentViewController:controller animated:1 completion:v3];
}

void __112__SFExternalPasswordCredentialServiceViewController_presentUIForPasswordCredentialAuthenticationViewController___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _remoteViewControllerProxy];
  [v1 presentExternalPasswordCredentialRemoteViewController];
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithCredential:(id)credential error:(id)error completion:(id)completion
{
  controllerCopy = controller;
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  presentingViewController = [controllerCopy presentingViewController];

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke;
  v47[3] = &unk_1E8490798;
  v16 = completionCopy;
  v49 = v16;
  v17 = v15;
  v48 = v17;
  v36 = controllerCopy;
  [controllerCopy dismissViewControllerAnimated:1 completion:v47];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2;
  aBlock[3] = &unk_1E848F548;
  v18 = v17;
  v45 = v18;
  selfCopy = self;
  v19 = _Block_copy(aBlock);
  v35 = v19;
  if (credentialCopy)
  {
    v21 = objc_alloc(MEMORY[0x1E69C8E10]);
    [credentialCopy user];
    v22 = v18;
    v24 = v23 = errorCopy;
    password = [credentialCopy password];
    [MEMORY[0x1E695DF00] date];
    v27 = v26 = v16;
    v28 = [v21 initWithUser:v24 password:password site:&stru_1F4FE9E38 creationDate:v27 customTitle:0 groupName:0 requestedHost:0];

    v16 = v26;
    errorCopy = v23;
    v18 = v22;
  }

  else
  {
    v28 = 0;
  }

  completionAction = self->_completionAction;
  if (completionAction == 1)
  {
    v33 = presentingViewController != 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_88;
    v37[3] = &unk_1E84909E8;
    v32 = v35;
    v38 = v35;
    [(SFExternalPasswordCredentialServiceViewController *)self _finishRequestToReturnCredential:v28 extensionShowedUI:v33 error:errorCopy completion:v37];

LABEL_12:
    v31 = v36;
    goto LABEL_13;
  }

  if (completionAction)
  {
LABEL_11:
    v32 = v35;
    v35[2](v35);
    goto LABEL_12;
  }

  if (!v28)
  {
    v34 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v19, v20);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v34, OS_LOG_TYPE_DEFAULT, "Did not receive any external password credential", buf, 2u);
    }

    goto LABEL_11;
  }

  v30 = presentingViewController != 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_86;
  v39[3] = &unk_1E8495650;
  v39[4] = self;
  v40 = credentialCopy;
  v31 = v36;
  v41 = v36;
  v32 = v35;
  v42 = v35;
  [(SFExternalPasswordCredentialServiceViewController *)self _finishRequestToAutoFillCredential:v28 extensionShowedUI:v30 error:errorCopy completion:v39];

LABEL_13:
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_3;
  block[3] = &unk_1E848F810;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_group_notify(v1, MEMORY[0x1E69E96A0], block);
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_86(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (*(v3 + 1056))
    {
      v4 = *(v3 + 1032);
      v5 = [*(a1 + 40) user];
      v6 = *(*(a1 + 32) + 1048);
      v7 = [*(a1 + 48) extension];
      v8 = [v7 sf_bundleIdentifierForContainingApp];
      [v4 didFillCredentialForUsername:v5 forHost:v6 fromProviderWithBundleIdentifier:v8 inAppWithBundleIdentifier:*(*(a1 + 32) + 1056) externalProviderConditionalRegistrationRequester:*(*(a1 + 32) + 1040)];
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_87;
  block[3] = &unk_1E84909E8;
  v10 = *(a1 + 56);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_87(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Dismissing external password credential service view controller after sending credential", v5, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_88(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_89;
  block[3] = &unk_1E84909E8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __133__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithCredential_error_completion___block_invoke_2_89(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Dismissing external password credential service view controller after returning credential", v5, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithPasskeyAssertionCredential:(id)credential error:(id)error completion:(id)completion
{
  completionCopy = completion;
  extensionController = self->_extensionController;
  self->_extensionController = 0;
  credentialCopy = credential;
  controllerCopy = controller;

  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  objc_msgSend__hostAuditToken(self);
  v13 = WBSApplicationIdentifierFromAuditToken();
  relyingParty = [credentialCopy relyingParty];
  authenticatorData = [credentialCopy authenticatorData];
  signature = [credentialCopy signature];
  userHandle = [credentialCopy userHandle];
  credentialID = [credentialCopy credentialID];

  [(WBSAuthenticationServicesAgentProxy *)authenticationServicesAgentProxy completeAssertionWithExternalPasskeyForApplicationIdentifier:v13 relyingPartyIdentifier:relyingParty authenticatorData:authenticatorData signature:signature userHandle:userHandle credentialID:credentialID];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __149__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke;
  v21[3] = &unk_1E8490798;
  v21[4] = self;
  v22 = completionCopy;
  v19 = completionCopy;
  [controllerCopy dismissViewControllerAnimated:1 completion:v21];
}

uint64_t __149__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithPasskeyAssertionCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _dismiss];
}

- (void)credentialAuthenticationViewController:(id)controller didFinishWithOneTimeCodeCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  controllerCopy = controller;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke;
  v31[3] = &unk_1E8490798;
  v15 = completionCopy;
  v33 = v15;
  v16 = v14;
  v32 = v16;
  [controllerCopy dismissViewControllerAnimated:1 completion:v31];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2;
  aBlock[3] = &unk_1E848F548;
  v17 = v16;
  v29 = v17;
  selfCopy = self;
  v18 = _Block_copy(aBlock);
  v20 = v18;
  if (credentialCopy && (v21 = objc_alloc(MEMORY[0x1E69C8E10]), [credentialCopy code], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "initWithOneTimeCode:", v22), v22, v23))
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_90;
    v25[3] = &unk_1E848FA50;
    v26 = v20;
    [(SFExternalPasswordCredentialServiceViewController *)self _finishRequestToAutoFillCredential:v23 extensionShowedUI:1 error:errorCopy completion:v25];
  }

  else
  {
    v24 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(v18, v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v24, OS_LOG_TYPE_DEFAULT, "Did not receive any external one time code credential", buf, 2u);
    }

    v20[2](v20);
  }
}

void __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_3;
  block[3] = &unk_1E848F810;
  v1 = *(a1 + 32);
  block[4] = *(a1 + 40);
  dispatch_group_notify(v1, MEMORY[0x1E69E96A0], block);
}

void __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_90(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2_91;
  block[3] = &unk_1E84909E8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __144__SFExternalPasswordCredentialServiceViewController_credentialAuthenticationViewController_didFinishWithOneTimeCodeCredential_error_completion___block_invoke_2_91(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D4644000, v3, OS_LOG_TYPE_INFO, "Dismissing external one time code credential service view controller after sending credential", v5, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_autoFillWithCredentialIdentity:(void *)a1 pageID:(void *)a2 frameID:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingError];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Error getting bundle identifier from app identifier: %{public}@", &v5, 0xCu);
}

void __123__SFExternalPasswordCredentialServiceViewController__finishRequestToAutoFillCredential_extensionShowedUI_error_completion___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 user];
  v5 = 138477827;
  v6 = v4;
  _os_log_debug_impl(&dword_1D4644000, v3, OS_LOG_TYPE_DEBUG, "Sending credential with username: %{private}@", &v5, 0xCu);
}

@end