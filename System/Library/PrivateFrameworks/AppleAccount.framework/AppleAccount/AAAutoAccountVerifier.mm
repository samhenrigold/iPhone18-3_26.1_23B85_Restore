@interface AAAutoAccountVerifier
- (AAAutoAccountVerifier)init;
- (AAAutoAccountVerifier)initWithAccount:(id)account;
- (BOOL)search:(id)search didFindResults:(id)results;
- (void)_resendVerificationEmailForAccount:(id)account completion:(id)completion;
- (void)_validateToken:(id)token;
- (void)_verify;
- (void)cancel;
- (void)search:(id)search didFinishWithError:(id)error;
- (void)sendVerificationEmail;
- (void)verifyWithHandler:(id)handler;
@end

@implementation AAAutoAccountVerifier

- (AAAutoAccountVerifier)init
{
  v6.receiver = self;
  v6.super_class = AAAutoAccountVerifier;
  v2 = [(AAAutoAccountVerifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    requesterQueue = v2->_requesterQueue;
    v2->_requesterQueue = v3;

    v2->_attempts = 0;
    v2->_canceled = 0;
  }

  return v2;
}

- (AAAutoAccountVerifier)initWithAccount:(id)account
{
  accountCopy = account;
  v6 = [(AAAutoAccountVerifier *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (void)sendVerificationEmail
{
  account = self->_account;
  if (account)
  {
    [(AAAutoAccountVerifier *)self _resendVerificationEmailForAccount:account completion:&__block_literal_global_21];
  }
}

void __46__AAAutoAccountVerifier_sendVerificationEmail__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Sent verification email", &v8, 2u);
    }
  }

  else if (v6)
  {
    v7 = [v4 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Error sending verification email: %@", &v8, 0xCu);
  }
}

- (void)verifyWithHandler:(id)handler
{
  if (self->_handler != handler)
  {
    v4 = [handler copy];
    handler = self->_handler;
    self->_handler = v4;
  }

  v6 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AAAutoAccountVerifier_verifyWithHandler___block_invoke;
  block[3] = &unk_1E7C9A868;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)cancel
{
  v3 = _AALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Verifier canceling all operations", v6, 2u);
  }

  self->_canceled = 1;
  [(NSOperationQueue *)self->_requesterQueue cancelAllOperations];
  [(MSSearch *)self->_search cancel];
  search = self->_search;
  self->_search = 0;

  handler = self->_handler;
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }
}

- (void)_verify
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMSCriterionTypeSender(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"AAAutoAccountVerifier.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_validateToken:(id)token
{
  tokenCopy = token;
  v5 = _AALogSystem(tokenCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Validating token", buf, 2u);
  }

  v6 = [[AACompleteEmailVettingRequest alloc] initWithAccount:self->_account token:tokenCopy];
  v7 = [AARequester alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AAAutoAccountVerifier__validateToken___block_invoke;
  v9[3] = &unk_1E7C9C9E8;
  v9[4] = self;
  v8 = [(AARequester *)v7 initWithRequest:v6 handler:v9];
  [(NSOperationQueue *)self->_requesterQueue addOperation:v8];
}

void __40__AAAutoAccountVerifier__validateToken___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = _AALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 error];
      v8 = [v7 description];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Error vetting email address: %@", &v16, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v11 = v3;
    v10 = ![v11 vettingStatus] || objc_msgSend(v11, "vettingStatus") == 1;
  }

  v12 = _AALogSystem(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"Not validated";
    if (v10)
    {
      v13 = @"Validated";
    }

    v16 = 138412290;
    v17 = v13;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Calling handler with validation result: %@", &v16, 0xCu);
  }

  v14 = *(*(a1 + 32) + 32);
  v15 = [v3 error];
  (*(v14 + 16))(v14, v10, v15);
}

- (void)_resendVerificationEmailForAccount:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  v7 = [(AAEmailVettingRequest *)[AAInitiateEmailVettingRequest alloc] initWithAccount:accountCopy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__AAAutoAccountVerifier__resendVerificationEmailForAccount_completion___block_invoke;
  v9[3] = &unk_1E7C9BDB8;
  v10 = completionCopy;
  v8 = completionCopy;
  [(AARequest *)v7 performRequestWithHandler:v9];
}

void __71__AAAutoAccountVerifier__resendVerificationEmailForAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 error];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

- (BOOL)search:(id)search didFindResults:(id)results
{
  v42 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v6 = _AALogSystem(resultsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "search founds results", buf, 2u);
  }

  v7 = [resultsCopy count];
  if (v7)
  {
    selfCopy = self;
    v8 = _AALogSystem(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = resultsCopy;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Email search found results: %@", buf, 0xCu);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    array = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = resultsCopy;
    v11 = resultsCopy;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          v17 = getMSResultsKeyDateSent();
          v18 = [v16 objectForKey:v17];

          v19 = [v16 objectForKey:_AAVettingToken];
          lastObject = [v19 lastObject];

          if (lastObject)
          {
            [dictionary setValue:lastObject forKey:v18];
            v21 = _AALogSystem([array addObject:lastObject]);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v41 = lastObject;
              _os_log_impl(&dword_1B6F6A000, v21, OS_LOG_TYPE_DEFAULT, "Found token: %{sensitive}@", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);
    }

    v22 = [array count];
    v23 = v22 == 0;
    if (v22)
    {
      allKeys = [dictionary allKeys];
      v25 = allKeys;
      if ([allKeys count] >= 2)
      {
        v25 = [allKeys sortedArrayUsingSelector:sel_compare_];
      }

      lastObject2 = [v25 lastObject];
      v27 = [dictionary objectForKey:lastObject2];

      v29 = _AALogSystem(v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v41 = v27;
        _os_log_impl(&dword_1B6F6A000, v29, OS_LOG_TYPE_DEFAULT, "Most recent token: %{sensitive}@", buf, 0xCu);
      }

      [v33 _validateToken:v27];
      [v33[1] cancel];
      v30 = v33[1];
      v33[1] = 0;
    }

    resultsCopy = v34;
  }

  else
  {
    v23 = 1;
  }

  return v23;
}

- (void)search:(id)search didFinishWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = _AALogSystem(errorCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = errorCopy;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Email search finished with error: %@", buf, 0xCu);
  }

  search = self->_search;
  if (search)
  {
    [(MSSearch *)search cancel];
    v8 = self->_search;
    self->_search = 0;

    if (errorCopy && [errorCopy code] != 1501)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __51__AAAutoAccountVerifier_search_didFinishWithError___block_invoke;
      v11[3] = &unk_1E7C9ADE8;
      v11[4] = self;
      v12 = errorCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v11);
    }

    else if (!self->_canceled)
    {
      v9 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__AAAutoAccountVerifier_search_didFinishWithError___block_invoke_2;
      block[3] = &unk_1E7C9A868;
      block[4] = self;
      dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __51__AAAutoAccountVerifier_search_didFinishWithError___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40));
  }

  return result;
}

@end