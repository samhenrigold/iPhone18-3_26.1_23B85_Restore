@interface MCRestrictionsPayload
+ (id)_ephemeralMultiUserOnlyKeysFilter;
+ (id)_platformSpecificKeyFilter;
+ (id)_supervisedAllowedKeys;
+ (id)_unsupervisedAllowedKeys;
+ (id)allAllowedPlatformKeys;
+ (id)userEnrollmentAllowedKeysFilter;
- (BOOL)_verifyIntersectionMaxCount:(unint64_t)count forFeature:(id)feature error:(id *)error;
- (BOOL)_verifyMaxCount:(unint64_t)count forItems:(id)items forFeature:(id)feature error:(id *)error;
- (BOOL)_verifyUnionMaxCount:(unint64_t)count forFeature:(id)feature error:(id *)error;
- (MCRestrictionsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)_defaultValueRestrictions;
- (id)_enforcedFeatureStrings;
- (id)_intersectionStrings;
- (id)_invalidFieldErrorWithFieldName:(id)name;
- (id)_restrictedFeatureStrings;
- (id)_unionStrings;
- (id)filterForUserEnrollmentOutError:(id *)error;
- (id)installationWarnings;
- (id)localizedRestrictionStrings;
- (id)stubDictionary;
- (void)_insertRestrictedBoolForKey:(id)key value:(id)value preferenc:(BOOL)preferenc;
@end

@implementation MCRestrictionsPayload

+ (id)_unsupervisedAllowedKeys
{
  if (_unsupervisedAllowedKeys_onceToken != -1)
  {
    +[MCRestrictionsPayload _unsupervisedAllowedKeys];
  }

  v3 = _unsupervisedAllowedKeys_dict;

  return v3;
}

void __49__MCRestrictionsPayload__unsupervisedAllowedKeys__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v1 = MCGetBaseResourcePath();
  v2 = [v1 stringByAppendingPathComponent:@"unsupervisedRestrictionPayloadKeys.plist"];
  v3 = [v0 dictionaryWithContentsOfFile:v2];
  v4 = _unsupervisedAllowedKeys_dict;
  _unsupervisedAllowedKeys_dict = v3;

  v5 = +[MCRestrictionManager allowedGrandfatheredRestrictionPayloadKeysDictionary];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E69AD420] sharedConfiguration];
    v7 = [v6 isSupervised];

    if ((v7 & 1) == 0)
    {
      v8 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A795B000, v8, OS_LOG_TYPE_DEFAULT, "Applying deprecated restriction keys to allowed unsupervised keys...", v11, 2u);
      }

      v9 = [MCRestrictionManager addRestrictionPayloadKeysDictionary:v5 toRestrictionPayloadKeysDictionary:_unsupervisedAllowedKeys_dict];
      v10 = _unsupervisedAllowedKeys_dict;
      _unsupervisedAllowedKeys_dict = v9;
    }
  }
}

+ (id)_supervisedAllowedKeys
{
  if (_supervisedAllowedKeys_onceToken != -1)
  {
    +[MCRestrictionsPayload _supervisedAllowedKeys];
  }

  v3 = _supervisedAllowedKeys_dict;

  return v3;
}

void __47__MCRestrictionsPayload__supervisedAllowedKeys__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"supervisedRestrictionPayloadKeys.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = _supervisedAllowedKeys_dict;
  _supervisedAllowedKeys_dict = v2;
}

+ (id)allAllowedPlatformKeys
{
  if (allAllowedPlatformKeys_onceToken != -1)
  {
    +[MCRestrictionsPayload allAllowedPlatformKeys];
  }

  v3 = allAllowedPlatformKeys_dict;

  return v3;
}

void __47__MCRestrictionsPayload_allAllowedPlatformKeys__block_invoke()
{
  v0 = +[MCRestrictionsPayload _supervisedAllowedKeys];
  v1 = [v0 mutableCopy];

  v3 = +[MCRestrictionsPayload _platformSpecificKeyFilter];
  [v1 MCFilterRestrictionPayloadKeys:v3];
  v2 = allAllowedPlatformKeys_dict;
  allAllowedPlatformKeys_dict = v1;
}

+ (id)userEnrollmentAllowedKeysFilter
{
  if (userEnrollmentAllowedKeysFilter_onceToken != -1)
  {
    +[MCRestrictionsPayload userEnrollmentAllowedKeysFilter];
  }

  v3 = userEnrollmentAllowedKeysFilter_dict;

  return v3;
}

void __56__MCRestrictionsPayload_userEnrollmentAllowedKeysFilter__block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v4 = MCGetBaseResourcePath();
  v1 = [v4 stringByAppendingPathComponent:@"UserEnrollmentRestrictionPayloadKeysFilter.plist"];
  v2 = [v0 dictionaryWithContentsOfFile:v1];
  v3 = userEnrollmentAllowedKeysFilter_dict;
  userEnrollmentAllowedKeysFilter_dict = v2;
}

+ (id)_ephemeralMultiUserOnlyKeysFilter
{
  if (_ephemeralMultiUserOnlyKeysFilter_onceToken != -1)
  {
    +[MCRestrictionsPayload _ephemeralMultiUserOnlyKeysFilter];
  }

  v3 = _ephemeralMultiUserOnlyKeysFilter_dict;

  return v3;
}

void __58__MCRestrictionsPayload__ephemeralMultiUserOnlyKeysFilter__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"restrictedBool";
  v3[0] = &unk_1F1AA5980;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = _ephemeralMultiUserOnlyKeysFilter_dict;
  _ephemeralMultiUserOnlyKeysFilter_dict = v0;
}

+ (id)_platformSpecificKeyFilter
{
  IsAppleTV = MCGestaltIsAppleTV(self, a2);
  if (IsAppleTV)
  {
    if (_AppleTVAllowedKeysFilter_onceToken != -1)
    {
      +[MCRestrictionsPayload _platformSpecificKeyFilter];
    }

    v4 = &_AppleTVAllowedKeysFilter_dict;
  }

  else
  {
    IsWatch = MCGestaltIsWatch(IsAppleTV, v3);
    if (IsWatch)
    {
      if (_WatchAllowedKeysFilter_onceToken != -1)
      {
        +[MCRestrictionsPayload _platformSpecificKeyFilter];
      }

      v4 = &_WatchAllowedKeysFilter_dict;
    }

    else if (MCGestaltIsVisionDevice(IsWatch, v6))
    {
      if (_VisionProAllowedKeysFilter_onceToken != -1)
      {
        +[MCRestrictionsPayload _platformSpecificKeyFilter];
      }

      v4 = &_VisionProAllowedKeysFilter_dict;
    }

    else if ([MEMORY[0x1E6999800] isSharediPad])
    {
      if (_ephemeralMultiUserAllowedKeysFilter_onceToken != -1)
      {
        +[MCRestrictionsPayload _platformSpecificKeyFilter];
      }

      v4 = &_ephemeralMultiUserAllowedKeysFilter_dict;
    }

    else
    {
      if (_singleUserAllowedKeysFilter_onceToken != -1)
      {
        +[MCRestrictionsPayload _platformSpecificKeyFilter];
      }

      v4 = &_singleUserAllowedKeysFilter_dict;
    }
  }

  v7 = *v4;

  return v7;
}

- (id)_invalidFieldErrorWithFieldName:(id)name
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_P_FIELD", a2, name, v3, v4, v5, v6, v7, name);
  v10 = [v8 MCErrorWithDomain:@"MCProfileErrorDomain" code:1003 descriptionArray:v9 errorType:@"MCFatalError"];

  return v10;
}

- (MCRestrictionsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v247 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v228.receiver = self;
  v228.super_class = MCRestrictionsPayload;
  v192 = dictionaryCopy;
  v10 = [(MCPayload *)&v228 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    v15 = 0;
    goto LABEL_141;
  }

  p_isa = &v10->super.super.isa;
  errorCopy = error;
  v169 = profileCopy;
  v12 = +[MCRestrictionManager sharedManager];
  defaultRestrictions = [v12 defaultRestrictions];

  v190 = [defaultRestrictions objectForKeyedSubscript:@"restrictedBool"];
  v165 = defaultRestrictions;
  v188 = [defaultRestrictions objectForKeyedSubscript:@"restrictedValue"];
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([mEMORY[0x1E69AD420] isSupervised])
  {

LABEL_6:
    v18 = +[MCRestrictionsPayload _supervisedAllowedKeys];
    goto LABEL_7;
  }

  profile = [p_isa profile];
  isStub = [profile isStub];

  if (isStub)
  {
    goto LABEL_6;
  }

  buf[0] = 0;
  v74 = objc_opt_class();
  signerCertificates = [v169 signerCertificates];
  [v74 evaluateTrustOfCertificateChain:signerCertificates signatureVersion:0 outIsAllowedToInstallUnsupportedPayloads:0 outIsAllowedToWriteDefaults:0 outIsAllowedToInstallSupervisedRestrictionsOnUnsupervisedDevices:buf];

  if (buf[0])
  {
    goto LABEL_6;
  }

  v18 = +[MCRestrictionsPayload _unsupervisedAllowedKeys];
LABEL_7:
  v19 = v18;
  v20 = [v18 mutableCopy];

  v163 = +[MCRestrictionsPayload _platformSpecificKeyFilter];
  [v20 MCFilterRestrictionPayloadKeys:?];
  mEMORY[0x1E69AD420]2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  if ([mEMORY[0x1E69AD420]2 userMode] == 1)
  {
LABEL_10:

    goto LABEL_11;
  }

  isSharediPad = [MEMORY[0x1E6999800] isSharediPad];

  if ((isSharediPad & 1) == 0)
  {
    mEMORY[0x1E69AD420]2 = +[MCRestrictionsPayload _ephemeralMultiUserOnlyKeysFilter];
    [v20 MCFilterOutRestrictionPayloadKeys:mEMORY[0x1E69AD420]2];
    goto LABEL_10;
  }

LABEL_11:
  v164 = v20;
  v23 = [v20 copy];
  v185 = [v23 objectForKeyedSubscript:@"restrictedBool"];
  v170 = [v23 objectForKeyedSubscript:@"restrictedValue"];
  v168 = [v23 objectForKeyedSubscript:@"intersection"];
  v162 = v23;
  v167 = [v23 objectForKeyedSubscript:@"union"];
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = p_isa[11];
  p_isa[11] = v24;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v189 = dictionary;
  [p_isa[11] setObject:dictionary forKeyedSubscript:@"restrictedBool"];
  v187 = dictionary2;
  [p_isa[11] setObject:dictionary2 forKeyedSubscript:@"restrictedValue"];
  v180 = dictionary3;
  [p_isa[11] setObject:dictionary3 forKeyedSubscript:@"intersection"];
  v191 = p_isa;
  v171 = dictionary4;
  [p_isa[11] setObject:dictionary4 forKeyedSubscript:@"union"];
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v30 = v185;
  v31 = [v30 countByEnumeratingWithState:&v224 objects:v246 count:16];
  v186 = v30;
  if (v31)
  {
    v32 = v31;
    v33 = *v225;
    while (2)
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v225 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v224 + 1) + 8 * i);
        v36 = [v192 objectForKey:v35];
        if (v36)
        {
          if (objc_opt_respondsToSelector())
          {
            v37 = [v190 objectForKey:v35];
            mCMutableDeepCopy = [v37 MCMutableDeepCopy];

            if (!mCMutableDeepCopy)
            {
              mCMutableDeepCopy = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [mCMutableDeepCopy setObject:v36 forKey:@"value"];
            [v189 setObject:mCMutableDeepCopy forKey:v35];
          }

          else
          {
            profile2 = [(MCPayload *)v191 profile];
            isStub2 = [profile2 isStub];

            if (!isStub2)
            {
              v41 = [(MCRestrictionsPayload *)v191 _invalidFieldErrorWithFieldName:v35];

              if (v41)
              {
                v15 = v191;
LABEL_71:
                v76 = errorCopy;
                v77 = v180;
                goto LABEL_135;
              }

              goto LABEL_27;
            }
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v224 objects:v246 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v42 = v170;
  v43 = [v42 countByEnumeratingWithState:&v220 objects:v245 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v221;
    while (2)
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v221 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v220 + 1) + 8 * j);
        v48 = [v192 objectForKey:v47];
        if (v48)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = [v188 objectForKey:v47];
            mCMutableDeepCopy2 = [v49 MCMutableDeepCopy];

            if (!mCMutableDeepCopy2)
            {
              mCMutableDeepCopy2 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [mCMutableDeepCopy2 setObject:v48 forKey:@"value"];
            [v187 setObject:mCMutableDeepCopy2 forKey:v47];
          }

          else
          {
            profile3 = [(MCPayload *)v191 profile];
            isStub3 = [profile3 isStub];

            if (!isStub3)
            {
              v15 = v191;
              v41 = [(MCRestrictionsPayload *)v191 _invalidFieldErrorWithFieldName:v47];

              if (v41)
              {
LABEL_96:
                v76 = errorCopy;
                v77 = v180;
                v30 = v186;
                goto LABEL_135;
              }

              goto LABEL_42;
            }
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v220 objects:v245 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }
  }

  v15 = v191;
LABEL_42:
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  obj = v168;
  v53 = [obj countByEnumeratingWithState:&v216 objects:v244 count:16];
  v30 = v186;
  if (!v53)
  {
    goto LABEL_67;
  }

  v54 = v53;
  v55 = *v217;
  v173 = *v217;
LABEL_44:
  v56 = 0;
  v176 = v54;
  while (1)
  {
    if (*v217 != v55)
    {
      objc_enumerationMutation(obj);
    }

    v57 = *(*(&v216 + 1) + 8 * v56);
    v58 = [v192 objectForKeyedSubscript:v57];
    if (v58)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v214 = 0u;
        v215 = 0u;
        v212 = 0u;
        v213 = 0u;
        v59 = v58;
        v60 = [v59 countByEnumeratingWithState:&v212 objects:v243 count:16];
        if (!v60)
        {
          goto LABEL_57;
        }

        v61 = v60;
        v62 = *v213;
LABEL_51:
        v63 = 0;
        while (1)
        {
          if (*v213 != v62)
          {
            objc_enumerationMutation(v59);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          if (v61 == ++v63)
          {
            v61 = [v59 countByEnumeratingWithState:&v212 objects:v243 count:16];
            if (!v61)
            {
LABEL_57:

              goto LABEL_61;
            }

            goto LABEL_51;
          }
        }

        v41 = [(MCRestrictionsPayload *)v15 _invalidFieldErrorWithFieldName:v57];

        if (v41)
        {

          goto LABEL_96;
        }

LABEL_61:
        v66 = [MCRestrictionUtilities intersectionFeatureForPayloadRestrictionKey:v57];
        v67 = [v180 objectForKeyedSubscript:v66];
        if (v67)
        {
          v68 = objc_alloc(MEMORY[0x1E695DFA8]);
          v69 = [v67 objectForKeyedSubscript:@"values"];
          v70 = [v68 initWithArray:v69];

          v71 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v59];
          [v70 intersectSet:v71];
          v241 = @"values";
          allObjects = [v70 allObjects];
          v242 = allObjects;
          v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
          [v180 setObject:v73 forKeyedSubscript:v66];

          v15 = v191;
        }

        else
        {
          v239 = @"values";
          v240 = v59;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
          [v180 setObject:v70 forKeyedSubscript:v66];
        }

        v55 = v173;

        v30 = v186;
        v54 = v176;
        goto LABEL_65;
      }

      profile4 = [(MCPayload *)v15 profile];
      isStub4 = [profile4 isStub];

      if (!isStub4)
      {
        break;
      }
    }

LABEL_65:

    if (++v56 == v54)
    {
      v54 = [obj countByEnumeratingWithState:&v216 objects:v244 count:16];
      if (!v54)
      {
LABEL_67:

        goto LABEL_72;
      }

      goto LABEL_44;
    }
  }

  v41 = [(MCRestrictionsPayload *)v15 _invalidFieldErrorWithFieldName:v57];

  if (v41)
  {
    goto LABEL_71;
  }

LABEL_72:
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  obja = v167;
  v78 = [obja countByEnumeratingWithState:&v208 objects:v238 count:16];
  if (!v78)
  {
    v41 = 0;
    goto LABEL_101;
  }

  v79 = v78;
  v80 = *v209;
  v177 = *v209;
  while (2)
  {
    v81 = 0;
    while (2)
    {
      if (*v209 != v80)
      {
        objc_enumerationMutation(obja);
      }

      v82 = *(*(&v208 + 1) + 8 * v81);
      v83 = [v192 objectForKeyedSubscript:v82];
      if (v83)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v84 = v83;
          v85 = [v84 countByEnumeratingWithState:&v204 objects:v237 count:16];
          if (v85)
          {
            v86 = v85;
            v87 = *v205;
LABEL_81:
            v88 = 0;
            while (1)
            {
              if (*v205 != v87)
              {
                objc_enumerationMutation(v84);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              if (v86 == ++v88)
              {
                v86 = [v84 countByEnumeratingWithState:&v204 objects:v237 count:16];
                if (v86)
                {
                  goto LABEL_81;
                }

                goto LABEL_87;
              }
            }

            v41 = [(MCRestrictionsPayload *)v191 _invalidFieldErrorWithFieldName:v82];

            if (!v41)
            {
              goto LABEL_91;
            }

            v30 = v186;
            goto LABEL_99;
          }

LABEL_87:

LABEL_91:
          v235 = @"values";
          v236 = v84;
          v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v236 forKeys:&v235 count:1];
          [v171 setObject:v91 forKeyedSubscript:v82];

          v30 = v186;
          v80 = v177;
        }

        else
        {
          profile5 = [(MCPayload *)v191 profile];
          isStub5 = [profile5 isStub];

          if ((isStub5 & 1) == 0)
          {
            v41 = [(MCRestrictionsPayload *)v191 _invalidFieldErrorWithFieldName:v82];
LABEL_99:

            goto LABEL_100;
          }
        }
      }

      if (++v81 != v79)
      {
        continue;
      }

      break;
    }

    v79 = [obja countByEnumeratingWithState:&v208 objects:v238 count:16];
    if (v79)
    {
      continue;
    }

    break;
  }

  v41 = 0;
LABEL_100:
  v15 = v191;
LABEL_101:
  v76 = errorCopy;
  v77 = v180;

  if ([v169 isStub])
  {
    goto LABEL_134;
  }

  [MCRestrictionManager unionValuesForFeature:"unionValuesForFeature:withRestrictionsDictionary:" withRestrictionsDictionary:?];
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v92 = v203 = 0u;
  v93 = [v92 countByEnumeratingWithState:&v200 objects:v234 count:16];
  if (v93)
  {
    v94 = v93;
    objb = *v201;
    v174 = v92;
    v178 = *MEMORY[0x1E6963570];
    while (2)
    {
      for (k = 0; k != v94; ++k)
      {
        if (*v201 != objb)
        {
          objc_enumerationMutation(v174);
        }

        v96 = *(*(&v200 + 1) + 8 * k);
        v97 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v96 allowPlaceholder:1 error:0];
        appTags = [v97 appTags];
        v99 = [appTags containsObject:@"hidden"];

        compatibilityObject = [v97 compatibilityObject];
        bundleType = [compatibilityObject bundleType];
        v102 = [bundleType isEqualToString:v178];

        applicationState = [v97 applicationState];
        LODWORD(compatibilityObject) = [applicationState isAlwaysAvailable];

        if (compatibilityObject && (v99 & 1) == 0 && !v102 || (MCUnrestrictableApps(v104), v105 = objc_claimAutoreleasedReturnValue(), v106 = [v105 containsObject:v96], v105, v106))
        {
          v134 = v96;

          v92 = v174;
          v135 = MEMORY[0x1E696ABC0];
          v107 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD_P_VALUE", v136, v137, v138, v139, v140, v141, v142, @"blacklistedAppBundleIDs");
          v131 = [v135 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v107 errorType:@"MCFatalError"];
          v15 = v191;
          goto LABEL_133;
        }
      }

      v92 = v174;
      v94 = [v174 countByEnumeratingWithState:&v200 objects:v234 count:16];
      v15 = v191;
      if (v94)
      {
        continue;
      }

      break;
    }
  }

  [MCRestrictionManager unionValuesForFeature:"unionValuesForFeature:withRestrictionsDictionary:" withRestrictionsDictionary:?];
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v107 = v199 = 0u;
  objc = [v107 countByEnumeratingWithState:&v196 objects:v233 count:16];
  if (objc)
  {
    v179 = *v197;
    v172 = *MEMORY[0x1E6963570];
    v175 = v92;
    while (2)
    {
      for (m = 0; m != objc; m = m + 1)
      {
        if (*v197 != v179)
        {
          objc_enumerationMutation(v107);
        }

        v109 = v107;
        v110 = *(*(&v196 + 1) + 8 * m);
        v111 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v110 allowPlaceholder:1 error:0];
        appTags2 = [v111 appTags];
        v113 = [appTags2 containsObject:@"hidden"];

        compatibilityObject2 = [v111 compatibilityObject];
        bundleType2 = [compatibilityObject2 bundleType];
        v116 = [bundleType2 isEqualToString:v172];

        applicationState2 = [v111 applicationState];
        LODWORD(compatibilityObject2) = [applicationState2 isAlwaysAvailable];

        if (compatibilityObject2 && (v113 & 1) == 0 && !v116 || (MCUnrestrictableApps(v118), v119 = objc_claimAutoreleasedReturnValue(), v120 = [v119 containsObject:v110], v119, v120))
        {
          v134 = v110;

          v107 = v109;
          v143 = MEMORY[0x1E696ABC0];
          v122 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD_P_VALUE", v144, v145, v146, v147, v148, v149, v150, @"blockedAppBundleIDs");
          v131 = [v143 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v122 errorType:@"MCFatalError"];
          v15 = v191;
          v92 = v175;
          goto LABEL_131;
        }

        v107 = v109;
      }

      v15 = v191;
      v92 = v175;
      objc = [v109 countByEnumeratingWithState:&v196 objects:v233 count:16];
      if (objc)
      {
        continue;
      }

      break;
    }
  }

  v121 = [MCRestrictionManager intersectedValuesForFeature:@"appLockBundleIDs" withRestrictionsDictionary:v15->_restrictions];
  v122 = v121;
  if (v121 && ![v121 count])
  {
    v160 = MEMORY[0x1E696ABC0];
    v161 = MCErrorArray(@"ERROR_PROFILE_FIELD_INVALID_VALUE_P_FIELD", v123, v124, v125, v126, v127, v128, v129, @"allowListedAppBundleIDs");
    v131 = [v160 MCErrorWithDomain:@"MCPayloadErrorDomain" code:2004 descriptionArray:v161 errorType:@"MCFatalError"];

    v134 = 0;
    v41 = v161;
LABEL_131:

    goto LABEL_132;
  }

  v195 = v41;
  v130 = [(MCRestrictionsPayload *)v15 _verifyIntersectionMaxCount:1 forFeature:@"allowedExternalIntelligenceWorkspaceIDs" error:&v195];
  v131 = v195;

  if (!v130)
  {
    v134 = 0;
LABEL_132:
    v41 = v122;
    goto LABEL_133;
  }

  v194 = v131;
  v132 = [(MCRestrictionsPayload *)v15 _verifyUnionMaxCount:4 forFeature:@"deniedICCIDsForRCS" error:&v194];
  v133 = v194;

  if (v132)
  {
    v193 = v133;
    [(MCRestrictionsPayload *)v15 _verifyUnionMaxCount:4 forFeature:@"deniedICCIDsForiMessageFaceTime" error:&v193];
    v131 = v193;
    v134 = 0;
    v41 = v133;
    goto LABEL_131;
  }

  v134 = 0;
  v41 = v122;
  v131 = v133;
LABEL_133:

  v41 = v131;
  v76 = errorCopy;
  v77 = v180;
LABEL_134:
  if (v41)
  {
LABEL_135:
    v151 = [(MCPayload *)v15 malformedPayloadErrorWithError:v41];
    v152 = v151;
    if (v76)
    {
      v153 = v151;
      *v76 = v152;
    }

    v154 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      v155 = v154;
      v156 = objc_opt_class();
      v157 = v156;
      mCVerboseDescription = [v152 MCVerboseDescription];
      *buf = 138543618;
      v230 = v156;
      v77 = v180;
      v231 = 2114;
      v232 = mCVerboseDescription;
      v30 = v186;
      _os_log_impl(&dword_1A795B000, v155, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  profileCopy = v169;
LABEL_141:

  return v15;
}

- (id)stubDictionary
{
  v62 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = MCRestrictionsPayload;
  stubDictionary = [(MCPayload *)&v57 stubDictionary];
  selfCopy = self;
  [(NSMutableDictionary *)self->_restrictions objectForKey:@"restrictedBool"];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v4 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        v9 = [obj objectForKey:v8];
        v10 = [v9 objectForKey:@"value"];
        bOOLValue = [v10 BOOLValue];

        v12 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
        [stubDictionary setObject:v12 forKey:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v5);
  }

  v13 = [(NSMutableDictionary *)selfCopy->_restrictions objectForKey:@"restrictedValue"];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v50;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v50 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v49 + 1) + 8 * j);
        v19 = [v13 objectForKey:v18];
        v20 = [v19 objectForKey:@"value"];

        [stubDictionary setObject:v20 forKey:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v15);
  }

  v21 = [(NSMutableDictionary *)selfCopy->_restrictions objectForKeyedSubscript:@"intersection", v13];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v46;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v46 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v45 + 1) + 8 * k);
        v27 = [v21 objectForKeyedSubscript:v26];
        v28 = [v27 objectForKeyedSubscript:@"values"];

        [stubDictionary setObject:v28 forKeyedSubscript:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v23);
  }

  v29 = [(NSMutableDictionary *)selfCopy->_restrictions objectForKeyedSubscript:@"union"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v42;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v41 + 1) + 8 * m);
        v35 = [v29 objectForKeyedSubscript:v34];
        v36 = [v35 objectForKeyedSubscript:@"values"];

        [stubDictionary setObject:v36 forKeyedSubscript:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v31);
  }

  return stubDictionary;
}

- (BOOL)_verifyIntersectionMaxCount:(unint64_t)count forFeature:(id)feature error:(id *)error
{
  restrictions = self->_restrictions;
  featureCopy = feature;
  v10 = [MCRestrictionManager intersectedValuesForFeature:featureCopy withRestrictionsDictionary:restrictions];
  LOBYTE(error) = [(MCRestrictionsPayload *)self _verifyMaxCount:count forItems:v10 forFeature:featureCopy error:error];

  return error;
}

- (BOOL)_verifyUnionMaxCount:(unint64_t)count forFeature:(id)feature error:(id *)error
{
  restrictions = self->_restrictions;
  featureCopy = feature;
  v10 = [MCRestrictionManager unionValuesForFeature:featureCopy withRestrictionsDictionary:restrictions];
  LOBYTE(error) = [(MCRestrictionsPayload *)self _verifyMaxCount:count forItems:v10 forFeature:featureCopy error:error];

  return error;
}

- (BOOL)_verifyMaxCount:(unint64_t)count forItems:(id)items forFeature:(id)feature error:(id *)error
{
  featureCopy = feature;
  v17 = [items count];
  if (v17 > count)
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = MCErrorArray(@"ERROR_PROFILE_FIELD_TOO_MANY_VALUES_P_FIELD", v10, v11, v12, v13, v14, v15, v16, featureCopy);
    *error = [v18 MCErrorWithDomain:@"MCRestrictionsErrorDomain" code:3005 descriptionArray:v19 errorType:@"MCFatalError"];
  }

  return v17 <= count;
}

- (id)_restrictedFeatureStrings
{
  if (_restrictedFeatureStrings_once != -1)
  {
    [MCRestrictionsPayload _restrictedFeatureStrings];
  }

  v3 = _restrictedFeatureStrings_sStrings;

  return v3;
}

void __50__MCRestrictionsPayload__restrictedFeatureStrings__block_invoke()
{
  v164[152] = *MEMORY[0x1E69E9840];
  v163[0] = @"allowExplicitContent";
  v162 = MCLocalizedString(@"EXPLICIT_CONTENT");
  v164[0] = v162;
  v163[1] = @"allowSafari";
  v161 = MCLocalizedString(@"SAFARI");
  v164[1] = v161;
  v163[2] = @"allowiTunes";
  v160 = MCLocalizedString(@"ITUNES");
  v164[2] = v160;
  v163[3] = @"allowAppInstallation";
  v159 = MCLocalizedString(@"APP_INSTALL");
  v164[3] = v159;
  v163[4] = @"allowUIAppInstallation";
  v158 = MCLocalizedString(@"UI_APP_INSTALL");
  v164[4] = v158;
  v163[5] = @"allowAppClips";
  v157 = MCLocalizedString(@"FEATURE_APP_CLIP");
  v164[5] = v157;
  v163[6] = @"allowAppRemoval";
  v156 = MCLocalizedString(@"APP_REMOVAL");
  v164[6] = v156;
  v163[7] = @"allowSystemAppRemoval";
  v155 = MCLocalizedString(@"SYSTEM_APP_REMOVAL");
  v164[7] = v155;
  v163[8] = @"allowCamera";
  v154 = MCLocalizedString(@"CAMERA");
  v164[8] = v154;
  v163[9] = @"allowVideoConferencing";
  v153 = MCLocalizedString(@"FACETIME");
  v164[9] = v153;
  v163[10] = @"allowScreenShot";
  v152 = MCLocalizedString(@"SCREEN_SHOT");
  v164[10] = v152;
  v163[11] = @"allowRemoteScreenObservation";
  v151 = MCLocalizedString(@"REMOTE_SCREEN_OBSERVATION");
  v164[11] = v151;
  v163[12] = @"allowVoiceDialing";
  v150 = MCLocalizedString(@"VOICE_DIALING");
  v164[12] = v150;
  v163[13] = @"allowGlobalBackgroundFetchWhenRoaming";
  v149 = MCLocalizedString(@"ROAMING_FETCH");
  v164[13] = v149;
  v163[14] = @"allowMultiplayerGaming";
  v148 = MCLocalizedString(@"MULTIPLAYER");
  v164[14] = v148;
  v163[15] = @"allowAddingGameCenterFriends";
  v147 = MCLocalizedString(@"FEATURE_ADD_GC_FRIENDS");
  v164[15] = v147;
  v163[16] = @"allowCellularHDUploads";
  v146 = MCLocalizedString(@"FEATURE_HD_VIDEO_OVER_3G");
  v164[16] = v146;
  v163[17] = @"allowAccountModification";
  v145 = MCLocalizedString(@"FEATURE_ACCOUNT_MODIFICATION");
  v164[17] = v145;
  v163[18] = @"allowFindMyFriendsModification";
  v144 = MCLocalizedString(@"FEATURE_FMF_MODIFICATION");
  v164[18] = v144;
  v163[19] = @"allowAssistant";
  v143 = MCLocalizedString(@"FEATURE_ASSISTANT");
  v164[19] = v143;
  v163[20] = @"allowGameCenter";
  v142 = MCLocalizedString(@"FEATURE_GAME_CENTER");
  v164[20] = v142;
  v163[21] = @"allowChat";
  v141 = MCLocalizedString(@"FEATURE_CHAT");
  v164[21] = v141;
  v163[22] = @"allowRCSMessaging";
  v140 = MCLocalizedString(@"FEATURE_RCS_MESSAGING");
  v164[22] = v140;
  v163[23] = @"allowCloudBackup";
  v139 = MCLocalizedString(@"FEATURE_CLOUD_BACKUP");
  v164[23] = v139;
  v163[24] = @"allowPhotoStream";
  v138 = MCLocalizedString(@"FEATURE_PHOTO_STREAM");
  v164[24] = v138;
  v163[25] = @"allowCloudPhotoLibrary";
  v137 = MCLocalizedString(@"FEATURE_CLOUD_PHOTO_LIBRARY");
  v164[25] = v137;
  v163[26] = @"allowDiagnosticSubmission";
  v136 = MCLocalizedString(@"FEATURE_DIAGNOSTIC_SUB");
  v164[26] = v136;
  v163[27] = @"allowDiagnosticSubmissionModification";
  v135 = MCLocalizedString(@"FEATURE_DIAGNOSTIC_SUB_MODIFICATION");
  v164[27] = v135;
  v163[28] = @"allowSiriServerLogging";
  v134 = MCLocalizedString(@"FEATURE_SIRI_SERVER_LOGGING");
  v164[28] = v134;
  v163[29] = @"allowUntrustedTLSPrompt";
  v133 = MCLocalizedString(@"FEATURE_UNTRUSTED_TLS");
  v164[29] = v133;
  v163[30] = @"allowInAppPurchases";
  v132 = MCLocalizedString(@"FEATURE_IN_APP_PURCHASE");
  v164[30] = v132;
  v163[31] = @"allowCloudDocumentSync";
  v131 = MCLocalizedString(@"FEATURE_DOCUMENT_SYNC");
  v164[31] = v131;
  v163[32] = @"allowAssistantWhileLocked";
  v130 = MCLocalizedString(@"FEATURE_ASSISTANT_WHILE_LOCKED");
  v164[32] = v130;
  v163[33] = @"safariAllowAutoFill";
  v129 = MCLocalizedString(@"FEATURE_SAFARI_AUTO_FILL");
  v164[33] = v129;
  v163[34] = @"allowPasswordAutoFill";
  v128 = MCLocalizedString(@"FEATURE_PASSWORD_AUTO_FILL");
  v164[34] = v128;
  v163[35] = @"allowPasswordSharing";
  v127 = MCLocalizedString(@"FEATURE_PASSWORD_SHARING");
  v164[35] = v127;
  v163[36] = @"allowPasswordProximityRequests";
  v126 = MCLocalizedString(@"FEATURE_PASSWORD_PROXIMITY_REQUESTS");
  v164[36] = v126;
  v163[37] = @"allowDefaultBrowserModification";
  v125 = MCLocalizedString(@"FEATURE_DEFAULT_BROWSER_MODIFICATION");
  v164[37] = v125;
  v163[38] = @"allowDefaultCallingAppModification";
  v124 = MCLocalizedString(@"FEATURE_DEFAULT_CALLING_APP_MODIFICATION");
  v164[38] = v124;
  v163[39] = @"allowDefaultMessagingAppModification";
  v123 = MCLocalizedString(@"FEATURE_DEFAULT_MESSAGING_APP_MODIFICATION");
  v164[39] = v123;
  v163[40] = @"safariAllowJavaScript";
  v122 = MCLocalizedString(@"FEATURE_SAFARI_JAVASCRIPT");
  v164[40] = v122;
  v163[41] = @"safariAllowPopups";
  v121 = MCLocalizedString(@"FEATURE_SAFARI_POPUPS");
  v164[41] = v121;
  v163[42] = @"allowBookstore";
  v120 = MCLocalizedString(@"FEATURE_BOOKSTORE");
  v164[42] = v120;
  v163[43] = @"allowBookstoreErotica";
  v119 = MCLocalizedString(@"FEATURE_BOOKSTORE_EROTICA");
  v164[43] = v119;
  v163[44] = @"allowPassbookWhileLocked";
  v118 = MCLocalizedString(@"FEATURE_PASSBOOK");
  v164[44] = v118;
  v163[45] = @"allowSharedStream";
  v117 = MCLocalizedString(@"FEATURE_SHARED_STREAM");
  v164[45] = v117;
  v163[46] = @"allowUIConfigurationProfileInstallation";
  v116 = MCLocalizedString(@"FEATURE_UI_INSTALLATION");
  v164[46] = v116;
  v163[47] = @"allowHostPairing";
  v115 = MCLocalizedString(@"FEATURE_HOST_PAIRING");
  v164[47] = v115;
  v163[48] = @"allowEraseContentAndSettings";
  v114 = MCLocalizedString(@"FEATURE_ERASE_CONTENT_AND_SETTINGS");
  v164[48] = v114;
  v163[49] = @"allowHealth";
  v113 = MCLocalizedString(@"FEATURE_HEALTH");
  v164[49] = v113;
  v163[50] = @"allowInstalledAppNearMeSuggestions";
  v112 = MCLocalizedString(@"FEATURE_INSTALLED_APP_NEAR_ME_SUGGESTIONS");
  v164[50] = v112;
  v163[51] = @"allowUninstalledAppNearMeSuggestions";
  v111 = MCLocalizedString(@"FEATURE_UNINSTALLED_APP_NEAR_ME_SUGGESTIONS");
  v164[51] = v111;
  v163[52] = @"allowPodcasts";
  v110 = MCLocalizedString(@"FEATURE_PODCASTS");
  v164[52] = v110;
  v163[53] = @"allowFindMyDevice";
  v109 = MCLocalizedString(@"FEATURE_FIND_MY_DEVICE");
  v164[53] = v109;
  v163[54] = @"allowFindMyFriends";
  v108 = MCLocalizedString(@"FEATURE_FIND_MY_FRIENDS");
  v164[54] = v108;
  v163[55] = @"allowHome";
  v107 = MCLocalizedString(@"FEATURE_HOME");
  v164[55] = v107;
  v163[56] = @"allowEnablingRestrictions";
  v106 = MCLocalizedString(@"FEATURE_ENABLING_RESTRICTIONS");
  v164[56] = v106;
  v163[57] = @"allowAppCellularDataModification";
  v105 = MCLocalizedString(@"FEATURE_APP_CELLULAR_MODIFY");
  v164[57] = v105;
  v163[58] = @"allowCellularPlanModification";
  v104 = MCLocalizedString(@"FEATURE_CELLULAR_PLAN_MODIFY");
  v164[58] = v104;
  v163[59] = @"allowVoiceConferencing";
  v103 = MCLocalizedString(@"FEATURE_AUDIO_CONFERENCE");
  v164[59] = v103;
  v163[60] = @"allowOpenFromManagedToUnmanaged";
  v102 = MCLocalizedString(@"FEATURE_OPEN_IN_MANAGED_TO_UNMANAGED");
  v164[60] = v102;
  v163[61] = @"allowOpenFromUnmanagedToManaged";
  v101 = MCLocalizedString(@"FEATURE_OPEN_IN_UNMANAGED_TO_MANAGED");
  v164[61] = v101;
  v163[62] = @"allowCloudKeychainSync";
  v100 = MCLocalizedString(@"FEATURE_KEYCHAIN_SYNC");
  v164[62] = v100;
  v163[63] = @"allowCloudPrivateRelay";
  v99 = MCLocalizedString(@"FEATURE_CLOUD_PRIVATE_RELAY");
  v164[63] = v99;
  v163[64] = @"allowOTAPKIUpdates";
  v98 = MCLocalizedString(@"FEATURE_OTA_PKI_UPDATES");
  v164[64] = v98;
  v163[65] = @"allowAutomaticAppDownloads";
  v97 = MCLocalizedString(@"FEATURE_AUTOMATIC_APP_DOWNLOADS");
  v164[65] = v97;
  v163[66] = @"allowLockScreenTodayView";
  v96 = MCLocalizedString(@"FEATURE_LOCKSCREEN_TODAY_VIEW");
  v164[66] = v96;
  v163[67] = @"allowLockScreenNotificationsView";
  v95 = MCLocalizedString(@"FEATURE_LOCKSCREEN_NOTIFICATIONS");
  v164[67] = v95;
  v163[68] = @"allowLockScreenControlCenter";
  v94 = MCLocalizedString(@"FEATURE_LOCKSCREEN_CONTROL_CENTER");
  v164[68] = v94;
  v163[69] = @"allowAirDrop";
  v93 = MCLocalizedString(@"FEATURE_AIRDROP");
  v164[69] = v93;
  v163[70] = @"allowAirPrint";
  v92 = MCLocalizedString(@"FEATURE_AIRPRINT");
  v164[70] = v92;
  v163[71] = @"allowAirPrintiBeaconDiscovery";
  v91 = MCLocalizedString(@"FEATURE_AIRPRINT_IBEACON_DISCOVERY");
  v164[71] = v91;
  v163[72] = @"allowAirPrintCredentialsStorage";
  v90 = MCLocalizedString(@"FEATURE_AIRPRINT_CREDENTIALS_STORAGE");
  v164[72] = v90;
  v163[73] = @"allowAssistantUserGeneratedContent";
  v89 = MCLocalizedString(@"FEATURE_ASSISTANT_UNCURATED");
  v164[73] = v89;
  v163[74] = @"allowFingerprintModification";
  HasOysterCapability = MCGestaltHasOysterCapability();
  if (HasOysterCapability)
  {
    v0 = MCLocalizedString(@"FEATURE_OPTICDATA_MODIFICATION");
    v86 = 0;
  }

  else if (MCGestaltHasPearlIDCapability())
  {
    v0 = MCLocalizedString(@"FEATURE_FACEDATA_MODIFICATION");
    v86 = 0x100000000;
  }

  else
  {
    v0 = MCLocalizedString(@"FEATURE_FINGERPRINT_MODIFICATION");
    v86 = 1;
  }

  v164[74] = v0;
  v163[75] = @"allowFingerprintForUnlock";
  v85 = MCGestaltHasOysterCapability();
  if (v85)
  {
    v1 = MCLocalizedString(@"FEATURE_OPTICDATA_UNLOCK");
    v83 = 0;
  }

  else if (MCGestaltHasPearlIDCapability())
  {
    v1 = MCLocalizedString(@"FEATURE_FACEDATA_UNLOCK");
    v83 = 0x100000000;
  }

  else
  {
    v1 = MCLocalizedString(@"FEATURE_FINGERPRINT_UNLOCK");
    v83 = 1;
  }

  v164[75] = v1;
  v163[76] = @"allowFingerprintForContactlessPayment";
  v82 = MCGestaltHasOysterCapability();
  v87 = v0;
  v84 = v1;
  if (v82)
  {
    v2 = MCLocalizedString(@"FEATURE_OPTICDATA_INAPP_PAYMENT");
    v81 = 0;
    v80 = 0;
  }

  else if (MCGestaltHasPearlIDCapability())
  {
    v2 = MCLocalizedString(@"FEATURE_FACEDATA_INAPP_PAYMENT");
    v80 = 0;
    v81 = 1;
  }

  else
  {
    v2 = MCLocalizedString(@"FEATURE_FINGERPRINT_INAPP_PAYMENT");
    v81 = 0;
    v80 = 1;
  }

  v164[76] = v2;
  v163[77] = @"allowAutoUnlock";
  v79 = MCLocalizedString(@"FEATURE_AUTO_UNLOCK");
  v164[77] = v79;
  v163[78] = @"allowManagedAppsCloudSync";
  v78 = MCLocalizedString(@"FEATURE_MANAGED_APPS_CLOUD_SYNC");
  v164[78] = v78;
  v163[79] = @"allowGeotagSharing";
  v77 = MCLocalizedString(@"FEATURE_GEOTAG_SHARING");
  v164[79] = v77;
  v163[80] = @"allowSpotlightInternetResults";
  v76 = MCLocalizedString(@"FEATURE_SPOTLIGHT_INTERNET_RESULTS");
  v164[80] = v76;
  v163[81] = @"allowActivityContinuation";
  v75 = MCLocalizedString(@"FEATURE_ACTIVITY_CONTINUATION");
  v164[81] = v75;
  v163[82] = @"allowEnterpriseBookBackup";
  v74 = MCLocalizedString(@"FEATURE_ENTERPRISE_BOOK_BACKUP");
  v164[82] = v74;
  v163[83] = @"allowEnterpriseBookMetadataSync";
  v73 = MCLocalizedString(@"FEATURE_ENTERPRISE_BOOK_METADATA_SYNC");
  v164[83] = v73;
  v163[84] = @"allowPredictiveKeyboard";
  v72 = MCLocalizedString(@"FEATURE_PREDICTIVE_KEYBOARD");
  v164[84] = v72;
  v163[85] = @"allowContinuousPathKeyboard";
  v71 = MCLocalizedString(@"FEATURE_CONTINUOUS_PATH_KEYBOARD");
  v164[85] = v71;
  v163[86] = @"allowKeyboardShortcuts";
  v70 = MCLocalizedString(@"FEATURE_KEYBOARD_SHORTCUTS");
  v164[86] = v70;
  v163[87] = @"allowSpellCheck";
  v69 = MCLocalizedString(@"FEATURE_SPELL_CHECK");
  v164[87] = v69;
  v163[88] = @"allowAutoCorrection";
  v68 = MCLocalizedString(@"FEATURE_AUTOCORRECTION");
  v164[88] = v68;
  v163[89] = @"allowDefinitionLookup";
  v67 = MCLocalizedString(@"FEATURE_DEFINITION_LOOKUP");
  v164[89] = v67;
  v163[90] = @"allowSelectedTextSharing";
  v66 = MCLocalizedString(@"FEATURE_SELECTED_TEXT_SHARING");
  v164[90] = v66;
  v163[91] = @"allowPairedWatch";
  v65 = MCLocalizedString(@"FEATURE_PAIRED_WATCH");
  v164[91] = v65;
  v163[92] = @"allowPasscodeModification";
  v64 = MCLocalizedString(@"FEATURE_PASSCODE_MODIFICATION");
  v164[92] = v64;
  v163[93] = @"allowDeviceNameModification";
  v63 = MCLocalizedString(@"FEATURE_DEVICE_NAME_MODIFICATION");
  v164[93] = v63;
  v163[94] = @"allowWallpaperModification";
  v62 = MCLocalizedString(@"FEATURE_WALLPAPER_MODIFICATION");
  v164[94] = v62;
  v163[95] = @"allowEnterpriseAppTrust";
  v61 = MCLocalizedString(@"FEATURE_ENTERPRISE_APP_TRUST");
  v164[95] = v61;
  v163[96] = @"allowNews";
  v60 = MCLocalizedString(@"FEATURE_NEWS_APP");
  v164[96] = v60;
  v163[97] = @"allowMusicService";
  v59 = MCLocalizedString(@"FEATURE_MUSIC_SERVICE");
  v164[97] = v59;
  v163[98] = @"allowRadioService";
  v58 = MCLocalizedString(@"FEATURE_RADIO_SERVICE");
  v164[98] = v58;
  v163[99] = @"allowBluetoothModification";
  v57 = MCLocalizedString(@"FEATURE_BLUETOOTH_MODIFICATION");
  v164[99] = v57;
  v163[100] = @"allowPersonalHotspotModification";
  v56 = MCLocalizedString(@"FEATURE_PERSONALHOTSPOT_MODIFICATION");
  v164[100] = v56;
  v163[101] = @"allowNFC";
  v55 = MCLocalizedString(@"FEATURE_NFC_ALLOWED");
  v164[101] = v55;
  v163[102] = @"allowNotificationsModification";
  v54 = MCLocalizedString(@"FEATURE_NOTIFICATIONS_MODIFICATION");
  v164[102] = v54;
  v163[103] = @"allowTodayView";
  v53 = MCLocalizedString(@"FEATURE_TODAY_VIEW");
  v164[103] = v53;
  v163[104] = @"allowTodayViewModification";
  v52 = MCLocalizedString(@"FEATURE_TODAY_VIEW_MODIFICATION");
  v164[104] = v52;
  v163[105] = @"allowDictation";
  v51 = MCLocalizedString(@"FEATURE_DICTATION");
  v164[105] = v51;
  v163[106] = @"allowRemoteAppPairing";
  v50 = MCLocalizedString(@"FEATURE_REMOTE_APP_PAIRING");
  v164[106] = v50;
  v163[107] = @"allowAirPlayIncomingRequests";
  v49 = MCLocalizedString(@"FEATURE_AIRPLAY_INCOMING_REQUESTS_ALLOWED");
  v164[107] = v49;
  v163[108] = @"allowVPNCreation";
  v48 = MCLocalizedString(@"FEATURE_VPN_CREATION");
  v164[108] = v48;
  v163[109] = @"allowDriverDoNotDisturbModifications";
  v47 = MCLocalizedString(@"FEATURE_DRIVER_DO_NOT_DISTURB_MODIFICATIONS");
  v164[109] = v47;
  v163[110] = @"allowProximitySetupToNewDevice";
  v46 = MCLocalizedString(@"FEATURE_PROXIMITY_SET_UP");
  v164[110] = v46;
  v163[111] = @"allowUSBRestrictedMode";
  v45 = MCLocalizedString(@"FEATURE_USB_RESTRICTED_MODE");
  v164[111] = v45;
  v163[112] = @"allowESIMModification";
  v44 = MCLocalizedString(@"FEATURE_ESIM_MODIFICATION");
  v164[112] = v44;
  v163[113] = @"allowFilesUSBDriveAccess";
  v43 = MCLocalizedString(@"FEATURE_USB_DRIVE_ACCESS_IN_FILES");
  v164[113] = v43;
  v163[114] = @"allowUSBDriveAccess";
  v42 = MCLocalizedString(@"FEATURE_USB_DRIVE_ACCESS");
  v164[114] = v42;
  v163[115] = @"allowFilesNetworkDriveAccess";
  v41 = MCLocalizedString(@"FEATURE_NETWORK_DRIVE_ACCESS_IN_FILES");
  v164[115] = v41;
  v163[116] = @"allowDeviceSleep";
  v40 = MCLocalizedString(@"FEATURE_DEVICE_SLEEP");
  v164[116] = v40;
  v163[117] = @"allowAutomaticScreenSaver";
  v39 = MCLocalizedString(@"FEATURE_AUTOMATIC_SCREEN_SAVER");
  v164[117] = v39;
  v163[118] = @"allowSharedDeviceTemporarySession";
  v38 = MCLocalizedString(@"FEATURE_SHARED_DEVICE_TEMPORARY_SESSION");
  v164[118] = v38;
  v163[119] = @"allowApplePersonalizedAdvertising";
  v37 = MCLocalizedString(@"FEATURE_APPLE_PERSONALIZED_ADVERTISING");
  v164[119] = v37;
  v163[120] = @"allowMailPrivacyProtection";
  v36 = MCLocalizedString(@"FEATURE_MAIL_PRIVACY_PROTECTION");
  v164[120] = v36;
  v163[121] = @"allowRapidSecurityResponseInstallation";
  v35 = MCLocalizedString(@"FEATURE_RAPID_SECURITY_RESPONSE_INSTALLATION");
  v164[121] = v35;
  v163[122] = @"allowRapidSecurityResponseRemoval";
  v34 = MCLocalizedString(@"FEATURE_RAPID_SECURITY_RESPONSE_REMOVAL");
  v164[122] = v34;
  v163[123] = @"allowiPhoneWidgetsOnMac";
  v33 = MCLocalizedString(@"FEATURE_IPHONE_WIDGETS_ON_MAC");
  v164[123] = v33;
  v163[124] = @"allowAppsToBeHidden";
  v32 = MCLocalizedString(@"FEATURE_HIDDEN_APPS");
  v164[124] = v32;
  v163[125] = @"allowAppsToBeLocked";
  v31 = MCLocalizedString(@"FEATURE_LOCKED_APPS");
  v164[125] = v31;
  v163[126] = @"allowLiveVoicemail";
  v30 = MCLocalizedString(@"FEATURE_LIVE_VOICEMAIL");
  v164[126] = v30;
  v163[127] = @"allowCallRecording";
  v29 = MCLocalizedString(@"FEATURE_CALL_RECORDING");
  v164[127] = v29;
  v163[128] = @"allowMarketplaceAppInstallation";
  v28 = MCLocalizedString(@"FEATURE_MARKETPLACE_APP_INSTALLATION");
  v164[128] = v28;
  v163[129] = @"allowWebDistributionAppInstallation";
  v27 = MCLocalizedString(@"FEATURE_WEB_APP_INSTALLATION");
  v164[129] = v27;
  v163[130] = @"allowAutoDim";
  v26 = MCLocalizedString(@"FEATURE_AUTO_DIM");
  v164[130] = v26;
  v163[131] = @"allowESIMOutgoingTransfers";
  v25 = MCLocalizedString(@"FEATURE_ESIM_OUTGOING_TRANSFER");
  v164[131] = v25;
  v163[132] = @"allowExternalIntelligenceIntegrations";
  v24 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE");
  v164[132] = v24;
  v163[133] = @"allowExternalIntelligenceIntegrationsSignIn";
  v23 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE_SIGN_IN");
  v164[133] = v23;
  v163[134] = @"allowiPhoneMirroring";
  v22 = MCLocalizedString(@"FEATURE_IPHONE_MIRRORING");
  v164[134] = v22;
  v163[135] = @"allowPersonalizedHandwritingResults";
  v21 = MCLocalizedString(@"FEATURE_PERSONALIZED_HANDWRITING");
  v164[135] = v21;
  v163[136] = @"allowGenmoji";
  v20 = MCLocalizedString(@"FEATURE_GENMOJI");
  v164[136] = v20;
  v163[137] = @"allowImagePlayground";
  v19 = MCLocalizedString(@"FEATURE_IMAGE_PLAYGROUND");
  v164[137] = v19;
  v163[138] = @"allowImageWand";
  v18 = MCLocalizedString(@"FEATURE_IMAGE_WAND");
  v164[138] = v18;
  v163[139] = @"allowiPhoneMirroring";
  v17 = MCLocalizedString(@"FEATURE_FEATURE3");
  v164[139] = v17;
  v163[140] = @"allowVideoConferencingRemoteControl";
  v16 = MCLocalizedString(@"FEATURE_VIDEO_CONFERENCING_REMOTE_CONTROL");
  v164[140] = v16;
  v163[141] = @"allowWritingTools";
  v15 = MCLocalizedString(@"FEATURE_WRITING_TOOLS");
  v164[141] = v15;
  v163[142] = @"allowMailSummary";
  v14 = MCLocalizedString(@"FEATURE_MAIL_SUMMARY");
  v164[142] = v14;
  v163[143] = @"allowMailSmartReplies";
  v3 = MCLocalizedString(@"FEATURE_MAIL_SMART_REPLIES");
  v164[143] = v3;
  v163[144] = @"allowSafariSummary";
  v4 = MCLocalizedString(@"FEATURE_SAFARI_SUMMARY");
  v164[144] = v4;
  v163[145] = @"allowNotesTranscription";
  v5 = MCLocalizedString(@"FEATURE_NOTES_TRANSCRIPTION");
  v164[145] = v5;
  v163[146] = @"allowNotesTranscriptionSummary";
  v6 = MCLocalizedString(@"FEATURE_NOTES_TRANSCRIPTION_SUMMARY");
  v164[146] = v6;
  v163[147] = @"allowVisualIntelligenceSummary";
  v7 = MCLocalizedString(@"FEATURE_VISUAL_INTELLIGENCE_SUMMARY");
  v164[147] = v7;
  v163[148] = @"allowSatelliteConnection";
  v8 = MCLocalizedString(@"FEATURE_SATELLITE_CONNECTION");
  v164[148] = v8;
  v163[149] = @"allowAppleIntelligenceReport";
  v9 = MCLocalizedString(@"FEATURE_APPLE_INTELLIGENCE_REPORT");
  v164[149] = v9;
  v163[150] = @"allowSafariPrivateBrowsing";
  v10 = MCLocalizedString(@"FEATURE_SAFARI_PRIVATE_BROWSING");
  v164[150] = v10;
  v163[151] = @"allowSafariHistoryClearing";
  v11 = MCLocalizedString(@"FEATURE_SAFARI_HISTORY_CLEARING");
  v164[151] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v164 forKeys:v163 count:152];
  v13 = _restrictedFeatureStrings_sStrings;
  _restrictedFeatureStrings_sStrings = v12;

  if (v80)
  {
  }

  if (v81)
  {
  }

  if (v82)
  {
  }

  if (v83)
  {
  }

  if (HIDWORD(v83))
  {
  }

  if (v85)
  {
  }

  if (v86)
  {
  }

  if (HIDWORD(v86))
  {
  }

  if (HasOysterCapability)
  {
  }
}

- (id)_enforcedFeatureStrings
{
  if (_enforcedFeatureStrings_onceToken != -1)
  {
    [MCRestrictionsPayload _enforcedFeatureStrings];
  }

  v3 = _enforcedFeatureStrings_sStrings;

  return v3;
}

void __48__MCRestrictionsPayload__enforcedFeatureStrings__block_invoke()
{
  v37[31] = *MEMORY[0x1E69E9840];
  v36[0] = @"forceITunesStorePasswordEntry";
  v35 = MCLocalizedString(@"FEATURE_ENTER_ITUNES_PASSWORD");
  v37[0] = v35;
  v36[1] = @"forceFIPSVerification";
  v34 = MCLocalizedString(@"FEATURE_FIPS");
  v37[1] = v34;
  v36[2] = @"forceAssistantProfanityFilter";
  v33 = MCLocalizedString(@"FEATURE_ASSISTANT_PROF_FILTER");
  v37[2] = v33;
  v36[3] = @"forceAuthenticationBeforeAutoFill";
  v32 = MCLocalizedString(@"FEATURE_AUTHENTICATE_BEFORE_AUTO_FILL");
  v37[3] = v32;
  v36[4] = @"forceEncryptedBackup";
  v31 = MCLocalizedString(@"FEATURE_ENCRYPTED_BACKUPS");
  v37[4] = v31;
  v36[5] = @"safariForceFraudWarning";
  v30 = MCLocalizedString(@"FEATURE_SAFARI_FRAUD_WARNING");
  v37[5] = v30;
  v36[6] = @"forceLimitAdTracking";
  v29 = MCLocalizedString(@"FEATURE_FORCE_LIMIT_AD_TRACKING");
  v37[6] = v29;
  v36[7] = @"forceAirPlayOutgoingRequestsPairingPassword";
  v28 = MCLocalizedString(@"FEATURE_AIRPLAY_OUTGOING_REQUESTS_PAIRING_PASSWORD");
  v37[7] = v28;
  v36[8] = @"forceAirPlayIncomingRequestsPairingPassword";
  v27 = MCLocalizedString(@"FEATURE_AIRPLAY_INCOMING_REQUESTS_PAIRING_PASSWORD");
  v37[8] = v27;
  v36[9] = @"forceWatchWristDetection";
  v26 = MCLocalizedString(@"FEATURE_WATCH_WRIST_DETECT");
  v37[9] = v26;
  v36[10] = @"forceConferenceRoomDisplay";
  v25 = MCLocalizedString(@"FEATURE_CONFERENCE_ROOM_MODE");
  v37[10] = v25;
  v36[11] = @"forceAirDropUnmanaged";
  v24 = MCLocalizedString(@"FEATURE_AIRDROP_UNMANAGED");
  v37[11] = v24;
  v36[12] = @"forceDelayedSoftwareUpdates";
  v23 = MCLocalizedString(@"FEATURE_DELAYED_SOFTWARE_UPDATES");
  v37[12] = v23;
  v36[13] = @"forceWiFiWhitelisting";
  v22 = [@"FEATURE_WIFI_ALLOW_LIST" MCAppendGreenteaSuffix];
  v21 = MCLocalizedString(v22);
  v37[13] = v21;
  v36[14] = @"forceWiFiToAllowedNetworksOnly";
  v20 = [@"FEATURE_WIFI_ALLOWED_NETWORKS_ONLY" MCAppendGreenteaSuffix];
  v19 = MCLocalizedString(v20);
  v37[14] = v19;
  v36[15] = @"forceWiFiPowerOn";
  v18 = [@"FEATURE_WIFI_POWER_MODIFICATION" MCAppendGreenteaSuffix];
  v17 = MCLocalizedString(v18);
  v37[15] = v17;
  v36[16] = @"forceAutomaticDateAndTime";
  v16 = MCLocalizedString(@"FEATURE_AUTOMATIC_DATE_TIME");
  v37[16] = v16;
  v36[17] = @"forceAirPrintTrustedTLSRequirement";
  v15 = MCLocalizedString(@"FEATURE_AIRPRINT_TRUSTED_TLS_REQUIREMENT");
  v37[17] = v15;
  v36[18] = @"forceClassroomUnpromptedScreenObservation";
  v14 = MCLocalizedString(@"FEATURE_CLASSROOM_UNPROMPTED_SCREEN_OBSERVATION");
  v37[18] = v14;
  v36[19] = @"forceUnpromptedManagedClassroomScreenObservation";
  v13 = MCLocalizedString(@"FEATURE_CLASSROOM_UNPROMPTED_SCREEN_OBSERVATION");
  v37[19] = v13;
  v36[20] = @"forceClassroomAutomaticallyJoinClasses";
  v12 = MCLocalizedString(@"FEATURE_CLASSROOM_AUTOMATICALLY_JOIN_CLASSES");
  v37[20] = v12;
  v36[21] = @"forceClassroomUnpromptedAppAndDeviceLock";
  v0 = MCLocalizedString(@"FEATURE_CLASSROOM_UNPROMPTED_APP_AND_DEVICE_LOCK");
  v37[21] = v0;
  v36[22] = @"forceClassroomRequestPermissionToLeaveClasses";
  v1 = MCLocalizedString(@"FEATURE_CLASSROOM_REQUEST_PERMISSION_TO_LEAVE_CLASSES");
  v37[22] = v1;
  v36[23] = @"allowManagedToWriteUnmanagedContacts";
  v2 = MCLocalizedString(@"FEATURE_MANAGED_WRITE_UNMANAGED_CONTACTS");
  v37[23] = v2;
  v36[24] = @"allowUnmanagedToReadManagedContacts";
  v3 = MCLocalizedString(@"FEATURE_UNMANAGED_READ_MANAGED_CONTACTS");
  v37[24] = v3;
  v36[25] = @"requireManagedPasteboard";
  v4 = MCLocalizedString(@"FEATURE_MANAGED_PASTEBOARD_REQUIRED");
  v37[25] = v4;
  v36[26] = @"allowDeprecatedWebKitTLS";
  v5 = MCLocalizedString(@"FEATURE_WEBKIT_DEPRECATED_TLS");
  v37[26] = v5;
  v36[27] = @"allowUnpairedExternalBootToRecovery";
  v6 = MCLocalizedString(@"FEATURE_UNPAIRED_EXTERNAL_BOOT_TO_RECOVERY");
  v37[27] = v6;
  v36[28] = @"forceOnDeviceOnlyDictation";
  v7 = MCLocalizedStringByDevice(@"FEATURE_ON_DEVICE_ONLY_DICTATION");
  v37[28] = v7;
  v36[29] = @"forceOnDeviceOnlyTranslation";
  v8 = MCLocalizedStringByDevice(@"FEATURE_ON_DEVICE_ONLY_TRANSLATION");
  v37[29] = v8;
  v36[30] = @"forcePreserveESIMOnErase";
  v9 = MCLocalizedString(@"FEATURE_PRESERVE_ESIM_ON_ERASE");
  v37[30] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:31];
  v11 = _enforcedFeatureStrings_sStrings;
  _enforcedFeatureStrings_sStrings = v10;
}

- (id)_intersectionStrings
{
  if (_intersectionStrings_onceToken != -1)
  {
    [MCRestrictionsPayload _intersectionStrings];
  }

  v3 = _intersectionStrings_sStrings;

  return v3;
}

void __45__MCRestrictionsPayload__intersectionStrings__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v8[0] = @"autonomousSingleAppModePermittedAppIDs";
  v0 = MCLocalizedString(@"FEATURE_AUTONOMOUS_SAM_ALLOW_LIST");
  v9[0] = v0;
  v8[1] = @"appLockBundleIDs";
  v1 = MCLocalizedString(@"FEATURE_APP_ALLOW_LIST");
  v9[1] = v1;
  v8[2] = @"allowedExternalIntelligenceAccountDomains";
  v2 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE_DOMAIN_LIST");
  v9[2] = v2;
  v8[3] = @"allowedExternalIntelligenceWorkspaceIDs";
  v3 = MCLocalizedString(@"FEATURE_EXTERNAL_INTELLIGENCE_WORKSPACE_IDS");
  v9[3] = v3;
  v8[4] = @"allowedCameraRestrictionBundleIDs";
  v4 = MCLocalizedString(@"FEATURE_CAMERA_RESTRICTION_BUNDLE_IDS");
  v9[4] = v4;
  v8[5] = @"ratingAppsExemptedBundleIDs";
  v5 = MCLocalizedString(@"FEATURE_APPS_RATING_EXEMPTED");
  v9[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = _intersectionStrings_sStrings;
  _intersectionStrings_sStrings = v6;
}

- (id)_unionStrings
{
  if (_unionStrings_onceToken != -1)
  {
    [MCRestrictionsPayload _unionStrings];
  }

  v3 = _unionStrings_sStrings;

  return v3;
}

void __38__MCRestrictionsPayload__unionStrings__block_invoke()
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"blacklistedAppBundleIDs";
  v0 = MCLocalizedString(@"FEATURE_PROHIBITED_APPS");
  v7[0] = v0;
  v6[1] = @"blockedAppBundleIDs";
  v1 = MCLocalizedString(@"FEATURE_PROHIBITED_APPS");
  v7[1] = v1;
  v6[2] = @"deniedICCIDsForRCS";
  v2 = MCLocalizedString(@"FEATURE_RCS_ICCIDS");
  v7[2] = v2;
  v6[3] = @"deniedICCIDsForiMessageFaceTime";
  v3 = MCLocalizedString(@"FEATURE_IMESSAGE_ICCIDS");
  v7[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  v5 = _unionStrings_sStrings;
  _unionStrings_sStrings = v4;
}

- (id)_defaultValueRestrictions
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (_defaultValueRestrictions_once != -1)
  {
    [MCRestrictionsPayload _defaultValueRestrictions];
  }

  v18[0] = @"normalMax";
  v2 = [MCRestrictionManager maximumValueForSetting:@"enforcedSoftwareUpdateDelay"];
  v19[0] = v2;
  v18[1] = @"normalMin";
  v3 = [MCRestrictionManager minimumValueForSetting:@"enforcedSoftwareUpdateDelay"];
  v19[1] = v3;
  v18[2] = @"localizedString";
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 effectiveValueForSetting:@"enforcedSoftwareUpdateDelay"];
  unsignedIntValue = [v5 unsignedIntValue];
  v14 = MCLocalizedFormat(@"FEATURE_SOFTWARE_UPDATE_DELAY", v7, v8, v9, v10, v11, v12, v13, unsignedIntValue);
  v19[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [_defaultValueRestrictions_dict setObject:v15 forKeyedSubscript:@"enforcedSoftwareUpdateDelay"];

  v16 = _defaultValueRestrictions_dict;

  return v16;
}

void __50__MCRestrictionsPayload__defaultValueRestrictions__block_invoke()
{
  v28[4] = *MEMORY[0x1E69E9840];
  v27[0] = @"ratingMovies";
  v25[0] = @"normalMax";
  v18 = [MCRestrictionManager maximumValueForSetting:@"ratingMovies"];
  v26[0] = v18;
  v25[1] = @"normalMin";
  v17 = [MCRestrictionManager minimumValueForSetting:@"ratingMovies"];
  v26[1] = v17;
  v25[2] = @"localizedString";
  v16 = MCLocalizedString(@"MOVIE_RATING");
  v26[2] = v16;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v28[0] = v15;
  v27[1] = @"ratingTVShows";
  v23[0] = @"normalMax";
  v14 = [MCRestrictionManager maximumValueForSetting:@"ratingTVShows"];
  v24[0] = v14;
  v23[1] = @"normalMin";
  v13 = [MCRestrictionManager minimumValueForSetting:@"ratingTVShows"];
  v24[1] = v13;
  v23[2] = @"localizedString";
  v12 = MCLocalizedString(@"TV_SHOW_RATING");
  v24[2] = v12;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v28[1] = v0;
  v27[2] = @"ratingApps";
  v21[0] = @"normalMax";
  v1 = [MCRestrictionManager maximumValueForSetting:@"ratingApps"];
  v22[0] = v1;
  v21[1] = @"normalMin";
  v2 = [MCRestrictionManager minimumValueForSetting:@"ratingApps"];
  v22[1] = v2;
  v21[2] = @"localizedString";
  v3 = MCLocalizedString(@"APP_RATING");
  v22[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v28[2] = v4;
  v27[3] = @"safariAcceptCookies";
  v19[0] = @"normalMax";
  v5 = [MCRestrictionManager maximumValueForSetting:@"safariAcceptCookies"];
  v20[0] = v5;
  v19[1] = @"normalMin";
  v6 = [MCRestrictionManager minimumValueForSetting:@"safariAcceptCookies"];
  v20[1] = v6;
  v19[2] = @"localizedString";
  v7 = MCLocalizedString(@"FEATURE_SAFARI_ACCEPT_COOKIES");
  v20[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v28[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v10 = [v9 mutableCopy];
  v11 = _defaultValueRestrictions_dict;
  _defaultValueRestrictions_dict = v10;
}

- (id)localizedRestrictionStrings
{
  v98 = *MEMORY[0x1E69E9840];
  v75 = objc_opt_new();
  v3 = self->_restrictions;
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  if ((isSupervised & 1) == 0)
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v97 = "[MCRestrictionsPayload localizedRestrictionStrings]";
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_DEFAULT, "%s, Filter grandfathered restrictions", buf, 0xCu);
    }

    v7 = [MCRestrictionManager filterGrandfatheredRestrictionsIfNeededFromRestrictions:self->_restrictions];

    v3 = v7;
  }

  v8 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"restrictedBool"];
  v9 = [v8 mutableCopy];

  v10 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"restrictedValue"];
  v11 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"intersection"];
  v68 = v3;
  v73 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"union"];
  v12 = [v9 objectForKey:@"allowCamera"];
  v13 = [v12 objectForKey:@"value"];

  if (v13 && ([v13 BOOLValue] & 1) == 0)
  {
    [v9 removeObjectForKey:@"allowVideoConferencing"];
  }

  v14 = [v9 objectForKey:@"allowAppRemoval"];
  v15 = [v14 objectForKey:@"value"];

  if (v15 && ([v15 BOOLValue] & 1) == 0)
  {
    [v9 removeObjectForKey:@"allowSystemAppRemoval"];
  }

  v16 = [v9 objectForKey:@"allowAirPrint"];
  v17 = [v16 objectForKey:@"value"];

  v72 = v17;
  if (v17 && ([v17 BOOLValue] & 1) == 0)
  {
    [v9 removeObjectForKey:@"forceAirPrintTrustedTLSRequirement"];
    [v9 removeObjectForKey:@"allowAirPrintiBeaconDiscovery"];
    [v9 removeObjectForKey:@"allowAirPrintCredentialsStorage"];
  }

  v67 = v13;
  if (([MEMORY[0x1E6999800] isSharediPad] & 1) == 0)
  {
    [v9 removeObjectForKey:@"allowSharedDeviceTemporarySession"];
  }

  v70 = v10;
  v71 = v9;
  v69 = v11;
  if ([v9 count])
  {
    selfCopy = self;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v88 objects:v95 count:16];
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = v20;
    v22 = *v89;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v89 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v88 + 1) + 8 * i);
        v25 = [v19 objectForKey:v24];
        v26 = [v25 objectForKey:@"value"];

        if (v26)
        {
          if ([v26 BOOLValue])
          {
            if (![v26 BOOLValue])
            {
              goto LABEL_30;
            }

            _enforcedFeatureStrings = [(MCRestrictionsPayload *)selfCopy _enforcedFeatureStrings];
          }

          else
          {
            _enforcedFeatureStrings = [(MCRestrictionsPayload *)selfCopy _restrictedFeatureStrings];
          }

          v28 = _enforcedFeatureStrings;
          v29 = [_enforcedFeatureStrings objectForKey:v24];

          if (v29)
          {
            [v75 addObject:v29];
          }
        }

LABEL_30:
      }

      v21 = [v19 countByEnumeratingWithState:&v88 objects:v95 count:16];
      if (!v21)
      {
LABEL_32:

        self = selfCopy;
        v10 = v70;
        v9 = v71;
        v11 = v69;
        break;
      }
    }
  }

  if ([v10 count])
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v30 = v10;
    v31 = [v30 countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (v31)
    {
      v32 = v31;
      v74 = *v85;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v85 != v74)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v84 + 1) + 8 * j);
          _defaultValueRestrictions = [(MCRestrictionsPayload *)self _defaultValueRestrictions];
          v36 = [_defaultValueRestrictions objectForKey:v34];

          if (v36)
          {
            selfCopy2 = self;
            v38 = [v30 objectForKeyedSubscript:v34];
            v39 = [v38 objectForKeyedSubscript:@"value"];
            v40 = [v38 objectForKeyedSubscript:@"preferSmallerValues"];
            if ([v40 BOOLValue])
            {
              v41 = @"normalMax";
            }

            else
            {
              v41 = @"normalMin";
            }

            v42 = [v36 objectForKeyedSubscript:v41];
            if (v39)
            {
              v43 = [v39 compare:v42];
              bOOLValue = [v40 BOOLValue];
              v45 = -1;
              if (!bOOLValue)
              {
                v45 = 1;
              }

              if (v43 == v45)
              {
                v46 = [v36 objectForKey:@"localizedString"];
                [v75 addObject:v46];
              }
            }

            self = selfCopy2;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v32);
    }

    v10 = v70;
    v9 = v71;
    v11 = v69;
  }

  if ([v11 count])
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v47 = v11;
    v48 = [v47 countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v81;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v81 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v80 + 1) + 8 * k);
          _intersectionStrings = [(MCRestrictionsPayload *)self _intersectionStrings];
          v54 = [_intersectionStrings objectForKeyedSubscript:v52];

          if (v54)
          {
            [v75 addObject:v54];
          }
        }

        v49 = [v47 countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v49);
    }
  }

  v55 = v73;
  if ([v73 count])
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v56 = v73;
    v57 = [v56 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v77;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v77 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v76 + 1) + 8 * m);
          _unionStrings = [(MCRestrictionsPayload *)self _unionStrings];
          v63 = [_unionStrings objectForKeyedSubscript:v61];

          if (v63)
          {
            [v75 addObject:v63];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v58);
    }

    v55 = v73;
  }

  v64 = [v75 copy];

  return v64;
}

- (void)_insertRestrictedBoolForKey:(id)key value:(id)value preferenc:(BOOL)preferenc
{
  preferencCopy = preferenc;
  v14[2] = *MEMORY[0x1E69E9840];
  restrictions = self->_restrictions;
  valueCopy = value;
  keyCopy = key;
  v10 = [(NSMutableDictionary *)restrictions objectForKey:@"restrictedBool"];
  v13[0] = @"value";
  v13[1] = @"preference";
  v14[0] = valueCopy;
  v11 = [MEMORY[0x1E696AD98] numberWithBool:preferencCopy];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

  [v10 setObject:v12 forKeyedSubscript:keyCopy];
}

- (id)installationWarnings
{
  v66 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 restrictedBoolForFeature:@"allowPhotoStream"];

  restrictions = [(MCRestrictionsPayload *)self restrictions];
  v7 = [MCRestrictionManager restrictedBoolForFeature:@"allowPhotoStream" withRestrictionsDictionary:restrictions];

  if (v5 != 2 && v7 == 2)
  {
    v10 = MCPLPhotoLibraryClass(v8);
    if (v10)
    {
      sharedPhotoLibrary = [v10 sharedPhotoLibrary];
      [sharedPhotoLibrary photoStreamAlbums];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v12 = v58 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
      v14 = v12;
      if (v13)
      {
        v15 = v13;
        v16 = *v56;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v56 != v16)
            {
              objc_enumerationMutation(v12);
            }

            if (![*(*(&v55 + 1) + 8 * i) isEmpty])
            {

              v14 = MCLocalizedString(@"INSTALL_WARNING_PHOTO_STREAM_RESTRICTION");
              v18 = MCLocalizedStringByDevice(@"INSTALL_WARNING_PHOTO_STREAM");
              v19 = [MCProfileWarning warningWithLocalizedTitle:v14 localizedBody:v18 isLongForm:0];
              [array addObject:v19];

              goto LABEL_17;
            }
          }

          v15 = [v12 countByEnumeratingWithState:&v55 objects:v65 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v14 = v12;
      }

LABEL_17:
    }

    else
    {
      v20 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v20, OS_LOG_TYPE_DEBUG, "Cannot load PLPhotoLibrary class. Not creating Photo Stream warning.", buf, 2u);
      }
    }
  }

  v21 = +[MCRestrictionManager sharedManager];
  v22 = [v21 restrictedBoolForFeature:@"allowCloudPhotoLibrary"];

  restrictions2 = [(MCRestrictionsPayload *)self restrictions];
  v24 = [MCRestrictionManager restrictedBoolForFeature:@"allowCloudPhotoLibrary" withRestrictionsDictionary:restrictions2];

  if (v22 != 2 && v24 == 2)
  {
    v53 = 0;
    v54 = 0;
    v52 = 0;
    v27 = MCPLManagedAssetClass(v25);
    v28 = MCPLPhotoLibraryClass(v27);
    if (v27 && v28)
    {
      sharedPhotoLibrary2 = [v28 sharedPhotoLibrary];
      [v27 countOfAssetsWithRequiredResourcesNotLocallyAvailableInLibrary:sharedPhotoLibrary2 outCount:&v54 photoCount:&v53 videoCount:&v52];

      v30 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v60 = v54;
        v61 = 2048;
        v62 = v53;
        v63 = 2048;
        v64 = v52;
        _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_DEBUG, "Photo library non-local assets: count:%lu photo:%lu video:%lu]", buf, 0x20u);
      }

      if (v54 < 2)
      {
        if (v53 == 1)
        {
          v40 = @"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_PHOTO_SINGULAR_DESTRUCTIVE";
        }

        else if (v52 == 1)
        {
          v40 = @"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_VIDEO_SINGULAR_DESTRUCTIVE";
        }

        else
        {
          v40 = @"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY";
        }

        v38 = MCLocalizedStringByDevice(v40);
      }

      else
      {
        v38 = MCLocalizedFormatByDevice(@"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_PHOTOS_VIDEOS_DESTRUCTIVE", v31, v32, v33, v34, v35, v36, v37, v54);
      }

      v41 = v38;
      v42 = MCLocalizedString(@"INSTALL_WARNING_CLOUD_PHOTO_LIBRARY_RESTRICTION");
      v43 = [MCProfileWarning warningWithLocalizedTitle:v42 localizedBody:v41 isLongForm:0];
      [array addObject:v43];
    }

    else
    {
      v39 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v39, OS_LOG_TYPE_DEBUG, "Cannot load PLManagedAssetClass or PLPhotoLibraryClass. Not creating Cloud Photo Library warning.", buf, 2u);
      }
    }
  }

  v44 = +[MCRestrictionManager sharedManager];
  v45 = [v44 restrictedBoolForFeature:@"allowPairedWatch"];

  restrictions3 = [(MCRestrictionsPayload *)self restrictions];
  v47 = [MCRestrictionManager restrictedBoolForFeature:@"allowPairedWatch" withRestrictionsDictionary:restrictions3];

  if (v45 != 2 && v47 == 2)
  {
    v48 = MCLocalizedString(@"INSTALL_WARNING_PAIRED_WATCH_RESTRICTION");
    v49 = MCLocalizedStringByDevice(@"INSTALL_WARNING_PAIRED_WATCH");
    v50 = [MCProfileWarning warningWithLocalizedTitle:v48 localizedBody:v49 isLongForm:0];
    [array addObject:v50];
  }

  return array;
}

- (id)filterForUserEnrollmentOutError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = +[MCRestrictionsPayload userEnrollmentAllowedKeysFilter];
  array = [MEMORY[0x1E695DF70] array];
  restrictions = self->_restrictions;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke;
  v16 = &unk_1E77D25A8;
  v7 = v4;
  v17 = v7;
  v8 = array;
  v18 = v8;
  [(NSMutableDictionary *)restrictions enumerateKeysAndObjectsUsingBlock:&v13];
  if ([v8 count])
  {
    [v8 sortUsingComparator:&__block_literal_global_745];
    v9 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      friendlyName = [(MCPayload *)self friendlyName];
      *buf = 138543618;
      v20 = friendlyName;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1A795B000, v10, OS_LOG_TYPE_INFO, "Payload “%{public}@” has restrictions that we are ignoring. They are: %{public}@", buf, 0x16u);
    }
  }

  return 0;
}

void __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
    v9 = [v7 setWithArray:v8];

    v10 = [MEMORY[0x1E695DF70] array];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke_2;
    v16 = &unk_1E77D2580;
    v17 = v9;
    v18 = v10;
    v11 = v10;
    v12 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:&v13];
    [v6 removeObjectsForKeys:{v11, v13, v14, v15, v16}];
    [*(a1 + 40) addObjectsFromArray:v11];
  }
}

void __57__MCRestrictionsPayload_filterForUserEnrollmentOutError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

@end