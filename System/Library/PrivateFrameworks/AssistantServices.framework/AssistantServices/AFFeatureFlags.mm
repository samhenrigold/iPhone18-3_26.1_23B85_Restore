@interface AFFeatureFlags
+ (BOOL)isAnnounceEnabled;
+ (BOOL)isAudioAppPredictionOnHomePodEnabled;
+ (BOOL)isCrossDeviceArbitrationFeedbackEnabled;
+ (BOOL)isHomePodNoTTSPerfTestEnabled;
+ (BOOL)isInfoDomainsRFEnabled;
+ (BOOL)isLocationSearchContinuityEnabled;
+ (BOOL)isPersistentIDLoggingDisabledForType:(int64_t)type;
+ (BOOL)isSiriPommesEnabledForLanguage:(id)language;
+ (BOOL)isSiriUODAvailableForLanguage:(id)language;
+ (BOOL)isStateFeedbackEnabled;
+ (id)featureFlags;
+ (id)sharedInstance;
+ (void)dump;
+ (void)setLocationSearchContinuityEnabled:(BOOL)enabled;
@end

@implementation AFFeatureFlags

+ (BOOL)isCrossDeviceArbitrationFeedbackEnabled
{
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1 && (_os_feature_enabled_impl() & 1) != 0)
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

+ (BOOL)isAnnounceEnabled
{
  ANAnnounceFeatureStatusClass = getANAnnounceFeatureStatusClass(self, a2);

  return [ANAnnounceFeatureStatusClass isEnabled];
}

+ (BOOL)isHomePodNoTTSPerfTestEnabled
{
  if (isHomePodNoTTSPerfTestEnabled_once != -1)
  {
    dispatch_once(&isHomePodNoTTSPerfTestEnabled_once, &__block_literal_global_257);
  }

  if (isHomePodNoTTSPerfTestEnabled_isDefaultSet == 1)
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    v2 = AFIsHorseman_isHorseman;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

+ (BOOL)isStateFeedbackEnabled
{
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

+ (BOOL)isAudioAppPredictionOnHomePodEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
  v3 = [v2 BOOLForKey:@"AudioAppPredictionHomePod"];
  v4 = _os_feature_enabled_impl() | v3;

  return v4 & 1;
}

+ (id)featureFlags
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v2 = CFPreferencesCopyKeyList(@"com.apple.assistant.features", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v2;
    v3 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v16;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v15 + 1) + 8 * i);
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"X-Dev-ConfigOverride-", v7];
          v9 = CFPreferencesCopyAppValue(v7, @"com.apple.assistant.features");
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
          {
            [v13 setObject:@"true" forKey:v8];
          }
        }

        v4 = [(__CFArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
    }
  }

  if (+[AFFeatureFlags isOlympusEnabled])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"X-Dev-ConfigOverride-", @"assistant.service.olympus.enabled"];
    [v13 setObject:@"true" forKey:v10];
  }

  if (+[AFFeatureFlags isInfoDomainsRFEnabled])
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"X-Dev-ConfigOverride-", @"assistant.service.InfoDomainsRF.enabled"];
    [v13 setObject:@"true" forKey:v11];
  }

  return v13;
}

+ (BOOL)isInfoDomainsRFEnabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

+ (void)dump
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[AFFeatureFlags featureFlags];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "+[AFFeatureFlags dump]";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %@", &v4, 0x16u);
  }
}

+ (void)setLocationSearchContinuityEnabled:(BOOL)enabled
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  CFPreferencesSetAppValue(@"assistant.service.location-search.continuity.enabled", v3, @"com.apple.assistant.features");
  CFPreferencesAppSynchronize(@"com.apple.assistant.features");
}

+ (BOOL)isLocationSearchContinuityEnabled
{
  v2 = CFPreferencesCopyAppValue(@"assistant.service.location-search.continuity.enabled", @"com.apple.assistant.features");
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_14403);
  }

  v3 = sharedInstance_sFeatureFlags;

  return v3;
}

void __32__AFFeatureFlags_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFFeatureFlags);
  v1 = sharedInstance_sFeatureFlags;
  sharedInstance_sFeatureFlags = v0;
}

+ (BOOL)isPersistentIDLoggingDisabledForType:(int64_t)type
{
  if (type > 0x12)
  {
    return 0;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

+ (BOOL)isSiriPommesEnabledForLanguage:(id)language
{
  languageCopy = language;
  v4 = languageCopy;
  if (isSiriPommesEnabledForLanguage__once != -1)
  {
    dispatch_once(&isSiriPommesEnabledForLanguage__once, &__block_literal_global_267_14566);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (!languageCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = [isSiriPommesEnabledForLanguage__supportByLanguage objectForKey:v4];
  bOOLValue = [v5 BOOLValue];

  if (!bOOLValue || !_os_feature_enabled_impl())
  {
    goto LABEL_7;
  }

  v7 = [isSiriPommesEnabledForLanguage__supportByLanguage objectForKeyedSubscript:v4];
  v8 = v7 != 0;

LABEL_8:
  return v8;
}

void __66__AFFeatureFlags_SWEFeatureFlags__isSiriPommesEnabledForLanguage___block_invoke()
{
  v49[44] = *MEMORY[0x1E69E9840];
  v48[0] = @"en-US";
  v47 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[0] = v47;
  v48[1] = @"zh-CN";
  v46 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[1] = v46;
  v48[2] = @"en-GB";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[2] = v45;
  v48[3] = @"en-AU";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[3] = v44;
  v48[4] = @"en-CA";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[4] = v43;
  v48[5] = @"en-IN";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[5] = v42;
  v48[6] = @"de-DE";
  v41 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[6] = v41;
  v48[7] = @"ja-JP";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[7] = v40;
  v48[8] = @"fr-FR";
  v39 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[8] = v39;
  v48[9] = @"es-MX";
  v38 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[9] = v38;
  v48[10] = @"es-ES";
  v37 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[10] = v37;
  v48[11] = @"es-US";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[11] = v36;
  v48[12] = @"zh-HK";
  v35 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[12] = v35;
  v48[13] = @"ar-SA";
  v34 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[13] = v34;
  v48[14] = @"en-SG";
  v33 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[14] = v33;
  v48[15] = @"it-IT";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[15] = v32;
  v48[16] = @"ko-KR";
  v31 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[16] = v31;
  v48[17] = @"ru-RU";
  v30 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[17] = v30;
  v48[18] = @"tr-TR";
  v29 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[18] = v29;
  v48[19] = @"yue-CN";
  v28 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[19] = v28;
  v48[20] = @"zh-TW";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[20] = v27;
  v48[21] = @"da-DK";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[21] = v26;
  v48[22] = @"de-AT";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[22] = v25;
  v48[23] = @"de-CH";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[23] = v24;
  v48[24] = @"en-IE";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[24] = v23;
  v48[25] = @"en-NZ";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[25] = v22;
  v48[26] = @"en-ZA";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[26] = v21;
  v48[27] = @"es-CL";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[27] = v20;
  v48[28] = @"fi-FI";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[28] = v19;
  v48[29] = @"fr-BE";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[29] = v18;
  v48[30] = @"fr-CA";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[30] = v17;
  v48[31] = @"fr-CH";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[31] = v16;
  v48[32] = @"he-IL";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[32] = v15;
  v48[33] = @"it-CH";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[33] = v14;
  v48[34] = @"ms-MY";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[34] = v13;
  v48[35] = @"nb-NO";
  v0 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[35] = v0;
  v48[36] = @"nl-BE";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[36] = v1;
  v48[37] = @"nl-NL";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[37] = v2;
  v48[38] = @"pt-BR";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[38] = v3;
  v48[39] = @"sv-SE";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[39] = v4;
  v48[40] = @"th-TH";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[40] = v5;
  v48[41] = @"id-ID";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[41] = v6;
  v48[42] = @"vi-VN";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:_os_feature_enabled_impl()];
  v49[42] = v7;
  v48[43] = @"pt-PT";
  v8 = MEMORY[0x1E696AD98];
  if (_os_feature_enabled_impl())
  {
    v9 = AFDeviceSupportsSiriUOD();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 numberWithInt:v9];
  v49[43] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:44];
  v12 = isSiriPommesEnabledForLanguage__supportByLanguage;
  isSiriPommesEnabledForLanguage__supportByLanguage = v11;
}

void __64__AFFeatureFlags_SWEFeatureFlags__isHomePodNoTTSPerfTestEnabled__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
  isHomePodNoTTSPerfTestEnabled_isDefaultSet = [v0 BOOLForKey:@"HomePodNoTTSPerfTestEnabled"];
}

+ (BOOL)isSiriUODAvailableForLanguage:(id)language
{
  languageCopy = language;
  if (isSiriUODAvailableForLanguage__once != -1)
  {
    dispatch_once(&isSiriUODAvailableForLanguage__once, &__block_literal_global_42_14753);
  }

  if ([isSiriUODAvailableForLanguage__top13Locales containsObject:languageCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [isSiriUODAvailableForLanguage__bottom28Locales containsObject:languageCopy];
  }

  return v4;
}

void __65__AFFeatureFlags_SWEFeatureFlags__isSiriUODAvailableForLanguage___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F056FFD8];
  v1 = isSiriUODAvailableForLanguage__top13Locales;
  isSiriUODAvailableForLanguage__top13Locales = v0;

  v2 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F056FFF0];
  v3 = isSiriUODAvailableForLanguage__bottom28Locales;
  isSiriUODAvailableForLanguage__bottom28Locales = v2;
}

@end