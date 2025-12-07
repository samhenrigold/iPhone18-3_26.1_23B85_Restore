@interface ATXAnchorModelAppPredictionPostProcessor
- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction;
- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction blacklist:(id)blacklist;
- (BOOL)shouldPredictAnchorModelAppPrediction;
@end

@implementation ATXAnchorModelAppPredictionPostProcessor

- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction
{
  predictionCopy = prediction;
  v5 = +[ATXAppPredictionBlacklist sharedInstance];
  v6 = [(ATXAnchorModelAppPredictionPostProcessor *)self initWithAnchorModelPrediction:predictionCopy blacklist:v5];

  return v6;
}

- (ATXAnchorModelAppPredictionPostProcessor)initWithAnchorModelPrediction:(id)prediction blacklist:(id)blacklist
{
  predictionCopy = prediction;
  blacklistCopy = blacklist;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelAppPredictionPostProcessor;
  v9 = [(ATXAnchorModelAppPredictionPostProcessor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchorModelPrediction, prediction);
    v11 = objc_opt_new();
    storeWrapper = v10->_storeWrapper;
    v10->_storeWrapper = v11;

    objc_storeStrong(&v10->_blacklist, blacklist);
  }

  return v10;
}

- (BOOL)shouldPredictAnchorModelAppPrediction
{
  v21 = *MEMORY[0x277D85DE8];
  candidateType = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateType];
  v4 = [candidateType isEqualToString:@"app"];

  if (!v4)
  {
    return 0;
  }

  v5 = MEMORY[0x277CEB3B8];
  candidateId = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
  LOBYTE(v5) = [v5 isInstalledForBundle:candidateId];

  if (v5)
  {
    v8 = MEMORY[0x277CEB3B8];
    candidateId2 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
    LOBYTE(v8) = [v8 isDeviceManagementPolicyOkForBundleId:candidateId2];

    if (v8)
    {
      disabledBundleIds = [(ATXAppPredictionBlacklist *)self->_blacklist disabledBundleIds];
      candidateId3 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v13 = [disabledBundleIds containsObject:candidateId3];

      if (!v13)
      {
        return 1;
      }

      v15 = __atxlog_handle_anchor(v14);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      candidateId4 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v19 = 138412290;
      v20 = candidateId4;
      v17 = "Skipping prediction for %@ because app is blacklisted.";
      goto LABEL_11;
    }

    v15 = __atxlog_handle_anchor(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      candidateId4 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v19 = 138412290;
      v20 = candidateId4;
      v17 = "Skipping prediction for %@ because app is disabled from Screen Time.";
      goto LABEL_11;
    }
  }

  else
  {
    v15 = __atxlog_handle_anchor(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      candidateId4 = [(ATXAnchorModelPrediction *)self->_anchorModelPrediction candidateId];
      v19 = 138412290;
      v20 = candidateId4;
      v17 = "Skipping prediction for %@ because app is not installed.";
LABEL_11:
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, v17, &v19, 0xCu);
    }
  }

LABEL_12:

  return 0;
}

@end