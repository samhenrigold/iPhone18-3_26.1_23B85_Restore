@interface SLWebAuthFlowController
- (BOOL)shouldHideWebViewForLoadWithRequest:(id)request;
- (SLWebAuthFlowController)initWithWebClient:(id)client;
- (id)authURLForUsername:(id)username;
- (id)requestForAuthURL:(id)l;
- (void)setAuthFlowCompletion:(id)completion;
- (void)webViewDidFinishLoadWithPageTitleSupplier:(id)supplier;
@end

@implementation SLWebAuthFlowController

- (SLWebAuthFlowController)initWithWebClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = SLWebAuthFlowController;
  v6 = [(SLWebAuthFlowController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_webClient, client);
  }

  return v7;
}

- (void)setAuthFlowCompletion:(id)completion
{
  self->_completion = MEMORY[0x1C6917BF0](completion, a2);

  MEMORY[0x1EEE66BB8]();
}

- (id)authURLForUsername:(id)username
{
  usernameCopy = username;
  webClient = [(SLWebAuthFlowController *)self webClient];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    defaultScope = [(SLWebClient *)self->_webClient defaultScope];
  }

  else
  {
    defaultScope = 0;
  }

  webAuthRequestClass = [(SLWebClient *)self->_webClient webAuthRequestClass];
  clientID = [(SLWebClient *)self->_webClient clientID];
  clientRedirect = [(SLWebClient *)self->_webClient clientRedirect];
  authRequestURL = [(SLWebClient *)self->_webClient authRequestURL];
  v12 = [webAuthRequestClass urlForClientID:clientID redirectURI:clientRedirect scope:defaultScope username:usernameCopy authRequestURL:authRequestURL];

  return v12;
}

- (id)requestForAuthURL:(id)l
{
  webClient = self->_webClient;
  lCopy = l;
  v5 = [-[SLWebClient webAuthRequestClass](webClient "webAuthRequestClass")];

  v6 = [v5 mutableCopy];

  return v6;
}

- (BOOL)shouldHideWebViewForLoadWithRequest:(id)request
{
  v45 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  webAuthRequestClass = [(SLWebClient *)self->_webClient webAuthRequestClass];
  v8 = [requestCopy URL];
  LODWORD(webAuthRequestClass) = [webAuthRequestClass urlPageWillContainAuthorizationCode:v8];

  if (webAuthRequestClass)
  {
    _SLLog(v3, 7, @"SLWebAuthFlowController shouldHideWebViewForLoadWithRequest: waiting for authentication code in page load url", v9, v10, v11, v12, v13, v33);
    objc_storeStrong(&self->_requestWithAuthorizationCode, request);
    v14 = 1;
  }

  else
  {
    v15 = MEMORY[0x1E696AF20];
    v16 = [requestCopy URL];
    v17 = [v15 componentsWithURL:v16 resolvingAgainstBaseURL:0];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v17 queryItems];
    v18 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    v14 = v18 != 0;
    if (v18)
    {
      v19 = v18;
      v34 = v18 != 0;
      selfCopy = self;
      v36 = v17;
      v37 = requestCopy;
      v20 = 0;
      v21 = 0;
      v22 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          name = [v24 name];
          v26 = [@"account" isEqualToString:name];

          if (v26)
          {
            value = [v24 value];

            v20 = value;
          }

          name2 = [v24 name];
          v29 = [@"email" isEqualToString:name2];

          if (v29)
          {
            value2 = [v24 value];

            v21 = value2;
          }
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);

      v14 = 0;
      if (v21)
      {
        v17 = v36;
        requestCopy = v37;
        if (v20)
        {
          if ([v20 isEqualToString:@"yahoo_japan"])
          {
            v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v21];
            obja = selfCopy->_yahooJapanUserName;
            selfCopy->_yahooJapanUserName = v31;
            v14 = v34;
          }

          else
          {
            v14 = 0;
          }
        }
      }

      else
      {
        v17 = v36;
        requestCopy = v37;
      }
    }

    else
    {
      v21 = 0;
      v20 = 0;
    }
  }

  return v14;
}

- (void)webViewDidFinishLoadWithPageTitleSupplier:(id)supplier
{
  v14[1] = *MEMORY[0x1E69E9840];
  supplierCopy = supplier;
  if (self->_requestWithAuthorizationCode)
  {
    v5 = [-[SLWebClient webAuthRequestClass](self->_webClient "webAuthRequestClass")];
    if ([v5 length])
    {
      v6 = [[SLWebTokenHandlerController alloc] initWithWebClient:self->_webClient];
      clientRedirect = [(SLWebClient *)self->_webClient clientRedirect];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke;
      v11[3] = &unk_1E81762A8;
      v5 = v5;
      v12 = v5;
      selfCopy = self;
      [(SLWebTokenHandlerController *)v6 exchangeAuthCode:v5 usingRedirect:clientRedirect codeVerifier:0 forTokensAndUsernameWithCompletion:v11];

LABEL_8:
      goto LABEL_9;
    }

    v10 = *(self->_completion + 2);
LABEL_7:
    v10();
    goto LABEL_8;
  }

  if (self->_yahooJapanUserName)
  {
    v8 = MEMORY[0x1E695DF20];
    v14[0] = self->_yahooJapanUserName;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v5 = [v8 dictionaryWithObject:v9 forKey:@"usernames"];

    v10 = *(self->_completion + 2);
    goto LABEL_7;
  }

LABEL_9:
}

void __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v13 = a2;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke_2;
  block[3] = &unk_1E8176280;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = *(a1 + 32);
  v28 = v16;
  v29 = *(a1 + 40);
  v30 = v17;
  v18 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__SLWebAuthFlowController_webViewDidFinishLoadWithPageTitleSupplier___block_invoke_2(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && (v3 = *(a1 + 40)) != 0 && (v4 = *(a1 + 48)) != 0)
  {
    v8[0] = @"authCode";
    v8[1] = @"token";
    v9[0] = *(a1 + 56);
    v9[1] = v2;
    v8[2] = @"refreshToken";
    v8[3] = @"usernames";
    v9[2] = v3;
    v9[3] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
    if ([*(a1 + 64) length])
    {
      v6 = [v5 mutableCopy];
      [v6 setObject:*(a1 + 64) forKey:@"displayName"];

      v5 = v6;
    }

    (*(*(*(a1 + 72) + 16) + 16))();
  }

  else
  {
    v7 = *(*(*(a1 + 72) + 16) + 16);

    v7();
  }
}

@end