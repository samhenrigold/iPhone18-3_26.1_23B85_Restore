@interface VMConfiguration
+ (BOOL)isSystemLocaleSupportedForTranscription;
+ (NSLocale)localeForTranscriptionLanguage;
+ (NSLocale)matchLocaleForTranscriptionLanguage;
+ (float)confidenceLowQualityThreshold;
+ (float)confidenceSegmentThreshold;
+ (float)confidenceThreshold;
+ (id)VMAssetNgasrSupportedLocales:(BOOL)locales;
+ (id)confidenceThresholdFromAssetForKey:(id)key;
+ (id)confidenceThresholdFromDefaultsForKey:(id)key;
+ (id)getVMConcatenationDelimiterforLocale:(int64_t)locale;
+ (id)metadataDictionaryForSpeechAssetWithLanguage:(id)language;
+ (int64_t)getVMLocaleSpeechAssetTypeforLocale:(id)locale gasrEnabled:(BOOL)enabled;
+ (int64_t)getVMLocaleSpeechAssetTypeforLocaleIdentifier:(id)identifier gasrEnabled:(BOOL)enabled;
@end

@implementation VMConfiguration

+ (NSLocale)matchLocaleForTranscriptionLanguage
{
  v30 = *MEMORY[0x277D85DE8];
  isSystemLocaleSupportedForTranscription = [objc_opt_class() isSystemLocaleSupportedForTranscription];
  if (isSystemLocaleSupportedForTranscription)
  {
    vMASRSupportedLocales = [objc_opt_class() VMASRSupportedLocales];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    v6 = [MEMORY[0x277CBEAF8] matchedLanguagesFromAvailableLanguages:vMASRSupportedLocales forPreferredLanguages:preferredLanguages];
    v7 = [v6 count];
    firstObject2 = vm_framework_log(v7, v8);
    v10 = os_log_type_enabled(firstObject2, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v11 = [preferredLanguages componentsJoinedByString:{@", "}];
        v12 = [vMASRSupportedLocales componentsJoinedByString:{@", "}];
        v13 = [v6 componentsJoinedByString:{@", "}];
        firstObject = [v6 firstObject];
        v22 = 138413058;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = firstObject;
        _os_log_impl(&dword_2721BA000, firstObject2, OS_LOG_TYPE_DEFAULT, "matchLocaleForTranscriptionLanguage: Mapping preferred languages (%@) to languages supported by Siri: (%@). Mapped languages: (%@) Returning identifier %@", &v22, 0x2Au);
      }

      v15 = MEMORY[0x277CBEAF8];
      firstObject2 = [v6 firstObject];
      v16 = [v15 localeWithLocaleIdentifier:firstObject2];
    }

    else
    {
      if (v10)
      {
        v19 = [preferredLanguages componentsJoinedByString:{@", "}];
        v20 = [vMASRSupportedLocales componentsJoinedByString:{@", "}];
        v22 = 138412546;
        v23 = v19;
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_2721BA000, firstObject2, OS_LOG_TYPE_DEFAULT, "matchLocaleForTranscriptionLanguage: No preferred languages (%@) supported by Siri: (%@).", &v22, 0x16u);
      }

      v16 = 0;
    }

    v17 = v16;
    v18 = v17;
  }

  else
  {
    v17 = vm_framework_log(isSystemLocaleSupportedForTranscription, v3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2721BA000, v17, OS_LOG_TYPE_DEFAULT, "matchLocaleForTranscriptionLanguage: Transcription not supported for system locale", &v22, 2u);
    }

    v18 = 0;
  }

  return v18;
}

+ (BOOL)isSystemLocaleSupportedForTranscription
{
  v15 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  regionCode = [currentLocale regionCode];
  if (regionCode)
  {
    languageCode = [currentLocale languageCode];
    languageIdentifier = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@-%@", languageCode, regionCode];
  }

  else
  {
    languageIdentifier = [currentLocale languageIdentifier];
  }

  vMExpansionAvailableLocales = [objc_opt_class() VMExpansionAvailableLocales];
  v7 = [vMExpansionAvailableLocales containsObject:languageIdentifier];
  v9 = vm_framework_log(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = languageIdentifier;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_2721BA000, v9, OS_LOG_TYPE_DEFAULT, "isSystemLocaleSupportedForTranscription: System locale's language identifier = %@, is it enabled? %d", buf, 0x12u);
  }

  return v7;
}

+ (id)VMAssetNgasrSupportedLocales:(BOOL)locales
{
  if (locales)
  {
    return &unk_28817AC68;
  }

  else
  {
    return &unk_28817AC80;
  }
}

+ (int64_t)getVMLocaleSpeechAssetTypeforLocale:(id)locale gasrEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  localeCopy = locale;
  v6 = objc_opt_class();
  localeIdentifier = [localeCopy localeIdentifier];

  v8 = [v6 getVMLocaleSpeechAssetTypeforLocaleIdentifier:localeIdentifier gasrEnabled:enabledCopy];
  return v8;
}

+ (int64_t)getVMLocaleSpeechAssetTypeforLocaleIdentifier:(id)identifier gasrEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [objc_opt_class() VMAssetNgasrSupportedLocales:enabledCopy];
  v7 = [v6 containsObject:identifierCopy];

  if (v7)
  {
    v10 = 1002;
  }

  else if (enabledCopy && ([objc_opt_class() VMAssetGasrSupportedLocales], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", identifierCopy), v11, (v12 & 1) != 0))
  {
    v10 = 1010;
  }

  else
  {
    v13 = vm_framework_log(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&dword_2721BA000, v13, OS_LOG_TYPE_DEFAULT, "getVMLocaleSpeechAssetTypeforLocaleIdentifier: Unsupported locale identifier = %@", &v15, 0xCu);
    }

    v10 = 1012;
  }

  return v10;
}

+ (id)getVMConcatenationDelimiterforLocale:(int64_t)locale
{
  if (locale == 1010)
  {
    return &stru_2881762E0;
  }

  else
  {
    return @" ";
  }
}

+ (NSLocale)localeForTranscriptionLanguage
{
  v26 = *MEMORY[0x277D85DE8];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  if (currentLocale)
  {
    if (!_os_feature_enabled_impl())
    {
      v13 = currentLocale;
      languageIdentifier = [v13 languageIdentifier];
      v15 = [languageIdentifier isEqualToString:@"en-CA"];

      if (v15)
      {
        v18 = vm_framework_log(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_2721BA000, v18, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Mapping Canadian Siri to US Siri language for transcription", &v24, 2u);
        }

        v19 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en-US"];

        v13 = v19;
      }

      v20 = vm_framework_log(v16, v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier = [v13 localeIdentifier];
        v24 = 138412290;
        v25 = localeIdentifier;
        _os_log_impl(&dword_2721BA000, v20, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Returning %@", &v24, 0xCu);
      }

      v9 = v13;
      goto LABEL_17;
    }

    matchLocaleForTranscriptionLanguage = [objc_opt_class() matchLocaleForTranscriptionLanguage];
    v6 = vm_framework_log(matchLocaleForTranscriptionLanguage, v5);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (matchLocaleForTranscriptionLanguage)
    {
      if (v7)
      {
        localeIdentifier2 = [matchLocaleForTranscriptionLanguage localeIdentifier];
        v24 = 138412290;
        v25 = localeIdentifier2;
        _os_log_impl(&dword_2721BA000, v6, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Returning %@", &v24, 0xCu);
      }

      v9 = matchLocaleForTranscriptionLanguage;
LABEL_17:
      v11 = v9;
      v12 = v9;
      goto LABEL_18;
    }

    if (v7)
    {
      localeIdentifier3 = [currentLocale localeIdentifier];
      v24 = 138412290;
      v25 = localeIdentifier3;
      _os_log_impl(&dword_2721BA000, v6, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: No preferred languages supported by Siri. Defaulting to fallback current %@", &v24, 0xCu);
    }

    v12 = currentLocale;
    v11 = 0;
  }

  else
  {
    v10 = vm_framework_log(0, v2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_2721BA000, v10, OS_LOG_TYPE_DEFAULT, "localeForTranscriptionLanguage: Error: nil system locale returned.", &v24, 2u);
    }

    v11 = 0;
    v12 = 0;
  }

LABEL_18:

  return v12;
}

+ (float)confidenceThreshold
{
  v16 = *MEMORY[0x277D85DE8];
  confidenceThresholdFromAsset = [self confidenceThresholdFromAsset];
  v4 = confidenceThresholdFromAsset;
  if (confidenceThresholdFromAsset)
  {
    floatValue = [confidenceThresholdFromAsset floatValue];
    v8 = v7;
  }

  else
  {
    v9 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionConfidenceThreshold"];

    if (v9)
    {
      v10 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionConfidenceThreshold"];
      [v10 floatValue];
      v8 = v11;
    }

    else
    {
      v8 = 0.45096;
    }
  }

  v12 = vm_framework_log(floatValue, v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v8;
    _os_log_impl(&dword_2721BA000, v12, OS_LOG_TYPE_DEFAULT, "Returning confidenceThreshold of %f", &v14, 0xCu);
  }

  return v8;
}

+ (float)confidenceLowQualityThreshold
{
  v16 = *MEMORY[0x277D85DE8];
  confidenceLowQualityThresholdFromAsset = [self confidenceLowQualityThresholdFromAsset];
  v4 = confidenceLowQualityThresholdFromAsset;
  if (confidenceLowQualityThresholdFromAsset)
  {
    floatValue = [confidenceLowQualityThresholdFromAsset floatValue];
    v8 = v7;
  }

  else
  {
    v9 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionLowQualityConfidenceThreshold"];

    if (v9)
    {
      v10 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionLowQualityConfidenceThreshold"];
      [v10 floatValue];
      v8 = v11;
    }

    else
    {
      v8 = 0.6878;
    }
  }

  v12 = vm_framework_log(floatValue, v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v8;
    _os_log_impl(&dword_2721BA000, v12, OS_LOG_TYPE_DEFAULT, "Returning confidenceLowQualityThreshold of %f", &v14, 0xCu);
  }

  return v8;
}

+ (float)confidenceSegmentThreshold
{
  v16 = *MEMORY[0x277D85DE8];
  confidenceSegmentThresholdFromAsset = [self confidenceSegmentThresholdFromAsset];
  v4 = confidenceSegmentThresholdFromAsset;
  if (confidenceSegmentThresholdFromAsset)
  {
    floatValue = [confidenceSegmentThresholdFromAsset floatValue];
    v8 = v7;
  }

  else
  {
    v9 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionSegmentConfidenceThreshold"];

    if (v9)
    {
      v10 = [self confidenceThresholdFromDefaultsForKey:@"VoicemailTranscriptionSegmentConfidenceThreshold"];
      [v10 floatValue];
      v8 = v11;
    }

    else
    {
      v8 = 0.3;
    }
  }

  v12 = vm_framework_log(floatValue, v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v8;
    _os_log_impl(&dword_2721BA000, v12, OS_LOG_TYPE_DEFAULT, "Returning confidenceSegmentThreshold of %f", &v14, 0xCu);
  }

  return v8;
}

+ (id)confidenceThresholdFromDefaultsForKey:(id)key
{
  v3 = CFPreferencesCopyAppValue(key, @"com.apple.visualvoicemail");
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFNumberGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  return v4;
}

+ (id)confidenceThresholdFromAssetForKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  localeForTranscriptionLanguage = [self localeForTranscriptionLanguage];
  localeIdentifier = [localeForTranscriptionLanguage localeIdentifier];

  v7 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:localeIdentifier];
  isKindOfClass = [self metadataDictionaryForSpeechAssetWithLanguage:v7];
  v10 = isKindOfClass;
  if (!isKindOfClass)
  {
    goto LABEL_15;
  }

  v11 = [isKindOfClass objectForKeyedSubscript:@"voicemail-confidence-parameters"];
  v13 = vm_framework_log(v11, v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (v14)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_2721BA000, v13, OS_LOG_TYPE_DEFAULT, "Could not find a confidence threshold dictionary in this asset metadata", &v22, 2u);
    }

    goto LABEL_14;
  }

  if (v14)
  {
    v22 = 138412290;
    v23 = v11;
    _os_log_impl(&dword_2721BA000, v13, OS_LOG_TYPE_DEFAULT, "Found confidence dictionary in asset: %@", &v22, 0xCu);
  }

  v15 = [v11 objectForKeyedSubscript:keyCopy];
  v16 = MEMORY[0x277CCABB0];
  [v15 floatValue];
  v13 = [v16 numberWithFloat:?];

  if (v13)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 || (isKindOfClass = [v13 floatValue], v17 < 0.0) || (isKindOfClass = [v13 floatValue], v18 > 1.0))
    {
      v19 = vm_framework_log(isKindOfClass, v9);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(VMConfiguration *)v13 confidenceThresholdFromAssetForKey:v19];
      }

LABEL_14:
LABEL_15:
      v13 = 0;
    }
  }

  v20 = vm_framework_log(isKindOfClass, v9);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412546;
    v23 = v13;
    v24 = 2112;
    v25 = keyCopy;
    _os_log_impl(&dword_2721BA000, v20, OS_LOG_TYPE_DEFAULT, "Returning threshold from asset of %@, for key %@", &v22, 0x16u);
  }

  return v13;
}

+ (id)metadataDictionaryForSpeechAssetWithLanguage:(id)language
{
  v58 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v5 = vm_framework_log(languageCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = languageCopy;
    _os_log_impl(&dword_2721BA000, v5, OS_LOG_TYPE_DEFAULT, "Fetching JSON transcription object for %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  [v6 addKeyValuePair:@"Language" with:languageCopy];
  [v6 returnTypes:1];
  queryMetaDataSync = [v6 queryMetaDataSync];
  v45 = languageCopy;
  if (queryMetaDataSync)
  {
    v9 = 0;
  }

  else
  {
    results = [v6 results];
    if (!results || (v12 = results, [v6 results], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, !v14))
    {
      v15 = vm_framework_log(results, v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2721BA000, v15, OS_LOG_TYPE_DEFAULT, "No embedded speech assets were found", buf, 2u);
      }
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v44 = v6;
    obj = [v6 results];
    v16 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v16)
    {
      v18 = v16;
      v9 = 0;
      v19 = *v50;
      *&v17 = 138412290;
      v43 = v17;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          getLocalUrl = [v21 getLocalUrl];
          v24 = vm_framework_log(getLocalUrl, v23);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v54 = languageCopy;
            v55 = 2112;
            v56 = getLocalUrl;
            _os_log_impl(&dword_2721BA000, v24, OS_LOG_TYPE_DEFAULT, "Local url for language %@ is %@", buf, 0x16u);
          }

          if (getLocalUrl)
          {
            attributes = [v21 attributes];
            v26 = [attributes objectForKey:@"QuasarDir"];

            if (v26)
            {
              v27 = [getLocalUrl URLByAppendingPathComponent:v26];
              v28 = [v27 URLByAppendingPathComponent:@"mini.json"];

              v48 = v9;
              v29 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v28 options:0 error:&v48];
              v30 = v48;

              if (v29)
              {
                v47 = v30;
                v33 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v29 options:0 error:&v47];
                v9 = v47;

                if (v33)
                {
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  if (isKindOfClass)
                  {
                    v37 = vm_framework_log(isKindOfClass, v35);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_2721BA000, v37, OS_LOG_TYPE_DEFAULT, "Found appropriate JSON object in asset", buf, 2u);
                    }

                    v40 = vm_framework_log(v38, v39);
                    v6 = v44;
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = v43;
                      v54 = v33;
                      _os_log_impl(&dword_2721BA000, v40, OS_LOG_TYPE_DEFAULT, "Found metadata for speech asset: %@", buf, 0xCu);
                    }

                    goto LABEL_42;
                  }
                }

                v36 = vm_framework_log(isKindOfClass, v35);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v54 = v9;
                  v55 = 2112;
                  v56 = v33;
                  _os_log_error_impl(&dword_2721BA000, v36, OS_LOG_TYPE_ERROR, "Did not find a JSON object in asset, error %@. Did find %@", buf, 0x16u);
                }

                languageCopy = v45;
              }

              else
              {
                v29 = vm_framework_log(v31, v32);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = v43;
                  v54 = v30;
                  _os_log_error_impl(&dword_2721BA000, v29, OS_LOG_TYPE_ERROR, "Skipping asset, no JSON data found file error %@", buf, 0xCu);
                }

                v9 = v30;
              }
            }
          }
        }

        v18 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    v6 = v44;
  }

  v40 = vm_framework_log(queryMetaDataSync, v8);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    [VMConfiguration metadataDictionaryForSpeechAssetWithLanguage:v40];
  }

  v33 = 0;
LABEL_42:

  v41 = v33;
  return v33;
}

+ (void)confidenceThresholdFromAssetForKey:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "Confidence threshold failed a sanity check: %@", &v2, 0xCu);
}

@end