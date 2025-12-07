@interface SGQuickResponsesRanking
- (SGQuickResponsesRanking)initWithSeed:(unint64_t)seed;
- (id)classResultsForScores:(id)scores numResponses:(id)responses responseCount:(unint64_t)count config:(id)config;
- (id)indexesForScores:(id)scores numResponses:(id)responses;
- (id)resultsForModelScores:(id)scores responseCount:(unint64_t)count config:(id)config;
- (id)semanticClassesForCategory:(unint64_t)category responseCount:(unint64_t)count configReplies:(id)replies;
- (id)semanticClassesForResults:(id)results scores:(id)scores numResponses:(id)responses config:(id)config;
@end

@implementation SGQuickResponsesRanking

- (id)semanticClassesForCategory:(unint64_t)category responseCount:(unint64_t)count configReplies:(id)replies
{
  v34 = *MEMORY[0x277D85DE8];
  repliesCopy = replies;
  categorySemanticClasses = [repliesCopy categorySemanticClasses];
  v10 = [categorySemanticClasses objectAtIndexedSubscript:category];

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10];
  [SGRandomization shuffleMutableArray:v11 withRng:self->_rng];
  if ([v11 count] >= count)
  {
    v23 = [v11 subarrayWithRange:{0, count}];
  }

  else
  {
    selfCopy = self;
    countCopy = count;
    v12 = objc_opt_new();
    v28 = repliesCopy;
    semanticClasses = [repliesCopy semanticClasses];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v10;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [semanticClasses objectAtIndexedSubscript:{objc_msgSend(v19, "unsignedIntegerValue", selfCopy)}];
          v21 = [v20 count] - 1;

          for (; v21; --v21)
          {
            [v12 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v16);
    }

    [SGRandomization shuffleMutableArray:v12 withRng:selfCopy->_rng];
    v22 = [v12 subarrayWithRange:{0, countCopy - objc_msgSend(v11, "count")}];
    v23 = [v11 arrayByAddingObjectsFromArray:v22];

    v10 = v27;
    repliesCopy = v28;
  }

  return v23;
}

- (id)semanticClassesForResults:(id)results scores:(id)scores numResponses:(id)responses config:(id)config
{
  v55 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  scoresCopy = scores;
  responsesCopy = responses;
  configCopy = config;
  predictionParams = [configCopy predictionParams];
  isPerCategory = [predictionParams isPerCategory];

  if (isPerCategory & 1) != 0 && ([configCopy replies], v16 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v16, (isKindOfClass))
  {
    v40 = configCopy;
    replies = [configCopy replies];
    categoryModels = [replies categoryModels];
    v20 = [categoryModels count];

    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:0];
    if (v20)
    {
      v24 = MEMORY[0x277CBEBF8];
      do
      {
        [v21 addObject:v24];
        [v22 addObject:v23];
        --v20;
      }

      while (v20);
    }

    v39 = v23;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __80__SGQuickResponsesRanking_semanticClassesForResults_scores_numResponses_config___block_invoke;
    v49[3] = &unk_278EB85F8;
    v42 = scoresCopy;
    v50 = scoresCopy;
    v25 = v21;
    v51 = v25;
    selfCopy = self;
    v38 = replies;
    v53 = v38;
    v41 = responsesCopy;
    [responsesCopy enumerateObjectsUsingBlock:v49];
    v26 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v43 = resultsCopy;
    obj = resultsCopy;
    v27 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v46;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          unsignedIntegerValue = [*(*(&v45 + 1) + 8 * i) unsignedIntegerValue];
          v32 = [v22 objectAtIndexedSubscript:unsignedIntegerValue];
          unsignedIntegerValue2 = [v32 unsignedIntegerValue];

          v34 = [v25 objectAtIndexedSubscript:unsignedIntegerValue];
          v35 = [v34 objectAtIndexedSubscript:unsignedIntegerValue2];

          v36 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:unsignedIntegerValue2 + 1];
          [v22 setObject:v36 atIndexedSubscript:unsignedIntegerValue];

          [v26 addObject:v35];
        }

        v28 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v28);
    }

    scoresCopy = v42;
    resultsCopy = v43;
    configCopy = v40;
    responsesCopy = v41;
  }

  else
  {
    v26 = resultsCopy;
  }

  return v26;
}

void __80__SGQuickResponsesRanking_semanticClassesForResults_scores_numResponses_config___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [v7 index];

  v9 = [v6 unsignedIntegerValue];
  v10 = [*(a1 + 48) semanticClassesForCategory:v8 responseCount:v9 configReplies:*(a1 + 56)];
  [*(a1 + 40) setObject:v10 atIndexedSubscript:v8];
}

- (id)indexesForScores:(id)scores numResponses:(id)responses
{
  scoresCopy = scores;
  responsesCopy = responses;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SGQuickResponsesRanking_indexesForScores_numResponses___block_invoke;
  v13[3] = &unk_278EB85D0;
  v14 = scoresCopy;
  v8 = v7;
  v15 = v8;
  v9 = scoresCopy;
  [responsesCopy enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __57__SGQuickResponsesRanking_indexesForScores_numResponses___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 unsignedIntegerValue];
  v6 = objc_alloc(MEMORY[0x277CCABB0]);
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v8 = [v6 initWithUnsignedInteger:{objc_msgSend(v7, "index")}];

  for (; v5; --v5)
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (id)classResultsForScores:(id)scores numResponses:(id)responses responseCount:(unint64_t)count config:(id)config
{
  scoresCopy = scores;
  responsesCopy = responses;
  configCopy = config;
  predictionParams = [configCopy predictionParams];
  responsesToShowAtTopForDiversity = [predictionParams responsesToShowAtTopForDiversity];

  if (responsesToShowAtTopForDiversity && responsesToShowAtTopForDiversity < count)
  {
    v16 = [SGQuickResponsesDistributingCount numResponsesForScores:scoresCopy responseCount:responsesToShowAtTopForDiversity config:configCopy];
    v17 = objc_opt_new();
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __83__SGQuickResponsesRanking_classResultsForScores_numResponses_responseCount_config___block_invoke;
    v27 = &unk_278EB85A8;
    v28 = v16;
    selfCopy = self;
    v30 = v17;
    v31 = a2;
    v18 = v17;
    v19 = v16;
    [responsesCopy enumerateObjectsUsingBlock:&v24];
    v20 = [(SGQuickResponsesRanking *)self indexesForScores:scoresCopy numResponses:v19, v24, v25, v26, v27];
    v21 = [(SGQuickResponsesRanking *)self indexesForScores:scoresCopy numResponses:v18];
    v22 = [v20 arrayByAddingObjectsFromArray:v21];
  }

  else
  {
    v22 = [(SGQuickResponsesRanking *)self indexesForScores:scoresCopy numResponses:responsesCopy];
  }

  return v22;
}

void __83__SGQuickResponsesRanking_classResultsForScores_numResponses_responseCount_config___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v11 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    [v11 unsignedIntegerValue];
    v6 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v6 = [v5 unsignedIntegerValue];

    if ([v11 unsignedIntegerValue] < v6)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"SGQuickResponsesRanking.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"num.unsignedIntegerValue >= headerCount"}];
    }
  }

  v8 = [v11 unsignedIntegerValue] - v6;
  v9 = *(a1 + 48);
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v8];
  [v9 addObject:v10];
}

- (id)resultsForModelScores:(id)scores responseCount:(unint64_t)count config:(id)config
{
  scoresCopy = scores;
  configCopy = config;
  if ([scoresCopy count])
  {
    v10 = [SGQuickResponsesDistributingCount numResponsesForScores:scoresCopy responseCount:count config:configCopy];
    v11 = [(SGQuickResponsesRanking *)self classResultsForScores:scoresCopy numResponses:v10 responseCount:count config:configCopy];
    v12 = [(SGQuickResponsesRanking *)self semanticClassesForResults:v11 scores:scoresCopy numResponses:v10 config:configCopy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

- (SGQuickResponsesRanking)initWithSeed:(unint64_t)seed
{
  v8.receiver = self;
  v8.super_class = SGQuickResponsesRanking;
  v4 = [(SGQuickResponsesRanking *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:seed];
    rng = v4->_rng;
    v4->_rng = v5;
  }

  return v4;
}

@end