@interface MCSelfSignedCertificatePayload
- (MCSelfSignedCertificatePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)persistentResourceID;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)validateExtendedKeyUsage:(id)usage;
- (id)verboseDescription;
@end

@implementation MCSelfSignedCertificatePayload

- (id)validateExtendedKeyUsage:(id)usage
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  usageCopy = usage;
  v4 = [usageCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (!v4)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v5 = v4;
  v6 = *v24;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v24 != v6)
    {
      objc_enumerationMutation(usageCopy);
    }

    v8 = *(*(&v23 + 1) + 8 * v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];
      goto LABEL_29;
    }

    v9 = v8;
    if (![v9 count])
    {
      goto LABEL_32;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v9;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = v10;
    v12 = *v20;
    v18 = v6;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];
LABEL_27:

          goto LABEL_28;
        }

        v15 = v14;
        if (![v15 length])
        {
          v16 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];

          goto LABEL_27;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v6 = v18;
      if (v11)
      {
        continue;
      }

      break;
    }

LABEL_20:

LABEL_21:
    if (++v7 == v5)
    {
      v5 = [usageCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
      v16 = 0;
      if (!v5)
      {
        goto LABEL_29;
      }

      goto LABEL_3;
    }
  }

  v9 = v8;
  if ([v9 length])
  {
    goto LABEL_21;
  }

LABEL_32:
  v16 = [MCPayload badFieldTypeErrorWithField:@"ExtendedKeyUsage"];
LABEL_28:

LABEL_29:

  return v16;
}

- (MCSelfSignedCertificatePayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v50.receiver = self;
  v50.super_class = MCSelfSignedCertificatePayload;
  v10 = [(MCCertificatePayload *)&v50 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (v10)
  {
    v49 = 0;
    v11 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"HardwareBound" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v49];
    v12 = v49;
    if (v12)
    {
      v13 = v12;
LABEL_4:

      v11 = v13;
LABEL_5:
      v14 = [(MCPayload *)v10 malformedPayloadErrorWithError:v11];
      v15 = v14;
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      v17 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v18 = v17;
        v19 = objc_opt_class();
        v20 = v19;
        mCVerboseDescription = [v15 MCVerboseDescription];
        *buf = 138543618;
        v52 = v19;
        v53 = 2114;
        v54 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_10;
    }

    v10->_isHardwareBound = [v11 BOOLValue];
    if ([profileCopy isStub])
    {
LABEL_10:

      goto LABEL_11;
    }

    v48 = 0;
    v23 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"KeyType" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v48];
    v13 = v48;
    keyType = v10->_keyType;
    v10->_keyType = v23;

    if (v13)
    {
      goto LABEL_4;
    }

    if (![(NSString *)v10->_keyType isEqualToString:@"RSA"]&& ![(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
    {
      v26 = [MCPayload badFieldTypeErrorWithField:@"KeyType"];
      goto LABEL_29;
    }

    v47 = 0;
    v25 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"KeySize" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v47];
    v26 = v47;
    if (v26)
    {
LABEL_28:

LABEL_29:
      v11 = v26;
      if (!v26)
      {
        goto LABEL_11;
      }

      goto LABEL_5;
    }

    v43 = v25;
    v10->_keySize = [v25 unsignedIntegerValue];
    v46 = 0;
    v27 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"KeyUsage" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v46];
    v28 = v46;
    if (v28)
    {
      goto LABEL_18;
    }

    if (v27)
    {
      unsignedIntValue = [v27 unsignedIntValue];
      v10->_keyUsage = unsignedIntValue;
      if ((unsignedIntValue & 0xFFFFFFFA) != 0)
      {
        v28 = [MCPayload badFieldTypeErrorWithField:@"KeyUsage"];
LABEL_18:
        v26 = v28;
LABEL_27:

        v25 = v43;
        goto LABEL_28;
      }
    }

    else
    {
      v10->_keyUsage = 1;
    }

    v42 = v27;
    v45 = 0;
    v30 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"ExtendedKeyUsage" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v45];
    v26 = v45;
    extendedKeyUsage = v10->_extendedKeyUsage;
    v10->_extendedKeyUsage = v30;

    if (v26)
    {
      goto LABEL_27;
    }

    v32 = [(MCSelfSignedCertificatePayload *)v10 validateExtendedKeyUsage:v10->_extendedKeyUsage];
    if (v32)
    {
      v26 = v32;
      goto LABEL_27;
    }

    v44 = 0;
    v33 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"Lifetime" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v44];
    v34 = v44;
    if (v34)
    {
      goto LABEL_49;
    }

    if (v33)
    {
      unsignedIntegerValue = [v33 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 315576000;
    }

    v10->_lifetime = unsignedIntegerValue;
    if (v10->_isHardwareBound)
    {
      if (![(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
      {
        v37 = @"KeyType";
        goto LABEL_48;
      }

      if ((v10->_keySize | 0x80) != 0x180)
      {
LABEL_41:
        v37 = @"KeySize";
LABEL_48:
        v34 = [MCPayload badFieldTypeErrorWithField:v37];
LABEL_49:
        v26 = v34;
LABEL_50:
        v27 = v42;

        goto LABEL_27;
      }
    }

    if ([(NSString *)v10->_keyType isEqualToString:@"RSA"])
    {
      keySize = v10->_keySize;
      if ((keySize & 7) != 0 || keySize - 4097 <= 0xFFFFFFFFFFFFF3FELL)
      {
        goto LABEL_41;
      }
    }

    else if ([(NSString *)v10->_keyType isEqualToString:@"ECSECPrimeRandom"])
    {
      v38 = v10->_keySize;
      if (v38 > 383)
      {
        if (v38 == 384 || v38 == 521)
        {
          goto LABEL_54;
        }
      }

      else if (v38 == 192 || v38 == 256)
      {
        goto LABEL_54;
      }

      v34 = [MCPayload badFieldTypeErrorWithField:@"KeySize"];
      if (v34)
      {
        goto LABEL_49;
      }
    }

LABEL_54:
    if ([dictionaryCopy count])
    {
      v39 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v40 = v39;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138543618;
        v52 = friendlyName;
        v53 = 2114;
        v54 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v40, OS_LOG_TYPE_INFO, "Payload “%{public}@” has fields that we are ignoring. They are: %{public}@", buf, 0x16u);
      }
    }

    v26 = 0;
    goto LABEL_50;
  }

LABEL_11:

  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCSelfSignedCertificatePayload;
  stubDictionary = [(MCCertificatePayload *)&v6 stubDictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isHardwareBound];
  [stubDictionary setObject:v4 forKey:@"HardwareBound"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = MCSelfSignedCertificatePayload;
  verboseDescription = [(MCCertificatePayload *)&v10 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  if (self->_isHardwareBound)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  [v5 appendFormat:@"Hardware bound : %@\n", v6];
  copyCertificate = [(MCCertificatePayload *)self copyCertificate];
  if (copyCertificate)
  {
    v8 = copyCertificate;
    [v5 appendFormat:@"Identity       : Present\n"];
    CFRelease(v8);
  }

  else
  {
    [v5 appendFormat:@"Identity       : Missing\n"];
  }

  return v5;
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

- (id)persistentResourceID
{
  certificatePersistentID = [(MCCertificatePayload *)self certificatePersistentID];
  mCHexString = [certificatePersistentID MCHexString];

  return mCHexString;
}

@end