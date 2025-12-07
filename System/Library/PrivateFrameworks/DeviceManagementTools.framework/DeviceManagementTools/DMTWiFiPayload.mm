@interface DMTWiFiPayload
- (DMTWiFiPayload)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation DMTWiFiPayload

- (DMTWiFiPayload)initWithDictionary:(id)dictionary error:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v48.receiver = self;
  v48.super_class = DMTWiFiPayload;
  v7 = [(DMTConfigurationPrimitive *)&v48 initWithDictionary:dictionaryCopy error:error];
  if (v7)
  {
    v7->_autoJoin = DMTValidateProfileBoolean(dictionaryCopy, @"AutoJoin", 1, 1, error);
    v8 = DMTValidateProfileString(dictionaryCopy, @"EncryptionType", 1, error);
    encryptionType = v7->_encryptionType;
    v7->_encryptionType = v8;

    v10 = DMTValidateProfileString(dictionaryCopy, @"SSID_STR", 1, error);
    ssid = v7->_ssid;
    v7->_ssid = v10;

    v12 = DMTValidateProfileDictionary(dictionaryCopy, @"EAPClientConfiguration", 1, error);
    eapClientConfiguration = v7->_eapClientConfiguration;
    v7->_eapClientConfiguration = v12;

    if (!*error)
    {
      v16 = v7->_eapClientConfiguration;
      if (v16)
      {
        v17 = DMTValidateProfileArray(v16, @"AcceptEAPTypes", 0, error);
        acceptEAPTypes = v7->_acceptEAPTypes;
        v7->_acceptEAPTypes = v17;

        v19 = v7->_acceptEAPTypes;
        if (!v19)
        {
          goto LABEL_3;
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = v19;
        v20 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v45;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v44 + 1) + 8 * i);
              if (v24)
              {
                v25 = v24;
                v26 = CFGetTypeID(v24);
                TypeID = CFNumberGetTypeID();

                if (v26 == TypeID)
                {
                  continue;
                }
              }

              *error = DMTErrorWithCodeAndUserInfo(71, &unk_285B5BED8);

              goto LABEL_3;
            }

            v21 = [(NSArray *)obj countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        v28 = DMTValidateProfileArray(v7->_eapClientConfiguration, @"PayloadCertificateAnchorUUID", 1, error);
        certificateAnchorUUID = v7->_certificateAnchorUUID;
        v7->_certificateAnchorUUID = v28;

        if (*error)
        {
          goto LABEL_3;
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v30 = v7->_certificateAnchorUUID;
        v31 = [(NSArray *)v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v41;
          while (2)
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v41 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v40 + 1) + 8 * j);
              if (v35)
              {
                v36 = v35;
                v37 = CFGetTypeID(v35);
                v38 = CFStringGetTypeID();

                if (v37 == v38)
                {
                  continue;
                }
              }

              *error = DMTErrorWithCodeAndUserInfo(71, &unk_285B5BF00);

              goto LABEL_3;
            }

            v32 = [(NSArray *)v30 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }
      }

      v14 = v7;
      goto LABEL_4;
    }
  }

LABEL_3:
  v14 = 0;
LABEL_4:

  return v14;
}

@end