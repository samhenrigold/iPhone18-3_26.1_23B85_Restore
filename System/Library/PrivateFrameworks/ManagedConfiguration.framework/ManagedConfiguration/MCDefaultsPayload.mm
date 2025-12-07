@interface MCDefaultsPayload
- (BOOL)isAllowedToWriteDefaults;
- (MCDefaultsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)defaultsForDomain:(id)domain;
- (id)stubDictionary;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCDefaultsPayload

- (BOOL)isAllowedToWriteDefaults
{
  v8 = 0;
  profile = [(MCPayload *)self profile];
  signatureVersion = [profile signatureVersion];

  profile2 = [(MCPayload *)self profile];
  signerCertificates = [profile2 signerCertificates];
  [MCProfile evaluateTrustOfCertificateChain:signerCertificates signatureVersion:signatureVersion outIsAllowedToWriteDefaults:&v8];

  LOBYTE(profile2) = v8;
  return profile2;
}

- (MCDefaultsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v64.receiver = self;
  v64.super_class = MCDefaultsPayload;
  v10 = [(MCPayload *)&v64 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_51;
  }

  v63 = 0;
  v11 = [MCProfile removeOptionalObjectInDictionary:dictionaryCopy key:@"PayloadContent" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v63];
  mCCopyAsPrimaryError = v63;
  if (mCCopyAsPrimaryError)
  {
    goto LABEL_42;
  }

  profile = [(MCPayload *)v10 profile];
  isStub = [profile isStub];

  if ((isStub & 1) == 0 && v11 && ![(MCDefaultsPayload *)v10 isAllowedToWriteDefaults])
  {
    v31 = MEMORY[0x1E696ABC0];
    friendlyName = [profileCopy friendlyName];
    defaultsByDomain = MCErrorArray(@"ERROR_PROFILE_DEFAULTS_BAD_SIGNATURE_P_ID", v33, v34, v35, v36, v37, v38, v39, friendlyName);
    v40 = [v31 MCErrorWithDomain:@"MCDefaultsErrorDomain" code:10001 descriptionArray:defaultsByDomain errorType:@"MCFatalError"];
    mCCopyAsPrimaryError = [v40 MCCopyAsPrimaryError];

    v15 = friendlyName;
    goto LABEL_40;
  }

  if ([v11 count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v11, "count")}];
  }

  else
  {
    v15 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    defaultsByDomain = [MCPayload badFieldTypeErrorWithField:@"DefaultsData"];
    mCCopyAsPrimaryError = [defaultsByDomain MCCopyAsPrimaryError];
    goto LABEL_40;
  }

  v56 = profileCopy;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v11;
  v16 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (!v16)
  {
LABEL_28:

    profileCopy = v56;
    goto LABEL_39;
  }

  v17 = v16;
  v18 = *v60;
  v55 = v11;
  v58 = v15;
LABEL_12:
  v19 = 0;
  while (1)
  {
    if (*v60 != v18)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(*(&v59 + 1) + 8 * v19);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = [MCPayload badFieldTypeErrorWithField:@"PayloadContent"];
      mCCopyAsPrimaryError = [v21 MCCopyAsPrimaryError];
      goto LABEL_38;
    }

    v21 = [v20 objectForKey:@"DefaultsDomainName"];
    if (!v21)
    {
      profile2 = [(MCPayload *)v10 profile];
      isStub2 = [profile2 isStub];

      if ((isStub2 & 1) == 0)
      {
        v22 = [MCPayload missingFieldErrorWithField:@"DefaultsDomainName" underlyingError:0];
        mCCopyAsPrimaryError = [v22 MCCopyAsPrimaryError];
        goto LABEL_37;
      }

      goto LABEL_26;
    }

    v22 = [v20 objectForKey:@"DefaultsData"];
    if (!v22)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = [MCPayload badFieldTypeErrorWithField:@"DefaultsData"];
      goto LABEL_35;
    }

    v23 = v58;
    v24 = [(NSDictionary *)v58 objectForKey:v21];
    if (v24)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v42 = [MCPayload badFieldTypeErrorWithField:@"DefaultsData"];
        mCCopyAsPrimaryError = [v42 MCCopyAsPrimaryError];

        goto LABEL_36;
      }

      v25 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
      [v25 addEntriesFromDictionary:v22];

      v22 = v25;
      v23 = v58;
    }

    [(NSDictionary *)v23 setObject:v22 forKey:v21];

LABEL_26:
    if (v17 == ++v19)
    {
      v17 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      v11 = v55;
      v15 = v58;
      if (v17)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  profile3 = [(MCPayload *)v10 profile];
  isStub3 = [profile3 isStub];

  if (isStub3)
  {
    goto LABEL_26;
  }

  v41 = [MCPayload missingFieldErrorWithField:@"DefaultsData" underlyingError:0];
LABEL_35:
  v24 = v41;
  mCCopyAsPrimaryError = [v41 MCCopyAsPrimaryError];
LABEL_36:

LABEL_37:
LABEL_38:
  v11 = v55;
  profileCopy = v56;
  v15 = v58;

  if (mCCopyAsPrimaryError)
  {
    goto LABEL_41;
  }

LABEL_39:
  v15 = v15;
  mCCopyAsPrimaryError = 0;
  defaultsByDomain = v10->_defaultsByDomain;
  v10->_defaultsByDomain = v15;
LABEL_40:

LABEL_41:
  if (mCCopyAsPrimaryError)
  {
LABEL_42:
    v43 = [(MCPayload *)v10 malformedPayloadErrorWithError:mCCopyAsPrimaryError];
    v44 = v43;
    if (error)
    {
      v45 = v43;
      *error = v44;
    }

    v46 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v47 = v46;
      v48 = objc_opt_class();
      v49 = v48;
      mCVerboseDescription = [v44 MCVerboseDescription];
      *buf = 138543618;
      v66 = v48;
      v67 = 2114;
      v68 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v47, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v51 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v52 = v51;
      friendlyName2 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v66 = friendlyName2;
      v67 = 2114;
      v68 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v52, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_51:
  return v10;
}

- (id)stubDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MCDefaultsPayload;
  stubDictionary = [(MCPayload *)&v21 stubDictionary];
  v3 = MEMORY[0x1E695DF70];
  domains = [(MCDefaultsPayload *)self domains];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(domains, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  domains2 = [(MCDefaultsPayload *)self domains];
  v7 = [domains2 countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(domains2);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(MCDefaultsPayload *)self defaultsForDomain:v11];
        v13 = v12;
        if (v12)
        {
          v22[0] = @"DefaultsDomainName";
          v22[1] = @"DefaultsData";
          v23[0] = v11;
          v23[1] = v12;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
          [v5 addObject:v14];
        }
      }

      v8 = [domains2 countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v8);
  }

  [stubDictionary setObject:v5 forKey:@"PayloadContent"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCDefaultsPayload;
  verboseDescription = [(MCPayload *)&v6 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_defaultsByDomain)
  {
    [v4 appendFormat:@"\ndefaults: %@", self->_defaultsByDomain];
  }

  return v4;
}

- (id)defaultsForDomain:(id)domain
{
  if (domain)
  {
    v4 = [(NSDictionary *)self->_defaultsByDomain objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MCLocalizedString(@"DEFAULTS_DESCRIPTION_SINGULAR_FORMAT");
  v4 = [v2 stringWithFormat:v3, 0];

  return v4;
}

@end