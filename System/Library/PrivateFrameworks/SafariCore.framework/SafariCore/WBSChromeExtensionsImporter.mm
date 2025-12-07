@interface WBSChromeExtensionsImporter
- (BOOL)_checkNotAtRootLevel;
- (BOOL)_isParsingExtension;
- (BOOL)_isParsingExtensionsArray;
- (BOOL)_openBrowserExtensionMappingJSONFile;
- (BOOL)jsonReader:(id)reader scalarValue:(id)value;
- (BOOL)jsonReaderBeginArray:(id)array;
- (BOOL)jsonReaderBeginObject:(id)object;
- (BOOL)jsonReaderEndArray:(id)array;
- (BOOL)jsonReaderEndObject:(id)object;
- (WBSChromeExtensionsImporter)init;
- (WBSExtensionsImporterDelegate)delegate;
- (id)_popKeyFromStackIfPossible;
- (void)_openBrowserExtensionMappingJSONFile;
- (void)parseFileHandle:(id)handle completionHandler:(id)handler;
- (void)parseURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSChromeExtensionsImporter

- (WBSChromeExtensionsImporter)init
{
  v7.receiver = self;
  v7.super_class = WBSChromeExtensionsImporter;
  v2 = [(WBSChromeExtensionsImporter *)&v7 init];
  if (v2 && ([MEMORY[0x1E695DF90] dictionary], v3 = objc_claimAutoreleasedReturnValue(), browserExtensionMapping = v2->_browserExtensionMapping, v2->_browserExtensionMapping = v3, browserExtensionMapping, -[WBSChromeExtensionsImporter _openBrowserExtensionMappingJSONFile](v2, "_openBrowserExtensionMappingJSONFile")))
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_openBrowserExtensionMappingJSONFile
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"cross-browser-extension-mapping" withExtension:@"json"];

  if (v4)
  {
    v41 = 0;
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4 options:0 error:&v41];
    v6 = v41;
    v8 = v6;
    if (!v5)
    {
      v28 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [(WBSChromeExtensionsImporter *)v28 _openBrowserExtensionMappingJSONFile];
      }

      v27 = 0;
      v10 = v8;
      goto LABEL_26;
    }

    v40 = v6;
    v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v40];
    v10 = v40;

    if (v9)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v33 = v10;
        v34 = v5;
        v35 = v4;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v32 = v9;
        v15 = v9;
        v16 = [v15 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v37;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v37 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v36 + 1) + 8 * i);
              v21 = [v20 objectForKeyedSubscript:{@"safari_ios", v32, v33, v34, v35, v36}];
              if (v21)
              {
                v22 = v21;
                v23 = [v20 objectForKeyedSubscript:@"chrome"];

                if (v23)
                {
                  browserExtensionMapping = self->_browserExtensionMapping;
                  v25 = [v20 objectForKeyedSubscript:@"safari_ios"];
                  v26 = [v20 objectForKeyedSubscript:@"chrome"];
                  [(NSMutableDictionary *)browserExtensionMapping setObject:v25 forKey:v26];
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v17);
        }

        v27 = 1;
        v5 = v34;
        v4 = v35;
        v9 = v32;
        v10 = v33;
        goto LABEL_25;
      }

      v30 = WBS_LOG_CHANNEL_PREFIXImport(isKindOfClass, v14);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(WBSChromeExtensionsImporter *)v30 _openBrowserExtensionMappingJSONFile];
      }
    }

    else
    {
      v29 = WBS_LOG_CHANNEL_PREFIXImport(v11, v12);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [(WBSChromeExtensionsImporter *)v29 _openBrowserExtensionMappingJSONFile];
      }
    }

    v27 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v27 = 0;
LABEL_27:

  return v27;
}

- (void)parseURL:(id)l completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AC00];
  v11 = 0;
  handlerCopy = handler;
  v8 = [v6 safari_fileHandleWithURL:l options:0 createMode:0 error:&v11];
  v9 = v11;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    handlerCopy[2](handlerCopy, v9);
  }

  else
  {
    [(WBSChromeExtensionsImporter *)self parseFileHandle:v8 completionHandler:handlerCopy];
  }
}

- (void)parseFileHandle:(id)handle completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  handleCopy = handle;
  v8 = objc_alloc_init(WBSJSONReader);
  [(WBSJSONReader *)v8 setDelegate:self];
  lastError = self->_lastError;
  self->_lastError = 0;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  stack = self->_stack;
  self->_stack = v10;

  v18 = 0;
  [(WBSJSONReader *)v8 parseFileHandle:handleCopy error:&v18];

  v12 = v18;
  if (v12)
  {
    handlerCopy[2](handlerCopy, v12);
  }

  else
  {
    v13 = self->_lastError;
    if (!self->_foundExtensionsArray && !v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"Could not find extensions array in JSON file";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v16 = [v14 errorWithDomain:@"com.apple.SafariShared.WBSChromeExtensionsImporterErrorDomain" code:2 userInfo:v15];
      v17 = self->_lastError;
      self->_lastError = v16;

      v13 = self->_lastError;
    }

    handlerCopy[2](handlerCopy, v13);
  }
}

- (BOOL)_checkNotAtRootLevel
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_stack count];
  if (!v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Root node is expected to be a dictionary";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"com.apple.SafariShared.WBSChromeExtensionsImporterErrorDomain" code:1 userInfo:v5];
    lastError = self->_lastError;
    self->_lastError = v6;
  }

  return v3 != 0;
}

- (BOOL)_isParsingExtensionsArray
{
  v5[3] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v5[0] = &unk_1F308E258;
  v5[1] = @"Extensions";
  v5[2] = &unk_1F308E270;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  return stack;
}

- (BOOL)_isParsingExtension
{
  v5[4] = *MEMORY[0x1E69E9840];
  stack = self->_stack;
  v5[0] = &unk_1F308E258;
  v5[1] = @"Extensions";
  v5[2] = &unk_1F308E270;
  v5[3] = &unk_1F308E258;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  LOBYTE(stack) = [(NSMutableArray *)stack isEqual:v3];

  return stack;
}

- (id)_popKeyFromStackIfPossible
{
  lastObject = [(NSMutableArray *)self->_stack lastObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    lastObject2 = [(NSMutableArray *)self->_stack lastObject];
    [(NSMutableArray *)self->_stack removeLastObject];
  }

  else
  {
    lastObject2 = 0;
  }

  return lastObject2;
}

- (BOOL)jsonReader:(id)reader scalarValue:(id)value
{
  valueCopy = value;
  _checkNotAtRootLevel = [(WBSChromeExtensionsImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    _popKeyFromStackIfPossible = [(WBSChromeExtensionsImporter *)self _popKeyFromStackIfPossible];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [_popKeyFromStackIfPossible isEqualToString:@"id"])
    {
      objc_storeStrong(&self->_chromeExtensionIdentifier, value);
    }
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderBeginObject:(id)object
{
  [(NSMutableArray *)self->_stack addObject:&unk_1F308E258];
  if ([(WBSChromeExtensionsImporter *)self _isParsingExtension])
  {
    chromeExtensionIdentifier = self->_chromeExtensionIdentifier;
    self->_chromeExtensionIdentifier = 0;
  }

  return 1;
}

- (BOOL)jsonReaderEndObject:(id)object
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableDictionary *)self->_browserExtensionMapping objectForKeyedSubscript:self->_chromeExtensionIdentifier];
  if ([(WBSChromeExtensionsImporter *)self _isParsingExtension]&& v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [v4 objectForKeyedSubscript:@"store_identifier"];
    v7 = [v4 objectForKeyedSubscript:@"extension_identifiers"];

    if (v7)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [v4 objectForKeyedSubscript:{@"extension_identifiers", 0}];
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          v12 = 0;
          do
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [WeakRetained enableExtensionWithComposedIdentifier:*(*(&v15 + 1) + 8 * v12++) adamIdentifier:v6 alternatePlatformAppBundleIdentifier:0 alternatePlatformExtensionBundleIdentifier:0];
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    else
    {
      [WeakRetained enableExtensionWithComposedIdentifier:0 adamIdentifier:v6 alternatePlatformAppBundleIdentifier:0 alternatePlatformExtensionBundleIdentifier:0];
    }
  }

  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSChromeExtensionsImporter *)self _popKeyFromStackIfPossible];

  return 1;
}

- (BOOL)jsonReaderBeginArray:(id)array
{
  _checkNotAtRootLevel = [(WBSChromeExtensionsImporter *)self _checkNotAtRootLevel];
  if (_checkNotAtRootLevel)
  {
    [(NSMutableArray *)self->_stack addObject:&unk_1F308E270];
    if ([(WBSChromeExtensionsImporter *)self _isParsingExtensionsArray])
    {
      self->_foundExtensionsArray = 1;
    }
  }

  return _checkNotAtRootLevel;
}

- (BOOL)jsonReaderEndArray:(id)array
{
  [(NSMutableArray *)self->_stack removeLastObject];
  _popKeyFromStackIfPossible = [(WBSChromeExtensionsImporter *)self _popKeyFromStackIfPossible];
  return 1;
}

- (WBSExtensionsImporterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_openBrowserExtensionMappingJSONFile
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = safari_privacyPreservingDescription;
  OUTLINED_FUNCTION_2(&dword_1B8447000, v5, v6, "The browser extension mapping JSON file could not be opened: %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end