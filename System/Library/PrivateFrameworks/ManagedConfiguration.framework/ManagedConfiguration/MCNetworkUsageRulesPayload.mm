@interface MCNetworkUsageRulesPayload
+ (id)typeStrings;
- (MCNetworkUsageRulesPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)installationWarnings;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)verboseDescription;
@end

@implementation MCNetworkUsageRulesPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.networkusagerules";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (MCNetworkUsageRulesPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v68.receiver = self;
  v68.super_class = MCNetworkUsageRulesPayload;
  v9 = [(MCPayload *)&v68 initWithDictionary:dictionaryCopy profile:profile outError:error];
  if (!v9)
  {
    goto LABEL_47;
  }

  v67 = 0;
  v10 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SIMRules" isRequired:0 outError:&v67];
  v11 = v67;
  SIMRules = v9->_SIMRules;
  v9->_SIMRules = v10;

  if (v11)
  {
    goto LABEL_38;
  }

  v13 = v9->_SIMRules;
  if (!v13)
  {
    goto LABEL_30;
  }

  if ([(NSArray *)v13 count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v21 = v9->_SIMRules;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v22)
    {
      v23 = *v64;
      v57 = v21;
      v54 = *v64;
      while (2)
      {
        v24 = 0;
        v55 = v22;
        do
        {
          if (*v64 != v23)
          {
            v25 = v24;
            objc_enumerationMutation(v21);
            v24 = v25;
          }

          v56 = v24;
          v26 = *(*(&v63 + 1) + 8 * v24);
          v27 = [v26 objectForKeyedSubscript:@"ICCIDs"];
          if (!v27)
          {
            goto LABEL_34;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v27 count])
          {
            goto LABEL_34;
          }

          v28 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v27, "count")}];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v27 = v27;
          v29 = [v27 countByEnumeratingWithState:&v59 objects:v73 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v60;
            v53 = v26;
            while (2)
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v60 != v31)
                {
                  objc_enumerationMutation(v27);
                }

                v33 = *(*(&v59 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v33 length])
                {
                  goto LABEL_32;
                }

                uppercaseString = [v33 uppercaseString];
                if ([v28 containsObject:uppercaseString])
                {

LABEL_32:
                  v35 = v27;
                  goto LABEL_33;
                }

                [v28 addObject:uppercaseString];
              }

              v30 = [v27 countByEnumeratingWithState:&v59 objects:v73 count:16];
              v26 = v53;
              if (v30)
              {
                continue;
              }

              break;
            }
          }

          v35 = [v26 objectForKeyedSubscript:@"WiFiAssistPolicy"];
          if (!v35 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v35 intValue] < 2)
          {
LABEL_33:

            v21 = v57;
LABEL_34:

LABEL_35:
            goto LABEL_36;
          }

          intValue = [v35 intValue];

          v21 = v57;
          if (intValue > 3)
          {
            goto LABEL_35;
          }

          v24 = v56 + 1;
          v23 = v54;
        }

        while (v56 + 1 != v55);
        v22 = [(NSArray *)v57 countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_30:
    v37 = v9->_SIMRules == 0;
    v58 = 0;
    v38 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"ApplicationRules" isRequired:v37 outError:&v58];
    v11 = v58;
    applicationRules = v9->_applicationRules;
    v9->_applicationRules = v38;
    goto LABEL_37;
  }

LABEL_36:
  v40 = MEMORY[0x1E696ABC0];
  applicationRules = MCErrorArray(@"ERROR_PAYLOAD_FIELD_BAD_VALUE_P_FIELD", v14, v15, v16, v17, v18, v19, v20, @"SIMRules");
  v11 = [v40 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:applicationRules underlyingError:0 errorType:@"MCFatalError"];
LABEL_37:

  if (v11)
  {
LABEL_38:
    v41 = [(MCPayload *)v9 malformedPayloadErrorWithError:v11];
    v42 = v41;
    if (error)
    {
      v43 = v41;
      *error = v42;
    }

    v44 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v45 = v44;
      v46 = objc_opt_class();
      v47 = v46;
      mCVerboseDescription = [v42 MCVerboseDescription];
      *buf = 138543618;
      v70 = v46;
      v71 = 2114;
      v72 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v45, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  if ([dictionaryCopy count])
  {
    v49 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v50 = v49;
      friendlyName = [(MCPayload *)v9 friendlyName];
      *buf = 138543618;
      v70 = friendlyName;
      v71 = 2114;
      v72 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v50, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_47:
  return v9;
}

- (id)stubDictionary
{
  v9.receiver = self;
  v9.super_class = MCNetworkUsageRulesPayload;
  stubDictionary = [(MCPayload *)&v9 stubDictionary];
  applicationRules = [(MCNetworkUsageRulesPayload *)self applicationRules];

  if (applicationRules)
  {
    applicationRules2 = [(MCNetworkUsageRulesPayload *)self applicationRules];
    [stubDictionary setObject:applicationRules2 forKeyedSubscript:@"ApplicationRules"];
  }

  sIMRules = [(MCNetworkUsageRulesPayload *)self SIMRules];

  if (sIMRules)
  {
    sIMRules2 = [(MCNetworkUsageRulesPayload *)self SIMRules];
    [stubDictionary setObject:sIMRules2 forKeyedSubscript:@"SIMRules"];
  }

  return stubDictionary;
}

- (id)verboseDescription
{
  v10.receiver = self;
  v10.super_class = MCNetworkUsageRulesPayload;
  verboseDescription = [(MCPayload *)&v10 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  applicationRules = [(MCNetworkUsageRulesPayload *)self applicationRules];

  if (applicationRules)
  {
    applicationRules2 = [(MCNetworkUsageRulesPayload *)self applicationRules];
    [v4 appendFormat:@"Application Rules : %@\n", applicationRules2];
  }

  sIMRules = [(MCNetworkUsageRulesPayload *)self SIMRules];

  if (sIMRules)
  {
    sIMRules2 = [(MCNetworkUsageRulesPayload *)self SIMRules];
    [v4 appendFormat:@"SIM Rules         : %@\n", sIMRules2];
  }

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  applicationRules = [(MCNetworkUsageRulesPayload *)self applicationRules];
  v6 = [applicationRules count];

  v69 = v3;
  if (v6)
  {
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    selfCopy = self;
    obj = [(MCNetworkUsageRulesPayload *)self applicationRules];
    v67 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (v67)
    {
      v65 = *v89;
      do
      {
        v7 = 0;
        do
        {
          if (*v89 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v70 = v7;
          v8 = *(*(&v88 + 1) + 8 * v7);
          v72 = [v8 objectForKeyedSubscript:@"AppIdentifierMatches"];
          v74 = v8;
          if ([v72 count])
          {
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v9 = v72;
            v10 = [v9 countByEnumeratingWithState:&v84 objects:v94 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v85;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v85 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v84 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 length])
                  {
                    v15 = [MCKeyValue alloc];
                    v16 = MCLocalizedString(@"NETWORK_USAGE_APP_RULE");
                    v17 = [(MCKeyValue *)v15 initWithLocalizedString:v14 localizedKey:v16];

                    [v4 addObject:v17];
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v84 objects:v94 count:16];
              }

              while (v11);
            }

            v3 = v69;
            v8 = v74;
          }

          v18 = [v8 objectForKeyedSubscript:@"AllowCellularData"];
          if (v18)
          {
            v19 = v18;
            v20 = [v8 objectForKeyedSubscript:@"AllowCellularData"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v8 = v74;
            if (isKindOfClass)
            {
              v22 = [MCKeyValue alloc];
              v23 = [v74 objectForKeyedSubscript:@"AllowCellularData"];
              v24 = MCLocalizedStringForBool([v23 BOOLValue]);
              v25 = MCLocalizedString(@"NETWORK_USAGE_ALLOW_CELLULAR");
              v26 = [(MCKeyValue *)v22 initWithLocalizedString:v24 localizedKey:v25];

              v8 = v74;
              [v4 addObject:v26];
            }
          }

          v27 = [v8 objectForKeyedSubscript:@"AllowRoamingCellularData"];
          if (v27)
          {
            v28 = v27;
            v29 = [v8 objectForKeyedSubscript:@"AllowRoamingCellularData"];
            objc_opt_class();
            v30 = objc_opt_isKindOfClass();

            if (v30)
            {
              v31 = [MCKeyValue alloc];
              v32 = [v74 objectForKeyedSubscript:@"AllowRoamingCellularData"];
              v33 = MCLocalizedStringForBool([v32 BOOLValue]);
              v34 = MCLocalizedString(@"NETWORK_USAGE_ALLOW_ROAMING");
              v35 = [(MCKeyValue *)v31 initWithLocalizedString:v33 localizedKey:v34];

              [v4 addObject:v35];
            }
          }

          if ([v4 count])
          {
            v36 = [MCKeyValueSection sectionWithKeyValues:v4];
            [v3 addObject:v36];

            v37 = objc_opt_new();
            v4 = v37;
          }

          v7 = v70 + 1;
        }

        while (v70 + 1 != v67);
        v67 = [obj countByEnumeratingWithState:&v88 objects:v95 count:16];
      }

      while (v67);
    }

    self = selfCopy;
  }

  sIMRules = [(MCNetworkUsageRulesPayload *)self SIMRules];
  v39 = [sIMRules count];

  if (v39)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    sIMRules2 = [(MCNetworkUsageRulesPayload *)self SIMRules];
    v71 = [sIMRules2 countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (!v71)
    {
      goto LABEL_55;
    }

    v68 = *v81;
    while (1)
    {
      v40 = 0;
      do
      {
        if (*v81 != v68)
        {
          objc_enumerationMutation(sIMRules2);
        }

        v73 = *(*(&v80 + 1) + 8 * v40);
        v75 = v40;
        v41 = [v73 objectForKeyedSubscript:@"ICCIDs"];
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v42 = [v41 countByEnumeratingWithState:&v76 objects:v92 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v77;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v77 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v76 + 1) + 8 * j);
              v47 = [MCKeyValue alloc];
              v48 = MCLocalizedString(@"NETWORK_USAGE_ICCID");
              v49 = [(MCKeyValue *)v47 initWithLocalizedString:v46 localizedKey:v48];

              [v4 addObject:v49];
            }

            v43 = [v41 countByEnumeratingWithState:&v76 objects:v92 count:16];
          }

          while (v43);
        }

        v50 = [v73 objectForKeyedSubscript:@"WiFiAssistPolicy"];
        v51 = v50;
        if (v50)
        {
          intValue = [v50 intValue];
          if (intValue == 3)
          {
            v53 = @"NETWORK_USAGE_UNLIMITED_CELLULAR_DATA";
LABEL_48:
            v54 = MCLocalizedString(v53);
          }

          else
          {
            if (intValue == 2)
            {
              v53 = @"NETWORK_USAGE_DEFAULT_CELLULAR_DATA";
              goto LABEL_48;
            }

            v54 = MCFormattedStringForNumber(v51);
          }

          v55 = v54;
          v56 = [MCKeyValue alloc];
          mCAppendGreenteaSuffix = [@"NETWORK_USAGE_WIFI_ASSIST_POLICY" MCAppendGreenteaSuffix];
          v58 = MCLocalizedString(mCAppendGreenteaSuffix);
          v59 = [(MCKeyValue *)v56 initWithLocalizedString:v55 localizedKey:v58];

          [v4 addObject:v59];
        }

        if ([v4 count])
        {
          v60 = [MCKeyValueSection sectionWithKeyValues:v4];
          [v69 addObject:v60];

          v61 = objc_opt_new();
          v4 = v61;
        }

        v40 = v75 + 1;
      }

      while (v75 + 1 != v71);
      v71 = [sIMRules2 countByEnumeratingWithState:&v80 objects:v93 count:16];
      if (!v71)
      {
LABEL_55:

        v3 = v69;
        break;
      }
    }
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

- (id)installationWarnings
{
  v2 = MCLocalizedString(@"INSTALL_WARNING_NETWORK_USAGE_TITLE");
  v3 = MCLocalizedStringByDevice(@"INSTALL_WARNING_NETWORK_USAGE");
  v4 = [MCProfileWarning warningWithLocalizedTitle:v2 localizedBody:v3 isLongForm:1];

  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];

  return v5;
}

@end