@interface TPSSiriLanguageValidation
- (TPSSiriLanguageValidation)initWithTargetLanguages:(id)languages excludeLanguages:(id)excludeLanguages;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSSiriLanguageValidation

- (TPSSiriLanguageValidation)initWithTargetLanguages:(id)languages excludeLanguages:(id)excludeLanguages
{
  excludeLanguagesCopy = excludeLanguages;
  v7 = [languages valueForKeyPath:@"lowercaseString"];
  v8 = [excludeLanguagesCopy valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSSiriLanguageValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  targetLanguages = [(TPSSiriLanguageValidation *)self targetLanguages];
  if ([targetLanguages count])
  {

    goto LABEL_4;
  }

  excludeLanguages = [(TPSSiriLanguageValidation *)self excludeLanguages];
  v7 = [excludeLanguages count];

  if (v7)
  {
LABEL_4:
    if (AFAssistantRestricted())
    {
      lowercaseString = 0;
    }

    else
    {
      mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
      languageCode = [mEMORY[0x277CEF368] languageCode];
      lowercaseString = [languageCode lowercaseString];

      if ([lowercaseString length])
      {
        targetLanguages2 = [(TPSSiriLanguageValidation *)self targetLanguages];
        if ([targetLanguages2 count])
        {
          targetLanguages3 = [(TPSSiriLanguageValidation *)self targetLanguages];
          v13 = [targetLanguages3 containsObject:lowercaseString];
        }

        else
        {
          v13 = 1;
        }

        excludeLanguages2 = [(TPSSiriLanguageValidation *)self excludeLanguages];
        v16 = [excludeLanguages2 containsObject:lowercaseString];

        v14 = v13 & (v16 ^ 1u);
LABEL_15:
        targeting = [MEMORY[0x277D71778] targeting];
        if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
        {
          v18 = objc_opt_class();
          v19 = v18;
          targetLanguages4 = [(TPSSiriLanguageValidation *)self targetLanguages];
          v21 = [targetLanguages4 componentsJoinedByString:{@", "}];
          excludeLanguages3 = [(TPSSiriLanguageValidation *)self excludeLanguages];
          v23 = [excludeLanguages3 componentsJoinedByString:{@", "}];
          v24 = 138413314;
          v25 = v18;
          v26 = 2112;
          v27 = lowercaseString;
          v28 = 2112;
          v29 = v21;
          v30 = 2112;
          v31 = v23;
          v32 = 1024;
          v33 = v14;
          _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking Siri Language: %@, target languages: %@, exclude languages: %@. Valid: %d", &v24, 0x30u);
        }

        goto LABEL_18;
      }
    }

    v14 = 0;
    goto LABEL_15;
  }

  lowercaseString = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
  {
    [(TPSRegionsValidation *)self validateWithCompletion:lowercaseString];
  }

  v14 = 1;
LABEL_18:

  completionCopy[2](completionCopy, v14, 0);
}

@end