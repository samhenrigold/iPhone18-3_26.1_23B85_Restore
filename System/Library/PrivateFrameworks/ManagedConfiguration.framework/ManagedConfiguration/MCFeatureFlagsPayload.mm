@interface MCFeatureFlagsPayload
+ (id)typeStrings;
- (BOOL)isAllowedToWriteFeatureFlags;
- (MCFeatureFlagsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)invalidConfigurationErrorWithUnderlyingError:(id)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)title;
- (id)verboseDescription;
@end

@implementation MCFeatureFlagsPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.system.featureflags";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)isAllowedToWriteFeatureFlags
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

- (id)invalidConfigurationErrorWithUnderlyingError:(id)error
{
  v4 = MEMORY[0x1E696ABC0];
  errorCopy = error;
  identifier = [(MCPayload *)self identifier];
  v14 = MCErrorArray(@"ERROR_FEATURE_FLAGS_INVALID_CONFIGURATION_P_ID", v7, v8, v9, v10, v11, v12, v13, identifier);
  v15 = [v4 MCErrorWithDomain:@"MCFeatureFlagsErrorDomain" code:58001 descriptionArray:v14 underlyingError:errorCopy errorType:@"MCFatalError"];

  return v15;
}

- (MCFeatureFlagsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v178 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v159.receiver = self;
  v159.super_class = MCFeatureFlagsPayload;
  v10 = [(MCPayload *)&v159 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_73;
  }

  errorCopy = error;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v158 = 0;
  v12 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Features" isRequired:0 outError:&v158];
  v13 = v158;
  if (v13)
  {
    v14 = v13;

    goto LABEL_64;
  }

  v113 = dictionary;
  array = [MEMORY[0x1E695DF70] array];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v16 = v12;
  obj = v16;
  v118 = [v16 countByEnumeratingWithState:&v154 objects:v177 count:16];
  if (!v118)
  {

    goto LABEL_32;
  }

  v110 = profileCopy;
  v14 = 0;
  v120 = *v155;
  v115 = array;
LABEL_6:
  v17 = 0;
LABEL_7:
  if (*v155 != v120)
  {
    objc_enumerationMutation(obj);
  }

  v18 = *(*(&v154 + 1) + 8 * v17);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v125 = v17;
    v19 = objc_opt_class();
    v153 = v14;
    v20 = [v18 MCValidateAndRemoveObjectOfClass:v19 withKey:@"Domain" isRequired:1 outError:&v153];
    v21 = v153;

    if (v21)
    {
      v123 = v20;
      v39 = obj;
      v14 = v21;
      profileCopy = v110;

      goto LABEL_62;
    }

    v22 = objc_opt_class();
    v152 = 0;
    v23 = [v18 MCValidateAndRemoveObjectOfClass:v22 withKey:@"Features" isRequired:1 outError:&v152];
    v24 = v152;
    if (v24)
    {
      v14 = v24;
      v124 = v20;
      v39 = obj;
      profileCopy = v110;
      goto LABEL_61;
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v127 = v23;
    v26 = [v127 countByEnumeratingWithState:&v148 objects:v176 count:16];
    if (!v26)
    {
      v14 = 0;
      goto LABEL_28;
    }

    v27 = v26;
    v28 = *v149;
    v122 = v20;
LABEL_14:
    v29 = 0;
    while (1)
    {
      if (*v149 != v28)
      {
        objc_enumerationMutation(v127);
      }

      v30 = *(*(&v148 + 1) + 8 * v29);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v31 = objc_opt_class();
      v147 = 0;
      v32 = [v30 MCValidateAndRemoveObjectOfClass:v31 withKey:@"FeatureName" isRequired:1 outError:&v147];
      v33 = v147;
      if (v33)
      {
        v14 = v33;

        goto LABEL_26;
      }

      v34 = objc_opt_class();
      v146 = 0;
      v35 = [v30 MCValidateAndRemoveObjectOfClass:v34 withKey:@"Enabled" isRequired:1 outError:&v146];
      v36 = v146;
      if (v36)
      {
        v14 = v36;

        array = v115;
        v20 = v122;
        goto LABEL_28;
      }

      v174[0] = @"FeatureName";
      v174[1] = @"Enabled";
      v175[0] = v32;
      v175[1] = v35;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v175 forKeys:v174 count:2];
      [array2 addObject:v37];

      ++v10->_featureFlagCount;
      if (v27 == ++v29)
      {
        v27 = [v127 countByEnumeratingWithState:&v148 objects:v176 count:16];
        v14 = 0;
        array = v115;
        v20 = v122;
        if (v27)
        {
          goto LABEL_14;
        }

LABEL_28:

        v172[0] = @"Domain";
        v172[1] = @"Features";
        v173[0] = v20;
        v173[1] = array2;
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v173 forKeys:v172 count:2];
        [array addObject:v38];

        v17 = v125 + 1;
        if (v125 + 1 == v118)
        {
          v118 = [obj countByEnumeratingWithState:&v154 objects:v177 count:16];
          if (!v118)
          {
            goto LABEL_37;
          }

          goto LABEL_6;
        }

        goto LABEL_7;
      }
    }

    v14 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];
LABEL_26:
    array = v115;
    v20 = v122;
    goto LABEL_28;
  }

  v41 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];

  v14 = v41;
LABEL_37:

  profileCopy = v110;
  if (v14)
  {
    goto LABEL_63;
  }

LABEL_32:
  if ([array count])
  {
    [v113 setObject:array forKey:@"Features"];
  }

  v145 = 0;
  v39 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Disclosures" isRequired:0 outError:&v145];
  v40 = v145;
  if (v40)
  {
    v14 = v40;
    goto LABEL_62;
  }

  v116 = array;
  v111 = profileCopy;
  v112 = dictionaryCopy;
  array3 = [MEMORY[0x1E695DF70] array];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v128 = v39;
  v43 = [v128 countByEnumeratingWithState:&v141 objects:v171 count:16];
  v124 = array3;
  if (!v43)
  {
    v55 = 0;
    goto LABEL_58;
  }

  v44 = v43;
  v45 = *v142;
  while (2)
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v142 != v45)
      {
        objc_enumerationMutation(v128);
      }

      v47 = *(*(&v141 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v55 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];
LABEL_57:
        array3 = v124;
        goto LABEL_58;
      }

      v48 = objc_opt_class();
      v140 = 0;
      v49 = [v47 MCValidateAndRemoveObjectOfClass:v48 withKey:@"DisclosureName" isRequired:1 outError:&v140];
      v50 = v140;
      if (v50)
      {
        v55 = v50;
LABEL_56:

        goto LABEL_57;
      }

      v51 = objc_opt_class();
      v139 = 0;
      v52 = [v47 MCValidateAndRemoveObjectOfClass:v51 withKey:@"Disclosed" isRequired:1 outError:&v139];
      v53 = v139;
      if (v53)
      {
        v55 = v53;

        goto LABEL_56;
      }

      v169[0] = @"DisclosureName";
      v169[1] = @"Disclosed";
      v170[0] = v49;
      v170[1] = v52;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v170 forKeys:v169 count:2];
      [v124 addObject:v54];

      ++v10->_disclosureCount;
    }

    v44 = [v128 countByEnumeratingWithState:&v141 objects:v171 count:16];
    v55 = 0;
    array3 = v124;
    if (v44)
    {
      continue;
    }

    break;
  }

LABEL_58:
  v39 = v128;

  if ([array3 count])
  {
    [v113 setObject:array3 forKey:@"Disclosures"];
  }

  v138 = v55;
  dictionaryCopy = v112;
  v23 = [v112 MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"Subscriptions" isRequired:0 outError:&v138];
  v14 = v138;

  profileCopy = v111;
  array = v116;
  if (v14)
  {
    goto LABEL_61;
  }

  array4 = [MEMORY[0x1E695DF70] array];
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v23 = v23;
  v119 = [v23 countByEnumeratingWithState:&v134 objects:v168 count:16];
  v126 = array4;
  if (!v119)
  {
    v14 = 0;
    goto LABEL_97;
  }

  v121 = *v135;
  while (2)
  {
    v69 = 0;
    while (2)
    {
      if (*v135 != v121)
      {
        objc_enumerationMutation(v23);
      }

      v70 = *(*(&v134 + 1) + 8 * v69);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v14 = [(MCFeatureFlagsPayload *)v10 invalidConfigurationErrorWithUnderlyingError:0];
LABEL_96:
        array4 = v126;
        v39 = v128;
        goto LABEL_97;
      }

      v71 = objc_opt_class();
      v133 = 0;
      v72 = [v70 MCValidateAndRemoveObjectOfClass:v71 withKey:@"SubscriptionClass" isRequired:1 outError:&v133];
      v73 = v133;
      if (v73)
      {
        v14 = v73;
LABEL_95:

        goto LABEL_96;
      }

      v74 = objc_opt_class();
      v132 = 0;
      v75 = [v70 MCValidateAndRemoveObjectOfClass:v74 withKey:@"SubscriptionContents" isRequired:1 outError:&v132];
      v76 = v132;
      if (v76)
      {
        v14 = v76;
LABEL_94:

        goto LABEL_95;
      }

      v77 = objc_opt_class();
      v131 = 0;
      v78 = [v75 MCValidateAndRemoveObjectOfClass:v77 withKey:@"TargetRelease" isRequired:1 outError:&v131];
      v79 = v131;
      if (v79)
      {
        v14 = v79;
LABEL_93:

        goto LABEL_94;
      }

      v80 = objc_opt_class();
      v130 = 0;
      v81 = [v75 MCValidateAndRemoveObjectOfClass:v80 withKey:@"MinimumPhase" isRequired:1 outError:&v130];
      v82 = v130;
      if (v82)
      {
        v14 = v82;

        goto LABEL_93;
      }

      v167[0] = v72;
      v166[0] = @"SubscriptionClass";
      v166[1] = @"SubscriptionContents";
      v164[0] = @"TargetRelease";
      v164[1] = @"MinimumPhase";
      v165[0] = v78;
      v165[1] = v81;
      v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v165 forKeys:v164 count:2];
      v167[1] = v83;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v167 forKeys:v166 count:2];
      [v126 addObject:v84];

      ++v10->_subscriptionCount;
      if (v119 != ++v69)
      {
        continue;
      }

      break;
    }

    v14 = 0;
    array4 = v126;
    v39 = v128;
    v119 = [v23 countByEnumeratingWithState:&v134 objects:v168 count:16];
    if (v119)
    {
      continue;
    }

    break;
  }

LABEL_97:

  if ([array4 count])
  {
    [v113 setObject:array4 forKey:@"Subscriptions"];
  }

  profile = [(MCPayload *)v10 profile];
  isStub = [profile isStub];

  profileCopy = v111;
  dictionaryCopy = v112;
  if (isStub)
  {
LABEL_100:
    array = v116;
    if (!v14)
    {
      v87 = [v113 copy];
      mCCopyAsPrimaryError = 0;
      featureFlagsConfiguration = v10->_featureFlagsConfiguration;
      v10->_featureFlagsConfiguration = v87;
      goto LABEL_108;
    }
  }

  else
  {
    v129 = 0;
    v90 = [objc_opt_class() isConfigurationValid:v113 error:&v129];
    featureFlagsConfiguration = v129;
    if (v90)
    {
      if ([(MCFeatureFlagsPayload *)v10 isAllowedToWriteFeatureFlags])
      {

        goto LABEL_100;
      }

      v101 = MEMORY[0x1E696ABC0];
      friendlyName = [v111 friendlyName];
      v100 = MCErrorArray(@"ERROR_PROFILE_DEFAULTS_BAD_SIGNATURE_P_ID", v102, v103, v104, v105, v106, v107, v108, friendlyName);
      v109 = [v101 MCErrorWithDomain:@"MCFeatureFlagsErrorDomain" code:58000 descriptionArray:v100 errorType:@"MCFatalError"];
      mCCopyAsPrimaryError = [v109 MCCopyAsPrimaryError];

      v14 = v109;
    }

    else
    {
      v91 = MEMORY[0x1E696ABC0];
      friendlyName = [(MCPayload *)v10 identifier];
      v100 = MCErrorArray(@"ERROR_FEATURE_FLAGS_INVALID_CONFIGURATION_P_ID", v93, v94, v95, v96, v97, v98, v99, friendlyName);
      mCCopyAsPrimaryError = [v91 MCErrorWithDomain:@"MCFeatureFlagsErrorDomain" code:58001 descriptionArray:v100 underlyingError:featureFlagsConfiguration errorType:@"MCFatalError"];
    }

    array = v116;
    v39 = v128;
LABEL_108:

    v14 = mCCopyAsPrimaryError;
    array4 = v126;
  }

LABEL_61:
LABEL_62:

LABEL_63:
  if (v14)
  {
LABEL_64:
    v56 = [(MCPayload *)v10 malformedPayloadErrorWithError:v14];
    v57 = v56;
    if (errorCopy)
    {
      v58 = v56;
      *errorCopy = v57;
    }

    v59 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v60 = v59;
      v61 = objc_opt_class();
      v62 = v61;
      mCVerboseDescription = [v57 MCVerboseDescription];
      *buf = 138543618;
      v161 = v61;
      v162 = 2114;
      v163 = mCVerboseDescription;
      _os_log_impl(&dword_1A795B000, v60, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  if ([dictionaryCopy count])
  {
    v64 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v65 = v64;
      friendlyName2 = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v161 = friendlyName2;
      v162 = 2114;
      v163 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v65, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_73:
  return v10;
}

- (id)stubDictionary
{
  v6.receiver = self;
  v6.super_class = MCFeatureFlagsPayload;
  stubDictionary = [(MCPayload *)&v6 stubDictionary];
  featureFlagsConfiguration = [(MCFeatureFlagsPayload *)self featureFlagsConfiguration];
  [stubDictionary addEntriesFromDictionary:featureFlagsConfiguration];

  return stubDictionary;
}

- (id)verboseDescription
{
  v8.receiver = self;
  v8.super_class = MCFeatureFlagsPayload;
  verboseDescription = [(MCPayload *)&v8 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  featureFlagsConfiguration = [(MCFeatureFlagsPayload *)self featureFlagsConfiguration];
  v6 = featureFlagsConfiguration;
  if (featureFlagsConfiguration)
  {
    [v4 appendFormat:@"\nconfiguration: %@", featureFlagsConfiguration];
  }

  return v4;
}

- (id)title
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MCLocalizedString(@"FEATURE_FLAGS_DESCRIPTION_PLURAL_FORMAT");
  v4 = [v2 stringWithFormat:v3, 0];

  return v4;
}

- (id)payloadDescriptionKeyValueSections
{
  v26[1] = *MEMORY[0x1E69E9840];
  featureFlagsConfiguration = [(MCFeatureFlagsPayload *)self featureFlagsConfiguration];
  v3 = [featureFlagsConfiguration objectForKeyedSubscript:@"Disclosures"];
  v4 = [featureFlagsConfiguration objectForKeyedSubscript:@"Features"];
  v5 = [featureFlagsConfiguration objectForKeyedSubscript:@"Subscriptions"];
  v6 = objc_opt_new();
  v25 = v3;
  if (v4)
  {
    v7 = [MCKeyValue alloc];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    v9 = MCFormattedStringForNumber(v8);
    v10 = MCLocalizedString(@"FEATURE_FLAG_DOMAINS");
    v11 = [(MCKeyValue *)v7 initWithLocalizedString:v9 localizedKey:v10];

    v3 = v25;
    [v6 addObject:v11];
  }

  if (v3)
  {
    v12 = [MCKeyValue alloc];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v14 = MCFormattedStringForNumber(v13);
    v15 = MCLocalizedString(@"FEATURE_FLAG_DISCLOSURES");
    v16 = [(MCKeyValue *)v12 initWithLocalizedString:v14 localizedKey:v15];

    v3 = v25;
    [v6 addObject:v16];
  }

  if (v5)
  {
    v17 = [MCKeyValue alloc];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v19 = MCFormattedStringForNumber(v18);
    v20 = MCLocalizedString(@"FEATURE_FLAG_SUBSCRIPTIONS");
    v21 = [(MCKeyValue *)v17 initWithLocalizedString:v19 localizedKey:v20];

    v3 = v25;
    [v6 addObject:v21];
  }

  if ([v6 count])
  {
    v22 = [MCKeyValueSection sectionWithKeyValues:v6];
    v26[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end