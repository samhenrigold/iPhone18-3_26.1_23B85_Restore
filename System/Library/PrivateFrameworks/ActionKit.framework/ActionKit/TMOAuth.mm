@interface TMOAuth
+ (id)headerForURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0;
- (TMOAuth)initWithURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0;
@end

@implementation TMOAuth

- (TMOAuth)initWithURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0
{
  v76[5] = *MEMORY[0x277D85DE8];
  lCopy = l;
  methodCopy = method;
  parametersCopy = parameters;
  nonceCopy = nonce;
  keyCopy = key;
  secretCopy = secret;
  tokenCopy = token;
  tokenSecretCopy = tokenSecret;
  v73.receiver = self;
  v73.super_class = TMOAuth;
  v24 = [(TMOAuth *)&v73 init];
  if (v24)
  {
    v66 = tokenSecretCopy;
    v68 = secretCopy;
    v25 = keyCopy;
    v26 = objc_alloc(MEMORY[0x277CBEB38]);
    v75[0] = @"oauth_timestamp";
    date = [MEMORY[0x277CBEAA8] date];
    v28 = nonceCopy;
    v29 = MEMORY[0x277CCACA8];
    [date timeIntervalSince1970];
    [v29 stringWithFormat:@"%f", round(v30)];
    v31 = v67 = tokenCopy;
    v75[1] = @"oauth_nonce";
    v75[2] = @"oauth_version";
    v76[2] = @"1.0";
    v76[3] = @"HMAC-SHA1";
    v76[0] = v31;
    v76[1] = v28;
    v61 = v25;
    v62 = v28;
    v75[3] = @"oauth_signature_method";
    v75[4] = @"oauth_consumer_key";
    v76[4] = v25;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:5];
    v33 = [v26 initWithDictionary:v32];

    if (v67 && [v67 length])
    {
      [v33 setObject:v67 forKeyedSubscript:@"oauth_token"];
    }

    query = [lCopy query];
    v35 = type metadata for some(query);

    v65 = lCopy;
    absoluteString = [lCopy absoluteString];
    v37 = [absoluteString componentsSeparatedByString:@"?"];
    v38 = [v37 objectAtIndexedSubscript:0];

    v58 = v38;
    v59 = v35;
    v63 = parametersCopy;
    v64 = methodCopy;
    v39 = generateBaseString(v38, methodCopy, v33, v35, parametersCopy);
    v60 = v24;
    objc_storeStrong(&v24->_baseString, v39);
    v57 = v39;
    v40 = sign(v39, v68, v66);
    [v33 setObject:v40 forKeyedSubscript:@"oauth_signature"];

    array = [MEMORY[0x277CBEB18] array];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v42 = v33;
    v43 = [v42 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v70;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v70 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v69 + 1) + 8 * i);
          v48 = MEMORY[0x277CCACA8];
          v49 = [v42 objectForKeyedSubscript:v47];
          v50 = TMURLEncode(v49);
          v51 = [v48 stringWithFormat:@"%@=%@", v47, v50, v57, v58, v59];
          [array addObject:v51];
        }

        v44 = [v42 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v44);
    }

    v52 = MEMORY[0x277CCACA8];
    v53 = [array componentsJoinedByString:{@", "}];
    v54 = [v52 stringWithFormat:@"OAuth %@", v53];
    v24 = v60;
    headerString = v60->_headerString;
    v60->_headerString = v54;

    methodCopy = v64;
    lCopy = v65;
    nonceCopy = v62;
    parametersCopy = v63;
    keyCopy = v61;
    tokenCopy = v67;
    secretCopy = v68;
    tokenSecretCopy = v66;
  }

  return v24;
}

+ (id)headerForURL:(id)l method:(id)method postParameters:(id)parameters nonce:(id)nonce consumerKey:(id)key consumerSecret:(id)secret token:(id)token tokenSecret:(id)self0
{
  tokenSecretCopy = tokenSecret;
  tokenCopy = token;
  secretCopy = secret;
  keyCopy = key;
  nonceCopy = nonce;
  parametersCopy = parameters;
  methodCopy = method;
  lCopy = l;
  v24 = [[TMOAuth alloc] initWithURL:lCopy method:methodCopy postParameters:parametersCopy nonce:nonceCopy consumerKey:keyCopy consumerSecret:secretCopy token:tokenCopy tokenSecret:tokenSecretCopy];

  headerString = [(TMOAuth *)v24 headerString];

  return headerString;
}

@end