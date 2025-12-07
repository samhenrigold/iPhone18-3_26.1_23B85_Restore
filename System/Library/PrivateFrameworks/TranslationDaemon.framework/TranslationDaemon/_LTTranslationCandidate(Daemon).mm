@interface _LTTranslationCandidate(Daemon)
- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:;
- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:stableString:;
- (void)updateWithEngineMeta:()Daemon locale:;
@end

@implementation _LTTranslationCandidate(Daemon)

- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v25.receiver = self;
  v25.super_class = &off_284890220;
  v21 = objc_msgSendSuper2(&v25, sel_init);
  v22 = v21;
  if (v21)
  {
    [v21 setFormattedString:v16];
    [v22 setSanitizedFormattedString:v17];
    [v22 setConfidence:a2];
    [v22 setLowConfidence:a6];
    [v22 setPreToPostITN:v20];
    [v22 setTokens:v19];
    [v22 setRomanization:v18];
    [v22 setStableString:0];
    v23 = v22;
  }

  return v22;
}

- (void)initWithFormattedString:()Daemon sanitizedFormattedString:confidence:lowConfidence:romanization:tokens:preToPostITN:stableString:
{
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v27.receiver = self;
  v27.super_class = &off_284890220;
  v23 = objc_msgSendSuper2(&v27, sel_init);
  v24 = v23;
  if (v23)
  {
    [v23 setFormattedString:v17];
    [v24 setSanitizedFormattedString:v18];
    [v24 setConfidence:a2];
    [v24 setLowConfidence:a6];
    [v24 setPreToPostITN:v21];
    [v24 setTokens:v20];
    [v24 setRomanization:v19];
    [v24 setStableString:v22];
    v25 = v24;
  }

  return v24;
}

- (void)updateWithEngineMeta:()Daemon locale:
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [v6 dataUsingEncoding:4];
    v34 = 0;
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:&v34];
    v10 = v34;
    v12 = _LTOSLogTranslationEngine(v10, v11);
    v13 = v12;
    if (!v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_LTTranslationCandidate(Daemon) updateWithEngineMeta:v10 locale:v13];
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_LTTranslationCandidate(Daemon) updateWithEngineMeta:v9 locale:v13];
    }

    v14 = [MEMORY[0x277CE1C30] statisticsWithEngineMeta:v9 locale:v7];
    [self setStatistics:v14];

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [standardUserDefaults BOOLForKey:@"DisambiguationEnabled"];

    if ((v16 & 1) == 0)
    {
      v21 = _LTOSLogTranslationEngine(v17, v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *v33 = 0;
        _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Skipping loading sense data from meta because it's disabled in user defaults", v33, 2u);
      }

      [self setSenses:0];
      goto LABEL_26;
    }

    v19 = [v9 objectForKeyedSubscript:@"senses"];
    if (v19)
    {
      v20 = [MEMORY[0x277CE1C20] sensesFromArray:v19];
    }

    else
    {
      v22 = [v9 objectForKeyedSubscript:@"status"];
      v23 = [v22 isEqualToString:@"phrasebook_exact"];

      if (!v23)
      {
LABEL_16:
        v25 = [v9 objectForKeyedSubscript:@"gender_alternatives"];
        if (v25)
        {
          v26 = [MEMORY[0x277CE1C08] genderAlternativesFromDictionary:v25];
          [self setGenderAlternatives:v26];
        }

        v27 = [v9 objectForKeyedSubscript:@"romanization"];
        sanitizedFormattedString = [self sanitizedFormattedString];
        if (!sanitizedFormattedString && v27 && [v27 length])
        {
          romanization = [self romanization];

          if (!romanization)
          {
            v30 = [self setRomanization:v27];
            v32 = _LTOSLogTranslationEngine(v30, v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [_LTTranslationCandidate(Daemon) updateWithEngineMeta:v32 locale:self];
            }
          }
        }

        else
        {
        }

LABEL_26:
        goto LABEL_27;
      }

      v20 = [MEMORY[0x277CE1C20] senseWithPhrasebookMatchMeta:v9];
    }

    v24 = v20;
    [self setSenses:v20];

    goto LABEL_16;
  }

LABEL_27:
}

- (void)updateWithEngineMeta:()Daemon locale:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Translation candidate meta: %@", &v2, 0xCu);
}

- (void)updateWithEngineMeta:()Daemon locale:.cold.2(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 romanization];
  v5 = 138739971;
  v6 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Setting romanization from meta JSON string: %{sensitive}@", &v5, 0xCu);
}

- (void)updateWithEngineMeta:()Daemon locale:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Skipping meta, failed to parse as JSON: %@", &v2, 0xCu);
}

@end