@interface ECAuthScheme
+ (NSArray)knownSchemes;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)schemeWithApplescriptScheme:(unsigned int)scheme;
+ (id)schemeWithName:(id)name;
- (NSString)humanReadableName;
- (NSString)name;
- (unsigned)applescriptScheme;
@end

@implementation ECAuthScheme

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot directly allocate a %@ object, use +knownSchemes, +schemeWithName:, or +authSchemesForAccount:connection: instead.", self];
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
    objc_exception_throw(v6);
  }

  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ECAuthScheme;
  return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
}

+ (NSArray)knownSchemes
{
  v14[10] = *MEMORY[0x277D85DE8];
  v13 = +[ECExternalAuthScheme externalAuthScheme];
  v14[0] = v13;
  v2 = +[ECGSSAPIAuthScheme gssapiAuthScheme];
  v14[1] = v2;
  v3 = +[ECAppleTokenAuthScheme appleTokenAuthScheme];
  v14[2] = v3;
  v4 = +[ECAppleToken2AuthScheme appleToken2AuthScheme];
  v14[3] = v4;
  v5 = +[ECOAuth2AuthScheme oauth2AuthScheme];
  v14[4] = v5;
  v6 = +[ECNTLMAuthScheme ntlmAuthScheme];
  v14[5] = v6;
  v7 = +[ECDigestMD5AuthScheme digestMD5AuthScheme];
  v14[6] = v7;
  v8 = +[ECCramMD5AuthScheme cramMD5AuthScheme];
  v14[7] = v8;
  v9 = +[ECAPOPAuthScheme apopAuthScheme];
  v14[8] = v9;
  v10 = +[ECPlainAuthScheme plainAuthScheme];
  v14[9] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)schemeWithName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy || [nameCopy isEqualToString:&stru_284041D88])
  {
    v6 = +[ECPlainAuthScheme plainAuthScheme];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if ([v5 isEqualToString:@"X-APOP"])
  {
    v6 = +[ECAPOPAuthScheme apopAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"CRAM-MD5"])
  {
    v6 = +[ECCramMD5AuthScheme cramMD5AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"DIGEST-MD5"])
  {
    v6 = +[ECDigestMD5AuthScheme digestMD5AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"NTLM"])
  {
    v6 = +[ECNTLMAuthScheme ntlmAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"ATOKEN"])
  {
    v6 = +[ECAppleTokenAuthScheme appleTokenAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"ATOKEN2"])
  {
    v6 = +[ECAppleToken2AuthScheme appleToken2AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"XOAUTH2"])
  {
    v6 = +[ECOAuth2AuthScheme oauth2AuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"GSSAPI"])
  {
    v6 = +[ECGSSAPIAuthScheme gssapiAuthScheme];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:@"EXTERNAL"])
  {
    v6 = +[ECExternalAuthScheme externalAuthScheme];
    goto LABEL_4;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  knownSchemes = [self knownSchemes];
  v7 = [knownSchemes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(knownSchemes);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        supportedSASLMechanisms = [v12 supportedSASLMechanisms];
        v14 = [supportedSASLMechanisms containsObject:v5];

        if (v14)
        {
          v7 = v12;
          goto LABEL_36;
        }
      }

      v7 = [knownSchemes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:

LABEL_5:

  return v7;
}

+ (id)schemeWithApplescriptScheme:(unsigned int)scheme
{
  v3 = 0;
  if (scheme <= 1635279731)
  {
    switch(scheme)
    {
      case 0x6161706Fu:
        v3 = +[ECAPOPAuthScheme apopAuthScheme];
        break;
      case 0x61746F32u:
        v3 = +[ECAppleToken2AuthScheme appleToken2AuthScheme];
        break;
      case 0x61746F6Bu:
        v3 = +[ECAppleTokenAuthScheme appleTokenAuthScheme];
        break;
    }
  }

  else if (scheme > 1635282275)
  {
    if (scheme == 1635282276)
    {
      v3 = +[ECCramMD5AuthScheme cramMD5AuthScheme];
    }

    else if (scheme == 1635282548)
    {
      v3 = +[ECNTLMAuthScheme ntlmAuthScheme];
    }
  }

  else if (scheme == 1635279732)
  {
    v3 = +[ECPlainAuthScheme plainAuthScheme];
  }

  else if (scheme == 1635281717)
  {
    v3 = +[ECGSSAPIAuthScheme gssapiAuthScheme];
  }

  return v3;
}

- (NSString)name
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECAuthScheme.m" lineNumber:152 description:@"Subclass must implement."];

  return &stru_284041D88;
}

- (NSString)humanReadableName
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECAuthScheme.m" lineNumber:157 description:@"Subclass must implement."];

  return &stru_284041D88;
}

- (unsigned)applescriptScheme
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ECAuthScheme.m" lineNumber:162 description:@"Subclass must implement."];

  return 1635284334;
}

@end