@interface RMModelStatusSecurityCertificateList
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data;
+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializePayloadWithType:(signed __int16)type;
@end

@implementation RMModelStatusSecurityCertificateList

+ (NSSet)allowedStatusKeys
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"identifier";
  v6[1] = @"_removed";
  v6[2] = @"declaration-identifier";
  v6[3] = @"subject-summary";
  v6[4] = @"is-identity";
  v6[5] = @"data";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier removed:(id)removed declarationIdentifier:(id)declarationIdentifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data
{
  dataCopy = data;
  identityCopy = identity;
  summaryCopy = summary;
  declarationIdentifierCopy = declarationIdentifier;
  removedCopy = removed;
  identifierCopy = identifier;
  v19 = objc_opt_new();
  [v19 setStatusIdentifier:identifierCopy];

  if (removedCopy)
  {
    v20 = removedCopy;
  }

  else
  {
    v20 = MEMORY[0x277CBEC28];
  }

  [v19 setStatusRemoved:v20];

  [v19 setStatusDeclarationIdentifier:declarationIdentifierCopy];
  [v19 setStatusSubjectSummary:summaryCopy];

  [v19 setStatusIsIdentity:identityCopy];
  [v19 setStatusData:dataCopy];

  return v19;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier subjectSummary:(id)summary isIdentity:(id)identity data:(id)data
{
  dataCopy = data;
  identityCopy = identity;
  summaryCopy = summary;
  identifierCopy = identifier;
  v13 = objc_opt_new();
  [v13 setStatusIdentifier:identifierCopy];

  [v13 setStatusSubjectSummary:summaryCopy];
  [v13 setStatusIsIdentity:identityCopy];

  [v13 setStatusData:dataCopy];

  return v13;
}

+ (id)supportedOS
{
  v29[6] = *MEMORY[0x277D85DE8];
  v28[0] = &unk_28746CC98;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469B90];
  v27[0] = v21;
  v20 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BA8];
  v27[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v29[0] = v19;
  v28[1] = &unk_28746CCB0;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BC0];
  v26[0] = v18;
  v17 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BD8];
  v26[1] = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v29[1] = v16;
  v28[2] = &unk_28746CCC8;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469BF0];
  v25[0] = v15;
  v14 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C08];
  v25[1] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v29[2] = v13;
  v28[3] = &unk_28746CCE0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C20];
  v24[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C38];
  v24[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v29[3] = v4;
  v28[4] = &unk_28746CCF8;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C50];
  v23[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C68];
  v23[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v29[4] = v7;
  v28[5] = &unk_28746CD10;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C80];
  v22[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469C98];
  v22[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v29[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusSecurityCertificateList allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  v14 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"subject-summary" forKeyPath:@"statusSubjectSummary" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"is-identity" forKeyPath:@"statusIsIdentity" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"data" forKeyPath:@"statusData" isRequired:1 defaultValue:0 serializationType:typeCopy error:error];
  return v14;
}

- (id)serializePayloadWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  statusIdentifier = [(RMModelStatusSecurityCertificateList *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:statusIdentifier isRequired:1 defaultValue:0];

  statusRemoved = [(RMModelStatusSecurityCertificateList *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:statusRemoved isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  statusDeclarationIdentifier = [(RMModelStatusSecurityCertificateList *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"declaration-identifier" value:statusDeclarationIdentifier isRequired:0 defaultValue:0];

  statusSubjectSummary = [(RMModelStatusSecurityCertificateList *)self statusSubjectSummary];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"subject-summary" value:statusSubjectSummary isRequired:1 defaultValue:0];

  statusIsIdentity = [(RMModelStatusSecurityCertificateList *)self statusIsIdentity];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"is-identity" value:statusIsIdentity isRequired:1 defaultValue:0];

  statusData = [(RMModelStatusSecurityCertificateList *)self statusData];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"data" value:statusData isRequired:1 defaultValue:0 serializationType:typeCopy];

  v12 = [v5 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RMModelStatusSecurityCertificateList;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:zone];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusDeclarationIdentifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusSubjectSummary copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_statusIsIdentity copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSData *)self->_statusData copy];
  v16 = v4[7];
  v4[7] = v15;

  return v4;
}

@end