@interface SSRMobileAssetProvider
- (id)_buildAssetQueryForAssetType:(unint64_t)type;
- (id)_filteredAssets:(id)assets forLanguage:(id)language;
- (id)_findLatestInstalledAsset:(id)asset;
- (id)_getEndpointAssetTypeString;
- (id)_getSSRAssetTypeString;
- (id)_getVTRepromptListAssetTypeString;
- (id)_installedMobileAssetOfType:(unint64_t)type forLanguage:(id)language ofType:(int64_t)ofType;
- (id)_queryMAAssetsForAssetType:(unint64_t)type Language:(id)language;
- (id)allInstalledAssetsOfType:(unint64_t)type forLanguage:(id)language;
- (id)installedAssetOfType:(unint64_t)type forLanguageCode:(id)code;
- (id)installedSpeakerRecognitionAssetForLanguage:(id)language;
- (unint64_t)_getEndpointAssetCurrentCompatibilityVersion;
@end

@implementation SSRMobileAssetProvider

- (id)_filteredAssets:(id)assets forLanguage:(id)language
{
  v24 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  languageCopy = language;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = assetsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = *MEMORY[0x277D01980];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        attributes = [v14 attributes];
        v16 = [attributes valueForKey:v12];
        v17 = v16;
        if (!languageCopy || [v16 containsObject:languageCopy])
        {
          [v7 addObject:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_findLatestInstalledAsset:(id)asset
{
  v29 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [assetCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  v6 = MEMORY[0x277D01970];
  if (v4)
  {
    v7 = v4;
    v8 = 0;
    v9 = *v21;
    *&v5 = 136315394;
    v19 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(assetCopy);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        state = [v11 state];
        v13 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v25 = "[SSRMobileAssetProvider _findLatestInstalledAsset:]";
          v26 = 2050;
          v27 = state;
          _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Asset state : %{public}ld", buf, 0x16u);
        }

        if ((state - 7) >= 0xFFFFFFFFFFFFFFFELL)
        {
          if (v8)
          {
            if ([v11 isLatestCompareTo:v8])
            {
              v14 = v11;

              v8 = v14;
            }
          }

          else
          {
            v8 = v11;
          }
        }
      }

      v7 = [assetCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    attributes = [v8 attributes];
    *buf = 136315394;
    v25 = "[SSRMobileAssetProvider _findLatestInstalledAsset:]";
    v26 = 2114;
    v27 = attributes;
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s Chosen Asset %{public}@", buf, 0x16u);
  }

  return v8;
}

- (id)_installedMobileAssetOfType:(unint64_t)type forLanguage:(id)language ofType:(int64_t)ofType
{
  v26 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v9 = [(SSRMobileAssetProvider *)self _buildAssetQueryForAssetType:type];
  [v9 returnTypes:ofType];
  queryMetaDataSync = [v9 queryMetaDataSync];
  results = [v9 results];
  v12 = [(SSRMobileAssetProvider *)self _filteredAssets:results forLanguage:languageCopy];

  v13 = *MEMORY[0x277D01970];
  v14 = *MEMORY[0x277D01970];
  if ((queryMetaDataSync & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315650;
      v21 = "[SSRMobileAssetProvider _installedMobileAssetOfType:forLanguage:ofType:]";
      v22 = 2114;
      v23 = v9;
      v24 = 2050;
      v25 = queryMetaDataSync;
      _os_log_error_impl(&dword_225E12000, v13, OS_LOG_TYPE_ERROR, "%s Error running asset-query: %{public}@, error: %{public}lu", &v20, 0x20u);
    }

    v15 = 0;
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v13;
      v17 = [v12 count];
      queryParams = [v9 queryParams];
      v20 = 136315650;
      v21 = "[SSRMobileAssetProvider _installedMobileAssetOfType:forLanguage:ofType:]";
      v22 = 2050;
      v23 = v17;
      v24 = 2114;
      v25 = queryParams;
      _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu assets matching query: %{public}@", &v20, 0x20u);
    }

    v15 = [(SSRMobileAssetProvider *)self _findLatestInstalledAsset:v12];
  }

  return v15;
}

- (id)_buildAssetQueryForAssetType:(unint64_t)type
{
  typeCopy = type;
  v17 = *MEMORY[0x277D85DE8];
  if (type <= 2)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_15;
      }

      _getEndpointAssetTypeString = [(SSRMobileAssetProvider *)self _getEndpointAssetTypeString];
      _getEndpointAssetCurrentCompatibilityVersion = [(SSRMobileAssetProvider *)self _getEndpointAssetCurrentCompatibilityVersion];
    }

    else
    {
      _getEndpointAssetTypeString = [(SSRMobileAssetProvider *)self _getVoiceTriggerAssetTypeString];
      _getEndpointAssetCurrentCompatibilityVersion = [(SSRMobileAssetProvider *)self _getVoiceTriggerAssetCurrentCompatibilityVersion];
    }

    goto LABEL_13;
  }

  if (type == 8)
  {
    _getEndpointAssetTypeString = [(SSRMobileAssetProvider *)self _getVTRepromptListAssetTypeString];
    v7 = 1;
    if (!_getEndpointAssetTypeString)
    {
      goto LABEL_15;
    }

LABEL_14:
    v8 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:_getEndpointAssetTypeString];
    v9 = *MEMORY[0x277D288E8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v7];
    [v8 addKeyValuePair:v9 with:v10];

    goto LABEL_18;
  }

  if (type == 7)
  {
    _getEndpointAssetTypeString = @"com.apple.MobileAsset.VoiceTriggerAssetsMac";
    v7 = 15;
    goto LABEL_14;
  }

  if (type != 3)
  {
    goto LABEL_15;
  }

  _getEndpointAssetTypeString = [(SSRMobileAssetProvider *)self _getSSRAssetTypeString];
  _getEndpointAssetCurrentCompatibilityVersion = [(SSRMobileAssetProvider *)self _getSSRAssetCurrentCompatibilityVersion];
LABEL_13:
  v7 = _getEndpointAssetCurrentCompatibilityVersion;
  if (_getEndpointAssetTypeString)
  {
    goto LABEL_14;
  }

LABEL_15:
  v11 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "[SSRMobileAssetProvider _buildAssetQueryForAssetType:]";
    v15 = 1026;
    v16 = typeCopy;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Failed to get assetString for assetType %{public}d", buf, 0x12u);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (unint64_t)_getEndpointAssetCurrentCompatibilityVersion
{
  if (CSIsWatch())
  {
    return 3;
  }

  if (CSIsTV())
  {
    return 5;
  }

  if ([MEMORY[0x277D018F8] shouldUseHorsemanSpeechEndpointAssets])
  {
    return 2;
  }

  if (CSIsOSX())
  {
    return 6;
  }

  return 3;
}

- (id)_getEndpointAssetTypeString
{
  if (CSIsWatch())
  {
    return @"com.apple.MobileAsset.SpeechEndpointAssetsWatch";
  }

  if (CSIsTV())
  {
    return @"com.apple.MobileAsset.SpeechEndpointAssetsTV";
  }

  if ([MEMORY[0x277D018F8] shouldUseHorsemanSpeechEndpointAssets])
  {
    return @"com.apple.MobileAsset.SpeechEndpointMarshAssets";
  }

  if (CSIsOSX())
  {
    return @"com.apple.MobileAsset.SpeechEndpointMacOSAssets";
  }

  return @"com.apple.MobileAsset.SpeechEndpointAssets";
}

- (id)_getVTRepromptListAssetTypeString
{
  v15 = *MEMORY[0x277D85DE8];
  deviceProductType = [MEMORY[0x277D018F8] deviceProductType];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone16, 1", @"iPhone16, 2", @"iPhone15, 4", @"iPhone15, 5", 0}];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone14, 7", @"iPhone14, 8", @"iPhone15, 2", @"iPhone15, 3", @"iPhone14, 6", 0}];
  v5 = [MEMORY[0x277CBEB98] setWithObjects:{@"iPhone14, 2", @"iPhone14, 3", @"iPhone14, 4", @"iPhone14, 5", 0}];
  if (CSIsIPad())
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPad";
  }

  else if ([v3 containsObject:deviceProductType])
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone15x";
  }

  else if ([v4 containsObject:deviceProductType])
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone14x";
  }

  else if ([v5 containsObject:deviceProductType])
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone13x";
  }

  else
  {
    v6 = @"com.apple.MobileAsset.VoiceTriggerRePromptListiPhone12AndOlder";
  }

  v7 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "[SSRMobileAssetProvider _getVTRepromptListAssetTypeString]";
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = deviceProductType;
    _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Fetched assetStr: %{public}@ for deviceType: %{public}@", buf, 0x20u);
  }

  return v6;
}

- (id)_getSSRAssetTypeString
{
  if (CSIsASMacWithAOP())
  {
    return @"com.apple.MobileAsset.SpeakerRecognitionASMacAssets";
  }

  else
  {
    return @"com.apple.MobileAsset.SpeakerRecognitionAssets";
  }
}

- (id)installedSpeakerRecognitionAssetForLanguage:(id)language
{
  v3 = [(SSRMobileAssetProvider *)self _installedMobileAssetOfType:3 forLanguage:language];
  v4 = [v3 getCSAssetOfType:3];

  return v4;
}

- (id)_queryMAAssetsForAssetType:(unint64_t)type Language:(id)language
{
  v35 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v7 = [(SSRMobileAssetProvider *)self _buildAssetQueryForAssetType:type];
  v8 = v7;
  if (v7)
  {
    [v7 returnTypes:2];
    queryMetaDataSync = [v8 queryMetaDataSync];
    results = [v8 results];
    v11 = [(SSRMobileAssetProvider *)self _filteredAssets:results forLanguage:languageCopy];

    v12 = *MEMORY[0x277D01970];
    v13 = *MEMORY[0x277D01970];
    if ((queryMetaDataSync & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "[SSRMobileAssetProvider _queryMAAssetsForAssetType:Language:]";
        v31 = 2114;
        v32 = v8;
        v33 = 2050;
        v34 = queryMetaDataSync;
        _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s Error running query: %{public}@, error: %{public}lu", buf, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v12;
        v16 = [v11 count];
        queryParams = [v8 queryParams];
        *buf = 136315650;
        v30 = "[SSRMobileAssetProvider _queryMAAssetsForAssetType:Language:]";
        v31 = 2050;
        v32 = v16;
        v33 = 2114;
        v34 = queryParams;
        _os_log_impl(&dword_225E12000, v15, OS_LOG_TYPE_DEFAULT, "%s ::: found %{public}lu installed assets for matching query: %{public}@", buf, 0x20u);
      }

      v18 = [v11 sortedArrayUsingComparator:&__block_literal_global_7724];
      array = [MEMORY[0x277CBEB18] array];
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __62__SSRMobileAssetProvider__queryMAAssetsForAssetType_Language___block_invoke_2;
      v26 = &unk_2785792C0;
      v27 = array;
      typeCopy = type;
      v20 = array;
      [v18 enumerateObjectsUsingBlock:&v23];
      if ([v20 count])
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v14 = v21;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __62__SSRMobileAssetProvider__queryMAAssetsForAssetType_Language___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 5 || objc_msgSend(v3, "state") == 6)
  {
    v4 = [v3 getCSAssetOfType:*(a1 + 40)];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }

    else
    {
      v5 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v6 = v5;
        v7 = [v3 attributes];
        v8 = 136315394;
        v9 = "[SSRMobileAssetProvider _queryMAAssetsForAssetType:Language:]_block_invoke_2";
        v10 = 2114;
        v11 = v7;
        _os_log_error_impl(&dword_225E12000, v6, OS_LOG_TYPE_ERROR, "%s ERR: Failed to asset for %{public}@", &v8, 0x16u);
      }
    }
  }
}

uint64_t __62__SSRMobileAssetProvider__queryMAAssetsForAssetType_Language___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 isLatestCompareTo:?])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (id)allInstalledAssetsOfType:(unint64_t)type forLanguage:(id)language
{
  v6 = MEMORY[0x277D018F8];
  languageCopy = language;
  supportsSpeakerRecognitionAssets = [v6 supportsSpeakerRecognitionAssets];
  if (type == 3)
  {
    v9 = supportsSpeakerRecognitionAssets;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 0;
  }

  v11 = [(SSRMobileAssetProvider *)self _queryMAAssetsForAssetType:typeCopy Language:languageCopy];

  return v11;
}

- (id)installedAssetOfType:(unint64_t)type forLanguageCode:(id)code
{
  v26 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  supportsSpeakerRecognitionAssets = [MEMORY[0x277D018F8] supportsSpeakerRecognitionAssets];
  if (type != 3 || (supportsSpeakerRecognitionAssets & 1) != 0)
  {
    typeCopy = type;
    if (type)
    {
      goto LABEL_10;
    }
  }

  else if (CSIsGibraltarMac())
  {
    typeCopy = 7;
    if (![MEMORY[0x277D018F8] isDarwinOS])
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (CSIsGibraltarMac())
  {
    typeCopy = 7;
  }

  else
  {
    typeCopy = 0;
  }

LABEL_10:
  if ([MEMORY[0x277D018F8] isDarwinOS])
  {
LABEL_11:
    remoteAssetManager = [MEMORY[0x277D01850] remoteAssetManager];
    v10 = [remoteAssetManager assetForCurrentLanguageOfType:typeCopy];
    languageCode = [remoteAssetManager languageCode];
    v12 = [codeCopy isEqualToString:languageCode];

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v22 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        v24 = 136315138;
        v25 = "[SSRMobileAssetProvider installedAssetOfType:forLanguageCode:]";
        _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s Locale doesn't match, return nil", &v24, 0xCu);
      }

      v13 = 0;
    }

    goto LABEL_27;
  }

  if (type != 8)
  {
LABEL_19:
    v21 = [(SSRMobileAssetProvider *)self _installedMobileAssetOfType:typeCopy forLanguage:codeCopy];
LABEL_26:
    remoteAssetManager = v21;
    v13 = [v21 getCSAssetOfType:typeCopy];
    goto LABEL_27;
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  isVoiceTriggerRepromptAssetOverridingEnabled = [mEMORY[0x277D01788] isVoiceTriggerRepromptAssetOverridingEnabled];

  if (!isVoiceTriggerRepromptAssetOverridingEnabled)
  {
LABEL_25:
    v21 = [(SSRMobileAssetProvider *)self _installedMobileAssetOfType:typeCopy forLanguage:codeCopy ofType:3];
    goto LABEL_26;
  }

  mEMORY[0x277D01788]2 = [MEMORY[0x277D01788] sharedPreferences];
  remoteAssetManager = [mEMORY[0x277D01788]2 fakeVoiceTriggerRepromptAssetPath];

  stringByDeletingLastPathComponent = [remoteAssetManager stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = [defaultManager fileExistsAtPath:remoteAssetManager];

  if (!v19)
  {

    goto LABEL_25;
  }

  v20 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315138;
    v25 = "[SSRMobileAssetProvider installedAssetOfType:forLanguageCode:]";
    _os_log_impl(&dword_225E12000, v20, OS_LOG_TYPE_DEFAULT, "%s Retuning the override asset", &v24, 0xCu);
  }

  v13 = [MEMORY[0x277D015F8] assetForAssetType:8 resourcePath:stringByDeletingLastPathComponent configVersion:@"override-asset"];

LABEL_27:

  return v13;
}

@end