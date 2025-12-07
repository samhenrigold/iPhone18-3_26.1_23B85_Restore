@interface DMTConfigurationProfile
+ (id)configurationProfileWithData:(id)data error:(id *)error;
+ (id)configurationProfileWithDictionary:(id)dictionary error:(id *)error;
- (BOOL)validateWithValidators:(id)validators error:(id *)error;
- (DMTConfigurationProfile)initWithDictionary:(id)dictionary error:(id *)error;
- (NSDictionary)payloadsByType;
- (NSDictionary)payloadsByUUID;
- (id)payloadsOfType:(id)type;
- (id)payloadsOfTypes:(id)types;
@end

@implementation DMTConfigurationProfile

+ (id)configurationProfileWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (dataCopy)
  {
    v8 = CFGetTypeID(dataCopy);
    if (v8 == CFDataGetTypeID())
    {
      v9 = ExtractSignedData(v7);
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v7;
      }

      v12 = v11;

      v13 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:error];

      if (v13)
      {
        v14 = [self configurationProfileWithDictionary:v13 error:error];
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_16;
    }

    if (error)
    {
      v15 = &unk_285B5BF50;
      v16 = 71;
      goto LABEL_12;
    }
  }

  else if (error)
  {
    v15 = &unk_285B5BF28;
    v16 = 70;
LABEL_12:
    DMTErrorWithCodeAndUserInfo(v16, v15);
    *error = v14 = 0;
    goto LABEL_16;
  }

  v14 = 0;
LABEL_16:

  return v14;
}

+ (id)configurationProfileWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v8 = CFGetTypeID(dictionaryCopy);
    if (v8 == CFDictionaryGetTypeID())
    {
      v9 = [[self alloc] initWithDictionary:v7 error:error];
      goto LABEL_10;
    }

    if (error)
    {
      v10 = &unk_285B5BFA0;
      v11 = 71;
      goto LABEL_8;
    }
  }

  else if (error)
  {
    v10 = &unk_285B5BF78;
    v11 = 70;
LABEL_8:
    DMTErrorWithCodeAndUserInfo(v11, v10);
    *error = v9 = 0;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (NSDictionary)payloadsByType
{
  v24 = *MEMORY[0x277D85DE8];
  payloadsByType = self->_payloadsByType;
  if (!payloadsByType)
  {
    payloads = [(DMTConfigurationProfile *)self payloads];
    v5 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = payloads;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          type = [v11 type];
          v13 = [v5 objectForKeyedSubscript:type];
          v14 = v13;
          if (v13)
          {
            [v13 addObject:v11];
          }

          else
          {
            v15 = [MEMORY[0x277CBEB18] arrayWithObject:v11];
            [v5 setObject:v15 forKeyedSubscript:type];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v16 = [v5 copy];
    v17 = self->_payloadsByType;
    self->_payloadsByType = v16;

    payloadsByType = self->_payloadsByType;
  }

  return payloadsByType;
}

- (NSDictionary)payloadsByUUID
{
  v21 = *MEMORY[0x277D85DE8];
  payloadsByUUID = self->_payloadsByUUID;
  if (!payloadsByUUID)
  {
    payloads = [(DMTConfigurationProfile *)self payloads];
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(payloads, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = payloads;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          uuid = [v11 uuid];
          [v5 setObject:v11 forKeyedSubscript:uuid];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v13 = [v5 copy];
    v14 = self->_payloadsByUUID;
    self->_payloadsByUUID = v13;

    payloadsByUUID = self->_payloadsByUUID;
  }

  return payloadsByUUID;
}

- (id)payloadsOfType:(id)type
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  payloads = [(DMTConfigurationProfile *)self payloads];
  v7 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(payloads);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [type isEqualToString:typeCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)payloadsOfTypes:(id)types
{
  v20 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  payloads = [(DMTConfigurationProfile *)self payloads];
  v7 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(payloads);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        type = [v11 type];
        v13 = [typesCopy containsObject:type];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [payloads countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)validateWithValidators:(id)validators error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  validatorsCopy = validators;
  v7 = [validatorsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(validatorsCopy);
        }

        if (![*(*(&v13 + 1) + 8 * i) validateProfile:self error:{error, v13}])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [validatorsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (DMTConfigurationProfile)initWithDictionary:(id)dictionary error:(id *)error
{
  v36[2] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = DMTConfigurationProfile;
  v7 = [(DMTConfigurationPrimitive *)&v31 initWithDictionary:dictionaryCopy error:error];
  v8 = v7;
  if (v7)
  {
    type = [(DMTConfigurationPrimitive *)v7 type];
    v10 = [type isEqualToString:@"Configuration"];

    if (v10)
    {
      v11 = DMTValidateProfileArray(dictionaryCopy, @"PayloadContent", 0, error);
      type2 = v11;
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = [v11 count];
      if (v13)
      {
        v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        type2 = type2;
        v15 = [type2 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v26 = dictionaryCopy;
          v17 = 0;
          v18 = *v28;
          while (2)
          {
            v19 = 0;
            v20 = v17;
            do
            {
              if (*v28 != v18)
              {
                objc_enumerationMutation(type2);
              }

              v17 = [DMTConfigurationPayloadBase concretePayloadWithDictionary:*(*(&v27 + 1) + 8 * v19) error:error];

              if (!v17)
              {

                v23 = 0;
                dictionaryCopy = v26;
                goto LABEL_20;
              }

              [v14 addObject:v17];
              ++v19;
              v20 = v17;
            }

            while (v16 != v19);
            v16 = [type2 countByEnumeratingWithState:&v27 objects:v32 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }

          dictionaryCopy = v26;
        }

        v21 = [v14 copy];
        payloads = v8->_payloads;
        v8->_payloads = v21;

        v23 = v8;
        goto LABEL_20;
      }

      if (!error)
      {
LABEL_23:
        v23 = 0;
        goto LABEL_24;
      }

      v33 = @"kDMTInvalidConfigurationProfileValueErrorKey";
      v34 = @"PayloadContent";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v24 = 74;
LABEL_17:
      DMTErrorWithCodeAndUserInfo(v24, v14);
      *error = v23 = 0;
LABEL_20:

LABEL_24:
      goto LABEL_25;
    }

    if (error)
    {
      v35[1] = @"PayloadType";
      v36[0] = @"PayloadType";
      v35[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
      type2 = [(DMTConfigurationPrimitive *)v8 type];
      v36[1] = type2;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v24 = 72;
      goto LABEL_17;
    }
  }

  v23 = 0;
LABEL_25:

  return v23;
}

@end