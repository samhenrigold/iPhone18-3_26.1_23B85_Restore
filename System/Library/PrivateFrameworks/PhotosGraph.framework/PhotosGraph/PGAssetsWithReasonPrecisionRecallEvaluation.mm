@interface PGAssetsWithReasonPrecisionRecallEvaluation
- (PGAssetsWithReasonPrecisionRecallEvaluation)initWithIdentifier:(id)identifier category:(id)category;
- (void)evaluateWithGroundTruthResults:(id)results inferenceResults:(id)inferenceResults reasonResultByAssetIdentifier:(id)identifier;
@end

@implementation PGAssetsWithReasonPrecisionRecallEvaluation

- (void)evaluateWithGroundTruthResults:(id)results inferenceResults:(id)inferenceResults reasonResultByAssetIdentifier:(id)identifier
{
  v40 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  inferenceResultsCopy = inferenceResults;
  identifierCopy = identifier;
  v38.receiver = self;
  v38.super_class = PGAssetsWithReasonPrecisionRecallEvaluation;
  v32 = inferenceResultsCopy;
  v33 = resultsCopy;
  [(PGPrecisionRecallEvaluation *)&v38 evaluateWithGroundTruthResults:resultsCopy andInferenceResults:inferenceResultsCopy];
  identifier = [(PGPrecisionRecallEvaluation *)self identifier];
  selfCopy = self;
  category = [(PGPrecisionRecallEvaluation *)self category];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = identifierCopy;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v31 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v31)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [v12 objectForKeyedSubscript:v16];
        v18 = [(NSMutableDictionary *)selfCopy->_evaluationByReason objectForKeyedSubscript:v17];
        if (!v18)
        {
          v18 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:identifier category:category];
          [(NSMutableDictionary *)selfCopy->_evaluationByReason setObject:v18 forKeyedSubscript:v17];
        }

        v19 = [v33 objectForKeyedSubscript:v16];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = &unk_284484368;
        }

        v22 = v21;

        v23 = [v32 objectForKeyedSubscript:v16];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = &unk_284484368;
        }

        v26 = v25;

        bOOLValue = [v22 BOOLValue];
        bOOLValue2 = [v26 BOOLValue];

        [(PGPrecisionRecallEvaluation *)v18 evaluateWithGroundTruthResult:bOOLValue andInferenceResult:bOOLValue2];
      }

      v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v14);
  }
}

- (PGAssetsWithReasonPrecisionRecallEvaluation)initWithIdentifier:(id)identifier category:(id)category
{
  v8.receiver = self;
  v8.super_class = PGAssetsWithReasonPrecisionRecallEvaluation;
  v4 = [(PGPrecisionRecallEvaluation *)&v8 initWithIdentifier:identifier category:category];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    evaluationByReason = v4->_evaluationByReason;
    v4->_evaluationByReason = v5;
  }

  return v4;
}

@end