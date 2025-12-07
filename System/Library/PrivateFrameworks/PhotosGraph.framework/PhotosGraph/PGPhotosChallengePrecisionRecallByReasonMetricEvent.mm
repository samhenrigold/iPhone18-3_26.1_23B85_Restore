@interface PGPhotosChallengePrecisionRecallByReasonMetricEvent
- (NSArray)payloads;
- (NSString)description;
@end

@implementation PGPhotosChallengePrecisionRecallByReasonMetricEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  identifier = [(PGPhotosChallengeMetricEvent *)self identifier];
  payloads = [(PGPhotosChallengePrecisionRecallByReasonMetricEvent *)self payloads];
  v9 = [v3 stringWithFormat:@"<%@: %p> %@:\nIdentifier:%@\nPayloads:%@", v4, self, v6, identifier, payloads];

  return v9;
}

- (NSArray)payloads
{
  v19[1] = *MEMORY[0x277D85DE8];
  evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
  if (evaluation)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13.receiver = self;
      v13.super_class = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
      payload = [(PGPhotosChallengePrecisionRecallByReasonMetricEvent *)&v13 self];
      v5 = [(PGPhotosChallengeMetricEvent *)self preparePayloadForPrecisionRecallEval:payload withEvaluations:evaluation];
      goto LABEL_9;
    }

    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      evaluation2 = [(PGPhotosChallengeMetricEvent *)self evaluation];
      *buf = 138412290;
      v18 = objc_opt_class();
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "PGPhotosChallengePrecisionRecallByReasonMetricEvent: evaluation object is the wrong type (%@)", buf, 0xCu);
    }

    v14.receiver = self;
    v14.super_class = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
    payload = [(PGPhotosChallengeMetricEvent *)&v14 payload];
    v16 = payload;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v16;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
    payload = [(PGPhotosChallengeMetricEvent *)&v15 payload];
    v19[0] = payload;
    v6 = MEMORY[0x277CBEA60];
    v7 = v19;
  }

  v5 = [v6 arrayWithObjects:v7 count:1];
LABEL_9:
  v10 = v5;

  return v10;
}

@end