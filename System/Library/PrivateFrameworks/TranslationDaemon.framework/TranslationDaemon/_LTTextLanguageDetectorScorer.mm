@interface _LTTextLanguageDetectorScorer
- (_LTTextLanguageDetectorScorer)initWithSupportedLocales:(id)locales;
- (id)weightedLocaleWithStrategy:(unint64_t)strategy;
- (void)append:(id)append;
- (void)append:(id)append recognizer:(id)recognizer;
@end

@implementation _LTTextLanguageDetectorScorer

- (_LTTextLanguageDetectorScorer)initWithSupportedLocales:(id)locales
{
  v32 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v25.receiver = self;
  v25.super_class = _LTTextLanguageDetectorScorer;
  v6 = [(_LTTextLanguageDetectorScorer *)&v25 init];
  if (v6)
  {
    v7 = objc_opt_new();
    items = v6->_items;
    v6->_items = v7;

    objc_storeStrong(&v6->_supportedLocales, locales);
    v11 = _LTOSLogLID(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v6->_supportedLocales;
      array = [MEMORY[0x277CBEB18] array];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v12;
      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:buf count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          v18 = 0;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            localeIdentifier = [*(*(&v26 + 1) + 8 * v18) localeIdentifier];
            [array addObject:localeIdentifier];

            ++v18;
          }

          while (v16 != v18);
          v16 = [(NSArray *)v14 countByEnumeratingWithState:&v26 objects:buf count:16];
        }

        while (v16);
      }

      v20 = MEMORY[0x277CCACA8];
      v21 = [array componentsJoinedByString:{@", \n"}];
      v22 = [v20 stringWithFormat:@"[ %@ ]", v21];

      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "supported locales for scoring: %{public}@", buf, 0xCu);
    }

    v23 = v6;
  }

  return v6;
}

- (void)append:(id)append recognizer:(id)recognizer
{
  v20 = *MEMORY[0x277D85DE8];
  appendCopy = append;
  recognizerCopy = recognizer;
  dominantLanguage = [recognizerCopy dominantLanguage];
  if (dominantLanguage)
  {
    v10 = _LTLanguageCodeToSupportedLocale();
    v11 = [recognizerCopy languageHypothesesWithMaximum:4];
    v12 = [v11 objectForKeyedSubscript:dominantLanguage];
    v13 = [_LTTokenizer _wordCount:appendCopy inLocale:v10];
    v14 = [_LTTextLanguageDetectorScorerItem alloc];
    [v12 doubleValue];
    v15 = [(_LTTextLanguageDetectorScorerItem *)v14 initWithLocale:v10 confidence:v13 wordCount:?];
    if (v15)
    {
      [(NSMutableArray *)self->_items addObject:v15];
    }
  }

  else
  {
    v16 = _LTOSLogLID(0, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = 134217984;
      v19 = [appendCopy length];
      _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "no scorable dominant language for text length: %zu", &v18, 0xCu);
    }
  }
}

- (void)append:(id)append
{
  if (append)
  {
    [(NSMutableArray *)self->_items addObject:?];
  }
}

- (id)weightedLocaleWithStrategy:(unint64_t)strategy
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = _LTOSLogLID(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTextLanguageDetectorScorer *)self weightedLocaleWithStrategy:v5];
  }

  strategyCopy = strategy;
  if (strategy == 3)
  {
    v6 = 0.99;
  }

  else
  {
    v6 = _LTPreferencesTextLIDScorerConfidenceThreshold();
    v9 = _LTOSLogLID(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v59 = v6;
      _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "weightedLocale confidence threshold from preferences: %f", buf, 0xCu);
    }
  }

  v10 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = self->_items;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v11)
  {
    v13 = v11;
    v52 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *v55;
    v17 = 0.0;
    *&v12 = 134218240;
    v50 = v12;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v54 + 1) + 8 * i);
        wordCount = [v19 wordCount];
        confidence = [v19 confidence];
        if (v23 >= v6)
        {
          locale = [v19 locale];
          v28 = [v10 objectForKeyedSubscript:locale];
          [v28 doubleValue];
          v30 = v29;
          if (strategyCopy == 3)
          {
            wordCount2 = [v19 wordCount];
          }

          else
          {
            [v19 score];
          }

          v32 = v30 + wordCount2;

          v33 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
          locale2 = [v19 locale];
          [v10 setObject:v33 forKeyedSubscript:locale2];

          v14 += [v19 wordCount];
          if (v32 > v17)
          {
            locale3 = [v19 locale];

            v52 = locale3;
            v17 = v32;
          }
        }

        else
        {
          v24 = _LTOSLogLID(confidence, v22);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = v24;
            [v19 confidence];
            *buf = v50;
            v59 = v26;
            v60 = 2048;
            v61 = v6;
            _os_log_debug_impl(&dword_232E53000, v25, OS_LOG_TYPE_DEBUG, "weightedLocale item confidence %f < confidence threshold %f, skipping", buf, 0x16u);
          }
        }

        v15 += wordCount;
      }

      v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v13);
  }

  else
  {
    v52 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0.0;
  }

  if (strategyCopy != 3)
  {
    v44 = _LTOSLogLID(v36, v37);
    v38 = v52;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      if (v14 <= 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = v14;
      }

      v48 = v17 / v47;
      v40 = v44;
      [v52 localeIdentifier];
      v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v49 = [v10 count];
      *buf = 138544130;
      v59 = v41;
      v60 = 2048;
      v61 = v48;
      v62 = 2048;
      v63 = v14;
      v64 = 2048;
      v65 = v49;
      v43 = "weightedLocale is %{public}@ with score %f on %zd words from %zu locales";
      goto LABEL_38;
    }

LABEL_29:
    v45 = v38;
    goto LABEL_31;
  }

  v38 = v52;
  if (v17 > (v15 / 2))
  {
    v39 = _LTOSLogLID(v36, v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = v39;
      [v52 localeIdentifier];
      v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v42 = [v10 count];
      *buf = 138544130;
      v59 = v41;
      v60 = 2048;
      v61 = v17;
      v62 = 2048;
      v63 = v15;
      v64 = 2048;
      v65 = v42;
      v43 = "weightedLocale for messages is %{public}@ with count %f on %zd words from %zu locales";
LABEL_38:
      _os_log_debug_impl(&dword_232E53000, v40, OS_LOG_TYPE_DEBUG, v43, buf, 0x2Au);

      goto LABEL_29;
    }

    goto LABEL_29;
  }

  v45 = 0;
LABEL_31:

  return v45;
}

- (void)weightedLocaleWithStrategy:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = a2;
  v4 = 134217984;
  v5 = [v2 count];
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "weightedLocale for %zu items", &v4, 0xCu);
}

@end