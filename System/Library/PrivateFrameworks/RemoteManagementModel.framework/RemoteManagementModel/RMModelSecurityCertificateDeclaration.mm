@interface RMModelSecurityCertificateDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier credentialAssetReference:(id)reference;
+ (id)buildWithIdentifier:(id)identifier credentialAssetReference:(id)reference;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)assetReferences;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelSecurityCertificateDeclaration

+ (NSSet)allowedPayloadKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"CredentialAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)assetReferences
{
  if (assetReferences_onceToken_11 != -1)
  {
    [RMModelSecurityCertificateDeclaration assetReferences];
  }

  v3 = assetReferences_assetPaths_11;

  return [(RMModelConfigurationBase *)self assetReferencesFromKeyPaths:v3 payloadObject:self];
}

void __56__RMModelSecurityCertificateDeclaration_assetReferences__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [[RMModelConfigurationSchemaAssetReference alloc] initWithAssetTypes:&unk_287467A00 keyPath:@"$.payloadCredentialAssetReference"];
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v2 = assetReferences_assetPaths_11;
  assetReferences_assetPaths_11 = v1;
}

+ (id)buildWithIdentifier:(id)identifier credentialAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.security.certificate"];
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

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier credentialAssetReference:(id)reference
{
  identifierCopy = identifier;
  referenceCopy = reference;
  v7 = objc_opt_new();
  [v7 setDeclarationType:@"com.apple.configuration.security.certificate"];
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
  v28[0] = &unk_28746B9F0;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A18];
  v27[0] = v21;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A30];
  v27[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v19;
  v28[1] = &unk_28746BA08;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A48];
  v26[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A60];
  v26[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v29[1] = v16;
  v28[2] = &unk_28746BA20;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A78];
  v25[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467A90];
  v25[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v13;
  v28[3] = &unk_28746BA38;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AA8];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AC0];
  v24[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v29[3] = v4;
  v28[4] = &unk_28746BA50;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AD8];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467AF0];
  v23[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v29[4] = v7;
  v28[5] = &unk_28746BA68;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B08];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287467B20];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v29[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v7 = MEMORY[0x277CBEB58];
  dictionaryCopy = dictionary;
  allKeys = [dictionaryCopy allKeys];
  v10 = [v7 setWithArray:allKeys];

  v11 = +[RMModelSecurityCertificateDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  LOBYTE(error) = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"CredentialAssetReference" forKeyPath:@"payloadCredentialAssetReference" isRequired:1 defaultValue:0 error:error];
  return error;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadCredentialAssetReference = [(RMModelSecurityCertificateDeclaration *)self payloadCredentialAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"CredentialAssetReference" value:payloadCredentialAssetReference isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelSecurityCertificateDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadCredentialAssetReference copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end