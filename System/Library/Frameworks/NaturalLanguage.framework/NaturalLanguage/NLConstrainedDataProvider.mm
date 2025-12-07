@interface NLConstrainedDataProvider
- (NLConstrainedDataProvider)initWithDataProvider:(id)provider parameters:(_NLConstraintParameters *)parameters modelTrainer:(id)trainer;
- (id)instanceAtIndex:(unint64_t)index;
@end

@implementation NLConstrainedDataProvider

- (NLConstrainedDataProvider)initWithDataProvider:(id)provider parameters:(_NLConstraintParameters *)parameters modelTrainer:(id)trainer
{
  v117[1] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  trainerCopy = trainer;
  v111.receiver = self;
  v111.super_class = NLConstrainedDataProvider;
  v11 = [(NLConstrainedDataProvider *)&v111 init];
  v12 = v11;
  if (v11)
  {
    providerCopy2 = provider;
    v85 = v11;
    v94 = trainerCopy;
    array = [MEMORY[0x1E695DF70] array];
    labelMap = [providerCopy labelMap];
    vocabularyMap = [providerCopy vocabularyMap];
    documentFrequencyMap = [providerCopy documentFrequencyMap];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    numberOfInstances = [providerCopy numberOfInstances];
    v13 = [NLTagger alloc];
    v117[0] = @"TokenType";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:1];
    v86 = [(NLTagger *)v13 initWithTagSchemes:v14];

    v15 = objc_autoreleasePoolPush();
    v16 = NLGetLogCategory(0);
    internal = [v16 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = 0;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if ([&unk_1F10D1460 count])
    {
      v18 = 0;
      do
      {
        v19 = objc_autoreleasePoolPush();
        v20 = NLGetLogCategory(0);
        internal2 = [v20 internal];

        if (os_log_type_enabled(internal2, OS_LOG_TYPE_INFO))
        {
          v22 = [&unk_1F10D1460 objectAtIndexedSubscript:v18];
          uTF8String = [v22 UTF8String];
          *buf = 134218498;
          *&buf[4] = 1;
          *&buf[12] = 2048;
          *&buf[14] = v18;
          *&buf[22] = 2082;
          *&buf[24] = uTF8String;
          _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %{public}s", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v19);
        ++v18;
      }

      while (v18 < [&unk_1F10D1460 count]);
    }

    v25 = numberOfInstances;
    v24 = array;
    v26 = ((numberOfInstances / 0x64) * 10.0);
    if (v26 <= 1)
    {
      v26 = 1;
    }

    if (v26 >= 0x64)
    {
      v27 = 100;
    }

    else
    {
      v27 = v26;
    }

    if (numberOfInstances)
    {
      v28 = 0;
      v29 = -1;
      do
      {
        v30 = [providerCopy instanceAtIndex:v28];
        tokenizer = [providerCopy tokenizer];
        v32 = *&parameters->maxSplitTokens;
        *buf = *&parameters->splitSentences;
        *&buf[16] = v32;
        v116 = *&parameters->maxLabels;
        v33 = [v30 locatorsWithIndex:v28 parameters:buf tagger:v86 tokenizer:tokenizer];
        [(NSArray *)v24 addObjectsFromArray:v33];
        if (!((v25 + v29) % v27))
        {
          context = objc_autoreleasePoolPush();
          v34 = NLGetLogCategory(0);
          internal3 = [v34 internal];

          if (os_log_type_enabled(internal3, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            *&buf[4] = 2;
            *&buf[12] = 2048;
            *&buf[14] = 0;
            *&buf[22] = 2048;
            *&buf[24] = v28 + 1;
            _os_log_impl(&dword_19D48F000, internal3, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %lu", buf, 0x20u);
          }

          objc_autoreleasePoolPop(context);
          contexta = objc_autoreleasePoolPush();
          v36 = NLGetLogCategory(0);
          internal4 = [v36 internal];

          v25 = numberOfInstances;
          if (os_log_type_enabled(internal4, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            *&buf[4] = 2;
            *&buf[12] = 2048;
            *&buf[14] = 1;
            *&buf[22] = 2048;
            *&buf[24] = numberOfInstances;
            _os_log_impl(&dword_19D48F000, internal4, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %lu", buf, 0x20u);
          }

          objc_autoreleasePoolPop(contexta);
          v24 = array;
        }

        reportInstanceCompletionToTrainer(v94, v28, v25, 1);

        ++v28;
        --v29;
      }

      while (v25 != v28);
    }

    v38 = objc_autoreleasePoolPush();
    v39 = NLGetLogCategory(0);
    internal5 = [v39 internal];

    if (os_log_type_enabled(internal5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = 3;
      _os_log_impl(&dword_19D48F000, internal5, OS_LOG_TYPE_INFO, "event: %lu", buf, 0xCu);
    }

    contextb = providerCopy;

    objc_autoreleasePoolPop(v38);
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v41 = labelMap;
    v42 = [v41 countByEnumeratingWithState:&v107 objects:v114 count:16];
    trainerCopy = v94;
    if (v42)
    {
      v43 = v42;
      v44 = 0;
      v45 = *v108;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v108 != v45)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v107 + 1) + 8 * i);
          v48 = [v41 objectForKey:v47];
          unsignedIntegerValue = [v48 unsignedIntegerValue];
          if (parameters->maxLabels - 1 >= unsignedIntegerValue)
          {
            v50 = unsignedIntegerValue;
            [(NSDictionary *)dictionary setObject:v48 forKey:v47];
            [(NSDictionary *)dictionary2 setObject:v47 forKey:v48];
            if (v50 > v44)
            {
              v44 = v50;
            }
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v107 objects:v114 count:16];
      }

      while (v43);
      v51 = v44 + 1;
    }

    else
    {
      v51 = 1;
    }

    v89 = v51;

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v52 = vocabularyMap;
    v53 = [v52 countByEnumeratingWithState:&v103 objects:v113 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = 0;
      v56 = *v104;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v104 != v56)
          {
            objc_enumerationMutation(v52);
          }

          v58 = *(*(&v103 + 1) + 8 * j);
          v59 = tokenIDFromTokenAndVocabularyMap(v58, v52);
          if (v59 >= 0x10)
          {
            v60 = v59;
            if (parameters->maxVocabularySize - 1 >= v59)
            {
              v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v59];
              [(NSDictionary *)dictionary3 setObject:v61 forKey:v58];

              if (v60 > v55)
              {
                v55 = v60;
              }
            }
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v103 objects:v113 count:16];
      }

      while (v54);
      v87 = v55 + 1;
      trainerCopy = v94;
    }

    else
    {
      v87 = 1;
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v62 = documentFrequencyMap;
    v63 = [v62 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v100;
      do
      {
        for (k = 0; k != v64; ++k)
        {
          if (*v100 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v99 + 1) + 8 * k);
          v68 = [v62 objectForKey:v67];
          if (parameters->maxVocabularySize - 1 >= [v67 unsignedIntegerValue])
          {
            [(NSDictionary *)dictionary4 setObject:v68 forKey:v67];
          }
        }

        v64 = [v62 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v64);
    }

    objc_storeStrong(&v85->_dataProvider, providerCopy2);
    v70 = *&parameters->maxSplitTokens;
    v69 = *&parameters->maxLabels;
    *&v85->_parameters.splitSentences = *&parameters->splitSentences;
    *&v85->_parameters.maxSplitTokens = v70;
    *&v85->_parameters.maxLabels = v69;
    locators = v85->_locators;
    v85->_locators = array;
    v72 = array;

    labelMap = v85->_labelMap;
    v85->_labelMap = dictionary;
    v74 = dictionary;

    inverseLabelMap = v85->_inverseLabelMap;
    v85->_inverseLabelMap = dictionary2;
    v76 = dictionary2;

    vocabularyMap = v85->_vocabularyMap;
    v85->_vocabularyMap = dictionary3;
    v78 = dictionary3;

    documentFrequencyMap = v85->_documentFrequencyMap;
    v85->_documentFrequencyMap = dictionary4;

    v12 = v85;
    v85->_numberOfLabels = v89;
    v85->_numberOfVocabularyEntries = v87;

    providerCopy = contextb;
  }

  return v12;
}

- (id)instanceAtIndex:(unint64_t)index
{
  v4 = [(NSArray *)self->_locators objectAtIndex:index];
  v5 = -[NLDataProvider instanceAtIndex:](self->_dataProvider, "instanceAtIndex:", [v4 instanceIndex]);
  v6 = [v5 subInstanceWithLocator:v4 tokenizer:{-[NLConstrainedDataProvider tokenizer](self, "tokenizer")}];

  return v6;
}

@end