@interface RMModelDiskManagementSettingsDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)assetTypes;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier restrictions:(id)restrictions;
+ (id)combineConfigurations:(id)configurations;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelDiskManagementSettingsDeclaration

+ (NSSet)allowedPayloadKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"Restrictions";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildWithIdentifier:(id)identifier restrictions:(id)restrictions
{
  identifierCopy = identifier;
  restrictionsCopy = restrictions;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.diskmanagement.settings"];
  if (identifierCopy)
  {
    [v7 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v7 setDeclarationIdentifier:uUIDString];
  }

  [v7 setPayloadRestrictions:restrictionsCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setDeclarationType:@"com.apple.configuration.diskmanagement.settings"];
  if (identifierCopy)
  {
    [v4 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v4 setDeclarationIdentifier:uUIDString];
  }

  [v4 updateServerToken];

  return v4;
}

+ (id)combineConfigurations:(id)configurations
{
  v16 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v4 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = configurationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 combineWithOther:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)supportedOS
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = &unk_28746B1E0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466C38];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287466C50];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v5;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v8 = MEMORY[0x277CBEB58];
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v11 = [v8 setWithArray:allKeys];

  v12 = +[RMModelDiskManagementSettingsDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  LOWORD(v15) = type;
  LOBYTE(self) = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Restrictions" forKeyPath:@"payloadRestrictions" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v15 error:error];

  return self;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadRestrictions = [(RMModelDiskManagementSettingsDeclaration *)self payloadRestrictions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__RMModelDiskManagementSettingsDeclaration_serializePayloadWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Restrictions" value:payloadRestrictions dictSerializer:v9 isRequired:0 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadRestrictions = [(RMModelDiskManagementSettingsDeclaration *)self payloadRestrictions];
  payloadRestrictions2 = [otherCopy payloadRestrictions];

  v6 = [RMModelConfigurationBase combineDictionary:payloadRestrictions other:payloadRestrictions2];
  [(RMModelDiskManagementSettingsDeclaration *)self setPayloadRestrictions:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelDiskManagementSettingsDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:zone];
  v5 = [(RMModelDiskManagementSettingsDeclaration_Restrictions *)self->_payloadRestrictions copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end