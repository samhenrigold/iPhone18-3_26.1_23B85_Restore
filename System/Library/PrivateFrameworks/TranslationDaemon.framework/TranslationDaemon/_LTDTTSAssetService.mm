@interface _LTDTTSAssetService
+ (NSArray)subscribedVoices;
+ (SiriTTSDaemonSession)siriTTSSession;
+ (id)_allTTSAssets;
+ (id)_preferredNameForLanguage:(id)language;
+ (id)_queue;
+ (id)_siriVoiceForTTSAsset:(id)asset;
+ (id)ttsAssetForLocaleIdentifier:(id)identifier onDeviceOnly:(BOOL)only;
+ (id)voiceForLocaleIdentifier:(id)identifier;
+ (int64_t)_genderForLocaleIdentifier:(id)identifier;
+ (int64_t)_preferredGender;
+ (int64_t)preferredVoiceType;
+ (void)_subscribeToVoice:(id)voice;
+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)downloadVoiceAssetsForLanguagePair:(id)pair;
+ (void)setSubscribedVoices:(id)voices;
@end

@implementation _LTDTTSAssetService

+ (id)_queue
{
  if (_queue_onceToken_1 != -1)
  {
    +[_LTDTTSAssetService _queue];
  }

  v3 = _queue__queue_1;

  return v3;
}

+ (int64_t)_preferredGender
{
  v2 = _AFPreferencesOutputVoice();
  gender = [v2 gender];

  return gender;
}

+ (id)_preferredNameForLanguage:(id)language
{
  v3 = [language stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v4 = _AFPreferencesOutputVoice();
  languageCode = [v4 languageCode];
  if ([languageCode isEqualToString:v3])
  {
    name = [v4 name];
  }

  else
  {
    name = 0;
  }

  return name;
}

+ (int64_t)preferredVoiceType
{
  _preferredGender = [self _preferredGender];
  if (_preferredGender == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (_preferredGender == 2);
  }
}

+ (int64_t)_genderForLocaleIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CBEAF8] lt_localeWithLTIdentifier:identifier];
  v4 = _LTPreferredVoiceTypeForLocale(v3);
  v5 = 2;
  if (v4 != 2)
  {
    v5 = 3;
  }

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

+ (id)ttsAssetForLocaleIdentifier:(id)identifier onDeviceOnly:(BOOL)only
{
  onlyCopy = only;
  v57[2] = *MEMORY[0x277D85DE8];
  v6 = [self _mapIdentifierForSiriTTS:identifier];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v8 = [self _preferredNameForLanguage:v7];
  v56[0] = &unk_284868020;
  v56[1] = &unk_284868038;
  v57[0] = v7;
  v49 = [self _genderForLocaleIdentifier:v6];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v57[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v11 = [v10 mutableCopy];

  if (v8)
  {
    [v11 setObject:v8 forKey:&unk_284868050];
  }

  if (onlyCopy)
  {
    [v11 setObject:&unk_284868068 forKey:&unk_284868080];
  }

  gryphonVoice = [MEMORY[0x277D61490] gryphonVoice];
  v55[0] = gryphonVoice;
  customVoice = [MEMORY[0x277D61490] customVoice];
  v55[1] = customVoice;
  combinedVoice = [MEMORY[0x277D61490] combinedVoice];
  v55[2] = combinedVoice;
  vocalizerVoice = [MEMORY[0x277D61490] vocalizerVoice];
  v55[3] = vocalizerVoice;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:4];

  v17 = [MEMORY[0x277D61480] bestAssetOfTypes:v16 matching:v11];
  v19 = _LTOSLogAssets(v17, v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    +[_LTDTTSAssetService ttsAssetForLocaleIdentifier:onDeviceOnly:];
  }

  v47 = v11;
  if (v17)
  {
    goto LABEL_8;
  }

  v46 = v7;
  v23 = _LTOSLogAssets(v20, v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [_LTDTTSAssetService ttsAssetForLocaleIdentifier:v23 onDeviceOnly:?];
  }

  _allTTSAssets = [self _allTTSAssets];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v25 = [_allTTSAssets objectForKeyedSubscript:v6];
  v26 = [v25 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (!v26)
  {

    goto LABEL_39;
  }

  v27 = v26;
  v43 = _allTTSAssets;
  v44 = v16;
  v45 = v6;
  v28 = 0;
  v17 = 0;
  v29 = *v51;
  obj = v25;
  do
  {
    v30 = 0;
    do
    {
      if (*v51 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v50 + 1) + 8 * v30);
      gender = [v31 gender];
      if (v8)
      {
        name = [v31 name];
        v34 = [name caseInsensitiveCompare:v8];

        if (gender == v49 && v34 == 0)
        {
          v28 = 3;
LABEL_28:
          weight = [v31 weight];
          if (weight <= [v17 weight])
          {
            v31 = v17;
          }

LABEL_30:
          v37 = v31;

          v17 = v37;
          goto LABEL_31;
        }

        if (v28 <= 2 && !v34)
        {
          v28 = 2;
          goto LABEL_28;
        }
      }

      if (v28 < 2 && gender == v49)
      {
        v28 = 1;
        goto LABEL_28;
      }

      if (!v28)
      {
        goto LABEL_30;
      }

LABEL_31:
      ++v30;
    }

    while (v27 != v30);
    v38 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    v27 = v38;
  }

  while (v38);

  v6 = v45;
  v7 = v46;
  v16 = v44;
  if (v17)
  {
LABEL_8:
    v22 = [[_LTDTTSAssetModel alloc] initWithProvider:v17];
    goto LABEL_42;
  }

LABEL_39:
  v41 = _LTOSLogAssets(v39, v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    +[_LTDTTSAssetService ttsAssetForLocaleIdentifier:onDeviceOnly:];
  }

  v17 = 0;
  v22 = 0;
LABEL_42:

  return v22;
}

+ (id)voiceForLocaleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [self ttsAssetForLocaleIdentifier:identifierCopy onDeviceOnly:1];
  provider = [v5 provider];
  v8 = provider;
  if (provider)
  {
    provider = [self _siriVoiceForTTSAsset:provider];
    v9 = provider;
    if (provider)
    {
      goto LABEL_6;
    }
  }

  v10 = _LTOSLogAssets(provider, v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    identifier = [v8 identifier];
    v17 = 138543618;
    v18 = identifier;
    v19 = 2114;
    v20 = identifierCopy;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "SiriTTS cannot load voice for TTS asset %{public}@, attempt default voice for language %{public}@", &v17, 0x16u);
  }

  v9 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:identifierCopy name:0];
  if ([v9 footprint])
  {
LABEL_6:
    v9 = v9;
    v14 = v9;
  }

  else
  {
    v15 = _LTOSLogAssets(0, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[_LTDTTSAssetService voiceForLocaleIdentifier:];
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_siriVoiceForTTSAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    supportedLanguages = [assetCopy supportedLanguages];
    firstObject = [supportedLanguages firstObject];

    name = [v5 name];
    gender = [v5 gender];
    if (gender > 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = qword_233005C50[gender];
    }

    v13 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:firstObject name:name];
    if (v13 || (v13 = [objc_alloc(MEMORY[0x277D61478]) initWithLanguage:firstObject name:0]) != 0)
    {
      v12 = v13;
      [v13 setGender:v10];
    }

    else
    {
      v16 = _LTOSLogAssets(0, v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[_LTDTTSAssetService _siriVoiceForTTSAsset:];
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = _LTOSLogAssets(0, v4);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTDTTSAssetService _siriVoiceForTTSAsset:v11];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)_allTTSAssets
{
  v39[2] = *MEMORY[0x277D85DE8];
  if (_cachedTTSAssets)
  {
    dictionary = _cachedTTSAssets;
  }

  else
  {
    v4 = MEMORY[0x277D61480];
    gryphonVoice = [MEMORY[0x277D61490] gryphonVoice];
    v39[0] = gryphonVoice;
    vocalizerVoice = [MEMORY[0x277D61490] vocalizerVoice];
    v39[1] = vocalizerVoice;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v8 = [v4 listAssetsOfTypes:v7 matching:MEMORY[0x277CBEC10]];

    v9 = +[_LTDLanguageAssetService availableIdentifiers];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __36___LTDTTSAssetService__allTTSAssets__block_invoke;
    v36[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
    v36[4] = self;
    v10 = [v9 _ltCompactMap:v36];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v32 + 1) + 8 * i);
          array = [MEMORY[0x277CBEB18] array];
          [dictionary setObject:array forKeyedSubscript:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v13);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          primaryLanguage = [v23 primaryLanguage];
          lt_localeIdentifier = [primaryLanguage lt_localeIdentifier];

          v26 = [dictionary objectForKeyedSubscript:lt_localeIdentifier];
          [v26 addObject:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v20);
    }

    objc_storeStrong(&_cachedTTSAssets, dictionary);
  }

  return dictionary;
}

+ (SiriTTSDaemonSession)siriTTSSession
{
  v3 = _siriTTSSession;
  if (_siriTTSSession)
  {
    [self setSiriTTSSession:_siriTTSSession];
    v4 = v3;
  }

  else
  {
    v4 = objc_opt_new();
    [self setSiriTTSSession:v4];
  }

  return v4;
}

+ (void)setSubscribedVoices:(id)voices
{
  voicesCopy = voices;
  v6 = _LTOSLogAssets(voicesCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService setSubscribedVoices:];
  }

  siriTTSSession = [self siriTTSSession];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43___LTDTTSAssetService_setSubscribedVoices___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = self;
  [siriTTSSession subscribeWithVoices:voicesCopy reply:v8];
}

+ (void)_subscribeToVoice:(id)voice
{
  voiceCopy = voice;
  v6 = _LTOSLogAssets(voiceCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService _subscribeToVoice:];
  }

  subscribedVoices = [self subscribedVoices];
  v8 = [subscribedVoices arrayByAddingObject:voiceCopy];

  siriTTSSession = [self siriTTSSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41___LTDTTSAssetService__subscribeToVoice___block_invoke;
  v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v10[4] = self;
  [siriTTSSession subscribeWithVoices:v8 reply:v10];
}

+ (NSArray)subscribedVoices
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = _LTPreferencesInstalledLocales();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [self voiceForLocaleIdentifier:*(*(&v13 + 1) + 8 * v9)];
        if (v10)
        {
          [v3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v7 = v5;
    }

    while (v5);
  }

  v11 = _LTOSLogAssets(v5, v6);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDTTSAssetService subscribedVoices];
  }

  return v3;
}

+ (void)downloadVoiceAssetsForLanguagePair:(id)pair
{
  v21 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v5 = _LTOSLogAssets(pairCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = pairCopy;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "SiriTTS downloaded voice assets for pair %{public}@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CCACA8];
  sourceLocale = [pairCopy sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  v9 = [v6 stringWithFormat:@"TTS-%@", _ltLocaleIdentifier];

  v10 = [[_LTDTTSAssetModel alloc] initWithAssetIdentifier:v9];
  v11 = [[_LTDAssetModel alloc] initWithProvider:v10];
  v12 = MEMORY[0x277CCACA8];
  targetLocale = [pairCopy targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  v15 = [v12 stringWithFormat:@"TTS-%@", _ltLocaleIdentifier2];

  v16 = [[_LTDTTSAssetModel alloc] initWithAssetIdentifier:v15];
  v17 = [[_LTDAssetModel alloc] initWithProvider:v16];
  [self downloadAsset:v11 options:0 progress:0 completion:0];
  [self downloadAsset:v17 options:0 progress:0 completion:0];
}

+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  v13 = assetCopy;
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v14 = 0;
LABEL_6:
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"SiriTTS unsupported asset type"];
    v17 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v16 userInfo:0];
    v19 = _LTOSLogAssets(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[_LTDTTSAssetService downloadAsset:options:progress:completion:];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
LABEL_9:

      goto LABEL_10;
    }

    completionCopy[2](completionCopy, v17);
    goto LABEL_9;
  }

  v14 = v13;
  if ([v13 managedAssetProvider] != 4)
  {
    goto LABEL_6;
  }

  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___LTDTTSAssetService_downloadAsset_options_progress_completion___block_invoke;
  block[3] = &unk_2789B6600;
  v14 = v13;
  v21 = v14;
  v22 = completionCopy;
  optionsCopy = options;
  v23 = progressCopy;
  selfCopy = self;
  dispatch_async(_queue, block);

  v16 = v21;
LABEL_10:
}

@end