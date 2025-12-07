@interface SOHostExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (SOExtension)contextExtension;
- (id)remoteContextWithError:(id *)error;
- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error;
- (void)canOpenURL:(id)l completionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion;
- (void)presentRegistrationViewControllerWithCompletion:(id)completion;
- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SOHostExtensionContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_onceToken_0 != -1)
  {
    +[SOHostExtensionContext _extensionAuxiliaryHostProtocol];
  }

  v3 = _extensionAuxiliaryHostProtocol___interface_0;

  return v3;
}

uint64_t __57__SOHostExtensionContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  _extensionAuxiliaryHostProtocol___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F409E8C8];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_onceToken_0 != -1)
  {
    +[SOHostExtensionContext _extensionAuxiliaryVendorProtocol];
  }

  v3 = _extensionAuxiliaryVendorProtocol___interface_0;

  return v3;
}

uint64_t __59__SOHostExtensionContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  _extensionAuxiliaryVendorProtocol___interface_0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4091488];

  return MEMORY[0x1EEE66BB8]();
}

- (id)remoteContextWithError:(id *)error
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__3;
  v12 = __Block_byref_object_dispose__3;
  v13 = 0;
  _auxiliaryConnection = [(SOHostExtensionContext *)self _auxiliaryConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SOHostExtensionContext_remoteContextWithError___block_invoke;
  v7[3] = &unk_1E813E318;
  v7[4] = &v8;
  v5 = [_auxiliaryConnection synchronousRemoteObjectProxyWithErrorHandler:v7];

  if (error)
  {
    *error = v9[5];
  }

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __49__SOHostExtensionContext_remoteContextWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SO_LOG_SOHostExtensionContext(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__SOHostExtensionContext_remoteContextWithError___block_invoke_cold_1(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = SO_LOG_SOHostExtensionContext(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v15 = "[SOHostExtensionContext openURL:completionHandler:]";
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2117;
    v19 = lCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s URL: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__SOHostExtensionContext_openURL_completionHandler___block_invoke;
  v11[3] = &unk_1E813EE20;
  v12 = lCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = lCopy;
  [(SOHostExtensionContext *)self canOpenURL:v10 completionHandler:v11];
}

void __52__SOHostExtensionContext_openURL_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v24 = *MEMORY[0x1E699F940];
    v25[0] = @"com.apple.AppSSO.launch-origin";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v4 = [MEMORY[0x1E6963608] defaultWorkspace];
    v5 = *(a1 + 32);
    v15 = 0;
    v6 = [v4 openSensitiveURL:v5 withOptions:v3 error:&v15];
    v7 = v15;

    v9 = SO_LOG_SOHostExtensionContext(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      v17 = 1752392040;
      v11 = *(a1 + 32);
      *buf = 141558787;
      if (v6)
      {
        v10 = @"YES";
      }

      v18 = 2117;
      v19 = v11;
      v20 = 2114;
      v21 = v10;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_1C1317000, v9, OS_LOG_TYPE_DEFAULT, "opened URL %{sensitive, mask.hash}@: success = %{public}@, error = %{public}@", buf, 0x2Au);
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, v6);
    }
  }

  else
  {
    v13 = SO_LOG_SOHostExtensionContext(a1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __52__SOHostExtensionContext_openURL_completionHandler___block_invoke_cold_1(a1, v13);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 0);
    }
  }
}

- (void)canOpenURL:(id)l completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = SO_LOG_SOHostExtensionContext(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v17 = "[SOHostExtensionContext canOpenURL:completionHandler:]";
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2117;
    v21 = lCopy;
    v22 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v8, OS_LOG_TYPE_DEFAULT, "%s URL: %{sensitive, mask.hash}@ on %@", buf, 0x2Au);
  }

  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  v15 = 0;
  v10 = [defaultWorkspace isApplicationAvailableToOpenURL:lCopy error:&v15];
  v11 = v15;

  v13 = SO_LOG_SOHostExtensionContext(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    *buf = 141558787;
    v17 = 1752392040;
    v18 = 2117;
    if (v10)
    {
      v14 = @"YES";
    }

    v19 = lCopy;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    selfCopy = v11;
    _os_log_impl(&dword_1C1317000, v13, OS_LOG_TYPE_DEFAULT, "can open URL %{sensitive, mask.hash}@: result = %{public}@, error = %{public}@", buf, 0x2Au);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v10);
  }
}

- (void)presentAuthorizationViewControllerWithHints:(id)hints requestIdentifier:(id)identifier completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  hintsCopy = hints;
  v11 = SO_LOG_SOHostExtensionContext(hintsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SOHostExtensionContext presentAuthorizationViewControllerWithHints:requestIdentifier:completion:]";
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", &v13, 0x20u);
  }

  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension presentAuthorizationViewControllerWithHints:hintsCopy requestIdentifier:identifierCopy completion:completionCopy];
}

- (void)authorization:(id)authorization didCompleteWithCredential:(id)credential error:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  errorCopy = error;
  credentialCopy = credential;
  v11 = SO_LOG_SOHostExtensionContext(credentialCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SOHostExtensionContext authorization:didCompleteWithCredential:error:]";
    v15 = 2114;
    v16 = authorizationCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C1317000, v11, OS_LOG_TYPE_DEFAULT, "%s requestIdentifier: %{public}@ on %@", &v13, 0x20u);
  }

  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension authorization:authorizationCopy didCompleteWithCredential:credentialCopy error:errorCopy];
}

- (void)requestReauthenticationWithRequestIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension requestReauthenticationWithRequestIdentifier:identifierCopy completion:completionCopy];
}

- (void)presentRegistrationViewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  contextExtension = [(SOHostExtensionContext *)self contextExtension];
  [contextExtension presentRegistrationViewControllerWithCompletion:completionCopy];
}

- (SOExtension)contextExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_contextExtension);

  return WeakRetained;
}

void __49__SOHostExtensionContext_remoteContextWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "Error getting remote context %{public}@", &v2, 0xCu);
}

void __52__SOHostExtensionContext_openURL_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 141558275;
  v4 = 1752392040;
  v5 = 2117;
  v6 = v2;
  _os_log_error_impl(&dword_1C1317000, a2, OS_LOG_TYPE_ERROR, "can not open URL %{sensitive, mask.hash}@", &v3, 0x16u);
}

@end