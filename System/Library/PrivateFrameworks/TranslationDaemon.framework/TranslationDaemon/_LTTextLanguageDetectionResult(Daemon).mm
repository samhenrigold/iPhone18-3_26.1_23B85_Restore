@interface _LTTextLanguageDetectionResult(Daemon)
+ (void)sendAnalytics:()Daemon isSupported:;
- (id)initWithDetectedLocales:()Daemon unknownLanguages:;
- (id)initWithScorer:()Daemon lowConfidenceLocales:strategy:;
- (void)initWithDetectionCounts:()Daemon availableLocales:lowConfidenceLocales:strategy:;
@end

@implementation _LTTextLanguageDetectionResult(Daemon)

- (id)initWithDetectedLocales:()Daemon unknownLanguages:
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v36.receiver = self;
  v36.super_class = &off_28488FA90;
  v8 = objc_msgSendSuper2(&v36, sel_init);
  if (v8)
  {
    v9 = [v6 copy];
    [v8 setLocaleDetectionCount:v9];

    v30 = v7;
    v10 = [v7 copy];
    [v8 setUnsupportedLanguageCounts:v10];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v6;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = 0;
      v16 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          v19 = [v11 objectForKeyedSubscript:v18];
          unsignedIntegerValue = [v19 unsignedIntegerValue];

          if (unsignedIntegerValue > v14)
          {
            v21 = v18;

            v14 = unsignedIntegerValue;
            v15 = v21;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0;
    }

    v22 = [v8 setDominantLocale:v15];
    v24 = _LTOSLogLID(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v24;
      dominantLocale = [v8 dominantLocale];
      localeIdentifier = [dominantLocale localeIdentifier];
      *buf = 138543362;
      v38 = localeIdentifier;
      _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "Detection result via detected locales: %{public}@", buf, 0xCu);
    }

    v28 = v8;

    v7 = v30;
    v6 = v31;
  }

  return v8;
}

- (void)initWithDetectionCounts:()Daemon availableLocales:lowConfidenceLocales:strategy:
{
  v73 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v59 = a4;
  v11 = a5;
  v67.receiver = self;
  v67.super_class = &off_28488FA90;
  v12 = objc_msgSendSuper2(&v67, sel_init);
  v13 = v12;
  if (v12)
  {
    v54 = a6;
    v55 = v11;
    v56 = v12;
    v14 = [MEMORY[0x277CCA940] set];
    v15 = [MEMORY[0x277CCA940] set];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [v10 allObjects];
    v16 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v60 = 0;
      v58 = *v64;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v64 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v63 + 1) + 8 * i);
          v21 = _LTLanguageCodeToSupportedLocale();
          v22 = v10;
          v23 = [v10 countForObject:v20];
          v24 = v23;
          if (v23 > v18 || (v21 ? (v25 = v23 >= v18) : (v25 = 0), v25))
          {
            v26 = v20;

            v18 = v24;
            v60 = v26;
          }

          v10 = v22;
          if (v21)
          {
            for (; v24; --v24)
            {
              [v14 addObject:v21];
            }
          }

          else
          {
            for (; v24; --v24)
            {
              [v15 addObject:v20];
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v17);
    }

    else
    {
      v60 = 0;
    }

    v13 = v56;
    [v56 setLocaleDetectionCount:v14];
    [v56 setUnsupportedLanguageCounts:v15];
    v27 = v60;
    v28 = _LTLanguageCodeToSupportedLocale();
    if (v54 == 2 && [v60 isEqualToString:@"en"])
    {
      allObjects = [v10 allObjects];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __113___LTTextLanguageDetectionResult_Daemon__initWithDetectionCounts_availableLocales_lowConfidenceLocales_strategy___block_invoke;
      v61[3] = &unk_2789B7C98;
      v62 = v10;
      v30 = [allObjects sortedArrayWithOptions:16 usingComparator:v61];

      if ([v30 count] >= 2)
      {
        v31 = v10;
        v32 = [v30 objectAtIndexedSubscript:1];
        v33 = [v32 isEqualToString:@"hi"];

        if (v33)
        {
          v36 = _LTOSLogLID(v34, v35);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v69 = @"en";
            v70 = 2114;
            v71 = @"hi";
            _os_log_impl(&dword_232E53000, v36, OS_LOG_TYPE_INFO, "Overriding dominant language from %{public}@ to %{public}@", buf, 0x16u);
          }

          v37 = _LTLanguageCodeToSupportedLocale();

          v28 = v37;
        }

        v10 = v31;
        v27 = v60;
      }

      v13 = v56;
    }

    v11 = v55;
    [v13 setDominantLocale:v28];
    v38 = [v55 copy];
    [v13 setLowConfidenceLocales:v38];

    [objc_opt_class() sendAnalytics:v27 isSupported:v28 != 0];
    if ([v55 count])
    {
      v40 = [v55 _ltCompactMap:&__block_literal_global_30];
      v42 = _LTOSLogLID(v40, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = v42;
        dominantLocale = [v13 dominantLocale];
        [dominantLocale localeIdentifier];
        v46 = v45 = v10;
        *buf = 138543618;
        v69 = v46;
        v70 = 2114;
        v71 = v40;
        _os_log_impl(&dword_232E53000, v43, OS_LOG_TYPE_INFO, "Detection result via detection counts: %{public}@; however there are low-confidence locales: %{public}@", buf, 0x16u);

        v10 = v45;
        v27 = v60;
      }
    }

    else
    {
      v47 = _LTOSLogLID(0, v39);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = v47;
        dominantLocale2 = [v13 dominantLocale];
        [dominantLocale2 localeIdentifier];
        v51 = v50 = v10;
        *buf = 138543362;
        v69 = v51;
        _os_log_impl(&dword_232E53000, v48, OS_LOG_TYPE_INFO, "Detection result via detection counts: %{public}@", buf, 0xCu);

        v10 = v50;
        v27 = v60;
      }
    }

    v52 = v13;
  }

  return v13;
}

- (id)initWithScorer:()Daemon lowConfidenceLocales:strategy:
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v29.receiver = self;
  v29.super_class = &off_28488FA90;
  v10 = objc_msgSendSuper2(&v29, sel_init);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA940] set];
    [v10 setLocaleDetectionCount:v11];

    v12 = [MEMORY[0x277CCA940] set];
    [v10 setUnsupportedLanguageCounts:v12];

    v13 = [v8 weightedLocaleWithStrategy:a5];
    [v10 setDominantLocale:v13];
    v14 = [v9 copy];
    [v10 setLowConfidenceLocales:v14];

    v15 = objc_opt_class();
    languageCode = [v13 languageCode];
    [v15 sendAnalytics:languageCode isSupported:v13 != 0];

    if ([v9 count])
    {
      v18 = [v9 _ltCompactMap:&__block_literal_global_8];
      v20 = _LTOSLogLID(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = v20;
        dominantLocale = [v10 dominantLocale];
        localeIdentifier = [dominantLocale localeIdentifier];
        *buf = 138543618;
        v31 = localeIdentifier;
        v32 = 2114;
        v33 = v18;
        _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Detection result via weighted locale: %{public}@, however there are low-confidence locales: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v24 = _LTOSLogLID(0, v17);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = v24;
        localeIdentifier2 = [v13 localeIdentifier];
        *buf = 138543362;
        v31 = localeIdentifier2;
        _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "Detection result via weighted locale: %{public}@", buf, 0xCu);
      }
    }

    v27 = v10;
  }

  return v10;
}

+ (void)sendAnalytics:()Daemon isSupported:
{
  v5 = a3;
  v4 = v5;
  AnalyticsSendEventLazy();
}

@end