@interface OSLastLockPredictionClient
@end

@implementation OSLastLockPredictionClient

void __45___OSLastLockPredictionClient_initConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = gLastLockPredictionClientLog;
    if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
    {
      __45___OSLastLockPredictionClient_initConnection__block_invoke_cold_1(v2);
    }
  }
}

void __45___OSLastLockPredictionClient_initConnection__block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleInterruption];
    WeakRetained = v2;
  }
}

void __53___OSLastLockPredictionClient_recommendedRequeryTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __53___OSLastLockPredictionClient_recommendedRequeryTime__block_invoke_cold_1();
  }
}

void __47___OSLastLockPredictionClient_modelDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __47___OSLastLockPredictionClient_modelDescription__block_invoke_cold_1();
  }
}

void __44___OSLastLockPredictionClient_modelMetadata__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __44___OSLastLockPredictionClient_modelMetadata__block_invoke_cold_1();
  }
}

void __55___OSLastLockPredictionClient_hasEnoughActivityHistory__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __55___OSLastLockPredictionClient_hasEnoughActivityHistory__block_invoke_cold_1();
  }
}

void __55___OSLastLockPredictionClient_activityHistoryDiagnosis__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __55___OSLastLockPredictionClient_activityHistoryDiagnosis__block_invoke_cold_1();
  }
}

void __51___OSLastLockPredictionClient_deviceUsageDiagnosis__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __51___OSLastLockPredictionClient_deviceUsageDiagnosis__block_invoke_cold_1();
  }
}

void __65___OSLastLockPredictionClient_lastLockPredictionResultWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __65___OSLastLockPredictionClient_lastLockPredictionResultWithError___block_invoke_cold_1();
  }
}

void __65___OSLastLockPredictionClient_lastLockPredictionResultWithError___block_invoke_98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __92___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __92___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withError___block_invoke_cold_1();
  }
}

void __92___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withError___block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __46___OSLastLockPredictionClient_fixModelOutput___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __46___OSLastLockPredictionClient_fixModelOutput___block_invoke_cold_1();
  }
}

void __47___OSLastLockPredictionClient_unfixModelOutput__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __47___OSLastLockPredictionClient_unfixModelOutput__block_invoke_cold_1();
  }
}

void __64___OSLastLockPredictionClient_overrideRecommendedRequeryTimeTo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __64___OSLastLockPredictionClient_overrideRecommendedRequeryTimeTo___block_invoke_cold_1();
  }
}

void __60___OSLastLockPredictionClient_restoreRecommendedRequeryTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __60___OSLastLockPredictionClient_restoreRecommendedRequeryTime__block_invoke_cold_1();
  }
}

void __51___OSLastLockPredictionClient_restoreLastLockModel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __51___OSLastLockPredictionClient_restoreLastLockModel__block_invoke_cold_1();
  }
}

void __65___OSLastLockPredictionClient_recommendedRequeryTimeWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __65___OSLastLockPredictionClient_recommendedRequeryTimeWithHandler___block_invoke_cold_1();
  }
}

void __59___OSLastLockPredictionClient_modelDescriptionWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __59___OSLastLockPredictionClient_modelDescriptionWithHandler___block_invoke_cold_1();
  }
}

void __56___OSLastLockPredictionClient_modelMetadataWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __56___OSLastLockPredictionClient_modelMetadataWithHandler___block_invoke_cold_1();
  }
}

void __67___OSLastLockPredictionClient_activityHistoryDiagnosisWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __67___OSLastLockPredictionClient_activityHistoryDiagnosisWithHandler___block_invoke_cold_1();
  }
}

void __67___OSLastLockPredictionClient_hasEnoughActivityHistoryWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __67___OSLastLockPredictionClient_hasEnoughActivityHistoryWithHandler___block_invoke_cold_1();
  }
}

void __63___OSLastLockPredictionClient_deviceUsageDiagnosisWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __63___OSLastLockPredictionClient_deviceUsageDiagnosisWithHandler___block_invoke_cold_1();
  }
}

void __67___OSLastLockPredictionClient_lastLockPredictionResultWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __67___OSLastLockPredictionClient_lastLockPredictionResultWithHandler___block_invoke_cold_1();
  }
}

void __94___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __94___OSLastLockPredictionClient_lastLockPredictionResultAtDate_withTimeSinceActive_withHandler___block_invoke_cold_1();
  }
}

void __58___OSLastLockPredictionClient_fixModelOutput_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __58___OSLastLockPredictionClient_fixModelOutput_withHandler___block_invoke_cold_1();
  }
}

void __59___OSLastLockPredictionClient_unfixModelOutputWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __59___OSLastLockPredictionClient_unfixModelOutputWithHandler___block_invoke_cold_1();
  }
}

void __76___OSLastLockPredictionClient_overrideRecommendedRequeryTimeTo_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __76___OSLastLockPredictionClient_overrideRecommendedRequeryTimeTo_withHandler___block_invoke_cold_1();
  }
}

void __72___OSLastLockPredictionClient_restoreRecommendedRequeryTimeWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __72___OSLastLockPredictionClient_restoreRecommendedRequeryTimeWithHandler___block_invoke_cold_1();
  }
}

void __63___OSLastLockPredictionClient_restoreLastLockModelWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(gLastLockPredictionClientLog, OS_LOG_TYPE_ERROR))
  {
    __63___OSLastLockPredictionClient_restoreLastLockModelWithHandler___block_invoke_cold_1();
  }
}

@end