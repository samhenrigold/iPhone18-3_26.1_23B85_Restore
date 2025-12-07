@interface _LSStringLocalizer
+ (BOOL)useLegacyLocalizationListForPlatform:(unsigned int)platform sdkVersion:(unsigned int)version;
+ (NSArray)preferredLocalizationsForXCTests;
+ (NSString)missingLocalizationPlaceholder;
+ (_LSStringLocalizer)coreTypesLocalizer;
+ (id)localizedStringForCanonicalString:(id)string preferredLocalizations:(id)localizations context:(LSContext *)context;
+ (id)localizedStringsForCanonicalString:(id)string context:(LSContext *)context;
+ (id)newFrameworkBundleLocalizer;
+ (void)findKeysToLocalizeInInfoDictionary:(id)dictionary forArrayKey:(__CFString *)key stringKeys:(id)keys localizedKeys:(id)localizedKeys;
+ (void)gatherLocalizedStringsForCFBundle:(__CFBundle *)bundle infoDictionary:(id)dictionary domains:(unsigned int)domains delegatesMightBeMainBundle:(BOOL)mainBundle legacyLocalizationList:(BOOL)list;
+ (void)gatherLocalizedStringsForLSBundleProvider:(id)provider infoDictionary:(id)dictionary domains:(unsigned int)domains delegatesMightBeMainBundle:(BOOL)bundle legacyLocalizationList:(BOOL)list;
+ (void)newFrameworkBundleLocalizer;
+ (void)setPreferredLocalizationsForXCTests:(id)tests;
- (_LSStringLocalizer)initWithBundleProvider:(id)provider stringsFile:(id)file legacyLocalizationList:(BOOL)list;
- (_LSStringLocalizer)initWithBundleURL:(id)l stringsFile:(id)file checkMainBundle:(BOOL)bundle legacyLocalizationList:(BOOL)list;
- (_LSStringLocalizer)initWithCFBundle:(__CFBundle *)bundle stringsFile:(id)file legacyLocalizationList:(BOOL)list;
- (_LSStringLocalizer)initWithDatabase:(id)database bundleUnit:(unsigned int)unit delegate:(unsigned int)delegate;
- (_LSStringLocalizer)initWithDatabase:(id)database pluginUnit:(unsigned int)unit;
- (id)debugDescription;
- (id)localizedStringDictionaryWithString:(id)string defaultValue:(id)value;
- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle localeCode:(id)code;
- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle preferredLocalizations:(id)localizations;
- (id)localizedStringWithString:(id)string preferredLocalizations:(id)localizations;
- (id)localizedStringsWithStrings:(id)strings preferredLocalizations:(id)localizations;
- (void)dealloc;
- (void)enumerateLocalizedStringsForKeys:(id)keys usingBlock:(id)block;
@end

@implementation _LSStringLocalizer

+ (id)newFrameworkBundleLocalizer
{
  v2 = _LSGetBundle(self, a2);
  if (!v2 || (v3 = [[_LSStringLocalizer alloc] initWithCFBundle:v2 stringsFile:@"Localized"]) == 0)
  {
    v3 = objc_alloc_init(_LSStringLocalizer);
    v4 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(_LSStringLocalizer *)v3];
    }
  }

  return v3;
}

+ (_LSStringLocalizer)coreTypesLocalizer
{
  if (+[_LSStringLocalizer coreTypesLocalizer]::once != -1)
  {
    +[_LSStringLocalizer coreTypesLocalizer];
  }

  v3 = +[_LSStringLocalizer coreTypesLocalizer]::result;

  return v3;
}

- (_LSStringLocalizer)initWithBundleURL:(id)l stringsFile:(id)file checkMainBundle:(BOOL)bundle legacyLocalizationList:(BOOL)list
{
  listCopy = list;
  bundleCopy = bundle;
  lCopy = l;
  fileCopy = file;
  v12 = objc_autoreleasePoolPush();
  v13 = v12;
  if (!lCopy || !bundleCopy)
  {
    if (!lCopy)
    {
      v19 = 0;
      goto LABEL_9;
    }

LABEL_7:
    v18 = [[_LSBundleProvider alloc] initWithURL:lCopy useCacheIfPossible:1];
    v19 = [(_LSStringLocalizer *)self initWithBundleProvider:v18 stringsFile:fileCopy legacyLocalizationList:listCopy];
    self = v18;
LABEL_9:

    v17 = v19;
    goto LABEL_10;
  }

  v14 = _LSGetMainBundleURL(v12);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

  v16 = [v14 isEqual:lCopy];

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = [(_LSStringLocalizer *)self initWithCFBundle:CFBundleGetMainBundle() stringsFile:fileCopy legacyLocalizationList:listCopy];
LABEL_10:
  objc_autoreleasePoolPop(v13);

  return v17;
}

- (_LSStringLocalizer)initWithCFBundle:(__CFBundle *)bundle stringsFile:(id)file legacyLocalizationList:(BOOL)list
{
  listCopy = list;
  fileCopy = file;
  v9 = [[_LSBundleProvider alloc] initWithCFBundle:bundle];
  v10 = [(_LSStringLocalizer *)self initWithBundleProvider:v9 stringsFile:fileCopy legacyLocalizationList:listCopy];

  return v10;
}

- (_LSStringLocalizer)initWithBundleProvider:(id)provider stringsFile:(id)file legacyLocalizationList:(BOOL)list
{
  listCopy = list;
  v63 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  fileCopy = file;
  v58.receiver = self;
  v58.super_class = _LSStringLocalizer;
  v11 = [(_LSStringLocalizer *)&v58 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_38;
  }

  objc_storeStrong(&v11->_bundleProvider, provider);
  v13 = [[_LSStringsFileContent alloc] initWithStringsFile:fileCopy];
  stringsContent = v12->_stringsContent;
  v12->_stringsContent = v13;

  v15 = objc_autoreleasePoolPush();
  bundleProvider = [(_LSStringLocalizer *)v12 bundleProvider];
  v17 = bundleProvider == 0;

  if (v17)
  {
    p_bundleLocalizations = &v12->_bundleLocalizations;
    if (!v12->_bundleLocalizations)
    {
      v19 = 0;
      goto LABEL_33;
    }

LABEL_25:
    v42 = *p_bundleLocalizations;
    v19 = @"en";
    goto LABEL_26;
  }

  bundleProvider2 = [(_LSStringLocalizer *)v12 bundleProvider];
  v19 = LSBundleProvider::CFBundleCopyDevelopmentRegion([bundleProvider2 provider]);

  if ([fileCopy isEqual:@"InfoPlist"])
  {
    bundleProvider3 = [(_LSStringLocalizer *)v12 bundleProvider];
    infoDictionary = [bundleProvider3 infoDictionary];
    v22 = infoDictionary == 0;

    if (v22)
    {
      if (![(__CFString *)providerCopy cfBundleRef:1 reason:@"Need to load non-Info.Plist file"])
      {
        goto LABEL_8;
      }

      bundleProvider4 = _CFBundleCopyInfoPlistURL();
      if (!bundleProvider4)
      {
        goto LABEL_7;
      }

      v40 = [_LSLazyPropertyList lazyPropertyListWithPropertyListURL:bundleProvider4];
      unlocalizedInfoPlistStrings = v12->_unlocalizedInfoPlistStrings;
      v12->_unlocalizedInfoPlistStrings = v40;
    }

    else
    {
      bundleProvider4 = [(_LSStringLocalizer *)v12 bundleProvider];
      unlocalizedInfoPlistStrings = [bundleProvider4 infoDictionary];
      v25 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:?];
      v26 = v12->_unlocalizedInfoPlistStrings;
      v12->_unlocalizedInfoPlistStrings = v25;
    }

LABEL_7:
  }

LABEL_8:
  bundleProvider5 = [(_LSStringLocalizer *)v12 bundleProvider];
  v28 = LSBundleProvider::CFBundleCopyBundleLocalizations([bundleProvider5 provider]);
  p_bundleLocalizations = &v12->_bundleLocalizations;
  bundleLocalizations = v12->_bundleLocalizations;
  v12->_bundleLocalizations = v28;

  if (listCopy)
  {
    if (v19)
    {
      v31 = [*p_bundleLocalizations containsObject:v19];
      if (v31)
      {
        v32 = _LSDefaultLog(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v60 = providerCopy;
          _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_DEFAULT, "Applying legacy localization list behavior to bundle %@", buf, 0xCu);
        }

        bundleProvider6 = [(_LSStringLocalizer *)v12 bundleProvider];
        bundleURL = [bundleProvider6 bundleURL];
        Unique = _CFBundleCreateUnique();

        if (Unique)
        {
          v37 = MEMORY[0x1865D5B20](Unique, 1);
          v38 = [v37 copy];
          v39 = *p_bundleLocalizations;
          *p_bundleLocalizations = v38;

          CFRelease(Unique);
        }

        else
        {
          v41 = _LSDefaultLog(v36);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            [_LSStringLocalizer initWithBundleProvider:v41 stringsFile:? legacyLocalizationList:?];
          }
        }
      }
    }
  }

  v42 = *p_bundleLocalizations;
  if (!*p_bundleLocalizations)
  {
    goto LABEL_33;
  }

  if (!v19)
  {
    goto LABEL_25;
  }

LABEL_26:
  v43 = [v42 indexOfObject:v19];
  v45 = v43;
  if (v43)
  {
    if (v43 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = _LSDefaultLog(0x7FFFFFFFFFFFFFFFLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        bundleProvider7 = [(_LSStringLocalizer *)v12 bundleProvider];
        bundleURL2 = [bundleProvider7 bundleURL];
        *buf = 138543619;
        v60 = v19;
        v61 = 2113;
        v62 = bundleURL2;
        _os_log_error_impl(&dword_18162D000, v46, OS_LOG_TYPE_ERROR, "LSStringLocalizer development region %{public}@ not found in localizations available for bundle %{private}@", buf, 0x16u);
      }
    }

    else
    {
      v46 = [*p_bundleLocalizations mutableCopy];
      [v46 removeObjectAtIndex:v45];
      [v46 insertObject:v19 atIndex:0];
      v49 = [v46 copy];
      v50 = *p_bundleLocalizations;
      *p_bundleLocalizations = v49;
    }
  }

  v51 = *p_bundleLocalizations;
  if (*p_bundleLocalizations)
  {
    goto LABEL_34;
  }

LABEL_33:
  v52 = *p_bundleLocalizations;
  *p_bundleLocalizations = MEMORY[0x1E695E0F0];

  v51 = *p_bundleLocalizations;
  if (*p_bundleLocalizations)
  {
LABEL_34:
    v53 = [__LSDefaultsGetSharedInstance(v43 v44)];
    v54 = CFBundleCopyLocalizationsForPreferences(v51, v53);
    v55 = [(__CFArray *)v54 copy];
    bundleLocalizationsWithDefaultPrefLocs = v12->_bundleLocalizationsWithDefaultPrefLocs;
    v12->_bundleLocalizationsWithDefaultPrefLocs = v55;
  }

  if (!v12->_bundleLocalizationsWithDefaultPrefLocs)
  {
    v12->_bundleLocalizationsWithDefaultPrefLocs = MEMORY[0x1E695E0F0];
  }

  objc_autoreleasePoolPop(v15);
LABEL_38:

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _LSStringLocalizer;
  [(_LSStringLocalizer *)&v2 dealloc];
}

- (id)localizedStringWithString:(id)string preferredLocalizations:(id)localizations
{
  stringCopy = string;
  localizationsCopy = localizations;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];
  }

  bundleProvider = [(_LSStringLocalizer *)self bundleProvider];
  cfBundleRef = [bundleProvider cfBundleRef];

  if (cfBundleRef)
  {
    bundleProvider2 = [(_LSStringLocalizer *)self bundleProvider];
    v12 = -[_LSStringLocalizer localizedStringWithString:inBundle:preferredLocalizations:](self, "localizedStringWithString:inBundle:preferredLocalizations:", stringCopy, [bundleProvider2 cfBundleRef], localizationsCopy);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)localizedStringsWithStrings:(id)strings preferredLocalizations:(id)localizations
{
  v27 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  localizationsCopy = localizations;
  v21 = stringsCopy;
  if (!stringsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"strings != nil"}];
  }

  context = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
  cfBundleRef = [(_LSBundleProvider *)self->_bundleProvider cfBundleRef];
  if (cfBundleRef)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = stringsCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [(_LSStringLocalizer *)self localizedStringWithString:v15 inBundle:cfBundleRef preferredLocalizations:localizationsCopy];
          if (v16)
          {
            [v9 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }
  }

  v17 = [v9 copy];

  objc_autoreleasePoolPop(context);

  return v17;
}

- (id)localizedStringDictionaryWithString:(id)string defaultValue:(id)value
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  valueCopy = value;
  v25 = stringCopy;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];
  }

  context = objc_autoreleasePoolPush();
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  bundleProvider = [(_LSStringLocalizer *)self bundleProvider];
  cfBundleRef = [bundleProvider cfBundleRef];

  if (cfBundleRef)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = self->_bundleLocalizations;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = *v27;
      v13 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [(_LSStringLocalizer *)self localizedStringWithString:v25 inBundle:cfBundleRef localeCode:v15];
          if (v16)
          {
            CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v13, v15);
            v18 = CanonicalLanguageIdentifierFromString;
            if (CanonicalLanguageIdentifierFromString)
            {
              v19 = CanonicalLanguageIdentifierFromString;
            }

            else
            {
              v19 = v15;
            }

            [v24 setObject:v16 forKeyedSubscript:v19];
          }
        }

        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }
  }

  if (valueCopy)
  {
    [v24 setObject:valueCopy forKeyedSubscript:@"LSDefaultLocalizedValue"];
  }

  objc_autoreleasePoolPop(context);

  return v24;
}

- (void)enumerateLocalizedStringsForKeys:(id)keys usingBlock:(id)block
{
  v101 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  blockCopy = block;
  v74 = keysCopy;
  selfCopy = self;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  context = objc_autoreleasePoolPush();
  v8 = [(NSArray *)self->_bundleLocalizations count];
  if (v8)
  {
    v10 = [__LSDefaultsGetSharedInstance(v8 v9)];
    v11 = v10 ^ 1;
    if (!keysCopy)
    {
      v11 = 1;
    }

    v77 = v10;
    if (v11)
    {
      v73 = 0;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [keysCopy mutableCopy];
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v14 = keysCopy;
      v15 = [v14 countByEnumeratingWithState:&v91 objects:v100 count:16];
      if (v15)
      {
        v16 = *v92;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v92 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = [*(*(&v91 + 1) + 8 * i) stringByAppendingString:@"#CH"];
            [v13 addObject:v18];
          }

          v15 = [v14 countByEnumeratingWithState:&v91 objects:v100 count:16];
        }

        while (v15);
      }

      v73 = [v13 copy];
      objc_autoreleasePoolPop(v12);
    }

    v19 = objc_autoreleasePoolPush();
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    bundleProvider = [(_LSStringLocalizer *)selfCopy bundleProvider];
    bundleURL = [bundleProvider bundleURL];
    path = [bundleURL path];
    v24 = [v20 initWithFormat:@"Reading localized string from %@", path];
    if (_LSLoggingQueue(void)::onceToken != -1)
    {
      [_LSStringLocalizer enumerateLocalizedStringsForKeys:usingBlock:];
    }

    v25 = _LSLoggingQueue(void)::logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_1;
    block[3] = &unk_1E6A1A830;
    v96 = v24;
    v26 = v24;
    dispatch_sync(v25, block);

    objc_autoreleasePoolPop(v19);
    v76 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v75 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = selfCopy->_bundleLocalizations;
    v70 = [(NSArray *)obj countByEnumeratingWithState:&v87 objects:v99 count:16];
    if (v70)
    {
      v68 = *v88;
      do
      {
        v27 = 0;
        do
        {
          if (*v88 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v71 = v27;
          v28 = *(*(&v87 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = v73;
          if (!v73)
          {
            v30 = v74;
          }

          if (!v74)
          {
            v30 = 0;
          }

          v31 = v30;
          stringsContent = selfCopy->_stringsContent;
          bundleProvider2 = [(_LSStringLocalizer *)selfCopy bundleProvider];
          v34 = -[_LSStringsFileContent uncheckedObjectsForKeys:forLocaleCode:fromBundle:cacheLocalizations:](stringsContent, v31, v28, [bundleProvider2 cfBundleRef], selfCopy->_bundleLocalizationsWithDefaultPrefLocs);

          if (v34)
          {
            v35 = v74 != 0;
          }

          else
          {
            v35 = 1;
          }

          if (!v35)
          {
            v36 = MEMORY[0x1E695DFD8];
            allKeys = [v34 allKeys];
            v38 = allKeys;
            if (allKeys)
            {
              v39 = allKeys;
            }

            else
            {
              v39 = MEMORY[0x1E695E0F0];
            }

            v74 = [v36 setWithArray:v39];
          }

          objc_autoreleasePoolPop(v29);
          if (v34)
          {
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v40 = v74;
            v41 = [v40 countByEnumeratingWithState:&v83 objects:v98 count:16];
            if (!v41)
            {
              goto LABEL_54;
            }

            v42 = *v84;
            while (1)
            {
              for (j = 0; j != v41; ++j)
              {
                if (*v84 != v42)
                {
                  objc_enumerationMutation(v40);
                }

                v44 = *(*(&v83 + 1) + 8 * j);
                v45 = objc_autoreleasePoolPush();
                if (v77 && ([v44 stringByAppendingString:@"#CH"], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "objectForKeyedSubscript:", v46), v47 = objc_claimAutoreleasedReturnValue(), v46, v47) || (objc_msgSend(v34, "objectForKeyedSubscript:", v44), (v47 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  if (!_NSIsNSString())
                  {
                    goto LABEL_52;
                  }

                  v48 = [v76 objectForKeyedSubscript:v44];
                  if (!v48)
                  {
                    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    [v76 setObject:v48 forKeyedSubscript:v44];
                  }

                  [v48 setObject:v47 forKeyedSubscript:v28];
                }

                else
                {
                  v48 = [v75 objectForKeyedSubscript:v44];
                  if (!v48)
                  {
                    v48 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                    [v75 setObject:v48 forKeyedSubscript:v44];
                  }

                  [v48 addObject:v28];
                  v47 = 0;
                }

LABEL_52:
                objc_autoreleasePoolPop(v45);
              }

              v41 = [v40 countByEnumeratingWithState:&v83 objects:v98 count:16];
              if (!v41)
              {
LABEL_54:

                break;
              }
            }
          }

          v27 = v71 + 1;
        }

        while (v71 + 1 != v70);
        v70 = [(NSArray *)obj countByEnumeratingWithState:&v87 objects:v99 count:16];
      }

      while (v70);
    }

    if (_LSLoggingQueue(void)::onceToken != -1)
    {
      [_LSStringLocalizer enumerateLocalizedStringsForKeys:usingBlock:];
    }

    dispatch_sync(_LSLoggingQueue(void)::logQueue, &__block_literal_global_205_0);
    v78 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v49 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v72 = v74;
    v50 = [v72 countByEnumeratingWithState:&v79 objects:v97 count:16];
    if (v50)
    {
      v51 = *v80;
LABEL_61:
      v52 = 0;
      while (1)
      {
        if (*v80 != v51)
        {
          objc_enumerationMutation(v72);
        }

        v53 = *(*(&v79 + 1) + 8 * v52);
        v54 = objc_autoreleasePoolPush();
        v55 = [v76 objectForKeyedSubscript:v53];
        v56 = v55;
        v57 = v78;
        if (v55)
        {
          v57 = v55;
        }

        v58 = v57;

        v59 = [v75 objectForKeyedSubscript:v53];
        v60 = v59;
        v61 = v59 ? v59 : v49;
        v62 = v61;

        LOBYTE(block[0]) = 0;
        blockCopy[2](blockCopy, v53, v58, v62, block);
        v63 = block[0];

        objc_autoreleasePoolPop(v54);
        if (v63)
        {
          break;
        }

        if (v50 == ++v52)
        {
          v50 = [v72 countByEnumeratingWithState:&v79 objects:v97 count:16];
          if (v50)
          {
            goto LABEL_61;
          }

          break;
        }
      }
    }

    keysCopy = v72;
  }

  objc_autoreleasePoolPop(context);
}

+ (NSString)missingLocalizationPlaceholder
{
  if (+[_LSStringLocalizer missingLocalizationPlaceholder]::once != -1)
  {
    +[_LSStringLocalizer missingLocalizationPlaceholder];
  }

  v3 = +[_LSStringLocalizer missingLocalizationPlaceholder]::result;

  return v3;
}

+ (BOOL)useLegacyLocalizationListForPlatform:(unsigned int)platform sdkVersion:(unsigned int)version
{
  if (platform - 1 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = dword_1817E9040[platform - 1];
  }

  return v4 > version;
}

+ (void)gatherLocalizedStringsForLSBundleProvider:(id)provider infoDictionary:(id)dictionary domains:(unsigned int)domains delegatesMightBeMainBundle:(BOOL)bundle legacyLocalizationList:(BOOL)list
{
  listCopy = list;
  domainsCopy = domains;
  v50[4] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  dictionaryCopy = dictionary;
  v14 = [[self alloc] initWithBundleProvider:providerCopy stringsFile:@"InfoPlist" legacyLocalizationList:listCopy];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__48;
  v47[4] = __Block_byref_object_dispose__48;
  v48 = 0;
  if (v14)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = v15;
    if (v32 && v15)
    {
      _LSStringLocalizerPrewarmAllLocalizations(v14);
      v17 = MEMORY[0x1E695DFA8];
      if (domainsCopy)
      {
        v19 = *MEMORY[0x1E695E4F8];
        v50[0] = *MEMORY[0x1E695E120];
        v50[1] = v19;
        v50[2] = @"NSMicrophoneUsageDescription";
        v50[3] = @"NSIdentityUsageDescription";
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
        v21 = [v17 setWithArray:v20];

        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __137___LSStringLocalizer_gatherLocalizedStringsForLSBundleProvider_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke;
        v45[3] = &unk_1E6A1E170;
        v18 = v21;
        v46 = v18;
        _LSBundleDisplayNameContextEnumerate(v45);
        [v16 setObject:v18 forKeyedSubscript:&stru_1EEF65710];
      }

      else
      {
        v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [v16 setObject:v18 forKeyedSubscript:&stru_1EEF65710];
      }

      if ((domainsCopy & 4) != 0)
      {
        v49 = *MEMORY[0x1E695E170];
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
        [self findKeysToLocalizeInInfoDictionary:dictionaryCopy forArrayKey:*MEMORY[0x1E695E128] stringKeys:v22 localizedKeys:v16];
      }

      if ((domainsCopy & 2) != 0)
      {
        v23 = UTTypeDescriptionKeys();
        [self findKeysToLocalizeInInfoDictionary:dictionaryCopy forArrayKey:@"UTExportedTypeDeclarations" stringKeys:v23 localizedKeys:v16];

        v24 = UTTypeDescriptionKeys();
        [self findKeysToLocalizeInInfoDictionary:dictionaryCopy forArrayKey:@"UTImportedTypeDeclarations" stringKeys:v24 localizedKeys:v16];
      }

      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __137___LSStringLocalizer_gatherLocalizedStringsForLSBundleProvider_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_2;
      v36 = &unk_1E6A1E1C0;
      v37 = v14;
      v25 = dictionaryCopy;
      v38 = v25;
      v41 = v47;
      v39 = providerCopy;
      selfCopy = self;
      bundleCopy = bundle;
      v44 = listCopy;
      v26 = v32;
      v40 = v26;
      [v16 enumerateKeysAndObjectsUsingBlock:&v33];
      if ([v26 count])
      {
        v27 = *MEMORY[0x1E695E120];
        v28 = [v26 objectForKeyedSubscript:*MEMORY[0x1E695E120]];
        v29 = v28;
        if (!v28 || ![v28 count])
        {
          if (_LSGetBooleanFromDict(v25, @"LSHasLocalizedDisplayName"))
          {
            v30 = [v26 objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];

            v29 = v30;
            [v26 setObject:v30 forKeyedSubscript:v27];
          }
        }

        v31 = [v26 copy];
        [v25 setObject:v31 forKeyedSubscript:@"_LSLocalizedStringsDictionary"];
      }
    }
  }

  _Block_object_dispose(v47, 8);
}

+ (void)gatherLocalizedStringsForCFBundle:(__CFBundle *)bundle infoDictionary:(id)dictionary domains:(unsigned int)domains delegatesMightBeMainBundle:(BOOL)mainBundle legacyLocalizationList:(BOOL)list
{
  listCopy = list;
  domainsCopy = domains;
  v47[4] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v12 = objc_autoreleasePoolPush();
  v13 = [[self alloc] initWithCFBundle:bundle stringsFile:@"InfoPlist" legacyLocalizationList:listCopy];
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__48;
  v44[4] = __Block_byref_object_dispose__48;
  v45 = 0;
  if (v13)
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v14;
    if (v31 && v14)
    {
      _LSStringLocalizerPrewarmAllLocalizations(v13);
      v16 = MEMORY[0x1E695DFA8];
      if (domainsCopy)
      {
        v18 = *MEMORY[0x1E695E4F8];
        v47[0] = *MEMORY[0x1E695E120];
        v47[1] = v18;
        v47[2] = @"NSMicrophoneUsageDescription";
        v47[3] = @"NSIdentityUsageDescription";
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
        v20 = [v16 setWithArray:v19];

        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __129___LSStringLocalizer_gatherLocalizedStringsForCFBundle_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke;
        v42[3] = &unk_1E6A1E170;
        v17 = v20;
        v43 = v17;
        _LSBundleDisplayNameContextEnumerate(v42);
        [v15 setObject:v17 forKeyedSubscript:&stru_1EEF65710];
      }

      else
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [v15 setObject:v17 forKeyedSubscript:&stru_1EEF65710];
      }

      if ((domainsCopy & 4) != 0)
      {
        v46 = *MEMORY[0x1E695E170];
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
        [self findKeysToLocalizeInInfoDictionary:dictionaryCopy forArrayKey:*MEMORY[0x1E695E128] stringKeys:v21 localizedKeys:v15];
      }

      if ((domainsCopy & 2) != 0)
      {
        v22 = UTTypeDescriptionKeys();
        [self findKeysToLocalizeInInfoDictionary:dictionaryCopy forArrayKey:@"UTExportedTypeDeclarations" stringKeys:v22 localizedKeys:v15];

        v23 = UTTypeDescriptionKeys();
        [self findKeysToLocalizeInInfoDictionary:dictionaryCopy forArrayKey:@"UTImportedTypeDeclarations" stringKeys:v23 localizedKeys:v15];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __129___LSStringLocalizer_gatherLocalizedStringsForCFBundle_infoDictionary_domains_delegatesMightBeMainBundle_legacyLocalizationList___block_invoke_2;
      v33[3] = &unk_1E6A1E1E8;
      v34 = v13;
      v24 = dictionaryCopy;
      v35 = v24;
      v37 = v44;
      bundleCopy = bundle;
      selfCopy = self;
      mainBundleCopy = mainBundle;
      v41 = listCopy;
      v25 = v31;
      v36 = v25;
      [v15 enumerateKeysAndObjectsUsingBlock:v33];
      if ([v25 count])
      {
        v26 = *MEMORY[0x1E695E120];
        v27 = [v25 objectForKeyedSubscript:*MEMORY[0x1E695E120]];
        v28 = v27;
        if (!v27 || ![v27 count])
        {
          if (_LSGetBooleanFromDict(v24, @"LSHasLocalizedDisplayName"))
          {
            v29 = [v25 objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];

            v28 = v29;
            [v25 setObject:v29 forKeyedSubscript:v26];
          }
        }

        v30 = [v25 copy];
        [v24 setObject:v30 forKeyedSubscript:@"_LSLocalizedStringsDictionary"];
      }
    }
  }

  _Block_object_dispose(v44, 8);

  objc_autoreleasePoolPop(v12);
}

- (id)debugDescription
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  bundleProvider = [(_LSStringLocalizer *)self bundleProvider];
  bundleURL = [bundleProvider bundleURL];
  if (bundleURL)
  {
    bundleProvider2 = [(_LSStringLocalizer *)self bundleProvider];
    bundleURL2 = [bundleProvider2 bundleURL];
    lastPathComponent = [bundleURL2 lastPathComponent];
  }

  else
  {
    lastPathComponent = @"(no bundle)";
  }

  v11 = [(_LSStringsFileContent *)self->_stringsContent debugDescription];
  v12 = [v5 stringWithFormat:@"<%@ %p> { '%@' %@ }", v7, self, lastPathComponent, v11];;

  if (bundleURL)
  {
  }

  return v12;
}

- (_LSStringLocalizer)initWithDatabase:(id)database bundleUnit:(unsigned int)unit delegate:(unsigned int)delegate
{
  v5 = *&delegate;
  v6 = *&unit;
  v19 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  v17 = 0;
  if (_LSBundleCopyNode(databaseCopy, v6, v5, 0, &v17))
  {
    v9 = [(_LSStringLocalizer *)self init];
  }

  else
  {
    v10 = _LSBundleGet(databaseCopy, v6);
    if (v10)
    {
      v11 = *(v10 + 20);
      v12 = *(v10 + 76);
      v18[0] = *(v10 + 60);
      v18[1] = v12;
      DYLDVersion = _LSVersionNumberGetDYLDVersion(v18);
    }

    else
    {
      v11 = 0;
      DYLDVersion = 0;
    }

    v14 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:v11 sdkVersion:DYLDVersion];
    v15 = [v17 URL];
    v9 = [(_LSStringLocalizer *)self initWithBundleURL:v15 stringsFile:@"InfoPlist" legacyLocalizationList:v14];
  }

  return v9;
}

- (_LSStringLocalizer)initWithDatabase:(id)database pluginUnit:(unsigned int)unit
{
  v4 = *&unit;
  v18 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  v7 = _LSGetPlugin(databaseCopy, v4);
  v8 = v7;
  if (v7 && *v7 && (v9 = *(v7 + 20), v10 = *(v7 + 76), v17[0] = *(v7 + 60), v17[1] = v10, v11 = +[_LSStringLocalizer useLegacyLocalizationListForPlatform:sdkVersion:](_LSStringLocalizer, "useLegacyLocalizationListForPlatform:sdkVersion:", v9, _LSVersionNumberGetDYLDVersion(v17)), v12 = _LSAliasCopyResolvedNode(databaseCopy, *v8, 0, 0, 0), (v13 = v12) != 0) && ([v12 URL], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
  {
    v15 = [(_LSStringLocalizer *)self initWithBundleURL:v14 stringsFile:@"InfoPlist" legacyLocalizationList:v11];
  }

  else
  {
    v15 = [(_LSStringLocalizer *)self init];
  }

  return v15;
}

+ (NSArray)preferredLocalizationsForXCTests
{
  if ([__LSDefaultsGetSharedInstance(self a2)] && (v2 = getenv("LS_PREFERRED_LOCALIZATIONS")) != 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
    v4 = [v3 componentsSeparatedByString:@"||"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)setPreferredLocalizationsForXCTests:(id)tests
{
  testsCopy = tests;
  if ([__LSDefaultsGetSharedInstance(testsCopy v3)])
  {
    if (testsCopy)
    {
      v4 = [testsCopy componentsJoinedByString:@"||"];
      setenv("LS_PREFERRED_LOCALIZATIONS", [v4 UTF8String], 1);
    }

    else
    {
      unsetenv("LS_PREFERRED_LOCALIZATIONS");
    }
  }
}

+ (id)localizedStringForCanonicalString:(id)string preferredLocalizations:(id)localizations context:(LSContext *)context
{
  stringCopy = string;
  localizationsCopy = localizations;
  if (!stringCopy)
  {
    goto LABEL_6;
  }

  v10 = LaunchServices::CanonicalString::Find(context->db, stringCopy, v8);
  if (!v10)
  {
    goto LABEL_6;
  }

  LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v10);
  v12 = LaunchServices::LocalizedString::localizeUnsafely(LocalizedString, context->db, localizationsCopy);
  v13 = v12;
  if (v12 && [v12 isEqual:stringCopy])
  {

LABEL_6:
    v13 = 0;
  }

  return v13;
}

+ (id)localizedStringsForCanonicalString:(id)string context:(LSContext *)context
{
  stringCopy = string;
  if (stringCopy && (v7 = LaunchServices::CanonicalString::Find(context->db, stringCopy, v5)) != 0)
  {
    LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v7);
    v9 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(LocalizedString, context->db, 0, 0, 0);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle preferredLocalizations:(id)localizations
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  localizationsCopy = localizations;
  v12 = localizationsCopy;
  if (stringCopy)
  {
    if (!localizationsCopy)
    {
LABEL_4:
      v15 = self->_bundleLocalizationsWithDefaultPrefLocs;
      goto LABEL_6;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:1033 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];

    if (!v12)
    {
      goto LABEL_4;
    }
  }

  v13 = [__LSDefaultsGetSharedInstance(localizationsCopy v11)];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    goto LABEL_4;
  }

  v15 = CFBundleCopyLocalizationsForPreferences(self->_bundleLocalizations, v12);
LABEL_6:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v15;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = *v27;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [(_LSStringLocalizer *)self localizedStringWithString:stringCopy inBundle:bundle localeCode:*(*(&v26 + 1) + 8 * i)];
        v21 = v20;
        if (v20 && [(NSArray *)v20 length])
        {
          v23 = v16;
          goto LABEL_20;
        }
      }

      v17 = [(NSArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v22 = [(_LSLazyPropertyList *)self->_unlocalizedInfoPlistStrings objectForKey:stringCopy ofClass:objc_opt_class()];
  v23 = v22;
  if (v22 && [(NSArray *)v22 length])
  {
    v23 = v23;
    v21 = v23;
  }

  else
  {
    v21 = 0;
  }

LABEL_20:

  return v21;
}

- (id)localizedStringWithString:(id)string inBundle:(__CFBundle *)bundle localeCode:(id)code
{
  stringCopy = string;
  codeCopy = code;
  v11 = codeCopy;
  v26 = codeCopy;
  if (stringCopy)
  {
    if (codeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:1074 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LSStringLocalizer.mm" lineNumber:1075 description:{@"Invalid parameter not satisfying: %@", @"localeCode != nil"}];

LABEL_3:
  v12 = objc_autoreleasePoolPush();
  v13 = CFBundleCopyBundleURL(bundle);
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  path = [(__CFURL *)v13 path];
  selfCopy = self;
  v17 = [v14 initWithFormat:@"Reading localized string from %@", path];
  v18 = stringCopy;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    [_LSStringLocalizer(Private) localizedStringWithString:inBundle:localeCode:];
  }

  v19 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_1;
  block[3] = &unk_1E6A1A830;
  v28 = v17;
  v20 = v17;
  dispatch_sync(v19, block);

  v21 = v18;
  objc_autoreleasePoolPop(v12);
  v22 = [(_LSStringsFileContent *)&selfCopy->_stringsContent->super.isa stringForString:v18 forLocale:v26 fromBundle:bundle cacheLocalizations:selfCopy->_bundleLocalizationsWithDefaultPrefLocs];
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    [_LSStringLocalizer enumerateLocalizedStringsForKeys:usingBlock:];
  }

  dispatch_sync(_LSLoggingQueue(void)::logQueue, &__block_literal_global_205_0);

  return v22;
}

+ (void)findKeysToLocalizeInInfoDictionary:(id)dictionary forArrayKey:(__CFString *)key stringKeys:(id)keys localizedKeys:(id)localizedKeys
{
  v49 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  keysCopy = keys;
  localizedKeysCopy = localizedKeys;
  context = objc_autoreleasePoolPush();
  v32 = dictionaryCopy;
  v10 = objc_opt_class();
  v11 = [dictionaryCopy objectForKey:key];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v12 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v12;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v14)
  {
    v36 = *v44;
    do
    {
      v37 = v14;
      for (i = 0; i != v37; ++i)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v17 = [v16 objectForKeyedSubscript:{@"_LSBundleLibraryDelegate", context, v32}];
          v18 = v17;
          v19 = &stru_1EEF65710;
          if (v17)
          {
            v19 = v17;
          }

          v38 = v19;

          v20 = [localizedKeysCopy objectForKeyedSubscript:v38];
          if (!v20)
          {
            v20 = [MEMORY[0x1E695DFA8] set];
            [localizedKeysCopy setObject:v20 forKeyedSubscript:v38];
          }

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v21 = keysCopy;
          v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v22)
          {
            v23 = *v40;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                v25 = *(*(&v39 + 1) + 8 * j);
                v26 = objc_opt_class();
                v27 = [v16 objectForKey:v25];
                v28 = v27;
                if (v26)
                {
                  v29 = v27 == 0;
                }

                else
                {
                  v29 = 1;
                }

                if (v29)
                {
                  if (v27)
                  {
                    goto LABEL_30;
                  }
                }

                else
                {
                  isKindOfClass = objc_opt_isKindOfClass();
                  if (isKindOfClass)
                  {
LABEL_30:
                    [v20 addObject:v28];
                    goto LABEL_32;
                  }

                  v28 = 0;
                }

LABEL_32:
              }

              v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v22);
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
}

+ (void)newFrameworkBundleLocalizer
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  selfCopy = self;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "frameworkBundleLocalizer init fallback localizer %{private}@", &v2, 0xCu);
}

- (void)initWithBundleProvider:(os_log_t)log stringsFile:legacyLocalizationList:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[_LSStringLocalizer initWithBundleProvider:stringsFile:legacyLocalizationList:]";
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "could not create fresh unique bundle in %s", &v1, 0xCu);
}

@end