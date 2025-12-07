@interface RMProtocolSynchronizationTokens
+ (id)requestWithTimestamp:(id)timestamp declarationsToken:(id)token;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolSynchronizationTokens

+ (id)requestWithTimestamp:(id)timestamp declarationsToken:(id)token
{
  tokenCopy = token;
  timestampCopy = timestamp;
  v7 = objc_opt_new();
  [v7 setTokensTimestamp:timestampCopy];

  [v7 setTokensDeclarationsToken:tokenCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadDateFromDictionary:dictionaryCopy usingKey:@"Timestamp" forKeyPath:@"tokensTimestamp" isRequired:1 defaultValue:0 serializationType:typeCopy error:error])
  {
    v9 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"DeclarationsToken" forKeyPath:@"tokensDeclarationsToken" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  tokensTimestamp = [(RMProtocolSynchronizationTokens *)self tokensTimestamp];
  [(RMModelPayloadBase *)self serializeDateIntoDictionary:v5 usingKey:@"Timestamp" value:tokensTimestamp isRequired:1 defaultValue:0 serializationType:typeCopy];

  tokensDeclarationsToken = [(RMProtocolSynchronizationTokens *)self tokensDeclarationsToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"DeclarationsToken" value:tokensDeclarationsToken isRequired:1 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolSynchronizationTokens;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSDate *)self->_tokensTimestamp copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_tokensDeclarationsToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end