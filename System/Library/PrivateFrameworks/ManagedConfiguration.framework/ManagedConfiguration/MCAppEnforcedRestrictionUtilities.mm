@interface MCAppEnforcedRestrictionUtilities
+ (id)appUnavailableInRegionRestrictionForBundleID:(id)d;
+ (id)currentCountryCodes;
+ (id)enforcedRestrictionsForBundleID:(id)d restrictionPlistURL:(id)l countryCodes:(id)codes;
@end

@implementation MCAppEnforcedRestrictionUtilities

+ (id)enforcedRestrictionsForBundleID:(id)d restrictionPlistURL:(id)l countryCodes:(id)codes
{
  v37 = *MEMORY[0x1E69E9840];
  dCopy = d;
  lCopy = l;
  codesCopy = codes;
  v10 = objc_opt_new();
  if (!codesCopy)
  {
    codesCopy = +[MCAppEnforcedRestrictionUtilities currentCountryCodes];
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy];
  if (!v11)
  {
    v21 = _MCLogObjects;
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138543362;
    v35 = dCopy;
    v22 = "Couldn't find restriction plist for app “%{public}@”";
    v23 = v21;
    v24 = 12;
LABEL_23:
    _os_log_impl(&dword_1A795B000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    goto LABEL_24;
  }

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [v11 objectForKey:@"MCWhitelistedLocales"];
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_21:

    v25 = _MCLogObjects;
    if (!os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v22 = "Restriction plist is malformatted";
    v23 = v25;
    v24 = 2;
    goto LABEL_23;
  }

  v28 = codesCopy;
  v29 = dCopy;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          dCopy = v29;
          codesCopy = v28;
          goto LABEL_21;
        }

        [v12 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  dCopy = v29;
  codesCopy = v28;
  if ([v12 count] && (objc_msgSend(v12, "intersectsSet:", v28) & 1) == 0)
  {
    v20 = [MCAppEnforcedRestrictionUtilities appUnavailableInRegionRestrictionForBundleID:v29];
    [v10 addEntriesFromDictionary:v20];
  }

LABEL_24:
  if ([v10 count])
  {
    v26 = [v10 copy];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)currentCountryCodes
{
  v31 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];
  v4 = [MEMORY[0x1E695DFA8] set];
  v5 = v4;
  if (countryCode)
  {
    [v4 addObject:countryCode];
  }

  else
  {
    v6 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A795B000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve a valid country code from NSLocale! Attempting fallback.", buf, 2u);
    }

    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [preferredLanguages countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(preferredLanguages);
          }

          v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:*(*(&v20 + 1) + 8 * i)];
          countryCode2 = [v12 countryCode];

          if (countryCode2)
          {
            [v5 addObject:countryCode2];
          }
        }

        v9 = [preferredLanguages countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v9);
    }

    v14 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v25 = v5;
      v26 = 2114;
      v27 = preferredLanguages;
      _os_log_impl(&dword_1A795B000, v14, OS_LOG_TYPE_INFO, "Got country codes %{public}@ from languages %{public}@", buf, 0x16u);
    }
  }

  v15 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    localeIdentifier = [currentLocale localeIdentifier];
    *buf = 138543874;
    v25 = countryCode;
    v26 = 2114;
    v27 = localeIdentifier;
    v28 = 2114;
    v29 = currentLocale;
    _os_log_impl(&dword_1A795B000, v16, OS_LOG_TYPE_DEFAULT, "Reevaluating country code %{public}@ from locale identifier %{public}@ of currentLocale %{public}@", buf, 0x20u);
  }

  v18 = [v5 copy];

  return v18;
}

+ (id)appUnavailableInRegionRestrictionForBundleID:(id)d
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  dCopy = d;
  dictionary = [v3 dictionary];
  v8[0] = dCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  [dictionary MCSetUnionRestriction:@"blockedAppBundleIDs" values:v6];

  return dictionary;
}

@end