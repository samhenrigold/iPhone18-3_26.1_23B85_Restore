@interface AATrustedDeviceListRequest
- (AATrustedDeviceListRequest)initWithURLString:(id)string accountStore:(id)store grandSlamAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AATrustedDeviceListRequest

- (AATrustedDeviceListRequest)initWithURLString:(id)string accountStore:(id)store grandSlamAccount:(id)account
{
  storeCopy = store;
  accountCopy = account;
  v14.receiver = self;
  v14.super_class = AATrustedDeviceListRequest;
  v10 = [(AARequest *)&v14 initWithURLString:string];
  if (v10)
  {
    v11 = [[AAGrandSlamSigner alloc] initWithAccountStore:storeCopy grandSlamAccount:accountCopy appTokenID:@"com.apple.gs.appleid.auth"];
    grandSlamSigner = v10->_grandSlamSigner;
    v10->_grandSlamSigner = v11;
  }

  return v10;
}

- (id)urlString
{
  grandSlamSigner = self->_grandSlamSigner;
  if (grandSlamSigner)
  {
    grandSlamAccount = [grandSlamSigner grandSlamAccount];

    if (grandSlamAccount && ([(AAGrandSlamSigner *)self->_grandSlamSigner accountStore], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v7.receiver = self;
      v7.super_class = AATrustedDeviceListRequest;
      grandSlamSigner = [(AARequest *)&v7 urlString];
    }

    else
    {
      grandSlamSigner = 0;
    }
  }

  return grandSlamSigner;
}

- (id)urlRequest
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AATrustedDeviceListRequest;
  urlRequest = [(AARequest *)&v14 urlRequest];
  v4 = [urlRequest mutableCopy];

  v6 = _AALogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 URL];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Sending GET to %@", buf, 0xCu);
  }

  [v4 setHTTPMethod:@"GET"];
  [(AAGrandSlamSigner *)self->_grandSlamSigner setUseAltDSID:1];
  v8 = [(AAGrandSlamSigner *)self->_grandSlamSigner signURLRequest:v4 isUserInitiated:0];
  if ((v8 & 1) == 0)
  {
    v9 = _AALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "AAGrandSlamSigner failed!", buf, 2u);
    }
  }

  grandSlamAccount = [(AAGrandSlamSigner *)self->_grandSlamSigner grandSlamAccount];
  aida_alternateDSID = [grandSlamAccount aida_alternateDSID];
  [v4 aa_addGrandslamAuthorizationheaderWithAltDSID:aida_alternateDSID heartbeatToken:self->_heartbeatToken];

  [v4 aa_addDeviceIDHeader];
  v12 = +[AADeviceInfo serialNumber];
  [v4 setValue:v12 forHTTPHeaderField:@"X-Apple-I-SRL-NO"];

  [v4 aa_addContentTypeHeaders:@"application/json"];

  return v4;
}

@end