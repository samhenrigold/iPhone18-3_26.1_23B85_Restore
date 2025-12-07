@interface ICASSearchRankingExperimentItemData
- (ICASSearchRankingExperimentItemData)initWithRankingStrategyType:(id)type rank:(id)rank;
- (id)toDict;
@end

@implementation ICASSearchRankingExperimentItemData

- (ICASSearchRankingExperimentItemData)initWithRankingStrategyType:(id)type rank:(id)rank
{
  typeCopy = type;
  rankCopy = rank;
  v12.receiver = self;
  v12.super_class = ICASSearchRankingExperimentItemData;
  v9 = [(ICASSearchRankingExperimentItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_rankingStrategyType, type);
    objc_storeStrong(&v10->_rank, rank);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"rankingStrategyType";
  rankingStrategyType = [(ICASSearchRankingExperimentItemData *)self rankingStrategyType];
  if (rankingStrategyType)
  {
    rankingStrategyType2 = [(ICASSearchRankingExperimentItemData *)self rankingStrategyType];
  }

  else
  {
    rankingStrategyType2 = objc_opt_new();
  }

  v5 = rankingStrategyType2;
  v11[1] = @"rank";
  v12[0] = rankingStrategyType2;
  rank = [(ICASSearchRankingExperimentItemData *)self rank];
  if (rank)
  {
    rank2 = [(ICASSearchRankingExperimentItemData *)self rank];
  }

  else
  {
    rank2 = objc_opt_new();
  }

  v8 = rank2;
  v12[1] = rank2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end