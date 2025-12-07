@interface MCExtensibleSingleSignOnPayload
+ (id)typeStrings;
- (BOOL)_validateHost:(id)host outError:(id *)error;
- (MCExtensibleSingleSignOnPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_validateURLString:(id)string outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCExtensibleSingleSignOnPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.extensiblesso";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCExtensibleSingleSignOnPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v136[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v128.receiver = self;
  v128.super_class = MCExtensibleSingleSignOnPayload;
  v9 = [(MCPayload *)&v128 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_13;
  }

  v127 = 0;
  v10 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Type" isRequired:1 outError:&v127];
  v11 = v127;
  esso_type = v9->_esso_type;
  v9->_esso_type = v10;

  if (v11)
  {
    goto LABEL_4;
  }

  v136[0] = @"Credential";
  v136[1] = @"Redirect";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:2];
  v14 = v9->_esso_type;
  v126 = 0;
  [MCProfile checkString:v14 isOneOfStrings:v13 key:@"Type" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v126];
  v11 = v126;

  if (v11)
  {
    goto LABEL_4;
  }

  if ([(NSString *)v9->_esso_type isEqualToString:@"Credential"])
  {
    v125 = 0;
    v27 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"Realm" isRequired:0 outError:&v125];
    v11 = v125;
    esso_realm = v9->_esso_realm;
    v9->_esso_realm = v27;

    if (v11)
    {
      goto LABEL_4;
    }
  }

  v124 = 0;
  v29 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ExtensionIdentifier" isRequired:1 outError:&v124];
  v11 = v124;
  esso_extensionIdentifier = v9->_esso_extensionIdentifier;
  v9->_esso_extensionIdentifier = v29;

  if (v11)
  {
    goto LABEL_4;
  }

  v123 = 0;
  v31 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"TeamIdentifier" isRequired:0 outError:&v123];
  v11 = v123;
  esso_teamIdentifier = v9->_esso_teamIdentifier;
  v9->_esso_teamIdentifier = v31;

  if (v11)
  {
    goto LABEL_4;
  }

  v122 = 0;
  v33 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"ExtensionData" isRequired:0 outError:&v122];
  v11 = v122;
  esso_extensionData = v9->_esso_extensionData;
  v9->_esso_extensionData = v33;

  if (v11)
  {
    goto LABEL_4;
  }

  v121 = 0;
  v103 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ScreenLockedBehavior" isRequired:0 outError:&v121];
  v11 = v121;
  esso_screenLockedBehavior = v9->_esso_screenLockedBehavior;
  v9->_esso_screenLockedBehavior = v103;

  if (v11)
  {
    goto LABEL_4;
  }

  if (v9->_esso_screenLockedBehavior)
  {
    v135[0] = @"Cancel";
    v135[1] = @"DoNotHandle";
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];
    v37 = v9->_esso_screenLockedBehavior;
    v120 = 0;
    [MCProfile checkString:v37 isOneOfStrings:v36 key:@"ScreenLockedBehavior" errorDomain:@"MCPayloadErrorDomain" errorCode:2004 errorString:@"ERROR_PROFILE_FIELD_INVALID_P_FIELD" outError:&v120];
    v11 = v120;

    if (v11)
    {
      goto LABEL_4;
    }
  }

  v119 = 0;
  v38 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"DeniedBundleIdentifiers" isRequired:0 allowZeroLengthString:0 outError:&v119];
  v11 = v119;
  esso_deniedBundleIdentifiers = v9->_esso_deniedBundleIdentifiers;
  v9->_esso_deniedBundleIdentifiers = v38;

  if (v11)
  {
    goto LABEL_4;
  }

  if ([(NSString *)v9->_esso_type isEqualToString:@"Credential"])
  {
    v118 = 0;
    v40 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"Hosts" isRequired:1 allowZeroLengthString:0 outError:&v118];
    v41 = v118;
    if (v41)
    {
LABEL_42:
      v11 = v41;
LABEL_43:

      goto LABEL_4;
    }

    if (![v40 count])
    {
      v54 = MEMORY[0x1E696ABC0];
      v55 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v42, v43, v44, v45, v46, v47, v48, @"Hosts");
      v11 = [v54 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v55 underlyingError:0 errorType:@"MCFatalError"];

      if (v11)
      {
        goto LABEL_43;
      }
    }

    v104 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v40, "count")}];
    v102 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40, "count")}];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    obj = v40;
    v101 = [obj countByEnumeratingWithState:&v114 objects:v134 count:16];
    v11 = 0;
    if (v101)
    {
      v100 = *v115;
LABEL_28:
      v49 = 0;
      v50 = v11;
      while (1)
      {
        if (*v115 != v100)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v114 + 1) + 8 * v49);
        v113 = v50;
        v52 = [(MCExtensibleSingleSignOnPayload *)v9 _validateHost:v51 outError:&v113];
        v11 = v113;

        if (!v52)
        {
          break;
        }

        lowercaseString = [v51 lowercaseString];
        if ([v104 containsObject:lowercaseString])
        {
          v56 = MEMORY[0x1E696ABC0];
          esso_extensionIdentifier = [(MCExtensibleSingleSignOnPayload *)v9 esso_extensionIdentifier];
          v65 = MCErrorArray(@"EXTENSIBLE_SSO_INTRA_HOST_CONFLICT_P_EXTENSION_ID_P_HOST", v58, v59, v60, v61, v62, v63, v64, esso_extensionIdentifier);
          v66 = [v56 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54006 descriptionArray:v65 errorType:@"MCFatalError"];

          v11 = v66;
          break;
        }

        [v104 addObject:lowercaseString];
        [(NSArray *)v102 addObject:v51];

        ++v49;
        v50 = v11;
        if (v101 == v49)
        {
          v101 = [obj countByEnumeratingWithState:&v114 objects:v134 count:16];
          if (v101)
          {
            goto LABEL_28;
          }

          break;
        }
      }
    }

    esso_hosts = v9->_esso_hosts;
    v9->_esso_hosts = v102;

    if (v11)
    {
LABEL_4:
      v15 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
      v16 = v15;
      if (error)
      {
        v17 = v15;
        *error = v16;
      }

      v18 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        v20 = objc_opt_class();
        v21 = v20;
        mCVerboseDescription = [v16 MCVerboseDescription];
        *buf = 138543618;
        v130 = v20;
        v131 = 2114;
        v132 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v19, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v9 = 0;
      goto LABEL_9;
    }
  }

  if (![(NSString *)v9->_esso_type isEqualToString:@"Redirect"])
  {
    v11 = 0;
    goto LABEL_9;
  }

  v112 = 0;
  v40 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"URLs" isRequired:1 allowZeroLengthString:0 outError:&v112];
  v41 = v112;
  if (v41)
  {
    goto LABEL_42;
  }

  if (![v40 count])
  {
    v84 = MEMORY[0x1E696ABC0];
    v85 = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v68, v69, v70, v71, v72, v73, v74, @"URLs");
    v11 = [v84 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v85 underlyingError:0 errorType:@"MCFatalError"];

    if (v11)
    {
      goto LABEL_43;
    }
  }

  v75 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v40, "count")}];
  v106 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v40, "count")}];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v105 = v40;
  v76 = [v105 countByEnumeratingWithState:&v108 objects:v133 count:16];
  if (!v76)
  {
    v11 = 0;
    goto LABEL_62;
  }

  v77 = v76;
  v78 = *v109;
  while (2)
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v109 != v78)
      {
        objc_enumerationMutation(v105);
      }

      v80 = *(*(&v108 + 1) + 8 * i);
      v107 = 0;
      v81 = [(MCExtensibleSingleSignOnPayload *)v9 _validateURLString:v80 outError:&v107];
      v82 = v107;
      if (v82)
      {
        v11 = v82;
LABEL_61:

        goto LABEL_62;
      }

      normalizedURL = [v81 normalizedURL];
      if ([v75 containsObject:normalizedURL])
      {
        v86 = MEMORY[0x1E696ABC0];
        esso_extensionIdentifier2 = [(MCExtensibleSingleSignOnPayload *)v9 esso_extensionIdentifier];
        absoluteString = [v81 absoluteString];
        v95 = MCErrorArray(@"EXTENSIBLE_SSO_INTRA_URL_CONFLICT_P_EXTENSION_ID_P_URL", v88, v89, v90, v91, v92, v93, v94, esso_extensionIdentifier2);
        [v86 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54004 descriptionArray:v95 errorType:@"MCFatalError"];
        v11 = v96 = normalizedURL;

        goto LABEL_61;
      }

      [v75 addObject:normalizedURL];
      [(NSArray *)v106 addObject:v81];
    }

    v77 = [v105 countByEnumeratingWithState:&v108 objects:v133 count:16];
    v11 = 0;
    if (v77)
    {
      continue;
    }

    break;
  }

LABEL_62:

  esso_URLs = v9->_esso_URLs;
  v9->_esso_URLs = v106;

  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  if ([dictionaryCopy count])
  {
    v23 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v24 = v23;
      friendlyName = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v130 = friendlyName;
      v131 = 2114;
      v132 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v24, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_13:
  return v9;
}

- (id)verboseDescription
{
  v53 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = MCExtensibleSingleSignOnPayload;
  verboseDescription = [(MCPayload *)&v49 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  esso_type = [(MCExtensibleSingleSignOnPayload *)self esso_type];

  if (esso_type)
  {
    esso_type2 = [(MCExtensibleSingleSignOnPayload *)self esso_type];
    [v4 appendFormat:@"Type        : %@\n", esso_type2];
  }

  esso_realm = [(MCExtensibleSingleSignOnPayload *)self esso_realm];

  if (esso_realm)
  {
    esso_realm2 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];
    [v4 appendFormat:@"Realm       : %@\n", esso_realm2];
  }

  esso_extensionIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];

  if (esso_extensionIdentifier)
  {
    esso_extensionIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    [v4 appendFormat:@"Extension ID: %@\n", esso_extensionIdentifier2];
  }

  esso_teamIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];

  if (esso_teamIdentifier)
  {
    esso_teamIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];
    [v4 appendFormat:@"Team ID     : %@\n", esso_teamIdentifier2];
  }

  esso_extensionData = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];

  if (esso_extensionData)
  {
    esso_extensionData2 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];
    [v4 appendFormat:@"Ext. Data   : [%ld entries]\n", objc_msgSend(esso_extensionData2, "count")];
  }

  esso_URLs = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];

  if (esso_URLs)
  {
    [v4 appendString:@"URLs        :\n"];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    esso_URLs2 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
    v17 = [esso_URLs2 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(esso_URLs2);
          }

          absoluteString = [*(*(&v45 + 1) + 8 * i) absoluteString];
          [v4 appendFormat:@"    %@\n", absoluteString];
        }

        v18 = [esso_URLs2 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v18);
    }
  }

  esso_hosts = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];

  if (esso_hosts)
  {
    [v4 appendString:@"Hosts       :\n"];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    esso_hosts2 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
    v24 = [esso_hosts2 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v42;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(esso_hosts2);
          }

          [v4 appendFormat:@"    %@\n", *(*(&v41 + 1) + 8 * j)];
        }

        v25 = [esso_hosts2 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v25);
    }
  }

  esso_screenLockedBehavior = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];

  if (esso_screenLockedBehavior)
  {
    esso_screenLockedBehavior2 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];
    [v4 appendFormat:@"ScreenLocked: %@\n", esso_screenLockedBehavior2];
  }

  esso_deniedBundleIdentifiers = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];

  if (esso_deniedBundleIdentifiers)
  {
    [v4 appendString:@"DenyBndlIds :\n"];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    esso_deniedBundleIdentifiers2 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
    v32 = [esso_deniedBundleIdentifiers2 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v38;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v38 != v34)
          {
            objc_enumerationMutation(esso_deniedBundleIdentifiers2);
          }

          [v4 appendFormat:@"    %@\n", *(*(&v37 + 1) + 8 * k)];
        }

        v33 = [esso_deniedBundleIdentifiers2 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v33);
    }
  }

  return v4;
}

- (id)stubDictionary
{
  v35 = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = MCExtensibleSingleSignOnPayload;
  stubDictionary = [(MCPayload *)&v33 stubDictionary];
  esso_type = [(MCExtensibleSingleSignOnPayload *)self esso_type];

  if (esso_type)
  {
    esso_type2 = [(MCExtensibleSingleSignOnPayload *)self esso_type];
    [stubDictionary setObject:esso_type2 forKeyedSubscript:@"Type"];
  }

  esso_realm = [(MCExtensibleSingleSignOnPayload *)self esso_realm];

  if (esso_realm)
  {
    esso_realm2 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];
    [stubDictionary setObject:esso_realm2 forKeyedSubscript:@"Realm"];
  }

  esso_extensionIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];

  if (esso_extensionIdentifier)
  {
    esso_extensionIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    [stubDictionary setObject:esso_extensionIdentifier2 forKeyedSubscript:@"ExtensionIdentifier"];
  }

  esso_teamIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];

  if (esso_teamIdentifier)
  {
    esso_teamIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];
    [stubDictionary setObject:esso_teamIdentifier2 forKeyedSubscript:@"TeamIdentifier"];
  }

  esso_extensionData = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];

  if (esso_extensionData)
  {
    esso_extensionData2 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionData];
    [stubDictionary setObject:esso_extensionData2 forKeyedSubscript:@"ExtensionData"];
  }

  esso_URLs = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];

  if (esso_URLs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    esso_URLs2 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
    v17 = [esso_URLs2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(esso_URLs2);
          }

          absoluteString = [*(*(&v29 + 1) + 8 * i) absoluteString];
          [array addObject:absoluteString];
        }

        v18 = [esso_URLs2 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v18);
    }

    [stubDictionary setObject:array forKeyedSubscript:@"URLs"];
  }

  esso_hosts = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];

  if (esso_hosts)
  {
    esso_hosts2 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
    [stubDictionary setObject:esso_hosts2 forKeyedSubscript:@"Hosts"];
  }

  esso_screenLockedBehavior = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];

  if (esso_screenLockedBehavior)
  {
    esso_screenLockedBehavior2 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];
    [stubDictionary setObject:esso_screenLockedBehavior2 forKeyedSubscript:@"ScreenLockedBehavior"];
  }

  esso_deniedBundleIdentifiers = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];

  if (esso_deniedBundleIdentifiers)
  {
    esso_deniedBundleIdentifiers2 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
    [stubDictionary setObject:esso_deniedBundleIdentifiers2 forKeyedSubscript:@"DeniedBundleIdentifiers"];
  }

  return stubDictionary;
}

- (id)title
{
  esso_extensionIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
  v4 = MCContainingBundleIDForBundleID(esso_extensionIdentifier);

  v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];
  localizedName = [v5 localizedName];
  v7 = [localizedName length];

  if (!v7 || ([v5 localizedName], (esso_extensionIdentifier3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    esso_extensionIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    v10 = [esso_extensionIdentifier2 isEqualToString:@"com.apple.AppSSOKerberos.KerberosExtension"];

    if (v10)
    {
      esso_extensionIdentifier3 = @"Kerberos";
    }

    else
    {
      esso_extensionIdentifier3 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    }
  }

  return esso_extensionIdentifier3;
}

- (id)payloadDescriptionKeyValueSections
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  esso_type = [(MCExtensibleSingleSignOnPayload *)self esso_type];

  if (esso_type)
  {
    esso_type2 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

    if (esso_type2 == @"Redirect")
    {
      v9 = @"ESSO_TYPE_REDIRECT";
    }

    else
    {
      esso_type3 = [(MCExtensibleSingleSignOnPayload *)self esso_type];

      if (esso_type3 != @"Credential")
      {
        esso_type4 = [(MCExtensibleSingleSignOnPayload *)self esso_type];
LABEL_8:
        v10 = esso_type4;
        v11 = [MCKeyValue alloc];
        v12 = MCLocalizedString(@"TYPE");
        v13 = [(MCKeyValue *)v11 initWithLocalizedString:v10 localizedKey:v12];

        [v4 addObject:v13];
        goto LABEL_9;
      }

      v9 = @"ESSO_TYPE_CREDENTIAL";
    }

    esso_type4 = MCLocalizedString(v9);
    goto LABEL_8;
  }

LABEL_9:
  esso_realm = [(MCExtensibleSingleSignOnPayload *)self esso_realm];

  if (esso_realm)
  {
    v15 = [MCKeyValue alloc];
    esso_realm2 = [(MCExtensibleSingleSignOnPayload *)self esso_realm];
    v17 = MCLocalizedString(@"REALM");
    v18 = [(MCKeyValue *)v15 initWithLocalizedString:esso_realm2 localizedKey:v17];

    [v4 addObject:v18];
  }

  esso_extensionIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];

  if (esso_extensionIdentifier)
  {
    v20 = [MCKeyValue alloc];
    esso_extensionIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_extensionIdentifier];
    v22 = MCLocalizedString(@"EXTENSION_ID");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:esso_extensionIdentifier2 localizedKey:v22];

    [v4 addObject:v23];
  }

  esso_teamIdentifier = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];

  if (esso_teamIdentifier)
  {
    v25 = [MCKeyValue alloc];
    esso_teamIdentifier2 = [(MCExtensibleSingleSignOnPayload *)self esso_teamIdentifier];
    v27 = MCLocalizedString(@"TEAM_ID");
    v28 = [(MCKeyValue *)v25 initWithLocalizedString:esso_teamIdentifier2 localizedKey:v27];

    [v4 addObject:v28];
  }

  esso_screenLockedBehavior = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];

  if (esso_screenLockedBehavior)
  {
    v30 = [MCKeyValue alloc];
    esso_screenLockedBehavior2 = [(MCExtensibleSingleSignOnPayload *)self esso_screenLockedBehavior];
    v32 = MCLocalizedString(@"SCREEN_LOCKED_BEHAVIOR");
    v33 = [(MCKeyValue *)v30 initWithLocalizedString:esso_screenLockedBehavior2 localizedKey:v32];

    [v4 addObject:v33];
  }

  if ([v4 count])
  {
    v34 = [MCKeyValueSection sectionWithKeyValues:v4];
    [v3 addObject:v34];
  }

  esso_URLs = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
  v36 = [esso_URLs count];

  if (v36)
  {
    array = [MEMORY[0x1E695DF70] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    esso_URLs2 = [(MCExtensibleSingleSignOnPayload *)self esso_URLs];
    v39 = [esso_URLs2 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v58;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(esso_URLs2);
          }

          absoluteString = [*(*(&v57 + 1) + 8 * i) absoluteString];
          [array addObject:absoluteString];
        }

        v40 = [esso_URLs2 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v40);
    }

    v44 = MCLocalizedString(@"URLS");
    v45 = [MCKeyValueSection sectionWithLocalizedArray:array title:v44 footer:0];

    [v3 addObject:v45];
  }

  esso_hosts = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
  v47 = [esso_hosts count];

  if (v47)
  {
    esso_hosts2 = [(MCExtensibleSingleSignOnPayload *)self esso_hosts];
    v49 = MCLocalizedString(@"HOSTS");
    v50 = [MCKeyValueSection sectionWithLocalizedArray:esso_hosts2 title:v49 footer:0];

    [v3 addObject:v50];
  }

  esso_deniedBundleIdentifiers = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
  v52 = [esso_deniedBundleIdentifiers count];

  if (v52)
  {
    esso_deniedBundleIdentifiers2 = [(MCExtensibleSingleSignOnPayload *)self esso_deniedBundleIdentifiers];
    v54 = MCLocalizedString(@"DENIED_BUNDLE_IDENTIFIERS");
    v55 = [MCKeyValueSection sectionWithLocalizedArray:esso_deniedBundleIdentifiers2 title:v54 footer:0];

    [v3 addObject:v55];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (BOOL)_validateHost:(id)host outError:(id *)error
{
  hostCopy = host;
  v13 = [hostCopy length];
  if (!v13)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = MCErrorArray(@"EXTENSIBLE_SSO_INVALID_HOST_P_HOST", v6, v7, v8, v9, v10, v11, v12, hostCopy);
    v16 = [v14 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54001 descriptionArray:v15 errorType:@"MCFatalError"];

    if (error)
    {
      v17 = v16;
      *error = v16;
    }
  }

  return v13 != 0;
}

- (id)_validateURLString:(id)string outError:(id *)error
{
  stringCopy = string;
  v7 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:stringCopy];
  scheme = [v7 scheme];
  v9 = [scheme caseInsensitiveCompare:@"http"];
  if (v9)
  {
    scheme2 = [v7 scheme];
    if ([scheme2 caseInsensitiveCompare:@"https"])
    {
      goto LABEL_7;
    }
  }

  host = [v7 host];
  if (![host length])
  {
LABEL_6:

    if (!v9)
    {
LABEL_8:

LABEL_9:
      v19 = MEMORY[0x1E696ABC0];
      v20 = MCErrorArray(@"EXTENSIBLE_SSO_INVALID_URL_P_URL", v12, v13, v14, v15, v16, v17, v18, stringCopy);
      v21 = [v19 MCErrorWithDomain:@"MCExtensibleSingleSignOnErrorDomain" code:54000 descriptionArray:v20 errorType:@"MCFatalError"];

      if (error)
      {
        v22 = v21;
        *error = v21;
      }

      v23 = 0;
      goto LABEL_12;
    }

LABEL_7:

    goto LABEL_8;
  }

  query = [v7 query];
  if ([query length])
  {

    goto LABEL_6;
  }

  fragment = [v7 fragment];
  v26 = [fragment length];

  if (v9)
  {
  }

  if (v26)
  {
    goto LABEL_9;
  }

  v23 = [v7 URL];
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_12:

  return v23;
}

@end