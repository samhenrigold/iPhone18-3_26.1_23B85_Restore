@interface AAWalrusPCSAuthRequest
- (AAWalrusPCSAuthRequest)initWithAccount:(id)account WebSessionID:(id)d webSessionConsentUUID:(id)iD encryptionEnvelope:(id)envelope appName:(id)name responseIdentities:(id)identities serverInfo:(id)info urlString:(id)self0;
- (id)urlRequest;
@end

@implementation AAWalrusPCSAuthRequest

- (AAWalrusPCSAuthRequest)initWithAccount:(id)account WebSessionID:(id)d webSessionConsentUUID:(id)iD encryptionEnvelope:(id)envelope appName:(id)name responseIdentities:(id)identities serverInfo:(id)info urlString:(id)self0
{
  v34[6] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  dCopy = d;
  iDCopy = iD;
  envelopeCopy = envelope;
  nameCopy = name;
  identitiesCopy = identities;
  infoCopy = info;
  stringCopy = string;
  v32.receiver = self;
  v32.super_class = AAWalrusPCSAuthRequest;
  v24 = [(AAWalrusPCSAuthRequest *)&v32 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_account, account);
    v33[0] = @"PCSIdentitiesInResponse";
    v33[1] = @"encryptedEnvelope";
    v34[0] = identitiesCopy;
    v34[1] = envelopeCopy;
    v34[2] = nameCopy;
    v33[2] = @"appName";
    v33[3] = @"webSessionID";
    lowercaseString = [dCopy lowercaseString];
    v34[3] = lowercaseString;
    v33[4] = @"webSessionConsentUUID";
    lowercaseString2 = [iDCopy lowercaseString];
    v33[5] = @"serverInfo";
    v34[4] = lowercaseString2;
    v34[5] = infoCopy;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:6];
    bodyParams = v25->_bodyParams;
    v25->_bodyParams = v28;

    objc_storeStrong(&v25->_internalURLString, string);
  }

  return v25;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = AAWalrusPCSAuthRequest;
  urlRequest = [(AARequest *)&v8 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = [v4 aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:0];
  if ((v5 & 1) == 0)
  {
    v6 = _AALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AAWalrusPCSAuthRequest *)v6 urlRequest];
    }
  }

  if (self->_bodyParams)
  {
    [v4 aa_setJSONBodyWithParameters:?];
  }

  [v4 setHTTPMethod:@"POST"];

  return v4;
}

@end