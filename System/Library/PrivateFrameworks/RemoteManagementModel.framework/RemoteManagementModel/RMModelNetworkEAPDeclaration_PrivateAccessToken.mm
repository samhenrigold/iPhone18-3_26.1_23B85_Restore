@interface RMModelNetworkEAPDeclaration_PrivateAccessToken
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIssuerName:(id)name tokenKey:(id)key;
+ (id)buildWithType:(id)type issuerName:(id)name redemptionContext:(id)context tokenKey:(id)key;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkEAPDeclaration_PrivateAccessToken

+ (NSSet)allowedPayloadKeys
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Type";
  v6[1] = @"IssuerName";
  v6[2] = @"RedemptionContext";
  v6[3] = @"TokenKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithType:(id)type issuerName:(id)name redemptionContext:(id)context tokenKey:(id)key
{
  keyCopy = key;
  contextCopy = context;
  nameCopy = name;
  typeCopy = type;
  v13 = objc_opt_new();
  v14 = v13;
  if (typeCopy)
  {
    v15 = typeCopy;
  }

  else
  {
    v15 = &unk_28746B690;
  }

  [v13 setPayloadType:v15];

  [v14 setPayloadIssuerName:nameCopy];
  [v14 setPayloadRedemptionContext:contextCopy];

  [v14 setPayloadTokenKey:keyCopy];

  return v14;
}

+ (id)buildRequiredOnlyWithIssuerName:(id)name tokenKey:(id)key
{
  keyCopy = key;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setPayloadIssuerName:nameCopy];

  [v7 setPayloadTokenKey:keyCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelNetworkEAPDeclaration_PrivateAccessToken allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"payloadType" isRequired:0 defaultValue:&unk_28746B690 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"IssuerName" forKeyPath:@"payloadIssuerName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"RedemptionContext" forKeyPath:@"payloadRedemptionContext" isRequired:0 defaultValue:0 serializationType:typeCopy error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TokenKey" forKeyPath:@"payloadTokenKey" isRequired:1 defaultValue:0 error:error];
  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  payloadType = [(RMModelNetworkEAPDeclaration_PrivateAccessToken *)self payloadType];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Type" value:payloadType isRequired:0 defaultValue:&unk_28746B690];

  payloadIssuerName = [(RMModelNetworkEAPDeclaration_PrivateAccessToken *)self payloadIssuerName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"IssuerName" value:payloadIssuerName isRequired:1 defaultValue:0];

  payloadRedemptionContext = [(RMModelNetworkEAPDeclaration_PrivateAccessToken *)self payloadRedemptionContext];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"RedemptionContext" value:payloadRedemptionContext isRequired:0 defaultValue:0 serializationType:typeCopy];

  payloadTokenKey = [(RMModelNetworkEAPDeclaration_PrivateAccessToken *)self payloadTokenKey];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"TokenKey" value:payloadTokenKey isRequired:1 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_PrivateAccessToken;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSNumber *)self->_payloadType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadIssuerName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSData *)self->_payloadRedemptionContext copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadTokenKey copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end