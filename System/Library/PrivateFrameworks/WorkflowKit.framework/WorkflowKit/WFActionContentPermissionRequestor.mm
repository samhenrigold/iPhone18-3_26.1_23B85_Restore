@interface WFActionContentPermissionRequestor
- (WFAction)action;
- (WFActionContentPermissionRequestor)initWithAction:(id)action;
- (WFContactStore)contactStore;
- (void)_allowNetworkAccessAfterPromptingForURLs:(id)ls completionHandler:(id)handler;
- (void)allowContactsAccessWithCompletionHandler:(id)handler;
- (void)allowNetworkAccessAfterPromptingForURLs:(id)ls completionHandler:(id)handler;
- (void)requestUserConsentToLoadWebContentAtURL:(id)l completionHandler:(id)handler;
@end

@implementation WFActionContentPermissionRequestor

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (WFContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_opt_new();
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)allowNetworkAccessAfterPromptingForURLs:(id)ls completionHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  if (![lsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionContentPermissionRequestor.m" lineNumber:115 description:@"Programming error: at least 1 URLs must be passed into allowNetworkAccessAfterPromptingForURLs:"];
  }

  [(WFActionContentPermissionRequestor *)self _allowNetworkAccessAfterPromptingForURLs:lsCopy completionHandler:handlerCopy];
}

- (void)_allowNetworkAccessAfterPromptingForURLs:(id)ls completionHandler:(id)handler
{
  handlerCopy = handler;
  lsCopy = ls;
  v8 = [lsCopy if_objectsPassingTest:&__block_literal_global_54807];
  v9 = [lsCopy count];

  if (v9 && ![v8 count])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    v10 = MEMORY[0x1E6996F90];
    v11 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v30 = 0;
    v12 = [v10 locationWithURLs:v11 error:&v30];
    v13 = v30;

    if (v13)
    {
      (handlerCopy)[2](handlerCopy, 0, v13);
    }

    else
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_2;
      aBlock[3] = &unk_1E837BE38;
      v14 = handlerCopy;
      v29 = v14;
      v15 = _Block_copy(aBlock);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_3;
      v25[3] = &unk_1E837DB60;
      v26 = v14;
      v27 = v15;
      v16 = v15;
      v17 = _Block_copy(v25);
      v18 = v17;
      if (v12)
      {
        action = [(WFActionContentPermissionRequestor *)self action];
        userInterface = [(WFActionContentPermissionRequestor *)self userInterface];
        action2 = [(WFActionContentPermissionRequestor *)self action];
        runningDelegate = [action2 runningDelegate];
        [runningDelegate contentItemCache];
        v23 = v24 = v16;
        [action performSmartPromptChecksWithUserInterface:userInterface contentDestination:v12 contentItemCache:v23 isWebpageCoercion:1 completionHandler:v18];

        v16 = v24;
      }

      else
      {
        (*(v17 + 2))(v17, 0);
      }
    }
  }
}

void __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }

  else
  {
    v4 = [MEMORY[0x1E69E0C70] sharedManager];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:@"WFRemoteServerAccessResource"];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __97__WFActionContentPermissionRequestor__allowNetworkAccessAfterPromptingForURLs_completionHandler___block_invoke_4;
    v6[3] = &unk_1E837D0D0;
    v7 = *(a1 + 40);
    [v4 requestSandboxExtensionForRunningActionWithAccessResources:v5 completion:v6];
  }
}

- (void)requestUserConsentToLoadWebContentAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([lCopy isFileURL])
  {
    webpagesLocation = [MEMORY[0x1E6996D78] webpagesLocation];
  }

  else
  {
    v20 = 0;
    webpagesLocation = [MEMORY[0x1E6996F90] locationWithURL:lCopy error:&v20];
    v9 = v20;
    if (!webpagesLocation)
    {
      scheme = [lCopy scheme];
      if (objc_msgSend_isEqualToString_(scheme))
      {
      }

      else
      {
        scheme2 = [lCopy scheme];
        isEqualToString = objc_msgSend_isEqualToString_(scheme2);

        if (!isEqualToString)
        {
          handlerCopy[2](handlerCopy, 0, v9);
          goto LABEL_10;
        }
      }

      webpagesLocation = [MEMORY[0x1E6996D78] webpagesLocation];
    }
  }

  action = [(WFActionContentPermissionRequestor *)self action];
  userInterface = [(WFActionContentPermissionRequestor *)self userInterface];
  action2 = [(WFActionContentPermissionRequestor *)self action];
  runningDelegate = [action2 runningDelegate];
  contentItemCache = [runningDelegate contentItemCache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__WFActionContentPermissionRequestor_requestUserConsentToLoadWebContentAtURL_completionHandler___block_invoke;
  v18[3] = &unk_1E837BE38;
  v19 = handlerCopy;
  [action performSmartPromptChecksWithUserInterface:userInterface contentDestination:webpagesLocation contentItemCache:contentItemCache isWebpageCoercion:1 completionHandler:v18];

  v9 = webpagesLocation;
LABEL_10:
}

- (void)allowContactsAccessWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"WFContactAccessResource"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WFActionContentPermissionRequestor_allowContactsAccessWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E837BE10;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [mEMORY[0x1E69E0C70] requestSandboxExtensionForRunningActionWithAccessResources:v6 completion:v8];
}

void __79__WFActionContentPermissionRequestor_allowContactsAccessWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 40);

    v4(v5, 0);
  }

  else
  {
    v6 = [*(a1 + 32) contactStore];
    (*(v3 + 16))(v3, v6, 0);
  }
}

- (WFActionContentPermissionRequestor)initWithAction:(id)action
{
  v15 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = WFActionContentPermissionRequestor;
  v5 = [(WFActionContentPermissionRequestor *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_action, actionCopy);
    userInterface = [actionCopy userInterface];
    userInterface = v6->_userInterface;
    v6->_userInterface = userInterface;

    if (!v6->_userInterface)
    {
      v9 = getWFSecurityLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v14 = "[WFActionContentPermissionRequestor initWithAction:]";
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Creating a WFActionContentPermissionRequestor without userInterface. We won't be able to present any prompts, and requests will be denied.", buf, 0xCu);
      }
    }

    v10 = v6;
  }

  return v6;
}

@end