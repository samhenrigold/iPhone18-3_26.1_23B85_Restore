@interface DAEASOAuthClient
+ (id)_defaultScopeWithDomainForOAuthType:(unint64_t)type;
+ (id)_defaultScopeWithoutDomainForOAuthType:(unint64_t)type forToken:(BOOL)token;
+ (id)clientIDForOAuthType:(unint64_t)type;
+ (id)clientRedirectForOAuthType:(unint64_t)type;
+ (id)clientRedirectURLSchemeForOAuthType:(unint64_t)type;
+ (id)defaultScopeForOAuthType:(unint64_t)type withResourceIdentifier:(id)identifier forToken:(BOOL)token isOnPrem:(BOOL)prem;
@end

@implementation DAEASOAuthClient

+ (id)clientIDForOAuthType:(unint64_t)type
{
  v15[1] = *MEMORY[0x277D85DE8];
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v3 = [@"91:ef870.a438-57cd.99ce-3b3543e71d71" length];
    MEMORY[0x28223BE20]();
    v5 = v15 - v4;
    uTF8String = [@"91:ef870.a438-57cd.99ce-3b3543e71d71" UTF8String];
    if (v3 >= 1)
    {
      v7 = 0;
      v8 = v3 & 0x7FFFFFFF;
      do
      {
        v5[v7] = *(uTF8String + v7) - ((v7 + 1) & 1);
        ++v7;
      }

      while (v8 != v7);
      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
LABEL_12:
    v5[v8] = 0;
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
    goto LABEL_14;
  }

  if (type == 2)
  {
    v9 = [@"g8e99a:6.0:9:-53g5.8bf4-79:72c8bc433" length];
    MEMORY[0x28223BE20]();
    v5 = v15 - v10;
    uTF8String2 = [@"g8e99a:6.0:9:-53g5.8bf4-79:72c8bc433" UTF8String];
    if (v9 >= 1)
    {
      v12 = 0;
      v8 = v9 & 0x7FFFFFFF;
      do
      {
        v5[v12] = *(uTF8String2 + v12) - ((v12 + 1) & 1);
        ++v12;
      }

      while (v8 != v12);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

+ (id)_defaultScopeWithDomainForOAuthType:(unint64_t)type
{
  if (type == 2)
  {
    return &unk_2859F07D8;
  }

  else
  {
    return 0;
  }
}

+ (id)_defaultScopeWithoutDomainForOAuthType:(unint64_t)type forToken:(BOOL)token
{
  switch(type)
  {
    case 1uLL:
      v4 = &unk_2859F0808;
      break;
    case 3uLL:
      v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:&unk_2859F0820];
      v4 = v6;
      if (!token)
      {
        [v6 addObjectsFromArray:&unk_2859F0838];
      }

      break;
    case 2uLL:
      v4 = &unk_2859F07F0;
      break;
    default:
      v4 = 0;
      break;
  }

  return v4;
}

+ (id)defaultScopeForOAuthType:(unint64_t)type withResourceIdentifier:(id)identifier forToken:(BOOL)token isOnPrem:(BOOL)prem
{
  tokenCopy = token;
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [self _defaultScopeWithoutDomainForOAuthType:type forToken:tokenCopy];
  [v11 addObjectsFromArray:v12];

  v13 = _os_feature_enabled_impl();
  if (type == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (prem || (v14 & 1) != 0)
  {
    v15 = [self _defaultScopeWithDomainForOAuthType:type];
    [v11 addObjectsFromArray:v15];
  }

  else
  {
    if (!identifierCopy)
    {
      goto LABEL_17;
    }

    v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:identifierCopy];
    v16 = objc_alloc_init(MEMORY[0x277CCACE0]);
    scheme = [v15 scheme];
    [v16 setScheme:scheme];

    host = [v15 host];
    [v16 setHost:host];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [self _defaultScopeWithDomainForOAuthType:{type, 0}];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [@"/" stringByAppendingString:*(*(&v27 + 1) + 8 * i)];
          [v16 setPath:v24];

          string = [v16 string];
          [v11 addObject:string];
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v21);
    }
  }

LABEL_17:

  return v11;
}

+ (id)clientRedirectForOAuthType:(unint64_t)type
{
  if (type == 2)
  {
    v3 = MEMORY[0x277CCACA8];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [v3 stringWithFormat:@"%@://%@", bundleIdentifier, @"oauth-redirect"];
  }

  else
  {
    v6 = @"urn:ietf:wg:oauth:2.0:oob";
  }

  return v6;
}

+ (id)clientRedirectURLSchemeForOAuthType:(unint64_t)type
{
  v3 = [self clientRedirectForOAuthType:type];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACE0]) initWithString:v3];
    scheme = [v4 scheme];
  }

  else
  {
    scheme = 0;
  }

  return scheme;
}

@end