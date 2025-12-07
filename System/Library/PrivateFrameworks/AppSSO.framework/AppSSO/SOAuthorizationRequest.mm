@interface SOAuthorizationRequest
- (BOOL)_isUserInterfaceAllowed;
- (NSData)auditTokenData;
- (NSData)httpBody;
- (NSDictionary)authorizationOptions;
- (NSDictionary)extensionData;
- (NSDictionary)httpHeaders;
- (NSString)callerBundleIdentifier;
- (NSString)callerTeamIdentifier;
- (NSString)localizedCallerDisplayName;
- (NSString)realm;
- (NSString)requestedOperation;
- (POLoginManager)loginManager;
- (SOAuthorizationRequest)initWithRequestParameters:(id)parameters remoteExtensionContext:(id)context;
- (id)_createSecKeyProxiesForSecKeys:(id)keys error:(id *)error;
- (id)_hostExtensionContext;
- (void)_completeFinishAuthorizationWithRequestIdentifier:(id)identifier error:(id)error;
- (void)_invalidateLoginManager;
- (void)cancel;
- (void)complete;
- (void)completeWithAuthorizationResult:(id)result;
- (void)completeWithError:(id)error;
- (void)completeWithHTTPAuthorizationHeaders:(id)headers;
- (void)completeWithHTTPResponse:(id)response httpBody:(id)body;
- (void)doNotHandle;
- (void)presentAuthorizationViewControllerWithHints:(id)hints completion:(id)completion;
@end

@implementation SOAuthorizationRequest

- (SOAuthorizationRequest)initWithRequestParameters:(id)parameters remoteExtensionContext:(id)context
{
  parametersCopy = parameters;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = SOAuthorizationRequest;
  v9 = [(SOAuthorizationRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestParameters, parameters);
    objc_storeWeak(&v10->_remoteExtensionContext, contextCopy);
  }

  return v10;
}

- (void)doNotHandle
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationRequest(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[SOAuthorizationRequest doNotHandle]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s extension API called on %@", &v11, 0x16u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  v4 = [getSOErrorHelperClass_1() errorWithCode:-5];
  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v6 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest doNotHandle];
    }

    canceledAuthorizationCredential = self->_canceledAuthorizationCredential;
    self->_canceledAuthorizationCredential = 0;

    v8 = v4;
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = v8;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:0 error:v4];
  }
}

- (void)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationRequest(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[SOAuthorizationRequest cancel]";
    v13 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s extension API called on %@", &v11, 0x16u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  v4 = [getSOErrorHelperClass_1() errorWithCode:-2];
  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v6 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest cancel];
    }

    canceledAuthorizationCredential = self->_canceledAuthorizationCredential;
    self->_canceledAuthorizationCredential = 0;

    v8 = v4;
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = v8;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:0 error:v4];
  }
}

- (void)complete
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOAuthorizationRequest(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[SOAuthorizationRequest complete]";
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v3, OS_LOG_TYPE_DEFAULT, "%s extension API called on %@", &v9, 0x16u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v5 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest complete];
    }

    canceledAuthorizationCredential = self->_canceledAuthorizationCredential;
    self->_canceledAuthorizationCredential = 0;

    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = 0;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:0 error:0];
  }
}

- (void)completeWithHTTPAuthorizationHeaders:(id)headers
{
  v37 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  v5 = SO_LOG_SOAuthorizationRequest(headersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    *buf = 136316163;
    v28 = "[SOAuthorizationRequest completeWithHTTPAuthorizationHeaders:]";
    v29 = 2114;
    v30 = identifier;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2117;
    v34 = headersCopy;
    v35 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extension API called, identifier = %{public}@, httpAuthorizationHeaders = %{sensitive, mask.hash}@ on %@", buf, 0x34u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = headersCopy;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v22}];
        v15 = [v14 description];
        v16 = [v13 description];
        [dictionary setObject:v15 forKeyedSubscript:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v17 = objc_alloc_init(getSOAuthorizationCredentialClass());
  [v17 setHttpAuthorizationHeaders:dictionary];
  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v19 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest completeWithHTTPAuthorizationHeaders:];
    }

    objc_storeStrong(&self->_canceledAuthorizationCredential, v17);
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = 0;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier2 = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier2 didCompleteWithCredential:v17 error:0];
  }
}

- (void)completeWithHTTPResponse:(id)response httpBody:(id)body
{
  v27 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  bodyCopy = body;
  v8 = SO_LOG_SOAuthorizationRequest(bodyCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136316419;
    v16 = "[SOAuthorizationRequest completeWithHTTPResponse:httpBody:]";
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2117;
    v20 = responseCopy;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2117;
    v24 = bodyCopy;
    v25 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s extension API called, httpResponse = %{sensitive, mask.hash}@, httpBody = %{sensitive, mask.hash}@ on %@", &v15, 0x3Eu);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  v9 = objc_alloc_init(getSOAuthorizationCredentialClass());
  [v9 setHttpResponse:responseCopy];
  if (bodyCopy)
  {
    [v9 setHttpBody:bodyCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    [v9 setHttpBody:v10];
  }

  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v12 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest completeWithHTTPResponse:httpBody:];
    }

    objc_storeStrong(&self->_canceledAuthorizationCredential, v9);
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = 0;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:v9 error:0];
  }
}

- (void)completeWithAuthorizationResult:(id)result
{
  v39 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = SO_LOG_SOAuthorizationRequest(resultCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315651;
    v34 = "[SOAuthorizationRequest completeWithAuthorizationResult:]";
    v35 = 2113;
    v36 = resultCopy;
    v37 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extension API called, completeWithAuthorizationResult = %{private}@ on %@", buf, 0x20u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  v6 = [objc_alloc(getSOAuthorizationCredentialClass()) initWithAuthorizationResult:resultCopy];
  privateKeys = [resultCopy privateKeys];
  v8 = [privateKeys count];

  if (!v8)
  {
    goto LABEL_13;
  }

  privateKeys2 = [resultCopy privateKeys];
  v31 = 0;
  v10 = [(SOAuthorizationRequest *)self _createSecKeyProxiesForSecKeys:privateKeys2 error:&v31];
  canceledAuthorizationError = v31;
  secKeyProxies = self->_secKeyProxies;
  self->_secKeyProxies = v10;

  if (self->_secKeyProxies)
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = self->_secKeyProxies;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        v19 = 0;
        do
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          endpoint = [*(*(&v27 + 1) + 8 * v19) endpoint];
          [array addObject:endpoint];

          ++v19;
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v17);
    }

    [v6 setSecKeyProxyEndpoints:array];
LABEL_13:
    isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
    if (isAuthorizationCanceled)
    {
      v22 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [SOAuthorizationRequest completeWithHTTPAuthorizationHeaders:];
      }

      objc_storeStrong(&self->_canceledAuthorizationCredential, v6);
      canceledAuthorizationError = self->_canceledAuthorizationError;
      self->_canceledAuthorizationError = 0;
    }

    else
    {
      canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
      identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
      [canceledAuthorizationError authorization:identifier didCompleteWithCredential:v6 error:0];
    }

    goto LABEL_21;
  }

  v24 = SO_LOG_SOAuthorizationRequest(v13);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [SOAuthorizationRequest completeWithAuthorizationResult:];
  }

  _hostExtensionContext = [(SOAuthorizationRequest *)self _hostExtensionContext];
  identifier2 = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
  [_hostExtensionContext authorization:identifier2 didCompleteWithCredential:0 error:canceledAuthorizationError];

LABEL_21:
}

- (void)completeWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = SO_LOG_SOAuthorizationRequest(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[SOAuthorizationRequest completeWithError:]";
    v14 = 2114;
    v15 = errorCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v5, OS_LOG_TYPE_DEFAULT, "%s extension API called, error = %{public}@ on %@", &v12, 0x20u);
  }

  [(SOAuthorizationRequest *)self _invalidateLoginManager];
  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v7 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [SOAuthorizationRequest completeWithError:];
    }

    canceledAuthorizationCredential = self->_canceledAuthorizationCredential;
    self->_canceledAuthorizationCredential = 0;

    v9 = errorCopy;
    canceledAuthorizationError = self->_canceledAuthorizationError;
    self->_canceledAuthorizationError = v9;
  }

  else
  {
    canceledAuthorizationError = [(SOAuthorizationRequest *)self _hostExtensionContext];
    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [canceledAuthorizationError authorization:identifier didCompleteWithCredential:0 error:errorCopy];
  }
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  hintsCopy = hints;
  completionCopy = completion;
  v8 = SO_LOG_SOAuthorizationRequest(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:]";
    v30 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s extension API called on %@", buf, 0x16u);
  }

  isAuthorizationCanceled = [(SOAuthorizationRequest *)self isAuthorizationCanceled];
  if (isAuthorizationCanceled)
  {
    v10 = SO_LOG_SOAuthorizationRequest(isAuthorizationCanceled);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:];
    }

    if (completionCopy)
    {
      v11 = [getSOErrorHelperClass_1() internalErrorWithMessage:@"Authorization has been already canceled"];
      completionCopy[2](completionCopy, 0, v11);
LABEL_22:
    }
  }

  else
  {
    isUserInteractionEnabled = [(SOAuthorizationRequestParameters *)self->_requestParameters isUserInteractionEnabled];
    if ((isUserInteractionEnabled & 1) == 0)
    {
      v16 = SO_LOG_SOAuthorizationRequest(isUserInteractionEnabled);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:];
      }

      if (completionCopy)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = getASAuthorizationErrorDomain();
        v19 = [v17 errorWithDomain:v18 code:1005 userInfo:0];
        completionCopy[2](completionCopy, 0, v19);
      }

      v11 = [getSOErrorHelperClass_1() errorWithCode:-12];
      v20 = SO_LOG_SOAuthorizationRequest(v11);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v11;
        _os_log_impl(&dword_1C1317000, v20, OS_LOG_TYPE_DEFAULT, "finish authorization with error: %{public}@", buf, 0xCu);
      }

      _hostExtensionContext = [(SOAuthorizationRequest *)self _hostExtensionContext];
      identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
      [_hostExtensionContext authorization:identifier didCompleteWithCredential:0 error:v11];

      goto LABEL_22;
    }

    _isUserInterfaceAllowed = [(SOAuthorizationRequest *)self _isUserInterfaceAllowed];
    if (_isUserInterfaceAllowed)
    {
      _hostExtensionContext2 = [(SOAuthorizationRequest *)self _hostExtensionContext];
      identifier2 = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke;
      v26[3] = &unk_1E813EA28;
      v26[4] = self;
      v27 = completionCopy;
      [_hostExtensionContext2 presentAuthorizationViewControllerWithHints:hintsCopy requestIdentifier:identifier2 completion:v26];

      v11 = v27;
      goto LABEL_22;
    }

    v23 = SO_LOG_SOAuthorizationRequest(_isUserInterfaceAllowed);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationRequest presentAuthorizationViewControllerWithHints:completion:];
    }

    if (completionCopy)
    {
      v24 = MEMORY[0x1E696ABC0];
      v11 = getASAuthorizationErrorDomain();
      v25 = [v24 errorWithDomain:v11 code:1001 userInfo:0];
      completionCopy[2](completionCopy, 0, v25);

      goto LABEL_22;
    }
  }
}

void __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 40))
  {
    if (v4 && [v4 code] == -8)
    {
      v6 = [v5 userInfo];
      v7 = [v6 objectForKeyedSubscript:@"Subcode"];

      if (v7)
      {
        v8 = [v7 intValue];
        if (v8 == 1)
        {
          v9 = SO_LOG_SOAuthorizationRequest(v8);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke_cold_1(a1, v9, v10, v11, v12, v13, v14, v15);
          }

          v16 = MEMORY[0x1E696ABC0];
          v17 = getASAuthorizationErrorDomain();
          v18 = [v16 errorWithDomain:v17 code:1001 userInfo:0];

          v5 = v18;
        }
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)_isUserInterfaceAllowed
{
  authorizationOptions = [(SOAuthorizationRequest *)self authorizationOptions];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr;
  v13 = getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr;
  if (!getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr)
  {
    v4 = AppSSOCoreLibrary_1();
    v11[3] = dlsym(v4, "SOAuthorizationOptionCoreNoUserInterface");
    getSOAuthorizationOptionCoreNoUserInterfaceSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    getASAuthorizationErrorDomain_cold_1();
    v9 = v8;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v5 = [authorizationOptions objectForKeyedSubscript:*v3];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue ^ 1;
}

- (id)_hostExtensionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteExtensionContext);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = 0;
    v4 = [WeakRetained hostContextWithError:&v9];
    v5 = v9;
    v6 = v5;
    if (!v4)
    {
      v7 = SO_LOG_SOAuthorizationRequest(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationRequest _hostExtensionContext];
      }
    }
  }

  else
  {
    v6 = SO_LOG_SOAuthorizationRequest(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SOAuthorizationRequest *)v6 _hostExtensionContext];
    }

    v4 = 0;
  }

  return v4;
}

- (void)_completeFinishAuthorizationWithRequestIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_remoteExtensionContext);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained completeFinishAuthorization:identifierCopy error:errorCopy];
  }

  else
  {
    v10 = SO_LOG_SOAuthorizationRequest(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SOAuthorizationRequest *)v10 _hostExtensionContext];
    }
  }
}

- (id)_createSecKeyProxiesForSecKeys:(id)keys error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = keysCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = CFGetTypeID(v11);
        TypeID = SecKeyGetTypeID();
        if (v12 != TypeID)
        {
          v17 = SO_LOG_SOAuthorizationRequest(TypeID);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [SOAuthorizationRequest _createSecKeyProxiesForSecKeys:error:];
          }

          v15 = obj;
          if (error)
          {
            v18 = MEMORY[0x1E696ABC0];
            v19 = getASAuthorizationErrorDomain();
            *error = [v18 errorWithDomain:v19 code:1002 userInfo:0];
          }

          v16 = 0;
          goto LABEL_15;
        }

        v14 = [objc_alloc(MEMORY[0x1E697AAB0]) initWithKey:v11];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke;
        v24[3] = &unk_1E813EA50;
        v24[4] = self;
        [v14 setClientConnectionHandler:v24];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_7;
        v23[3] = &unk_1E813EA50;
        v23[4] = self;
        [v14 setClientDisconnectionHandler:v23];
        [array addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = obj;

  v16 = array;
LABEL_15:

  return v16;
}

void __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = SO_LOG_SOAuthorizationRequest([*(a1 + 32) setSecKeyProxiesConnectedClients:{objc_msgSend(*(a1 + 32), "secKeyProxiesConnectedClients") + 1}]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_cold_1(a2, v6, [*(a1 + 32) secKeyProxiesConnectedClients]);
  }

  objc_sync_exit(v4);
}

void __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = SO_LOG_SOAuthorizationRequest([*(a1 + 32) setSecKeyProxiesConnectedClients:{objc_msgSend(*(a1 + 32), "secKeyProxiesConnectedClients") - 1}]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __63__SOAuthorizationRequest__createSecKeyProxiesForSecKeys_error___block_invoke_7_cold_1(a2, v8, [*(a1 + 32) secKeyProxiesConnectedClients]);
  }

  if (![*(a1 + 32) secKeyProxiesConnectedClients])
  {
    [*(a1 + 32) setSecKeyProxies:0];
    v6 = *(a1 + 32);
    v7 = [v6[1] identifier];
    [v6 _completeFinishAuthorizationWithRequestIdentifier:v7 error:0];
  }

  objc_sync_exit(v4);
}

- (void)_invalidateLoginManager
{
  loginManager = self->_loginManager;
  if (loginManager)
  {
    [(POLoginManager *)loginManager invalidate];
    v4 = self->_loginManager;
    self->_loginManager = 0;
  }
}

- (NSString)requestedOperation
{
  requestedOperation = [(SOAuthorizationRequestParameters *)self->_requestParameters requestedOperation];
  v3 = requestedOperation;
  if (requestedOperation)
  {
    v4 = requestedOperation;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSDictionary)httpHeaders
{
  httpHeaders = [(SOAuthorizationRequestParameters *)self->_requestParameters httpHeaders];
  v3 = httpHeaders;
  if (httpHeaders)
  {
    v4 = httpHeaders;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSData)httpBody
{
  httpBody = [(SOAuthorizationRequestParameters *)self->_requestParameters httpBody];
  v3 = httpBody;
  if (httpBody)
  {
    v4 = httpBody;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v5 = v4;

  return v5;
}

- (NSString)realm
{
  realm = [(SOAuthorizationRequestParameters *)self->_requestParameters realm];
  v3 = realm;
  if (realm)
  {
    v4 = realm;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSDictionary)extensionData
{
  extensionData = [(SOAuthorizationRequestParameters *)self->_requestParameters extensionData];
  v3 = extensionData;
  if (extensionData)
  {
    v4 = extensionData;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSString)callerBundleIdentifier
{
  callerBundleIdentifier = [(SOAuthorizationRequestParameters *)self->_requestParameters callerBundleIdentifier];
  v3 = callerBundleIdentifier;
  if (callerBundleIdentifier)
  {
    v4 = callerBundleIdentifier;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSData)auditTokenData
{
  auditTokenData = [(SOAuthorizationRequestParameters *)self->_requestParameters auditTokenData];
  v3 = auditTokenData;
  if (auditTokenData)
  {
    v4 = auditTokenData;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEF0]);
  }

  v5 = v4;

  return v5;
}

- (NSDictionary)authorizationOptions
{
  authorizationOptions = [(SOAuthorizationRequestParameters *)self->_requestParameters authorizationOptions];
  v3 = authorizationOptions;
  if (authorizationOptions)
  {
    v4 = authorizationOptions;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = v4;

  return v4;
}

- (NSString)callerTeamIdentifier
{
  callerTeamIdentifier = [(SOAuthorizationRequestParameters *)self->_requestParameters callerTeamIdentifier];
  v3 = callerTeamIdentifier;
  if (callerTeamIdentifier)
  {
    v4 = callerTeamIdentifier;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)localizedCallerDisplayName
{
  localizedCallerDisplayName = [(SOAuthorizationRequestParameters *)self->_requestParameters localizedCallerDisplayName];
  v3 = localizedCallerDisplayName;
  if (localizedCallerDisplayName)
  {
    v4 = localizedCallerDisplayName;
  }

  else
  {
    v4 = &stru_1F408B1A0;
  }

  v5 = v4;

  return &v4->isa;
}

- (POLoginManager)loginManager
{
  if ([(SOAuthorizationRequestParameters *)self->_requestParameters pssoAuthenticationMethod]== 1000)
  {
    v3 = 0;
  }

  else
  {
    if (!self->_loginManager)
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2050000000;
      v4 = getPOLoginManagerClass_softClass;
      v16 = getPOLoginManagerClass_softClass;
      if (!getPOLoginManagerClass_softClass)
      {
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __getPOLoginManagerClass_block_invoke;
        v12[3] = &unk_1E813E230;
        v12[4] = &v13;
        __getPOLoginManagerClass_block_invoke(v12);
        v4 = v14[3];
      }

      v5 = v4;
      _Block_object_dispose(&v13, 8);
      v6 = objc_alloc_init(v4);
      loginManager = self->_loginManager;
      self->_loginManager = v6;
    }

    _hostExtensionContext = [(SOAuthorizationRequest *)self _hostExtensionContext];
    [(POLoginManager *)self->_loginManager setHostExtensionContext:_hostExtensionContext];

    identifier = [(SOAuthorizationRequestParameters *)self->_requestParameters identifier];
    [(POLoginManager *)self->_loginManager setRequestIdentifier:identifier];

    extensionData = [(SOAuthorizationRequestParameters *)self->_requestParameters extensionData];
    [(POLoginManager *)self->_loginManager setExtensionData:extensionData];

    v3 = self->_loginManager;
  }

  return v3;
}

void __81__SOAuthorizationRequest_presentAuthorizationViewControllerWithHints_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_2_0(&dword_1C1317000, a2, a3, "%@, authorization wants to display UI but the device screen is locked", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end