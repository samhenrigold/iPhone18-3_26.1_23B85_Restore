@interface ATVHighSecurityAccountVerifyCode
- (ATVHighSecurityAccountVerifyCode)initWithAccount:(id)account device:(id)device hsaCode:(id)code;
- (id)urlRequest;
- (id)urlString;
@end

@implementation ATVHighSecurityAccountVerifyCode

- (ATVHighSecurityAccountVerifyCode)initWithAccount:(id)account device:(id)device hsaCode:(id)code
{
  codeCopy = code;
  v13.receiver = self;
  v13.super_class = ATVHighSecurityAccountVerifyCode;
  v10 = [(ATVHighSecurityAccountSendCode *)&v13 initWithAccount:account device:device];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_hsaCode, code);
  }

  return v11;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  verifyCodeURL = [v2 verifyCodeURL];

  return verifyCodeURL;
}

- (id)urlRequest
{
  v34 = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = ATVHighSecurityAccountVerifyCode;
  urlRequest = [(ATVHighSecurityAccountSendCode *)&v31 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = [(NSDictionary *)self->super._device mutableCopy];
  [v5 setValue:self->_hsaCode forKey:@"hsaCode"];
  v30 = 0;
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v30];
  v7 = v30;
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
      v33 = localizedDescription;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v29 = v8;
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(v6 length:"bytes") encoding:{objc_msgSend(v6, "length"), 4}];
  v12 = _AALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v11;
    _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"POST"];
  aa_password = [(ACAccount *)self->super.super._account aa_password];
  if (aa_password && (v14 = aa_password, [(ACAccount *)self->super.super._account username], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
  {
    v16 = _AALogSystem(aa_password);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v16, OS_LOG_TYPE_DEFAULT, "Using password auth", buf, 2u);
    }

    v17 = MEMORY[0x1E696AEC0];
    username = [(ACAccount *)self->super.super._account username];
    aa_password2 = [(ACAccount *)self->super.super._account aa_password];
    v20 = [v17 stringWithFormat:@"%@:%@", username, aa_password2, v8];

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
    v33 = v27;
    _os_log_impl(&dword_1B6F6A000, v25, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  return v4;
}

@end