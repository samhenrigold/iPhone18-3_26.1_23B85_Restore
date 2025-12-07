@interface AASetupAssistantCreateRequest
- (AASetupAssistantCreateRequest)initWithAccount:(id)account withAppleIDParameters:(id)parameters signingSession:(id)session;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASetupAssistantCreateRequest

- (AASetupAssistantCreateRequest)initWithAccount:(id)account withAppleIDParameters:(id)parameters signingSession:(id)session
{
  accountCopy = account;
  parametersCopy = parameters;
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = AASetupAssistantCreateRequest;
  v12 = [(AASetupAssistantCreateRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    v14 = [parametersCopy copy];
    appleIDParameters = v13->appleIDParameters;
    v13->appleIDParameters = v14;

    objc_storeStrong(&v13->signingSession, session);
  }

  return v13;
}

- (id)urlString
{
  v2 = +[AASetupAssistantService urlConfiguration];
  createAppleIDURL = [v2 createAppleIDURL];

  return createAppleIDURL;
}

- (id)urlRequest
{
  v38 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = AASetupAssistantCreateRequest;
  urlRequest = [(AARequest *)&v35 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  v5 = MEMORY[0x1E696AE40];
  bodyDictionary = [(AASetupAssistantCreateRequest *)self bodyDictionary];
  v34 = 0;
  v7 = [v5 dataWithPropertyList:bodyDictionary format:100 options:0 error:&v34];
  v8 = v34;

  if (v7)
  {
    v10 = [v4 setHTTPBody:v7];
  }

  else
  {
    v11 = _AALogSystem(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v8 localizedDescription];
      *buf = 138412290;
      v37 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v13 = _AALogSystem(v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bodyDictionary2 = [(AASetupAssistantCreateRequest *)self bodyDictionary];
    v15 = [(AARequest *)self redactedBodyStringWithPropertyList:bodyDictionary2];
    *buf = 138412290;
    v37 = v15;
    _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "CreateAppleID request body: \n%@", buf, 0xCu);
  }

  v16 = +[AADeviceInfo udid];
  [v4 setValue:v16 forHTTPHeaderField:@"Device-UDID"];

  aa_authToken = [(ACAccount *)self->_account aa_authToken];
  if (aa_authToken)
  {
    v18 = aa_authToken;
    username = [(ACAccount *)self->_account username];

    if (username)
    {
      v20 = MEMORY[0x1E696AEC0];
      aa_personID = [(ACAccount *)self->_account aa_personID];
      aa_authToken2 = [(ACAccount *)self->_account aa_authToken];
      v23 = [v20 stringWithFormat:@"%@:%@", aa_personID, aa_authToken2];

      v24 = [v23 dataUsingEncoding:4];
      v25 = [v24 base64EncodedStringWithOptions:0];

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v25];
      v27 = _AALogSystem([v4 addValue:v26 forHTTPHeaderField:@"Authorization"]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Using token auth", buf, 2u);
      }
    }
  }

  v28 = _AALogSystem([v4 aa_signBodyData:v7 withSigningSession:self->signingSession]);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v4 description];
    *buf = 138412290;
    v37 = v29;
    _os_log_impl(&dword_1B6F6A000, v28, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  v31 = _AALogSystem(v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v4 description];
    *buf = 138412290;
    v37 = v32;
    _os_log_impl(&dword_1B6F6A000, v31, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  return v4;
}

@end