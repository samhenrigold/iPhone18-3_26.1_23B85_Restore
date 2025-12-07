@interface AADeviceListRequest
- (AADeviceListRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AADeviceListRequest

- (AADeviceListRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = AADeviceListRequest;
  v6 = [(AADeviceListRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlString
{
  v3 = +[AAURLConfiguration urlConfiguration];
  getDeviceListURL = [v3 getDeviceListURL];

  if (getDeviceListURL)
  {
    aa_personID = [(ACAccount *)self->_account aa_personID];

    if (aa_personID)
    {
      aa_personID = getDeviceListURL;
    }
  }

  else
  {
    v7 = _AALogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Error! AADeviceListRequest could not find a base URL.", v9, 2u);
    }

    aa_personID = 0;
  }

  return aa_personID;
}

- (id)urlRequest
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AADeviceListRequest;
  urlRequest = [(AARequest *)&v10 urlRequest];
  v4 = [urlRequest mutableCopy];

  urlString = [(AADeviceListRequest *)self urlString];
  if (urlString)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:urlString];
    [v4 setURL:v6];

    v7 = _AALogSystem([v4 setHTTPMethod:@"GET"]);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 URL];
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Sending GET to %@", buf, 0xCu);
    }

    [v4 aa_addBasicAuthorizationHeaderWithAccount:self->_account preferUsingPassword:0];
  }

  return v4;
}

@end