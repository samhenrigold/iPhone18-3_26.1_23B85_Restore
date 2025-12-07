@interface AALoginOrCreateDelegatesRequest
- (AALoginOrCreateDelegatesRequest)initWithAccount:(id)account parameters:(id)parameters signingSession:(id)session;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AALoginOrCreateDelegatesRequest

- (AALoginOrCreateDelegatesRequest)initWithAccount:(id)account parameters:(id)parameters signingSession:(id)session
{
  accountCopy = account;
  parametersCopy = parameters;
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = AALoginOrCreateDelegatesRequest;
  v12 = [(AALoginOrCreateDelegatesRequest *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_account, account);
    v14 = [parametersCopy copy];
    parameters = v13->_parameters;
    v13->_parameters = v14;

    objc_storeStrong(&v13->_signingSession, session);
  }

  return v13;
}

- (id)urlString
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"showSSOFlow", @"com.apple.purplebuddy", 0);
  v3 = +[AAURLConfiguration urlConfiguration];
  v4 = v3;
  if (AppBooleanValue)
  {
    [v3 loginOrCreateDelegatesURL];
  }

  else
  {
    [v3 createDelegatesURL];
  }
  v5 = ;

  return v5;
}

- (id)urlRequest
{
  v22 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AALoginOrCreateDelegatesRequest;
  urlRequest = [(AARequest *)&v19 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  parameters = self->_parameters;
  v18 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:parameters format:100 options:0 error:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = [v4 setHTTPBody:v6];
  }

  else
  {
    v10 = _AALogSystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v8 localizedDescription];
      *buf = 138412290;
      v21 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v12 = _AALogSystem(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(AARequest *)self redactedBodyStringWithPropertyList:self->_parameters];
    *buf = 138412290;
    v21 = v13;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "LoginOrCreateAccount request body: \n%@", buf, 0xCu);
  }

  aa_password = [(ACAccount *)self->_account aa_password];

  if (!aa_password)
  {
    [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:0];
  }

  [v4 aa_signBodyData:v6 withSigningSession:self->_signingSession];
  [v4 aa_addMultiUserDeviceHeaderIfEnabled];
  v15 = _AALogSystem([v4 aa_addAltDSIDAndRepairStateWithAccount:self->_account]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v4 description];
    *buf = 138412290;
    v21 = v16;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "request is: %@", buf, 0xCu);
  }

  return v4;
}

@end