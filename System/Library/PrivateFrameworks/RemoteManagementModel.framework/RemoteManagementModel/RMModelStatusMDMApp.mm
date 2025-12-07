@interface RMModelStatusMDMApp
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed name:(id)name externalVersionId:(id)id version:(id)version shortVersion:(id)shortVersion state:(id)state;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusMDMApp

+ (NSSet)allowedStatusKeys
{
  v6[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"identifier";
  v6[1] = @"_removed";
  v6[2] = @"name";
  v6[3] = @"external-version-id";
  v6[4] = @"version";
  v6[5] = @"short-version";
  v6[6] = @"state";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed name:(id)name externalVersionId:(id)id version:(id)version shortVersion:(id)shortVersion state:(id)state
{
  stateCopy = state;
  shortVersionCopy = shortVersion;
  versionCopy = version;
  idCopy = id;
  nameCopy = name;
  removedCopy = removed;
  identifierCopy = identifier;
  v22 = objc_opt_new();
  [v22 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v23 = removedCopy;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v22 setStatusRemoved:v23];

  [v22 setStatusName:nameCopy];
  [v22 setStatusExternalVersionId:idCopy];

  [v22 setStatusVersion:versionCopy];
  [v22 setStatusShortVersion:shortVersionCopy];

  [v22 setStatusState:stateCopy];

  return v22;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_new();
  [v4 setStatusIdentifier:identifierCopy];

  return v4;
}

+ (id)supportedOS
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24[0] = &unk_28746CA40;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698C0];
  v23[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698D8];
  v23[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v25[0] = v16;
  v24[1] = &unk_28746CA88;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698F0];
  v22[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469908];
  v22[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v25[1] = v13;
  v24[2] = &unk_28746CA70;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469920];
  v21[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469938];
  v21[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v25[2] = v4;
  v24[3] = &unk_28746CAA0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469950];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469968];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v25[3] = v7;
  v24[4] = &unk_28746CAB8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469980];
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469998];
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

  v11 = +[RMModelStatusMDMApp allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"name" forKeyPath:@"statusName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"external-version-id" forKeyPath:@"statusExternalVersionId" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"version" forKeyPath:@"statusVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"short-version" forKeyPath:@"statusShortVersion" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"state" forKeyPath:@"statusState" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  statusIdentifier = [(RMModelStatusMDMApp *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusMDMApp *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusName = [(RMModelStatusMDMApp *)self statusName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"name" value:statusName isRequired:0 defaultValue:0];

  statusExternalVersionId = [(RMModelStatusMDMApp *)self statusExternalVersionId];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"external-version-id" value:statusExternalVersionId isRequired:0 defaultValue:0];

  statusVersion = [(RMModelStatusMDMApp *)self statusVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"version" value:statusVersion isRequired:0 defaultValue:0];

  statusShortVersion = [(RMModelStatusMDMApp *)self statusShortVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"short-version" value:statusShortVersion isRequired:0 defaultValue:0];

  statusState = [(RMModelStatusMDMApp *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"state" value:statusState isRequired:0 defaultValue:0];

  v12 = [v4 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20.receiver = self;
  v20.super_class = RMModelStatusMDMApp;
  v4 = [(RMModelPayloadBase *)&v20 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusName copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusExternalVersionId copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_statusVersion copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusShortVersion copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusState copy];
  v18 = v4[8];
  v4[8] = v17;

  return v4;
}

@end