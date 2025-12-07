@interface BCAuthenticationManager
- (BCAuthenticationManager)initWithAuthenticationRequest:(id)request;
- (uint64_t)processQueryItems:(void *)items completion:;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)exchangeCode:(void *)code completion:;
- (void)fetchTokenWithRequest:(id)request completion:(id)completion;
@end

@implementation BCAuthenticationManager

- (BCAuthenticationManager)initWithAuthenticationRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = BCAuthenticationManager;
  v6 = [(BCAuthenticationManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationRequest, request);
  }

  return v7;
}

- (void)fetchTokenWithRequest:(id)request completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [requestCopy URL];
    baseURL = [v9 baseURL];
    *buf = 138412290;
    v64 = baseURL;
    _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: fetchToken for URL: %@", buf, 0xCu);
  }

  v11 = objc_alloc(MEMORY[0x277CCACE0]);
  v12 = [requestCopy URL];
  v13 = [v11 initWithURL:v12 resolvingAgainstBaseURL:0];

  queryItems = [v13 queryItems];
  v15 = [queryItems count];

  if (!v15)
  {
    goto LABEL_44;
  }

  queryItems2 = [v13 queryItems];
  v17 = [(BCAuthenticationManager *)self processQueryItems:queryItems2 completion:completionCopy];

  v18 = LogCategory_Daemon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    queryItems3 = [v13 queryItems];
    *buf = 138412546;
    v64 = queryItems3;
    v65 = 1024;
    v66 = v17;
    _os_log_impl(&dword_236EA0000, v18, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: queryitems %@ processed: %d", buf, 0x12u);
  }

  if ((v17 & 1) == 0)
  {
LABEL_44:
    v55 = v13;
    v20 = [requestCopy URL];
    fragments = [(NSURL *)v20 fragments];
    v23 = completionCopy;
    selfCopy = self;
    if (self)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      allKeys = [fragments allKeys];
      v25 = [allKeys countByEnumeratingWithState:&v57 objects:buf count:16];
      if (v25)
      {
        v26 = v25;
        v53 = v23;
        v54 = requestCopy;
        v27 = *v58;
LABEL_10:
        v28 = 0;
        while (1)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(allKeys);
          }

          v29 = *(*(&v57 + 1) + 8 * v28);
          v30 = [fragments objectForKeyedSubscript:v29];
          if (v30)
          {
            if ([v29 isEqualToString:@"code"])
            {
              v23 = v53;
              [(BCAuthenticationManager *)selfCopy exchangeCode:v30 completion:v53];
LABEL_22:

              v31 = 1;
              requestCopy = v54;
              goto LABEL_23;
            }

            if ([v29 isEqualToString:@"access_token"])
            {
              v23 = v53;
              (v53)[2](v53, v30, 0);
              goto LABEL_22;
            }
          }

          if (v26 == ++v28)
          {
            v26 = [allKeys countByEnumeratingWithState:&v57 objects:buf count:16];
            if (v26)
            {
              goto LABEL_10;
            }

            v31 = 0;
            requestCopy = v54;
            v13 = v55;
            v23 = v53;
            goto LABEL_24;
          }
        }
      }

      v31 = 0;
LABEL_23:
      v13 = v55;
LABEL_24:
    }

    else
    {
      v31 = 0;
    }

    v32 = LogCategory_Daemon();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v64) = v31;
      _os_log_impl(&dword_236EA0000, v32, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: fragements processed: %d", buf, 8u);
    }

    if ((v31 & 1) == 0)
    {
      v33 = [requestCopy valueForHTTPHeaderField:@"Content-Type"];
      v34 = [v33 isEqualToString:@"application/x-www-form-urlencoded"];

      if (v34)
      {
        hTTPBody = [requestCopy HTTPBody];

        if (hTTPBody)
        {
          v36 = objc_alloc(MEMORY[0x277CCACA8]);
          hTTPBody2 = [requestCopy HTTPBody];
          v38 = [v36 initWithData:hTTPBody2 encoding:4];

          v39 = objc_alloc_init(MEMORY[0x277CCACE0]);
          [v39 setQuery:v38];
          queryItems4 = [v39 queryItems];
          v41 = v23;
          v42 = queryItems4;
          v43 = v41;
          v44 = [(BCAuthenticationManager *)selfCopy processQueryItems:queryItems4 completion:v41];

          v45 = LogCategory_Daemon();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v64 = v38;
            v65 = 1024;
            v66 = v44;
            _os_log_impl(&dword_236EA0000, v45, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: body %@ processed: %d", buf, 0x12u);
          }

          v23 = v43;
          if (v44)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v46 = LogCategory_Daemon();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_236EA0000, v46, OS_LOG_TYPE_DEFAULT, "Request has Content-Type application/x-www-form-urlencoded but HTTPBody is empty.", buf, 2u);
          }
        }
      }

      v47 = objc_alloc(MEMORY[0x277CCA9B8]);
      v61 = *MEMORY[0x277CCA450];
      v62 = @"Missing access token from response";
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v49 = [v47 initWithDomain:@"com.apple.icloud.messages.business.authentication.error" code:0 userInfo:v48];

      v50 = LogCategory_Daemon();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [v49 localizedDescription];
        v52 = v51 = v23;
        *buf = 138412290;
        v64 = v52;
        _os_log_error_impl(&dword_236EA0000, v50, OS_LOG_TYPE_ERROR, "BCAuthenticationManager: not enough information to process: %@", buf, 0xCu);

        v23 = v51;
      }

      (*(v23 + 2))(v23, 0, v49);
    }
  }

LABEL_40:
}

- (uint64_t)processQueryItems:(void *)items completion:
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  itemsCopy = items;
  if (!self)
  {
    goto LABEL_20;
  }

  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236EA0000, v7, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: process query items", buf, 2u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v9)
  {
    self = 0;
    goto LABEL_19;
  }

  v10 = v9;
  selfCopy = self;
  v21 = itemsCopy;
  v22 = v5;
  v11 = *v24;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      value = [v13 value];
      if (value)
      {
        name = [v13 name];
        v16 = [name isEqualToString:@"code"];

        if (v16)
        {
          itemsCopy = v21;
          [(BCAuthenticationManager *)selfCopy exchangeCode:value completion:v21];
        }

        else
        {
          name2 = [v13 name];
          v18 = [name2 isEqualToString:@"access_token"];

          if (!v18)
          {
            goto LABEL_12;
          }

          itemsCopy = v21;
          (v21)[2](v21, value, 0);
        }

        self = 1;
        v5 = v22;
        goto LABEL_19;
      }

LABEL_12:
    }

    v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  self = 0;
  itemsCopy = v21;
  v5 = v22;
LABEL_19:

LABEL_20:
  return self;
}

- (void)exchangeCode:(void *)code completion:
{
  v28 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v6 = a2;
  authenticationRequest = [self authenticationRequest];
  oauth2 = [authenticationRequest oauth2];

  tokenExchangeURL = [oauth2 tokenExchangeURL];
  v10 = LogCategory_Daemon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [tokenExchangeURL absoluteString];
    *buf = 138412290;
    v27 = absoluteString;
    _os_log_impl(&dword_236EA0000, v10, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: exchange code url: %@", buf, 0xCu);
  }

  v12 = [oauth2 tokenExchangeBodyWithCode:v6];

  v13 = [v12 dataUsingEncoding:4];
  v14 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:tokenExchangeURL];
  [v14 setHTTPMethod:@"POST"];
  [v14 setHTTPBody:v13];
  [v14 setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
  v15 = MEMORY[0x277CCAD30];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v17 = [v15 sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:0];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __51__BCAuthenticationManager_exchangeCode_completion___block_invoke;
  v23 = &unk_278A0E948;
  v18 = codeCopy;
  selfCopy = self;
  v25 = v18;
  v19 = [v17 dataTaskWithRequest:v14 completionHandler:&v20];
  [v19 resume];
}

void __51__BCAuthenticationManager_exchangeCode_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_236EA0000, v8, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: exchange code response received", buf, 2u);
  }

  if (v7)
  {
    v9 = LogCategory_Daemon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&dword_236EA0000, v9, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: failed to retrieve token: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v6)
  {
    v11 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = v6;
    v13 = v10;
    if (v11)
    {
      v14 = LogCategory_Daemon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v12;
        _os_log_impl(&dword_236EA0000, v14, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: access token for data: %@", buf, 0xCu);
      }

      v30 = 0;
      v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v12 options:1 error:&v30];
      v16 = v30;
      if (v16)
      {
        v17 = LogCategory_Daemon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v16 localizedDescription];
          *buf = 138412290;
          v36 = v18;
          _os_log_impl(&dword_236EA0000, v17, OS_LOG_TYPE_DEFAULT, "BCAuthenticationManager: error serializing data to JSON: %@", buf, 0xCu);
        }

        v13[2](v13, 0, v16);
      }

      else
      {
        v23 = [v15 objectForKeyedSubscript:@"access_token"];
        if (v23)
        {
          (v13)[2](v13, v23, 0);
        }

        else
        {
          v24 = objc_alloc(MEMORY[0x277CCA9B8]);
          v33 = *MEMORY[0x277CCA450];
          v34 = @"Missing access token from response";
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          v26 = [v24 initWithDomain:@"com.apple.icloud.messages.business.authentication.error" code:2 userInfo:v25];

          v27 = LogCategory_Daemon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v29 = [v26 localizedDescription];
            *buf = 138412290;
            v36 = v29;
            _os_log_error_impl(&dword_236EA0000, v27, OS_LOG_TYPE_ERROR, "BCAuthenticationManager: cannot parse access_token: %@", buf, 0xCu);
          }

          v13[2](v13, 0, v26);
        }
      }
    }
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x277CCA9B8]);
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Empty data received";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v21 = [v19 initWithDomain:@"com.apple.icloud.messages.business.authentication.error" code:0 userInfo:v20];

    v22 = LogCategory_Daemon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v28 = [v21 localizedDescription];
      *buf = 138412290;
      v36 = v28;
      _os_log_error_impl(&dword_236EA0000, v22, OS_LOG_TYPE_ERROR, "BCAuthenticationManager: cannot parse access_token: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  protectionSpace = [challenge protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  if (serverTrust)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACF0]) initWithTrust:serverTrust];
    handlerCopy[2](handlerCopy, 0, v8);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

@end