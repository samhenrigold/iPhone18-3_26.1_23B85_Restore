@interface ASWebAuthenticationSession
+ (void)handleSSOExtensionIdentifier:(id *)identifier;
- (ASWebAuthenticationSession)initWithURL:(id)l callback:(id)callback usingEphemeralSession:(BOOL)session jitEnabled:(BOOL)enabled completionHandler:(id)handler;
- (ASWebAuthenticationSession)initWithURL:(id)l callbackURLScheme:(id)scheme usingEphemeralSession:(BOOL)session jitEnabled:(BOOL)enabled completionHandler:(id)handler;
- (BOOL)_areAdditionalHeaderFieldsValid:(id)valid;
- (BOOL)_isForbiddenHeaderFieldName:(id)name value:(id)value;
- (BOOL)_startDryRun:(BOOL)run;
- (BOOL)_validateAdditionalHeaderFieldsDryRun:(BOOL)run;
- (id)presentationAnchorForAuthorizationController:(id)controller;
- (id)presentationContextProvider;
- (void)_cancelWithError:(id)error;
- (void)_setNetworkAttributionApplicationBundleIdentifier:(id)identifier;
- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization;
- (void)authorizationController:(id)controller didCompleteWithError:(id)error;
- (void)cancel;
- (void)setPrefersEphemeralWebBrowserSession:(BOOL)prefersEphemeralWebBrowserSession;
- (void)setProxiedAssociatedDomains:(id)domains;
@end

@implementation ASWebAuthenticationSession

- (ASWebAuthenticationSession)initWithURL:(id)l callbackURLScheme:(id)scheme usingEphemeralSession:(BOOL)session jitEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  sessionCopy = session;
  handlerCopy = handler;
  lCopy = l;
  v14 = [ASWebAuthenticationSessionCallback callbackWithCustomScheme:scheme];
  v15 = [(ASWebAuthenticationSession *)self initWithURL:lCopy callback:v14 usingEphemeralSession:sessionCopy jitEnabled:enabledCopy completionHandler:handlerCopy];

  return v15;
}

- (ASWebAuthenticationSession)initWithURL:(id)l callback:(id)callback usingEphemeralSession:(BOOL)session jitEnabled:(BOOL)enabled completionHandler:(id)handler
{
  enabledCopy = enabled;
  sessionCopy = session;
  v54[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  callbackCopy = callback;
  handlerCopy = handler;
  customScheme = [callbackCopy customScheme];
  v16 = [customScheme containsString:@":"];
  if ((v16 & 1) != 0 || (v16 = [customScheme containsString:@"/"], v16))
  {
    v18 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [ASWebAuthenticationSession initWithURL:v18 callback:? usingEphemeralSession:? jitEnabled:? completionHandler:?];
    }

    if (dyld_program_sdk_at_least())
    {
      v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The provided scheme is not valid. A scheme should not include special characters such as : or /." userInfo:0];
      objc_exception_throw(v39);
    }
  }

  v44.receiver = self;
  v44.super_class = ASWebAuthenticationSession;
  v19 = [(ASWebAuthenticationSession *)&v44 init];
  if (v19)
  {
    objc_initWeak(&location, v19);
    v20 = _Block_copy(handlerCopy);
    originalCompletionHandler = v19->_originalCompletionHandler;
    v19->_originalCompletionHandler = v20;

    [(ASWebAuthenticationSession *)v19 setPrefersEphemeralWebBrowserSession:sessionCopy];
    v22 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:lCopy];
    ssoProvider = v19->_ssoProvider;
    v19->_ssoProvider = v22;

    if ([(ASAuthorizationSingleSignOnProvider *)v19->_ssoProvider canPerformAuthorization])
    {
      safari_isEligibleforDirectSSO = [lCopy safari_isEligibleforDirectSSO];
      if (safari_isEligibleforDirectSSO)
      {
        v26 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession(safari_isEligibleforDirectSSO, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1C8D000, v26, OS_LOG_TYPE_DEFAULT, "Sending request direct to SSO extension.", buf, 2u);
        }

        createRequest = [(ASAuthorizationSingleSignOnProvider *)v19->_ssoProvider createRequest];
        [createRequest setRequestedOperation:@"direct_request"];
        v28 = [ASAuthorizationController alloc];
        v54[0] = createRequest;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
        v30 = [(ASAuthorizationController *)v28 initWithAuthorizationRequests:v29];
        authorizationController = v19->_authorizationController;
        v19->_authorizationController = v30;

        [(ASAuthorizationController *)v19->_authorizationController setDelegate:v19];
        [(ASAuthorizationController *)v19->_authorizationController setPresentationContextProvider:v19];
        objc_storeStrong(&v19->_callback, callback);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __102__ASWebAuthenticationSession_initWithURL_callback_usingEphemeralSession_jitEnabled_completionHandler___block_invoke;
    aBlock[3] = &unk_1E7AF8E28;
    objc_copyWeak(&v42, &location);
    v41 = handlerCopy;
    v32 = _Block_copy(aBlock);
    v50 = 0;
    v51 = &v50;
    v52 = 0x2050000000;
    v33 = getSFAuthenticationSessionClass_softClass;
    v53 = getSFAuthenticationSessionClass_softClass;
    if (!getSFAuthenticationSessionClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __getSFAuthenticationSessionClass_block_invoke;
      v48 = &unk_1E7AF7948;
      v49 = &v50;
      __getSFAuthenticationSessionClass_block_invoke(buf);
      v33 = v51[3];
    }

    v34 = v33;
    _Block_object_dispose(&v50, 8);
    v35 = [[v33 alloc] initWithURL:lCopy callback:callbackCopy storageMode:v19->_storageMode jitEnabled:enabledCopy completionHandler:v32];
    authenticationSession = v19->_authenticationSession;
    v19->_authenticationSession = v35;

    v37 = v19;
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  return v19;
}

void __102__ASWebAuthenticationSession_initWithURL_callback_usingEphemeralSession_jitEnabled_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invalidate];

  v8 = *(a1 + 32);
  v9 = v5;
  v15 = v9;
  if (v9)
  {
    v10 = [v9 domain];
    v11 = [v10 isEqualToString:@"com.apple.AuthenticationServices.WebAuthenticationSession"];

    if (v11)
    {
      v12 = v15;
    }

    else
    {
      v14 = [v15 code] == 1;
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.WebAuthenticationSession" code:v14 userInfo:0];
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  (*(v8 + 16))(v8, v6, v13);
}

- (BOOL)_startDryRun:(BOOL)run
{
  runCopy = run;
  v29[1] = *MEMORY[0x1E69E9840];
  [(SFAuthenticationSession *)self->_authenticationSession setStorageMode:self->_storageMode];
  v5 = [(NSDictionary *)self->_additionalHeaderFields copy];
  [(SFAuthenticationSession *)self->_authenticationSession setAdditionalHeaderFields:v5];

  if (self->_originalCompletionHandler)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);
    v7 = [WeakRetained presentationAnchorForWebAuthenticationSession:self];

    if (!dyld_program_sdk_at_least() || [(ASWebAuthenticationSession *)self _skipPresentationAnchorCheck])
    {
      goto LABEL_4;
    }

    if (v7)
    {
      windowScene = [v7 windowScene];
      if (![windowScene activationState])
      {

        goto LABEL_4;
      }

      IsExtension = _UIApplicationIsExtension();

      if (IsExtension)
      {
        goto LABEL_4;
      }

      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A278];
      v26 = *MEMORY[0x1E696A278];
      v27 = @"The UIWindowScene for the returned window was not in the foreground active state.";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v15 = v12;
      v16 = 3;
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A278];
      v28 = *MEMORY[0x1E696A278];
      v29[0] = @"Cannot start ASWebAuthenticationSession without providing presentation context. Set presentationContextProvider before calling -start.";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v15 = v17;
      v16 = 2;
    }

    v18 = [v15 errorWithDomain:@"com.apple.AuthenticationServices.WebAuthenticationSession" code:v16 userInfo:v14];

    if (!v18)
    {
      goto LABEL_4;
    }

    if (!runCopy)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v21 = [bundleIdentifier hasPrefix:@"com.apple."];

      if (v21)
      {
        v24 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(ASWebAuthenticationSession *)v24 _startDryRun:v18, v13];
        }

LABEL_4:
        if ([(ASWebAuthenticationSession *)self _validateAdditionalHeaderFieldsDryRun:runCopy])
        {
          v8 = dyld_program_minos_at_least();
          if (!runCopy && v8)
          {
            objc_storeStrong(&self->_referenceToSelf, self);
          }

          if (self->_authorizationController && [(ASAuthorizationSingleSignOnProvider *)self->_ssoProvider canPerformAuthorization])
          {
            if (!runCopy)
            {
              [(ASAuthorizationController *)self->_authorizationController performRequests];
            }

            v9 = 1;
            goto LABEL_32;
          }

          v9 = [(SFAuthenticationSession *)self->_authenticationSession startASWebAuthenticationSessionInWindow:v7 dryRun:runCopy];
          if ((v9 & 1) != 0 || runCopy)
          {
LABEL_32:

            return v9;
          }

          [(ASWebAuthenticationSession *)self _invalidate];
        }

LABEL_31:
        v9 = 0;
        goto LABEL_32;
      }

      [(ASWebAuthenticationSession *)self _cancelWithError:v18];
    }

    goto LABEL_31;
  }

  return 0;
}

- (void)cancel
{
  ssoProvider = self->_ssoProvider;
  self->_ssoProvider = 0;

  authorizationController = self->_authorizationController;
  self->_authorizationController = 0;

  [(ASWebAuthenticationSession *)self _invalidate];
  authenticationSession = self->_authenticationSession;

  [(SFAuthenticationSession *)authenticationSession cancel];
}

- (void)setPrefersEphemeralWebBrowserSession:(BOOL)prefersEphemeralWebBrowserSession
{
  v3 = prefersEphemeralWebBrowserSession;
  if (([(SFAuthenticationSession *)self->_authenticationSession isSessionStarted]& 1) == 0)
  {
    self->_storageMode = v3;
  }
}

- (void)setProxiedAssociatedDomains:(id)domains
{
  domainsCopy = domains;
  if (([(SFAuthenticationSession *)self->_authenticationSession isSessionStarted]& 1) == 0)
  {
    [(SFAuthenticationSession *)self->_authenticationSession setProxiedAssociatedDomains:domainsCopy];
  }
}

- (void)_setNetworkAttributionApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(SFAuthenticationSession *)self->_authenticationSession isSessionStarted]& 1) == 0)
  {
    [(SFAuthenticationSession *)self->_authenticationSession _setNetworkAttributionApplicationBundleIdentifier:identifierCopy];
  }
}

- (void)_cancelWithError:(id)error
{
  (*(self->_originalCompletionHandler + 2))();
  originalCompletionHandler = self->_originalCompletionHandler;
  self->_originalCompletionHandler = 0;
}

- (void)authorizationController:(id)controller didCompleteWithError:(id)error
{
  errorCopy = error;
  ssoProvider = self->_ssoProvider;
  self->_ssoProvider = 0;

  authorizationController = self->_authorizationController;
  self->_authorizationController = 0;

  if ([errorCopy safari_matchesErrorDomain:@"com.apple.AuthenticationServices.AuthorizationError" andCode:1003])
  {
    [(ASWebAuthenticationSession *)self performSelectorOnMainThread:sel__startDryRun_ withObject:MEMORY[0x1E695E110] waitUntilDone:0];
  }

  else
  {
    (*(self->_originalCompletionHandler + 2))();
    [(ASWebAuthenticationSession *)self _invalidate];
  }
}

- (void)authorizationController:(id)controller didCompleteWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  ssoProvider = self->_ssoProvider;
  self->_ssoProvider = 0;

  authorizationController = self->_authorizationController;
  self->_authorizationController = 0;

  credential = [authorizationCopy credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    credential2 = [authorizationCopy credential];
    authenticatedResponse = [credential2 authenticatedResponse];
    v11 = [authenticatedResponse URL];

    if ([(ASWebAuthenticationSessionCallback *)self->_callback matchesURL:v11])
    {
      (*(self->_originalCompletionHandler + 2))();
    }

    else
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
      (*(self->_originalCompletionHandler + 2))();
    }
  }

  else
  {
    credential2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
    (*(self->_originalCompletionHandler + 2))();
  }

  [(ASWebAuthenticationSession *)self _invalidate];
}

- (id)presentationAnchorForAuthorizationController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);
  v5 = [WeakRetained presentationAnchorForWebAuthenticationSession:self];

  return v5;
}

+ (void)handleSSOExtensionIdentifier:(id *)identifier
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__ASWebAuthenticationSession_handleSSOExtensionIdentifier___block_invoke;
  v6[3] = &__block_descriptor_64_e20_v20__0B8__NSError_12l;
  v3 = *&identifier->var0[4];
  v7 = *identifier->var0;
  v8 = v3;
  v4 = *&identifier->var0[4];
  v5[0] = *identifier->var0;
  v5[1] = v4;
  [MEMORY[0x1E698B128] isExtensionProcessWithAuditToken:v5 completion:v6];
}

void __59__ASWebAuthenticationSession_handleSSOExtensionIdentifier___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    *cfa = *(a1 + 32);
    v7 = *(a1 + 48);
    v3 = WBSApplicationIdentifierFromAuditToken();
    CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    [MEMORY[0x1E698B128] setOriginatorBundleIdentifier:{v3, 0, cfa[1], v7}];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v4 = MEMORY[0x1E698B128];

    [v4 setOriginatorBundleIdentifier:0];
  }
}

- (id)presentationContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);

  return WeakRetained;
}

- (BOOL)_validateAdditionalHeaderFieldsDryRun:(BOOL)run
{
  v15[1] = *MEMORY[0x1E69E9840];
  additionalHeaderFields = [(ASWebAuthenticationSession *)self additionalHeaderFields];
  v6 = [(ASWebAuthenticationSession *)self _areAdditionalHeaderFieldsValid:additionalHeaderFields];

  if (!v6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A588];
    v15[0] = @"One or more provided headers are invalid.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.AuthenticationServices.WebAuthenticationSession" code:1 userInfo:v8];

    v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationSession(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ASWebAuthenticationSession(Shared) *)v9 _validateAdditionalHeaderFieldsDryRun:v12];
      if (run)
      {
        goto LABEL_5;
      }
    }

    else if (run)
    {
LABEL_5:

      return v6;
    }

    [(ASWebAuthenticationSession *)self _cancelWithError:v9];
    goto LABEL_5;
  }

  return v6;
}

- (BOOL)_areAdditionalHeaderFieldsValid:(id)valid
{
  validCopy = valid;
  if ([validCopy count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__ASWebAuthenticationSession_Shared___areAdditionalHeaderFieldsValid___block_invoke;
    v7[3] = &unk_1E7AF8E88;
    v7[4] = self;
    v5 = [validCopy safari_containsEntryPassingTest:v7] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_isForbiddenHeaderFieldName:(id)name value:(id)value
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [&unk_1F28F0530 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(&unk_1F28F0530);
      }

      if ([nameCopy safari_isCaseInsensitiveEqualToString:*(*(&v19 + 1) + 8 * v8)])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [&unk_1F28F0530 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [&unk_1F28F0548 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (!v9)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v10 = v9;
    v11 = *v16;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(&unk_1F28F0548);
      }

      if ([nameCopy safari_hasCaseInsensitivePrefix:*(*(&v15 + 1) + 8 * v12)])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [&unk_1F28F0548 countByEnumeratingWithState:&v15 objects:v23 count:16];
        v13 = 0;
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v13 = 1;
LABEL_19:

  return v13;
}

- (void)_startDryRun:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 userInfo];
  v7 = [v6 objectForKeyedSubscript:a3];
  v8 = 138543362;
  v9 = v7;
  _os_log_error_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Please adopt the new API as soon as possible (rdar://50384281).", &v8, 0xCu);
}

@end