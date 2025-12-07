@interface ASAuthorizationController
- (ASAuthorizationController)init;
- (ASAuthorizationController)initWithAuthorizationRequests:(NSArray *)authorizationRequests;
- (BOOL)_onlyHasAppleIDRequest:(id)request;
- (BOOL)_shouldConvertExtensionAndWebKitErrors;
- (id)_authKitRequestFromAppleIDRequest:(id)request;
- (id)_authKitRequests;
- (id)_authenticatedResponseFromHTTPResponse:(id)response httpBody:(id)body;
- (id)_authenticationServicesAgentProxy;
- (id)_authorizationFromAuthKitResult:(id)result;
- (id)_convertCoreErrorToPublicError:(id)error;
- (id)_convertCredentialProviderErrorToPublicError:(id)error;
- (id)_convertWebKitErrorToPublicError:(id)error;
- (id)_publicErrorFromAuthKitError:(id)error;
- (id)_requestContextWithRequests:(id)requests error:(id *)error;
- (id)delegate;
- (id)presentationContextProvider;
- (id)publicKeyAccountRegistrationOptionsForRequest:(id)request;
- (id)relyingPartyIdentifierForRequest:(id)request;
- (id)testOptionsIfNeeded;
- (void)_completeWithAuthorization:(id)authorization;
- (void)_failWithError:(id)error;
- (void)_finishAppSSO;
- (void)_performAuthKitRequests:(id)requests options:(unint64_t)options;
- (void)_performAuthorizationRequests:(id)requests requestStyle:(int64_t)style requestOptions:(unint64_t)options;
- (void)_performRequestsWithStyle:(int64_t)style options:(unint64_t)options;
- (void)_shouldConvertExtensionAndWebKitErrors;
- (void)authorization:(id)authorization didCompleteWithAuthorizationResult:(id)result;
- (void)authorization:(id)authorization didCompleteWithError:(id)error;
- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers;
- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body;
- (void)authorization:(id)authorization presentViewController:(id)controller withCompletion:(id)completion;
- (void)authorizationDidCancel:(id)cancel;
- (void)authorizationDidComplete:(id)complete;
- (void)authorizationDidNotHandle:(id)handle;
- (void)cancel;
- (void)deleteAllPasskeysForRelyingParty:(id)party completionHandler:(id)handler;
- (void)deletePasskeyForRelyingParty:(id)party withCredentialID:(id)d completionHandler:(id)handler;
- (void)getPasskeysDataForRelyingParty:(id)party withCompletionHandler:(id)handler;
- (void)performAutoFillAssistedRequests;
- (void)performRequestsWithOptions:(ASAuthorizationControllerRequestOptions)options;
- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)handler;
@end

@implementation ASAuthorizationController

- (ASAuthorizationController)init
{
  [(ASAuthorizationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ASAuthorizationController)initWithAuthorizationRequests:(NSArray *)authorizationRequests
{
  v6 = authorizationRequests;
  if (![(NSArray *)v6 count])
  {
    [(ASAuthorizationController *)a2 initWithAuthorizationRequests:?];
  }

  v10.receiver = self;
  v10.super_class = ASAuthorizationController;
  v7 = [(ASAuthorizationController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_authorizationRequests, authorizationRequests);
  }

  return v8;
}

- (void)_performRequestsWithStyle:(int64_t)style options:(unint64_t)options
{
  v66[1] = *MEMORY[0x1E69E9840];
  authorizationRequests = self->_authorizationRequests;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke;
  v63[3] = &__block_descriptor_40_e32_B16__0__ASAuthorizationRequest_8l;
  v63[4] = style;
  v47 = [(NSArray *)authorizationRequests safari_filterObjectsUsingBlock:v63];
  if ([v47 count])
  {
    if (style == 1)
    {
      v8 = @"%@ does not support AutoFill assistance.";
    }

    else
    {
      if (style != 2)
      {
        _authKitRequests = @"Unexpected failure.";
        goto LABEL_10;
      }

      v8 = @"%@ does not support conditional requests.";
    }

    v10 = MEMORY[0x1E696AEC0];
    firstObject = [v47 firstObject];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    _authKitRequests = [v10 stringWithFormat:v8, v13];

LABEL_10:
    v14 = MEMORY[0x1E696ABC0];
    v65 = *MEMORY[0x1E696A588];
    v66[0] = _authKitRequests;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v15];

    [(ASAuthorizationController *)self _failWithError:v16];
    goto LABEL_11;
  }

  if ([(ASAuthorizationController *)self _shouldPerformRequestsWithAuthKit:self->_authorizationRequests])
  {
    _authKitRequests = [(ASAuthorizationController *)self _authKitRequests];
    [(ASAuthorizationController *)self _performAuthKitRequests:_authKitRequests options:options];
  }

  else
  {
    _authKitRequests = [(ASAuthorizationController *)self _authorizationRequestsHandledByAuthenticationServicesDaemon:self->_authorizationRequests];
    if ([(__CFString *)_authKitRequests count])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke_2;
      block[3] = &unk_1E7AF8738;
      block[4] = self;
      _authKitRequests = _authKitRequests;
      v60 = _authKitRequests;
      styleCopy = style;
      optionsCopy = options;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v53 = 0;
      v54 = &v53;
      v55 = 0x3032000000;
      v56 = __Block_byref_object_copy__1;
      v57 = __Block_byref_object_dispose__1;
      v58 = 0;
      v17 = self->_authorizationRequests;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke_42;
      v52[3] = &unk_1E7AF8760;
      v52[4] = &v53;
      [(NSArray *)v17 enumerateObjectsUsingBlock:v52];
      v18 = v54[5];
      if (v18)
      {
        provider = [v18 provider];
        v20 = [provider url];
        appSSORequestURL = self->_appSSORequestURL;
        self->_appSSORequestURL = v20;

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        authorizationOptions = [v54[5] authorizationOptions];
        v24 = [authorizationOptions countByEnumeratingWithState:&v48 objects:v64 count:16];
        if (v24)
        {
          v25 = *v49;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v49 != v25)
              {
                objc_enumerationMutation(authorizationOptions);
              }

              v27 = *(*(&v48 + 1) + 8 * i);
              value = [v27 value];
              name = [v27 name];
              if (value)
              {
                v30 = value;
              }

              else
              {
                v30 = &stru_1F28DE020;
              }

              [dictionary setObject:v30 forKeyedSubscript:name];
            }

            v24 = [authorizationOptions countByEnumeratingWithState:&v48 objects:v64 count:16];
          }

          while (v24);
        }

        state = [v54[5] state];

        if (state)
        {
          state2 = [v54[5] state];
          [dictionary setObject:state2 forKeyedSubscript:@"state"];
        }

        nonce = [v54[5] nonce];

        if (nonce)
        {
          nonce2 = [v54[5] nonce];
          [dictionary setObject:nonce2 forKeyedSubscript:@"nonce"];
        }

        requestedScopes = [v54[5] requestedScopes];

        if (requestedScopes)
        {
          requestedScopes2 = [v54[5] requestedScopes];
          v37 = [requestedScopes2 componentsJoinedByString:@" "];
          [dictionary setObject:v37 forKeyedSubscript:@"scope"];
        }

        v38 = objc_alloc_init(MEMORY[0x1E698B130]);
        requestedOperation = [v54[5] requestedOperation];
        [v38 setOperation:requestedOperation];

        [v38 setUrl:self->_appSSORequestURL];
        v40 = [dictionary copy];
        [v38 setHttpHeaders:v40];

        v41 = objc_alloc_init(MEMORY[0x1E695DEF0]);
        [v38 setHttpBody:v41];

        [v38 setUseInternalExtensions:0];
        v42 = objc_alloc_init(MEMORY[0x1E698B128]);
        appSSOAuthorization = self->_appSSOAuthorization;
        self->_appSSOAuthorization = v42;

        v44 = [dictionary copy];
        [self->_appSSOAuthorization setAuthorizationOptions:v44];

        -[SOAuthorization setEnableUserInteraction:](self->_appSSOAuthorization, "setEnableUserInteraction:", [v54[5] isUserInterfaceEnabled]);
        [self->_appSSOAuthorization setDelegate:self];
        presentationContextProvider = [(ASAuthorizationController *)self presentationContextProvider];
        v46 = [presentationContextProvider presentationAnchorForAuthorizationController:self];
        [self->_appSSOAuthorization setEnableEmbeddedAuthorizationViewController:v46 != 0];

        [self->_appSSOAuthorization beginAuthorizationWithParameters:v38];
        _Block_object_dispose(&v53, 8);
      }

      else
      {
        _Block_object_dispose(&v53, 8);
      }
    }
  }

LABEL_11:
}

void __63__ASAuthorizationController__performRequestsWithStyle_options___block_invoke_42(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_performAuthKitRequests:(id)requests options:(unint64_t)options
{
  optionsCopy = options;
  v6 = MEMORY[0x1E698DD58];
  requestsCopy = requests;
  v8 = objc_alloc_init(v6);
  [v8 setCredentialRequests:requestsCopy];

  [v8 setRequestOptions:optionsCopy & 1];
  v9 = objc_alloc_init(MEMORY[0x1E698DCE0]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ASAuthorizationController__performAuthKitRequests_options___block_invoke;
  v10[3] = &unk_1E7AF8788;
  v10[4] = self;
  [v9 performAuthorizationWithContext:v8 completion:v10];
}

void __61__ASAuthorizationController__performAuthKitRequests_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 _authorizationFromAuthKitResult:a2];
    [*(a1 + 32) _completeWithAuthorization:?];
  }

  else
  {
    v4 = [v3 _publicErrorFromAuthKitError:?];
    [*(a1 + 32) _failWithError:?];
  }
}

- (id)_publicErrorFromAuthKitError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E698DB28]];

  if (v5)
  {
    code = [errorCopy code];
    if (code == -7089 || code == -7003)
    {
      v8 = 1001;
    }

    else
    {
      v8 = 1000;
    }
  }

  else
  {
    v8 = 1000;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v8 userInfo:0];

  return v9;
}

- (void)performAutoFillAssistedRequests
{
  v3 = _os_activity_create(&dword_1B1C8D000, "AutoFill authorization request", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  authorizationActivity = self->_authorizationActivity;
  self->_authorizationActivity = v3;

  v5 = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__ASAuthorizationController_performAutoFillAssistedRequests__block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  os_activity_apply(v5, block);
}

- (void)getPasskeysDataForRelyingParty:(id)party withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  partyCopy = party;
  _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [_authenticationServicesAgentProxy getPasskeysDataForRelyingParty:partyCopy withCompletionHandler:handlerCopy];
}

- (void)deletePasskeyForRelyingParty:(id)party withCredentialID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  partyCopy = party;
  _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [_authenticationServicesAgentProxy deletePasskeyForRelyingParty:partyCopy withCredentialID:dCopy completionHandler:handlerCopy];
}

- (void)deleteAllPasskeysForRelyingParty:(id)party completionHandler:(id)handler
{
  handlerCopy = handler;
  partyCopy = party;
  _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [_authenticationServicesAgentProxy deleteAllPasskeysForRelyingParty:partyCopy completionHandler:handlerCopy];
}

- (void)preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [_authenticationServicesAgentProxy preflightCanCreateICloudKeychainPasskeyWithCompletionHandler:handlerCopy];
}

- (void)cancel
{
  _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
  [_authenticationServicesAgentProxy cancelCurrentRequest];
}

- (id)_authKitRequests
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  authorizationRequests = self->_authorizationRequests;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __45__ASAuthorizationController__authKitRequests__block_invoke;
  v11 = &unk_1E7AF87B0;
  selfCopy = self;
  v13 = v3;
  v5 = v3;
  [(NSArray *)authorizationRequests enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __45__ASAuthorizationController__authKitRequests__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [*(a1 + 32) _authKitRequestFromAppleIDRequest:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = objc_alloc_init(MEMORY[0x1E698DDB0]);
  }

  v4 = v3;
  [*(a1 + 40) addObject:v3];

LABEL_6:
}

- (id)_authKitRequestFromAppleIDRequest:(id)request
{
  v3 = MEMORY[0x1E698DD08];
  requestCopy = request;
  v5 = objc_alloc_init(v3);
  user = [requestCopy user];
  [v5 setUserIdentifier:user];

  state = [requestCopy state];
  [v5 setState:state];

  nonce = [requestCopy nonce];
  [v5 setNonce:nonce];

  array = [MEMORY[0x1E695DF70] array];
  requestedScopes = [requestCopy requestedScopes];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__ASAuthorizationController__authKitRequestFromAppleIDRequest___block_invoke;
  v13[3] = &unk_1E7AF87D8;
  v14 = array;
  v11 = array;
  [requestedScopes enumerateObjectsUsingBlock:v13];

  [v5 setRequestedScopes:v11];

  return v5;
}

void __63__ASAuthorizationController__authKitRequestFromAppleIDRequest___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqualToString:@"full_name"])
  {
    v3 = MEMORY[0x1E698DC00];
  }

  else
  {
    if (![v4 isEqualToString:@"email"])
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x1E698DBF8];
  }

  [*(a1 + 32) addObject:*v3];
LABEL_6:
}

- (id)_authorizationFromAuthKitResult:(id)result
{
  resultCopy = result;
  credential = [resultCopy credential];
  credential2 = [resultCopy credential];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    authenticationServicesCredential = [credential authenticationServicesCredential];
    v8 = off_1E7AF67B0;
LABEL_5:
    v14 = objc_alloc_init(*v8);
    goto LABEL_7;
  }

  credential3 = [resultCopy credential];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [ASPasswordCredential alloc];
    userIdentifier = [credential userIdentifier];
    password = [credential password];
    authenticationServicesCredential = [(ASPasswordCredential *)v11 initWithUser:userIdentifier password:password];

    v8 = off_1E7AF67C8;
    goto LABEL_5;
  }

  authenticationServicesCredential = 0;
  v14 = 0;
LABEL_7:
  v15 = [[ASAuthorization alloc] initWithProvider:v14 credential:authenticationServicesCredential];

  return v15;
}

- (void)_finishAppSSO
{
  appSSOAuthorization = self->_appSSOAuthorization;
  self->_appSSOAuthorization = 0;

  appSSORequestURL = self->_appSSORequestURL;
  self->_appSSORequestURL = 0;

  appSSOViewController = self->_appSSOViewController;
  if (appSSOViewController)
  {
    [(UIViewController *)appSSOViewController dismissViewControllerAnimated:1 completion:0];
    v6 = self->_appSSOViewController;
    self->_appSSOViewController = 0;

    appSSOPresentationAnchor = self->_appSSOPresentationAnchor;
    self->_appSSOPresentationAnchor = 0;
  }
}

- (id)_authenticatedResponseFromHTTPResponse:(id)response httpBody:(id)body
{
  responseCopy = response;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:body options:0 error:0];
  objc_opt_class();
  v7 = responseCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = responseCopy;
    if ([v6 count])
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      allHeaderFields = [responseCopy allHeaderFields];
      v10 = [allHeaderFields count];

      if (v10)
      {
        allHeaderFields2 = [responseCopy allHeaderFields];
        [dictionary addEntriesFromDictionary:allHeaderFields2];
      }

      [dictionary addEntriesFromDictionary:v6];
      v12 = objc_alloc(MEMORY[0x1E696AC68]);
      v13 = [responseCopy URL];
      v7 = [v12 initWithURL:v13 statusCode:objc_msgSend(responseCopy HTTPVersion:"statusCode") headerFields:{@"HTTP/1.1", dictionary}];
    }
  }

  return v7;
}

- (void)performRequestsWithOptions:(ASAuthorizationControllerRequestOptions)options
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = _os_activity_create(&dword_1B1C8D000, "Modal authorization request with options", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DETACHED);
  authorizationActivity = self->_authorizationActivity;
  self->_authorizationActivity = v5;

  v7 = [(NSArray *)self->_authorizationRequests safari_firstObjectPassingTest:&__block_literal_global_15];
  v8 = v7;
  if (v7 && [v7 requestStyle] == 1)
  {
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    authorizationRequests = self->_authorizationRequests;
    self->_authorizationRequests = v9;

    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASAuthorizationController_performRequestsWithOptions___block_invoke_2;
  block[3] = &unk_1E7AF8820;
  block[4] = self;
  block[5] = v11;
  block[6] = options;
  os_activity_apply(v12, block);
}

uint64_t __56__ASAuthorizationController_performRequestsWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)authorizationDidNotHandle:(id)handle
{
  if (dyld_program_sdk_at_least() & 1) != 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), WeakRetained, (isKindOfClass))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1003 userInfo:0];
    [(ASAuthorizationController *)self _failWithError:v6];
  }

  else
  {
    v6 = +[ASAuthorizationSingleSignOnCredential emptyCredential];
    v7 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
    v8 = [[ASAuthorization alloc] initWithProvider:v7 credential:v6];
    [(ASAuthorizationController *)self _completeWithAuthorization:v8];
  }

  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorizationDidCancel:(id)cancel
{
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1001 userInfo:0];
  [(ASAuthorizationController *)self _failWithError:v4];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorizationDidComplete:(id)complete
{
  v6 = +[ASAuthorizationSingleSignOnCredential emptyCredential];
  v4 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
  v5 = [[ASAuthorization alloc] initWithProvider:v4 credential:v6];
  [(ASAuthorizationController *)self _completeWithAuthorization:v5];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers
{
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
  [(ASAuthorizationController *)self _failWithError:v5];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body
{
  v9 = [(ASAuthorizationController *)self _authenticatedResponseFromHTTPResponse:response httpBody:body];
  if (v9)
  {
    v6 = [[ASAuthorizationSingleSignOnCredential alloc] initWithAuthenticatedResponse:v9];
    v7 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
    v8 = [[ASAuthorization alloc] initWithProvider:v7 credential:v6];
    [(ASAuthorizationController *)self _completeWithAuthorization:v8];
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
    [(ASAuthorizationController *)self _failWithError:v6];
  }

  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)authorization didCompleteWithAuthorizationResult:(id)result
{
  resultCopy = result;
  httpAuthorizationHeaders = [resultCopy httpAuthorizationHeaders];

  if (httpAuthorizationHeaders || ([resultCopy httpResponse], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && (objc_msgSend(resultCopy, "httpResponse"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(resultCopy, "httpBody"), v8 = objc_claimAutoreleasedReturnValue(), -[ASAuthorizationController _authenticatedResponseFromHTTPResponse:httpBody:](self, "_authenticatedResponseFromHTTPResponse:httpBody:", v7, v8), v6 = objc_claimAutoreleasedReturnValue(), v8, v7, !v6))
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1002 userInfo:0];
    [(ASAuthorizationController *)self _failWithError:v6];
    [(ASAuthorizationController *)self _finishAppSSO];
  }

  else
  {
    v9 = [ASAuthorizationSingleSignOnCredential alloc];
    privateKeys = [resultCopy privateKeys];
    v11 = [(ASAuthorizationSingleSignOnCredential *)v9 initWithAuthenticatedResponse:v6 privateKeys:privateKeys];

    v12 = [ASAuthorizationSingleSignOnProvider authorizationProviderWithIdentityProviderURL:self->_appSSORequestURL];
    v13 = [[ASAuthorization alloc] initWithProvider:v12 credential:v11];
    [(ASAuthorizationController *)self _completeWithAuthorization:v13];
    [(ASAuthorizationController *)self _finishAppSSO];
  }
}

- (void)authorization:(id)authorization didCompleteWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"com.apple.AuthenticationServices.AuthorizationError"];

  if (v6)
  {
    v7 = errorCopy;
  }

  else
  {
    if ([errorCopy safari_matchesErrorDomain:*MEMORY[0x1E698B140] andCode:-12])
    {
      v8 = 1005;
    }

    else
    {
      v8 = 1000;
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v8 userInfo:0];

    v7 = v9;
  }

  v11 = v7;
  [(ASAuthorizationController *)self _failWithError:v7];
  [(ASAuthorizationController *)self _finishAppSSO];
}

- (void)authorization:(id)authorization presentViewController:(id)controller withCompletion:(id)completion
{
  authorizationCopy = authorization;
  controllerCopy = controller;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke;
  aBlock[3] = &unk_1E7AF8848;
  v11 = completionCopy;
  v37 = v11;
  v12 = _Block_copy(aBlock);
  presentationContextProvider = [(ASAuthorizationController *)self presentationContextProvider];
  v14 = [presentationContextProvider presentationAnchorForAuthorizationController:self];
  appSSOPresentationAnchor = self->_appSSOPresentationAnchor;
  self->_appSSOPresentationAnchor = v14;

  if (self->_appSSOPresentationAnchor)
  {
    objc_storeStrong(&self->_appSSOViewController, controller);
    v16 = [MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:self->_appSSOPresentationAnchor];
    if (v16)
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__1;
      v34 = __Block_byref_object_dispose__1;
      v35 = 0;
      v17 = MEMORY[0x1E695DFF0];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_2;
      v27[3] = &unk_1E7AF8870;
      v29 = &v30;
      v18 = v12;
      v28 = v18;
      v19 = [v17 timerWithTimeInterval:0 repeats:v27 block:3.0];
      v20 = v31[5];
      v31[5] = v19;

      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [mainRunLoop addTimer:v31[5] forMode:*MEMORY[0x1E695DA28]];

      appSSOViewController = self->_appSSOViewController;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_94;
      v24[3] = &unk_1E7AF8898;
      v26 = &v30;
      v25 = v18;
      [v16 presentViewController:appSSOViewController animated:1 completion:v24];

      _Block_object_dispose(&v30, 8);
    }

    else
    {
      v23 = objc_alloc_init(MEMORY[0x1E69DD4B8]);
      [v23 _presentViewController:self->_appSSOViewController sendingView:0 animated:1];
      (*(v12 + 2))(v12, 1, 0);
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:0];
    (*(v12 + 2))(v12, 0, v16);
  }
}

uint64_t __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_2_cold_1(v3);
    }

    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }
}

void *__80__ASAuthorizationController_authorization_presentViewController_withCompletion___block_invoke_94(uint64_t a1)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    [result invalidate];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = *(*(a1 + 32) + 16);

    return v5();
  }

  return result;
}

- (BOOL)_onlyHasAppleIDRequest:(id)request
{
  requestCopy = request;
  if ([requestCopy count] == 1)
  {
    firstObject = [requestCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t __89__ASAuthorizationController__authorizationRequestsHandledByAuthenticationServicesDaemon___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)_performAuthorizationRequests:(id)requests requestStyle:(int64_t)style requestOptions:(unint64_t)options
{
  optionsCopy = options;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__ASAuthorizationController__performAuthorizationRequests_requestStyle_requestOptions___block_invoke;
  aBlock[3] = &unk_1E7AF88C0;
  aBlock[4] = self;
  requestsCopy = requests;
  v9 = _Block_copy(aBlock);
  v21 = 0;
  v10 = [(ASAuthorizationController *)self _requestContextWithRequests:requestsCopy error:&v21];

  v11 = v21;
  v13 = v11;
  if (v10)
  {
    authenticatedContext = [v10 authenticatedContext];

    if (authenticatedContext)
    {
      style = 2;
    }

    [v10 setRequestStyle:style];
    [v10 setRequestOptions:optionsCopy & 1];
    presentationContextProvider = [(ASAuthorizationController *)self presentationContextProvider];
    v16 = [presentationContextProvider presentationAnchorForAuthorizationController:self];

    windowScene = [v16 windowScene];
    _sceneIdentifier = [windowScene _sceneIdentifier];
    [v10 setWindowSceneIdentifier:_sceneIdentifier];

    if (style >= 2)
    {
      if (style != 2)
      {
LABEL_12:

        goto LABEL_13;
      }

      _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
      [_authenticationServicesAgentProxy performSilentAuthorizationRequestsForContext:v10 withCompletionHandler:v9];
    }

    else
    {
      _authenticationServicesAgentProxy = [(ASAuthorizationController *)self _authenticationServicesAgentProxy];
      [_authenticationServicesAgentProxy performAuthorizationRequestsForContext:v10 withCompletionHandler:v9];
    }

    goto LABEL_12;
  }

  v20 = WBS_LOG_CHANNEL_PREFIXAuthorization(v11, v12);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ASAuthorizationController _performAuthorizationRequests:v20 requestStyle:? requestOptions:?];
  }

  v9[2](v9, 0, v13);
LABEL_13:
}

void __87__ASAuthorizationController__performAuthorizationRequests_requestStyle_requestOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = [ASAuthorization authorizationFromCredential:a2];
    [v2 _completeWithAuthorization:v4];
  }

  else
  {
    v3 = *(a1 + 32);

    [v3 _failWithError:?];
  }
}

- (id)_authenticationServicesAgentProxy
{
  authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  if (!authenticationServicesAgentProxy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DFA0]);
    v5 = self->_authenticationServicesAgentProxy;
    self->_authenticationServicesAgentProxy = v4;

    authenticationServicesAgentProxy = self->_authenticationServicesAgentProxy;
  }

  return authenticationServicesAgentProxy;
}

- (id)_requestContextWithRequests:(id)requests error:(id *)error
{
  v109[1] = *MEMORY[0x1E69E9840];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  requestsCopy = requests;
  v5 = [requestsCopy countByEnumeratingWithState:&v77 objects:v97 count:16];
  if (!v5)
  {
    v72 = 0;
    v73 = 0;
    v71 = 0;
    v7 = 0;
    v74 = 0;
    v76 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_55;
  }

  v6 = v5;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  v7 = 0;
  v74 = 0;
  v76 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *v78;
  v75 = requestsCopy;
  v70 = *v78;
  do
  {
    v68 = v7;
    v12 = 0;
    do
    {
      if (*v78 != v11)
      {
        objc_enumerationMutation(requestsCopy);
      }

      v13 = *(*(&v77 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_alloc_init(MEMORY[0x1E698DD08]);

          user = [v13 user];
          [v16 setUserIdentifier:user];

          state = [v13 state];
          [v16 setState:state];

          nonce = [v13 nonce];
          [v16 setNonce:nonce];
          relyingPartyIdentifier = 0;
          v15 = 2;
          v9 = v16;
          requestsCopy = v75;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = v9;
            nonce = v13;
            coreCredentialCreationOptions = [nonce coreCredentialCreationOptions];

            relyingPartyIdentifier = [nonce relyingPartyIdentifier];
            attestationPreference = [nonce attestationPreference];
            v23 = [attestationPreference isEqualToString:@"none"];

            if ((v23 & 1) == 0)
            {
              attestationPreference2 = [nonce attestationPreference];
              v25 = [attestationPreference2 isEqualToString:@"enterprise"];

              if ((v25 & 1) == 0)
              {
                v57 = MEMORY[0x1E696ABC0];
                v95 = *MEMORY[0x1E696A578];
                v96 = @"Passkeys do not support attestation.";
                v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
                *error = [v57 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v58];

                v44 = 0;
                v59 = v75;
                relyingPartyIdentifier2 = v75;
                v76 = coreCredentialCreationOptions;
LABEL_84:
                requestsCopy = v59;
                v7 = v68;
                v41 = v72;
                v9 = v20;
                goto LABEL_80;
              }
            }

            v15 = 4;
            v76 = coreCredentialCreationOptions;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              nonce = v13;
              relyingPartyIdentifier = [nonce relyingPartyIdentifier];
              [nonce coreCredentialAssertionOptions];
              v26 = v20 = v9;

              authenticatedContext = [nonce authenticatedContext];

              v15 = 8;
              v72 = v26;
              v73 = authenticatedContext;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v65 = v9;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  nonce = v13;
                  relyingPartyIdentifier = [nonce relyingPartyIdentifier];
                  coreCredentialAssertionOptions = [nonce coreCredentialAssertionOptions];

                  v15 = 32;
                  v68 = coreCredentialAssertionOptions;
                }

                else
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  if ((isKindOfClass & 1) == 0)
                  {
                    v37 = WBS_LOG_CHANNEL_PREFIXAuthorization(isKindOfClass, v35);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      [(ASAuthorizationController *)v89 _requestContextWithRequests:v37 error:v13, &v90];
                    }

                    requestsCopy = v75;
                    goto LABEL_41;
                  }

                  nonce = v13;
                  v36 = [(ASAuthorizationController *)self publicKeyAccountRegistrationOptionsForRequest:nonce];

                  relyingPartyIdentifier = [(ASAuthorizationController *)self relyingPartyIdentifierForRequest:nonce];
                  if (!v36)
                  {
                    v63 = MEMORY[0x1E696ABC0];
                    v91 = *MEMORY[0x1E696A578];
                    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                    *error = [v63 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v64];

                    v71 = 0;
                    v44 = 0;
                    requestsCopy = v75;
                    relyingPartyIdentifier2 = v75;
                    v7 = v68;
                    v41 = v72;
                    v9 = v65;
                    goto LABEL_80;
                  }

                  v15 = 512;
                  v71 = v36;
                  requestsCopy = v75;
                }

                v9 = v65;
                goto LABEL_20;
              }

              v20 = v9;
              nonce = v13;
              coreCredentialCreationOptions2 = [nonce coreCredentialCreationOptions];

              supportedAlgorithmIdentifiers = [coreCredentialCreationOptions2 supportedAlgorithmIdentifiers];
              v30 = [supportedAlgorithmIdentifiers count];

              if (!v30)
              {
                v61 = MEMORY[0x1E696ABC0];
                v93 = *MEMORY[0x1E696A578];
                v94 = @"No algorithms specified for ASAuthorizationSecurityKeyPublicKeyCredentialRegistrationRequest.";
                v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                *error = [v61 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v62];

                v44 = 0;
                relyingPartyIdentifier = nonce;
                v59 = v75;
                relyingPartyIdentifier2 = v75;
                v74 = coreCredentialCreationOptions2;
                goto LABEL_84;
              }

              relyingPartyIdentifier = [nonce relyingPartyIdentifier];
              v15 = 16;
              v74 = coreCredentialCreationOptions2;
            }
          }

          requestsCopy = v75;
          v9 = v20;
          v11 = v70;
        }

LABEL_20:

        goto LABEL_21;
      }

      relyingPartyIdentifier = 0;
      v15 = 1;
LABEL_21:
      v31 = dyld_program_sdk_at_least();
      if ((v15 & v10) != 0 && v31)
      {
        v51 = v9;
        v52 = MEMORY[0x1E696ABC0];
        v108 = *MEMORY[0x1E696A578];
        v109[0] = @"Found duplicate requests. Only one of each type of request is currently supported.";
        v53 = MEMORY[0x1E695DF20];
        v54 = v109;
        v55 = &v108;
        goto LABEL_71;
      }

      if (v15 > 0x20)
      {
LABEL_33:
        if (v15 != 512)
        {
          goto LABEL_73;
        }

        if (v10)
        {
          v51 = v9;
          v52 = MEMORY[0x1E696ABC0];
          v98 = *MEMORY[0x1E696A578];
          v99 = @"Account registration requests cannot be used with other types of requests.";
          v53 = MEMORY[0x1E695DF20];
          v54 = &v99;
          v55 = &v98;
LABEL_71:
          v56 = [v53 dictionaryWithObjects:v54 forKeys:v55 count:1];
          *error = [v52 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v56];

LABEL_72:
          v9 = v51;
LABEL_73:
          v44 = 0;
          relyingPartyIdentifier2 = requestsCopy;
          v7 = v68;
          v41 = v72;
          goto LABEL_80;
        }

        goto LABEL_35;
      }

      if (((1 << v15) & 6) == 0)
      {
        if (((1 << v15) & 0x10010) != 0)
        {
          if ((v10 & 0x200) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v106 = *MEMORY[0x1E696A578];
            v107 = @"Account registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v107;
            v55 = &v106;
            goto LABEL_71;
          }

          if ((v10 & 0xFFFFFFFFFFFFFDEBLL) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v104 = *MEMORY[0x1E696A578];
            v105 = @"Registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v105;
            v55 = &v104;
            goto LABEL_71;
          }
        }

        else
        {
          if (((1 << v15) & 0x100000100) == 0)
          {
            goto LABEL_33;
          }

          if ((v10 & 0x200) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v102 = *MEMORY[0x1E696A578];
            v103 = @"Account registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v103;
            v55 = &v102;
            goto LABEL_71;
          }

          if ((v10 & 0x14) != 0)
          {
            v51 = v9;
            v52 = MEMORY[0x1E696ABC0];
            v100 = *MEMORY[0x1E696A578];
            v101 = @"Registration requests cannot be used with other types of requests.";
            v53 = MEMORY[0x1E695DF20];
            v54 = &v101;
            v55 = &v100;
            goto LABEL_71;
          }
        }
      }

LABEL_35:
      v10 |= v15;
      if (relyingPartyIdentifier && v8)
      {
        if (([relyingPartyIdentifier isEqualToString:v8] & 1) == 0)
        {
          v48 = MEMORY[0x1E696ABC0];
          v87 = *MEMORY[0x1E696A578];
          v88 = @"All Public Key Credential requests must use the same relyingPartyIdentifier.";
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
          v49 = v51 = v9;
          *error = [v48 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v49];

          goto LABEL_72;
        }
      }

      else if (!relyingPartyIdentifier)
      {
        goto LABEL_41;
      }

      v32 = relyingPartyIdentifier;

      v8 = v32;
LABEL_41:
      ++v12;
    }

    while (v6 != v12);
    v38 = [requestsCopy countByEnumeratingWithState:&v77 objects:v97 count:16];
    v6 = v38;
    v7 = v68;
  }

  while (v38);
LABEL_55:

  relyingPartyIdentifier2 = [v76 relyingPartyIdentifier];
  relyingPartyIdentifier3 = [v74 relyingPartyIdentifier];
  relyingPartyIdentifier = relyingPartyIdentifier3;
  if (relyingPartyIdentifier2 && relyingPartyIdentifier3 && ([relyingPartyIdentifier2 isEqualToString:relyingPartyIdentifier3] & 1) == 0)
  {
    v50 = MEMORY[0x1E696ABC0];
    v85 = *MEMORY[0x1E696A578];
    v86 = @"All Public Key Credential requests must use the same relyingPartyIdentifier.";
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
    [v50 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v43];
    *error = v44 = 0;
    v41 = v72;
    goto LABEL_79;
  }

  v41 = v72;
  if (!(v76 | v72 | v74 | v7 | v71) || v8)
  {
    v43 = [objc_alloc(MEMORY[0x1E698DFC0]) initWithRequestTypes:v10];
    v66 = v9;
    [v43 setAppleIDAuthorizationRequest:v9];
    [v43 setRelyingPartyIdentifier:v8];
    [v43 setPlatformKeyCredentialCreationOptions:v76];
    [v43 setPlatformKeyCredentialAssertionOptions:v72];
    [v43 setSecurityKeyCredentialCreationOptions:v74];
    [v43 setSecurityKeyCredentialAssertionOptions:v7];
    [v43 setPlatformAccountRegistrationOptions:v71];
    testOptionsIfNeeded = [(ASAuthorizationController *)self testOptionsIfNeeded];
    [v43 setTestOptions:testOptionsIfNeeded];

    [v43 setAuthenticatedContext:v73];
    [v43 setProxiedAppName:self->_proxiedAppName];
    [v43 setProxiedAppIdentifier:self->_proxiedAppIdentifier];
    [v43 setProxiedBundleIdentifier:self->_proxiedBundleIdentifier];
    [v43 setProxiedTeamIdentifier:self->_proxiedTeamIdentifier];
    [v43 setProxiedAssociatedDomains:self->_proxiedAssociatedDomains];
    [v43 setProxiedIconData:self->_proxiedIconData];
    [v43 setProxiedIconScale:self->_proxiedIconScale];
    [v43 setProxiedOriginDeviceName:self->_proxiedOriginDeviceName];
    [v43 setProxySheetHeaderOverride:self->_proxySheetHeaderOverride];
    [v43 setProxySheetTitleOverride:self->_proxySheetTitleOverride];
    [v43 setProxySheetSubtitleOverride:self->_proxySheetSubtitleOverride];
    [v43 setProxySheetNoCredentialsErrorTitleOverride:self->_proxySheetNoCredentialsErrorTitleOverride];
    [v43 setProxySheetNoCredentialsErrorMessageOverride:self->_proxySheetNoCredentialsErrorMessageOverride];
    [v43 setUseAlternativeSecurityKeysIcon:self->_useAlternativeSecurityKeysIcon];
    if (self->_proxySheetTitleOverride || self->_proxySheetSubtitleOverride || self->_useAlternativeSecurityKeysIcon)
    {
      if ((v10 & 0xFFFFFFFFFFFFFFCFLL) != 0)
      {
LABEL_66:
        v46 = MEMORY[0x1E696ABC0];
        v81 = *MEMORY[0x1E696A578];
        v82 = @"Proxy sheet overrides are only available for security key requests.";
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        *error = [v46 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v47];

        v41 = v72;
        v44 = 0;
LABEL_78:
        v9 = v66;
        goto LABEL_79;
      }
    }

    else if (self->_proxySheetHeaderOverride && (v10 & 0xFFFFFFFFFFFFFFCFLL) != 0)
    {
      goto LABEL_66;
    }

    *error = 0;
    v43 = v43;
    v44 = v43;
    goto LABEL_78;
  }

  v42 = MEMORY[0x1E696ABC0];
  v83 = *MEMORY[0x1E696A578];
  v84 = @"All Public Key Credential requests must specify a relyingPartyIdentifier.";
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  [v42 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v43];
  *error = v44 = 0;
LABEL_79:

LABEL_80:

  return v44;
}

- (id)_convertCoreErrorToPublicError:(id)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  code = [errorCopy code];
  v5 = 0;
  if (code <= 11)
  {
    if (!code)
    {
      v12 = MEMORY[0x1E696ABC0];
      userInfo = [errorCopy userInfo];
      v8 = v12;
      v9 = 1000;
      goto LABEL_17;
    }

    if (code != 1)
    {
      if (code != 2)
      {
        goto LABEL_18;
      }

LABEL_9:
      v10 = MEMORY[0x1E696ABC0];
      userInfo = [errorCopy userInfo];
      v8 = v10;
      v9 = 1001;
      goto LABEL_17;
    }

    v13 = MEMORY[0x1E696ABC0];
    userInfo2 = [errorCopy userInfo];
LABEL_16:
    userInfo = userInfo2;
    v8 = v13;
    v9 = 1004;
    goto LABEL_17;
  }

  if (code <= 16)
  {
    if (code != 12)
    {
      if (code != 14)
      {
        goto LABEL_18;
      }

      v6 = MEMORY[0x1E696ABC0];
      userInfo = [errorCopy userInfo];
      v8 = v6;
      v9 = 1002;
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (code == 17)
  {
    v13 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696AA08];
    v17[0] = errorCopy;
    userInfo2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    goto LABEL_16;
  }

  if (code != 22)
  {
    goto LABEL_18;
  }

  v11 = MEMORY[0x1E696ABC0];
  userInfo = [errorCopy userInfo];
  v8 = v11;
  v9 = 1010;
LABEL_17:
  v5 = [v8 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v9 userInfo:userInfo];

LABEL_18:

  return v5;
}

- (id)_convertCredentialProviderErrorToPublicError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if (code == 102)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1006;
    goto LABEL_5;
  }

  if (code == 100)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1001;
LABEL_5:
    v8 = [v6 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v7 userInfo:0];
    goto LABEL_7;
  }

  authorizationActivity = self->_authorizationActivity;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke;
  block[3] = &unk_1E7AF7608;
  v12 = errorCopy;
  os_activity_apply(authorizationActivity, block);

  v8 = 0;
LABEL_7:

  return v8;
}

void __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke_cold_1(a1, v3);
  }
}

- (id)_convertWebKitErrorToPublicError:(id)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  code = [errorCopy code];
  if (code == 31)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1001;
    goto LABEL_5;
  }

  if (code == 8)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = 1006;
LABEL_5:
    v8 = [v6 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:v7 userInfo:0];
    goto LABEL_7;
  }

  authorizationActivity = self->_authorizationActivity;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke;
  v17 = &unk_1E7AF7608;
  v10 = errorCopy;
  v18 = v10;
  os_activity_apply(authorizationActivity, &v14);
  v11 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696AA08];
  v20[0] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:{1, v14, v15, v16, v17}];
  v8 = [v11 errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:v12];

LABEL_7:

  return v8;
}

void __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke_cold_1(a1, v3);
  }
}

- (void)_completeWithAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__ASAuthorizationController__completeWithAuthorization___block_invoke;
  aBlock[3] = &unk_1E7AF88E8;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  appSSOAuthorization = self->_appSSOAuthorization;
  if (appSSOAuthorization && ([appSSOAuthorization isUserInteractionEnabled]& 1) == 0)
  {
    v5[2](v5, authorizationCopy);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ASAuthorizationController__completeWithAuthorization___block_invoke_126;
    block[3] = &unk_1E7AF8050;
    v9 = v5;
    v8 = authorizationCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __56__ASAuthorizationController__completeWithAuthorization___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__ASAuthorizationController__completeWithAuthorization___block_invoke_2;
  v7[3] = &unk_1E7AF76A8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  os_activity_apply(v5, v7);
}

void __56__ASAuthorizationController__completeWithAuthorization___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXAuthorization(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 credential];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_DEFAULT, "Successfully completed authorization: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationController:*(a1 + 40) didCompleteWithAuthorization:*(a1 + 32)];
  }
}

- (void)_failWithError:(id)error
{
  errorCopy = error;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__ASAuthorizationController__failWithError___block_invoke;
  aBlock[3] = &unk_1E7AF8540;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  appSSOAuthorization = self->_appSSOAuthorization;
  if (appSSOAuthorization && ([appSSOAuthorization isUserInteractionEnabled]& 1) == 0)
  {
    v5[2](v5, errorCopy);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__ASAuthorizationController__failWithError___block_invoke_133;
    block[3] = &unk_1E7AF8050;
    v9 = v5;
    v8 = errorCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __44__ASAuthorizationController__failWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ASAuthorizationController__failWithError___block_invoke_2;
  v7[3] = &unk_1E7AF76A8;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  os_activity_apply(v5, v7);
}

void __44__ASAuthorizationController__failWithError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 domain];
  v4 = [v3 isEqualToString:*MEMORY[0x1E698DF70]];

  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = [v5 _convertCoreErrorToPublicError:v2];
LABEL_3:
    v7 = v6;

    v2 = v7;
    goto LABEL_9;
  }

  v8 = [v5 _shouldConvertExtensionAndWebKitErrors];
  if (v8)
  {
    v10 = [v2 domain];
    v11 = [v10 isEqualToString:@"ASExtensionErrorDomain"];

    if (v11)
    {
      v6 = [*(a1 + 40) _convertCredentialProviderErrorToPublicError:v2];
      goto LABEL_3;
    }

    v12 = [v2 domain];
    v13 = [v12 isEqualToString:@"WKErrorDomain"];

    if (v13)
    {
      v6 = [*(a1 + 40) _convertWebKitErrorToPublicError:v2];
      goto LABEL_3;
    }
  }

LABEL_9:
  if (!v2)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1000 userInfo:0];
    v2 = v8;
  }

  v14 = WBS_LOG_CHANNEL_PREFIXAuthorization(v8, v9);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    __44__ASAuthorizationController__failWithError___block_invoke_2_cold_1(v14);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained authorizationController:*(a1 + 40) didCompleteWithError:v2];
  }
}

- (BOOL)_shouldConvertExtensionAndWebKitErrors
{
  v2 = objc_alloc(MEMORY[0x1E69635F8]);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v17 = 0;
  v5 = [v2 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v17];
  v6 = v17;

  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXAuthorization(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ASAuthorizationController *)v9 _shouldConvertExtensionAndWebKitErrors];
    }

    goto LABEL_8;
  }

  v10 = [v5 platform] - 1;
  if (v10 > 0xB || ((0xC63u >> v10) & 1) == 0)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v11 = qword_1B1D84C70[v10];
  sDKVersion = [v5 SDKVersion];
  v13 = [sDKVersion componentsSeparatedByString:@"."];
  firstObject = [v13 firstObject];

  if ([firstObject length])
  {
    v15 = [firstObject integerValue] >= v11;
  }

  else
  {
    v15 = 0;
  }

LABEL_9:
  return v15;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentationContextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContextProvider);

  return WeakRetained;
}

- (id)testOptionsIfNeeded
{
  v2 = sub_1B1CEE3C4();

  return v2;
}

- (id)publicKeyAccountRegistrationOptionsForRequest:(id)request
{
  requestCopy = request;
  v4 = sub_1B1CE4C40();
  v5 = sub_1B1D7B8EC();

  if (v5)
  {

    v4 = 0;
  }

  return v4;
}

- (id)relyingPartyIdentifierForRequest:(id)request
{

  v3 = sub_1B1D7BE1C();

  return v3;
}

- (void)initWithAuthorizationRequests:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASAuthorizationController.m" lineNumber:315 description:{@"Invalid parameter not satisfying: %@", @"authorizationRequests.count"}];
}

- (void)_requestContextWithRequests:(uint64_t)a3 error:(uint64_t *)a4 .cold.1(uint8_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138477827;
  *a4 = v7;
  _os_log_error_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_ERROR, "Found request for unexpected type: %{private}@", a1, 0xCu);
}

void __74__ASAuthorizationController__convertCredentialProviderErrorToPublicError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Received unexpected credential provider error: %{public}@", v7, v8, v9, v10);
}

void __62__ASAuthorizationController__convertWebKitErrorToPublicError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Received unexpected WebKit error: %{public}@", v7, v8, v9, v10);
}

void __44__ASAuthorizationController__failWithError___block_invoke_2_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "ASAuthorizationController credential request failed with error: %{public}@", v6, v7, v8, v9);
}

- (void)_shouldConvertExtensionAndWebKitErrors
{
  selfCopy = self;
  safari_privacyPreservingError = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingError];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v4, v5, "Failed to get application extension record: %{public}@", v6, v7, v8, v9);
}

@end