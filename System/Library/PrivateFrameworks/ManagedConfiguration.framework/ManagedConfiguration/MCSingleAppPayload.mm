@interface MCSingleAppPayload
- (MCSingleAppPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSString)applicationBundleID;
- (id)restrictions;
- (id)subtitle1Description;
@end

@implementation MCSingleAppPayload

- (MCSingleAppPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v92 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v85.receiver = self;
  v85.super_class = MCSingleAppPayload;
  v10 = [(MCAppWhitelistPayloadBase *)&v85 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_71;
  }

  if ([profileCopy isStub])
  {
    v11 = 0;
    goto LABEL_67;
  }

  array = [MEMORY[0x1E695DF70] array];
  v84 = 0;
  v13 = [MCProfile removeRequiredObjectInDictionary:dictionaryCopy key:@"App" type:objc_opt_class() errorDomain:@"MCPayloadErrorDomain" missingDataCode:2002 missingDataErrorString:@"ERROR_PAYLOAD_REQUIRED_FIELD_MISSING_P_FIELD" invalidDataCode:2003 invalidDataErrorString:@"ERROR_PAYLOAD_FIELD_INVALID_P_FIELD" outError:&v84];
  v14 = v84;
  if (v14)
  {
    v11 = v14;

LABEL_62:
    v44 = [(MCPayload *)v10 malformedPayloadErrorWithError:v11];
    v45 = v44;
    if (error)
    {
      v46 = v44;
      *error = v45;
    }

    v47 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v48 = v47;
      v49 = objc_opt_class();
      v50 = v49;
      mCVerboseDescription = [v45 MCVerboseDescription];
      *buf = 138543618;
      v87 = v49;
      v88 = 2114;
      v89 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v48, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_67;
  }

  v83 = 0;
  v15 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"AllowLogout" isRequired:0 outError:&v83];
  v11 = v83;
  if (!v11)
  {
    v10->_allowLogout = [v15 BOOLValue];
    v16 = [v13 objectForKey:@"Identifier"];
    v73 = v16;
    if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v11 = [MCPayload badFieldTypeErrorWithField:@"Identifier"];
LABEL_60:

      goto LABEL_61;
    }

    v63 = v15;
    v64 = array;
    v82 = 0;
    v18 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v17 allowPlaceholder:1 error:&v82];
    v61 = v82;
    v62 = v18;
    if (v18)
    {
      appTags = [v18 appTags];
      v70 = [appTags containsObject:@"hidden"];

      compatibilityObject = [v18 compatibilityObject];
      bundleType = [compatibilityObject bundleType];
      v22 = [bundleType isEqualToString:*MEMORY[0x1E6963570]];

      applicationState = [v18 applicationState];
      isRestricted = [applicationState isRestricted];

      v17 = v73;
      isLaunchProhibited = [v18 isLaunchProhibited];
      if ((v70 & 1) != 0 || (v22 & 1) != 0 || (isRestricted & 1) != 0 || isLaunchProhibited)
      {
        v11 = [MCPayload badFieldValueErrorWithField:@"Identifier"];
        v15 = v63;
        array = v64;
LABEL_59:

        goto LABEL_60;
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v17 forKey:@"Identifier"];
    v26 = [v13 objectForKey:@"Options"];
    array = v64;
    if (v26)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MCPayload badFieldTypeErrorWithField:@"Options"];
        v15 = v63;
LABEL_58:

        goto LABEL_59;
      }

      v65 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v26, "count")}];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v56 = v26;
      v27 = v26;
      v71 = [v27 countByEnumeratingWithState:&v78 objects:v91 count:16];
      if (v71)
      {
        v68 = *v79;
        v67 = v13;
        while (2)
        {
          for (i = 0; i != v71; ++i)
          {
            if (*v79 != v68)
            {
              objc_enumerationMutation(v27);
            }

            v29 = *(*(&v78 + 1) + 8 * i);
            v30 = [v27 objectForKey:v29];
            if (v30)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v11 = [MCPayload badFieldValueErrorWithField:v29];

                v15 = v63;
                array = v64;
                v26 = v56;
                goto LABEL_58;
              }

              v31 = v27;
              v32 = +[(MCAppWhitelistPayloadBase *)MCSingleAppPayload];
              v33 = [v32 containsObject:v29];

              if (v33)
              {
                [v65 setObject:v30 forKey:v29];
                v27 = v31;
                v13 = v67;
              }

              else
              {
                v34 = _MCLogObjects;
                v27 = v31;
                v13 = v67;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v87 = v29;
                  _os_log_impl(&dword_1A795B000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring unknown option: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          v71 = [v27 countByEnumeratingWithState:&v78 objects:v91 count:16];
          if (v71)
          {
            continue;
          }

          break;
        }
      }

      if ([v65 count])
      {
        [dictionary setObject:v65 forKey:@"Options"];
      }

      array = v64;
      v26 = v56;
    }

    v35 = [v13 objectForKey:?];
    v58 = v35;
    if (v35)
    {
      v36 = v35;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MCPayload badFieldTypeErrorWithField:@"UserEnabledOptions"];
LABEL_56:
        v15 = v63;
LABEL_57:

        goto LABEL_58;
      }

      v57 = v26;
      v59 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v36, "count")}];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v37 = v36;
      v72 = [v37 countByEnumeratingWithState:&v74 objects:v90 count:16];
      if (v72)
      {
        v69 = *v75;
        v66 = v37;
        while (2)
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v75 != v69)
            {
              objc_enumerationMutation(v37);
            }

            v39 = *(*(&v74 + 1) + 8 * j);
            v40 = [v37 objectForKey:v39];
            if (v40)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v11 = [MCPayload badFieldValueErrorWithField:v39];

                v15 = v63;
                array = v64;
                v26 = v57;
                goto LABEL_57;
              }

              v41 = +[(MCAppWhitelistPayloadBase *)MCSingleAppPayload];
              v42 = [v41 containsObject:v39];

              if (v42)
              {
                [v59 setObject:v40 forKey:v39];
                v37 = v66;
              }

              else
              {
                v43 = _MCLogObjects;
                v37 = v66;
                if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v87 = v39;
                  _os_log_impl(&dword_1A795B000, v43, OS_LOG_TYPE_DEFAULT, "Ignoring unknown option: %{public}@", buf, 0xCu);
                }
              }
            }
          }

          v72 = [v37 countByEnumeratingWithState:&v74 objects:v90 count:16];
          if (v72)
          {
            continue;
          }

          break;
        }
      }

      if ([v59 count])
      {
        [dictionary setObject:v59 forKey:@"UserEnabledOptions"];
      }

      array = v64;
      v26 = v57;
    }

    [array addObject:dictionary];
    [(MCAppWhitelistPayloadBase *)v10 setWhitelistedAppsAndOptions:array];
    v11 = 0;
    goto LABEL_56;
  }

LABEL_61:

  if (v11)
  {
    goto LABEL_62;
  }

LABEL_67:
  if ([dictionaryCopy count])
  {
    v52 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v53 = v52;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v87 = friendlyName;
      v88 = 2114;
      v89 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v53, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_71:
  return v10;
}

- (NSString)applicationBundleID
{
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  firstObject = [whitelistedAppsAndOptions firstObject];

  v4 = [firstObject objectForKeyedSubscript:@"Identifier"];

  return v4;
}

- (id)restrictions
{
  v16[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCSingleAppPayload;
  restrictions = [(MCAppWhitelistPayloadBase *)&v10 restrictions];
  mCMutableDeepCopy = [restrictions MCMutableDeepCopy];

  v15[0] = @"allowMultipleAppsInAppLock";
  v13[0] = @"value";
  v13[1] = @"preference";
  v14[0] = MEMORY[0x1E695E110];
  v14[1] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v5;
  v15[1] = @"allowAppLockLogout";
  v11[0] = @"value";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCSingleAppPayload allowLogout](self, "allowLogout")}];
  v11[1] = @"preference";
  v12[0] = v6;
  v12[1] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [mCMutableDeepCopy setObject:v8 forKeyedSubscript:@"restrictedBool"];

  return mCMutableDeepCopy;
}

- (id)subtitle1Description
{
  whitelistedAppsAndOptions = [(MCAppWhitelistPayloadBase *)self whitelistedAppsAndOptions];
  v4 = [whitelistedAppsAndOptions count];

  if (!v4 || (-[MCAppWhitelistPayloadBase whitelistedAppsAndOptions](self, "whitelistedAppsAndOptions"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectAtIndex:0], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKey:", @"Identifier"), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, !v14))
  {
    v14 = MCLocalizedFormat(@"SINGLE_APP_UNKNOWN", v5, v6, v7, v8, v9, v10, v11, v16);
  }

  return v14;
}

@end