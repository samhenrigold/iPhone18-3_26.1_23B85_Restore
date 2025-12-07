@interface NLPLearnerNgramShadowEvaluator
+ (void)initialize;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
@end

@implementation NLPLearnerNgramShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_4 = os_log_create("com.apple.NLPLearner", "NLPLearnerNgramShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  recordsCopy = records;
  optionsCopy = options;
  completionCopy = completion;
  v15 = [(NLPLearnerShadowEvaluator *)self prepareDataFromRecords:recordsCopy];
  if ([v15 numSamples])
  {
    v46[0] = *MEMORY[0x277D230E0];
    locale = [(NLPLearnerShadowEvaluator *)self locale];
    languageCode = [locale languageCode];
    v46[1] = *MEMORY[0x277D23078];
    v47[0] = languageCode;
    v47[1] = MEMORY[0x277CBEC28];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

    v19 = LMLanguageModelCreate();
    if (v19)
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0;
      getSamples = [v15 getSamples];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __83__NLPLearnerNgramShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke;
      v33[3] = &unk_279928B50;
      v33[4] = self;
      v33[5] = &v38;
      v33[6] = &v34;
      v33[7] = v19;
      [getSamples enumerateObjectsUsingBlock:v33];

      v22 = v35[3];
      if (v22)
      {
        *&v21 = (v39[6] * 100.0) / v22;
      }

      else
      {
        v21 = 0.0;
      }

      v42[0] = @"MLPModelTrainerOverallAccuracyKey";
      v29 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
      v42[1] = @"Samples";
      v43[0] = v29;
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "numSamples")}];
      v43[1] = v30;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v38, 8);
    }

    else
    {
      v25 = sLog_4;
      if (os_log_type_enabled(sLog_4, OS_LOG_TYPE_ERROR))
      {
        [NLPLearnerCoreNLPShadowEvaluator evaluateModel:modelCopy onRecords:v25 options:? completion:? error:?];
      }

      if (error)
      {
        v26 = MEMORY[0x277CCA9B8];
        v44 = *MEMORY[0x277CCA450];
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"error loading static lm model"];
        v45 = v27;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        *error = [v26 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:6 userInfo:v28];
      }

      v24 = 0;
    }

    goto LABEL_14;
  }

  if (error)
  {
    v23 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"missing evaluation data for PFL";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    [v23 errorWithDomain:@"com.apple.NLPLearner.NLPShadowEvaluationErrorDomain" code:9 userInfo:v18];
    *error = v24 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v24 = 0;
LABEL_15:

  return v24;
}

void __83__NLPLearnerNgramShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = sLog_4;
    if (os_log_type_enabled(sLog_4, OS_LOG_TYPE_ERROR))
    {
      __83__NLPLearnerNgramShadowEvaluator_evaluateModel_onRecords_options_completion_error___block_invoke_cold_1(v7);
    }

    *a4 = 1;
  }

  v8 = [v6 bytes];
  v9 = [v6 length];
  v10 = (v9 >> 2) - 1;
  if (v10 >= 2)
  {
    for (i = 1; i != v10; ++i)
    {
      LMLanguageModelCreatePredictionEnumerator();
      if (LMPredictionEnumeratorAdvance())
      {
        v12 = -1;
        do
        {
          if (++v12 >= [*(a1 + 32) topK])
          {
            break;
          }

          LMPredictionEnumeratorGetPrediction();
          if (!*(v8 + 4 * i))
          {
            *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + 1.0;
            break;
          }
        }

        while ((LMPredictionEnumeratorAdvance() & 1) != 0);
      }

      LMPredictionEnumeratorRelease();
    }
  }

  if (v9 > 0xB)
  {
    *(*(*(a1 + 48) + 8) + 24) = (v9 >> 2) + *(*(*(a1 + 48) + 8) + 24) - 2;
  }
}

@end