@interface SLPreferences
+ (id)allSupportedLocales;
+ (id)builtInHorsemanLanguages;
+ (id)builtInLocales;
+ (id)builtInMultiUserLanguages;
+ (id)builtInVisionLanguages;
+ (id)builtInZeusLanguages;
+ (id)builtIniOSLanguages;
+ (id)configValueForKey:(id)key;
+ (id)internalLocales;
+ (id)valueForKeyWithContext:(__CFString *)context withDomain:(__CFString *)domain;
@end

@implementation SLPreferences

+ (id)allSupportedLocales
{
  if (allSupportedLocales_onceToken != -1)
  {
    dispatch_once(&allSupportedLocales_onceToken, &__block_literal_global_7);
  }

  v3 = allSupportedLocales_sAllCodes;

  return v3;
}

void __36__SLPreferences_allSupportedLocales__block_invoke()
{
  v0 = +[SLPreferences builtInLocales];
  v1 = allSupportedLocales_sAllCodes;
  allSupportedLocales_sAllCodes = v0;

  v4 = +[SLPreferences internalLocales];
  v2 = [allSupportedLocales_sAllCodes setByAddingObjectsFromSet:v4];
  v3 = allSupportedLocales_sAllCodes;
  allSupportedLocales_sAllCodes = v2;
}

+ (id)builtInLocales
{
  if (builtInLocales_onceToken != -1)
  {
    dispatch_once(&builtInLocales_onceToken, &__block_literal_global);
  }

  v3 = builtInLocales_sStaticLanguages;

  return v3;
}

void __31__SLPreferences_builtInLocales__block_invoke()
{
  v26 = *MEMORY[0x277D85DE8];
  if (+[SFPlatform isAppleTV])
  {
    v0 = +[SLPreferences builtInZeusLanguages];
  }

  else if (+[SFPlatform isHorseman])
  {
    v0 = +[SLPreferences builtInHorsemanLanguages];
  }

  else
  {
    if (+[SFPlatform isVision])
    {
      +[SLPreferences builtInVisionLanguages];
    }

    else
    {
      +[SLPreferences builtIniOSLanguages];
    }
    v0 = ;
  }

  v1 = v0;
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 136315394;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v9, v16, v17}];
        v11 = SLLogContext;
        if (!v10 && os_log_type_enabled(SLLogContext, OS_LOG_TYPE_FAULT))
        {
          *buf = v16;
          v22 = "+[SLPreferences builtInLocales]_block_invoke";
          v23 = 2112;
          v24 = v9;
          _os_log_fault_impl(&dword_2675BB000, v11, OS_LOG_TYPE_FAULT, "%s Could not create NSLocale with identifier: %@", buf, 0x16u);
          v11 = SLLogContext;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = v11;
          v13 = [v10 languageCode];
          *buf = v16;
          v22 = "+[SLPreferences builtInLocales]_block_invoke";
          v23 = 2112;
          v24 = v13;
          _os_log_debug_impl(&dword_2675BB000, v12, OS_LOG_TYPE_DEBUG, "%s Adding language '%@' to built in locale codes", buf, 0x16u);
        }

        [v2 addObject:v10];
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v6);
  }

  v14 = [MEMORY[0x277CBEB98] setWithSet:v2];
  v15 = builtInLocales_sStaticLanguages;
  builtInLocales_sStaticLanguages = v14;
}

+ (id)internalLocales
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [SLPreferences backedUpPreferencesValueForKey:@"Additional Languages"];
  v3 = [SLPreferences configValueForKey:@"Additional Languages"];
  if ([v2 count] || objc_msgSend(v3, "count"))
  {
    v4 = objc_opt_new();
    v22 = v3;
    v23 = v2;
    if (v3)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v29;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v10, v22, v23}];
            if (v11)
            {
              [v4 addObject:v11];
            }

            else
            {
              v12 = SLLogContext;
              if (os_log_type_enabled(SLLogContext, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v34 = "+[SLPreferences internalLocales]";
                v35 = 2112;
                v36 = v10;
                _os_log_error_impl(&dword_2675BB000, v12, OS_LOG_TYPE_ERROR, "%s Could not create NSLocale with identifier: %@", buf, 0x16u);
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v7);
      }

      v3 = v22;
      v2 = v23;
    }

    if (v2)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v2;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * j);
            v19 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{v18, v22, v23}];
            if (v19)
            {
              [v4 addObject:v19];
            }

            else
            {
              v20 = SLLogContext;
              if (os_log_type_enabled(SLLogContext, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v34 = "+[SLPreferences internalLocales]";
                v35 = 2112;
                v36 = v18;
                _os_log_error_impl(&dword_2675BB000, v20, OS_LOG_TYPE_ERROR, "%s Could not create NSLocale with identifier: %@", buf, 0x16u);
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v15);
      }

      v3 = v22;
      v2 = v23;
    }
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

+ (id)builtIniOSLanguages
{
  v4[42] = *MEMORY[0x277D85DE8];
  v4[0] = @"en-US";
  v4[1] = @"de-DE";
  v4[2] = @"de-CH";
  v4[3] = @"en-AU";
  v4[4] = @"en-GB";
  v4[5] = @"en-CA";
  v4[6] = @"en-SG";
  v4[7] = @"es-ES";
  v4[8] = @"es-MX";
  v4[9] = @"es-US";
  v4[10] = @"fr-FR";
  v4[11] = @"fr-CA";
  v4[12] = @"fr-CH";
  v4[13] = @"it-IT";
  v4[14] = @"it-CH";
  v4[15] = @"ja-JP";
  v4[16] = @"ko-KR";
  v4[17] = @"zh-CN";
  v4[18] = @"zh-TW";
  v4[19] = @"zh-HK";
  v4[20] = @"pt-BR";
  v4[21] = @"da-DK";
  v4[22] = @"nl-NL";
  v4[23] = @"en-NZ";
  v4[24] = @"en-IN";
  v4[25] = @"ru-RU";
  v4[26] = @"sv-SE";
  v4[27] = @"th-TH";
  v4[28] = @"tr-TR";
  v4[29] = @"nb-NO";
  v4[30] = @"de-AT";
  v4[31] = @"fr-BE";
  v4[32] = @"nl-BE";
  v4[33] = @"ar-SA";
  v4[34] = @"fi-FI";
  v4[35] = @"he-IL";
  v4[36] = @"ms-MY";
  v4[37] = @"es-CL";
  v4[38] = @"en-ZA";
  v4[39] = @"yue-CN";
  v4[40] = @"en-IE";
  v4[41] = @"vi-VN";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:42];

  return v2;
}

+ (id)builtInVisionLanguages
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"en-US";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)builtInHorsemanLanguages
{
  v4[39] = *MEMORY[0x277D85DE8];
  v4[0] = @"en-US";
  v4[1] = @"en-GB";
  v4[2] = @"en-AU";
  v4[3] = @"en-CA";
  v4[4] = @"fr-FR";
  v4[5] = @"de-DE";
  v4[6] = @"fr-CA";
  v4[7] = @"es-US";
  v4[8] = @"es-MX";
  v4[9] = @"es-ES";
  v4[10] = @"zh-CN";
  v4[11] = @"yue-CN";
  v4[12] = @"zh-HK";
  v4[13] = @"ja-JP";
  v4[14] = @"zh-TW";
  v4[15] = @"en-IN";
  v4[16] = @"en-IE";
  v4[17] = @"en-NZ";
  v4[18] = @"de-AT";
  v4[19] = @"it-IT";
  v4[20] = @"ru-RU";
  v4[21] = @"nl-NL";
  v4[22] = @"nl-BE";
  v4[23] = @"fr-BE";
  v4[24] = @"fr-CH";
  v4[25] = @"de-CH";
  v4[26] = @"it-CH";
  v4[27] = @"nb-NO";
  v4[28] = @"sv-SE";
  v4[29] = @"en-ZA";
  v4[30] = @"es-CL";
  v4[31] = @"fi-FI";
  v4[32] = @"en-SG";
  v4[33] = @"da-DK";
  v4[34] = @"he-IL";
  v4[35] = @"th-TH";
  v4[36] = @"ar-SA";
  v4[37] = @"tr-TR";
  v4[38] = @"ms-MY";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:39];

  return v2;
}

+ (id)builtInZeusLanguages
{
  v4[39] = *MEMORY[0x277D85DE8];
  v4[0] = @"en-US";
  v4[1] = @"de-DE";
  v4[2] = @"en-AU";
  v4[3] = @"en-CA";
  v4[4] = @"en-GB";
  v4[5] = @"es-ES";
  v4[6] = @"es-MX";
  v4[7] = @"es-US";
  v4[8] = @"fr-CA";
  v4[9] = @"fr-FR";
  v4[10] = @"ja-JP";
  v4[11] = @"nb-NO";
  v4[12] = @"nl-NL";
  v4[13] = @"pt-BR";
  v4[14] = @"sv-SE";
  v4[15] = @"en-IE";
  v4[16] = @"en-NZ";
  v4[17] = @"de-AT";
  v4[18] = @"en-IN";
  v4[19] = @"ko-KR";
  v4[20] = @"it-IT";
  v4[21] = @"zh-HK";
  v4[22] = @"zh-TW";
  v4[23] = @"ru-RU";
  v4[24] = @"fr-BE";
  v4[25] = @"nl-BE";
  v4[26] = @"fr-CH";
  v4[27] = @"de-CH";
  v4[28] = @"it-CH";
  v4[29] = @"es-CL";
  v4[30] = @"en-ZA";
  v4[31] = @"fi-FI";
  v4[32] = @"en-SG";
  v4[33] = @"da-DK";
  v4[34] = @"he-IL";
  v4[35] = @"th-TH";
  v4[36] = @"ar-SA";
  v4[37] = @"tr-TR";
  v4[38] = @"ms-MY";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:39];

  return v2;
}

+ (id)builtInMultiUserLanguages
{
  v64 = *MEMORY[0x277D85DE8];
  if (+[SFPlatform isAppleTV](SFPlatform, "isAppleTV") && +[SFFeatureFlags isLassoEnabled])
  {
    v46 = @"en-AU";
    v47 = @"en-CA";
    v48 = @"en-GB";
    v49 = @"en-IE";
    v50 = @"en-IN";
    v51 = @"en-NZ";
    v52 = @"es-MX";
    v53 = @"es-US";
    v54 = @"es-ES";
    v55 = @"de-DE";
    v56 = @"de-AT";
    v57 = @"de-CH";
    v58 = @"fr-FR";
    v59 = @"fr-CA";
    v60 = @"fr-CH";
    v61 = @"ja-JP";
    v62 = @"zh-HK";
    v63 = @"en-US";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v46;
    v4 = 18;
  }

  else
  {
    v7 = @"en-US";
    v8 = @"en-GB";
    v9 = @"en-AU";
    v10 = @"en-CA";
    v11 = @"en-IE";
    v12 = @"en-NZ";
    v13 = @"fr-FR";
    v14 = @"fr-CA";
    v15 = @"es-MX";
    v16 = @"es-US";
    v17 = @"es-ES";
    v18 = @"de-DE";
    v19 = @"de-AT";
    v20 = @"fr-CH";
    v21 = @"de-CH";
    v22 = @"en-IN";
    v23 = @"it-CH";
    v24 = @"it-IT";
    v25 = @"ru-RU";
    v26 = @"fr-BE";
    v27 = @"nl-BE";
    v28 = @"nl-NL";
    v29 = @"nb-NO";
    v30 = @"sv-SE";
    v31 = @"zh-CN";
    v32 = @"yue-CN";
    v33 = @"zh-HK";
    v34 = @"zh-TW";
    v35 = @"ja-JP";
    v36 = @"en-ZA";
    v37 = @"es-CL";
    v38 = @"fi-FI";
    v39 = @"en-SG";
    v40 = @"da-DK";
    v41 = @"he-IL";
    v42 = @"th-TH";
    v43 = @"ar-SA";
    v44 = @"tr-TR";
    v45 = @"ms-MY";
    v2 = MEMORY[0x277CBEA60];
    v3 = &v7;
    v4 = 39;
  }

  v5 = [v2 arrayWithObjects:v3 count:{v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63}];

  return v5;
}

+ (id)valueForKeyWithContext:(__CFString *)context withDomain:(__CFString *)domain
{
  v4 = CFPreferencesCopyAppValue(context, domain);

  return v4;
}

+ (id)configValueForKey:(id)key
{
  v3 = MEMORY[0x277CBEBC0];
  keyCopy = key;
  v5 = +[SFPlatform systemRootDirectory];
  v6 = [v5 stringByAppendingPathComponent:@"AppleInternal/Library/Assistant/InternalConfig.plist"];
  v7 = [v3 fileURLWithPath:v6];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v7];
  v9 = [v8 objectForKey:keyCopy];

  return v9;
}

@end