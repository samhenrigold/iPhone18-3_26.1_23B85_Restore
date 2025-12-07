@interface DMTDisallowedPayloadTypesValidator
- (BOOL)validateProfile:(id)profile error:(id *)error;
@end

@implementation DMTDisallowedPayloadTypesValidator

- (BOOL)validateProfile:(id)profile error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  disallowedPayloadTypes = [(DMTDisallowedPayloadTypesValidator *)self disallowedPayloadTypes];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  payloads = [profileCopy payloads];
  v9 = [payloads countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(payloads);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        type = [v13 type];
        v15 = [disallowedPayloadTypes containsObject:type];

        if (v15)
        {
          if (error)
          {
            v24[0] = @"PayloadContent";
            v23[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
            v23[1] = @"PayloadType";
            type2 = [v13 type];
            v24[1] = type2;
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
            *error = DMTErrorWithCodeAndUserInfo(77, v17);

            LOBYTE(error) = 0;
          }

          goto LABEL_12;
        }
      }

      v10 = [payloads countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(error) = 1;
LABEL_12:

  return error;
}

@end