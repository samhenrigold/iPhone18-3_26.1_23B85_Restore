@interface AASecondaryAuthenticationRequest
- (AASecondaryAuthenticationRequest)initWithDSID:(id)d primaryToken:(id)token;
- (id)urlRequest;
- (id)urlString;
@end

@implementation AASecondaryAuthenticationRequest

- (AASecondaryAuthenticationRequest)initWithDSID:(id)d primaryToken:(id)token
{
  dCopy = d;
  tokenCopy = token;
  v10 = tokenCopy;
  if (dCopy)
  {
    if (tokenCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [AASecondaryAuthenticationRequest initWithDSID:a2 primaryToken:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [AASecondaryAuthenticationRequest initWithDSID:a2 primaryToken:self];
LABEL_3:
  v14.receiver = self;
  v14.super_class = AASecondaryAuthenticationRequest;
  v11 = [(AASecondaryAuthenticationRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_primaryToken, token);
    objc_storeStrong(&v12->_dsid, d);
  }

  return v12;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  secondaryAuthenticationURL = [v2 secondaryAuthenticationURL];

  return secondaryAuthenticationURL;
}

- (id)urlRequest
{
  v11.receiver = self;
  v11.super_class = AASecondaryAuthenticationRequest;
  urlRequest = [(AARequest *)&v11 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", self->_dsid, self->_primaryToken];
  v6 = [v5 dataUsingEncoding:4];
  v7 = [v6 base64EncodedStringWithOptions:0];

  [v4 addValue:v7 forHTTPHeaderField:@"X-Apple-GS-Token"];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Basic %@", v7];
  [v4 addValue:v8 forHTTPHeaderField:@"Authorization"];
  v9 = +[AADeviceInfo udid];
  [v4 addValue:v9 forHTTPHeaderField:@"X-AppleID-Device-Udid"];

  [v4 aa_addDeviceProvisioningInfoHeadersWithDSID:self->_dsid];

  return v4;
}

- (void)initWithDSID:(uint64_t)a1 primaryToken:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AARequest.m" lineNumber:1109 description:@"No DSID passed"];
}

- (void)initWithDSID:(uint64_t)a1 primaryToken:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"AARequest.m" lineNumber:1110 description:@"No token passed"];
}

@end