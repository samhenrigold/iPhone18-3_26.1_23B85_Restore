@interface NLPLearnerTextData
+ (id)dataForPFL:(int64_t)l andLocale:(id)locale;
+ (id)dataForTask:(int64_t)task andLocale:(id)locale;
+ (void)initialize;
- (BOOL)addExamples:(id)examples;
- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to;
- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to withLocale:(id)locale andLMStreamTokenizationBlock:(id)block;
- (NLPLearnerTextData)initWithLocale:(id)locale;
- (void)addResource:(id)resource;
@end

@implementation NLPLearnerTextData

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.NLP", "NLPLearnerTextData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerTextData)initWithLocale:(id)locale
{
  localeCopy = locale;
  v8.receiver = self;
  v8.super_class = NLPLearnerTextData;
  v5 = [(NLPLearnerTextData *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NLPLearnerTextData *)v5 setSentences:v6];

    [(NLPLearnerTextData *)v5 setIterator:0];
    [(NLPLearnerTextData *)v5 setLocale:localeCopy];
  }

  return v5;
}

+ (id)dataForTask:(int64_t)task andLocale:(id)locale
{
  localeCopy = locale;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
  {
    +[NLPLearnerTextData dataForTask:andLocale:];
  }

  if ((task - 1) >= 7)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerTextData dataForTask:andLocale:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(*off_279928A08[task - 1]) initWithLocale:localeCopy];
  }

  return v6;
}

+ (id)dataForPFL:(int64_t)l andLocale:(id)locale
{
  localeCopy = locale;
  if ((l - 1) >= 4)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerTextData dataForTask:andLocale:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(*off_279928A40[l - 1]) initWithLocale:localeCopy];
  }

  return v6;
}

- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to
{
  v26 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  v6 = sLog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[NLPLearnerTextData loadFromCoreDuet:limitSamplesTo:].cold.1(buf, [duetCopy count], v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = duetCopy;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v21 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v20 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      if (to && [(NLPLearnerTextData *)self numSamples]>= to)
      {
        v16 = 2;
      }

      else
      {
        locale = [(NLPLearnerTextData *)self locale];
        languageCode = [locale languageCode];
        v14 = [NLPLearnerUtils messageContentForEvent:v10 andLanguage:languageCode];

        if (v14)
        {
          sentences = [(NLPLearnerTextData *)self sentences];
          [sentences addObject:v14];

          v16 = 0;
        }

        else
        {
          v16 = 3;
        }
      }

      objc_autoreleasePoolPop(v11);
      if (v16 != 3)
      {
        if (v16)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  return 1;
}

- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to withLocale:(id)locale andLMStreamTokenizationBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  localeCopy = locale;
  blockCopy = block;
  v27 = localeCopy;
  cf = LMStreamTokenizerCreate();
  v32 = cf;
  v11 = sLog;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    -[NLPLearnerTextData loadFromCoreDuet:limitSamplesTo:].cold.1(buf, [duetCopy count], v11);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = duetCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v13)
  {
    v14 = *v29;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v28 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      if (to && [(NLPLearnerTextData *)self numSamples]>= to)
      {
        v22 = 2;
      }

      else
      {
        languageCode = [v27 languageCode];
        v19 = [NLPLearnerUtils messageContentForEvent:v16 andLanguage:languageCode];

        if (v19)
        {
          v20 = v19;
          uTF8String = [v19 UTF8String];
          [(NLPLearnerTextData *)self setProcessingNewRecord:1];
          strlen(uTF8String);
          LMStreamTokenizerPushBytes();
          v22 = 0;
        }

        else
        {
          v22 = 3;
        }
      }

      objc_autoreleasePoolPop(v17);
      if (v22 != 3)
      {
        if (v22)
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  [(NLPLearnerTextData *)self setProcessingNewRecord:0];
  if (cf)
  {
    CFRelease(cf);
  }

  return 1;
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerTextData addResource:];
  }
}

- (BOOL)addExamples:(id)examples
{
  examplesCopy = examples;
  sentences = [(NLPLearnerTextData *)self sentences];
  [sentences addObjectsFromArray:examplesCopy];

  return 1;
}

+ (void)dataForTask:andLocale:.cold.1()
{
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 2048;
  v3 = 1;
  v4 = 2048;
  v5 = 2;
  v6 = 2048;
  v7 = 3;
  v8 = 2048;
  v9 = 4;
  v10 = 2048;
  v11 = 5;
  v12 = 2048;
  v13 = 6;
  v14 = 2048;
  v15 = 7;
  _os_log_debug_impl(&dword_25AE22000, v0, OS_LOG_TYPE_DEBUG, "Initializing data for %ld task.\n (Emoji %ld, LM Legacy %ld, Character LM %ld, LM Shipping %ld, LM Fragment %ld, LM Ngram %ld, ACT %ld)", v1, 0x52u);
}

- (void)loadFromCoreDuet:(os_log_t)log limitSamplesTo:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Processing %ld events extracted from CoreDuet", buf, 0xCu);
}

@end