@interface ATVHighSecurityAccountSendCode
- (ATVHighSecurityAccountSendCode)initWithAccount:(id)account device:(id)device;
- (id)urlRequest;
- (id)urlString;
@end

@implementation ATVHighSecurityAccountSendCode

- (ATVHighSecurityAccountSendCode)initWithAccount:(id)account device:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = ATVHighSecurityAccountSendCode;
  v8 = [(AAAppleTVRequest *)&v11 initWithAccount:account];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
  }

  return v9;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  sendCodeURL = [v2 sendCodeURL];

  return sendCodeURL;
}

- (id)urlRequest
{
  v33 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = ATVHighSecurityAccountSendCode;
  urlRequest = [(AARequest *)&v30 urlRequest];
  v4 = [urlRequest mutableCopy];

  device = self->_device;
  v29 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:device format:100 options:0 error:&v29];
  v7 = v29;
  v8 = v7;
  if (v6)
  {
    [v4 setHTTPBody:v6];
  }

  else
  {
    v9 = _AALogSystem(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v8 localizedDescription];
      *buf = 138412290;
      v32 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v6 length:"bytes") encoding:{objc_msgSend(v6, "length"), 4}];
  v12 = _AALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v11;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"POST"];
  aa_password = [(ACAccount *)self->super._account aa_password];
  if (aa_password && (v14 = aa_password, [(ACAccount *)self->super._account username], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = _AALogSystem(aa_password);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
    }

    v17 = MEMORY[0x1E696AEC0];
    username = [(ACAccount *)self->super._account username];
    aa_password2 = [(ACAccount *)self->super._account aa_password];
    v20 = [v17 stringWithFormat:@"%@:%@", username, aa_password2];

    v21 = 1;
  }

  else
  {
    username = _AALogSystem(aa_password);
    if (os_log_type_enabled(username, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, username, OS_LOG_TYPE_DEFAULT, "ERROR: Missing account username or password", buf, 2u);
    }

    v21 = 0;
    v20 = 0;
  }

  v22 = [v20 dataUsingEncoding:4];
  v23 = [v22 base64EncodedStringWithOptions:0];

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v23];
  [v4 addValue:v24 forHTTPHeaderField:@"Authorization"];
  v25 = _AALogSystem([v4 addValue:@"application/xml" forHTTPHeaderField:@"Content-Type"]);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v21)
  {
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "Authorization: *redacted*", buf, 2u);
    }
  }

  else if (v26)
  {
    v27 = [v4 valueForHTTPHeaderField:@"Authorization"];
    *buf = 138412290;
    v32 = v27;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  return v4;
}

@end