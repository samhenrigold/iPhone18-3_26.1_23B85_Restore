@interface EMFAnchoredSearchAnchorsLoader
- (EMFAnchoredSearchAnchorCollection)locallyCachedAnchorCollection;
- (EMFAnchoredSearchAnchorsLoader)initWithLocaleIdentifier:(id)identifier;
- (NSArray)leftHandAnchors;
- (NSArray)rightHandAnchors;
- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(id)necessary;
@end

@implementation EMFAnchoredSearchAnchorsLoader

- (EMFAnchoredSearchAnchorsLoader)initWithLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = EMFAnchoredSearchAnchorsLoader;
  v5 = [(EMFAnchoredSearchAnchorsLoader *)&v11 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    localeIdentifier = v5->_localeIdentifier;
    v5->_localeIdentifier = v6;

    v8 = +[EMFAnchoredSearchAnchorsCache sharedCache];
    anchorsCache = v5->_anchorsCache;
    v5->_anchorsCache = v8;
  }

  return v5;
}

- (NSArray)leftHandAnchors
{
  locallyCachedAnchorCollection = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];

  if (!locallyCachedAnchorCollection)
  {
    localeIdentifier = [(EMFAnchoredSearchAnchorsLoader *)self localeIdentifier];
    [(EMFAnchoredSearchAnchorsLoader *)self _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:localeIdentifier];
  }

  locallyCachedAnchorCollection2 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];
  leftHandAnchors = [locallyCachedAnchorCollection2 leftHandAnchors];

  return leftHandAnchors;
}

- (NSArray)rightHandAnchors
{
  locallyCachedAnchorCollection = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];

  if (!locallyCachedAnchorCollection)
  {
    localeIdentifier = [(EMFAnchoredSearchAnchorsLoader *)self localeIdentifier];
    [(EMFAnchoredSearchAnchorsLoader *)self _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:localeIdentifier];
  }

  locallyCachedAnchorCollection2 = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];
  rightHandAnchors = [locallyCachedAnchorCollection2 rightHandAnchors];

  return rightHandAnchors;
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(id)necessary
{
  v63 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  locallyCachedAnchorCollection = [(EMFAnchoredSearchAnchorsLoader *)self locallyCachedAnchorCollection];

  if (!locallyCachedAnchorCollection)
  {
    anchorsCache = [(EMFAnchoredSearchAnchorsLoader *)self anchorsCache];
    v7 = [anchorsCache anchorCollectionForLocaleIdentifier:necessaryCopy];

    if (v7)
    {
      [(EMFAnchoredSearchAnchorsLoader *)self setLocallyCachedAnchorCollection:v7];
LABEL_44:

      goto LABEL_45;
    }

    v9 = emf_logging_get_default_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = necessaryCopy;
      _os_log_impl(&dword_1AF04E000, v9, OS_LOG_TYPE_INFO, "Loading search anchors for locale '%{public}@'", &buf, 0xCu);
    }

    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__0;
    v61 = __Block_byref_object_dispose__0;
    v62 = [v10 URLForResource:necessaryCopy withExtension:@"plist" subdirectory:@"Anchor Strings"];
    v11 = *(*(&buf + 1) + 40);
    if (!v11)
    {
      v12 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:necessaryCopy];
      languageIdentifier = [v12 languageIdentifier];

      v15 = emf_logging_get_default_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v50 = 138543618;
        v51 = necessaryCopy;
        v52 = 2114;
        v53 = languageIdentifier;
        _os_log_impl(&dword_1AF04E000, v15, OS_LOG_TYPE_INFO, "No search anchors found for locale identifier '%{public}@'; attempting to load data associated with the normalized locale identifier '%{public}@'.", v50, 0x16u);
      }

      v16 = [v10 URLForResource:languageIdentifier withExtension:@"plist" subdirectory:@"Anchor Strings"];
      v17 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v16;

      v11 = *(*(&buf + 1) + 40);
      if (!v11)
      {
        v19 = emf_logging_get_default_log(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *v50 = 138543362;
          v51 = necessaryCopy;
          _os_log_impl(&dword_1AF04E000, v19, OS_LOG_TYPE_INFO, "No search anchors found for locale identifier '%{public}@'; attempting to load a fallback language.", v50, 0xCu);
        }

        v20 = MEMORY[0x1E695DF58];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __85__EMFAnchoredSearchAnchorsLoader__loadAndCacheAnchorsForLocaleIdentifierIfNecessary___block_invoke;
        v46[3] = &unk_1E7A5F6A0;
        v21 = necessaryCopy;
        v47 = v21;
        p_buf = &buf;
        v48 = v10;
        v22 = [v20 _enumerateLanguageFallbackGraphForLocaleIdentifier:v21 usingBlock:v46];
        if (!*(*(&buf + 1) + 40))
        {
          v40 = emf_logging_get_default_log(v22);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [(EMFAnchoredSearchAnchorsLoader *)v21 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v40];
          }

          v7 = 0;
          v25 = v47;
          goto LABEL_43;
        }

        v11 = *(*(&buf + 1) + 40);
      }
    }

    v45 = 0;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v11 error:&v45];
    v24 = v45;
    v25 = v24;
    if (v24 || !v23 || (v24 = [v23 count]) == 0)
    {
      v27 = emf_logging_get_default_log(v24);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        absoluteString = [*(*(&buf + 1) + 40) absoluteString];
        localizedDescription = [v25 localizedDescription];
        *v50 = 138543874;
        v51 = absoluteString;
        v52 = 2114;
        v53 = necessaryCopy;
        v54 = 2114;
        v55 = localizedDescription;
        _os_log_error_impl(&dword_1AF04E000, v27, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' for locale '%{public}@' could not be read with error: '%{public}@", v50, 0x20u);
      }

      v7 = 0;
      goto LABEL_42;
    }

    v26 = [v23 objectForKeyedSubscript:@"metadata"];
    v27 = v26;
    if (!v26)
    {
      v29 = emf_logging_get_default_log(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        absoluteString2 = [*(*(&buf + 1) + 40) absoluteString];
        [(EMFAnchoredSearchAnchorsLoader *)absoluteString2 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v50, v29];
      }

      v7 = 0;
      goto LABEL_41;
    }

    v28 = [v26 objectForKeyedSubscript:@"schemaVersion"];
    v29 = v28;
    if (v28)
    {
      unsignedLongValue = [v28 unsignedLongValue];
      if (unsignedLongValue == 1)
      {
        v7 = [[EMFAnchoredSearchAnchorCollection alloc] initWithLocaleIdentifier:necessaryCopy];
        v31 = [v23 objectForKeyedSubscript:@"leftHandAnchors"];
        v32 = v31;
        if (v31 && [v31 count])
        {
          [(EMFAnchoredSearchAnchorCollection *)v7 setLeftHandAnchors:v32];
        }

        v44 = [v23 objectForKeyedSubscript:@"rightHandAnchors"];
        if (v44 && [v44 count])
        {
          [(EMFAnchoredSearchAnchorCollection *)v7 setRightHandAnchors:v44];
        }

        anchorsCache2 = [(EMFAnchoredSearchAnchorsLoader *)self anchorsCache];
        [anchorsCache2 setAnchorCollection:v7 forLocaleIdentifier:necessaryCopy];

        v34 = emf_logging_get_default_log([(EMFAnchoredSearchAnchorsLoader *)self setLocallyCachedAnchorCollection:v7]);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          absoluteString3 = [*(*(&buf + 1) + 40) absoluteString];
          v43 = [v32 count];
          v36 = [v44 count];
          *v50 = 138544130;
          v51 = absoluteString3;
          v52 = 2114;
          v53 = necessaryCopy;
          v54 = 2048;
          v55 = v43;
          v56 = 2048;
          v57 = v36;
          _os_log_impl(&dword_1AF04E000, v34, OS_LOG_TYPE_INFO, "Loaded search anchor plist '%{public}@' for locale '%{public}@' (%lu left, %lu right)", v50, 0x2Au);
        }

        goto LABEL_40;
      }

      v32 = emf_logging_get_default_log(unsignedLongValue);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        absoluteString4 = [*(*(&buf + 1) + 40) absoluteString];
        [(EMFAnchoredSearchAnchorsLoader *)absoluteString4 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v50, [v29 unsignedLongValue], v32];
      }
    }

    else
    {
      v32 = emf_logging_get_default_log(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        absoluteString5 = [*(*(&buf + 1) + 40) absoluteString];
        [(EMFAnchoredSearchAnchorsLoader *)absoluteString5 _loadAndCacheAnchorsForLocaleIdentifierIfNecessary:v50, v32];
      }
    }

    v7 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

LABEL_43:
    _Block_object_dispose(&buf, 8);

    goto LABEL_44;
  }

LABEL_45:
}

void __85__EMFAnchoredSearchAnchorsLoader__loadAndCacheAnchorsForLocaleIdentifierIfNecessary___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) isEqualToString:v5];
  if ((v6 & 1) == 0)
  {
    v7 = emf_logging_get_default_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1AF04E000, v7, OS_LOG_TYPE_INFO, "Loading search anchors for language fallback '%{public}@'", &v11, 0xCu);
    }

    v8 = [*(a1 + 40) URLForResource:v5 withExtension:@"plist" subdirectory:@"Anchor Strings"];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *a3 = 1;
    }
  }
}

- (EMFAnchoredSearchAnchorCollection)locallyCachedAnchorCollection
{
  WeakRetained = objc_loadWeakRetained(&self->_locallyCachedAnchorCollection);

  return WeakRetained;
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(uint64_t)a3 .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' registers an unsupported schemaVersion of '%lu'.", buf, 0x16u);
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' registers an unsupported schemaVersion.", buf, 0xCu);
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AF04E000, log, OS_LOG_TYPE_ERROR, "Search anchor plist at path '%{public}@' is malformed and lacks a 'metadata' segment.", buf, 0xCu);
}

- (void)_loadAndCacheAnchorsForLocaleIdentifierIfNecessary:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Could not load search anchors for locale identifier '%{public}@'.", &v2, 0xCu);
}

@end