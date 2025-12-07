@interface FTiMessageRequestMMCSUploadToken
- (FTiMessageRequestMMCSUploadToken)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation FTiMessageRequestMMCSUploadToken

- (FTiMessageRequestMMCSUploadToken)init
{
  v6.receiver = self;
  v6.super_class = FTiMessageRequestMMCSUploadToken;
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

- (void)dealloc
{
  [(FTiMessageRequestMMCSUploadToken *)self setResponseAuthToken:0];
  [(FTiMessageRequestMMCSUploadToken *)self setResponseRequestURL:0];
  [(FTiMessageRequestMMCSUploadToken *)self setResponseRequestorID:0];
  [(FTiMessageRequestMMCSUploadToken *)self setLength:0];
  [(IDSBaseMessage *)self setTopic:0];
  [(FTiMessageRequestMMCSUploadToken *)self setSignature:0];
  [(FTiMessageRequestMMCSUploadToken *)self setContentBody:0];
  [(FTiMessageRequestMMCSUploadToken *)self setContentHeaders:0];
  [(FTiMessageRequestMMCSUploadToken *)self setResponseContentHeaders:0];
  [(FTiMessageRequestMMCSUploadToken *)self setSenderID:0];
  [(FTiMessageRequestMMCSUploadToken *)self setDestinationID:0];
  [(FTiMessageRequestMMCSUploadToken *)self setAnonymousSenderID:0];
  [(FTiMessageRequestMMCSUploadToken *)self setSessionToken:0];
  [(FTiMessageRequestMMCSUploadToken *)self setPushToken:0];
  v3.receiver = self;
  v3.super_class = FTiMessageRequestMMCSUploadToken;
  [(FTiMessageRequestMMCSUploadToken *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19.receiver = self;
  v19.super_class = FTiMessageRequestMMCSUploadToken;
  v4 = [(IDSMessage *)&v19 copyWithZone:zone];
  responseAuthToken = [(FTiMessageRequestMMCSUploadToken *)self responseAuthToken];
  [v4 setResponseAuthToken:responseAuthToken];

  responseRequestURL = [(FTiMessageRequestMMCSUploadToken *)self responseRequestURL];
  [v4 setResponseRequestURL:responseRequestURL];

  responseRequestorID = [(FTiMessageRequestMMCSUploadToken *)self responseRequestorID];
  [v4 setResponseRequestorID:responseRequestorID];

  v8 = [(FTiMessageRequestMMCSUploadToken *)self length];
  [v4 setLength:v8];

  signature = [(FTiMessageRequestMMCSUploadToken *)self signature];
  [v4 setSignature:signature];

  contentBody = [(FTiMessageRequestMMCSUploadToken *)self contentBody];
  [v4 setContentBody:contentBody];

  contentHeaders = [(FTiMessageRequestMMCSUploadToken *)self contentHeaders];
  [v4 setContentHeaders:contentHeaders];

  [v4 setContentVersion:{-[FTiMessageRequestMMCSUploadToken contentVersion](self, "contentVersion")}];
  responseContentHeaders = [(FTiMessageRequestMMCSUploadToken *)self responseContentHeaders];
  [v4 setResponseContentHeaders:responseContentHeaders];

  [v4 setResponseContentVersion:{-[FTiMessageRequestMMCSUploadToken responseContentVersion](self, "responseContentVersion")}];
  senderID = [(FTiMessageRequestMMCSUploadToken *)self senderID];
  [v4 setSenderID:senderID];

  destinationID = [(FTiMessageRequestMMCSUploadToken *)self destinationID];
  [v4 setDestinationID:destinationID];

  anonymousSenderID = [(FTiMessageRequestMMCSUploadToken *)self anonymousSenderID];
  [v4 setAnonymousSenderID:anonymousSenderID];

  sessionToken = [(FTiMessageRequestMMCSUploadToken *)self sessionToken];
  [v4 setSessionToken:sessionToken];

  pushToken = [(FTiMessageRequestMMCSUploadToken *)self pushToken];
  [v4 setPushToken:pushToken];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:@"mS"];
  [v2 addObject:@"mL"];

  return v2;
}

- (id)messageBody
{
  v16.receiver = self;
  v16.super_class = FTiMessageRequestMMCSUploadToken;
  messageBody = [(IDSMessage *)&v16 messageBody];
  v4 = [messageBody mutableCopy];

  signature = [(FTiMessageRequestMMCSUploadToken *)self signature];
  if (signature)
  {
    CFDictionarySetValue(v4, @"mS", signature);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254867F68();
  }

  v6 = [(FTiMessageRequestMMCSUploadToken *)self length];
  if (v6)
  {
    CFDictionarySetValue(v4, @"mL", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_254868004();
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FTiMessageRequestMMCSUploadToken contentVersion](self, "contentVersion")}];
  if (v7)
  {
    CFDictionarySetValue(v4, @"cV", v7);
  }

  contentHeaders = [(FTiMessageRequestMMCSUploadToken *)self contentHeaders];
  if (contentHeaders)
  {
    CFDictionarySetValue(v4, @"cH", contentHeaders);
  }

  contentBody = [(FTiMessageRequestMMCSUploadToken *)self contentBody];
  if (contentBody)
  {
    CFDictionarySetValue(v4, @"cB", contentBody);
  }

  pushToken = [(FTiMessageRequestMMCSUploadToken *)self pushToken];
  if (pushToken)
  {
    CFDictionarySetValue(v4, @"t", pushToken);
  }

  anonymousSenderID = [(FTiMessageRequestMMCSUploadToken *)self anonymousSenderID];
  if (anonymousSenderID)
  {
    CFDictionarySetValue(v4, @"sI", anonymousSenderID);
  }

  sessionToken = [(FTiMessageRequestMMCSUploadToken *)self sessionToken];
  if (sessionToken)
  {
    CFDictionarySetValue(v4, @"sT", sessionToken);
  }

  senderID = [(FTiMessageRequestMMCSUploadToken *)self senderID];
  if (senderID)
  {
    CFDictionarySetValue(v4, @"sP", senderID);
  }

  destinationID = [(FTiMessageRequestMMCSUploadToken *)self destinationID];
  if (destinationID)
  {
    CFDictionarySetValue(v4, @"tP", destinationID);
  }

  return v4;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"mA"];
  if (v4)
  {
    [(FTiMessageRequestMMCSUploadToken *)self setResponseAuthToken:v4];
  }

  v5 = [dictionaryCopy objectForKey:@"mR"];
  if (v5)
  {
    [(FTiMessageRequestMMCSUploadToken *)self setResponseRequestURL:v5];
  }

  v6 = [dictionaryCopy objectForKey:@"mU"];
  if (v6)
  {
    [(FTiMessageRequestMMCSUploadToken *)self setResponseRequestorID:v6];
  }

  v7 = [dictionaryCopy objectForKey:@"cV"];
  -[FTiMessageRequestMMCSUploadToken setResponseContentVersion:](self, "setResponseContentVersion:", [v7 intValue]);

  v8 = [dictionaryCopy objectForKey:@"cH"];
  [(FTiMessageRequestMMCSUploadToken *)self setResponseContentHeaders:v8];

  v9 = [dictionaryCopy objectForKey:@"cB"];
  [(FTiMessageRequestMMCSUploadToken *)self setResponseContentBody:v9];
}

@end