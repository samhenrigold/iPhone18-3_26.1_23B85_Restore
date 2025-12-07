@interface SOAuthorizationResultClientImpl
- (void)authorization:(id)authorization didCompleteWithError:(id)error;
- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers;
- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body;
- (void)authorizationDidCancel:(id)cancel;
- (void)authorizationDidComplete:(id)complete;
- (void)authorizationDidNotHandle:(id)handle;
@end

@implementation SOAuthorizationResultClientImpl

- (void)authorizationDidNotHandle:(id)handle
{
  v11 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOAuthorizationResultClientImpl authorizationDidNotHandle:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-5];
  [(SOAuthorizationResultClientImpl *)self authorization:handleCopy didCompleteWithError:v6];
}

- (void)authorizationDidCancel:(id)cancel
{
  v11 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOAuthorizationResultClientImpl authorizationDidCancel:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-2];
  [(SOAuthorizationResultClientImpl *)self authorization:cancelCopy didCompleteWithError:v6];
}

- (void)authorizationDidComplete:(id)complete
{
  v11 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SOAuthorizationResultClientImpl authorizationDidComplete:]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v7, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-3];
  [(SOAuthorizationResultClientImpl *)self authorization:completeCopy didCompleteWithError:v6];
}

- (void)authorization:(id)authorization didCompleteWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  errorCopy = error;
  v8 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithError:]";
    v15 = 2114;
    v16 = errorCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s error=%{public}@ on %@", &v13, 0x20u);
  }

  authorizationHandleCredentialCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (authorizationHandleCredentialCompletion)
  {
    authorizationHandleCredentialCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    (authorizationHandleCredentialCompletion2)[2](authorizationHandleCredentialCompletion2, 0, errorCopy);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    authorizationHandleResponseCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (authorizationHandleResponseCompletion)
    {
      authorizationHandleResponseCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      (authorizationHandleResponseCompletion2)[2](authorizationHandleResponseCompletion2, 0, 0, errorCopy);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:authorizationCopy];
}

- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body
{
  v29 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  responseCopy = response;
  bodyCopy = body;
  v11 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136316419;
    v18 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:]";
    v19 = 2160;
    v20 = 1752392040;
    v21 = 2117;
    v22 = responseCopy;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2117;
    v26 = bodyCopy;
    v27 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s httpResponse = %{sensitive, mask.hash}@, httpBody = %{sensitive, mask.hash}@ on %@", &v17, 0x3Eu);
  }

  authorizationHandleCredentialCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (authorizationHandleCredentialCompletion)
  {
    v13 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:];
    }

    authorizationHandleCredentialCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    authorizationHandleCredentialCompletion2[2](authorizationHandleCredentialCompletion2, 0, _unexpectedResponseError);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    authorizationHandleResponseCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (authorizationHandleResponseCompletion)
    {
      authorizationHandleResponseCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      (authorizationHandleResponseCompletion2)[2](authorizationHandleResponseCompletion2, [responseCopy _CFURLResponse], bodyCopy, 0);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:authorizationCopy];
}

- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers
{
  v22 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  headersCopy = headers;
  v8 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315907;
    v15 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPAuthorizationHeaders:]";
    v16 = 2160;
    v17 = 1752392040;
    v18 = 2117;
    v19 = headersCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s httpAuthorizationHeaders = %{sensitive, mask.hash}@ on %@", &v14, 0x2Au);
  }

  authorizationHandleCredentialCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (authorizationHandleCredentialCompletion)
  {
    authorizationHandleCredentialCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    (authorizationHandleCredentialCompletion2)[2](authorizationHandleCredentialCompletion2, headersCopy, 0);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    authorizationHandleResponseCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (authorizationHandleResponseCompletion)
    {
      v12 = SO_LOG_SOClientImpl();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:];
      }

      authorizationHandleResponseCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      authorizationHandleResponseCompletion2[2](authorizationHandleResponseCompletion2, 0, 0, _unexpectedResponseError);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:authorizationCopy];
}

@end