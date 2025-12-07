@interface RMModelPasscodeSettingsDeclaration_CustomRegexDescription
+ (id)build;
+ (id)buildRequiredOnly;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelPasscodeSettingsDeclaration_CustomRegexDescription

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
  payloadDictionary = [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self payloadDictionary];
  [(RMModelPayloadBase *)self serializeObjectsIntoDictionary:v5 value:payloadDictionary classType:objc_opt_class() serializationType:typeCopy];

  v7 = [v5 copy];

  return v7;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadDictionary = [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self payloadDictionary];
  payloadDictionary2 = [otherCopy payloadDictionary];

  v6 = [RMModelConfigurationBase combineMergeDictionary:payloadDictionary other:payloadDictionary2];
  [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self setPayloadDictionary:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelPasscodeSettingsDeclaration_CustomRegexDescription;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_payloadDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end