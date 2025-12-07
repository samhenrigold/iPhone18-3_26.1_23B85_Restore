@interface RMModelAppManagedDeclaration_ExtensionConfigs
+ (id)build;
+ (id)buildRequiredOnly;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAppManagedDeclaration_ExtensionConfigs

+ (id)build
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  LOBYTE(error) = [(RMModelPayloadBase *)self loadObjectsFromDictionary:dictionaryCopy forKeyPath:@"payloadDictionary" classType:objc_opt_class() serializationType:typeCopy error:error];

  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  payloadDictionary = [(RMModelAppManagedDeclaration_ExtensionConfigs *)self payloadDictionary];
  [(RMModelPayloadBase *)self serializeObjectsIntoDictionary:v5 value:payloadDictionary classType:objc_opt_class() serializationType:typeCopy];

  v7 = [v5 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelAppManagedDeclaration_ExtensionConfigs;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_payloadDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end