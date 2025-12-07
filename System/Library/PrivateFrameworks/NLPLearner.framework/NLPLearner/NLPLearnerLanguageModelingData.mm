@interface NLPLearnerLanguageModelingData
+ (void)initialize;
- (BOOL)addExamples:(id)examples;
- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to;
- (NLPLearnerLanguageModelingData)initWithLocale:(id)locale;
- (id)nextEvaluationDataPoint;
- (id)nextTrainingDataBatch:(unint64_t)batch;
- (void)addPreprocessedExample:(void *)example;
@end

@implementation NLPLearnerLanguageModelingData

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.NLP", "NLPLearnerLanguageModelingData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerLanguageModelingData)initWithLocale:(id)locale
{
  v14[1] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = NLPLearnerLanguageModelingData;
  v5 = [(NLPLearnerTextData *)&v12 initWithLocale:localeCopy];
  if (v5 && (-[NLPLearnerTextData setMaxSequenceLength:](v5, "setMaxSequenceLength:", [objc_opt_class() defaultMaxSequenceLength]), v13 = *MEMORY[0x277D23168], -[NLPLearnerTextData locale](v5, "locale"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "languageCode"), v7 = objc_claimAutoreleasedReturnValue(), v14[0] = v7, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, &v13, 1), v8 = LXLexiconCreate(), nlp::CFScopedPtr<_LXLexicon const*>::reset(&v5->_lexicon.m_ref, v8), v7, v6, !v5->_lexicon.m_ref))
  {
    v10 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerLanguageModelingData *)0 initWithLocale:v10];
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)addPreprocessedExample:(void *)example
{
  v13 = *MEMORY[0x277D85DE8];
  tokenIDMapPath = [(NLPLearnerLanguageModelingData *)self tokenIDMapPath];

  if (tokenIDMapPath)
  {
    tokenIDMapPath2 = [(NLPLearnerLanguageModelingData *)self tokenIDMapPath];
    v6 = LMCreateMontrealIDsFromLMTokenIDSequence();

    if (v6)
    {
      CFDataGetBytePtr(v6);
      [(NLPLearnerTextData *)self maxSequenceLength];
      v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
      v9 = sLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v8 componentsJoinedByString:@" "];
        [(NLPLearnerLanguageModelingData *)v10 addPreprocessedExample:buf, v9];
      }

      sentences = [(NLPLearnerTextData *)self sentences];
      [sentences addObject:v8];

      CFRelease(v6);
    }

    else
    {
      v7 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [NLPLearnerLanguageModelingData addPreprocessedExample:v7];
      }
    }
  }
}

- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to
{
  duetCopy = duet;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v11[5] = &unk_25AE36D43;
  memset(&__p, 0, sizeof(__p));
  std::vector<unsigned int>::reserve(&__p, [(NLPLearnerTextData *)self maxSequenceLength]);
  locale = [(NLPLearnerTextData *)self locale];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__NLPLearnerLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke;
  v10[3] = &unk_279928B78;
  v10[4] = self;
  v10[5] = v11;
  v9.receiver = self;
  v9.super_class = NLPLearnerLanguageModelingData;
  [(NLPLearnerTextData *)&v9 loadFromCoreDuet:duetCopy limitSamplesTo:to withLocale:locale andLMStreamTokenizationBlock:v10];

  _Block_object_dispose(v11, 8);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return 1;
}

void __66__NLPLearnerLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v10 = a4;
  if (a4)
  {
    if (a4 == 2)
    {
      std::vector<unsigned int>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v10);
      [*(a1 + 32) addPreprocessedExample:*(*(a1 + 40) + 8) + 48];
      *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 48);
      return;
    }

    if (a4 == 1 && *(*(*(a1 + 40) + 8) + 56) != *(*(*(a1 + 40) + 8) + 48))
    {
      __66__NLPLearnerLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8217];
    v7 = [v5 stringByReplacingOccurrencesOfString:v6 withString:@"'"];

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__51;
    v22 = __Block_byref_object_dispose__52;
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = ___ZL16tokenIDForStringPK10_LXLexiconPK10__CFString_block_invoke;
    v14 = &unk_279928BC8;
    v16 = &v18;
    v17 = v7;
    v15 = &v24;
    LXLexiconEnumerateEntriesForString();
    v8 = *(v25 + 6);
    if (!v8)
    {
      if ([v19[5] count] == 1)
      {
        v9 = [v19[5] objectAtIndexedSubscript:0];
        v8 = [v9 unsignedIntValue];
      }

      else
      {
        v8 = *(v25 + 6);
      }
    }

    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
    v10 = v8;
  }

  std::vector<unsigned int>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v10);
}

- (id)nextTrainingDataBatch:(unint64_t)batch
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = [(NLPLearnerTextData *)self iterator]+ batch;
  if (v5 <= [(NLPLearnerTextData *)self numSamples])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:batch];
    if (batch)
    {
      v8 = 0;
      v9 = MEMORY[0x277D2A230];
      v10 = MEMORY[0x277D2A228];
      do
      {
        sentences = [(NLPLearnerTextData *)self sentences];
        v12 = [sentences objectAtIndexedSubscript:{v8 + -[NLPLearnerTextData iterator](self, "iterator")}];

        v13 = [v12 subarrayWithRange:{0, objc_msgSend(v12, "count") - 1}];
        v14 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
        v15 = *v10;
        v20[0] = *v9;
        v20[1] = v15;
        v21[0] = v13;
        v21[1] = v14;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v7 addObject:v16];

        ++v8;
      }

      while (batch != v8);
    }

    [(NLPLearnerTextData *)self setIterator:[(NLPLearnerTextData *)self iterator]+ batch];
    v18 = *MEMORY[0x277D2A210];
    v19 = v7;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)nextEvaluationDataPoint
{
  v19[2] = *MEMORY[0x277D85DE8];
  iterator = [(NLPLearnerTextData *)self iterator];
  if (iterator >= [(NLPLearnerTextData *)self numSamples])
  {
    v12 = 0;
    goto LABEL_11;
  }

  sentences = [(NLPLearnerTextData *)self sentences];
  v5 = [sentences objectAtIndexedSubscript:{-[NLPLearnerTextData iterator](self, "iterator")}];

  v6 = [v5 subarrayWithRange:{0, objc_msgSend(v5, "count") - 1}];
  v7 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    cf = 0;

    goto LABEL_15;
  }

  CFRetain(v8);
  cf = v9;
  v10 = CFGetTypeID(v9);
  if (v10 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F858110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!cf)
  {
LABEL_15:
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F858110](v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::convert_to<std::vector<float>,0>(cf, &__p);
  v18[0] = *MEMORY[0x277D2A270];
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:__p.__begin_ length:__p.__end_ - __p.__begin_];
  v18[1] = *MEMORY[0x277D2A278];
  v19[0] = v11;
  v19[1] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  [(NLPLearnerTextData *)self setIterator:[(NLPLearnerTextData *)self iterator]+ 1];
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:

  return v12;
}

- (BOOL)addExamples:(id)examples
{
  v32 = *MEMORY[0x277D85DE8];
  examplesCopy = examples;
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = examplesCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v21 = *v27;
    do
    {
      v6 = 0;
      v20 = v5;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * v6);
        if ([v7 length])
        {
          v8 = [v7 componentsSeparatedByString:@" "];
          v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v11)
          {
            v12 = *v23;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [v4 numberFromString:*(*(&v22 + 1) + 8 * v13)];
              [v9 addObject:v14];
              v15 = [v9 count];
              LOBYTE(v15) = v15 < [(NLPLearnerTextData *)self maxSequenceLength];

              if ((v15 & 1) == 0)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          sentences = [(NLPLearnerTextData *)self sentences];
          [sentences addObject:v9];

          v5 = v20;
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  return 1;
}

- (void)initWithLocale:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "Lexicon load failed %@", &v2, 0xCu);
}

- (void)addPreprocessedExample:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Tokens: '%@'", buf, 0xCu);
}

@end