@interface SGQuickResponsesPersonalization
+ (id)augmentRecords:(id)records semanticClass:(unint64_t)class config:(id)config;
+ (id)deduplicatedReplyTextsForReplyPositions:(id)positions semanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config;
- (SGQuickResponsesPersonalization)initWithStore:(id)store withRng:(id)rng;
- (id)replyPositionsForSemanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config;
- (id)sortedReplyPositionsForSemanticClass:(unint64_t)class config:(id)config;
- (void)registerDisplayedResponses:(id)responses config:(id)config;
- (void)registerSelectedResponse:(id)response config:(id)config;
- (void)registerWrittenResponse:(id)response config:(id)config;
@end

@implementation SGQuickResponsesPersonalization

- (void)registerWrittenResponse:(id)response config:(id)config
{
  v6 = MEMORY[0x277CCA900];
  configCopy = config;
  responseCopy = response;
  whitespaceAndNewlineCharacterSet = [v6 whitespaceAndNewlineCharacterSet];
  v16 = [responseCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v10 = [SGQuickResponsesReplies normalizeReplyText:v16];
  replies = [configCopy replies];
  normalizedReplyTextsSet = [replies normalizedReplyTextsSet];
  v13 = [normalizedReplyTextsSet containsObject:v10];

  store = self->_store;
  language = [configCopy language];

  [(SGQuickResponsesStore *)store addWrittenToResponse:v10 language:language isMatch:v13];
}

- (void)registerSelectedResponse:(id)response config:(id)config
{
  v16 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  configCopy = config;
  v8 = [SGQuickResponsesReplies normalizeReplyText:responseCopy];
  replies = [configCopy replies];
  normalizedReplyTextsSet = [replies normalizedReplyTextsSet];
  v11 = [normalizedReplyTextsSet containsObject:v8];

  if (v11)
  {
    store = self->_store;
    language = [configCopy language];
    [(SGQuickResponsesStore *)store addSelectedToResponse:v8 language:language];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = responseCopy;
    _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "No reply text string exists in config for selected response: %@", &v14, 0xCu);
  }
}

- (void)registerDisplayedResponses:(id)responses config:(id)config
{
  v28 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  configCopy = config;
  v19 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = responsesCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [SGQuickResponsesReplies normalizeReplyText:v11];
        replies = [configCopy replies];
        normalizedReplyTextsSet = [replies normalizedReplyTextsSet];
        v15 = [normalizedReplyTextsSet containsObject:v12];

        if (v15)
        {
          [v19 addObject:v12];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = v11;
          _os_log_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No reply text string exists in config for displayed response: %@", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  store = self->_store;
  language = [configCopy language];
  [(SGQuickResponsesStore *)store addDisplayedToResponses:v19 language:language];
}

- (id)sortedReplyPositionsForSemanticClass:(unint64_t)class config:(id)config
{
  v29 = *MEMORY[0x277D85DE8];
  configCopy = config;
  replies = [configCopy replies];
  v8 = [replies replyTextsForIndex:class];

  store = self->_store;
  language = [configCopy language];
  v11 = [(SGQuickResponsesStore *)store recordsForResponsesInternal:v8 language:language];

  if (v11)
  {
    v12 = [SGQuickResponsesPersonalization augmentRecords:v11 semanticClass:class config:configCopy];

    v13 = [SGQuickResponsesReplyOption sortedReplyOptionsForRecords:v12 config:configCopy];
    predictionParams = [configCopy predictionParams];
    isReplyTextRandomized = [predictionParams isReplyTextRandomized];

    if (isReplyTextRandomized)
    {
      [SGRandomization shuffleMutableArray:v13 inApproxEqualEpsilon:&__block_literal_global_110 withValueBlock:self->_rng withRng:0.000001];
    }

    v16 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v13;
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          position = [*(*(&v24 + 1) + 8 * i) position];
          [v16 addObject:position];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

double __79__SGQuickResponsesPersonalization_sortedReplyPositionsForSemanticClass_config___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ucb];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (id)replyPositionsForSemanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config
{
  configCopy = config;
  v9 = [(SGQuickResponsesPersonalization *)self sortedReplyPositionsForSemanticClass:class config:configCopy];
  if (!v9)
  {
    replies = [configCopy replies];
    v11 = [replies replyCountForIndex:class];

    v9 = [SGRandomization shuffledSamplingWithoutReplacementForK:v11 fromN:v11 withRng:self->_rng];
  }

  v12 = [SGQuickResponsesPersonalization deduplicatedReplyTextsForReplyPositions:v9 semanticClass:class responseCount:count config:configCopy];

  return v12;
}

- (SGQuickResponsesPersonalization)initWithStore:(id)store withRng:(id)rng
{
  storeCopy = store;
  rngCopy = rng;
  v12.receiver = self;
  v12.super_class = SGQuickResponsesPersonalization;
  v8 = [(SGQuickResponsesPersonalization *)&v12 init];
  if (v8)
  {
    if (storeCopy)
    {
      v9 = storeCopy;
    }

    else
    {
      v9 = +[SGQuickResponsesStore sharedInstance];
    }

    store = v8->_store;
    v8->_store = v9;

    objc_storeStrong(&v8->_rng, rng);
  }

  return v8;
}

+ (id)augmentRecords:(id)records semanticClass:(unint64_t)class config:(id)config
{
  recordsCopy = records;
  configCopy = config;
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    replies2 = [configCopy replies];
    semanticClassSelectedPseudocounts = [replies2 semanticClassSelectedPseudocounts];
    v13 = [semanticClassSelectedPseudocounts objectAtIndexedSubscript:class];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_opt_new();
  predictionParams = [configCopy predictionParams];
  [predictionParams personalizationDisplayedPseudocount];
  v17 = v16;

  predictionParams2 = [configCopy predictionParams];
  [predictionParams2 personalizationSelectedPseudocountPerSemanticClass];
  v20 = v19;

  replyRecords = [recordsCopy replyRecords];
  v22 = [replyRecords count];

  if (v22)
  {
    v23 = 0;
    do
    {
      replyRecords2 = [recordsCopy replyRecords];
      v25 = [replyRecords2 objectAtIndexedSubscript:v23];

      v26 = v20;
      if (v13)
      {
        v27 = [v13 objectAtIndexedSubscript:v23];
        [v27 doubleValue];
        v26 = v20 * v28;
      }

      [v25 selected];
      v30 = v26 + v29;
      [v25 matched];
      v32 = v26 + v31;
      v33 = [SGQuickResponsesReplyRecord alloc];
      [v25 displayed];
      v35 = [(SGQuickResponsesReplyRecord *)v33 initWithDisplayed:v17 + v34 selected:v30 matched:v32];
      [v14 addObject:v35];

      ++v23;
      replyRecords3 = [recordsCopy replyRecords];
      v37 = [replyRecords3 count];
    }

    while (v23 < v37);
  }

  replies3 = [configCopy replies];
  replyTextCount = [replies3 replyTextCount];

  replies4 = [configCopy replies];
  replyClassCount = [replies4 replyClassCount];

  v42 = [SGQuickResponsesRecords alloc];
  [recordsCopy totalOpportunities];
  v44 = v43 + v17 * replyClassCount;
  [recordsCopy totalDisplayed];
  v46 = v45 + v17 * replyTextCount;
  [recordsCopy totalSelected];
  v48 = v47 + v20 * replyClassCount;
  [recordsCopy totalMatched];
  v50 = v49 + v20 * replyClassCount;
  [recordsCopy totalUnmatched];
  v52 = [(SGQuickResponsesRecords *)v42 initWithReplyRecords:v14 totalOpportunities:v44 totalDisplayed:v46 totalSelected:v48 totalMatched:v50 totalUnmatched:v51 + v17 * replyTextCount - v20 * replyClassCount];

  return v52;
}

+ (id)deduplicatedReplyTextsForReplyPositions:(id)positions semanticClass:(unint64_t)class responseCount:(unint64_t)count config:(id)config
{
  v63 = *MEMORY[0x277D85DE8];
  positionsCopy = positions;
  configCopy = config;
  v55 = objc_opt_new();
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:class];
  replies = [configCopy replies];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v50 = configCopy;
    replies2 = [configCopy replies];
    semanticClassStyleGroups = [replies2 semanticClassStyleGroups];
    v15 = [semanticClassStyleGroups objectAtIndexedSubscript:class];

    semanticClassReplyTexts = [replies2 semanticClassReplyTexts];
    v17 = [semanticClassReplyTexts objectAtIndexedSubscript:class];

    v49 = replies2;
    replyTextParent = [replies2 replyTextParent];
    firstObject = [v15 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    v48 = v15;
    v19 = [v15 count];
    firstObject2 = [v17 firstObject];
    unsignedIntegerValue2 = [firstObject2 unsignedIntegerValue];

    v47 = v17;
    v22 = [v17 count];
    for (i = objc_opt_new(); v19; --v19)
    {
      v24 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:0];
      [i addObject:v24];
    }

    if (v22 >= count)
    {
      countCopy = count;
    }

    else
    {
      countCopy = v22;
    }

    v51 = positionsCopy;
    v52 = countCopy;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = positionsCopy;
    v26 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v59;
LABEL_9:
      v30 = 0;
      while (1)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v58 + 1) + 8 * v30);
        v32 = [replyTextParent objectAtIndexedSubscript:{objc_msgSend(v31, "unsignedIntegerValue") + unsignedIntegerValue2}];
        unsignedIntegerValue3 = [v32 unsignedIntegerValue];

        v34 = unsignedIntegerValue3 - unsignedIntegerValue;
        v35 = [i objectAtIndexedSubscript:unsignedIntegerValue3 - unsignedIntegerValue];
        unsignedIntegerValue4 = [v35 unsignedIntegerValue];

        if (!unsignedIntegerValue4)
        {
          v37 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:1];
          [i setObject:v37 atIndexedSubscript:v34];

          v38 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v54 second:v31];
          [v55 addObject:v38];
          ++v28;

          if (v28 >= v52)
          {
            break;
          }
        }

        if (v27 == ++v30)
        {
          v27 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v27)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    configCopy = v50;
    positionsCopy = v51;
  }

  else
  {
    v40 = [positionsCopy count];
    if (count && v40)
    {
      v41 = 1;
      do
      {
        v42 = objc_alloc(MEMORY[0x277D42648]);
        v43 = [positionsCopy objectAtIndexedSubscript:v41 - 1];
        v44 = [v42 initWithFirst:v54 second:v43];

        [v55 addObject:v44];
        v45 = [positionsCopy count];
        if (v41 >= count)
        {
          break;
        }
      }

      while (v41++ < v45);
    }
  }

  return v55;
}

@end