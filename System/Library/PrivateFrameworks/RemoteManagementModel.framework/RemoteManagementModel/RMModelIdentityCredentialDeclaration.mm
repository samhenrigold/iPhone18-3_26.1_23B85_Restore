@interface RMModelIdentityCredentialDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithPassword:(id)password identity:(id)identity;
+ (id)buildWithPassword:(id)password identity:(id)identity;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelIdentityCredentialDeclaration

+ (NSSet)allowedPayloadKeys
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Password";
  v6[1] = @"Identity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithPassword:(id)password identity:(id)identity
{
  identityCopy = identity;
  passwordCopy = password;
  v7 = objc_opt_new();
  [v7 setPayloadPassword:passwordCopy];

  [v7 setPayloadIdentity:identityCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithPassword:(id)password identity:(id)identity
{
  identityCopy = identity;
  passwordCopy = password;
  v7 = objc_opt_new();
  [v7 setPayloadPassword:passwordCopy];

  [v7 setPayloadIdentity:identityCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelIdentityCredentialDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Password" forKeyPath:@"payloadPassword" isRequired:1 defaultValue:0 error:error])
  {
    v14 = [(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"Identity" forKeyPath:@"payloadIdentity" isRequired:1 defaultValue:0 serializationType:typeCopy error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  payloadPassword = [(RMModelIdentityCredentialDeclaration *)self payloadPassword];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Password" value:payloadPassword isRequired:1 defaultValue:0];

  payloadIdentity = [(RMModelIdentityCredentialDeclaration *)self payloadIdentity];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"Identity" value:payloadIdentity isRequired:1 defaultValue:0 serializationType:typeCopy];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelIdentityCredentialDeclaration;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadPassword copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSData *)self->_payloadIdentity copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end