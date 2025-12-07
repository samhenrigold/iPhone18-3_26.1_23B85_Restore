@interface MCProfileServiceProfile
- (MCProfileServiceProfile)initWithDictionary:(id)dictionary signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error;
- (id)_badDataTypeErrorWithFieldName:(id)name;
- (id)_unsupportedValueErrorWithFieldName:(id)name value:(id)value;
- (id)description;
- (id)localizedPayloadSummaryByType;
- (id)payloads;
- (id)serializedDictionary;
- (id)stubDictionary;
@end

@implementation MCProfileServiceProfile

- (id)_badDataTypeErrorWithFieldName:(id)name
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", a2, name, v3, v4, v5, v6, v7, name);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (id)_unsupportedValueErrorWithFieldName:(id)name value:(id)value
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD_P_VALUE", a2, name, value, v4, v5, v6, v7, name);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1010 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (MCProfileServiceProfile)initWithDictionary:(id)dictionary signerCerts:(id)certs allowEmptyPayload:(BOOL)payload outError:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v55.receiver = self;
  v55.super_class = MCProfileServiceProfile;
  v10 = [(MCProfile *)&v55 initWithDictionary:dictionaryCopy signerCerts:certs allowEmptyPayload:1 outError:error];
  if (!v10)
  {
    goto LABEL_24;
  }

  v54 = 0;
  v11 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v54];
  v12 = v54;
  if ([(MCProfile *)v10 isStub])
  {
    if (v12)
    {
      goto LABEL_12;
    }

    v53 = 0;
    v13 = [MCProfile removeOptionalObjectInDictionary:v11 key:@"EnrollmentIdentityPersistentID" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v53];
    v12 = v53;
    enrollmentIdentityPersistentID = v10->_enrollmentIdentityPersistentID;
    v10->_enrollmentIdentityPersistentID = v13;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v15 = [v11 objectForKey:@"Challenge"];
    challenge = v10->_challenge;
    v10->_challenge = v15;

    [v11 removeObjectForKey:@"Challenge"];
    if (v10->_challenge)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = [(MCProfileServiceProfile *)v10 _badDataTypeErrorWithFieldName:@"Challenge"];
          goto LABEL_18;
        }
      }
    }

    if (v12)
    {
      goto LABEL_12;
    }
  }

  v52 = 0;
  v17 = [MCProfile removeRequiredNonZeroLengthStringInDictionary:v11 key:@"URL" errorDomain:@"MCProfileErrorDomain" missingDataCode:1002 missingDataErrorString:@"ERROR_PROFILE_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v52];
  v12 = v52;
  URLString = v10->_URLString;
  v10->_URLString = v17;

  if (!v12)
  {
    v51 = 0;
    v19 = [MCProfile removeOptionalObjectInDictionary:v11 key:@"DeviceAttributes" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v51];
    v12 = v51;
    deviceAttributes = v10->_deviceAttributes;
    v10->_deviceAttributes = v19;

    if (!v12)
    {
      v50 = 0;
      v21 = [MCProfile removeOptionalObjectInDictionary:v11 key:@"ConfirmInstallation" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v50];
      v12 = v50;
      goto LABEL_13;
    }
  }

LABEL_12:
  v21 = 0;
LABEL_13:
  v10->_confirmInstallation = [v21 BOOLValue];
  if (v12)
  {
    v22 = v12;
  }

  else
  {
    v49 = 0;
    v23 = [MCProfile removeOptionalObjectInDictionary:v11 key:@"SupportedServerVersion" type:objc_opt_class() errorDomain:@"MCProfileErrorDomain" invalidDataCode:1003 invalidDataErrorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v49];
    v22 = v49;

    v21 = v23;
  }

  v10->_supportedServerVersion = [v21 BOOLValue];
  if (!v22)
  {
    v34 = v10->_deviceAttributes;
    if (v34)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v35 = v34;
      v22 = [(NSArray *)v35 countByEnumeratingWithState:&v45 objects:v60 count:16];
      if (v22)
      {
        errorCopy = error;
        v36 = *v46;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v46 != v36)
            {
              objc_enumerationMutation(v35);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v22 = [(MCProfileServiceProfile *)v10 _badDataTypeErrorWithFieldName:@"DeviceAttributes"];
              goto LABEL_37;
            }
          }

          v22 = [(NSArray *)v35 countByEnumeratingWithState:&v45 objects:v60 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

LABEL_37:
        error = errorCopy;
      }
    }

    else
    {
      v22 = 0;
    }

    if ([v11 count])
    {
      v38 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v39 = v38;
        friendlyName = [(MCProfile *)v10 friendlyName];
        *buf = 138543618;
        v57 = friendlyName;
        v58 = 2114;
        v59 = v11;
        _os_log_impl(&dword_1A795B000, v39, OS_LOG_TYPE_INFO, "PayloadContent for profile “%{public}@” has entries that are being ignored. They are:%{public}@", buf, 0x16u);
      }
    }

    if ([dictionaryCopy count])
    {
      v41 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
      {
        v42 = v41;
        friendlyName2 = [(MCProfile *)v10 friendlyName];
        *buf = 138543618;
        v57 = friendlyName2;
        v58 = 2114;
        v59 = dictionaryCopy;
        _os_log_impl(&dword_1A795B000, v42, OS_LOG_TYPE_INFO, "Profile “%{public}@” has entries that are being ignored. They are:%{public}@", buf, 0x16u);
      }
    }
  }

  v12 = v21;
LABEL_18:

  if (!v22)
  {
LABEL_24:
    v32 = v10;
    goto LABEL_25;
  }

  v24 = [(MCProfile *)v10 malformedProfileErrorWithError:v22];
  v25 = v24;
  if (error)
  {
    v26 = v24;
    *error = v25;
  }

  v27 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v28 = v27;
    v29 = objc_opt_class();
    v30 = v29;
    mCVerboseDescription = [v25 MCVerboseDescription];
    *buf = 138543618;
    v57 = v29;
    v58 = 2114;
    v59 = mCVerboseDescription;
    _os_log_impl(&dword_1A795B000, v28, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse profile: %{public}@", buf, 0x16u);
  }

  v32 = 0;
LABEL_25:

  return v32;
}

- (id)localizedPayloadSummaryByType
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = MCLocalizedString(@"DEVICE_ENROLLMENT_CHALLENGE");
  v4 = [v2 arrayWithObject:v3];

  return v4;
}

- (id)payloads
{
  bogusPayloads = self->_bogusPayloads;
  if (!bogusPayloads)
  {
    v4 = MEMORY[0x1E695DEC8];
    v5 = [[MCEncryptedProfileServicePayload alloc] initWithURLString:self->_URLString profile:self];
    v6 = [v4 arrayWithObject:v5];
    v7 = self->_bogusPayloads;
    self->_bogusPayloads = v6;

    bogusPayloads = self->_bogusPayloads;
  }

  return bogusPayloads;
}

- (id)stubDictionary
{
  v7.receiver = self;
  v7.super_class = MCProfileServiceProfile;
  stubDictionary = [(MCProfile *)&v7 stubDictionary];
  [stubDictionary setObject:@"Profile Service" forKey:@"PayloadType"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary MCSetObjectIfNotNil:self->_URLString forKey:@"URL"];
  [dictionary MCSetObjectIfNotNil:self->_deviceAttributes forKey:@"DeviceAttributes"];
  [dictionary MCSetObjectIfNotNil:self->_enrollmentIdentityPersistentID forKey:@"EnrollmentIdentityPersistentID"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_confirmInstallation];
  [dictionary setObject:v5 forKey:@"ConfirmInstallation"];

  [stubDictionary setObject:dictionary forKey:@"PayloadContent"];

  return stubDictionary;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = MCProfileServiceProfile;
  v3 = [(MCProfile *)&v9 description];
  v4 = [v3 mutableCopy];

  if (self->_URLString)
  {
    [v4 appendFormat:@"URL         : %@\n", self->_URLString];
  }

  deviceAttributes = self->_deviceAttributes;
  if (deviceAttributes)
  {
    v6 = [(NSArray *)deviceAttributes componentsJoinedByString:@", "];
    [v4 appendFormat:@"Device Attr : %@\n", v6];
  }

  if (self->_challenge)
  {
    [v4 appendFormat:@"Challenge   : (present)\n"];
  }

  if (self->_enrollmentIdentityPersistentID)
  {
    [v4 appendFormat:@"Cert Persist: %@\n", self->_enrollmentIdentityPersistentID];
  }

  v7 = MCStringForBool(self->_confirmInstallation);
  [v4 appendFormat:@"Confirm     : %@", v7];

  return v4;
}

- (id)serializedDictionary
{
  v10.receiver = self;
  v10.super_class = MCProfileServiceProfile;
  serializedDictionary = [(MCProfile *)&v10 serializedDictionary];
  v4 = [serializedDictionary mutableCopy];

  URLString = self->_URLString;
  if (URLString)
  {
    [v4 setObject:URLString forKeyedSubscript:@"URL"];
  }

  deviceAttributes = self->_deviceAttributes;
  if (deviceAttributes)
  {
    [v4 setObject:deviceAttributes forKeyedSubscript:@"Device Attributes"];
  }

  if (self->_challenge)
  {
    [v4 setObject:@"(present)" forKeyedSubscript:@"Challenge"];
  }

  enrollmentIdentityPersistentID = self->_enrollmentIdentityPersistentID;
  if (enrollmentIdentityPersistentID)
  {
    [v4 setObject:enrollmentIdentityPersistentID forKeyedSubscript:@"Cert Persist"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_confirmInstallation];
  [v4 setObject:v8 forKeyedSubscript:@"Confirm"];

  return v4;
}

@end