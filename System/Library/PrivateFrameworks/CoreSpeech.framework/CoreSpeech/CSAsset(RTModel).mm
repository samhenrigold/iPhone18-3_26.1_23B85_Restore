@interface CSAsset(RTModel)
+ (uint64_t)supportsMultiPhraseVoiceTriggerForEngineVersion:()RTModel engineMinorVersion:accessoryRTModelType:;
- (CSVoiceTriggerRTModel)_buildRTModelWithBlobConfig:()RTModel requestOptions:;
- (CSVoiceTriggerRTModel)createRTModelWithLocale:()RTModel;
- (__CFString)_userSelectedPhraseTypeToRTModelPhraseType:()RTModel;
- (id)RTModelWithFallbackLanguage:()RTModel;
- (id)_getFilteredAccessoryRTBlobListForRequestOptions:()RTModel accessoryBlobs:forceSkipEngineVersionCheck:;
- (id)_rtModelWithRequestOptions:()RTModel accessoryBlobs:;
- (id)_splitBlobsByPhraseType:()RTModel;
- (id)latestHearstRTModelWithRequestOptions:()RTModel;
- (id)localeMapWithName:()RTModel;
- (id)rtModelLocaleMapWithModelType:()RTModel;
- (id)rtModelWithRequestOptions:()RTModel;
- (uint64_t)_allowMultiPhrase:()RTModel forceSkipEngineVersionCheck:;
@end

@implementation CSAsset(RTModel)

- (__CFString)_userSelectedPhraseTypeToRTModelPhraseType:()RTModel
{
  if ([a3 unsignedIntegerValue] == 1)
  {
    return @"HSJS";
  }

  else
  {
    return @"HSOnly";
  }
}

- (uint64_t)_allowMultiPhrase:()RTModel forceSkipEngineVersionCheck:
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  accessoryInfo = [v5 accessoryInfo];
  supportsJustSiri = [accessoryInfo supportsJustSiri];

  engineMajorVersion = [v5 engineMajorVersion];
  unsignedIntValue = [engineMajorVersion unsignedIntValue];

  engineMinorVersion = [v5 engineMinorVersion];
  unsignedIntValue2 = [engineMinorVersion unsignedIntValue];

  if (unsignedIntValue)
  {
    v12 = unsignedIntValue2 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  if (a4)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  allowMph = [v5 allowMph];

  v16 = supportsJustSiri & v14 & allowMph;
  v17 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136316162;
    v20 = "[CSAsset(RTModel) _allowMultiPhrase:forceSkipEngineVersionCheck:]";
    v21 = 1024;
    v22 = supportsJustSiri & v14 & allowMph;
    v23 = 1024;
    v24 = supportsJustSiri;
    v25 = 1024;
    v26 = v14;
    v27 = 1024;
    v28 = allowMph & 1;
    _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s Multi-phrase keyword detection (%d): Accessory supports multi-phrase: %d, engine support multi-phrase: %d, device allows multi-phrase: %d", &v19, 0x24u);
  }

  return v16;
}

- (id)_rtModelWithRequestOptions:()RTModel accessoryBlobs:
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [self _getFilteredAccessoryRTBlobListForRequestOptions:v6 accessoryBlobs:a4 forceSkipEngineVersionCheck:0];
  engineMajorVersion = [v6 engineMajorVersion];
  unsignedIntValue = [engineMajorVersion unsignedIntValue];

  engineMinorVersion = [v6 engineMinorVersion];
  unsignedIntValue2 = [engineMinorVersion unsignedIntValue];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    selfCopy = self;
    v25 = v6;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:@"majorVersion"];
        unsignedIntValue3 = [v17 unsignedIntValue];

        v19 = [v16 objectForKeyedSubscript:@"minorVersion"];
        unsignedIntValue4 = [v19 unsignedIntValue];

        if (unsignedIntValue3 == unsignedIntValue && unsignedIntValue2 >= unsignedIntValue4)
        {
          v6 = v25;
          v22 = [selfCopy _buildRTModelWithBlobConfig:v16 requestOptions:v25];
          goto LABEL_15;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    v6 = v25;
  }

  else
  {
    v22 = 0;
  }

LABEL_15:

  return v22;
}

- (id)_getFilteredAccessoryRTBlobListForRequestOptions:()RTModel accessoryBlobs:forceSkipEngineVersionCheck:
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [self _splitBlobsByPhraseType:a4];
  userSelectedPhraseType = [v8 userSelectedPhraseType];
  v11 = [self _userSelectedPhraseTypeToRTModelPhraseType:userSelectedPhraseType];

  v12 = [self _allowMultiPhrase:v8 forceSkipEngineVersionCheck:a5];
  v13 = MEMORY[0x277D015D8];
  if (v12)
  {
    if (!v11)
    {
      v14 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[CSAsset(RTModel) _getFilteredAccessoryRTBlobListForRequestOptions:accessoryBlobs:forceSkipEngineVersionCheck:]";
      v20 = 1024;
      *v21 = 0;
      *&v21[4] = 2112;
      *&v21[6] = v8;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_DEFAULT, "%s Falling back to HSOnly phrase - Multi-phrase allowed: %d, request options: %@", &v18, 0x1Cu);
    }

    v11 = @"HSOnly";
  }

  v14 = [v9 objectForKeyedSubscript:v11];
LABEL_8:
  v16 = *v13;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = 136315651;
    v19 = "[CSAsset(RTModel) _getFilteredAccessoryRTBlobListForRequestOptions:accessoryBlobs:forceSkipEngineVersionCheck:]";
    v20 = 2113;
    *v21 = v11;
    *&v21[8] = 2113;
    *&v21[10] = v14;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s Selected phrase type: %{private}@ accessory RTBlobs: %{private}@", &v18, 0x20u);
  }

  return v14;
}

- (id)_splitBlobsByPhraseType:()RTModel
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"phraseType"];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = @"HSOnly";
        }

        v14 = v13;

        v15 = [v4 objectForKey:v14];
        if (!v15)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v4 setObject:v15 forKey:v14];
        }

        [v15 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  allKeys = [v4 allKeys];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [v4 objectForKeyedSubscript:v21];
        v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_63];

        if (v23)
        {
          [v4 setObject:v23 forKeyedSubscript:v21];
        }
      }

      v18 = [allKeys countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  return v4;
}

- (CSVoiceTriggerRTModel)_buildRTModelWithBlobConfig:()RTModel requestOptions:
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"blob"];
  if (v8)
  {
    resourcePath = [self resourcePath];
    v10 = [resourcePath stringByAppendingPathComponent:v8];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [defaultManager fileExistsAtPath:v10];

    v13 = MEMORY[0x277D015D8];
    v14 = *MEMORY[0x277D015D8];
    v15 = *MEMORY[0x277D015D8];
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v44 = 2114;
        v45 = v10;
        _os_log_impl(&dword_222E4D000, v14, OS_LOG_TYPE_DEFAULT, "%s Reading blob from : %{public}@", buf, 0x16u);
      }

      v16 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v10];
      if (v16)
      {
        v17 = [MEMORY[0x277D01758] sha1StringFromInputData:v16];
        v41 = [v17 substringWithRange:{0, 20}];

        v40 = [MEMORY[0x277D01758] sha256DataFromInputData:v16];
        v18 = [v6 objectForKeyedSubscript:@"signature"];
        v39 = v18;
        if (v18)
        {
          v19 = v18;
          resourcePath2 = [self resourcePath];
          v21 = [resourcePath2 stringByAppendingPathComponent:v19];

          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v23 = [defaultManager2 fileExistsAtPath:v21];

          if (v23)
          {
            v38 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21];
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
        }

        v27 = [v6 objectForKeyedSubscript:@"cert"];
        v37 = v27;
        if (v27)
        {
          v28 = v27;
          resourcePath3 = [self resourcePath];
          v30 = [resourcePath3 stringByAppendingPathComponent:v28];

          defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
          v32 = [defaultManager3 fileExistsAtPath:v30];

          if (v32)
          {
            v33 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v30];
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v34 = [CSVoiceTriggerRTModel alloc];
        siriLocale = [v7 siriLocale];
        v25 = [(CSVoiceTriggerRTModel *)v34 initWithData:v16 hash:v41 locale:siriLocale digest:v40 signature:v38 certificate:v33];
      }

      else
      {
        v26 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
          v44 = 2114;
          v45 = v10;
          _os_log_error_impl(&dword_222E4D000, v26, OS_LOG_TYPE_ERROR, "%s Blob is nil : %{public}@", buf, 0x16u);
        }

        v25 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v43 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
        v44 = 2114;
        v45 = v10;
        _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s blob file is not exists at %{public}@", buf, 0x16u);
      }

      v25 = 0;
    }
  }

  else
  {
    v24 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = "[CSAsset(RTModel) _buildRTModelWithBlobConfig:requestOptions:]";
      _os_log_error_impl(&dword_222E4D000, v24, OS_LOG_TYPE_ERROR, "%s blob file name is not exists", buf, 0xCu);
    }

    v25 = 0;
  }

  return v25;
}

- (id)localeMapWithName:()RTModel
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionary = [self dictionary];
  if (dictionary)
  {
    v6 = dictionary;
    dictionary2 = [self dictionary];
    v8 = [dictionary2 objectForKeyedSubscript:v4];
    if (v8)
    {
      v9 = v8;
      dictionary3 = [self dictionary];
      v11 = [dictionary3 objectForKeyedSubscript:v4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        dictionary4 = [self dictionary];
        v14 = [dictionary4 objectForKeyedSubscript:v4];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v15 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v17 = 136315394;
    v18 = "[CSAsset(RTModel) localeMapWithName:]";
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_222E4D000, v15, OS_LOG_TYPE_ERROR, "%s Locale map for %{public}@ is not available on asset", &v17, 0x16u);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)rtModelLocaleMapWithModelType:()RTModel
{
  if (a3 == 1)
  {
    [self remoraRTModelLocaleMap];
  }

  else
  {
    [self hearstRTModelLocaleMap];
  }
  v3 = ;

  return v3;
}

- (id)rtModelWithRequestOptions:()RTModel
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  accessoryModelType = [v4 accessoryModelType];
  integerValue = [accessoryModelType integerValue];

  if (integerValue)
  {
    v7 = @"adkblobs";
  }

  else
  {
    v7 = @"rtblobs";
  }

  dictionary = [self dictionary];
  if (dictionary && (v9 = dictionary, [self dictionary], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", v7), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v9, v11))
  {
    dictionary2 = [self dictionary];
    v13 = [dictionary2 objectForKeyedSubscript:v7];

    v14 = [self _rtModelWithRequestOptions:v4 accessoryBlobs:v13];
  }

  else
  {
    v15 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "[CSAsset(RTModel) rtModelWithRequestOptions:]";
      _os_log_error_impl(&dword_222E4D000, v15, OS_LOG_TYPE_ERROR, "%s corespeech.json doesn't contains rtblobs", &v17, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)latestHearstRTModelWithRequestOptions:()RTModel
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dictionary = [self dictionary];
  if (!dictionary || (v6 = dictionary, [self dictionary], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", @"rtblobs"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !v8))
  {
    v25 = 0;
    goto LABEL_23;
  }

  dictionary2 = [self dictionary];
  v10 = [dictionary2 objectForKeyedSubscript:@"rtblobs"];
  selfCopy = self;
  v31 = v4;
  v11 = [self _getFilteredAccessoryRTBlobListForRequestOptions:v4 accessoryBlobs:v10 forceSkipEngineVersionCheck:1];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (!v12)
  {
    v14 = 0;
    v33 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v33 = 0;
  v15 = 0;
  v16 = *v36;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v36 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v35 + 1) + 8 * i);
      v19 = [v18 objectForKeyedSubscript:@"majorVersion"];
      unsignedIntValue = [v19 unsignedIntValue];

      v21 = [v18 objectForKeyedSubscript:@"minorVersion"];
      unsignedIntValue2 = [v21 unsignedIntValue];

      if (v14 < unsignedIntValue)
      {
        v14 = unsignedIntValue;
LABEL_14:
        v24 = v18;

        v33 = unsignedIntValue2;
        v15 = v24;
        continue;
      }

      if (v14 == unsignedIntValue && v33 < unsignedIntValue2)
      {
        goto LABEL_14;
      }
    }

    v13 = [obj countByEnumeratingWithState:&v35 objects:v47 count:16];
  }

  while (v13);
LABEL_20:

  v26 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315907;
    v40 = "[CSAsset(RTModel) latestHearstRTModelWithRequestOptions:]";
    v41 = 1024;
    v42 = v14;
    v43 = 1024;
    v44 = v33;
    v45 = 2113;
    v46 = v15;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s latestMajorVersion = %d, LatestMinorVersion = %d rtBlob = %{private}@", buf, 0x22u);
  }

  v27 = [CSVoiceTriggerRTModelRequestOptions alloc];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __58__CSAsset_RTModel__latestHearstRTModelWithRequestOptions___block_invoke;
  v34[3] = &__block_descriptor_48_e56_v16__0___CSVoiceTriggerRTModelRequestOptionsMutablity__8l;
  v34[4] = v14;
  v34[5] = v33;
  v4 = v31;
  v28 = [(CSVoiceTriggerRTModelRequestOptions *)v27 initWithCSRTModelRequestOptions:v31 builder:v34];
  v25 = [selfCopy _buildRTModelWithBlobConfig:v15 requestOptions:v28];

LABEL_23:

  return v25;
}

- (id)RTModelWithFallbackLanguage:()RTModel
{
  v2 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:?];
  v3 = [self createRTModelWithLocale:v2];

  return v3;
}

- (CSVoiceTriggerRTModel)createRTModelWithLocale:()RTModel
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  resourcePath = [self resourcePath];
  v6 = MEMORY[0x277D015D8];
  v7 = 0x277D7A000uLL;
  if (resourcePath && (v8 = resourcePath, [self path], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    resourcePath2 = [self resourcePath];
    v11 = [resourcePath2 stringByAppendingPathComponent:@"config_rtv2.txt"];

    resourcePath3 = [self resourcePath];
    v13 = [resourcePath3 stringByAppendingPathComponent:@"config_rt.txt"];

    resourcePath4 = [self resourcePath];
    v15 = [resourcePath4 stringByAppendingPathComponent:@"config.txt"];

    v16 = CSHasAOP();
    v17 = v15;
    if (v16)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v19 = [defaultManager fileExistsAtPath:v11 isDirectory:0];

      v17 = v11;
      if ((v19 & 1) == 0)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v21 = [defaultManager2 fileExistsAtPath:v13 isDirectory:0];

        v17 = v13;
        if ((v21 & 1) == 0)
        {
          v22 = *v6;
          v23 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
          v17 = v15;
          if (v23)
          {
            v42 = 136315650;
            v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
            v44 = 2114;
            v45 = 0;
            v46 = 2114;
            v47 = v15;
            _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_DEFAULT, "%s RT specific configuration %{public}@ does not exist, defaulting to unified configuration %{public}@", &v42, 0x20u);
            v17 = v15;
          }
        }
      }
    }

    v24 = v17;
    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315394;
      v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v44 = 2114;
      v45 = v24;
      _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_DEFAULT, "%s Creating RT blob using: %{public}@", &v42, 0x16u);
    }

    v26 = MEMORY[0x277D7A8C0];
    resourcePath5 = [self resourcePath];
    v28 = [v26 getBlobWithConfigFilename:v24 rootDirectory:resourcePath5];

    v29 = *v6;
    v30 = *v6;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 136315394;
        v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        v44 = 2114;
        v45 = v24;
        _os_log_impl(&dword_222E4D000, v29, OS_LOG_TYPE_DEFAULT, "%s CorealisRT model creation done successfully : %{public}@", &v42, 0x16u);
      }

      v31 = [self assetHashInResourcePath:v24];
    }

    else
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v42 = 136315138;
        v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
        _os_log_error_impl(&dword_222E4D000, v29, OS_LOG_TYPE_ERROR, "%s Failed to create CorealisRT model", &v42, 0xCu);
      }

      v31 = 0;
    }

    v7 = 0x277D7A000;

    if (v28)
    {
      resourcePath6 = [self resourcePath];
      if (resourcePath6)
      {
        v40 = resourcePath6;
        path = [self path];

        if (path)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    v31 = 0;
    v28 = 0;
  }

  v32 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 136315138;
    v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s Defaulting to en_US CorealisRT model", &v42, 0xCu);
  }

  getDefaultBlob = [*(v7 + 2240) getDefaultBlob];

  v34 = *v6;
  v35 = *v6;
  if (getDefaultBlob)
  {
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315138;
      v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_DEFAULT, "%s Default CorealisRT model creation done successfully", &v42, 0xCu);
    }

    v31 = @"nohash";
    v28 = getDefaultBlob;
LABEL_21:
    v36 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 136315650;
      v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
      v44 = 2114;
      v45 = v4;
      v46 = 2114;
      v47 = v31;
      _os_log_impl(&dword_222E4D000, v36, OS_LOG_TYPE_DEFAULT, "%s RT Model queried - %{public}@ %{public}@", &v42, 0x20u);
    }

    v37 = [[CSVoiceTriggerRTModel alloc] initWithData:v28 hash:v31 locale:v4];

    goto LABEL_27;
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v42 = 136315138;
    v43 = "[CSAsset(RTModel) createRTModelWithLocale:]";
    _os_log_error_impl(&dword_222E4D000, v34, OS_LOG_TYPE_ERROR, "%s Failed to create default CorealisRT model", &v42, 0xCu);
  }

  v37 = 0;
LABEL_27:

  return v37;
}

+ (uint64_t)supportsMultiPhraseVoiceTriggerForEngineVersion:()RTModel engineMinorVersion:accessoryRTModelType:
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  unsignedIntegerValue = [v7 unsignedIntegerValue];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];
  unsignedIntegerValue3 = [v9 unsignedIntegerValue];

  v13 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "+[CSAsset(RTModel) supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:]";
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s Incoming Major version:%@, Incoming Minor version:%@", &v18, 0x20u);
  }

  if (unsignedIntegerValue)
  {
    v14 = unsignedIntegerValue2 == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (unsignedIntegerValue3 <= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end