@interface RMModelStatusSoftwareUpdateInstallReason
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithReason:(id)reason;
+ (id)buildWithReason:(id)reason declarationId:(id)id;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusSoftwareUpdateInstallReason

+ (NSSet)allowedStatusKeys
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"reason";
  v6[1] = @"declaration-id";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithReason:(id)reason declarationId:(id)id
{
  idCopy = id;
  reasonCopy = reason;
  v7 = objc_opt_new();
  [v7 setStatusReason:reasonCopy];

  [v7 setStatusDeclarationId:idCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithReason:(id)reason
{
  reasonCopy = reason;
  v4 = objc_opt_new();
  [v4 setStatusReason:reasonCopy];

  return v4;
}

+ (id)supportedOS
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_28746CE00;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469DD0];
  v23[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469DE8];
  v23[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v25[0] = v16;
  v24[1] = &unk_28746CE18;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E00];
  v22[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E18];
  v22[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v25[1] = v13;
  v24[2] = &unk_28746CE48;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E30];
  v21[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E48];
  v21[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v25[2] = v4;
  v24[3] = &unk_28746CE30;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E60];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E78];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v25[3] = v7;
  v24[4] = &unk_28746CE60;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469E90];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469EA8];
  v19[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v25[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelStatusSoftwareUpdateInstallReason allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"reason" forKeyPath:@"statusReason" validator:&__block_literal_global_27 isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-id" forKeyPath:@"statusDeclarationId" isRequired:0 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __94__RMModelStatusSoftwareUpdateInstallReason_loadPayloadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusReason = [(RMModelStatusSoftwareUpdateInstallReason *)self statusReason];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v4 usingKey:@"reason" value:statusReason itemSerializer:&__block_literal_global_58 isRequired:1 defaultValue:0];

  statusDeclarationId = [(RMModelStatusSoftwareUpdateInstallReason *)self statusDeclarationId];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"declaration-id" value:statusDeclarationId isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelStatusSoftwareUpdateInstallReason;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSArray *)self->_statusReason copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusDeclarationId copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end