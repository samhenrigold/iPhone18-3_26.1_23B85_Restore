@interface SOAuthorization
+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code;
+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions;
+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code useInternalExtensions:(BOOL)extensions;
+ (void)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions completion:(id)completion;
+ (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion;
- (BOOL)isUserInteractionEnabled;
- (NSDictionary)authorizationOptions;
- (OS_dispatch_queue)delegateDispatchQueue;
- (SOAuthorization)init;
- (SOAuthorizationDelegate)delegate;
- (id)kerberosProfiles;
- (id)realms;
- (void)_applicationActivationWithTimeout:(BOOL)timeout;
- (void)_cancelAuthorization;
- (void)_extensionCleanup;
- (void)_finishAuthorization:(id)authorization completion:(id)completion;
- (void)_finishAuthorizationWithCredential:(id)credential error:(id)error;
- (void)applicationDidBecomeActive:(id)active;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)beginAuthorizationWithOperation:(id)operation url:(id)url httpHeaders:(id)headers httpBody:(id)body;
- (void)beginAuthorizationWithParameters:(id)parameters;
- (void)beginAuthorizationWithURL:(id)l httpHeaders:(id)headers httpBody:(id)body;
- (void)cancelAuthorization;
- (void)dealloc;
- (void)debugHintsWithCompletion:(id)completion;
- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)setAuthorizationOptions:(id)options;
- (void)setDelegateDispatchQueue:(id)queue;
- (void)setEnableUserInteraction:(BOOL)interaction;
- (void)viewControllerDidCancel:(id)cancel;
@end

@implementation SOAuthorization

- (SOAuthorization)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[SOAuthorization init]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = SOAuthorization;
  v4 = [(SOAuthorization *)&v10 init];
  if (v4)
  {
    if (AppSSOCoreLibraryCore(0))
    {
      v5 = objc_alloc_init(getSOAuthorizationCoreClass());
      authorizationCore = v4->_authorizationCore;
      v4->_authorizationCore = v5;
    }

    *&v4->_enableEmbeddedAuthorizationViewController = 1;
    v7 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    cancelLock = v4->_cancelLock;
    v4->_cancelLock = v7;
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SOAuthorization;
  [(SOAuthorization *)&v4 dealloc];
}

+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code
{
  lCopy = l;
  if (AppSSOCoreLibraryCore(0))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    if (_originatorBundleIdentifier)
    {
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 3221225472;
      activity_block[2] = __63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke;
      activity_block[3] = &unk_1E813EB00;
      v16 = &v18;
      v15 = lCopy;
      codeCopy = code;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
      v6 = v15;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke_2;
      v10[3] = &unk_1E813EB00;
      v12 = &v18;
      v11 = lCopy;
      codeCopy2 = code;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v10);
      v6 = v11;
    }

    v8 = *(v19 + 24);
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = SO_LOG_SOAuthorization(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    v8 = 0;
  }

  return v8 & 1;
}

void *__63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke(void *a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:a1[4] responseCode:a1[6] callerBundleIdentifier:_originatorBundleIdentifier useInternalExtensions:1];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void *__63__SOAuthorization_canPerformAuthorizationWithURL_responseCode___block_invoke_2(void *a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:a1[4] responseCode:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code useInternalExtensions:(BOOL)extensions
{
  lCopy = l;
  if (AppSSOCoreLibraryCore(0))
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    if (_originatorBundleIdentifier)
    {
      activity_block[0] = MEMORY[0x1E69E9820];
      activity_block[1] = 3221225472;
      activity_block[2] = __85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke;
      activity_block[3] = &unk_1E813EB00;
      v19 = &v21;
      v18 = lCopy;
      codeCopy = code;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
      v8 = v18;
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke_2;
      v12[3] = &unk_1E813EB28;
      v14 = &v21;
      v13 = lCopy;
      codeCopy2 = code;
      extensionsCopy = extensions;
      _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, v12);
      v8 = v13;
    }

    v10 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = SO_LOG_SOAuthorization(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    v10 = 0;
  }

  return v10 & 1;
}

void *__85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke(void *a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:a1[4] responseCode:a1[6] callerBundleIdentifier:_originatorBundleIdentifier useInternalExtensions:1];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void *__85__SOAuthorization_canPerformAuthorizationWithURL_responseCode_useInternalExtensions___block_invoke_2(uint64_t a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 48) useInternalExtensions:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (BOOL)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions
{
  lCopy = l;
  identifierCopy = identifier;
  if (AppSSOCoreLibraryCore(0))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __108__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke;
    activity_block[3] = &unk_1E813EB50;
    v17 = &v20;
    v15 = lCopy;
    codeCopy = code;
    v16 = identifierCopy;
    extensionsCopy = extensions;
    _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

    v11 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v12 = SO_LOG_SOAuthorization(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    v11 = 0;
  }

  return v11 & 1;
}

void *__108__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions___block_invoke(uint64_t a1)
{
  result = [getSOAuthorizationCoreClass() canPerformAuthorizationWithURL:*(a1 + 32) responseCode:*(a1 + 56) callerBundleIdentifier:*(a1 + 40) useInternalExtensions:*(a1 + 64)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (void)canPerformAuthorizationWithURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier useInternalExtensions:(BOOL)extensions completion:(id)completion
{
  lCopy = l;
  identifierCopy = identifier;
  completionCopy = completion;
  if (AppSSOCoreLibraryCore(0))
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __119__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke;
    activity_block[3] = &unk_1E813EBA0;
    v16 = lCopy;
    codeCopy = code;
    v17 = identifierCopy;
    extensionsCopy = extensions;
    v18 = completionCopy;
    _os_activity_initiate(&dword_1C1317000, "canPerformAuthorizationWithURL", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v14 = SO_LOG_SOAuthorization(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __119__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke(uint64_t a1)
{
  SOAuthorizationCoreClass = getSOAuthorizationCoreClass();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __119__SOAuthorization_canPerformAuthorizationWithURL_responseCode_callerBundleIdentifier_useInternalExtensions_completion___block_invoke_2;
  v7[3] = &unk_1E813EB78;
  v6 = *(a1 + 56);
  v8 = *(a1 + 48);
  [SOAuthorizationCoreClass canPerformAuthorizationWithURL:v3 responseCode:v6 callerBundleIdentifier:v4 useInternalExtensions:v5 completion:v7];
}

- (OS_dispatch_queue)delegateDispatchQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  delegateDispatchQueue = [(SOAuthorizationCore *)selfCopy->_authorizationCore delegateDispatchQueue];
  objc_sync_exit(selfCopy);

  return delegateDispatchQueue;
}

- (void)setDelegateDispatchQueue:(id)queue
{
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SOAuthorizationCore *)selfCopy->_authorizationCore setDelegateDispatchQueue:queueCopy];
  objc_sync_exit(selfCopy);
}

- (NSDictionary)authorizationOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  authorizationOptions = [(SOAuthorizationCore *)selfCopy->_authorizationCore authorizationOptions];
  objc_sync_exit(selfCopy);

  return authorizationOptions;
}

- (void)setAuthorizationOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(SOAuthorizationCore *)selfCopy->_authorizationCore setAuthorizationOptions:optionsCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)isUserInteractionEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isUserInteractionEnabled = [(SOAuthorizationCore *)selfCopy->_authorizationCore isUserInteractionEnabled];
  objc_sync_exit(selfCopy);

  return isUserInteractionEnabled;
}

- (void)setEnableUserInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  obj = self;
  objc_sync_enter(obj);
  [(SOAuthorizationCore *)obj->_authorizationCore setEnableUserInteraction:interactionCopy];
  objc_sync_exit(obj);
}

- (void)getAuthorizationHintsWithURL:(id)l responseCode:(int64_t)code completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lCopy = l;
  v10 = SO_LOG_SOAuthorization(lCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[SOAuthorization getAuthorizationHintsWithURL:responseCode:completion:]";
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  authorizationCore = self->_authorizationCore;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__SOAuthorization_getAuthorizationHintsWithURL_responseCode_completion___block_invoke;
  v13[3] = &unk_1E813EBC8;
  v14 = completionCopy;
  v12 = completionCopy;
  [(SOAuthorizationCore *)authorizationCore getAuthorizationHintsWithURL:lCopy responseCode:code completion:v13];
}

void __72__SOAuthorization_getAuthorizationHintsWithURL_responseCode_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SO_LOG_SOAuthorization(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1C1317000, v7, OS_LOG_TYPE_DEFAULT, "hints: %{public}@, error: %{public}@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    if (v5)
    {
      v9 = [[SOAuthorizationHints alloc] initWithAuthorizationHintsCore:v5];
      v8 = *(a1 + 32);
    }

    else
    {
      v9 = 0;
    }

    (*(v8 + 16))(v8, v9, v6);
  }
}

- (void)beginAuthorizationWithURL:(id)l httpHeaders:(id)headers httpBody:(id)body
{
  v17 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  headersCopy = headers;
  lCopy = l;
  v11 = SO_LOG_SOAuthorization(lCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[SOAuthorization beginAuthorizationWithURL:httpHeaders:httpBody:]";
    v15 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v13, 0x16u);
  }

  v12 = objc_alloc_init(SOAuthorizationParameters);
  [(SOAuthorizationParameters *)v12 setUrl:lCopy];

  [(SOAuthorizationParameters *)v12 setHttpHeaders:headersCopy];
  [(SOAuthorizationParameters *)v12 setHttpBody:bodyCopy];

  [(SOAuthorizationParameters *)v12 setUseInternalExtensions:1];
  [(SOAuthorization *)self beginAuthorizationWithParameters:v12];
}

- (void)beginAuthorizationWithOperation:(id)operation url:(id)url httpHeaders:(id)headers httpBody:(id)body
{
  v20 = *MEMORY[0x1E69E9840];
  bodyCopy = body;
  headersCopy = headers;
  urlCopy = url;
  operationCopy = operation;
  v14 = SO_LOG_SOAuthorization(operationCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[SOAuthorization beginAuthorizationWithOperation:url:httpHeaders:httpBody:]";
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v16, 0x16u);
  }

  v15 = objc_alloc_init(SOAuthorizationParameters);
  [(SOAuthorizationParameters *)v15 setOperation:operationCopy];

  [(SOAuthorizationParameters *)v15 setUrl:urlCopy];
  [(SOAuthorizationParameters *)v15 setHttpHeaders:headersCopy];

  [(SOAuthorizationParameters *)v15 setHttpBody:bodyCopy];
  [(SOAuthorizationParameters *)v15 setUseInternalExtensions:1];
  [(SOAuthorization *)self beginAuthorizationWithParameters:v15];
}

- (void)beginAuthorizationWithParameters:(id)parameters
{
  v63 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v5 = SO_LOG_SOAuthorization(parametersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [parametersCopy identifier];
    operation = [parametersCopy operation];
    v7 = [parametersCopy url];
    httpHeaders = [parametersCopy httpHeaders];
    httpBody = [parametersCopy httpBody];
    auditTokenData = [parametersCopy auditTokenData];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = parametersCopy;
    enableEmbeddedAuthorizationViewController = self->_enableEmbeddedAuthorizationViewController;
    *buf = 136317955;
    *&buf[4] = "[SOAuthorization beginAuthorizationWithParameters:]";
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    *&buf[22] = 2114;
    v45 = operation;
    strcpy(v46, "p\bhash");
    v46[7] = 0;
    *&v46[8] = 0;
    v47 = 2117;
    v48 = v7;
    v49 = 2113;
    v50 = httpHeaders;
    v51 = 2113;
    v52 = httpBody;
    v53 = 2114;
    v54 = auditTokenData;
    v55 = 2114;
    v56 = WeakRetained;
    v57 = 1024;
    v58 = enableEmbeddedAuthorizationViewController;
    parametersCopy = v12;
    v59 = 1024;
    isUserInteractionEnabled = [(SOAuthorization *)self isUserInteractionEnabled];
    v61 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@, operation = %{public}@, url = %{sensitive, mask.hash}@, httpHeaders = %{private}@, httpBody = %{private}@, auditToken = %{public}@, delegate = %{public}@, enableEmbeddedAVC = %d, enableUI = %d on %@", buf, 0x72u);
  }

  if (_CFMZEnabled())
  {
    self->_enableEmbeddedAuthorizationViewController = 0;
  }

  if (![(SOAuthorization *)self isUserInteractionEnabled])
  {
    v14 = dispatch_get_global_queue(0, 0);
    [(SOAuthorizationCore *)self->_authorizationCore setDelegateDispatchQueue:v14];
  }

  if (self->_enableEmbeddedAuthorizationViewController && (v15 = objc_loadWeakRetained(&self->_delegate)) != 0 && (v16 = objc_loadWeakRetained(&self->_delegate), v17 = objc_opt_respondsToSelector(), v16, v15, (v17 & 1) != 0))
  {
    v19 = SO_LOG_SOAuthorization(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C1317000, v19, OS_LOG_TYPE_DEFAULT, "originator will present authorization view controller", buf, 2u);
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    requestParametersCore = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];

    if (requestParametersCore)
    {
      v23 = SO_LOG_SOAuthorization(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = selfCopy2;
        _os_log_impl(&dword_1C1317000, v23, OS_LOG_TYPE_DEFAULT, "%@ is already authorizing => ignoring a new authorization request", buf, 0xCu);
      }

      objc_sync_exit(selfCopy2);
    }

    else
    {
      objc_sync_exit(selfCopy2);

      cancelLock = [(SOAuthorization *)selfCopy2 cancelLock];
      objc_sync_enter(cancelLock);
      cancelled = [(SOAuthorization *)selfCopy2 cancelled];
      if (cancelled)
      {
        v26 = SO_LOG_SOAuthorization(cancelled);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [parametersCopy identifier];
          *buf = 138543362;
          *&buf[4] = identifier2;
          _os_log_impl(&dword_1C1317000, v26, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
        }

        v28 = [getSOErrorHelperClass_2() errorWithCode:-4];
        [(SOAuthorization *)selfCopy2 _finishAuthorizationWithCredential:0 error:v28];

        objc_sync_exit(cancelLock);
      }

      else
      {
        objc_sync_exit(cancelLock);

        v40 = 0;
        v41 = &v40;
        v42 = 0x2050000000;
        v29 = getSOAuthorizationRequestParametersCoreClass_softClass;
        v43 = getSOAuthorizationRequestParametersCoreClass_softClass;
        if (!getSOAuthorizationRequestParametersCoreClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getSOAuthorizationRequestParametersCoreClass_block_invoke;
          v45 = &unk_1E813E230;
          *v46 = &v40;
          __getSOAuthorizationRequestParametersCoreClass_block_invoke(buf);
          v29 = v41[3];
        }

        v30 = v29;
        _Block_object_dispose(&v40, 8);
        v31 = [[v29 alloc] initWithAuthorizationParameters:parametersCopy];
        authorizationOptions = [(SOAuthorization *)selfCopy2 authorizationOptions];
        [v31 setAuthorizationOptions:authorizationOptions];

        [v31 setEnableUserInteraction:{-[SOAuthorization isUserInteractionEnabled](selfCopy2, "isUserInteractionEnabled")}];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke;
        v37[3] = &unk_1E813E340;
        v37[4] = selfCopy2;
        v38 = v31;
        v39 = parametersCopy;
        v33 = v31;
        _os_activity_initiate(&dword_1C1317000, "beginAuthorizationWithParametersEmbedded", OS_ACTIVITY_FLAG_DEFAULT, v37);
      }
    }
  }

  else
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_43;
    activity_block[3] = &unk_1E813E390;
    activity_block[4] = self;
    v36 = parametersCopy;
    _os_activity_initiate(&dword_1C1317000, "beginAuthorizationWithParameters", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_2;
  v6[3] = &unk_1E813EC68;
  v4 = v2;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 beginAuthorizationWithRequestParameters:v4 completion:v6];
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = SO_LOG_SOAuthorization(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [a1[4] identifier];
    *buf = 138544130;
    v29 = v11;
    v30 = 2114;
    v31 = v7;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_1C1317000, v10, OS_LOG_TYPE_DEFAULT, "beginAuthorizationWithRequestParameters: identifier = %{public}@, extensionBundleId = %{public}@, endpoint = %{public}@, error = %{public}@", buf, 0x2Au);
  }

  v12 = a1[5];
  if (v7 && v8)
  {
    v13 = [v12 cancelLock];
    objc_sync_enter(v13);
    v14 = [a1[5] cancelled];
    if (v14)
    {
      v15 = SO_LOG_SOAuthorization(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [a1[6] identifier];
        *buf = 138543362;
        v29 = v16;
        _os_log_impl(&dword_1C1317000, v15, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
      }

      v17 = a1[5];
      v18 = [getSOErrorHelperClass_2() errorWithCode:-4];
      [v17 _finishAuthorizationWithCredential:0 error:v18];

      objc_sync_exit(v13);
    }

    else
    {
      objc_sync_exit(v13);

      v19 = +[SOExtensionManager sharedInstance];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_33;
      v23[3] = &unk_1E813EC40;
      v20 = a1[4];
      v21 = a1[5];
      v22 = a1[6];
      v24 = v20;
      v25 = v21;
      v26 = v22;
      v27 = v8;
      [v19 loadExtensionWithBundleIdentifier:v7 completion:v23];
    }
  }

  else
  {
    [v12 _finishAuthorizationWithCredential:0 error:v9];
  }
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_33(id *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOAuthorization(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1[4] identifier];
    v10 = [*(a1[5] + 2) localizedExtensionDisplayName];
    *buf = 138543874;
    v31 = v9;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v7;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "loadExtensionWithBundleIdentifier: identifier = %{public}@, extension = %{public}@, error = %{public}@", buf, 0x20u);
  }

  v11 = a1[5];
  if (v6)
  {
    v12 = [v11 cancelLock];
    objc_sync_enter(v12);
    v13 = [a1[5] cancelled];
    if (v13)
    {
      v14 = SO_LOG_SOAuthorization(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [a1[6] identifier];
        *buf = 138543362;
        v31 = v15;
        _os_log_impl(&dword_1C1317000, v14, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
      }

      v16 = a1[5];
      v17 = [getSOErrorHelperClass_2() errorWithCode:-4];
      [v16 _finishAuthorizationWithCredential:0 error:v17];

      objc_sync_exit(v12);
    }

    else
    {
      objc_sync_exit(v12);

      objc_storeStrong(a1[5] + 2, a2);
      v18 = a1[5];
      v19 = v18[2];
      v20 = [a1[4] identifier];
      [v19 saveDelegate:v18 forRequestIdentifier:v20];

      v21 = *(a1[5] + 2);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_34;
      v27[3] = &unk_1E813EC18;
      *&v22 = a1[4];
      *(&v22 + 1) = a1[5];
      v26 = v22;
      v23 = a1[6];
      v24 = a1[7];
      *&v25 = v23;
      *(&v25 + 1) = v24;
      v28 = v26;
      v29 = v25;
      [v21 requestAuthorizationViewControllerWithCompletion:v27];
    }
  }

  else
  {
    [v11 _finishAuthorizationWithCredential:0 error:v7];
  }
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = SO_LOG_SOAuthorization(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) identifier];
    *buf = 138543874;
    v25 = v9;
    v26 = 2114;
    v27 = v6;
    v28 = 2114;
    v29 = v7;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "requestAuthorizationViewControllerWithCompletion: identifier = %{public}@, remoteViewController = %{public}@, error = %{public}@", buf, 0x20u);
  }

  v10 = *(a1 + 40);
  if (v6)
  {
    v11 = [*(a1 + 40) cancelLock];
    objc_sync_enter(v11);
    v12 = [*(a1 + 40) cancelled];
    if (v12)
    {
      v13 = SO_LOG_SOAuthorization(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 48) identifier];
        *buf = 138543362;
        v25 = v14;
        _os_log_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEFAULT, "Request was cancelled: identifier = %{public}@", buf, 0xCu);
      }

      v15 = *(a1 + 40);
      v16 = [getSOErrorHelperClass_2() errorWithCode:-4];
      [v15 _finishAuthorizationWithCredential:0 error:v16];

      objc_sync_exit(v11);
    }

    else
    {
      objc_sync_exit(v11);

      objc_storeStrong((*(a1 + 40) + 24), a2);
      v17 = *(*(a1 + 40) + 16);
      v18 = *(a1 + 56);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_38;
      v21[3] = &unk_1E813EBF0;
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v22 = v19;
      v23 = v20;
      [v17 beginAuthorizationWithServiceXPCEndpoint:v18 completion:v21];
      v11 = v22;
    }
  }

  else
  {
    v11 = [getSOErrorHelperClass_2() errorWithCode:-1000 message:@"Missing remote view controller" suberror:v7];
    [v10 _finishAuthorizationWithCredential:0 error:v11];
  }
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_38(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SO_LOG_SOAuthorization(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v8 = 138543874;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1C1317000, v6, OS_LOG_TYPE_DEFAULT, "beginAuthorizationWithServiceXPCEndpoint: identifier = %{public}@, success = %d, error = %{public}@", &v8, 0x1Cu);
  }

  if ((a2 & 1) == 0)
  {
    [*(a1 + 40) _finishAuthorizationWithCredential:0 error:v5];
  }
}

void __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_43(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [*(a1 + 40) authorizationParametersCore];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__SOAuthorization_beginAuthorizationWithParameters___block_invoke_2_44;
  v4[3] = &unk_1E813EC90;
  v4[4] = *(a1 + 32);
  [v2 beginAuthorizationWithParameters:v3 completion:v4];
}

- (void)cancelAuthorization
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[SOAuthorization cancelAuthorization]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if (self->_extension)
  {
    cancelLock = [(SOAuthorization *)self cancelLock];
    objc_sync_enter(cancelLock);
    [(SOAuthorization *)self setCancelled:1];
    objc_sync_exit(cancelLock);

    [(SOAuthorization *)self _cancelAuthorization];
  }

  else
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    activity_block[2] = __38__SOAuthorization_cancelAuthorization__block_invoke;
    activity_block[3] = &unk_1E813ECB8;
    activity_block[4] = self;
    _os_activity_initiate(&dword_1C1317000, "cancelAuthorization", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

- (void)debugHintsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = SO_LOG_SOAuthorization(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[SOAuthorization debugHintsWithCompletion:]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SOAuthorization_debugHintsWithCompletion___block_invoke;
  v7[3] = &unk_1E813E450;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  _os_activity_initiate(&dword_1C1317000, "debugHintsWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v7);
}

- (void)_finishAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v8 = SO_LOG_SOAuthorization(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorization _finishAuthorization:completion:];
  }

  extension = self->_extension;
  if (extension)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__SOAuthorization__finishAuthorization_completion___block_invoke;
    v10[3] = &unk_1E813ECE0;
    v10[4] = self;
    v11 = completionCopy;
    [(SOExtension *)extension finishAuthorization:authorizationCopy completion:v10];
  }

  else
  {
    [(SOAuthorizationCore *)self->_authorizationCore finishAuthorization:authorizationCopy completion:completionCopy];
  }
}

void __51__SOAuthorization__finishAuthorization_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _extensionCleanup];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_cancelAuthorization
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestParametersCore = [(SOAuthorizationCore *)self->_authorizationCore requestParametersCore];
    extension = self->_extension;
    *buf = 136315906;
    v16 = "[SOAuthorization _cancelAuthorization]";
    v17 = 2114;
    v18 = requestParametersCore;
    v19 = 2114;
    v20 = extension;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s request = %{public}@, extension = %{public}@ on %@", buf, 0x2Au);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  requestParametersCore2 = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];
  v8 = requestParametersCore2 == 0;

  if (v8)
  {
    v13 = SO_LOG_SOAuthorization(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization _cancelAuthorization];
    }

    objc_sync_exit(selfCopy2);
  }

  else
  {
    objc_sync_exit(selfCopy2);

    v10 = selfCopy2->_extension;
    requestParametersCore3 = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];
    identifier = [requestParametersCore3 identifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__SOAuthorization__cancelAuthorization__block_invoke;
    v14[3] = &unk_1E813ED08;
    v14[4] = selfCopy2;
    [(SOExtension *)v10 cancelAuthorization:identifier completion:v14];
  }
}

void __39__SOAuthorization__cancelAuthorization__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v5 = a2;
    a2 = [objc_alloc(getSOAuthorizationCredentialCoreClass()) initWithAuthorizationCredential:v5];
  }

  [*(a1 + 32) _finishAuthorizationWithCredential:a2 error:v6];
}

- (void)_finishAuthorizationWithCredential:(id)credential error:(id)error
{
  v50 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  errorCopy = error;
  v8 = SO_LOG_SOAuthorization(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    requestParametersCore = [(SOAuthorizationCore *)self->_authorizationCore requestParametersCore];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    *buf = 136316419;
    *&buf[4] = "[SOAuthorization _finishAuthorizationWithCredential:error:]";
    *&buf[12] = 2113;
    *&buf[14] = credentialCopy;
    *&buf[22] = 2114;
    v44 = errorCopy;
    *v45 = 2114;
    *&v45[2] = requestParametersCore;
    v46 = 2114;
    v47 = WeakRetained;
    v48 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s credentialCore = %{private}@, error = %{public}@, requestParametersCore = %{public}@, delegate = %{public}@ on %@", buf, 0x3Eu);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  requestParametersCore2 = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];
  v13 = requestParametersCore2 == 0;

  if (v13)
  {
    v31 = SO_LOG_SOAuthorization(v14);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization _finishAuthorizationWithCredential:error:];
    }

    objc_sync_exit(selfCopy2);
  }

  else
  {
    if (selfCopy2->_extension || ![(SOAuthorization *)selfCopy2 isUserInteractionEnabled])
    {
      v25 = 0;
    }

    else
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2050000000;
      v15 = getSOConfigurationClientClass_softClass;
      v42 = getSOConfigurationClientClass_softClass;
      if (!getSOConfigurationClientClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getSOConfigurationClientClass_block_invoke;
        v44 = &unk_1E813E230;
        *v45 = &v39;
        __getSOConfigurationClientClass_block_invoke(buf);
        v15 = v40[3];
      }

      v16 = v15;
      _Block_object_dispose(&v39, 8);
      defaultClient = [v15 defaultClient];
      requestParametersCore3 = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];
      v19 = [requestParametersCore3 url];
      requestParametersCore4 = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];
      v21 = [defaultClient profileForURL:v19 responseCode:{objc_msgSend(requestParametersCore4, "responseCode")}];

      if (v21)
      {
        extensionBundleIdentifier = [v21 extensionBundleIdentifier];
        v24 = [SOExtensionManager isInternalExtensionBundleIdentifier:extensionBundleIdentifier];

        v25 = !v24;
      }

      else
      {
        v25 = 0;
      }

      v32 = SO_LOG_SOAuthorization(v22);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [SOAuthorization _finishAuthorizationWithCredential:error:];
      }
    }

    requestParametersCore5 = [(SOAuthorizationCore *)selfCopy2->_authorizationCore requestParametersCore];
    identifier = [requestParametersCore5 identifier];

    [(SOAuthorizationCore *)selfCopy2->_authorizationCore setRequestParametersCore:0];
    objc_sync_exit(selfCopy2);

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke;
    v35[3] = &unk_1E813E540;
    v35[4] = selfCopy2;
    v28 = identifier;
    v36 = v28;
    v37 = errorCopy;
    v38 = credentialCopy;
    v29 = MEMORY[0x1C68F1C40](v35);
    v30 = v29;
    if (v25)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67;
      v33[3] = &unk_1E813E450;
      v33[4] = selfCopy2;
      v34 = v29;
      dispatch_async(MEMORY[0x1E69E96A0], v33);
    }

    else
    {
      [(SOAuthorizationCore *)selfCopy2->_authorizationCore performBlockOnDelegateQueue:v29];
    }

    selfCopy2 = v28;
  }
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = (a1 + 48);
    if (*(a1 + 48))
    {
      if ([getSOErrorHelperClass_2() error:*v3 hasCode:-2])
      {
        v4 = objc_opt_respondsToSelector();
        if (v4)
        {
          v5 = SO_LOG_SOAuthorization(v4);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_4();
          }

          v4 = [v2 authorizationDidCancel:*(a1 + 32)];
        }

        goto LABEL_53;
      }

      if ([getSOErrorHelperClass_2() error:*v3 hasCode:-5])
      {
        v4 = objc_opt_respondsToSelector();
        if (v4)
        {
          v24 = SO_LOG_SOAuthorization(v4);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }
      }

      else
      {
        if (![getSOErrorHelperClass_2() error:*v3 hasCode:-9])
        {
          v4 = objc_opt_respondsToSelector();
          if (v4)
          {
            v29 = SO_LOG_SOAuthorization(v4);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_1();
            }

            v4 = [v2 authorization:*(a1 + 32) didCompleteWithError:*(a1 + 48)];
          }

          goto LABEL_53;
        }

        v4 = objc_opt_respondsToSelector();
        if (v4)
        {
          v24 = SO_LOG_SOAuthorization(v4);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
LABEL_25:
            __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_2();
          }

LABEL_26:

          v4 = [v2 authorizationDidNotHandle:*(a1 + 32)];
        }
      }

LABEL_53:
      v37 = SO_LOG_SOAuthorization(v4);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_12();
      }

      v8 = *(a1 + 32);
      v38 = *(a1 + 40);
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_66;
      v41[3] = &unk_1E813EBF0;
      v41[4] = v8;
      v9 = &v42;
      v10 = v38;
      v42 = v10;
      v11 = v41;
      goto LABEL_56;
    }

    v12 = *(a1 + 56);
    if (!v12)
    {
      v4 = objc_opt_respondsToSelector();
      if (v4)
      {
        v25 = SO_LOG_SOAuthorization(v4);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_11();
        }

        v4 = [v2 authorizationDidComplete:*(a1 + 32)];
      }

      goto LABEL_53;
    }

    v13 = [v12 secKeyProxyEndpoints];

    if (v13)
    {
      v4 = objc_opt_respondsToSelector();
      if ((v4 & 1) == 0)
      {
        goto LABEL_53;
      }

      v14 = *(*(a1 + 32) + 8);
      v15 = [*(a1 + 56) secKeyProxyEndpoints];
      v43 = 0;
      v16 = [v14 createSecKeysFromSecKeyProxyEndpoints:v15 error:&v43];
      v17 = v43;

      if (v16)
      {
        v19 = objc_alloc_init(SOAuthorizationResult);
        v20 = [*(a1 + 56) httpAuthorizationHeaders];
        [(SOAuthorizationResult *)v19 setHttpAuthorizationHeaders:v20];

        v21 = [*(a1 + 56) httpResponse];
        [(SOAuthorizationResult *)v19 setHttpResponse:v21];

        v22 = [*(a1 + 56) httpBody];
        [(SOAuthorizationResult *)v19 setHttpBody:v22];

        v23 = SO_LOG_SOAuthorization([(SOAuthorizationResult *)v19 setPrivateKeys:v16]);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_5();
        }

        [v2 authorization:*(a1 + 32) didCompleteWithAuthorizationResult:v19];
      }

      else
      {
        v34 = SO_LOG_SOAuthorization(v18);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_6(v17, v34);
        }

        v35 = objc_opt_respondsToSelector();
        if (v35)
        {
          v36 = SO_LOG_SOAuthorization(v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_7();
          }

          [v2 authorization:*(a1 + 32) didCompleteWithError:v17];
        }
      }
    }

    else
    {
      v26 = [*(a1 + 56) httpAuthorizationHeaders];

      if (v26)
      {
        v4 = objc_opt_respondsToSelector();
        if ((v4 & 1) == 0)
        {
          goto LABEL_53;
        }

        v27 = SO_LOG_SOAuthorization(v4);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_8();
        }

        v28 = *(a1 + 32);
        v17 = [*(a1 + 56) httpAuthorizationHeaders];
        [v2 authorization:v28 didCompleteWithHTTPAuthorizationHeaders:v17];
      }

      else
      {
        v30 = [*(a1 + 56) httpResponse];

        if (!v30)
        {
          v4 = objc_opt_respondsToSelector();
          if (v4)
          {
            v39 = [getSOErrorHelperClass_2() errorWithCode:-1000 message:@"Invalid credential"];
            v40 = SO_LOG_SOAuthorization(v39);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_7();
            }

            [v2 authorization:*(a1 + 32) didCompleteWithError:v39];
          }

          goto LABEL_53;
        }

        v4 = objc_opt_respondsToSelector();
        if ((v4 & 1) == 0)
        {
          goto LABEL_53;
        }

        v31 = SO_LOG_SOAuthorization(v4);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_9();
        }

        v32 = *(a1 + 32);
        v17 = [*(a1 + 56) httpResponse];
        v33 = [*(a1 + 56) httpBody];
        [v2 authorization:v32 didCompleteWithHTTPResponse:v17 httpBody:v33];
      }
    }

    goto LABEL_53;
  }

  v6 = SO_LOG_SOAuthorization(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_13();
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47;
  v44[3] = &unk_1E813EBF0;
  v44[4] = v8;
  v9 = &v45;
  v10 = v7;
  v45 = v10;
  v11 = v44;
LABEL_56:
  [v8 _finishAuthorization:v10 completion:v11];
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47(uint64_t a1)
{
  v1 = SO_LOG_SOAuthorization(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47_cold_1();
  }
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_66(uint64_t a1)
{
  v1 = SO_LOG_SOAuthorization(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47_cold_1();
  }
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 applicationState];

  if (v3)
  {
    v5 = SO_LOG_SOAuthorization(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67_cold_1();
    }

    v6 = MEMORY[0x1C68F1C40](*(a1 + 40));
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:*(a1 + 32) selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x1E69DDAB0] object:0];

    v10 = [MEMORY[0x1E69DC668] sharedApplication];
    v11 = [v10 applicationState];

    if (v11)
    {
      v12 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_71;
      block[3] = &unk_1E813ECB8;
      block[4] = *(a1 + 32);
      dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    }

    else
    {
      [*(a1 + 32) _applicationActivationWithTimeout:0];
    }
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 8);

    [v14 performBlockOnDelegateQueue:v13];
  }
}

- (void)applicationDidBecomeActive:(id)active
{
  v4 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOAuthorization applicationDidBecomeActive:];
  }

  [(SOAuthorization *)self _applicationActivationWithTimeout:0];
}

- (void)_applicationActivationWithTimeout:(BOOL)timeout
{
  if (self->_pendingFinishAuthorizationBlock)
  {
    v4 = SO_LOG_SOAuthorization(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization _applicationActivationWithTimeout:];
    }

    [(SOAuthorizationCore *)self->_authorizationCore performBlockOnDelegateQueue:self->_pendingFinishAuthorizationBlock];
    pendingFinishAuthorizationBlock = self->_pendingFinishAuthorizationBlock;
    self->_pendingFinishAuthorizationBlock = 0;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }
}

- (void)_extensionCleanup
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    extension = self->_extension;
    extensionViewController = self->_extensionViewController;
    authorizationViewController = self->_authorizationViewController;
    v11 = 136316162;
    v12 = "[SOAuthorization _extensionCleanup]";
    v13 = 2114;
    v14 = extension;
    v15 = 2114;
    v16 = extensionViewController;
    v17 = 2114;
    v18 = authorizationViewController;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s extension = %{public}@, extensionViewController = %{public}@, authorizationViewController = %{public}@ on %@", &v11, 0x34u);
  }

  v7 = self->_extension;
  if (v7)
  {
    [(SOExtension *)v7 unload];
    v8 = self->_extension;
    self->_extension = 0;
  }

  v9 = self->_extensionViewController;
  self->_extensionViewController = 0;

  v10 = self->_authorizationViewController;
  self->_authorizationViewController = 0;
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  credentialCopy = credential;
  errorCopy = error;
  v9 = SO_LOG_SOAuthorization(errorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315907;
    v12 = "[SOAuthorization authorization:didCompleteWithCredential:error:]";
    v13 = 2113;
    v14 = credentialCopy;
    v15 = 2114;
    v16 = errorCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "%s %{private}@, %{public}@ on %@", &v11, 0x2Au);
  }

  if (credentialCopy)
  {
    v10 = [objc_alloc(getSOAuthorizationCredentialCoreClass()) initWithAuthorizationCredential:credentialCopy];
  }

  else
  {
    v10 = 0;
  }

  [(SOAuthorization *)self _finishAuthorizationWithCredential:v10 error:errorCopy];
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  hintsCopy = hints;
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = SO_LOG_SOAuthorization(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:]";
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v13 = getSOUIAuthorizationViewControllerClass_softClass;
    v28 = getSOUIAuthorizationViewControllerClass_softClass;
    if (!getSOUIAuthorizationViewControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSOUIAuthorizationViewControllerClass_block_invoke;
      v30 = &unk_1E813E230;
      v31 = &v25;
      __getSOUIAuthorizationViewControllerClass_block_invoke(buf);
      v13 = v26[3];
    }

    v14 = v13;
    _Block_object_dispose(&v25, 8);
    v15 = [[v13 alloc] initWithExtensionViewController:self->_extensionViewController hints:hintsCopy];
    authorizationViewController = self->_authorizationViewController;
    self->_authorizationViewController = v15;

    v17 = SO_LOG_SOAuthorization([(SOUIAuthorizationViewController *)self->_authorizationViewController setDelegate:self]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:];
    }

    v19 = SO_LOG_SOAuthorization(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:];
    }

    v20 = self->_authorizationViewController;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke;
    v23[3] = &unk_1E813E6A8;
    v24 = completionCopy;
    [WeakRetained authorization:self presentViewController:v20 withCompletion:v23];
    v21 = v24;
    goto LABEL_15;
  }

  v22 = SO_LOG_SOAuthorization(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [SOAuthorization presentAuthorizationViewControllerWithHints:requestIdentifier:completion:];
  }

  if (completionCopy)
  {
    v21 = [getSOErrorHelperClass_2() internalErrorWithMessage:@"no authorization delegate"];
    (*(completionCopy + 2))(completionCopy, 0, v21);
LABEL_15:
  }
}

void __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = SO_LOG_SOAuthorization(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __92__SOAuthorization_presentAuthorizationViewControllerWithHints_requestIdentifier_completion___block_invoke_cold_1();
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (void)viewControllerDidCancel:(id)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v5 = SO_LOG_SOAuthorization(cancelCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    authorizationViewController = self->_authorizationViewController;
    v7 = 136315906;
    v8 = "[SOAuthorization viewControllerDidCancel:]";
    v9 = 2114;
    v10 = cancelCopy;
    v11 = 2114;
    v12 = authorizationViewController;
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s viewController = %{public}@, authorizationViewController = %{public}@ on %@", &v7, 0x2Au);
  }

  if (self->_authorizationViewController == cancelCopy)
  {
    [(SOAuthorization *)self _cancelAuthorization];
  }
}

- (SOAuthorizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)isExtensionProcessWithAuditToken:(id *)token completion:(id)completion
{
  completionCopy = completion;
  if (AppSSOCoreLibraryCore(0))
  {
    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 3221225472;
    v6 = *&token->var0[4];
    v10 = *token->var0;
    v11 = v6;
    activity_block[2] = __72__SOAuthorization_Process__isExtensionProcessWithAuditToken_completion___block_invoke;
    activity_block[3] = &unk_1E813ED30;
    v9 = completionCopy;
    _os_activity_initiate(&dword_1C1317000, "isExtensionProcessWithAuditToken", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }

  else
  {
    v7 = SO_LOG_SOAuthorization(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SOAuthorization canPerformAuthorizationWithURL:responseCode:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

uint64_t __72__SOAuthorization_Process__isExtensionProcessWithAuditToken_completion___block_invoke(uint64_t a1)
{
  SOAuthorizationCoreClass = getSOAuthorizationCoreClass();
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  return [SOAuthorizationCoreClass isExtensionProcessWithAuditToken:v6 completion:v3];
}

- (id)realms
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOAuthorization(Kerberos) realms]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  realms = [(SOAuthorizationCore *)self->_authorizationCore realms];

  return realms;
}

- (id)kerberosProfiles
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorization(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[SOAuthorization(Kerberos) kerberosProfiles]";
    v8 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v6, 0x16u);
  }

  kerberosProfiles = [(SOAuthorizationCore *)self->_authorizationCore kerberosProfiles];

  return kerberosProfiles;
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_6(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "failed to create SecKeys from SecKeyProxyEndpoints: %{public}@", &v2, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_9()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_12()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(&dword_1C1317000, v0, OS_LOG_TYPE_ERROR, "no SPI authorization delegate, identifier = %{public}@", v1, 0xCu);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_47_cold_1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __60__SOAuthorization__finishAuthorizationWithCredential_error___block_invoke_67_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_applicationActivationWithTimeout:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)presentAuthorizationViewControllerWithHints:requestIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)presentAuthorizationViewControllerWithHints:requestIdentifier:completion:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end