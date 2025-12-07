@interface RMModelSCEPCredentialDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithURL:(id)l;
+ (id)buildWithURL:(id)l name:(id)name subject:(id)subject challenge:(id)challenge keysize:(id)keysize keyType:(id)type keyUsage:(id)usage caFingerprint:(id)self0 retries:(id)self1 retryDelay:(id)self2 subjectAltName:(id)self3;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelSCEPCredentialDeclaration

+ (NSSet)allowedPayloadKeys
{
  v6[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"URL";
  v6[1] = @"Name";
  v6[2] = @"Subject";
  v6[3] = @"Challenge";
  v6[4] = @"Keysize";
  v6[5] = @"Key Type";
  v6[6] = @"Key Usage";
  v6[7] = @"CAFingerprint";
  v6[8] = @"Retries";
  v6[9] = @"RetryDelay";
  v6[10] = @"SubjectAltName";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:11];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)buildWithURL:(id)l name:(id)name subject:(id)subject challenge:(id)challenge keysize:(id)keysize keyType:(id)type keyUsage:(id)usage caFingerprint:(id)self0 retries:(id)self1 retryDelay:(id)self2 subjectAltName:(id)self3
{
  altNameCopy = altName;
  delayCopy = delay;
  retriesCopy = retries;
  fingerprintCopy = fingerprint;
  usageCopy = usage;
  typeCopy = type;
  keysizeCopy = keysize;
  challengeCopy = challenge;
  subjectCopy = subject;
  nameCopy = name;
  lCopy = l;
  v26 = objc_opt_new();
  [v26 setPayloadURL:lCopy];

  [v26 setPayloadName:nameCopy];
  [v26 setPayloadSubject:subjectCopy];

  [v26 setPayloadChallenge:challengeCopy];
  if (keysizeCopy)
  {
    v27 = keysizeCopy;
  }

  else
  {
    v27 = &unk_28746B870;
  }

  [v26 setPayloadKeysize:{v27, l}];

  if (typeCopy)
  {
    v28 = typeCopy;
  }

  else
  {
    v28 = @"RSA";
  }

  [v26 setPayloadKeyType:v28];

  if (usageCopy)
  {
    v29 = usageCopy;
  }

  else
  {
    v29 = &unk_28746B888;
  }

  [v26 setPayloadKeyUsage:v29];

  [v26 setPayloadCAFingerprint:fingerprintCopy];
  if (retriesCopy)
  {
    v30 = retriesCopy;
  }

  else
  {
    v30 = &unk_28746B8A0;
  }

  [v26 setPayloadRetries:v30];

  if (delayCopy)
  {
    v31 = delayCopy;
  }

  else
  {
    v31 = &unk_28746B8B8;
  }

  [v26 setPayloadRetryDelay:v31];

  [v26 setPayloadSubjectAltName:altNameCopy];

  return v26;
}

+ (id)buildRequiredOnlyWithURL:(id)l
{
  lCopy = l;
  v4 = objc_opt_new();
  [v4 setPayloadURL:lCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelSCEPCredentialDeclaration allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"URL" forKeyPath:@"payloadURL" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Name" forKeyPath:@"payloadName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Subject" forKeyPath:@"payloadSubject" validator:&__block_literal_global_15 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Challenge" forKeyPath:@"payloadChallenge" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Keysize" forKeyPath:@"payloadKeysize" isRequired:0 defaultValue:&unk_28746B870 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Key Type" forKeyPath:@"payloadKeyType" isRequired:0 defaultValue:@"RSA" error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Key Usage" forKeyPath:@"payloadKeyUsage" isRequired:0 defaultValue:&unk_28746B888 error:error]&& [(RMModelPayloadBase *)self loadDataFromDictionary:dictionaryCopy usingKey:@"CAFingerprint" forKeyPath:@"payloadCAFingerprint" isRequired:0 defaultValue:0 serializationType:typeCopy error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Retries" forKeyPath:@"payloadRetries" isRequired:0 defaultValue:&unk_28746B8A0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"RetryDelay" forKeyPath:@"payloadRetryDelay" isRequired:0 defaultValue:&unk_28746B8B8 error:error])
  {
    LOWORD(v16) = typeCopy;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"SubjectAltName" forKeyPath:@"payloadSubjectAltName" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __79__RMModelSCEPCredentialDeclaration_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = a2;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    v15 = *v21;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_19:
          v13 = 0;
          goto LABEL_21;
        }

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v5 = v15;
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v13 = 1;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_21:

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  payloadURL = [(RMModelSCEPCredentialDeclaration *)self payloadURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"URL" value:payloadURL isRequired:1 defaultValue:0];

  payloadName = [(RMModelSCEPCredentialDeclaration *)self payloadName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Name" value:payloadName isRequired:0 defaultValue:0];

  payloadSubject = [(RMModelSCEPCredentialDeclaration *)self payloadSubject];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Subject" value:payloadSubject itemSerializer:&__block_literal_global_83 isRequired:0 defaultValue:0];

  payloadChallenge = [(RMModelSCEPCredentialDeclaration *)self payloadChallenge];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Challenge" value:payloadChallenge isRequired:0 defaultValue:0];

  payloadKeysize = [(RMModelSCEPCredentialDeclaration *)self payloadKeysize];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Keysize" value:payloadKeysize isRequired:0 defaultValue:&unk_28746B870];

  payloadKeyType = [(RMModelSCEPCredentialDeclaration *)self payloadKeyType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Key Type" value:payloadKeyType isRequired:0 defaultValue:@"RSA"];

  payloadKeyUsage = [(RMModelSCEPCredentialDeclaration *)self payloadKeyUsage];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Key Usage" value:payloadKeyUsage isRequired:0 defaultValue:&unk_28746B888];

  payloadCAFingerprint = [(RMModelSCEPCredentialDeclaration *)self payloadCAFingerprint];
  [(RMModelPayloadBase *)self serializeDataIntoDictionary:v5 usingKey:@"CAFingerprint" value:payloadCAFingerprint isRequired:0 defaultValue:0 serializationType:typeCopy];

  payloadRetries = [(RMModelSCEPCredentialDeclaration *)self payloadRetries];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"Retries" value:payloadRetries isRequired:0 defaultValue:&unk_28746B8A0];

  payloadRetryDelay = [(RMModelSCEPCredentialDeclaration *)self payloadRetryDelay];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"RetryDelay" value:payloadRetryDelay isRequired:0 defaultValue:&unk_28746B8B8];

  payloadSubjectAltName = [(RMModelSCEPCredentialDeclaration *)self payloadSubjectAltName];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__RMModelSCEPCredentialDeclaration_serializeWithType___block_invoke_2;
  v19[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v20 = typeCopy;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"SubjectAltName" value:payloadSubjectAltName dictSerializer:v19 isRequired:0 defaultValue:0];

  v17 = [v5 copy];

  return v17;
}

id __54__RMModelSCEPCredentialDeclaration_serializeWithType___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28.receiver = self;
  v28.super_class = RMModelSCEPCredentialDeclaration;
  v4 = [(RMModelPayloadBase *)&v28 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadURL copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_payloadSubject copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadChallenge copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_payloadKeysize copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_payloadKeyType copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSNumber *)self->_payloadKeyUsage copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSData *)self->_payloadCAFingerprint copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSNumber *)self->_payloadRetries copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(NSNumber *)self->_payloadRetryDelay copy];
  v24 = v4[11];
  v4[11] = v23;

  v25 = [(RMModelSCEPCredentialDeclaration_SubjectAltName *)self->_payloadSubjectAltName copy];
  v26 = v4[12];
  v4[12] = v25;

  return v4;
}

@end