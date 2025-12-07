@interface VSLocalizedString
+ (id)appendRandomizationKey:(id)key withCount:(int)count;
+ (id)localizedInterstitialStringForKey:(id)key language:(id)language;
+ (id)localizedStringForKey:(id)key language:(id)language table:(id)table;
+ (id)predefinedStringForKey:(id)key language:(id)language table:(id)table;
@end

@implementation VSLocalizedString

+ (id)localizedInterstitialStringForKey:(id)key language:(id)language
{
  keyCopy = key;
  languageCopy = language;
  if (keyCopy == @"VOICE_SERVICES_NETWORK_STALL")
  {
    keyCopy = [self appendRandomizationKey:@"VOICE_SERVICES_NETWORK_STALL" withCount:3];
  }

  v8 = [self localizedStringForKey:keyCopy language:languageCopy table:@"Interstitials"];

  return v8;
}

+ (id)appendRandomizationKey:(id)key withCount:(int)count
{
  keyCopy = key;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%d", keyCopy, (rand() % count + 1)];

  return v6;
}

+ (id)predefinedStringForKey:(id)key language:(id)language table:(id)table
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  languageCopy = language;
  tableCopy = table;
  v11 = VSGetLogDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v23 = 138412546;
    v24 = keyCopy;
    v25 = 2114;
    v26 = languageCopy;
    _os_log_impl(&dword_272850000, v11, OS_LOG_TYPE_INFO, "Searching predefined string for '%@' in '%{public}@'", &v23, 0x16u);
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 pathForResource:languageCopy ofType:@"strings" inDirectory:tableCopy];

  v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v13];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 objectForKeyedSubscript:keyCopy];

    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:keyCopy];
LABEL_13:
      v21 = v17;
      goto LABEL_14;
    }
  }

  v18 = [languageCopy isEqualToString:@"en-US"];
  v19 = VSGetLogDefault();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if ((v18 & 1) == 0)
  {
    if (v20)
    {
      v23 = 138543618;
      v24 = languageCopy;
      v25 = 2112;
      v26 = keyCopy;
      _os_log_error_impl(&dword_272850000, v19, OS_LOG_TYPE_ERROR, "Unable to find '%{public}@' predefined string for key '%@', return default en-US string", &v23, 0x16u);
    }

    v17 = [self predefinedStringForKey:keyCopy language:@"en-US" table:tableCopy];
    goto LABEL_13;
  }

  if (v20)
  {
    v23 = 138543618;
    v24 = languageCopy;
    v25 = 2112;
    v26 = keyCopy;
    _os_log_error_impl(&dword_272850000, v19, OS_LOG_TYPE_ERROR, "Unable to find '%{public}@' predefined string for key '%@', return empty string", &v23, 0x16u);
  }

  v21 = &stru_2881D71A8;
LABEL_14:

  return v21;
}

+ (id)localizedStringForKey:(id)key language:(id)language table:(id)table
{
  v45 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  languageCopy = language;
  tableCopy = table;
  v9 = VSGetLogDefault();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v42 = keyCopy;
    v43 = 2114;
    v44 = languageCopy;
    _os_log_impl(&dword_272850000, v9, OS_LOG_TYPE_INFO, "Localize for '%@' in '%{public}@'", buf, 0x16u);
  }

  v33 = keyCopy;
  v32 = [keyCopy stringByAppendingString:@"_MALE"];
  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/VoiceServices.framework/"];
  v11 = MEMORY[0x277CCA8D8];
  localizations = [v10 localizations];
  v31 = languageCopy;
  v40 = languageCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v14 = [v11 preferredLocalizationsFromArray:localizations forPreferences:v13];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = *v36;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v36 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = [v10 URLForResource:tableCopy withExtension:@"strings" subdirectory:0 localization:*(*(&v35 + 1) + 8 * i)];
      v21 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v20];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 objectForKeyedSubscript:v33];

        if (v23)
        {
          v27 = v33;
          v28 = v33;
        }

        else
        {
          v24 = [v22 objectForKeyedSubscript:v32];

          if (!v24)
          {
            goto LABEL_11;
          }

          v28 = v32;
          v27 = v33;
        }

        v26 = [v22 objectForKeyedSubscript:v28];

        v25 = v15;
        goto LABEL_18;
      }

LABEL_11:
    }

    v17 = [v15 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_13:

  v25 = VSGetLogDefault();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v29 = v31;
    v42 = v31;
    v43 = 2112;
    v27 = v33;
    v44 = v33;
    _os_log_error_impl(&dword_272850000, v25, OS_LOG_TYPE_ERROR, "Unable to find '%{public}@' localized string for key '%@', return empty string", buf, 0x16u);
    v26 = &stru_2881D71A8;
  }

  else
  {
    v26 = &stru_2881D71A8;
    v27 = v33;
LABEL_18:
    v29 = v31;
  }

  return v26;
}

@end