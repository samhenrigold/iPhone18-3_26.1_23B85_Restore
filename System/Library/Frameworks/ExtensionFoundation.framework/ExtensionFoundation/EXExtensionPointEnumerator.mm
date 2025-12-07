@interface EXExtensionPointEnumerator
+ (id)enumeratorIncludingPlaceHolders;
+ (id)translateAppexptDictionary:(id)dictionary definitionURL:(id)l isCatalyst:(BOOL)catalyst;
+ (void)enumerateExtensionPointsInDirectoryAtURL:(id)l block:(id)block;
- (BOOL)validateExtensionPointIdentifier:(id)identifier sdkDictionary:(id)dictionary;
- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)dictionary config:(id)config;
- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)dictionary urls:(id)urls config:(id)config;
- (id)flattenEXExtensionPointConfigurationInDictionary:(id)dictionary identifier:(id)identifier;
- (id)nextObject;
- (id)synthesizeNSExtensionKeysInDictionary:(id)dictionary identifier:(id)identifier;
- (id)translateXPCCacheDictionary:(id)dictionary;
- (void)nextObject;
@end

@implementation EXExtensionPointEnumerator

+ (id)enumeratorIncludingPlaceHolders
{
  v2 = _EXRegistrationLog(self);
  v3 = os_signpost_id_generate(v2);

  v5 = _EXRegistrationLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "extensionPointDefinitionEnumerator", "", buf, 2u);
  }

  extensionPointCacheFileURLs = [objc_opt_class() extensionPointCacheFileURLs];
  extensionPointDefinitionDirectoryURLs = [objc_opt_class() extensionPointDefinitionDirectoryURLs];
  v9 = [extensionPointCacheFileURLs arrayByAddingObjectsFromArray:extensionPointDefinitionDirectoryURLs];

  config = [objc_opt_class() config];
  [config setIncludePlaceholders:1];
  v11 = [[EXExtensionPointEnumerator alloc] initWithCacheURLs:v9 config:config];
  v12 = _EXRegistrationLog(v11);
  v13 = v12;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1847D1000, v13, OS_SIGNPOST_INTERVAL_END, v3, "extensionPointDefinitionEnumerator", "", v15, 2u);
  }

  return v11;
}

+ (void)enumerateExtensionPointsInDirectoryAtURL:(id)l block:(id)block
{
  v49[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  path = [lCopy path];
  v37 = [path containsString:@"/System/iOSSupport/"];

  v8 = *MEMORY[0x1E695DBB8];
  v49[0] = *MEMORY[0x1E695DB78];
  v49[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v31 = v9;
  v32 = lCopy;
  v11 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:v9 options:1 errorHandler:0];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    v33 = *v44;
    do
    {
      v15 = 0;
      v34 = v13;
      do
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * v15);
        pathExtension = [v16 pathExtension];
        v18 = [pathExtension caseInsensitiveCompare:@"appexpt"];

        if (!v18)
        {
          v36 = v15;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v16];
          v20 = v19;
          if (v19)
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v21 = [v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v40;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v40 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v39 + 1) + 8 * i);
                  v26 = [v20 _EX_dictionaryForKey:v25];
                  v27 = sdkDictionaryAdditions(v26);
                  v28 = [v27 objectForKeyedSubscript:v25];

                  if (v28)
                  {
                    v29 = [v26 _EX_dictionaryBySettingValuesForKeysWithDictionary:v28];

                    v26 = v29;
                  }

                  v30 = [self translateAppexptDictionary:v26 definitionURL:v16 isCatalyst:v37];

                  blockCopy[2](blockCopy, v25, v30);
                }

                v22 = [v20 countByEnumeratingWithState:&v39 objects:v47 count:16];
              }

              while (v22);
            }
          }

          v14 = v33;
          v13 = v34;
          v15 = v36;
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v13);
  }
}

- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)dictionary config:(id)config
{
  result = [(EXExtensionPointEnumerator *)self initWithSDKDictionary:dictionary urls:MEMORY[0x1E695E0F0] config:config];
  if (result)
  {
    result->_validateExtensionPoints = 1;
  }

  return result;
}

- (EXExtensionPointEnumerator)initWithSDKDictionary:(id)dictionary urls:(id)urls config:(id)config
{
  v91 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  urlsCopy = urls;
  configCopy = config;
  v83.receiver = self;
  v83.super_class = EXExtensionPointEnumerator;
  v11 = [(EXExtensionPointEnumerator *)&v83 init];
  if (v11)
  {
    obj = config;
    v58 = configCopy;
    v60 = urlsCopy;
    v12 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v59 = dictionaryCopy;
    v13 = dictionaryCopy;
    v14 = [v13 countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v14)
    {
      v15 = v14;
      v67 = *v80;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v80 != v67)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v79 + 1) + 8 * i);
          v18 = [v13 _EX_dictionaryForKey:{v17, obj}];
          v19 = [objc_opt_class() translateAppexptDictionary:v18 definitionURL:0 isCatalyst:0];

          if ([v19 count])
          {
            v20 = [(NSDictionary *)v12 _EX_dictionaryForKey:v17];
            v21 = v20;
            v22 = MEMORY[0x1E695E0F8];
            if (v20)
            {
              v22 = v20;
            }

            v23 = v22;

            v24 = [v23 _EX_dictionaryBySettingValuesForKeysWithDictionary:v19];

            [(NSDictionary *)v12 setObject:v24 forKey:v17];
          }

          else
          {
            v24 = _EXDefaultLog(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v85 = v17;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v15);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v25 = urlsCopy;
    v26 = [v25 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v76;
      v61 = *v76;
      v62 = v25;
      do
      {
        v29 = 0;
        v64 = v27;
        do
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v66 = v29;
          v30 = *(*(&v75 + 1) + 8 * v29);
          if ([v30 _EX_isDirectory])
          {
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __64__EXExtensionPointEnumerator_initWithSDKDictionary_urls_config___block_invoke;
            v73[3] = &unk_1E6E4E5B0;
            v74 = v12;
            [EXExtensionPointEnumerator enumerateExtensionPointsInDirectoryAtURL:v30 block:v73];
            v31 = v74;
            goto LABEL_45;
          }

          v32 = +[_EXDefaults sharedInstance];
          if ([v32 enforceXPCCacheCodeSigning])
          {
            path = [v30 path];
            v34 = [path hasSuffix:@"System/Library/xpc/extensions.plist"];

            if (v34)
            {
              v72 = 0;
              v35 = [MEMORY[0x1E695DF20] _EX_dictionaryWithSignedURL:v30 error:&v72];
              v36 = v72;
              v65 = v36;
              if (v35)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }
          }

          else
          {
          }

          v36 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v30];
          v35 = v36;
          v65 = 0;
          if (v36)
          {
LABEL_29:
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v37 = v35;
            v38 = [v37 countByEnumeratingWithState:&v68 objects:v88 count:16];
            if (v38)
            {
              v39 = v38;
              v63 = v35;
              v40 = *v69;
              do
              {
                for (j = 0; j != v39; ++j)
                {
                  if (*v69 != v40)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v42 = *(*(&v68 + 1) + 8 * j);
                  v43 = [v37 _EX_dictionaryForKey:v42];
                  v44 = [(EXExtensionPointEnumerator *)v11 translateXPCCacheDictionary:v43];

                  if ([v44 count])
                  {
                    v45 = [(NSDictionary *)v12 _EX_dictionaryForKey:v42];
                    v46 = v45;
                    v47 = MEMORY[0x1E695E0F8];
                    if (v45)
                    {
                      v47 = v45;
                    }

                    v48 = v47;

                    v49 = [v48 _EX_dictionaryBySettingValuesForKeysWithDictionary:v44];

                    [(NSDictionary *)v12 setObject:v49 forKey:v42];
                  }

                  else
                  {
                    v49 = _EXDefaultLog(0);
                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v85 = v42;
                    }
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v68 objects:v88 count:16];
              }

              while (v39);
              v28 = v61;
              v25 = v62;
              v35 = v63;
            }

LABEL_43:
            v31 = v65;
            goto LABEL_44;
          }

LABEL_25:
          v37 = _EXDefaultLog(v36);
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          *buf = 138543618;
          v85 = v30;
          v86 = 2114;
          v31 = v65;
          v87 = v65;
LABEL_44:

          v27 = v64;
LABEL_45:

          v29 = v66 + 1;
        }

        while (v66 + 1 != v27);
        v27 = [v25 countByEnumeratingWithState:&v75 objects:v89 count:16];
      }

      while (v27);
    }

    objc_storeStrong(&v11->_config, obj);
    extensionPoints = v11->_extensionPoints;
    v11->_extensionPoints = v12;
    v51 = v12;

    keyEnumerator = [(NSDictionary *)v11->_extensionPoints keyEnumerator];
    extensionPointsKeyEnumerator = v11->_extensionPointsKeyEnumerator;
    v11->_extensionPointsKeyEnumerator = keyEnumerator;

    v54 = objc_opt_new();
    currentExtensionPoint = v11->_currentExtensionPoint;
    v11->_currentExtensionPoint = v54;

    v11->_validateExtensionPoints = 1;
    dictionaryCopy = v59;
    urlsCopy = v60;
    configCopy = v58;
  }

  return v11;
}

void __64__EXExtensionPointEnumerator_initWithSDKDictionary_urls_config___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [*(a1 + 32) _EX_dictionaryForKey:v5];
    v8 = v7;
    v9 = MEMORY[0x1E695E0F8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v10 _EX_dictionaryBySettingValuesForKeysWithDictionary:v6];

    [*(a1 + 32) setObject:v11 forKey:v5];
  }

  else
  {
    v12 = _EXDefaultLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v5;
    }
  }
}

+ (id)translateAppexptDictionary:(id)dictionary definitionURL:(id)l isCatalyst:(BOOL)catalyst
{
  v17[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  lCopy = l;
  v8 = dictionaryCopy;
  v9 = v8;
  if (lCopy)
  {
    absoluteURL = [lCopy absoluteURL];
    path = [absoluteURL path];
    v9 = [v8 _EX_dictionaryBySettingObject:path forKey:@"EXExtensionPointDefinitionPath"];
  }

  v12 = v9;
  v13 = v12;
  if (v12)
  {
    v16 = @"EXNativeSDKVariant";
    v17[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

- (id)translateXPCCacheDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = _EXRegistrationLog(dictionaryCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [EXExtensionPointEnumerator translateXPCCacheDictionary:];
  }

  allKeys = [dictionaryCopy allKeys];
  firstObject = [allKeys firstObject];
  if ([firstObject hasPrefix:@"/System/"])
  {
  }

  else
  {
    v15 = +[_EXDefaults sharedInstance];
    if (([v15 appleInternal] & 1) == 0)
    {

      goto LABEL_20;
    }

    firstObject2 = [allKeys firstObject];
    v17 = [firstObject2 hasPrefix:@"/AppleInternal/System"];

    if (!v17)
    {
      v10 = MEMORY[0x1E695E0F8];
      goto LABEL_22;
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  firstObject = allKeys;
  v7 = [firstObject countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = allKeys;
    v9 = *v23;
    v10 = MEMORY[0x1E695E0F8];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(firstObject);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [dictionaryCopy _EX_objectForKey:v12 ofClass:objc_opt_class()];
        v14 = [v13 _EX_dictionaryBySettingObject:v12 forKey:@"EXExtensionPointDefinitionPath"];

        if (v14)
        {

          v26 = @"EXNativeSDKVariant";
          v27 = v14;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          firstObject = v14;
          goto LABEL_18;
        }
      }

      v8 = [firstObject countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_18:
    allKeys = v21;
    goto LABEL_21;
  }

LABEL_20:
  v10 = MEMORY[0x1E695E0F8];
LABEL_21:

LABEL_22:
  v19 = _EXRegistrationLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [EXExtensionPointEnumerator translateXPCCacheDictionary:];
  }

  return v10;
}

- (id)synthesizeNSExtensionKeysInDictionary:(id)dictionary identifier:(id)identifier
{
  v27[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v7 = [dictionaryCopy _EX_objectForKey:@"NSExtension" ofClass:objc_opt_class()];
  if (v7)
  {

LABEL_4:
    v9 = dictionaryCopy;
    goto LABEL_5;
  }

  v8 = [dictionaryCopy _EX_objectForKey:@"XPCService" ofClass:objc_opt_class()];

  if (v8)
  {
    goto LABEL_4;
  }

  v26[0] = @"NSExtensionPointIdentifier";
  v26[1] = @"NSExtensionPrincipalClassProhibited";
  v27[0] = identifierCopy;
  v27[1] = MEMORY[0x1E695E118];
  v26[2] = @"NSExtensionAttributes";
  v24[0] = @"NSExtensionPointName";
  v24[1] = @"NSExtensionPointVersion";
  v25[0] = identifierCopy;
  v25[1] = @"1.0";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v27[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];

  v22[0] = @"NSExtension";
  v22[1] = @"EXRequiresLegacyInfrastructure";
  v23[0] = v12;
  v23[1] = MEMORY[0x1E695E110];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v9 = [dictionaryCopy _EX_dictionaryBySettingValuesForKeysWithDictionary:v13];

  v15 = _EXRegistrationLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138543874;
    v17 = identifierCopy;
    v18 = 2114;
    v19 = dictionaryCopy;
    v20 = 2114;
    v21 = v9;
    _os_log_debug_impl(&dword_1847D1000, v15, OS_LOG_TYPE_DEBUG, "Extension point '%{public}@' - Synthesized NSExtension dictionary: %{public}@ -> %{public}@", &v16, 0x20u);
  }

LABEL_5:

  return v9;
}

- (id)flattenEXExtensionPointConfigurationInDictionary:(id)dictionary identifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v7 = [dictionaryCopy _EX_objectForKey:@"EXExtensionPointConfiguration" ofClass:objc_opt_class()];
  v8 = [dictionaryCopy _EX_dictionaryBySettingValuesForKeysWithDictionary:v7];
  v9 = _EXRegistrationLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543874;
    v12 = identifierCopy;
    v13 = 2114;
    v14 = dictionaryCopy;
    v15 = 2114;
    v16 = v8;
    _os_log_debug_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEBUG, "Extension point '%{public}@' - flattened EXExtensionPointConfiguration dictionary: %{public}@ -> %{public}@", &v11, 0x20u);
  }

  return v8;
}

- (BOOL)validateExtensionPointIdentifier:(id)identifier sdkDictionary:(id)dictionary
{
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  if (self->_validateExtensionPoints)
  {
    config = [(EXExtensionPointEnumerator *)self config];
    legacyExtensionPointAllowList = [config legacyExtensionPointAllowList];

    if (legacyExtensionPointAllowList)
    {
      v11 = [dictionaryCopy objectForKey:@"EXExtensionPointConfiguration"];
      if (v11)
      {

        goto LABEL_9;
      }

      v15 = [dictionaryCopy objectForKey:@"NSExtension"];

      if (!v15)
      {
        goto LABEL_9;
      }

      v16 = [legacyExtensionPointAllowList _EX_BOOLForKey:identifierCopy];
      v17 = +[_EXDefaults sharedInstance];
      if ([v17 appleInternal])
      {
        v18 = [dictionaryCopy _EX_stringForKey:@"EXExtensionPointDefinitionPath"];
        v19 = [v18 hasPrefix:@"/AppleInternal/"];
      }

      else
      {
        v19 = 0;
      }

      v21 = _EXRegistrationLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [EXExtensionPointEnumerator validateExtensionPointIdentifier:sdkDictionary:];
      }

      if ((v16 | v19))
      {
        goto LABEL_9;
      }

      v22 = +[_EXDefaults sharedInstance];
      enforceLegacyExtensionPointAllowList = [v22 enforceLegacyExtensionPointAllowList];

      if (enforceLegacyExtensionPointAllowList)
      {
        v25 = _EXRegistrationLog(v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          [EXExtensionPointEnumerator validateExtensionPointIdentifier:sdkDictionary:];
        }

        v12 = 0;
        goto LABEL_10;
      }

      v26 = +[_EXDefaults sharedInstance];
      enforceLegacyExtensionPointAllowList2 = [v26 enforceLegacyExtensionPointAllowList];

      if (enforceLegacyExtensionPointAllowList2)
      {
LABEL_9:
        v12 = 1;
LABEL_10:

        goto LABEL_11;
      }

      v13 = _EXRegistrationLog(v28);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [EXExtensionPointEnumerator validateExtensionPointIdentifier:sdkDictionary:];
      }
    }

    else
    {
      v13 = _EXRegistrationLog(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v29 = 0;
        _os_log_impl(&dword_1847D1000, v13, OS_LOG_TYPE_DEFAULT, "NO list of legacy extension points found. All extension points are considered valid... for now.", v29, 2u);
      }
    }

    goto LABEL_9;
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (id)nextObject
{
  selfCopy = self;
  v90[2] = *MEMORY[0x1E69E9840];
  ++nextObject_count;
  v3 = 56;
  if ([(NSMutableDictionary *)self->_currentSDKDictionaryForPlatform count])
  {
    goto LABEL_60;
  }

  nextObject = [(NSEnumerator *)selfCopy->_extensionPointsKeyEnumerator nextObject];
  if (!nextObject)
  {
    goto LABEL_60;
  }

  v5 = nextObject;
  v6 = 0;
  v7 = 0x1E695D000uLL;
  v71 = 56;
  while (1)
  {
    v8 = [(NSDictionary *)selfCopy->_extensionPoints _EX_dictionaryForKey:v5, v71];

    if (!v8)
    {
      goto LABEL_53;
    }

    if ([v8 count])
    {
      break;
    }

    if (![v8 count])
    {
      goto LABEL_53;
    }

LABEL_55:
    v6 = v8;
    if (!v5)
    {
      goto LABEL_59;
    }
  }

  v9 = objc_alloc_init(*(v7 + 3984));
  v73 = v8;
  v10 = [v8 _EX_dictionaryForKey:@"EXNativeSDKVariant"];
  if ([v10 _EX_BOOLForKey:@"EXPlaceholderExtensionPoint" defaultValue:0])
  {
    config = [(EXExtensionPointEnumerator *)selfCopy config];
    includePlaceholders = [config includePlaceholders];

    if ((includePlaceholders & 1) == 0)
    {
      nextObject2 = [(NSEnumerator *)selfCopy->_extensionPointsKeyEnumerator nextObject];

      v5 = v9;
      v8 = v73;
      goto LABEL_54;
    }
  }

  if (![(EXExtensionPointEnumerator *)selfCopy validateExtensionPointIdentifier:v5 sdkDictionary:v10])
  {

    v10 = 0;
  }

  v13 = [v10 objectForKey:@"EXSupportedPlatforms"];
  if (!v13)
  {
    v90[0] = @"EXSupportedPlatforms";
    v90[1] = @"EXSupportedPlatformsKey";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v13 = [v10 _EX_dictionaryForKeys:v14];
  }

  objc_opt_class();
  v72 = v13;
  if (objc_opt_isKindOfClass())
  {
    dictionary = [*(v7 + 3984) dictionary];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v80 objects:v89 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = v5;
      v20 = *v81;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v81 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [&unk_1EF29DF20 objectForKey:*(*(&v80 + 1) + 8 * i)];
          if (v22)
          {
            [dictionary setObject:v10 forKey:v22];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v18);
      v9 = dictionary;
      v5 = v19;
    }

    else
    {
      v9 = dictionary;
    }

LABEL_50:
    v7 = 0x1E695D000;
    goto LABEL_51;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary2 = [*(v7 + 3984) dictionary];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v16 = v13;
    v24 = [v16 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v24)
    {
      v25 = v24;
      v74 = v5;
      v26 = selfCopy;
      v27 = *v77;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          v29 = dictionary2;
          if (*v77 != v27)
          {
            objc_enumerationMutation(v16);
          }

          v30 = *(*(&v76 + 1) + 8 * j);
          v31 = [&unk_1EF29DF48 objectForKey:v30];
          v32 = [v16 objectForKey:v30];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [v16 objectForKey:v30];
            if (v33 && [(EXExtensionPointEnumerator *)v26 validateExtensionPointIdentifier:v74 sdkDictionary:v33])
            {
              [v29 setObject:v33 forKey:v31];
            }

            dictionary2 = v29;
          }

          else
          {
            objc_opt_class();
            dictionary2 = v29;
            if (objc_opt_isKindOfClass())
            {
              bOOLValue = [v32 BOOLValue];
              if (v10)
              {
                if (bOOLValue)
                {
                  [v29 setObject:v10 forKey:v31];
                }
              }
            }
          }
        }

        v25 = [v16 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v25);
      v9 = dictionary2;
      selfCopy = v26;
      v3 = v71;
      v5 = v74;
      goto LABEL_50;
    }

    v9 = dictionary2;
  }

  else
  {
    if (v10)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:dyld_get_active_platform()];
      [v9 setObject:v10 forKey:v36];
    }

    v16 = [v73 _EX_dictionaryForKey:@"EXCatalystSDKVariant"];
    if (v16 && [(EXExtensionPointEnumerator *)selfCopy validateExtensionPointIdentifier:v5 sdkDictionary:v16])
    {
      [v9 setObject:v16 forKey:&unk_1EF29DEF0];
    }
  }

LABEL_51:

  if (![v9 count])
  {

    v8 = 0;
LABEL_53:
    nextObject2 = [(NSEnumerator *)selfCopy->_extensionPointsKeyEnumerator nextObject];
LABEL_54:

    v5 = nextObject2;
    goto LABEL_55;
  }

  currentIdentifier = selfCopy->_currentIdentifier;
  selfCopy->_currentIdentifier = v5;
  v38 = v5;

  v39 = *(&selfCopy->super.super.isa + v3);
  *(&selfCopy->super.super.isa + v3) = v9;

  v8 = v73;
LABEL_59:

LABEL_60:
  dyld_get_active_platform();
  v40 = &OBJC_IVAR____EXExtensionPoint__variant;
  if (![*(&selfCopy->super.super.isa + v3) count])
  {
    v43 = 0;
    goto LABEL_83;
  }

  allKeys = [*(&selfCopy->super.super.isa + v3) allKeys];
  firstObject = [allKeys firstObject];

  v43 = [*(&selfCopy->super.super.isa + v3) objectForKey:firstObject];
  intValue = [firstObject intValue];
  [*(&selfCopy->super.super.isa + v3) removeObjectForKey:firstObject];

  if (!v43)
  {
    goto LABEL_83;
  }

  v45 = [v43 _EX_stringForKey:@"EXExtensionPointDefinitionPath"];
  v46 = selfCopy;
  if (v45)
  {
    v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:v45 isDirectory:0];
  }

  else
  {
    v47 = 0;
  }

  v75 = intValue;
  v48 = [v43 _EX_dictionaryByRemovingObjectForKey:@"EXExtensionPointDefinitionPath"];

  v49 = [v48 _EX_objectForKey:@"XPCService" ofClass:objc_opt_class()];
  if (v49)
  {
    v50 = [v48 _EX_dictionaryForKey:@"EXExtensionPointConfiguration"];
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v52 = [v48 objectForKey:@"EXSupportsNSExtensionPlistKeys"];
      v51 = v52 == 0;
    }
  }

  else
  {
    v51 = 0;
  }

  v53 = [(EXExtensionPointEnumerator *)selfCopy synthesizeNSExtensionKeysInDictionary:v48 identifier:selfCopy->_currentIdentifier];

  v54 = [(EXExtensionPointEnumerator *)selfCopy flattenEXExtensionPointConfigurationInDictionary:v53 identifier:selfCopy->_currentIdentifier];

  v56 = sdkDictionaryAdditions(v55);
  v57 = [v56 objectForKeyedSubscript:selfCopy->_currentIdentifier];

  if (v57)
  {
    v58 = [v54 _EX_dictionaryBySettingValuesForKeysWithDictionary:v57];

    v54 = v58;
  }

  v59 = [v54 objectForKeyedSubscript:@"EXExtensionIconPersonality"];

  if (v59)
  {
    if (v51)
    {
      goto LABEL_76;
    }

LABEL_78:
    v84[0] = @"EXRequiresLegacyInfrastructure";
    v84[1] = @"EXExtensionPointConfiguration";
    v85[0] = MEMORY[0x1E695E110];
    v85[1] = MEMORY[0x1E695E0F8];
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
    v43 = [v54 _EX_dictionaryBySettingValuesForKeysWithDictionary:v63];

    v60 = 1;
    v54 = v63;
  }

  else
  {
    v86 = @"EXExtensionIconPersonality";
    v87 = @"container";
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
    v62 = [v54 _EX_dictionaryBySettingValuesForKeysWithDictionary:v61];

    if (!v51)
    {
      goto LABEL_78;
    }

LABEL_76:
    v43 = [v54 _EX_dictionaryBySettingObject:MEMORY[0x1E695E118] forKey:@"EXRequiresLegacyInfrastructure"];
    v60 = 0;
  }

  [(_EXExtensionPoint *)v46->_currentExtensionPoint setVariant:v60];
  v64 = [v43 _EX_stringForKey:@"EXExtensionPointDomain"];
  v65 = v46;
  v66 = v64 ? v46->_currentIdentifier : 0;
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setIdentifier:v46->_currentIdentifier];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setSDKDictionary:v43];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setUrl:v47];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setPlatform:v75];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setDomain:v64];
  [(_EXExtensionPoint *)v46->_currentExtensionPoint setName:v66];
  v67 = v46->_currentExtensionPoint;

  selfCopy = v65;
  v40 = &OBJC_IVAR____EXExtensionPoint__variant;
  if (!v67)
  {
LABEL_83:
    reset = [*(&selfCopy->super.super.isa + v40[15]) reset];
    v67 = 0;
  }

  v69 = _EXRegistrationLog(reset);
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    [(EXExtensionPointEnumerator *)v67 nextObject];
  }

  return v67;
}

- (void)validateExtensionPointIdentifier:sdkDictionary:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
}

- (void)validateExtensionPointIdentifier:sdkDictionary:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6();
}

- (void)nextObject
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 67109378;
  v2[1] = nextObject_count;
  v3 = 2114;
  selfCopy = self;
  _os_log_debug_impl(&dword_1847D1000, a2, OS_LOG_TYPE_DEBUG, "[%d] Enumerator returning: '%{public}@'", v2, 0x12u);
}

@end