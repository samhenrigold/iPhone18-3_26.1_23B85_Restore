@interface MCACMEPayload
- (MCACMEPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)verboseDescription;
@end

@implementation MCACMEPayload

- (MCACMEPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v129 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v118.receiver = self;
  v118.super_class = MCACMEPayload;
  v10 = [(MCCertificatePayload *)&v118 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_15;
  }

  v117 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"HardwareBound" isRequired:1 outError:&v117];
  v12 = v117;
  if (v12)
  {
    v13 = v12;
LABEL_4:

LABEL_5:
    v14 = [(MCPayload *)v10 malformedPayloadErrorWithError:v13];
    v11 = v14;
    if (error)
    {
      v15 = v14;
      *error = v11;
    }

    v16 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = objc_opt_class();
      v19 = v18;
      mCVerboseDescription = [v11 MCVerboseDescription];
      *buf = 138543618;
      v120 = v18;
      v121 = 2114;
      v122 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v17, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_10;
  }

  v10->_isHardwareBound = [v11 BOOLValue];
  if ([profileCopy isStub])
  {
    v13 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v116 = 0;
  v25 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"DirectoryURL" isRequired:1 outError:&v116];
  v13 = v116;
  directoryURLString = v10->_directoryURLString;
  v10->_directoryURLString = v25;

  if (v13)
  {
    goto LABEL_4;
  }

  v27 = [MEMORY[0x1E695DFF8] URLWithString:v10->_directoryURLString];
  v28 = v27;
  if (v27 && ([v27 scheme], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "caseInsensitiveCompare:", @"https"), v29, !v30))
  {
    v31 = 0;
  }

  else
  {
    v31 = [MCPayload badFieldValueErrorWithField:@"DirectoryURL"];
  }

  v115 = v31;
  v32 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ClientIdentifier" isRequired:1 outError:&v115];
  v13 = v115;

  clientIdentifier = v10->_clientIdentifier;
  v10->_clientIdentifier = v32;

  if (v13 || (v114 = 0, [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"KeyType" isRequired:1 outError:&v114], v34 = objc_claimAutoreleasedReturnValue(), v13 = v114, keyType = v10->_keyType, v10->_keyType = v34, keyType, v13))
  {

    goto LABEL_4;
  }

  if (![(NSString *)v10->_keyType isEqualToString:@"RSA"]&& ![(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
  {
    v13 = [MCPayload badFieldTypeErrorWithField:@"KeyType"];
    goto LABEL_91;
  }

  v113 = 0;
  v36 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"KeySize" isRequired:1 outError:&v113];
  v37 = v113;
  if (v37)
  {
    goto LABEL_29;
  }

  integerValue = [v36 integerValue];
  if ((integerValue & 0x8000000000000000) == 0)
  {
    v83 = v36;
    v10->_keySize = integerValue;
    v112 = 0;
    v88 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Subject" isRequired:1 outError:&v112];
    v13 = v112;
    subject = v10->_subject;
    v10->_subject = v88;

    if (v13)
    {
LABEL_89:
      v36 = v83;
      goto LABEL_90;
    }

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v40 = v10->_subject;
    v41 = [(NSArray *)v40 countByEnumeratingWithState:&v108 objects:v128 count:16];
    if (v41)
    {
      v42 = *v109;
      v75 = *v109;
      do
      {
        v74 = v41;
        v43 = 0;
        do
        {
          if (*v109 != v42)
          {
            objc_enumerationMutation(v40);
          }

          v79 = v43;
          v44 = *(*(&v108 + 1) + 8 * v43);
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          obj = v44;
          v45 = [obj countByEnumeratingWithState:&v104 objects:v127 count:16];
          if (v45)
          {
            v46 = *v105;
            v76 = v40;
            v72 = *v105;
            while (2)
            {
              v73 = v45;
              v47 = 0;
              do
              {
                if (*v105 != v46)
                {
                  objc_enumerationMutation(obj);
                }

                v77 = v47;
                v48 = *(*(&v104 + 1) + 8 * v47);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v13 = [MCPayload badFieldTypeErrorWithField:@"Subject"];
LABEL_63:

                  goto LABEL_89;
                }

                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v84 = v48;
                v89 = [v84 countByEnumeratingWithState:&v100 objects:v126 count:16];
                if (v89)
                {
                  v86 = *v101;
                  while (2)
                  {
                    for (i = 0; i != v89; ++i)
                    {
                      if (*v101 != v86)
                      {
                        objc_enumerationMutation(v84);
                      }

                      v50 = *(*(&v100 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v50 length])
                      {
                        v13 = [MCPayload badFieldTypeErrorWithField:@"Subject"];

                        goto LABEL_63;
                      }
                    }

                    v89 = [v84 countByEnumeratingWithState:&v100 objects:v126 count:16];
                    if (v89)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v47 = v77 + 1;
                v46 = v72;
              }

              while (v77 + 1 != v73);
              v45 = [obj countByEnumeratingWithState:&v104 objects:v127 count:16];
              v40 = v76;
              if (v45)
              {
                continue;
              }

              break;
            }
          }

          v43 = v79 + 1;
          v42 = v75;
        }

        while (v79 + 1 != v74);
        v41 = [(NSArray *)v40 countByEnumeratingWithState:&v108 objects:v128 count:16];
        v42 = v75;
      }

      while (v41);
    }

    v99 = 0;
    v51 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"SubjectAltName" isRequired:0 outError:&v99];
    v13 = v99;
    if (v13)
    {
LABEL_88:

      goto LABEL_89;
    }

    v85 = v11;
    v87 = v51;
    obja = profileCopy;
    v52 = [v51 mutableCopy];
    v124[0] = @"dNSName";
    v125[0] = objc_opt_class();
    v124[1] = @"ntPrincipalName";
    v125[1] = objc_opt_class();
    v124[2] = @"rfc822Name";
    v125[2] = objc_opt_class();
    v124[3] = @"uniformResourceIdentifier";
    v125[3] = objc_opt_class();
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:4];
    v98 = 0;
    v54 = v52;
    v55 = [v52 MCMutableDictionaryContainingValidatedKeysAndClasses:v53 removeKeys:0 outError:&v98];
    v56 = v98;
    subjectAltName = v10->_subjectAltName;
    v90 = v10;
    v10->_subjectAltName = v55;

    v58 = v56;
    if (v56)
    {
LABEL_87:

      v13 = v58;
      profileCopy = obja;
      v11 = v85;
      v51 = v87;
      v10 = v90;
      goto LABEL_88;
    }

    v97 = 0;
    v78 = dictionaryCopy;
    v59 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"UsageFlags" isRequired:0 outError:&v97];
    v60 = v97;
    if (v60)
    {
      v58 = v60;
LABEL_86:

      dictionaryCopy = v78;
      goto LABEL_87;
    }

    v90->_usageFlags = [v59 unsignedIntValue];
    v96 = 0;
    v61 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ExtendedKeyUsage" isRequired:0 outError:&v96];
    v62 = v96;
    extendedKeyUsage = v90->_extendedKeyUsage;
    v90->_extendedKeyUsage = v61;

    if (v62)
    {
      v58 = v62;
      goto LABEL_86;
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v64 = v90->_extendedKeyUsage;
    v65 = [(NSArray *)v64 countByEnumeratingWithState:&v92 objects:v123 count:16];
    if (v65)
    {
      v66 = v65;
      v80 = *v93;
      while (2)
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v93 != v80)
          {
            objc_enumerationMutation(v64);
          }

          if (![*(*(&v92 + 1) + 8 * j) length])
          {
            v68 = [MCPayload badFieldValueErrorWithField:@"ExtendedKeyUsage"];
            goto LABEL_84;
          }
        }

        v66 = [(NSArray *)v64 countByEnumeratingWithState:&v92 objects:v123 count:16];
        if (v66)
        {
          continue;
        }

        break;
      }
    }

    v91 = 0;
    v64 = [v78 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Attest" isRequired:0 outError:&v91];
    v68 = v91;
    if (v68)
    {
      goto LABEL_84;
    }

    v90->_attest = [(NSArray *)v64 BOOLValue];
    if (v90->_isHardwareBound)
    {
      if ([(NSString *)v90->_keyType isEqualToString:@"ECSECPrimeRandom"])
      {
        if ((v90->_keySize | 0x80) == 0x180)
        {
          goto LABEL_79;
        }

        v70 = @"KeySize";
      }

      else
      {
        v70 = @"KeyType";
      }

LABEL_106:
      v68 = [MCPayload badFieldTypeErrorWithField:v70];
LABEL_84:
      v58 = v68;
LABEL_85:

      goto LABEL_86;
    }

LABEL_79:
    if ([(NSString *)v90->_keyType isEqualToString:@"RSA"])
    {
      keySize = v90->_keySize;
      v70 = @"KeySize";
      if ((keySize & 7) != 0 || keySize - 4097 < 0xFFFFFFFFFFFFF3FFLL)
      {
        goto LABEL_106;
      }
    }

    else if ([(NSString *)v90->_keyType isEqualToString:@"ECSECPrimeRandom"])
    {
      v71 = v90->_keySize;
      v70 = @"KeySize";
      if (v71 > 383)
      {
        if (v71 != 521 && v71 != 384)
        {
          goto LABEL_106;
        }
      }

      else if (v71 != 192 && v71 != 256)
      {
        goto LABEL_106;
      }
    }

    if (!v90->_attest || v90->_isHardwareBound)
    {
      v58 = 0;
      goto LABEL_85;
    }

    v70 = @"Attest";
    goto LABEL_106;
  }

  v37 = [MCPayload badFieldValueErrorWithField:@"KeySize"];
LABEL_29:
  v13 = v37;
LABEL_90:

LABEL_91:
  if (v13)
  {
    goto LABEL_5;
  }

LABEL_11:
  if ([dictionaryCopy count])
  {
    v21 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v22 = v21;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v120 = friendlyName;
      v121 = 2114;
      v122 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v22, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_15:
  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCACMEPayload;
  stubDictionary = [(MCCertificatePayload *)&v6 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHardwareBound];
  [stubDictionary setObject:v4 forKey:@"HardwareBound"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCACMEPayload;
  verboseDescription = [(MCCertificatePayload *)&v6 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_directoryURLString)
  {
    [v4 appendFormat:@"DirectoryURL  : %@\n", self->_directoryURLString];
  }

  if (self->_clientIdentifier)
  {
    [v4 appendFormat:@"Identifier    : %@\n", self->_clientIdentifier];
  }

  if (self->_keyType)
  {
    [v4 appendFormat:@"KeyType       : %@\n", self->_keyType];
  }

  if (self->_keySize)
  {
    [v4 appendFormat:@"KeySize       : %lu\n", self->_keySize];
  }

  if (self->_isHardwareBound)
  {
    [v4 appendFormat:@"HardwareBound : %i\n", 1];
  }

  if (self->_subject)
  {
    [v4 appendFormat:@"Subject       : %@\n", self->_subject];
  }

  if (self->_subjectAltName)
  {
    [v4 appendFormat:@"SAN           : %@\n", self->_subjectAltName];
  }

  if (self->_usageFlags)
  {
    [v4 appendFormat:@"UsageFlags    : %u\n", self->_usageFlags];
  }

  if (self->_extendedKeyUsage)
  {
    [v4 appendFormat:@"EKU           : %@\n", self->_extendedKeyUsage];
  }

  return v4;
}

- (id)subtitle1Description
{
  issuer = [(MCCertificatePayload *)self issuer];
  v4 = issuer;
  if (issuer)
  {
    v5 = issuer;
  }

  else
  {
    profile = [(MCPayload *)self profile];
    isStub = [profile isStub];

    if (isStub)
    {
      v8 = @"ISSUED_BY_MISSING";
    }

    else
    {
      v8 = @"IDENTITY_INSTALL_DESCRIPTION_UNKNOWN";
    }

    v5 = MCLocalizedString(v8);
  }

  v9 = v5;

  return v9;
}

- (id)payloadDescriptionKeyValueSections
{
  v31[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  profile = [(MCPayload *)self profile];
  isStub = [profile isStub];

  if ((isStub & 1) == 0)
  {
    if (self->_directoryURLString)
    {
      v6 = [MCKeyValue alloc];
      directoryURLString = self->_directoryURLString;
      v8 = MCLocalizedString(@"URL");
      v9 = [(MCKeyValue *)v6 initWithLocalizedString:directoryURLString localizedKey:v8];

      [v3 addObject:v9];
    }

    if (self->super.super._identifier)
    {
      v10 = [MCKeyValue alloc];
      v11 = MCLocalizedString(@"PRESENT");
      v12 = MCLocalizedString(@"CLIENT_IDENTIFIER");
      v13 = [(MCKeyValue *)v10 initWithLocalizedString:v11 localizedKey:v12];

      [v3 addObject:v13];
    }

    if (self->_keyType)
    {
      v14 = [MCKeyValue alloc];
      keyType = self->_keyType;
      v16 = MCLocalizedString(@"KEY_TYPE");
      v17 = [(MCKeyValue *)v14 initWithLocalizedString:keyType localizedKey:v16];

      [v3 addObject:v17];
    }

    v18 = MEMORY[0x1E696ADA0];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_keySize];
    v20 = [v18 localizedStringFromNumber:v19 numberStyle:0];

    v21 = [MCKeyValue alloc];
    v22 = MCLocalizedString(@"KEY_SIZE");
    v23 = [(MCKeyValue *)v21 initWithLocalizedString:v20 localizedKey:v22];

    [v3 addObject:v23];
  }

  v24 = [MCKeyValue alloc];
  v25 = MCLocalizedStringForBool(self->_isHardwareBound);
  v26 = MCLocalizedString(@"HARDWARE_BOUND");
  v27 = [(MCKeyValue *)v24 initWithLocalizedString:v25 localizedKey:v26];

  [v3 addObject:v27];
  v28 = [MCKeyValueSection sectionWithKeyValues:v3];
  v31[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

  return v29;
}

@end