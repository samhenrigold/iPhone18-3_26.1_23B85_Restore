@interface LCFProactivePredictionRanker
- (LCFProactivePredictionRanker)init;
- (id)proactiveRanking:(id)ranking predictions:(id)predictions;
@end

@implementation LCFProactivePredictionRanker

- (LCFProactivePredictionRanker)init
{
  v6.receiver = self;
  v6.super_class = LCFProactivePredictionRanker;
  v2 = [(LCFProactivePredictionRanker *)&v6 init];
  v4 = v2;
  if (v2)
  {
    LCFModelMonitoringLoggingUtilsInit(v2, v3);
  }

  return v4;
}

- (id)proactiveRanking:(id)ranking predictions:(id)predictions
{
  v50 = *MEMORY[0x277D85DE8];
  rankingCopy = ranking;
  predictionsCopy = predictions;
  v7 = [rankingCopy count];
  v38 = predictionsCopy;
  if (v7 == [predictionsCopy count])
  {
    v8 = objc_opt_new();
    if ([rankingCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [rankingCopy objectAtIndexedSubscript:v9];
        v11 = [v38 featuresAtIndex:v9];
        v12 = [[LCFProactivePredictionRankerHolder alloc] init:v10 prediction:v11];
        featureValues = [v10 featureValues];
        v14 = [featureValues objectForKeyedSubscript:@"_sharingEventUID"];
        stringValue = [v14 stringValue];

        v16 = [v8 objectForKey:stringValue];

        if (!v16)
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v8 setObject:v17 forKey:stringValue];
        }

        v18 = [v8 objectForKeyedSubscript:stringValue];
        [v18 addObject:v12];

        ++v9;
      }

      while (v9 < [rankingCopy count]);
    }

    v37 = rankingCopy;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v19 = v8;
    v42 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v42)
    {
      v41 = *v44;
      v40 = v19;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v44 != v41)
          {
            objc_enumerationMutation(v19);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          v22 = [v19 objectForKeyedSubscript:v21];
          if ([v22 count])
          {
            v23 = [v22 sortedArrayUsingFunction:predictionSort context:0];
            if ([v23 count])
            {
              if ([v23 count])
              {
                v24 = 1;
                while (1)
                {
                  v25 = [v23 objectAtIndexedSubscript:v24 - 1];
                  featureSet = [v25 featureSet];
                  featureValues2 = [featureSet featureValues];
                  v28 = [featureValues2 objectForKeyedSubscript:@"_isPositiveLabeled"];
                  bOOLValue = [v28 BOOLValue];
                  v29BOOLValue = [bOOLValue BOOLValue];

                  if (v29BOOLValue)
                  {
                    break;
                  }

                  if (v24++ >= [v23 count])
                  {
                    goto LABEL_25;
                  }
                }

                v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
                [v39 addObject:v34];
              }
            }

            else
            {
              v33 = LCFMMLogProactivePredictionRanker;
              if (os_log_type_enabled(LCFMMLogProactivePredictionRanker, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v48 = v21;
                _os_log_error_impl(&dword_255F3F000, v33, OS_LOG_TYPE_ERROR, "empty sortedByPrediction for %@", buf, 0xCu);
              }
            }

LABEL_25:

            v19 = v40;
          }

          else
          {
            v32 = LCFMMLogProactivePredictionRanker;
            if (os_log_type_enabled(LCFMMLogProactivePredictionRanker, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v21;
              _os_log_error_impl(&dword_255F3F000, v32, OS_LOG_TYPE_ERROR, "empty holder for %@", buf, 0xCu);
            }
          }
        }

        v42 = [v19 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v42);
    }

    rankingCopy = v37;
  }

  else
  {
    v35 = LCFMMLogProactivePredictionRanker;
    if (os_log_type_enabled(LCFMMLogProactivePredictionRanker, OS_LOG_TYPE_ERROR))
    {
      [(LCFProactivePredictionRanker *)v35 proactiveRanking:rankingCopy predictions:predictionsCopy];
    }

    v39 = 0;
  }

  return v39;
}

- (void)proactiveRanking:(void *)a3 predictions:.cold.1(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 134218240;
  v7 = [a2 count];
  v8 = 2048;
  v9 = [a3 count];
  _os_log_error_impl(&dword_255F3F000, v5, OS_LOG_TYPE_ERROR, "count of features and precistions don't match. feature count %ld predictions count %ld", &v6, 0x16u);
}

@end