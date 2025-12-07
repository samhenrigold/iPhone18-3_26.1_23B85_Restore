@interface _LTTextLanguageDetector
- (_LTTextLanguageDetector)init;
- (_LTTextLanguageDetector)initWithModel:(unint64_t)model;
- (id)_mapSupportedLocales:(id)locales;
- (id)detectionForString:(id)string;
- (id)detectionForStrings:(id)strings strategy:(unint64_t)strategy;
@end

@implementation _LTTextLanguageDetector

- (_LTTextLanguageDetector)init
{
  v3.receiver = self;
  v3.super_class = _LTTextLanguageDetector;
  result = [(_LTTextLanguageDetector *)&v3 init];
  if (result)
  {
    return [(_LTTextLanguageDetector *)result initWithModel:0];
  }

  return result;
}

- (_LTTextLanguageDetector)initWithModel:(unint64_t)model
{
  v17.receiver = self;
  v17.super_class = _LTTextLanguageDetector;
  v4 = [(_LTTextLanguageDetector *)&v17 init];
  v6 = v4;
  if (v4)
  {
    if (model != 2 && (model || ([MEMORY[0x277CBEBD0] standardUserDefaults], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLForKey:", @"TextLIDUseLSTM"), v7, v8)))
    {
      v9 = _LTOSLogLID(v4, v5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_DEFAULT, "Using LSTM text lid engine", v16, 2u);
      }

      v10 = 0x277CD89C0;
    }

    else
    {
      v11 = _LTOSLogLID(v4, v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Using CFRO text lid engine", v16, 2u);
      }

      v10 = 0x277CD89A0;
    }

    v12 = objc_alloc_init(*v10);
    recognizer = v6->_recognizer;
    v6->_recognizer = v12;

    v14 = v6;
  }

  return v6;
}

- (id)detectionForString:(id)string
{
  v50 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6 = _LTOSLogLID(stringCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTextLanguageDetector *)v6 detectionForString:v7, v8, v9, v10, v11, v12, v13];
  }

  [(NLLanguageRecognizer *)self->_recognizer reset];
  [(NLLanguageRecognizer *)self->_recognizer processString:stringCopy];
  dominantLanguage = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
  v16 = _LTOSLogLID(dominantLanguage, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v49 = dominantLanguage;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Dominant language: %{public}@", buf, 0xCu);
  }

  v17 = [(NLLanguageRecognizer *)self->_recognizer languageHypothesesWithMaximum:4];
  v19 = _LTOSLogLID(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v49 = v17;
    _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Language confidences: %{public}@", buf, 0xCu);
  }

  availableLocales = [(_LTTextLanguageDetector *)self availableLocales];
  v21 = _LTLanguageCodeToSupportedLocale();

  v24 = _LTOSLogLID(v22, v23);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
  if (v25)
  {
    *buf = 138543362;
    v49 = v21;
    _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "Mapped language: %{public}@", buf, 0xCu);
  }

  if (v21)
  {
    v40 = v21;
    v41 = dominantLanguage;
    v42 = stringCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    allKeys = [v17 allKeys];
    v29 = [allKeys countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(allKeys);
          }

          v33 = *(*(&v43 + 1) + 8 * i);
          availableLocales2 = [(_LTTextLanguageDetector *)self availableLocales];
          v35 = _LTLanguageCodeToSupportedLocale();

          if (v35)
          {
            v36 = [v17 objectForKeyedSubscript:v33];
            [dictionary setObject:v36 forKeyedSubscript:v35];
          }
        }

        v30 = [allKeys countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v30);
    }

    v37 = [objc_alloc(MEMORY[0x277CE1B08]) initWithConfidences:dictionary isConfident:1 dominantLanguage:0 isFinal:1];
    v21 = v40;
    [v37 setDominantLanguage:v40];

    dominantLanguage = v41;
    stringCopy = v42;
  }

  else
  {
    v38 = _LTOSLogLID(v25, v26);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [(_LTTextLanguageDetector *)dominantLanguage detectionForString:v38, self];
    }

    v37 = 0;
  }

  return v37;
}

- (id)detectionForStrings:(id)strings strategy:(unint64_t)strategy
{
  v77 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v8 = _LTOSLogLID(stringsCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(_LTTextLanguageDetector *)v8 detectionForStrings:stringsCopy strategy:strategy];
  }

  if ((strategy | 2) == 3)
  {
    v9 = [_LTTextLanguageDetectorScorer alloc];
    availableLocales = [(_LTTextLanguageDetector *)self availableLocales];
    v11 = [(_LTTextLanguageDetectorScorer *)v9 initWithSupportedLocales:availableLocales];
  }

  else
  {
    v11 = 0;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v13 = [standardUserDefaults BOOLForKey:@"TextLIDAggregateEvaluation"];

  v16 = _LTOSLogLID(v14, v15);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (!v13)
  {
    strategyCopy = strategy;
    if (v17)
    {
      [(_LTTextLanguageDetector *)v16 detectionForStrings:v18 strategy:v19, v20, v21, v22, v23, v24];
    }

    dominantLanguage3 = objc_alloc_init(MEMORY[0x277CCA940]);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v65 = stringsCopy;
    v35 = stringsCopy;
    v36 = [v35 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v67;
      v39 = *MEMORY[0x277CE1CA8];
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v67 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*(&v66 + 1) + 8 * i);
          [(NLLanguageRecognizer *)self->_recognizer reset];
          [(NLLanguageRecognizer *)self->_recognizer processString:v41];
          dominantLanguage = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
          if (!dominantLanguage)
          {
            dominantLanguage = v39;
          }

          [dominantLanguage3 addObject:dominantLanguage];
          [(_LTTextLanguageDetectorScorer *)v11 append:v41 recognizer:self->_recognizer];
        }

        v37 = [v35 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v37);
    }

    if ([v35 count] == 1)
    {
      v43 = [(NLLanguageRecognizer *)self->_recognizer languageHypothesesWithMaximum:10];
      v45 = _LTOSLogLID(v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [_LTTextLanguageDetector detectionForStrings:v43 strategy:v45];
      }

      dominantLanguage2 = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
      v47 = [v43 objectForKeyedSubscript:dominantLanguage2];
      v48 = [v43 keysSortedByValueUsingComparator:&__block_literal_global_31];
      v49 = [(_LTTextLanguageDetector *)self _mapSupportedLocales:v48];
      v50 = _LTPreferencesTextLIDScorerConfidenceThreshold();
      [v47 doubleValue];
      if (v51 >= v50)
      {
        v52 = 0;
      }

      else
      {
        v52 = v49;
      }
    }

    else
    {
      v52 = 0;
    }

    v57 = objc_alloc(MEMORY[0x277CE1BD8]);
    v58 = v57;
    stringsCopy = v65;
    if (strategyCopy == 3)
    {
      v59 = v11;
      v60 = v52;
      v61 = 3;
    }

    else
    {
      if (strategyCopy != 1)
      {
        availableLocales2 = [(_LTTextLanguageDetector *)self availableLocales];
        v34 = [v58 initWithDetectionCounts:dominantLanguage3 availableLocales:availableLocales2 lowConfidenceLocales:v52 strategy:strategyCopy];

        goto LABEL_46;
      }

      v59 = v11;
      v60 = 0;
      v61 = 1;
    }

    v34 = [v57 initWithScorer:v59 lowConfidenceLocales:v60 strategy:{v61, strategyCopy}];
LABEL_46:

    goto LABEL_47;
  }

  if (v17)
  {
    [(_LTTextLanguageDetector *)v16 detectionForStrings:v18 strategy:v19, v20, v21, v22, v23, v24];
  }

  [(NLLanguageRecognizer *)self->_recognizer reset];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v25 = stringsCopy;
  v26 = [v25 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v71;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v71 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v70 + 1) + 8 * j);
        [(NLLanguageRecognizer *)self->_recognizer processString:v30];
        [(_LTTextLanguageDetectorScorer *)v11 append:v30 recognizer:self->_recognizer];
      }

      v27 = [v25 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v27);
  }

  dominantLanguage3 = [(NLLanguageRecognizer *)self->_recognizer dominantLanguage];
  if (!dominantLanguage3)
  {
    dominantLanguage3 = *MEMORY[0x277CE1CA8];
  }

  v32 = objc_alloc(MEMORY[0x277CE1BD8]);
  v33 = v32;
  if (v11)
  {
    v34 = [v32 initWithScorer:v11 lowConfidenceLocales:0 strategy:strategy];
  }

  else
  {
    v53 = MEMORY[0x277CCA940];
    v75 = dominantLanguage3;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    v55 = [v53 setWithArray:v54];
    availableLocales3 = [(_LTTextLanguageDetector *)self availableLocales];
    v34 = [v33 initWithDetectionCounts:v55 availableLocales:availableLocales3 lowConfidenceLocales:0 strategy:strategy];
  }

LABEL_47:

  return v34;
}

- (id)_mapSupportedLocales:(id)locales
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48___LTTextLanguageDetector__mapSupportedLocales___block_invoke;
  v5[3] = &unk_2789B7D08;
  v5[4] = self;
  v3 = [locales _ltCompactMap:v5];

  return v3;
}

- (void)detectionForString:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 availableLocales];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Could not find locale for %{public}@ in available: %{public}@", &v7, 0x16u);
}

- (void)detectionForStrings:(unint64_t)a3 strategy:.cold.1(void *a1, void *a2, unint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 count];
  if (a3 > 3)
  {
    v7 = @"undefined";
  }

  else
  {
    v7 = off_2789B7D28[a3];
  }

  v8 = 134218242;
  v9 = v6;
  v10 = 2114;
  v11 = v7;
  _os_log_debug_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEBUG, "Detection for %zd string array using strategy: %{public}@", &v8, 0x16u);
}

- (void)detectionForStrings:(uint64_t)a1 strategy:(NSObject *)a2 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Language confidences: %{public}@", &v2, 0xCu);
}

@end