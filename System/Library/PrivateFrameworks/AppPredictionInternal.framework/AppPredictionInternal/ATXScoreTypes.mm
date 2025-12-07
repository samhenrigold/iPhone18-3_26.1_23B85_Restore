@interface ATXScoreTypes
@end

@implementation ATXScoreTypes

void __38___ATXScoreTypes_scoreInputForString___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = scoreInputForString__scoreInputMap;
  scoreInputForString__scoreInputMap = v2;

  for (i = 0; i != 828; ++i)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v6 = scoreInputForString__scoreInputMap;
    v7 = [_ATXScoreTypes stringForScoreInput:i];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

void __42___ATXScoreTypes_scoreInputForAggdString___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = scoreInputForAggdString__scoreInputMap;
  scoreInputForAggdString__scoreInputMap = v2;

  for (i = 0; i != 828; ++i)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v6 = scoreInputForAggdString__scoreInputMap;
    v7 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }
}

@end