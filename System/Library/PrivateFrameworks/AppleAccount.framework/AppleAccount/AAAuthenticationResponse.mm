@interface AAAuthenticationResponse
+ (id)_privacySensitiveKeys;
- (AAAuthenticationResponse)initWithHTTPResponse:(id)response data:(id)data;
- (NSString)personID;
- (id)privacySensitiveResponseBody;
@end

@implementation AAAuthenticationResponse

- (AAAuthenticationResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v16.receiver = self;
  v16.super_class = AAAuthenticationResponse;
  v4 = [(AAResponse *)&v16 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4 && ([(NSHTTPURLResponse *)v4->super._httpResponse statusCode]== 200 || [(NSHTTPURLResponse *)v5->super._httpResponse statusCode]== 409))
  {
    responseDictionary = [(AAResponse *)v5 responseDictionary];

    if (responseDictionary)
    {
      responseDictionary2 = [(AAResponse *)v5 responseDictionary];
      v8 = [responseDictionary2 objectForKey:@"tokens"];
      v9 = [v8 copy];
      tokens = v5->_tokens;
      v5->_tokens = v9;

      responseDictionary3 = [(AAResponse *)v5 responseDictionary];
      v12 = [responseDictionary3 objectForKey:@"appleAccountInfo"];
      v13 = [v12 copy];
      appleAccount = v5->_appleAccount;
      v5->_appleAccount = v13;
    }
  }

  return v5;
}

- (NSString)personID
{
  v3 = [(NSDictionary *)self->_appleAccount objectForKey:@"dsid"];
  if (!v3)
  {
    v3 = [(NSDictionary *)self->_appleAccount objectForKey:@"dsPrsID"];
  }

  return v3;
}

+ (id)_privacySensitiveKeys
{
  if (_privacySensitiveKeys_onceToken_0 != -1)
  {
    +[AAAuthenticationResponse _privacySensitiveKeys];
  }

  v3 = _privacySensitiveKeys_keysToRedact_0;

  return v3;
}

void __49__AAAuthenticationResponse__privacySensitiveKeys__block_invoke()
{
  v3[18] = *MEMORY[0x1E69E9840];
  v3[0] = @"age-category";
  v3[1] = @"alternate-dsid";
  v3[2] = @"auth-token";
  v3[3] = @"base-phone-number";
  v3[4] = @"firstName";
  v3[5] = @"fullName";
  v3[6] = @"fullName";
  v3[7] = @"FullUserName";
  v3[8] = @"lastName";
  v3[9] = @"middleName";
  v3[10] = @"profile-id";
  v3[11] = @"pushToken";
  v3[12] = @"realm-user-id";
  v3[13] = @"uri";
  v3[14] = @"aDsID";
  v3[15] = @"dsid";
  v3[16] = @"dsPrsID";
  v3[17] = @"tokens";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:18];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = _privacySensitiveKeys_keysToRedact_0;
  _privacySensitiveKeys_keysToRedact_0 = v1;
}

- (id)privacySensitiveResponseBody
{
  responseDictionary = [(AAResponse *)self responseDictionary];

  if (responseDictionary)
  {
    v4 = [AAPrivacySensitiveDictionaryLog alloc];
    responseDictionary2 = [(AAResponse *)self responseDictionary];
    v6 = +[AAAuthenticationResponse _privacySensitiveKeys];
    v7 = [(AAPrivacySensitiveDictionaryLog *)v4 initWithDictionary:responseDictionary2 forKeys:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end