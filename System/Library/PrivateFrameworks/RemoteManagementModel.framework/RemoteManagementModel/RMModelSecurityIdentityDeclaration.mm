@interface RMModelSecurityIdentityDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier credentialAssetReference:(id)reference;
+ (id)buildWithIdentifier:(id)identifier credentialAssetReference:(id)reference allowAllAppsAccess:(id)access keyIsExtractable:(id)extractable;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelSecurityIdentityDeclaration

+ (NSSet)allowedPayloadKeys
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"CredentialAssetReference";
  v6[1] = @"AllowAllAppsAccess";
  v6[2] = @"KeyIsExtractable";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_12 != -1)
  {
    [RMModelSecurityIdentityDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_12;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __53__RMModelSecurityIdentityDeclaration_assetReferences__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467B50 keyPath:@"$.payloadCredentialAssetReference"];
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v2 = assetReferences_assetPaths_12;
  assetReferences_assetPaths_12 = v1;
}

+ (id)buildWithIdentifier:(id)identifier credentialAssetReference:(id)reference allowAllAppsAccess:(id)access keyIsExtractable:(id)extractable
{
  identifierCopy = identifier;
  extractableCopy = extractable;
  accessCopy = access;
  referenceCopy = reference;
  v13 = objc_opt_new();
  [v13 setDeclarationType:@"com.apple.configuration.security.identity"];
  if (identifierCopy)
  {
    [v13 setDeclarationIdentifier:identifierCopy];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [v13 setDeclarationIdentifier:uUIDString];
  }

  [v13 setPayloadCredentialAssetReference:referenceCopy];

  if (accessCopy)
  {
    v16 = accessCopy;
  }

  else
  {
    v16 = MEMORY[0x277CBEC28];
  }

  [v13 setPayloadAllowAllAppsAccess:v16];

  if (extractableCopy)
  {
    v17 = extractableCopy;
  }

  else
  {
    v17 = MEMORY[0x277CBEC38];
  }

  [v13 setPayloadKeyIsExtractable:v17];

  [v13 updateServerToken];

  return v13;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier credentialAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.security.identity"];
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

  [v7 setPayloadCredentialAssetReference:referenceCopy];

  [v7 updateServerToken];

  return v7;
}

+ (id)supportedOS
{
  v29[6] = *MEMORY[0x277D85DE8];
  v28[0] = &unk_28746BA80;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B68];
  v27[0] = v21;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B80];
  v27[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v19;
  v28[1] = &unk_28746BA98;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B98];
  v26[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BB0];
  v26[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v29[1] = v16;
  v28[2] = &unk_28746BAB0;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BC8];
  v25[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BE0];
  v25[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v13;
  v28[3] = &unk_28746BAC8;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467BF8];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C10];
  v24[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v29[3] = v4;
  v28[4] = &unk_28746BAE0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C28];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C40];
  v23[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v29[4] = v7;
  v28[5] = &unk_28746BAF8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C58];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467C70];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v29[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelSecurityIdentityDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"CredentialAssetReference" forKeyPath:@"payloadCredentialAssetReference" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"AllowAllAppsAccess" forKeyPath:@"payloadAllowAllAppsAccess" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"KeyIsExtractable" forKeyPath:@"payloadKeyIsExtractable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadCredentialAssetReference = [(RMModelSecurityIdentityDeclaration *)self payloadCredentialAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CredentialAssetReference" value:payloadCredentialAssetReference isRequired:1 defaultValue:0];

  payloadAllowAllAppsAccess = [(RMModelSecurityIdentityDeclaration *)self payloadAllowAllAppsAccess];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"AllowAllAppsAccess" value:payloadAllowAllAppsAccess isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadKeyIsExtractable = [(RMModelSecurityIdentityDeclaration *)self payloadKeyIsExtractable];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"KeyIsExtractable" value:payloadKeyIsExtractable isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelSecurityIdentityDeclaration;
  v4 = [(RMModelDeclarationBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadCredentialAssetReference copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(NSNumber *)self->_payloadAllowAllAppsAccess copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSNumber *)self->_payloadKeyIsExtractable copy];
  v10 = v4[8];
  v4[8] = v9;

  return v4;
}

@end