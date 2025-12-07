@interface PPContextPredictor
- (PPContextPredictor)initWithLanguage:(id)language;
- (PPContextPredictor)initWithLanguage:(id)language mlModelURL:(id)l;
- (PPContextPredictor)initWithMLModel:(id)model language:(id)language;
- (PPContextPredictor)initWithMLModel:(id)model language:(id)language sentenceEmbeddingVersion:(unint64_t)version;
- (id)contextForSentence:(id)sentence;
@end

@implementation PPContextPredictor

- (id)contextForSentence:(id)sentence
{
  v52 = *MEMORY[0x277D85DE8];
  if (!self->_mlModel)
  {
    v9 = 0;
    goto LABEL_36;
  }

  sentenceCopy = sentence;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CD89B0] wordEmbeddingForLanguage:self->_language revision:self->_sentenceEmbeddingVersion];
  objc_autoreleasePoolPop(v6);
  if (v7 && [v7 dimension] < 0x12D)
  {
    bzero(buf, 0x5DC0uLL);
    if ([sentenceCopy count] <= 0x14)
    {
      v10 = [sentenceCopy count];
      if (!v10)
      {
LABEL_13:
        v41 = 0;
        v32 = [objc_alloc(MEMORY[0x277CBFF48]) initWithDataPointer:buf shape:&unk_284785340 dataType:65568 strides:&unk_284785358 deallocator:&__block_literal_global_11574 error:&v41];
        v8 = v41;
        if (v32)
        {
          v14 = objc_alloc(MEMORY[0x277CBFED0]);
          v15 = objc_autoreleasePoolPush();
          v48 = @"embedded_content";
          v49 = v32;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          objc_autoreleasePoolPop(v15);
          v40 = v8;
          v17 = [v14 initWithDictionary:v16 error:&v40];
          v30 = v40;

          if (v17)
          {
            v34 = 0;
            v35 = &v34;
            v36 = 0x3032000000;
            v37 = __Block_byref_object_copy__11580;
            v38 = __Block_byref_object_dispose__11581;
            v39 = 0;
            coremlQueue = self->_coremlQueue;
            *&block = MEMORY[0x277D85DD0];
            *(&block + 1) = 3221225472;
            v43 = __52__PPContextPredictor_contextUsingCoreMLForSentence___block_invoke_56;
            v44 = &unk_278976388;
            v47 = &v34;
            selfCopy = self;
            oslog = v17;
            v46 = oslog;
            dispatch_sync(coremlQueue, &block);
            v19 = v35[5];
            if (v19)
            {
              v20 = [v19 featureValueForName:@"probabilities"];
              multiArrayValue = [v20 multiArrayValue];

              if (multiArrayValue)
              {
                v22 = objc_opt_new();
                for (i = 0; i < [multiArrayValue count]; ++i)
                {
                  v24 = objc_autoreleasePoolPush();
                  v25 = [multiArrayValue objectAtIndexedSubscript:i];
                  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
                  [v22 setObject:v25 forKeyedSubscript:v26];

                  objc_autoreleasePoolPop(v24);
                }

                v9 = [[PPExtractionContext alloc] initWithProbabilities:v22];
              }

              else
              {
                v22 = pp_default_log_handle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *v33 = 0;
                  _os_log_error_impl(&dword_23224A000, v22, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to fetch array.", v33, 2u);
                }

                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }

            _Block_object_dispose(&v34, 8);
          }

          else
          {
            v27 = pp_default_log_handle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              LODWORD(block) = 138412290;
              *(&block + 4) = v30;
              _os_log_error_impl(&dword_23224A000, v27, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to construct feature provider: %@", &block, 0xCu);
            }

            oslog = 0;
            v9 = 0;
          }

          v8 = v30;
        }

        else
        {
          oslog = pp_default_log_handle();
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            LODWORD(block) = 138412290;
            *(&block + 4) = v8;
            _os_log_error_impl(&dword_23224A000, oslog, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to allocate multiarray: %@", &block, 0xCu);
          }

          v9 = 0;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v10 = 20;
    }

    v11 = 0;
    v12 = buf;
    do
    {
      v13 = [sentenceCopy objectAtIndexedSubscript:v11];
      [v7 getVector:v12 forString:v13];

      ++v11;
      v12 += 1200;
    }

    while (v10 != v11);
    goto LABEL_13;
  }

  v8 = pp_default_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    language = self->_language;
    *buf = 138412290;
    v51 = language;
    _os_log_debug_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEBUG, "PPContextPredictor: unsupported language %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_35:

  objc_autoreleasePoolPop(v5);
LABEL_36:

  return v9;
}

void __52__PPContextPredictor_contextUsingCoreMLForSentence___block_invoke_56(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = *(a1[4] + 8);
  v9 = 0;
  v4 = [v3 predictionFromFeatures:v2 error:&v9];
  v5 = v9;
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (!*(*(a1[6] + 8) + 40))
  {
    v8 = pp_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_23224A000, v8, OS_LOG_TYPE_ERROR, "PPContextPredictor: unable to invoke model: %@", buf, 0xCu);
    }
  }
}

- (PPContextPredictor)initWithMLModel:(id)model language:(id)language sentenceEmbeddingVersion:(unint64_t)version
{
  modelCopy = model;
  languageCopy = language;
  v16.receiver = self;
  v16.super_class = PPContextPredictor;
  v11 = [(PPContextPredictor *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mlModel, model);
    objc_storeStrong(&v12->_language, language);
    v13 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPContextPredictor-modelQueue"];
    coremlQueue = v12->_coremlQueue;
    v12->_coremlQueue = v13;

    v12->_sentenceEmbeddingVersion = version;
  }

  return v12;
}

- (PPContextPredictor)initWithMLModel:(id)model language:(id)language
{
  languageCopy = language;
  modelCopy = model;
  v8 = +[PPConfiguration sharedInstance];
  v9 = -[PPContextPredictor initWithMLModel:language:sentenceEmbeddingVersion:](self, "initWithMLModel:language:sentenceEmbeddingVersion:", modelCopy, languageCopy, [v8 sentenceEmbeddingVersion]);

  return v9;
}

- (PPContextPredictor)initWithLanguage:(id)language mlModelURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  lCopy = l;
  v8 = objc_opt_new();
  [v8 setComputeUnits:0];
  v14 = 0;
  v9 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:lCopy configuration:v8 error:&v14];

  v10 = v14;
  if (v9)
  {
    self = [(PPContextPredictor *)self initWithMLModel:v9 language:languageCopy sentenceEmbeddingVersion:1];
    selfCopy = self;
  }

  else
  {
    v12 = pp_default_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_error_impl(&dword_23224A000, v12, OS_LOG_TYPE_ERROR, "PPContextPredictor: failed to load ML model: %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PPContextPredictor)initWithLanguage:(id)language
{
  languageCopy = language;
  v5 = +[PPTrialWrapper sharedInstance];
  v6 = [v5 mlModelForModelName:@"context_predictor.mlmodelc" namespaceName:@"PERSONALIZATION_PORTRAIT_GLOBAL" error:0];
  v7 = [(PPContextPredictor *)self initWithMLModel:v6 language:languageCopy];

  return v7;
}

@end