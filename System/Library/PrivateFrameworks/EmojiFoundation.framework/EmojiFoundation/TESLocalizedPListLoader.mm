@interface TESLocalizedPListLoader
- (TESLocalizedPListLoader)initWithLocaleIdentifier:(id)identifier;
- (id)_loadItems;
- (id)_resolvePlistPath;
- (id)plistPath;
- (void)_loadItems;
@end

@implementation TESLocalizedPListLoader

- (TESLocalizedPListLoader)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = TESLocalizedPListLoader;
  v5 = [(TESLocalizedPListLoader *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    plistPath = v5->_plistPath;
    v5->_plistPath = 0;
  }

  return v5;
}

- (id)plistPath
{
  plistPath = self->_plistPath;
  if (!plistPath)
  {
    _resolvePlistPath = [(TESLocalizedPListLoader *)self _resolvePlistPath];
    v5 = self->_plistPath;
    self->_plistPath = _resolvePlistPath;

    plistPath = self->_plistPath;
  }

  return plistPath;
}

- (id)_resolvePlistPath
{
  v38 = *MEMORY[0x1E69E9840];
  localeIdentifier = [(TESLocalizedPListLoader *)self localeIdentifier];
  v4 = [localeIdentifier stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

  v6 = emf_logging_get_default_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    localeIdentifier2 = [(TESLocalizedPListLoader *)self localeIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = localeIdentifier2;
    _os_log_impl(&dword_1AF04E000, v6, OS_LOG_TYPE_INFO, "Loading Text Effects plist file for locale '%{public}@'", &buf, 0xCu);
  }

  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__1;
  v36 = __Block_byref_object_dispose__1;
  resourceName = [(TESLocalizedPListLoader *)self resourceName];
  v37 = [v8 URLForResource:resourceName withExtension:@"plist" subdirectory:0 localization:v4];

  v10 = *(*(&buf + 1) + 40);
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v4];
    languageIdentifier = [v11 languageIdentifier];

    if (([(__CFString *)languageIdentifier isEqualToString:@"nb-NO"]& 1) != 0 || (v13 = [(__CFString *)languageIdentifier isEqualToString:@"nn"], v13))
    {

      languageIdentifier = @"no";
    }

    v14 = emf_logging_get_default_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      localeIdentifier3 = [(TESLocalizedPListLoader *)self localeIdentifier];
      *v29 = 138543618;
      v30 = localeIdentifier3;
      v31 = 2114;
      v32 = languageIdentifier;
      _os_log_impl(&dword_1AF04E000, v14, OS_LOG_TYPE_INFO, "No Text Effects plist file found for locale identifier '%{public}@'; attempting to load data associated with the normalized locale identifier '%{public}@'.", v29, 0x16u);
    }

    resourceName2 = [(TESLocalizedPListLoader *)self resourceName];
    v17 = [v8 URLForResource:resourceName2 withExtension:@"plist" subdirectory:0 localization:languageIdentifier];
    v18 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v17;

    v10 = *(*(&buf + 1) + 40);
    if (!v10)
    {
      v20 = emf_logging_get_default_log(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        localeIdentifier4 = [(TESLocalizedPListLoader *)self localeIdentifier];
        *v29 = 138543362;
        v30 = localeIdentifier4;
        _os_log_impl(&dword_1AF04E000, v20, OS_LOG_TYPE_INFO, "No Text Effects plist found for locale identifier '%{public}@'; attempting to load a fallback language.", v29, 0xCu);
      }

      v22 = MEMORY[0x1E695DF58];
      localeIdentifier5 = [(TESLocalizedPListLoader *)self localeIdentifier];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __44__TESLocalizedPListLoader__resolvePlistPath__block_invoke;
      v26[3] = &unk_1E7A5F6A0;
      v26[4] = self;
      p_buf = &buf;
      v27 = v8;
      [v22 _enumerateLanguageFallbackGraphForLocaleIdentifier:localeIdentifier5 usingBlock:v26];

      v10 = *(*(&buf + 1) + 40);
    }
  }

  v24 = v10;
  _Block_object_dispose(&buf, 8);

  return v24;
}

void __44__TESLocalizedPListLoader__resolvePlistPath__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) localeIdentifier];
  v7 = [v6 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v9 = emf_logging_get_default_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&dword_1AF04E000, v9, OS_LOG_TYPE_INFO, "Loading Text Effects plist file for language fallback '%{public}@'", &v15, 0xCu);
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) resourceName];
    v12 = [v10 URLForResource:v11 withExtension:@"plist" subdirectory:0 localization:v5];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (id)_loadItems
{
  v33 = *MEMORY[0x1E69E9840];
  plistPath = [(TESLocalizedPListLoader *)self plistPath];
  if (plistPath)
  {
    v26 = 0;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:plistPath error:&v26];
    v5 = v26;
    v6 = v5;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == 0;
    }

    if (v7 || (v5 = [v4 count]) == 0)
    {
      v9 = emf_logging_get_default_log(v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        absoluteString = [plistPath absoluteString];
        localeIdentifier = [(TESLocalizedPListLoader *)self localeIdentifier];
        localizedDescription = [v6 localizedDescription];
        *buf = 138543874;
        v28 = absoluteString;
        v29 = 2114;
        v30 = localeIdentifier;
        v31 = 2114;
        v32 = localizedDescription;
        _os_log_error_impl(&dword_1AF04E000, v9, OS_LOG_TYPE_ERROR, "Text Effects plist at path '%{public}@' for locale '%{public}@' could not be read with error: '%{public}@", buf, 0x20u);
      }

      v18 = 0;
      goto LABEL_27;
    }

    v8 = [v4 objectForKeyedSubscript:@"metadata"];
    v9 = v8;
    if (v8 && (objc_opt_class(), v8 = objc_opt_isKindOfClass(), (v8 & 1) != 0))
    {
      v10 = [v9 objectForKeyedSubscript:@"schemaVersion"];
      if (v10)
      {
        v11 = v10;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 unsignedLongValue]== 1)
        {
          isKindOfClass = [v4 objectForKeyedSubscript:@"triggers"];
          v13 = isKindOfClass;
          if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
          {
            v14 = emf_logging_get_default_log(isKindOfClass);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              absoluteString2 = [plistPath absoluteString];
              localeIdentifier2 = [(TESLocalizedPListLoader *)self localeIdentifier];
              v17 = [v13 count];
              *buf = 138543874;
              v28 = absoluteString2;
              v29 = 2114;
              v30 = localeIdentifier2;
              v31 = 2048;
              v32 = v17;
              _os_log_impl(&dword_1AF04E000, v14, OS_LOG_TYPE_INFO, "Loaded Text Effects plist '%{public}@' for locale '%{public}@' (%lu entries)", buf, 0x20u);
            }

            v18 = v13;
          }

          else
          {
            v25 = emf_logging_get_default_log(isKindOfClass);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [(TESLocalizedPListLoader *)plistPath _loadItems];
            }

            v18 = 0;
          }

          goto LABEL_26;
        }

        objc_opt_class();
        v20 = objc_opt_isKindOfClass();
        if ((v20 & 1) == 0)
        {

          v11 = &unk_1F24DF3A0;
        }

        v21 = emf_logging_get_default_log(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [(TESLocalizedPListLoader *)plistPath _loadItems];
        }
      }

      else
      {
        v11 = emf_logging_get_default_log(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(TESLocalizedPListLoader *)plistPath _loadItems];
        }
      }
    }

    else
    {
      v11 = emf_logging_get_default_log(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(TESLocalizedPListLoader *)plistPath _loadItems];
      }
    }

    v18 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v6 = emf_logging_get_default_log(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(TESLocalizedPListLoader *)self _loadItems];
  }

  v18 = 0;
LABEL_28:

  return v18;
}

- (void)_loadItems
{
  localeIdentifier = [self localeIdentifier];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end