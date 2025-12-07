@interface PGPhotosChallengeSyndicatedAssetsMetricEvent
- (NSArray)payloads;
- (NSString)description;
@end

@implementation PGPhotosChallengeSyndicatedAssetsMetricEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identifier = [(PGPhotosChallengeMetricEvent *)self identifier];
  payloads = [(PGPhotosChallengeSyndicatedAssetsMetricEvent *)self payloads];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@:\nIdentifier:%@\nPayloads:%@", v4, self, v6, identifier, payloads];

  return v9;
}

- (NSArray)payloads
{
  v36[1] = *MEMORY[0x277D85DE8];
  evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
  if (!evaluation)
  {
    v31.receiver = self;
    v31.super_class = PGPhotosChallengeSyndicatedAssetsMetricEvent;
    obj = [(PGPhotosChallengeMetricEvent *)&v31 payload];
    v36[0] = obj;
    v17 = v36;
LABEL_15:
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = +[PGLogging sharedLogging];
    loggingConnection = [v18 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      evaluation2 = [(PGPhotosChallengeMetricEvent *)self evaluation];
      *buf = 138412290;
      v35 = objc_opt_class();
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGPhotosChallengeSyndicatedAssetsMetricEvent: evaluation object is the wrong type (%@)", buf, 0xCu);
    }

    v30.receiver = self;
    v30.super_class = PGPhotosChallengeSyndicatedAssetsMetricEvent;
    obj = [(PGPhotosChallengeMetricEvent *)&v30 payload];
    v33 = obj;
    v17 = &v33;
    goto LABEL_15;
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [evaluation evaluationByReason];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v23 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        evaluationByReason = [evaluation evaluationByReason];
        [evaluationByReason objectForKeyedSubscript:v7];
        v10 = v9 = evaluation;

        v25.receiver = self;
        v25.super_class = PGPhotosChallengeSyndicatedAssetsMetricEvent;
        payload = [(PGPhotosChallengeMetricEvent *)&v25 payload];
        v12 = [payload mutableCopy];

        [v12 setObject:v7 forKeyedSubscript:@"questionInfo"];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "falseNegatives")}];
        [v12 setObject:v13 forKeyedSubscript:@"falseNegativeCount"];

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "falsePositives")}];
        [v12 setObject:v14 forKeyedSubscript:@"falsePositiveCount"];

        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "trueNegatives")}];
        [v12 setObject:v15 forKeyedSubscript:@"trueNegativeCount"];

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "truePositives")}];
        [v12 setObject:v16 forKeyedSubscript:@"truePositiveCount"];

        [v24 addObject:v12];
        evaluation = v9;
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }

LABEL_16:

  return v24;
}

@end