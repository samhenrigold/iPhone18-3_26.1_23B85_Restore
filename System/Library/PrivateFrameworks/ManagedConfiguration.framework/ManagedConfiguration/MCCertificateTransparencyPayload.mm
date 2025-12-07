@interface MCCertificateTransparencyPayload
+ (BOOL)isValidDomainRule:(id)rule;
+ (id)typeStrings;
- (MCCertificateTransparencyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)verboseDescription;
@end

@implementation MCCertificateTransparencyPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.security.certificatetransparency";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCCertificateTransparencyPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v83.receiver = self;
  v83.super_class = MCCertificateTransparencyPayload;
  v10 = [(MCPayload *)&v83 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_54;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v82 = 0;
  v12 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DisabledForCerts" isRequired:0 outError:&v82];
  mCCopyAsPrimaryError = v82;
  if (mCCopyAsPrimaryError)
  {
    goto LABEL_45;
  }

  if (!v12)
  {
    v27 = 0;
    goto LABEL_30;
  }

  v64 = profileCopy;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
  if (!v14)
  {
    v27 = 0;
    goto LABEL_29;
  }

  v15 = v14;
  v16 = *v79;
  v68 = *MEMORY[0x1E697AFD8];
  v67 = *MEMORY[0x1E697AFE0];
  v65 = v12;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v79 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v78 + 1) + 8 * i);
      v19 = [v18 objectForKeyedSubscript:@"Algorithm"];
      if (!v19)
      {
        v28 = [objc_opt_class() missingFieldErrorWithField:@"Algorithm" underlyingError:0];
LABEL_24:
        v27 = v28;
        v12 = v65;
        goto LABEL_28;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = [MCPayload badFieldTypeErrorWithField:@"Algorithm"];
        goto LABEL_24;
      }

      v19 = v19;
      if ([v19 isEqualToString:@"sha256"])
      {
        v20 = [v18 objectForKeyedSubscript:@"Hash"];
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85[0] = v68;
            v85[1] = v67;
            v86[0] = v19;
            v86[1] = v20;
            v21 = MEMORY[0x1E695DF20];
            v22 = v20;
            v23 = [v21 dictionaryWithObjects:v86 forKeys:v85 count:2];

            [array addObject:v23];
            goto LABEL_17;
          }

          v29 = [MCPayload badFieldTypeErrorWithField:@"Hash"];
        }

        else
        {
          v29 = [objc_opt_class() missingFieldErrorWithField:@"Hash" underlyingError:0];
        }

        v27 = v29;

        v12 = v65;
LABEL_28:

        goto LABEL_29;
      }

      v24 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        friendlyName = [(MCPayload *)v10 friendlyName];
        *buf = 138412546;
        v88 = friendlyName;
        v89 = 2112;
        v90 = v19;
        _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_DEFAULT, "Payload %@ has an unsupported hash algorithm %@. The hash will be ignored.", buf, 0x16u);
      }

LABEL_17:
    }

    v15 = [obj countByEnumeratingWithState:&v78 objects:v91 count:16];
    v27 = 0;
    v12 = v65;
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_29:

  profileCopy = v64;
LABEL_30:
  v77 = v27;
  v30 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DisabledForDomains" isRequired:0 allowZeroLengthString:0 outError:&v77];
  mCCopyAsPrimaryError = v77;

  if (mCCopyAsPrimaryError)
  {

    goto LABEL_45;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v73 objects:v84 count:16];
  if (v32)
  {
    v33 = v32;
    v66 = v12;
    v34 = *v74;
    while (2)
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v74 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v73 + 1) + 8 * j);
        if (([objc_opt_class() isValidDomainRule:v36] & 1) == 0)
        {
          obja = MEMORY[0x1E696ABC0];
          [profileCopy friendlyName];
          v38 = v37 = profileCopy;
          v46 = MCErrorArray(@"ERROR_CERTIFICATE_TRANSPARENCY_BAD_DOMAIN", v39, v40, v41, v42, v43, v44, v45, v38);
          v47 = [obja MCErrorWithDomain:@"MCCertificateTransparencyErrorDomain" code:53000 descriptionArray:v46 errorType:@"MCFatalError"];
          mCCopyAsPrimaryError = [v47 MCCopyAsPrimaryError];

          profileCopy = v37;
          goto LABEL_42;
        }

        [array2 addObject:v36];
      }

      v33 = [v31 countByEnumeratingWithState:&v73 objects:v84 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }

    mCCopyAsPrimaryError = 0;
LABEL_42:
    v12 = v66;
  }

  else
  {
    mCCopyAsPrimaryError = 0;
  }

  objc_storeStrong(&v10->_hashDictionaries, array);
  objc_storeStrong(&v10->_domainRules, array2);

  if (mCCopyAsPrimaryError)
  {
LABEL_45:
    v48 = [(MCPayload *)v10 malformedPayloadErrorWithError:mCCopyAsPrimaryError];
    v49 = v48;
    if (error)
    {
      v50 = v48;
      *error = v49;
    }

    v51 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v52 = v51;
      v53 = objc_opt_class();
      objb = v53;
      [v49 MCVerboseDescription];
      v54 = v10;
      v55 = dictionaryCopy;
      v56 = array2;
      v57 = v12;
      v59 = v58 = profileCopy;
      *buf = 138412546;
      v88 = v53;
      v89 = 2112;
      v90 = v59;
      _os_log_impl(&dword_1A795B000, v52, OS_LOG_TYPE_ERROR, "%@ Can't parse payload: %@", buf, 0x16u);

      profileCopy = v58;
      v12 = v57;
      array2 = v56;
      dictionaryCopy = v55;
      v10 = v54;
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v60 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v61 = v60;
      friendlyName2 = [(MCPayload *)v10 friendlyName];
      *buf = 138412546;
      v88 = friendlyName2;
      v89 = 2112;
      v90 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v61, OS_LOG_TYPE_INFO, "Payload “%@” contains ignored fields. They are: %@", buf, 0x16u);
    }
  }

LABEL_54:
  return v10;
}

+ (BOOL)isValidDomainRule:(id)rule
{
  ruleCopy = rule;
  if ([ruleCopy hasPrefix:@"."])
  {
    if ([ruleCopy length] == 1)
    {
      v4 = 0;
    }

    else
    {
      [ruleCopy substringFromIndex:1];
      v4 = _CFHostIsDomainTopLevelForCertificatePolicy() == 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)stubDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MCCertificateTransparencyPayload;
  stubDictionary = [(MCPayload *)&v21 stubDictionary];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_hashDictionaries, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_hashDictionaries;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = *MEMORY[0x1E697AFD8];
    v8 = *MEMORY[0x1E697AFE0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v22[0] = @"Algorithm";
        v11 = [v10 objectForKeyedSubscript:v7];
        v22[1] = @"Hash";
        v23[0] = v11;
        v12 = [v10 objectForKeyedSubscript:v8];
        v23[1] = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
        [v3 addObject:v13];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v17 objects:v24 count:16];
    }

    while (v5);
  }

  [stubDictionary setObject:v3 forKeyedSubscript:@"DisabledForCerts"];
  [stubDictionary setObject:self->_domainRules forKeyedSubscript:@"DisabledForDomains"];

  return stubDictionary;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCCertificateTransparencyPayload;
  verboseDescription = [(MCPayload *)&v6 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_hashDictionaries)
  {
    [v4 appendFormat:@"\nhashDictionaries:\n%@", self->_hashDictionaries];
  }

  if (self->_domainRules)
  {
    [v4 appendFormat:@"\ndomainRules:\n%@", self->_domainRules];
  }

  return v4;
}

- (id)subtitle1Label
{
  v3 = [(NSArray *)self->_hashDictionaries count];
  v4 = [(NSArray *)self->_domainRules count]+ v3;
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = @"CERTIFICATE_TRANSPARENCY_EXCEPTION_SINGULAR";
    }

    else
    {
      v5 = @"CERTIFICATE_TRANSPARENCY_EXCEPTION_PLURAL";
    }

    v6 = MCLocalizedString(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end