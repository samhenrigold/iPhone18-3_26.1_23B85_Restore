@interface MNVoiceLanguageUtil
+ (id)_uiVoiceLanguage;
+ (id)systemDefaultVoiceLanguage;
@end

@implementation MNVoiceLanguageUtil

+ (id)systemDefaultVoiceLanguage
{
  v21 = *MEMORY[0x1E69E9840];
  _uiVoiceLanguage = [self _uiVoiceLanguage];
  mEMORY[0x1E698D1C0] = [MEMORY[0x1E698D1C0] sharedPreferences];
  assistantIsEnabled = [mEMORY[0x1E698D1C0] assistantIsEnabled];

  if (!assistantIsEnabled)
  {
    languageCode = GetAudioLogForMNVoiceLanguageUtilCategory();
    if (os_log_type_enabled(languageCode, OS_LOG_TYPE_INFO))
    {
      v17 = 138543362;
      v18 = _uiVoiceLanguage;
      _os_log_impl(&dword_1D311E000, languageCode, OS_LOG_TYPE_INFO, "ⓥ Using UI language %{public}@ (Siri disabled)", &v17, 0xCu);
    }

    goto LABEL_15;
  }

  outputVoice = [MEMORY[0x1E698D0F8] outputVoice];
  languageCode = [outputVoice languageCode];

  v7 = GetAudioLogForMNVoiceLanguageUtilCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138543362;
    v18 = languageCode;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_DEBUG, "ⓥ siriVoiceLanguage = %{public}@", &v17, 0xCu);
  }

  if (!languageCode)
  {
LABEL_15:
    v13 = _uiVoiceLanguage;
    goto LABEL_20;
  }

  v8 = [MEMORY[0x1E698D0F8] assistantIsSupportedForLanguageCode:_uiVoiceLanguage error:0];
  v9 = GetAudioLogForMNVoiceLanguageUtilCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = @"No";
    if (v8)
    {
      v10 = @"Yes";
    }

    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_DEBUG, "ⓥ uiLanguageAvailableInSiri = %{public}@", &v17, 0xCu);
  }

  v11 = GetAudioLogForMNVoiceLanguageUtilCategory();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v17 = 138543618;
      v18 = languageCode;
      v19 = 2114;
      v20 = _uiVoiceLanguage;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "ⓥ Using Siri language %{public}@ (UI-based language is %{public}@)", &v17, 0x16u);
    }

    v13 = languageCode;
    v11 = _uiVoiceLanguage;
  }

  else
  {
    if (v12)
    {
      v17 = 138543618;
      v18 = _uiVoiceLanguage;
      v19 = 2114;
      v20 = languageCode;
      _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_INFO, "ⓥ Using UI language %{public}@ (Siri language is %{public}@)", &v17, 0x16u);
    }

    v13 = _uiVoiceLanguage;
  }

LABEL_20:
  v14 = [MEMORY[0x1E69A1E60] supportedPhoneticTypesForPhoneticLocaleID:v13];
  GEOConfigSetArray();
  v15 = v13;

  return v13;
}

+ (id)_uiVoiceLanguage
{
  v36 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = preferredLocalizations;
  v24 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (!v24)
  {

LABEL_20:
    v6 = @"en-US";
    goto LABEL_21;
  }

  v6 = 0;
  v23 = *v26;
  v7 = *MEMORY[0x1E695D9B0];
  *&v5 = 138543874;
  v22 = v5;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v26 != v23)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v25 + 1) + 8 * v8);
    v10 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:{v9, v22}];
    v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];
    v12 = [v11 objectForKey:v7];

    v13 = [MEMORY[0x1E69D32F0] fallbackLanguageFor:v10];
    v14 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v13];
    v15 = [v14 objectForKey:v7];

    v16 = GetAudioLogForMNVoiceLanguageUtilCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = v22;
      v30 = v9;
      v31 = 2114;
      v32 = v10;
      v33 = 2114;
      v34 = v13;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_DEBUG, "ⓥ UI language %{public}@ (%{public}@) falls back to %{public}@", buf, 0x20u);
    }

    v17 = [v12 isEqualToString:@"yue"];
    v18 = [v13 isEqualToString:@"zh-HK"];
    if (!v6)
    {
      v6 = v13;
    }

    if ((v17 & v18 & 1) != 0 || [v15 isEqual:v12])
    {
      v19 = v13;

      v20 = 1;
      v6 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      break;
    }

    if (v24 == ++v8)
    {
      v24 = [v4 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v24)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v6;
}

@end