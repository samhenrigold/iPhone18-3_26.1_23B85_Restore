@interface FTiMessageRequestMMCSDownloadToken
- (FTiMessageRequestMMCSDownloadToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTiMessageRequestMMCSDownloadToken

- (FTiMessageRequestMMCSDownloadToken)init
{
  v6.receiver = self;
  v6.super_class = FTiMessageRequestMMCSDownloadToken;
  v2 = [(IDSMessage *)&v6 init];
  if (v2)
  {
    IMGetiMessageSettings();
    v3 = 0;
    lastObject = [v3 lastObject];
    [(IDSBaseMessage *)v2 setTopic:lastObject];

    [(IDSBaseMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = FTiMessageRequestMMCSDownloadToken;
  v4 = [(IDSMessage *)&v14 copyWithZone:zone];
  owner = [(FTiMessageRequestMMCSDownloadToken *)self owner];
  [v4 setOwner:owner];

  topic = [(IDSBaseMessage *)self topic];
  [v4 setTopic:topic];

  responseAuthToken = [(FTiMessageRequestMMCSDownloadToken *)self responseAuthToken];
  [v4 setResponseAuthToken:responseAuthToken];

  responseRequestorID = [(FTiMessageRequestMMCSDownloadToken *)self responseRequestorID];
  [v4 setResponseRequestorID:responseRequestorID];

  signature = [(FTiMessageRequestMMCSDownloadToken *)self signature];
  [v4 setSignature:signature];

  [v4 setContentVersion:{-[FTiMessageRequestMMCSDownloadToken contentVersion](self, "contentVersion")}];
  contentHeaders = [(FTiMessageRequestMMCSDownloadToken *)self contentHeaders];
  [v4 setContentHeaders:contentHeaders];

  authURLString = [(FTiMessageRequestMMCSDownloadToken *)self authURLString];
  [v4 setAuthURLString:authURLString];

  responseContentBody = [(FTiMessageRequestMMCSDownloadToken *)self responseContentBody];
  [v4 setResponseContentBody:responseContentBody];

  return v4;
}

- (void)dealloc
{
  [(FTiMessageRequestMMCSDownloadToken *)self setOwner:0];
  [(FTiMessageRequestMMCSDownloadToken *)self setResponseAuthToken:0];
  [(FTiMessageRequestMMCSDownloadToken *)self setResponseRequestorID:0];
  [(FTiMessageRequestMMCSDownloadToken *)self setSignature:0];
  [(FTiMessageRequestMMCSDownloadToken *)self setContentHeaders:0];
  [(FTiMessageRequestMMCSDownloadToken *)self setAuthURLString:0];
  [(FTiMessageRequestMMCSDownloadToken *)self setResponseContentBody:0];
  v3.receiver = self;
  v3.super_class = FTiMessageRequestMMCSDownloadToken;
  [(FTiMessageRequestMMCSDownloadToken *)&v3 dealloc];
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:@"mO"];
  [v2 addObject:@"mS"];

  return v2;
}

- (id)messageBody
{
  v11.receiver = self;
  v11.super_class = FTiMessageRequestMMCSDownloadToken;
  messageBody = [(IDSMessage *)&v11 messageBody];
  v4 = [messageBody mutableCopy];

  owner = [(FTiMessageRequestMMCSDownloadToken *)self owner];
  if (owner)
  {
    CFDictionarySetValue(v4, @"mO", owner);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867ECC();
  }

  signature = [(FTiMessageRequestMMCSDownloadToken *)self signature];
  if (signature)
  {
    CFDictionarySetValue(v4, @"mS", signature);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867F68();
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FTiMessageRequestMMCSDownloadToken contentVersion](self, "contentVersion")}];
  if (v7)
  {
    CFDictionarySetValue(v4, @"cV", v7);
  }

  contentHeaders = [(FTiMessageRequestMMCSDownloadToken *)self contentHeaders];
  if (contentHeaders)
  {
    CFDictionarySetValue(v4, @"cH", contentHeaders);
  }

  authURLString = [(FTiMessageRequestMMCSDownloadToken *)self authURLString];
  if (authURLString)
  {
    CFDictionarySetValue(v4, @"mR", authURLString);
  }

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"mA"];
  if (v4)
  {
    [(FTiMessageRequestMMCSDownloadToken *)self setResponseAuthToken:v4];
  }

  v5 = [dictionaryCopy objectForKey:@"mU"];
  if (v5)
  {
    [(FTiMessageRequestMMCSDownloadToken *)self setResponseRequestorID:v5];
  }

  v6 = [dictionaryCopy objectForKey:@"cV"];
  -[FTiMessageRequestMMCSDownloadToken setResponseContentVersion:](self, "setResponseContentVersion:", [v6 intValue]);

  v7 = [dictionaryCopy objectForKey:@"cB"];
  [(FTiMessageRequestMMCSDownloadToken *)self setResponseContentBody:v7];
}

@end