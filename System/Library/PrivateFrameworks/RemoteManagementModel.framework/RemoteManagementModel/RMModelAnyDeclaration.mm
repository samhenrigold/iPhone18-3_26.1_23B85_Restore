@interface RMModelAnyDeclaration
+ (id)buildWithType:(id)type identifier:(id)identifier payload:(id)payload;
+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)declarationClassType;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelAnyDeclaration

+ (id)buildWithType:(id)type identifier:(id)identifier payload:(id)payload
{
  payloadCopy = payload;
  identifierCopy = identifier;
  typeCopy = type;
  v10 = objc_opt_new();
  [v10 setDeclarationType:typeCopy];

  [v10 setDeclarationIdentifier:identifierCopy];
  v11 = [payloadCopy copy];

  [v10 setPayload:v11];
  [v10 updateServerToken];

  return v10;
}

+ (id)load:(id)load serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  loadCopy = load;
  v8 = objc_opt_new();
  LODWORD(error) = [v8 loadFromDictionary:loadCopy serializationType:typeCopy error:error];

  if (error)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)declarationClassType
{
  declarationType = [(RMModelDeclarationBase *)self declarationType];
  v4 = [declarationType hasPrefix:@"com.apple.activation."];

  if (v4)
  {
    return @"activation";
  }

  declarationType2 = [(RMModelDeclarationBase *)self declarationType];
  v7 = [declarationType2 hasPrefix:@"com.apple.asset."];

  if (v7)
  {
    return @"asset";
  }

  declarationType3 = [(RMModelDeclarationBase *)self declarationType];
  v9 = [declarationType3 hasPrefix:@"com.apple.configuration."];

  if (v9)
  {
    return @"configuration";
  }

  declarationType4 = [(RMModelDeclarationBase *)self declarationType];
  v11 = [declarationType4 hasPrefix:@"com.apple.management."];

  if (v11)
  {
    return @"management";
  }

  else
  {
    return @"unknown";
  }
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v6 = [dictionary copy];
  [(RMModelAnyDeclaration *)self setPayload:v6];

  return 1;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  payload = [(RMModelAnyDeclaration *)self payload];
  v4 = [payload copy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelAnyDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_payload copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end