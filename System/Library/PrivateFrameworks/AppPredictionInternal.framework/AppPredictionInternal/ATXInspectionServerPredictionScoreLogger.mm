@interface ATXInspectionServerPredictionScoreLogger
@end

@implementation ATXInspectionServerPredictionScoreLogger

uint64_t __56___ATXInspectionServerPredictionScoreLogger_stageScores__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void __77___ATXInspectionServerPredictionScoreLogger_logInputs_subscores_forBundleId___block_invoke(void *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"inputs";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a1[6]];
  v5[1] = @"subscores";
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:a1[7]];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [*(a1[4] + 16) setObject:v4 forKeyedSubscript:a1[5]];
}

void *__73___ATXInspectionServerPredictionScoreLogger_logStageScores_forStageType___block_invoke(void *result)
{
  v1 = result[6];
  if (v1 <= 2)
  {
    return [*(result[4] + 24) setObject:result[5] forKey:off_27859FB08[v1]];
  }

  return result;
}

@end