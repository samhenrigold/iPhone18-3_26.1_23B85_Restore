@interface NLDataProvider
- (NLDataProvider)initWithConfiguration:(id)configuration dataURL:(id)l;
- (NSString)recognizedLanguage;
- (id)documentFrequencyMap;
- (id)inverseLabelMap;
- (id)labelMap;
- (id)vocabularyMap;
- (unint64_t)numberOfLabels;
- (unint64_t)numberOfTokens;
- (unint64_t)numberOfVocabularyEntries;
- (void)_generateMapsWithModelTrainer:(id)trainer;
- (void)_performLanguageRecognition;
- (void)dealloc;
- (void)generateMapsWithModelTrainer:(id)trainer;
@end

@implementation NLDataProvider

- (NLDataProvider)initWithConfiguration:(id)configuration dataURL:(id)l
{
  configurationCopy = configuration;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = NLDataProvider;
  v8 = [(NLDataProvider *)&v17 init];
  if (v8)
  {
    [configurationCopy type];
    v9 = objc_opt_class();
    v10 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:lCopy encoding:4 error:0];
    v18.location = 0;
    v18.length = 0;
    v11 = CFStringTokenizerCreate(0, &stru_1F10C6540, v18, 0, 0);
    v12 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v12;

    v14 = [v9 readInstancesFromString:v10 tokenizer:v11];
    instances = v8->_instances;
    v8->_instances = v14;

    v8->_tokenizer = v11;
  }

  return v8;
}

- (void)dealloc
{
  tokenizer = self->_tokenizer;
  if (tokenizer)
  {
    CFRelease(tokenizer);
  }

  v4.receiver = self;
  v4.super_class = NLDataProvider;
  [(NLDataProvider *)&v4 dealloc];
}

- (void)_generateMapsWithModelTrainer:(id)trainer
{
  v93 = *MEMORY[0x1E69E9840];
  trainerCopy = trainer;
  numberOfInstances = [(NLDataProvider *)self numberOfInstances];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  v58 = numberOfInstances;
  if (numberOfInstances)
  {
    v5 = 0;
    v66 = 0;
    v69 = 1;
    do
    {
      v65 = v5;
      v6 = [(NLDataProvider *)self instanceAtIndex:v5];
      tokens = [v6 tokens];
      v64 = v6;
      labels = [v6 labels];
      v9 = [MEMORY[0x1E695DFA8] set];
      v63 = [tokens count];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      obj = labels;
      v10 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v86;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v86 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v85 + 1) + 8 * i);
            v15 = [(NSDictionary *)dictionary objectForKey:v14];

            if (!v15)
            {
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v69];
              [(NSDictionary *)dictionary setObject:v16 forKey:v14];
              [(NSDictionary *)dictionary2 setObject:v14 forKey:v16];
              ++v69;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v85 objects:v92 count:16];
        }

        while (v11);
      }

      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v17 = tokens;
      v18 = [v17 countByEnumeratingWithState:&v81 objects:v91 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v82;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v82 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v81 + 1) + 8 * j);
            v23 = [dictionary3 objectForKey:v22];
            unsignedIntegerValue = [v23 unsignedIntegerValue];

            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
            [dictionary3 setObject:v25 forKey:v22];

            [v9 addObject:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v81 objects:v91 count:16];
        }

        while (v19);
      }

      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v26 = v9;
      v27 = [v26 countByEnumeratingWithState:&v77 objects:v90 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v78;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v78 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v77 + 1) + 8 * k);
            v32 = [dictionary4 objectForKey:v31];
            unsignedIntegerValue2 = [v32 unsignedIntegerValue];

            v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2 + 1];
            [dictionary4 setObject:v34 forKey:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v77 objects:v90 count:16];
        }

        while (v28);
      }

      v66 += v63;

      reportInstanceCompletionToTrainer(trainerCopy, v65, v58, 0);
      v5 = v65 + 1;
    }

    while (v65 + 1 != v58);
  }

  else
  {
    v66 = 0;
    v69 = 1;
  }

  allKeys = [dictionary3 allKeys];
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __48__NLDataProvider__generateMapsWithModelTrainer___block_invoke;
  v75[3] = &unk_1E7628EA8;
  v36 = dictionary3;
  v76 = v36;
  v37 = [allKeys sortedArrayUsingComparator:v75];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v38 = v37;
  v39 = 16;
  v40 = [v38 countByEnumeratingWithState:&v71 objects:v89 count:16];
  v41 = dictionary5;
  if (v40)
  {
    v42 = v40;
    v43 = *v72;
    v39 = 16;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v72 != v43)
        {
          objc_enumerationMutation(v38);
        }

        v45 = *(*(&v71 + 1) + 8 * m);
        if (tokenIDFromTokenAndVocabularyMap(v45, v41) == 3)
        {
          v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
          v47 = [dictionary4 objectForKey:v45];
          [(NSDictionary *)dictionary5 setObject:v46 forKey:v45];
          [(NSDictionary *)dictionary6 setObject:v47 forKey:v46];
          ++v39;

          v41 = dictionary5;
        }
      }

      v42 = [v38 countByEnumeratingWithState:&v71 objects:v89 count:16];
    }

    while (v42);
  }

  labelMap = self->_labelMap;
  self->_labelMap = dictionary;
  v49 = dictionary;

  inverseLabelMap = self->_inverseLabelMap;
  self->_inverseLabelMap = dictionary2;
  v51 = v41;
  v52 = dictionary2;

  vocabularyMap = self->_vocabularyMap;
  self->_vocabularyMap = v51;
  v54 = v51;

  documentFrequencyMap = self->_documentFrequencyMap;
  self->_documentFrequencyMap = dictionary6;
  v56 = dictionary6;

  self->_numberOfLabels = v69;
  self->_numberOfVocabularyEntries = v39;
  self->_numberOfTokens = v66;
  self->_generatedMaps = 1;
}

uint64_t __48__NLDataProvider__generateMapsWithModelTrainer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 32) objectForKey:v6];

  v10 = [v9 unsignedIntegerValue];
  if (v8 > v10)
  {
    return -1;
  }

  else
  {
    return v8 < v10;
  }
}

- (void)_performLanguageRecognition
{
  v34 = *MEMORY[0x1E69E9840];
  numberOfInstances = [(NLDataProvider *)self numberOfInstances];
  v3 = objc_alloc_init(NLLanguageRecognizer);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (numberOfInstances)
  {
    v5 = 0;
    dominantLanguage = 0;
    do
    {
      v7 = dominantLanguage;
      v8 = [(NLDataProvider *)self instanceAtIndex:v5];
      [(NLLanguageRecognizer *)v3 reset];
      string = [v8 string];
      [(NLLanguageRecognizer *)v3 processString:string];

      dominantLanguage = [(NLLanguageRecognizer *)v3 dominantLanguage];

      if (dominantLanguage)
      {
        v10 = [dictionary objectForKey:dominantLanguage];
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
        [dictionary setObject:v12 forKey:dominantLanguage];
      }

      ++v5;
    }

    while (numberOfInstances != v5);
  }

  else
  {
    dominantLanguage = 0;
  }

  v26 = dominantLanguage;
  v27 = v3;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  allKeys = [dictionary allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = *v30;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        v21 = [dictionary objectForKey:v20];
        unsignedIntegerValue2 = [v21 unsignedIntegerValue];

        if (unsignedIntegerValue2 > v16)
        {
          v23 = v20;

          v16 = unsignedIntegerValue2;
          v17 = v23;
        }
      }

      v15 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  else
  {
    v17 = 0;
  }

  recognizedLanguage = self->_recognizedLanguage;
  self->_recognizedLanguage = v17;
  v25 = v17;

  self->_performedLanguageRecognition = 1;
}

- (void)generateMapsWithModelTrainer:(id)trainer
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMapsWithModelTrainer:trainer];
  }
}

- (id)labelMap
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  labelMap = self->_labelMap;

  return labelMap;
}

- (id)inverseLabelMap
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  inverseLabelMap = self->_inverseLabelMap;

  return inverseLabelMap;
}

- (id)vocabularyMap
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  vocabularyMap = self->_vocabularyMap;

  return vocabularyMap;
}

- (id)documentFrequencyMap
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  documentFrequencyMap = self->_documentFrequencyMap;

  return documentFrequencyMap;
}

- (unint64_t)numberOfLabels
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  return self->_numberOfLabels;
}

- (unint64_t)numberOfVocabularyEntries
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  return self->_numberOfVocabularyEntries;
}

- (unint64_t)numberOfTokens
{
  if (!self->_generatedMaps)
  {
    [(NLDataProvider *)self _generateMaps];
  }

  return self->_numberOfTokens;
}

- (NSString)recognizedLanguage
{
  if (!self->_performedLanguageRecognition)
  {
    [(NLDataProvider *)self _performLanguageRecognition];
  }

  recognizedLanguage = self->_recognizedLanguage;

  return recognizedLanguage;
}

@end