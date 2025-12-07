@interface AAGenericTermsUIRequest
- (AAGenericTermsUIRequest)initWithAccount:(id)account parameters:(id)parameters preferPassword:(BOOL)password;
- (AAGenericTermsUIRequest)initWithAccount:(id)account termsEntries:(id)entries;
- (id)_requestParamsForTermsEntries:(id)entries additionalInfo:(id)info;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAGenericTermsUIRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  genericTermsURL = [v2 genericTermsURL];

  return genericTermsURL;
}

- (AAGenericTermsUIRequest)initWithAccount:(id)account parameters:(id)parameters preferPassword:(BOOL)password
{
  accountCopy = account;
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = AAGenericTermsUIRequest;
  v11 = [(AAGenericTermsUIRequest *)&v15 init];
  if (v11)
  {
    v12 = [parametersCopy copy];
    requestDictionary = v11->_requestDictionary;
    v11->_requestDictionary = v12;

    objc_storeStrong(&v11->_account, account);
    v11->_preferPassword = password;
  }

  return v11;
}

- (AAGenericTermsUIRequest)initWithAccount:(id)account termsEntries:(id)entries
{
  accountCopy = account;
  v7 = [(AAGenericTermsUIRequest *)self _requestParamsForTermsEntries:entries];
  v8 = [(AAGenericTermsUIRequest *)self initWithAccount:accountCopy parameters:v7];

  return v8;
}

- (id)_requestParamsForTermsEntries:(id)entries additionalInfo:(id)info
{
  v27 = *MEMORY[0x1E69E9840];
  entriesCopy = entries;
  infoCopy = info;
  if ([entriesCopy count])
  {
    v19 = entriesCopy;
    v7 = [entriesCopy mutableCopy];
    [v7 addObject:@"iCloud"];
    if ([v7 containsObject:@"iOSWarranty"] && (objc_msgSend(v7, "containsObject:", @"HomePodSLA") & 1) == 0)
    {
      [v7 addObject:@"iOS"];
    }

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = objc_opt_new();
          [v15 setObject:v14 forKeyedSubscript:@"name"];
          v16 = [infoCopy objectForKeyedSubscript:v14];
          if (v16)
          {
            [v15 addEntriesFromDictionary:v16];
          }

          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v11);
    }

    v24[0] = @"terms";
    v24[1] = @"format";
    v25[0] = v8;
    v25[1] = @"plist/buddyml";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];

    entriesCopy = v19;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)urlRequest
{
  v43 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = AAGenericTermsUIRequest;
  urlRequest = [(AARequest *)&v40 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = [(NSDictionary *)self->_requestDictionary mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v8 setObject:serverInfo forKeyedSubscript:@"serverInfo"];
  }

  v39 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:100 options:0 error:&v39];
  v11 = v39;
  v12 = v11;
  if (!v10)
  {
    v13 = _AALogSystem(v11);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    localizedDescription = [v12 localizedDescription];
    *buf = 138412290;
    v42 = localizedDescription;
    v15 = "No data body to set on HTTP request: %@";
    v16 = v13;
    goto LABEL_11;
  }

  [v4 setHTTPBody:v10];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v10 length:"bytes") encoding:{objc_msgSend(v10, "length"), 4}];
  localizedDescription = _AALogSystem(v13);
  if (os_log_type_enabled(localizedDescription, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v13;
    v15 = "Request body:%@";
    v16 = localizedDescription;
LABEL_11:
    _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
  }

LABEL_13:
  account = self->_account;
  if (account)
  {
    if (![v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:account preferUsingPassword:self->_preferPassword])
    {
      v32 = 0;
      goto LABEL_26;
    }

    _aa_appProvidedContext = [(ACAccount *)self->_account _aa_appProvidedContext];

    if (_aa_appProvidedContext)
    {
      v20 = _AALogSystem(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        _aa_appProvidedContext2 = [(ACAccount *)self->_account _aa_appProvidedContext];
        *buf = 138412290;
        v42 = _aa_appProvidedContext2;
        _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Apple account contains an app provided context to add to the request: %@", buf, 0xCu);
      }

      _aa_appProvidedContext3 = [(ACAccount *)self->_account _aa_appProvidedContext];
      [v4 ak_addAppProvidedContext:_aa_appProvidedContext3];

      [(ACAccount *)self->_account _aa_setAppProvidedContext:0];
    }

    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    aa_altDSID = [(ACAccount *)self->_account aa_altDSID];
    v25 = [defaultStore aida_accountForAltDSID:aa_altDSID];

    if (v25)
    {
      defaultStore2 = [MEMORY[0x1E6959A48] defaultStore];
      v27 = [defaultStore2 credentialForAccount:v25 serviceID:@"com.apple.gs.icloud.family.auth"];

      token = [v27 token];
      aida_alternateDSID = [v25 aida_alternateDSID];
      [v4 aa_addGrandslamAuthorizationHeaderWithAltDSID:aida_alternateDSID grandslamToken:token];
    }
  }

  additionalHeaders = [(AAGenericTermsUIRequest *)self additionalHeaders];

  if (additionalHeaders)
  {
    additionalHeaders2 = [(AAGenericTermsUIRequest *)self additionalHeaders];
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __37__AAGenericTermsUIRequest_urlRequest__block_invoke;
    v37 = &unk_1E7C9C428;
    v38 = v4;
    [additionalHeaders2 enumerateKeysAndObjectsUsingBlock:&v34];
  }

  [v4 setValue:@"text/plist" forHTTPHeaderField:{@"Content-Type", v34, v35, v36, v37}];
  v32 = v4;
LABEL_26:

  return v32;
}

@end