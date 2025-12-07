@interface AASetupAssistantConfigResponse
- (AASetupAssistantConfigResponse)initWithHTTPResponse:(id)response data:(id)data;
- (BOOL)setupAssistantServerEnabled;
- (NSString)activeEmailDomain;
@end

@implementation AASetupAssistantConfigResponse

- (AASetupAssistantConfigResponse)initWithHTTPResponse:(id)response data:(id)data
{
  v17.receiver = self;
  v17.super_class = AASetupAssistantConfigResponse;
  v4 = [(AAResponse *)&v17 initWithHTTPResponse:response data:data];
  v5 = v4;
  if (v4)
  {
    responseDictionary = [(AAResponse *)v4 responseDictionary];

    if (responseDictionary)
    {
      responseDictionary2 = [(AAResponse *)v5 responseDictionary];
      v9 = [responseDictionary2 objectForKey:@"urls"];
      v10 = [v9 copy];
      urls = v5->_urls;
      v5->_urls = v10;
    }

    else
    {
      v12 = _AALogSystem(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Empty response for configuration plist", v16, 2u);
      }

      responseDictionary2 = [MEMORY[0x1E695DF90] dictionary];
      v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"COMMUNICATIONS_ERROR" value:&stru_1F2EF6280 table:@"Localizable"];
      [responseDictionary2 setObject:v14 forKey:*MEMORY[0x1E696A578]];

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.appleaccount" code:0 userInfo:responseDictionary2];
      [(AAResponse *)v5 setError:v9];
    }
  }

  return v5;
}

- (BOOL)setupAssistantServerEnabled
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantServerEnabledKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (NSString)activeEmailDomain
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantActiveEmailDomainKey];

  return v3;
}

@end