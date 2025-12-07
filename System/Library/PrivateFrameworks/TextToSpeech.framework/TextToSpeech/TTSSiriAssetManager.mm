@interface TTSSiriAssetManager
+ (id)_assetFilterForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type locallyAvailable:(BOOL)available;
+ (id)_assetTechnologyForVoiceType:(int64_t)type;
+ (id)_assetTypesForVoiceType:(int64_t)type;
+ (id)_assetsForLanguage:(id)language voiceType:(int64_t)type installedOnly:(BOOL)only;
+ (id)_footprintForType:(int64_t)type;
+ (id)_siriAssetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type;
+ (id)_siriAssetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type locallyAvailable:(BOOL)available;
+ (id)assetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type;
+ (id)convertTTSLanguageCodeToSiriLanguageCode:(id)code;
+ (id)deprecatedVoicesMap;
+ (id)installedAssetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type;
+ (id)installedVoiceResourceForLanguage:(id)language;
+ (id)ttsAssetFromVoiceAsset:(id)asset;
+ (id)voiceAssetFromTTSAsset:(id)asset;
+ (id)voiceIdentifierForAsset:(id)asset;
+ (id)voiceIdentifierForType:(int64_t)type footprint:(int64_t)footprint language:(id)language name:(id)name;
+ (id)voiceResourceForLanguage:(id)language voiceType:(int64_t)type;
+ (int64_t)_footprintForQuality:(id)quality;
+ (int64_t)_voiceTypeForAssetTechnology:(id)technology;
+ (void)downloadAsset:(id)asset progressHandler:(id)handler;
+ (void)downloadVoiceResourceForLanguage:(id)language completion:(id)completion;
+ (void)purgeAsset:(id)asset;
+ (void)stopDownload:(id)download;
@end

@implementation TTSSiriAssetManager

+ (id)convertTTSLanguageCodeToSiriLanguageCode:(id)code
{
  codeCopy = code;
  if (([(__CFString *)codeCopy isEqualToString:@"ar-001"]& 1) != 0)
  {
    v4 = @"ar-SA";
  }

  else
  {
    if (![(__CFString *)codeCopy isEqualToString:@"no-NO"])
    {
      goto LABEL_6;
    }

    v4 = @"nb-NO";
  }

  codeCopy = v4;
LABEL_6:
  v5 = [(__CFString *)codeCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  return v5;
}

+ (void)downloadVoiceResourceForLanguage:(id)language completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  languageCopy = language;
  v7 = [objc_opt_class() convertTTSLanguageCodeToSiriLanguageCode:languageCopy];

  v19 = &unk_1F1D0F798;
  v20[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v9 = MEMORY[0x1E69D3328];
  voiceResources = [MEMORY[0x1E69D3348] voiceResources];
  v18 = voiceResources;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v12 = [v9 bestAssetOfTypes:v11 matching:v8];

  if ([v12 locallyAvailable])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else if (v12)
  {
    v13 = AXTTSLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1A9324000, v13, OS_LOG_TYPE_INFO, "Downloading voice resources asset %@", buf, 0xCu);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1A9336678;
    v14[3] = &unk_1E7880008;
    v15 = completionCopy;
    [v12 downloadWithReservation:@"TextToSpeech.VoiceResources" useBattery:1 progress:&unk_1F1CEDAC8 then:v14];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

+ (id)installedVoiceResourceForLanguage:(id)language
{
  v13[2] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = [objc_opt_class() convertTTSLanguageCodeToSiriLanguageCode:languageCopy];

  v12[0] = &unk_1F1D0F7B0;
  v12[1] = &unk_1F1D0F798;
  v13[0] = MEMORY[0x1E695E118];
  v13[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v6 = MEMORY[0x1E69D3328];
  voiceResources = [MEMORY[0x1E69D3348] voiceResources];
  v11 = voiceResources;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v9 = [v6 bestAssetOfTypes:v8 matching:v5];

  return v9;
}

+ (id)voiceResourceForLanguage:(id)language voiceType:(int64_t)type
{
  v26[2] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v7 = [objc_opt_class() convertTTSLanguageCodeToSiriLanguageCode:languageCopy];

  v25[0] = &unk_1F1D0F7B0;
  v25[1] = &unk_1F1D0F798;
  v26[0] = MEMORY[0x1E695E118];
  v26[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v9 = MEMORY[0x1E69D3328];
  voiceResources = [MEMORY[0x1E69D3348] voiceResources];
  v24 = voiceResources;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v12 = [v9 bestAssetOfTypes:v11 matching:v8];

  v13 = AXTTSLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1A9577C8C();
  }

  if (v12)
  {
    assetSource = [v12 assetSource];
    mobileAsset = [MEMORY[0x1E69D3338] mobileAsset];

    if (assetSource == mobileAsset)
    {
      [self downloadVoiceResourceForLanguage:v7 completion:0];
    }

    v16 = objc_alloc_init(TTSVoiceResourceAsset);
    [(TTSAssetBase *)v16 setBundleIdentifier:@"com.apple.MobileAsset.VoiceServices.VoiceResources"];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "versionNumber")}];
    stringValue = [v17 stringValue];
    [(TTSAssetBase *)v16 setMasteredVersion:stringValue];

    [(TTSAssetBase *)v16 setCompatibilityVersion:&unk_1F1D0F7C8];
    [(TTSAssetBase *)v16 setContentVersion:&unk_1F1D0F7C8];
    supportedLanguages = [v12 supportedLanguages];
    [(TTSVoiceResourceAsset *)v16 setLanguages:supportedLanguages];

    if ([v12 locallyAvailable])
    {
      bundle = [v12 bundle];
      bundleURL = [bundle bundleURL];

      [(TTSVoiceResourceAsset *)v16 setSearchPathURL:bundleURL];
      v22 = [bundleURL URLByAppendingPathComponent:@"voice_configs.plist"];
      [(TTSVoiceResourceAsset *)v16 syncWithConfigFile:v22 voiceType:type];
    }
  }

  else
  {
    [self downloadVoiceResourceForLanguage:v7 completion:0];
    v16 = 0;
  }

  return v16;
}

+ (id)_footprintForType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    if (type == 4)
    {
      premium = [MEMORY[0x1E69D3330] premium];
    }

    else if (type == 5)
    {
      premium = [MEMORY[0x1E69D3330] premiumhigh];
    }

    else
    {
      premium = 0;
    }
  }

  else
  {
    premium = [MEMORY[0x1E69D3330] compact];
  }

  return premium;
}

+ (id)_assetTypesForVoiceType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  if (type <= 3)
  {
    if (type == 1)
    {
      vocalizerVoice = [MEMORY[0x1E69D3348] vocalizerVoice];
      v11 = vocalizerVoice;
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v11;
      goto LABEL_9;
    }

    if (type == 2)
    {
      vocalizerVoice = [MEMORY[0x1E69D3348] customVoice];
      v10 = vocalizerVoice;
      v5 = MEMORY[0x1E695DEC8];
      v6 = &v10;
      goto LABEL_9;
    }
  }

  else if ((type - 4) < 2 || type == 7)
  {
    vocalizerVoice = [MEMORY[0x1E69D3348] gryphonVoice];
    v9 = vocalizerVoice;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v9;
LABEL_9:
    v7 = [v5 arrayWithObjects:v6 count:{1, v9, v10, v11, v12}];
    goto LABEL_10;
  }

  vocalizerVoice = AXTTSLogCommon();
  if (os_log_type_enabled(vocalizerVoice, OS_LOG_TYPE_ERROR))
  {
    sub_1A9577D10(type);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)ttsAssetFromVoiceAsset:(id)asset
{
  if (asset)
  {
    assetCopy = asset;
    languages = [assetCopy languages];
    firstObject = [languages firstObject];
    gender = [assetCopy gender];
    footprint = [assetCopy footprint];
    name = [assetCopy name];
    voiceType = [assetCopy voiceType];
    isInstalled = [assetCopy isInstalled];

    v12 = [self _siriAssetForLanguage:firstObject gender:gender footprint:footprint voiceName:name voiceType:voiceType locallyAvailable:isInstalled];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (int64_t)_footprintForQuality:(id)quality
{
  v3 = MEMORY[0x1E69D3330];
  qualityCopy = quality;
  compact = [v3 compact];
  v6 = [qualityCopy isEqual:compact];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  return v7;
}

+ (id)voiceAssetFromTTSAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy)
  {
    v11 = 0;
    goto LABEL_19;
  }

  name = [assetCopy name];
  name2 = [v5 name];
  if (![name2 length])
  {

    goto LABEL_8;
  }

  supportedLanguages = [v5 supportedLanguages];
  v9 = [supportedLanguages count];

  if (!v9)
  {
LABEL_8:
    v12 = AXTTSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1A9577DA0();
    }

    v11 = 0;
    goto LABEL_18;
  }

  if ([v5 purgeable])
  {
    locallyAvailable = 0;
  }

  else
  {
    locallyAvailable = [v5 locallyAvailable];
  }

  technology = [v5 technology];
  custom = [MEMORY[0x1E69D3340] custom];
  v39 = name;
  if ([technology isEqual:custom])
  {
    quality = [v5 quality];
    compact = [MEMORY[0x1E69D3330] compact];
    v17 = [quality isEqual:compact];

    locallyAvailable |= v17;
  }

  v38 = locallyAvailable;

  v36 = [TTSVoiceAsset alloc];
  supportedLanguages2 = [v5 supportedLanguages];
  gender = [v5 gender];
  if (gender == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = gender == 1;
  }

  quality2 = [v5 quality];
  selfCopy = self;
  v22 = [self _footprintForQuality:quality2];
  locallyAvailable2 = [v5 locallyAvailable];
  technology2 = [v5 technology];
  string = [technology2 string];
  neural = [MEMORY[0x1E69D3340] neural];
  string2 = [neural string];
  LOBYTE(v35) = [string isEqualToString:string2];
  v11 = [(TTSVoiceAsset *)v36 initWithName:v39 languages:supportedLanguages2 gender:v20 footprint:v22 isInstalled:locallyAvailable2 isBuiltIn:v38 & 1 masteredVersion:@"1" compatibilityVersion:@"1" neural:v35];

  technology3 = [v5 technology];
  v29 = [selfCopy _voiceTypeForAssetTechnology:technology3];

  bundle = [v5 bundle];
  bundlePath = [bundle bundlePath];
  [(TTSVoiceAsset *)v11 setVoicePath:bundlePath];

  [(TTSVoiceAsset *)v11 setVoiceType:v29];
  v32 = [selfCopy voiceIdentifierForAsset:v5];
  [(TTSVoiceAsset *)v11 setIdentifier:v32];

  diskSize = [v5 diskSize];
  -[TTSVoiceAsset setFileSize:](v11, "setFileSize:", [diskSize unsignedIntValue]);

  name = v39;
LABEL_18:

LABEL_19:

  return v11;
}

+ (id)voiceIdentifierForType:(int64_t)type footprint:(int64_t)footprint language:(id)language name:(id)name
{
  languageCopy = language;
  lowercaseString = [name lowercaseString];
  v11 = [lowercaseString stringByReplacingOccurrencesOfString:@"-" withString:&stru_1F1CFF8D8];

  v12 = 0;
  if (type > 3)
  {
    switch(type)
    {
      case 4:
        v13 = MEMORY[0x1E696AEC0];
        v14 = kTTSGryphonVoiceIdentifierPrefix;
        break;
      case 5:
        v13 = MEMORY[0x1E696AEC0];
        v14 = kTTSNeuralVoiceIdentifierPrefix;
        break;
      case 7:
        v13 = MEMORY[0x1E696AEC0];
        if (footprint == 3)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.voice", v11];
          goto LABEL_16;
        }

        v14 = kTTSNeuralAXVoiceIdentifierPrefix;
        break;
      default:
        goto LABEL_16;
    }

LABEL_14:
    v18 = *v14;
    v16 = TTSStringForSpeechFootprint(footprint);
    lowercaseString2 = [v16 lowercaseString];
    [v13 stringWithFormat:@"%@_%@_%@_%@", v18, v11, languageCopy, lowercaseString2];
    goto LABEL_15;
  }

  if (type != 1)
  {
    if (type != 2)
    {
      goto LABEL_16;
    }

    v13 = MEMORY[0x1E696AEC0];
    v14 = kTTSSiriVoiceIdentifierPrefix;
    goto LABEL_14;
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = TTSStringForSpeechFootprint(footprint);
  lowercaseString2 = [v16 lowercaseString];
  [v15 stringWithFormat:@"%@.%@-%@", @"com.apple.ttsbundle", v11, lowercaseString2, v20];
  v12 = LABEL_15:;

LABEL_16:

  return v12;
}

+ (id)voiceIdentifierForAsset:(id)asset
{
  assetCopy = asset;
  technology = [assetCopy technology];
  v6 = [self _voiceTypeForAssetTechnology:technology];

  quality = [assetCopy quality];
  v8 = [self _footprintForQuality:quality];

  primaryLanguage = [assetCopy primaryLanguage];
  if (primaryLanguage)
  {
    primaryLanguage2 = [assetCopy primaryLanguage];
  }

  else
  {
    supportedLanguages = [assetCopy supportedLanguages];
    primaryLanguage2 = [supportedLanguages firstObject];
  }

  name = [assetCopy name];
  v13 = [self voiceIdentifierForType:v6 footprint:v8 language:primaryLanguage2 name:name];

  return v13;
}

+ (void)purgeAsset:(id)asset
{
  v3 = [self ttsAssetFromVoiceAsset:asset];
  [v3 purgeImmediately:1];
}

+ (void)stopDownload:(id)download
{
  downloadCopy = download;
  v5 = AXTTSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A9324000, v5, OS_LOG_TYPE_DEFAULT, "Reqeuesting cancel asset download", v7, 2u);
  }

  v6 = [self ttsAssetFromVoiceAsset:downloadCopy];

  [v6 cancelDownloadingThen:&unk_1F1CEF598];
}

+ (id)deprecatedVoicesMap
{
  if (qword_1ED9705A8 != -1)
  {
    sub_1A9577E14();
  }

  v3 = qword_1ED9705B0;

  return v3;
}

+ (void)downloadAsset:(id)asset progressHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [self ttsAssetFromVoiceAsset:asset];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A9337748;
  v11[3] = &unk_1E7880050;
  v12 = handlerCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A933776C;
  v9[3] = &unk_1E7880008;
  v10 = v12;
  v8 = v12;
  [v7 downloadWithReservation:@"Accessibility" useBattery:1 progress:v11 then:v9];
}

+ (int64_t)_voiceTypeForAssetTechnology:(id)technology
{
  technologyCopy = technology;
  custom = [MEMORY[0x1E69D3340] custom];
  v5 = [technologyCopy isEqual:custom];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    vocalizer = [MEMORY[0x1E69D3340] vocalizer];
    v8 = [technologyCopy isEqual:vocalizer];

    if (v8)
    {
      v6 = 1;
    }

    else
    {
      neural = [MEMORY[0x1E69D3340] neural];
      v10 = [technologyCopy isEqual:neural];

      if (v10)
      {
        v6 = 5;
      }

      else
      {
        neuralAX = [MEMORY[0x1E69D3340] neuralAX];
        v12 = [technologyCopy isEqual:neuralAX];

        if (v12)
        {
          v6 = 7;
        }

        else
        {
          gryphon = [MEMORY[0x1E69D3340] gryphon];
          v14 = [technologyCopy isEqual:gryphon];

          if (v14)
          {
            v6 = 4;
          }

          else
          {
            v6 = 1;
          }
        }
      }
    }
  }

  return v6;
}

+ (id)_assetTechnologyForVoiceType:(int64_t)type
{
  if (type <= 3)
  {
    if (type == 1)
    {
      vocalizer = [MEMORY[0x1E69D3340] vocalizer];
      goto LABEL_15;
    }

    if (type == 2)
    {
      vocalizer = [MEMORY[0x1E69D3340] custom];
      goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 4:
        vocalizer = [MEMORY[0x1E69D3340] gryphon];
        goto LABEL_15;
      case 5:
        vocalizer = [MEMORY[0x1E69D3340] neural];
        goto LABEL_15;
      case 7:
        vocalizer = [MEMORY[0x1E69D3340] neuralAX];
        goto LABEL_15;
    }
  }

  v5 = AXTTSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1A9577D10(type);
  }

  vocalizer = 0;
LABEL_15:

  return vocalizer;
}

+ (id)_assetsForLanguage:(id)language voiceType:(int64_t)type installedOnly:(BOOL)only
{
  onlyCopy = only;
  v37[1] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v36 = &unk_1F1D0F7E0;
  v9 = [self _assetTechnologyForVoiceType:type];
  v37[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v11 = [v10 mutableCopy];

  if (languageCopy)
  {
    [v11 setObject:languageCopy forKeyedSubscript:&unk_1F1D0F798];
  }

  v12 = [self _assetTypesForVoiceType:type];
  if (v12)
  {
    v13 = objc_opt_new();
    if (onlyCopy)
    {
      [v11 setObject:MEMORY[0x1E695E118] forKeyedSubscript:&unk_1F1D0F7B0];
    }

    v14 = [MEMORY[0x1E69D3328] listAssetsOfTypes:v12 matching:v11];
    v15 = AXTTSLogResourceManager();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = [MEMORY[0x1E696AD98] numberWithLong:type];
      *buf = 138412802;
      v31 = v24;
      v32 = 2112;
      v33 = v11;
      v34 = 2112;
      v35 = v14;
      _os_log_debug_impl(&dword_1A9324000, v15, OS_LOG_TYPE_DEBUG, "TTSAsset::listAssetsOfTypes (voiceTypes=%@ filter=%@): %@", buf, 0x20u);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [self voiceAssetFromTTSAsset:{*(*(&v25 + 1) + 8 * i), v25}];
          [v13 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    allObjects = [v13 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

+ (id)installedAssetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type
{
  v8 = [self _siriAssetForLanguage:language gender:gender footprint:footprint voiceName:name voiceType:type locallyAvailable:1];
  v9 = [self voiceAssetFromTTSAsset:v8];

  return v9;
}

+ (id)assetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type
{
  v8 = [self _siriAssetForLanguage:language gender:gender footprint:footprint voiceName:name voiceType:type];
  v9 = [self voiceAssetFromTTSAsset:v8];

  return v9;
}

+ (id)_siriAssetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type
{
  nameCopy = name;
  v13 = [self convertTTSLanguageCodeToSiriLanguageCode:language];
  v14 = [self _assetFilterForLanguage:v13 gender:gender footprint:footprint voiceName:nameCopy voiceType:type locallyAvailable:1];

  v15 = [v14 mutableCopy];
  v16 = [self _assetTypesForVoiceType:type];
  if (v16)
  {
    v17 = [MEMORY[0x1E69D3328] bestAssetOfTypes:v16 matching:v15];
    if (!v17)
    {
      [v15 removeObjectForKey:&unk_1F1D0F7B0];
      v17 = [MEMORY[0x1E69D3328] bestAssetOfTypes:v16 matching:v15];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_siriAssetForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type locallyAvailable:(BOOL)available
{
  availableCopy = available;
  nameCopy = name;
  v15 = [self convertTTSLanguageCodeToSiriLanguageCode:language];
  v16 = [self _assetTypesForVoiceType:type];
  if (v16)
  {
    v17 = MEMORY[0x1E69D3328];
    v18 = [self _assetFilterForLanguage:v15 gender:gender footprint:footprint voiceName:nameCopy voiceType:type locallyAvailable:availableCopy];
    v19 = [v17 bestAssetOfTypes:v16 matching:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)_assetFilterForLanguage:(id)language gender:(int64_t)gender footprint:(int64_t)footprint voiceName:(id)name voiceType:(int64_t)type locallyAvailable:(BOOL)available
{
  availableCopy = available;
  v22[3] = *MEMORY[0x1E69E9840];
  languageCopy = language;
  nameCopy = name;
  v21[0] = &unk_1F1D0F7E0;
  v15 = [self _assetTechnologyForVoiceType:type];
  v22[0] = v15;
  v21[1] = &unk_1F1D0F7F8;
  v16 = [self _footprintForType:footprint];
  v22[1] = v16;
  v21[2] = &unk_1F1D0F7B0;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:availableCopy];
  v22[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v19 = [v18 mutableCopy];

  if (languageCopy)
  {
    [v19 setObject:languageCopy forKeyedSubscript:&unk_1F1D0F798];
  }

  if (nameCopy)
  {
    [v19 setObject:nameCopy forKeyedSubscript:&unk_1F1D0F810];
  }

  return v19;
}

@end