@interface DMCObliterationShelter
- (BOOL)_createDirectoryAtPathIfNeeded:(id)needed error:(id *)error;
- (BOOL)clear;
- (BOOL)preserveWithError:(id *)error;
- (BOOL)retrieveWithError:(id *)error;
- (DMCObliterationShelter)init;
- (id)_allPathsToClear;
- (id)_cloudConfigProfilePath_retrieve;
- (id)_cloudConfigProfilePath_stash;
- (id)_configurationDictionaryPath_retrieve;
- (id)_configurationDictionaryPath_stash;
- (id)_createFailToWriteFileErrorWithFilePath:(id)path;
- (id)_generateConfigurationDictionary;
- (id)_generateShelteredDetailsForLogging;
- (id)_mdmProfilePath_retrieve;
- (id)_mdmProfilePath_stash;
- (id)_stashDirectoryPath;
- (id)_wifiProfilePath_retrieve;
- (id)_wifiProfilePath_stash;
- (id)generateExclusionPaths;
- (void)_postConfigChangedNotification;
- (void)migrateAllFiles;
@end

@implementation DMCObliterationShelter

- (DMCObliterationShelter)init
{
  v8.receiver = self;
  v8.super_class = DMCObliterationShelter;
  v2 = [(DMCObliterationShelter *)&v8 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30__DMCObliterationShelter_init__block_invoke;
    v6[3] = &unk_1E7ADCE38;
    v7 = v2;
    v4 = [defaultCenter addObserverForName:@"DMCObliterationShelterConfigChanged" object:0 queue:0 usingBlock:v6];
  }

  return v2;
}

- (BOOL)preserveWithError:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v6 = [(DMCObliterationShelter *)self _createDirectoryAtPathIfNeeded:_stashDirectoryPath error:error];

  if (v6)
  {
    _generateConfigurationDictionary = [(DMCObliterationShelter *)self _generateConfigurationDictionary];
    _configurationDictionaryPath_stash = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
    v9 = *MEMORY[0x1E696A3A8];
    v10 = [_generateConfigurationDictionary DMCWriteToBinaryFile:_configurationDictionaryPath_stash protectionType:*MEMORY[0x1E696A3A8]];

    if (v10)
    {
      _configurationDictionaryPath_stash2 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
      DMCSetSkipBackupAttributeToItemAtPath(_configurationDictionaryPath_stash2, 1);

      wifiProfileData = [(DMCObliterationShelter *)self wifiProfileData];

      if (wifiProfileData)
      {
        wifiProfileData2 = [(DMCObliterationShelter *)self wifiProfileData];
        _wifiProfilePath_stash = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
        v45 = 0;
        [wifiProfileData2 writeToFile:_wifiProfilePath_stash options:0x10000000 error:&v45];
        v17 = v45;

        if (v17)
        {
          v20 = *DMCLogObjects(v18, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v47 = v17;
            v21 = "DMCObliterationShelter: Failed to store wifi profile data with error: %{public}@";
LABEL_18:
            _os_log_impl(&dword_1B1630000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
            goto LABEL_19;
          }

          goto LABEL_19;
        }

        _wifiProfilePath_stash2 = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
        DMCSetSkipBackupAttributeToItemAtPath(_wifiProfilePath_stash2, 1);
      }

      mdmProfileData = [(DMCObliterationShelter *)self mdmProfileData];

      if (mdmProfileData)
      {
        mdmProfileData2 = [(DMCObliterationShelter *)self mdmProfileData];
        _mdmProfilePath_stash = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
        v44 = 0;
        [mdmProfileData2 writeToFile:_mdmProfilePath_stash options:0x10000000 error:&v44];
        v17 = v44;

        if (v17)
        {
          v20 = *DMCLogObjects(v31, v32);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v47 = v17;
            v21 = "DMCObliterationShelter: Failed to store mdm profile data with error: %{public}@";
            goto LABEL_18;
          }

LABEL_19:

          _generateConfigurationDictionary = v17;
          goto LABEL_20;
        }

        _mdmProfilePath_stash2 = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
        DMCSetSkipBackupAttributeToItemAtPath(_mdmProfilePath_stash2, 1);
      }

      cloudConfigurationDetails = [(DMCObliterationShelter *)self cloudConfigurationDetails];

      if (!cloudConfigurationDetails)
      {
        v22 = 1;
        goto LABEL_23;
      }

      cloudConfigurationDetails2 = [(DMCObliterationShelter *)self cloudConfigurationDetails];
      _cloudConfigProfilePath_stash = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
      v39 = [cloudConfigurationDetails2 DMCWriteToBinaryFile:_cloudConfigProfilePath_stash protectionType:v9];

      if (v39)
      {
        _cloudConfigProfilePath_stash2 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
        v22 = 1;
        DMCSetSkipBackupAttributeToItemAtPath(_cloudConfigProfilePath_stash2, 1);

LABEL_23:
        return v22;
      }

      v43 = *DMCLogObjects(v40, v41);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v43, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to store cloud config profile", buf, 2u);
      }

      _cloudConfigProfilePath_stash3 = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
    }

    else
    {
      v23 = *DMCLogObjects(v11, v12);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to store configuration file", buf, 2u);
      }

      _cloudConfigProfilePath_stash3 = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
    }

    v25 = _cloudConfigProfilePath_stash3;
    v26 = [(DMCObliterationShelter *)self _createFailToWriteFileErrorWithFilePath:_cloudConfigProfilePath_stash3];

    _generateConfigurationDictionary = v26;
    if (v26)
    {
LABEL_20:
      if (error)
      {
        v33 = _generateConfigurationDictionary;
        *error = _generateConfigurationDictionary;
      }

      [(DMCObliterationShelter *)self clear];
      v22 = 0;
      goto LABEL_23;
    }

    return 1;
  }

  else
  {
    [(DMCObliterationShelter *)self clear];
    return 0;
  }
}

- (BOOL)retrieveWithError:(id *)error
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _retrievalDirectoryPath = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v6 = [defaultManager fileExistsAtPath:_retrievalDirectoryPath];

  if (v6)
  {
    _configurationDictionaryPath_retrieve = [(DMCObliterationShelter *)self _configurationDictionaryPath_retrieve];
    _wifiProfilePath_retrieve = [(DMCObliterationShelter *)self _wifiProfilePath_retrieve];
    _mdmProfilePath_retrieve = [(DMCObliterationShelter *)self _mdmProfilePath_retrieve];
    _cloudConfigProfilePath_retrieve = [(DMCObliterationShelter *)self _cloudConfigProfilePath_retrieve];
  }

  else
  {
    _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
    v12 = [defaultManager fileExistsAtPath:_stashDirectoryPath];

    if (!v12)
    {
      _configurationDictionaryPath_retrieve = 0;
      _wifiProfilePath_retrieve = 0;
      _mdmProfilePath_retrieve = 0;
      v16 = 0;
      goto LABEL_19;
    }

    v15 = *DMCLogObjects(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: config file exists in the stash directory instead. This might be before data migration", v29, 2u);
    }

    _configurationDictionaryPath_retrieve = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
    _wifiProfilePath_retrieve = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
    _mdmProfilePath_retrieve = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
    _cloudConfigProfilePath_retrieve = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
  }

  v16 = _cloudConfigProfilePath_retrieve;
  if (_configurationDictionaryPath_retrieve)
  {
    if ([defaultManager fileExistsAtPath:_configurationDictionaryPath_retrieve])
    {
      [(DMCObliterationShelter *)self setHasConfigFile:1];
      v17 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:_configurationDictionaryPath_retrieve];
      v18 = [v17 objectForKeyedSubscript:@"Languages"];
      [(DMCObliterationShelter *)self setLanguageStrings:v18];

      v19 = [v17 objectForKeyedSubscript:@"Locale"];
      [(DMCObliterationShelter *)self setLocaleString:v19];

      v20 = [v17 objectForKeyedSubscript:@"IsSupervised"];
      -[DMCObliterationShelter setIsSupervised:](self, "setIsSupervised:", [v20 BOOLValue]);

      v21 = [v17 objectForKeyedSubscript:@"IsRapidReturnToService"];
      -[DMCObliterationShelter setIsRapidReturnToService:](self, "setIsRapidReturnToService:", [v21 BOOLValue]);

      v22 = [v17 objectForKeyedSubscript:@"IsSharediPad"];
      -[DMCObliterationShelter setIsSharediPad:](self, "setIsSharediPad:", [v22 BOOLValue]);

      v23 = [v17 objectForKeyedSubscript:@"AdditionalDetails"];
      [(DMCObliterationShelter *)self setAdditionalDetails:v23];

      if (+[DMCFeatureFlags isAppleInternal])
      {
        v24 = [v17 objectForKeyedSubscript:@"UserDefaults"];
        [(DMCObliterationShelter *)self setUserDefaults:v24];
      }
    }

    if ([defaultManager fileExistsAtPath:_wifiProfilePath_retrieve])
    {
      v25 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_wifiProfilePath_retrieve];
      [(DMCObliterationShelter *)self setWifiProfileData:v25];
    }

    if ([defaultManager fileExistsAtPath:_mdmProfilePath_retrieve])
    {
      v26 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_mdmProfilePath_retrieve];
      [(DMCObliterationShelter *)self setMdmProfileData:v26];
    }

    if ([defaultManager fileExistsAtPath:v16])
    {
      v27 = [MEMORY[0x1E695DF20] DMCDictionaryFromFile:v16];
      [(DMCObliterationShelter *)self setCloudConfigurationDetails:v27];
    }
  }

LABEL_19:

  return 1;
}

- (BOOL)clear
{
  v27 = *MEMORY[0x1E69E9840];
  [(DMCObliterationShelter *)self setLanguageStrings:0];
  [(DMCObliterationShelter *)self setLocaleString:0];
  [(DMCObliterationShelter *)self setWifiProfileData:0];
  [(DMCObliterationShelter *)self setMdmProfileData:0];
  [(DMCObliterationShelter *)self setCloudConfigurationDetails:0];
  [(DMCObliterationShelter *)self setIsSupervised:0];
  [(DMCObliterationShelter *)self setHasConfigFile:0];
  [(DMCObliterationShelter *)self setIsRapidReturnToService:0];
  [(DMCObliterationShelter *)self setIsSharediPad:0];
  [(DMCObliterationShelter *)self setAdditionalDetails:0];
  [(DMCObliterationShelter *)self setUserDefaults:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  _allPathsToClear = [(DMCObliterationShelter *)self _allPathsToClear];
  v5 = [_allPathsToClear countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(_allPathsToClear);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([defaultManager fileExistsAtPath:v10])
        {
          v17 = 0;
          [defaultManager removeItemAtPath:v10 error:&v17];
          v11 = v17;
          if (v11)
          {
            v13 = v11;
            v14 = *DMCLogObjects(v11, v12);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v23 = v10;
              v24 = 2114;
              v25 = v13;
              _os_log_impl(&dword_1B1630000, v14, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to remove file from path: %{public}@, error: %{public}@", buf, 0x16u);
            }

            v8 = 0;
          }
        }
      }

      v6 = [_allPathsToClear countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [(DMCObliterationShelter *)selfCopy _postConfigChangedNotification];
  return v8 & 1;
}

- (void)migrateAllFiles
{
  v38 = *MEMORY[0x1E69E9840];
  [(DMCObliterationShelter *)self retrieveWithError:0];
  isSharediPad = [(DMCObliterationShelter *)self isSharediPad];
  if (!isSharediPad)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    _retrievalDirectoryPath = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
    v8 = [defaultManager fileExistsAtPath:_retrievalDirectoryPath];

    if (!v8)
    {
      goto LABEL_11;
    }

    v11 = *DMCLogObjects(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Cleaning up existing Return to Service files.", buf, 2u);
    }

    _retrievalDirectoryPath2 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
    v35 = 0;
    [defaultManager removeItemAtPath:_retrievalDirectoryPath2 error:&v35];
    v13 = v35;

    if (v13)
    {
      v16 = *DMCLogObjects(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v13;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to delete existing file in the retrieve directory. Error: %{public}@", buf, 0xCu);
      }

      [(DMCObliterationShelter *)self clear];
    }

    else
    {
LABEL_11:
      _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
      v18 = [defaultManager fileExistsAtPath:_stashDirectoryPath];

      v21 = *DMCLogObjects(v19, v20);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if ((v18 & 1) == 0)
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Nothing to migrate.", buf, 2u);
        }

        goto LABEL_25;
      }

      if (v22)
      {
        *buf = 0;
        _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Migrating sheltered files.", buf, 2u);
      }

      _stashDirectoryPath2 = [(DMCObliterationShelter *)self _stashDirectoryPath];
      _retrievalDirectoryPath3 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
      v34 = 0;
      [defaultManager moveItemAtPath:_stashDirectoryPath2 toPath:_retrievalDirectoryPath3 error:&v34];
      v13 = v34;

      if (v13)
      {
        v27 = *DMCLogObjects(v25, v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v37 = v13;
          _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to migrate stashed directory. Error: %{public}@", buf, 0xCu);
        }

        [(DMCObliterationShelter *)self clear];
      }

      else
      {
        _retrievalDirectoryPath4 = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
        DMCSetSkipBackupAttributeToItemAtPath(_retrievalDirectoryPath4, 1);

        v31 = *DMCLogObjects(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B1630000, v31, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: sheltered files migrated.", buf, 2u);
        }

        v32 = objc_opt_new();
        _generateShelteredDetailsForLogging = [(DMCObliterationShelter *)self _generateShelteredDetailsForLogging];
        [v32 logRegularEventForTopic:@"Return to Service" reason:@"RTS File Migrated" details:_generateShelteredDetailsForLogging];
      }

      [(DMCObliterationShelter *)self _postConfigChangedNotification];
    }

LABEL_25:
    return;
  }

  v5 = *DMCLogObjects(isSharediPad, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B1630000, v5, OS_LOG_TYPE_DEFAULT, "DMCObliterationShelter: Device was in Shared iPad mode. Nothing to migrate.", buf, 2u);
  }
}

- (void)_postConfigChangedNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"DMCObliterationShelterConfigChanged" object:0];
}

- (id)_generateConfigurationDictionary
{
  v3 = objc_opt_new();
  languageStrings = [(DMCObliterationShelter *)self languageStrings];
  [v3 setObject:languageStrings forKeyedSubscript:@"Languages"];

  localeString = [(DMCObliterationShelter *)self localeString];
  [v3 setObject:localeString forKeyedSubscript:@"Locale"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMCObliterationShelter isSupervised](self, "isSupervised")}];
  [v3 setObject:v6 forKeyedSubscript:@"IsSupervised"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMCObliterationShelter isRapidReturnToService](self, "isRapidReturnToService")}];
  [v3 setObject:v7 forKeyedSubscript:@"IsRapidReturnToService"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMCObliterationShelter isSharediPad](self, "isSharediPad")}];
  [v3 setObject:v8 forKeyedSubscript:@"IsSharediPad"];

  additionalDetails = [(DMCObliterationShelter *)self additionalDetails];
  [v3 setObject:additionalDetails forKeyedSubscript:@"AdditionalDetails"];

  if (+[DMCFeatureFlags isAppleInternal])
  {
    userDefaults = [(DMCObliterationShelter *)self userDefaults];
    [v3 setObject:userDefaults forKeyedSubscript:@"UserDefaults"];
  }

  v11 = [v3 copy];

  return v11;
}

- (id)_generateShelteredDetailsForLogging
{
  _generateConfigurationDictionary = [(DMCObliterationShelter *)self _generateConfigurationDictionary];
  v4 = [_generateConfigurationDictionary mutableCopy];

  generateExclusionPaths = [(DMCObliterationShelter *)self generateExclusionPaths];
  [v4 setObject:generateExclusionPaths forKeyedSubscript:@"ExclusionPaths"];

  wifiProfileData = [(DMCObliterationShelter *)self wifiProfileData];
  v7 = [wifiProfileData description];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"<None>";
  }

  [v4 setObject:v9 forKeyedSubscript:@"WiFiProfileData"];

  mdmProfileData = [(DMCObliterationShelter *)self mdmProfileData];
  v11 = [mdmProfileData description];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"<None>";
  }

  [v4 setObject:v13 forKeyedSubscript:@"MDMProfileData"];

  v14 = [v4 objectForKeyedSubscript:@"AdditionalDetails"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  [v4 addEntriesFromDictionary:v16];

  [v4 setObject:0 forKeyedSubscript:@"AdditionalDetails"];
  v17 = [v4 copy];

  return v17;
}

- (BOOL)_createDirectoryAtPathIfNeeded:(id)needed error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:neededCopy])
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v18 = *MEMORY[0x1E696A370];
    v19[0] = &unk_1F2868290;
    v8 = 1;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = 0;
    [defaultManager createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:v9 error:&v15];
    v7 = v15;

    if (v7)
    {
      v12 = *DMCLogObjects(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v17 = v7;
        _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "DMCObliterationShelter: Failed to create stash directory with error: %{public}@", buf, 0xCu);
      }

      if (error)
      {
        v13 = v7;
        v8 = 0;
        *error = v7;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (id)_createFailToWriteFileErrorWithFilePath:(id)path
{
  v8 = MEMORY[0x1E696ABC0];
  v9 = DMCErrorArray(@"Failed to store file to path %@", a2, path, v3, v4, v5, v6, v7, path);
  v10 = [v8 DMCErrorWithDomain:@"DMCReturnToServiceErrorDomain" code:16008 descriptionArray:v9 errorType:@"DMCFatalError"];

  return v10;
}

- (id)generateExclusionPaths
{
  v3 = objc_opt_new();
  _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
  [v3 addObject:_stashDirectoryPath];

  _configurationDictionaryPath_stash = [(DMCObliterationShelter *)self _configurationDictionaryPath_stash];
  [v3 addObject:_configurationDictionaryPath_stash];

  if (+[DMCMultiUserModeUtilities isSharediPad])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    _containerMetadataPlistPath_stash = [(DMCObliterationShelter *)self _containerMetadataPlistPath_stash];
    v8 = [defaultManager fileExistsAtPath:_containerMetadataPlistPath_stash];

    if (v8)
    {
      _containerMetadataPlistPath_stash2 = [(DMCObliterationShelter *)self _containerMetadataPlistPath_stash];
      [v3 addObject:_containerMetadataPlistPath_stash2];
    }
  }

  wifiProfileData = [(DMCObliterationShelter *)self wifiProfileData];

  if (wifiProfileData)
  {
    _wifiProfilePath_stash = [(DMCObliterationShelter *)self _wifiProfilePath_stash];
    [v3 addObject:_wifiProfilePath_stash];
  }

  mdmProfileData = [(DMCObliterationShelter *)self mdmProfileData];

  if (mdmProfileData)
  {
    _mdmProfilePath_stash = [(DMCObliterationShelter *)self _mdmProfilePath_stash];
    [v3 addObject:_mdmProfilePath_stash];
  }

  cloudConfigurationDetails = [(DMCObliterationShelter *)self cloudConfigurationDetails];

  if (cloudConfigurationDetails)
  {
    _cloudConfigProfilePath_stash = [(DMCObliterationShelter *)self _cloudConfigProfilePath_stash];
    [v3 addObject:_cloudConfigProfilePath_stash];
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_allPathsToClear
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__DMCObliterationShelter__allPathsToClear__block_invoke;
  v4[3] = &unk_1E7ADC9F0;
  v4[4] = self;
  v4[5] = &v5;
  if (_allPathsToClear_onceToken != -1)
  {
    dispatch_once(&_allPathsToClear_onceToken, v4);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__DMCObliterationShelter__allPathsToClear__block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _stashDirectoryPath];
  v7[0] = v2;
  v3 = [*(a1 + 32) _retrievalDirectoryPath];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_stashDirectoryPath
{
  v2 = +[DMCMultiUserModeUtilities isSharediPad];
  if (v2)
  {
    MDMSystemReturnToServiceStorageDirectory(v2);
  }

  else
  {
    MDMDatabaseReturnToServiceStorageDirectory(v2);
  }
  v3 = ;

  return v3;
}

- (id)_configurationDictionaryPath_stash
{
  _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [_stashDirectoryPath stringByAppendingPathComponent:@"config_stash.plist"];

  return v3;
}

- (id)_wifiProfilePath_stash
{
  _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [_stashDirectoryPath stringByAppendingPathComponent:@"wifi_profile_stash.mobileconfig"];

  return v3;
}

- (id)_mdmProfilePath_stash
{
  _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [_stashDirectoryPath stringByAppendingPathComponent:@"mdm_profile_stash.mobileconfig"];

  return v3;
}

- (id)_cloudConfigProfilePath_stash
{
  _stashDirectoryPath = [(DMCObliterationShelter *)self _stashDirectoryPath];
  v3 = [_stashDirectoryPath stringByAppendingPathComponent:@"cloud_config_profile_stash.plist"];

  return v3;
}

- (id)_configurationDictionaryPath_retrieve
{
  _retrievalDirectoryPath = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [_retrievalDirectoryPath stringByAppendingPathComponent:@"config_stash.plist"];

  return v3;
}

- (id)_wifiProfilePath_retrieve
{
  _retrievalDirectoryPath = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [_retrievalDirectoryPath stringByAppendingPathComponent:@"wifi_profile_stash.mobileconfig"];

  return v3;
}

- (id)_mdmProfilePath_retrieve
{
  _retrievalDirectoryPath = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [_retrievalDirectoryPath stringByAppendingPathComponent:@"mdm_profile_stash.mobileconfig"];

  return v3;
}

- (id)_cloudConfigProfilePath_retrieve
{
  _retrievalDirectoryPath = [(DMCObliterationShelter *)self _retrievalDirectoryPath];
  v3 = [_retrievalDirectoryPath stringByAppendingPathComponent:@"cloud_config_profile_stash.plist"];

  return v3;
}

@end