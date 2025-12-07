@interface MCDomainsPayload
+ (BOOL)isPatternValid:(id)valid forField:(id)field outError:(id *)error;
+ (id)invalidDomainPatternErrorWithPattern:(id)pattern field:(id)field;
+ (id)tooManyAppsErrorWithMaxCount:(id)count field:(id)field;
+ (id)tooManyDomainsErrorWithMaxCount:(id)count field:(id)field;
+ (id)typeStrings;
- (MCDomainsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
@end

@implementation MCDomainsPayload

+ (id)typeStrings
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.domains";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)invalidDomainPatternErrorWithPattern:(id)pattern field:(id)field
{
  v5 = MEMORY[0x1E696ABC0];
  fieldCopy = field;
  v14 = MCErrorArray(@"DOMAINS_INVALID_PATTERN_P_PATTERN", v7, v8, v9, v10, v11, v12, v13, pattern);
  v15 = [v5 MCErrorWithDomain:@"MCDomainsErrorDomain" code:38000 descriptionArray:v14 errorType:@"MCFatalError"];
  v16 = [MCPayload badFieldValueErrorWithField:fieldCopy underlyingError:v15];

  return v16;
}

+ (id)tooManyDomainsErrorWithMaxCount:(id)count field:(id)field
{
  v5 = MEMORY[0x1E696ABC0];
  fieldCopy = field;
  v14 = MCErrorArray(@"DOMAINS_TOO_MANY_DOMAIN_ENTRIES_P_MAX", v7, v8, v9, v10, v11, v12, v13, count);
  v15 = [v5 MCErrorWithDomain:@"MCDomainsErrorDomain" code:38001 descriptionArray:v14 errorType:@"MCFatalError"];
  v16 = [MCPayload badFieldValueErrorWithField:fieldCopy underlyingError:v15];

  return v16;
}

+ (id)tooManyAppsErrorWithMaxCount:(id)count field:(id)field
{
  v5 = MEMORY[0x1E696ABC0];
  fieldCopy = field;
  v14 = MCErrorArray(@"DOMAINS_TOO_MANY_APP_ENTRIES_P_MAX", v7, v8, v9, v10, v11, v12, v13, count);
  v15 = [v5 MCErrorWithDomain:@"MCDomainsErrorDomain" code:38001 descriptionArray:v14 errorType:@"MCFatalError"];
  v16 = [MCPayload badFieldValueErrorWithField:fieldCopy underlyingError:v15];

  return v16;
}

+ (BOOL)isPatternValid:(id)valid forField:(id)field outError:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  fieldCopy = field;
  if ([validCopy length])
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v10 = [validCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    v11 = [validCopy isEqualToString:v10];

    if (v11)
    {
      if (isPatternValid_forField_outError__onceToken != -1)
      {
        +[MCDomainsPayload isPatternValid:forField:outError:];
      }

      if ([validCopy rangeOfCharacterFromSet:isPatternValid_forField_outError__punctuation] == 0x7FFFFFFFFFFFFFFFLL)
      {
        pathComponents = [validCopy pathComponents];
        if (![pathComponents count] || (objc_msgSend(pathComponents, "objectAtIndexedSubscript:", 0), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", @"/"), v13, v14))
        {
          v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];
          goto LABEL_29;
        }

        lastObject = [pathComponents lastObject];
        v19 = [lastObject isEqualToString:@"/"];

        if (v19)
        {
          v20 = [pathComponents subarrayWithRange:{0, objc_msgSend(pathComponents, "count") - 1}];

          pathComponents = v20;
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        pathComponents = pathComponents;
        v21 = [pathComponents countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v39;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(pathComponents);
              }

              if (![*(*(&v38 + 1) + 8 * i) length])
              {
                v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];

                goto LABEL_29;
              }
            }

            v22 = [pathComponents countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v25 = [pathComponents objectAtIndexedSubscript:0];
        if (([v25 isEqualToString:@"*"] & 1) != 0 || (objc_msgSend(v25, "isEqualToString:", @"*.") & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"."))
        {
          goto LABEL_26;
        }

        if ([v25 length] >= 2)
        {
          v27 = [v25 substringWithRange:{0, 1}];
          if ([v27 isEqualToString:@"*"])
          {
            v28 = [v25 substringWithRange:{1, 1}];
            v29 = [v28 isEqualToString:@"."];

            if ((v29 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
          }

          if ([v25 rangeOfString:@":" options:{12, v38}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_26;
          }
        }

        v30 = [v25 rangeOfString:@":" options:{4, v38}];
        if (v30)
        {
          v31 = v30;
          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_40;
          }

          if (v30 != [v25 length] - 1 && objc_msgSend(v25, "rangeOfString:options:range:", @":", 0, 0, v31) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v32 = [v25 substringFromIndex:v31 + 1];
            decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
            invertedSet = [decimalDigitCharacterSet invertedSet];
            v35 = [v32 rangeOfCharacterFromSet:invertedSet];

            if (v35 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v36 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];
              v37 = v32;
              v15 = v36;

              goto LABEL_27;
            }

LABEL_40:
            v15 = 0;
            goto LABEL_30;
          }
        }

LABEL_26:
        v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy, v38];
LABEL_27:

LABEL_29:
        if (!v15)
        {
          goto LABEL_30;
        }

        goto LABEL_10;
      }
    }
  }

  v15 = [MCDomainsPayload invalidDomainPatternErrorWithPattern:validCopy field:fieldCopy];
  if (!v15)
  {
LABEL_30:
    v17 = 1;
    goto LABEL_31;
  }

LABEL_10:
  if (error)
  {
    v16 = v15;
    v17 = 0;
    *error = v15;
  }

  else
  {
    v17 = 0;
  }

LABEL_31:

  return v17;
}

uint64_t __53__MCDomainsPayload_isPatternValid_forField_outError___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v1 = isPatternValid_forField_outError__punctuation;
  isPatternValid_forField_outError__punctuation = v0;

  v2 = isPatternValid_forField_outError__punctuation;

  return [v2 addCharactersInString:@"@#?!&"];
}

- (MCDomainsPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v107 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v93.receiver = self;
  v93.super_class = MCDomainsPayload;
  v9 = [(MCPayload *)&v93 initWithDictionary:dictionaryCopy profile:profile outError:error];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_25;
  }

  v67 = v9;
  errorCopy = error;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v92 = 0;
  v64 = dictionaryCopy;
  v11 = [dictionaryCopy MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"WebDomains" isRequired:0 outError:&v92];
  v12 = v92;
  v72 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v11, "count")}];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v88 objects:v106 count:16];
  obj = v13;
  if (v14)
  {
    v15 = v14;
    v16 = *v89;
    while (2)
    {
      v17 = 0;
      v18 = v12;
      do
      {
        if (*v89 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = [MCDomainsCacheEntry normalizedPatternString:*(*(&v88 + 1) + 8 * v17)];
        v87 = v18;
        v20 = [MCDomainsPayload isPatternValid:v19 forField:@"WebDomains" outError:&v87];
        v12 = v87;

        if (!v20)
        {
          v21 = 0;
          v22 = 0;
          v63 = 0;
          v69 = obj;
          v70 = 0;
          dictionaryCopy = v64;
          v24 = dictionary2;
          v25 = dictionary;
          v10 = v67;
          goto LABEL_14;
        }

        [v72 addObject:v19];

        ++v17;
        v18 = v12;
      }

      while (v15 != v17);
      v13 = obj;
      v15 = [obj countByEnumeratingWithState:&v88 objects:v106 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (v12)
  {
    v21 = 0;
    v22 = 0;
    v70 = 0;
    v23 = 0;
    dictionaryCopy = v64;
    v24 = dictionary2;
    v25 = dictionary;
    v10 = v67;
    v26 = 0x1E695D000;
    errorCopy2 = errorCopy;
    if (!errorCopy)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (v12)
    {
      v28 = v12;
      *errorCopy2 = v12;
    }

    goto LABEL_19;
  }

  dictionaryCopy = v64;
  v24 = dictionary2;
  v25 = dictionary;
  v10 = v67;
  errorCopy2 = error;
  if (v13)
  {
    v104 = @"values";
    allObjects = [v72 allObjects];
    v105 = allObjects;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    [dictionary setObject:v34 forKeyedSubscript:@"managedWebDomains"];
  }

  v86 = 0;
  v23 = [v64 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"EmailDomains" isRequired:0 outError:&v86];
  v35 = v86;
  if (v35)
  {
    v12 = v35;
    v21 = 0;
    v22 = 0;
    v70 = 0;
    v26 = 0x1E695D000;
    if (!errorCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v23)
  {
    v102 = @"values";
    v103 = v23;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    [dictionary2 setObject:v36 forKeyedSubscript:@"managedEmailDomains"];
  }

  profile = [(MCPayload *)v67 profile];
  if ([profile isStub])
  {
  }

  else
  {
    mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
    isSupervised = [mEMORY[0x1E69AD420] isSupervised];

    if (!isSupervised)
    {
      v12 = 0;
      v29 = 0;
      v22 = 0;
      v21 = 0;
      v26 = 0x1E695D000;
      goto LABEL_20;
    }
  }

  v63 = v23;
  v85 = 0;
  v40 = [v64 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"SafariPasswordAutoFillDomains" isRequired:0 outError:&v85];
  v12 = v85;
  v69 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v40, "count")}];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v41 = v40;
  v42 = [v41 countByEnumeratingWithState:&v81 objects:v101 count:16];
  v70 = v41;
  if (v42)
  {
    v43 = v42;
    v44 = *v82;
    while (2)
    {
      v45 = 0;
      v46 = v12;
      do
      {
        if (*v82 != v44)
        {
          objc_enumerationMutation(v70);
        }

        v47 = [MCDomainsCacheEntry normalizedPatternString:*(*(&v81 + 1) + 8 * v45)];
        v80 = v46;
        v48 = [MCDomainsPayload isPatternValid:v47 forField:@"SafariPasswordAutoFillDomains" outError:&v80];
        v12 = v80;

        if (!v48)
        {
          v21 = 0;
          v22 = 0;
          v19 = v70;
          dictionaryCopy = v64;
          v24 = dictionary2;
          v25 = dictionary;
          v10 = v67;
          goto LABEL_47;
        }

        [v69 addObject:v47];

        ++v45;
        v46 = v12;
      }

      while (v43 != v45);
      v41 = v70;
      v43 = [v70 countByEnumeratingWithState:&v81 objects:v101 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  if (v12)
  {
    v21 = 0;
    v22 = 0;
    dictionaryCopy = v64;
    v24 = dictionary2;
    v25 = dictionary;
    v10 = v67;
    goto LABEL_15;
  }

  dictionaryCopy = v64;
  v24 = dictionary2;
  v25 = dictionary;
  errorCopy2 = errorCopy;
  v23 = v63;
  if (v41)
  {
    v99 = @"values";
    allObjects2 = [v69 allObjects];
    v100 = allObjects2;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    [dictionary setObject:v50 forKeyedSubscript:@"allowedSafariPasswordAutoFillDomains"];
  }

  v79 = 0;
  v22 = [v64 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"CrossSiteTrackingPreventionRelaxedDomains" isRequired:0 outError:&v79];
  v51 = v79;
  v10 = v67;
  if (!v51)
  {
    if ([v22 count] >= 0xB)
    {
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:10];
      v12 = [MCDomainsPayload tooManyDomainsErrorWithMaxCount:v52 field:@"CrossSiteTrackingPreventionRelaxedDomains"];

      if (v12)
      {
        goto LABEL_53;
      }
    }

    v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v22, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v22 = v22;
    v62 = [v22 countByEnumeratingWithState:&v75 objects:v98 count:16];
    if (v62)
    {
      v12 = 0;
      v61 = *v76;
      while (2)
      {
        v53 = 0;
        v54 = v12;
        do
        {
          if (*v76 != v61)
          {
            objc_enumerationMutation(v22);
          }

          v55 = [MCDomainsCacheEntry normalizedPatternString:*(*(&v75 + 1) + 8 * v53), v61];
          v74 = v54;
          v56 = [MCDomainsPayload isPatternValid:v55 forField:@"CrossSiteTrackingPreventionRelaxedDomains" outError:&v74];
          v12 = v74;

          if (!v56)
          {

            goto LABEL_66;
          }

          [v19 addObject:v55];

          ++v53;
          v54 = v12;
        }

        while (v62 != v53);
        v62 = [v22 countByEnumeratingWithState:&v75 objects:v98 count:16];
        if (v62)
        {
          continue;
        }

        break;
      }

LABEL_66:

      v25 = dictionary;
      v10 = v67;
      v24 = dictionary2;
      if (v12)
      {
        v21 = 0;
LABEL_14:

LABEL_15:
        v26 = 0x1E695D000uLL;
        errorCopy2 = errorCopy;
        v23 = v63;
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (v22)
    {
      v96 = @"values";
      allObjects3 = [v19 allObjects];
      v97 = allObjects3;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      [v24 setObject:v58 forKeyedSubscript:@"crossSiteTrackingPreventionRelaxedDomains"];
    }

    v73 = 0;
    v21 = [v64 MCValidateAndRemoveArrayOfClass:objc_opt_class() withKey:@"CrossSiteTrackingPreventionRelaxedApps" isRequired:0 outError:&v73];
    v59 = v73;
    if (v59)
    {
      v12 = v59;
    }

    else if ([v21 count] < 0xB || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 10), v60 = objc_claimAutoreleasedReturnValue(), dictionaryCopy = v64, +[MCDomainsPayload tooManyAppsErrorWithMaxCount:field:](MCDomainsPayload, "tooManyAppsErrorWithMaxCount:field:", v60, @"CrossSiteTrackingPreventionRelaxedApps"), v12 = objc_claimAutoreleasedReturnValue(), v60, !v12))
    {
      if (v21)
      {
        v94 = @"values";
        v95 = v21;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        [v24 setObject:v47 forKeyedSubscript:@"crossSiteTrackingPreventionRelaxedApps"];
        v12 = 0;
LABEL_47:
      }

      else
      {
        v12 = 0;
      }
    }

    goto LABEL_14;
  }

  v12 = v51;
LABEL_53:
  v21 = 0;
  v26 = 0x1E695D000;
LABEL_16:

  if (errorCopy2)
  {
    goto LABEL_17;
  }

LABEL_19:
  v29 = v70;
LABEL_20:
  dictionary3 = [*(v26 + 3984) dictionary];
  if ([v24 count])
  {
    [(NSDictionary *)dictionary3 setObject:v24 forKeyedSubscript:@"intersection"];
  }

  if ([v25 count])
  {
    [(NSDictionary *)dictionary3 setObject:v25 forKeyedSubscript:@"union"];
  }

  restrictions = v10->_restrictions;
  v10->_restrictions = dictionary3;

LABEL_25:
  return v10;
}

- (id)stubDictionary
{
  v15.receiver = self;
  v15.super_class = MCDomainsPayload;
  stubDictionary = [(MCPayload *)&v15 stubDictionary];
  restrictions = [(MCDomainsPayload *)self restrictions];
  v5 = [MCRestrictionManager unionValuesForFeature:@"managedWebDomains" withRestrictionsDictionary:restrictions];

  if (v5)
  {
    [stubDictionary setObject:v5 forKeyedSubscript:@"WebDomains"];
  }

  restrictions2 = [(MCDomainsPayload *)self restrictions];
  v7 = [MCRestrictionManager intersectedValuesForFeature:@"managedEmailDomains" withRestrictionsDictionary:restrictions2];

  if (v7)
  {
    [stubDictionary setObject:v7 forKeyedSubscript:@"EmailDomains"];
  }

  restrictions3 = [(MCDomainsPayload *)self restrictions];
  v9 = [MCRestrictionManager unionValuesForFeature:@"allowedSafariPasswordAutoFillDomains" withRestrictionsDictionary:restrictions3];

  if (v9)
  {
    [stubDictionary setObject:v9 forKeyedSubscript:@"SafariPasswordAutoFillDomains"];
  }

  restrictions4 = [(MCDomainsPayload *)self restrictions];
  v11 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedDomains" withRestrictionsDictionary:restrictions4];

  if (v11)
  {
    [stubDictionary setObject:v11 forKeyedSubscript:@"CrossSiteTrackingPreventionRelaxedDomains"];
  }

  restrictions5 = [(MCDomainsPayload *)self restrictions];
  v13 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedApps" withRestrictionsDictionary:restrictions5];

  if (v13)
  {
    [stubDictionary setObject:v13 forKeyedSubscript:@"CrossSiteTrackingPreventionRelaxedApps"];
  }

  return stubDictionary;
}

- (id)payloadDescriptionKeyValueSections
{
  v3 = objc_opt_new();
  restrictions = [(MCDomainsPayload *)self restrictions];
  v5 = [MCRestrictionManager unionValuesForFeature:@"managedWebDomains" withRestrictionsDictionary:restrictions];

  if ([v5 count])
  {
    v6 = MCLocalizedString(@"MANAGED_SAFARI_WEB_DOMAINS");
    v7 = [MCKeyValueSection sectionWithLocalizedArray:v5 title:v6 footer:0];

    [v3 addObject:v7];
  }

  restrictions2 = [(MCDomainsPayload *)self restrictions];
  v9 = [MCRestrictionManager intersectedValuesForFeature:@"managedEmailDomains" withRestrictionsDictionary:restrictions2];

  if ([v9 count])
  {
    v10 = MCLocalizedString(@"UNMARKED_EMAIL_DOMAINS");
    v11 = [MCKeyValueSection sectionWithLocalizedArray:v9 title:v10 footer:0];

    [v3 addObject:v11];
  }

  restrictions3 = [(MCDomainsPayload *)self restrictions];
  v13 = [MCRestrictionManager unionValuesForFeature:@"allowedSafariPasswordAutoFillDomains" withRestrictionsDictionary:restrictions3];

  if ([v13 count])
  {
    v14 = MCLocalizedString(@"SAFARI_PASSWORD_AUTOFILL_DOMAINS");
    v15 = [MCKeyValueSection sectionWithLocalizedArray:v13 title:v14 footer:0];

    [v3 addObject:v15];
  }

  restrictions4 = [(MCDomainsPayload *)self restrictions];
  v17 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedDomains" withRestrictionsDictionary:restrictions4];

  if ([v17 count])
  {
    v18 = MCLocalizedString(@"CROSS_SITE_TRACKING_PREVENTION_RELAXED_DOMAINS");
    v19 = [MCKeyValueSection sectionWithLocalizedArray:v17 title:v18 footer:0];

    [v3 addObject:v19];
  }

  restrictions5 = [(MCDomainsPayload *)self restrictions];
  v21 = [MCRestrictionManager intersectedValuesForFeature:@"crossSiteTrackingPreventionRelaxedApps" withRestrictionsDictionary:restrictions5];

  if ([v21 count])
  {
    v22 = MCLocalizedString(@"CROSS_SITE_TRACKING_PREVENTION_RELAXED_APPS");
    v23 = [MCKeyValueSection sectionWithLocalizedArray:v21 title:v22 footer:0];

    [v3 addObject:v23];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
}

@end