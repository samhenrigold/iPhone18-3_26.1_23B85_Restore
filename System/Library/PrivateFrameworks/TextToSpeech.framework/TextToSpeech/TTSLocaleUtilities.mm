@interface TTSLocaleUtilities
+ (id)sharedInstance;
- (NSDictionary)canonicalLanguageCodeVoiceNamesData;
- (NSDictionary)generalLanguageCodeData;
- (NSDictionary)voiceIdSampleStringData;
- (TTSLocaleUtilities)init;
- (id)defaultVoiceIdentifierForGeneralLanguageCode:(id)code;
- (id)defaultVoiceIdentifierForVoiceName:(id)name;
- (id)sampleStringForVoiceIdentifier:(id)identifier withPreferredLocaleID:(id)d;
@end

@implementation TTSLocaleUtilities

- (TTSLocaleUtilities)init
{
  v6.receiver = self;
  v6.super_class = TTSLocaleUtilities;
  v2 = [(TTSLocaleUtilities *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    fallbackSampleStringCache = v2->_fallbackSampleStringCache;
    v2->_fallbackSampleStringCache = dictionary;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1ED970E98 != -1)
  {
    sub_1A9578A18();
  }

  v3 = qword_1ED970EB0;

  return v3;
}

- (NSDictionary)canonicalLanguageCodeVoiceNamesData
{
  canonicalLanguageCodeVoiceNamesData = self->_canonicalLanguageCodeVoiceNamesData;
  if (!canonicalLanguageCodeVoiceNamesData)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"CanonicalLanguageCodeVoiceNamesMap" ofType:@"plist"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
      v7 = self->_canonicalLanguageCodeVoiceNamesData;
      self->_canonicalLanguageCodeVoiceNamesData = v6;
    }

    else
    {
      v8 = AXTTSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A9578A2C(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    canonicalLanguageCodeVoiceNamesData = self->_canonicalLanguageCodeVoiceNamesData;
  }

  return canonicalLanguageCodeVoiceNamesData;
}

- (NSDictionary)generalLanguageCodeData
{
  generalLanguageCodeData = self->_generalLanguageCodeData;
  if (!generalLanguageCodeData)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"GeneralLanguageCodeMap" ofType:@"plist"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
      v7 = self->_generalLanguageCodeData;
      self->_generalLanguageCodeData = v6;
    }

    else
    {
      v8 = AXTTSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A9578A2C(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    generalLanguageCodeData = self->_generalLanguageCodeData;
  }

  return generalLanguageCodeData;
}

- (NSDictionary)voiceIdSampleStringData
{
  voiceIdSampleStringData = self->_voiceIdSampleStringData;
  if (!voiceIdSampleStringData)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"VoiceIdSampleStringMap" ofType:@"plist"];

    if (v5)
    {
      v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
      v7 = self->_voiceIdSampleStringData;
      self->_voiceIdSampleStringData = v6;
    }

    else
    {
      v8 = AXTTSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1A9578A64(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }

    voiceIdSampleStringData = self->_voiceIdSampleStringData;
  }

  return voiceIdSampleStringData;
}

- (id)defaultVoiceIdentifierForGeneralLanguageCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    v5 = AXCLanguageCanonicalFormToGeneralLanguage();
    if ([v5 isEqualToString:codeCopy])
    {
      generalLanguageCodeData = [(TTSLocaleUtilities *)self generalLanguageCodeData];
      voiceId = [generalLanguageCodeData objectForKey:codeCopy];

      if (!voiceId)
      {
        v8 = +[TTSAXResourceManager sharedInstance];
        v9 = [v8 resourcesWithLanguage:codeCopy type:4];
        firstObject = [v9 firstObject];
        voiceId = [firstObject voiceId];
      }
    }

    else
    {
      voiceId = 0;
    }
  }

  else
  {
    voiceId = 0;
  }

  return voiceId;
}

- (id)sampleStringForVoiceIdentifier:(id)identifier withPreferredLocaleID:(id)d
{
  dCopy = d;
  lowercaseString = [identifier lowercaseString];
  if (lowercaseString)
  {
    voiceIdSampleStringData = [(TTSLocaleUtilities *)self voiceIdSampleStringData];
    v9 = [voiceIdSampleStringData objectForKey:lowercaseString];

    if (!v9)
    {
      if (![lowercaseString containsString:@"compact"] || ((v10 = objc_msgSend(lowercaseString, "containsString:", @".super-compact."), v11 = @".compact.", (v10 & 1) == 0) ? (v12 = lowercaseString, v13 = @".compact.", v11 = @".super-compact.") : (v12 = lowercaseString, v13 = @".super-compact."), objc_msgSend(v12, "stringByReplacingOccurrencesOfString:withString:", v13, v11), v14 = objc_claimAutoreleasedReturnValue(), -[TTSLocaleUtilities voiceIdSampleStringData](self, "voiceIdSampleStringData"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectForKey:", v14), v9 = objc_claimAutoreleasedReturnValue(), v15, v14, !v9))
      {
        v16 = +[TTSAXResourceManager sharedInstance];
        v17 = [v16 resourceWithVoiceId:lowercaseString];

        if (!v17)
        {
          goto LABEL_26;
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        isPersonalVoice = [v17 isPersonalVoice];
        if (([v17 type] == 3) | isPersonalVoice & 1)
        {
          v20 = 0;
        }

        else
        {
          fallbackSampleStringCache = [(TTSLocaleUtilities *)selfCopy fallbackSampleStringCache];
          primaryLanguage = [v17 primaryLanguage];
          v20 = [fallbackSampleStringCache objectForKeyedSubscript:primaryLanguage];
        }

        objc_sync_exit(selfCopy);

        if (v20)
        {
          goto LABEL_23;
        }

        if (([v17 type] != 3 || objc_msgSend(v17, "subtype") == 7 && objc_msgSend(v17, "footprint") == 3) && isPersonalVoice)
        {
          if (!dCopy)
          {
            dCopy = [v17 primaryLanguage];
          }

          v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          v20 = AXNSLocalizedStringForLocale();
        }

        else
        {
          v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
          primaryLanguage2 = [v17 primaryLanguage];
          v20 = AXNSLocalizedStringForLocale();
        }

        if (v20)
        {
LABEL_23:
          v25 = selfCopy;
          objc_sync_enter(v25);
          if (!(([v17 type] == 3) | isPersonalVoice & 1))
          {
            fallbackSampleStringCache2 = [(TTSLocaleUtilities *)v25 fallbackSampleStringCache];
            primaryLanguage3 = [v17 primaryLanguage];
            [fallbackSampleStringCache2 setObject:v20 forKeyedSubscript:primaryLanguage3];
          }

          objc_sync_exit(v25);

          name = [v17 name];
          primaryLanguage4 = [v17 primaryLanguage];
          v30 = [(TTSAXResource *)TTSSpeechVoice localizedName:name forLanguage:primaryLanguage4];

          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, v30];
        }

        else
        {
LABEL_26:
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)defaultVoiceIdentifierForVoiceName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    canonicalLanguageCodeVoiceNamesData = [(TTSLocaleUtilities *)self canonicalLanguageCodeVoiceNamesData];
    allKeys = [canonicalLanguageCodeVoiceNamesData allKeys];

    v7 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        canonicalLanguageCodeVoiceNamesData2 = [(TTSLocaleUtilities *)self canonicalLanguageCodeVoiceNamesData];
        v13 = [canonicalLanguageCodeVoiceNamesData2 objectForKey:v11];

        lowercaseString = [nameCopy lowercaseString];
        v15 = [v13 containsObject:lowercaseString];

        if (v15)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [allKeys countByEnumeratingWithState:&v20 objects:v26 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v16 = v11;

      if (!v16)
      {
        goto LABEL_13;
      }

      v17 = AXCLanguageCanonicalFormToGeneralLanguage();
      v18 = [(TTSLocaleUtilities *)self defaultVoiceIdentifierForGeneralLanguageCode:v17];
    }

    else
    {
LABEL_10:

LABEL_13:
      v16 = AXTTSLogResourceManager();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = nameCopy;
        _os_log_impl(&dword_1A9324000, v16, OS_LOG_TYPE_INFO, "Unable to find language code for voice name: %@", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end