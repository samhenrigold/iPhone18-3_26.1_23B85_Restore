@interface DMTWiFiCertificateReferencesValidator
- (BOOL)validateProfile:(id)profile error:(id *)error;
@end

@implementation DMTWiFiCertificateReferencesValidator

- (BOOL)validateProfile:(id)profile error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [profileCopy payloadsOfType:@"com.apple.wifi.managed"];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    errorCopy = error;
    v25 = profileCopy;
    payloadsByUUID = 0;
    v10 = *v32;
    v26 = v6;
    v23 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        if (!payloadsByUUID)
        {
          payloadsByUUID = [v25 payloadsByUUID];
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        certificateAnchorUUID = [v12 certificateAnchorUUID];
        v14 = [certificateAnchorUUID countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(certificateAnchorUUID);
              }

              v18 = *(*(&v27 + 1) + 8 * j);
              v19 = [payloadsByUUID objectForKeyedSubscript:v18];

              if (!v19)
              {
                if (errorCopy)
                {
                  v35[0] = @"kDMTInvalidConfigurationProfileValueErrorKey";
                  v35[1] = @"PayloadCertificateAnchorUUID[]";
                  v36[0] = @"PayloadCertificateAnchorUUID[]";
                  v36[1] = v18;
                  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
                  *errorCopy = DMTErrorWithCodeAndUserInfo(76, v21);
                }

                v20 = 0;
                profileCopy = v25;
                v6 = v26;
                goto LABEL_23;
              }
            }

            v15 = [certificateAnchorUUID countByEnumeratingWithState:&v27 objects:v37 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v6 = v26;
        v10 = v23;
      }

      v8 = [v26 countByEnumeratingWithState:&v31 objects:v38 count:16];
      v20 = 1;
      profileCopy = v25;
    }

    while (v8);
  }

  else
  {
    payloadsByUUID = 0;
    v20 = 1;
  }

LABEL_23:

  return v20;
}

@end