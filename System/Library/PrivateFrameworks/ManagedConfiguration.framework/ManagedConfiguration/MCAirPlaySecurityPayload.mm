@interface MCAirPlaySecurityPayload
+ (id)typeStrings;
- (MCAirPlaySecurityPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)stubDictionary;
- (id)subtitle1Description;
- (id)subtitle2Description;
- (id)verboseDescription;
@end

@implementation MCAirPlaySecurityPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.airplay.security";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCAirPlaySecurityPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v44[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = MCAirPlaySecurityPayload;
  v9 = [(MCPayload *)&v37 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_19;
  }

  v36 = 0;
  v10 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"AccessType" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v36];
  v11 = v36;
  if (v11)
  {
    v12 = v11;
LABEL_8:

LABEL_9:
    v16 = [(MCPayload *)v9 malformedPayloadErrorWithError:v12];
    v10 = v16;
    if (error)
    {
      v17 = v16;
      *error = v10;
    }

    v18 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = v20;
      mCVerboseDescription = [v10 MCVerboseDescription];
      *buf = 138543618;
      v39 = v20;
      v40 = 2114;
      v41 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v44[0] = @"ANY";
  v44[1] = @"WIFI_ONLY";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
  v35 = 0;
  [MCProfile checkString:v10 isOneOfStrings:v13 key:@"AccessType" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v35];
  v14 = v35;
  if (v14)
  {
LABEL_5:
    v12 = v14;

    goto LABEL_8;
  }

  [(MCAirPlaySecurityPayload *)v9 setAccessType:v10];

  v34 = 0;
  v10 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"SecurityType" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v34];
  v15 = v34;
  if (v15)
  {
    goto LABEL_7;
  }

  accessType = [(MCAirPlaySecurityPayload *)v9 accessType];
  v28 = [accessType isEqualToString:@"ANY"];

  if (v28)
  {
    v43 = @"NONE";
    v29 = &v43;
  }

  else
  {
    v42 = @"NONE";
    v29 = &v42;
  }

  v29[1] = @"PASSCODE_ONCE";
  v29[2] = @"PASSCODE_ALWAYS";
  v29[3] = @"PASSWORD";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  v33 = 0;
  [MCProfile checkString:v10 isOneOfStrings:v13 key:@"SecurityType" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v33];
  v14 = v33;
  if (v14)
  {
    goto LABEL_5;
  }

  [(MCAirPlaySecurityPayload *)v9 setSecurityType:v10];

  v32 = 0;
  v10 = [MCProfile removeOptionalNonZeroLengthStringInDictionary:dictionaryCopy key:@"Password" errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v32];
  v15 = v32;
  if (v15)
  {
LABEL_7:
    v12 = v15;
    goto LABEL_8;
  }

  securityType = [(MCAirPlaySecurityPayload *)v9 securityType];
  if (![securityType isEqual:@"PASSWORD"])
  {

    goto LABEL_30;
  }

  v31 = [v10 length];

  if (v31)
  {
LABEL_30:
    [(MCAirPlaySecurityPayload *)v9 setPassword:v10];
    v12 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v12 = [MCPayload badFieldValueErrorWithField:@"Password"];

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_15:
  if ([dictionaryCopy count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      friendlyName = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v39 = friendlyName;
      v40 = 2114;
      v41 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_19:
  return v9;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCAirPlaySecurityPayload;
  stubDictionary = [(MCPayload *)&v9 stubDictionary];
  v4 = stubDictionary;
  accessType = self->_accessType;
  if (accessType)
  {
    [stubDictionary setObject:accessType forKey:@"AccessType"];
  }

  securityType = self->_securityType;
  if (securityType)
  {
    [v4 setObject:securityType forKey:@"SecurityType"];
  }

  password = self->_password;
  if (password)
  {
    [v4 setObject:password forKey:@"Password"];
  }

  return v4;
}

- (id)subtitle1Description
{
  if ([(NSString *)self->_accessType isEqualToString:@"ANY"])
  {
    v3 = MCLocalizedString(@"AIRPLAY_SECURITY_ACCESS_ANY");
  }

  else if ([(NSString *)self->_accessType isEqualToString:@"WIFI_ONLY"])
  {
    mCAppendGreenteaSuffix = [@"AIRPLAY_SECURITY_ACCESS_WIFI" MCAppendGreenteaSuffix];
    v3 = MCLocalizedString(mCAppendGreenteaSuffix);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)subtitle2Description
{
  if ([(NSString *)self->_securityType isEqualToString:@"NONE"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_NONE";
LABEL_9:
    v4 = MCLocalizedString(v3);
    goto LABEL_10;
  }

  if ([(NSString *)self->_securityType isEqualToString:@"PASSCODE_ONCE"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_ONCE";
    goto LABEL_9;
  }

  if ([(NSString *)self->_securityType isEqualToString:@"PASSCODE_ALWAYS"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_ALWAYS";
    goto LABEL_9;
  }

  if ([(NSString *)self->_securityType isEqualToString:@"PASSWORD"])
  {
    v3 = @"AIRPLAY_SECURITY_TYPE_PASSWORD";
    goto LABEL_9;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = MCAirPlaySecurityPayload;
  verboseDescription = [(MCPayload *)&v7 verboseDescription];
  v5 = [v3 stringWithString:verboseDescription];

  [v5 appendFormat:@"AirPlay Security: %@ (%@)\n", self->_securityType, self->_accessType];

  return v5;
}

@end