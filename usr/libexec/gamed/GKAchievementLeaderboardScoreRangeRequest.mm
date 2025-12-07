@interface GKAchievementLeaderboardScoreRangeRequest
- (id)serverRequestWithService:(id)service;
@end

@implementation GKAchievementLeaderboardScoreRangeRequest

- (id)serverRequestWithService:(id)service
{
  serverPlayerScope = [(GKAchievementLeaderboardScoreRangeRequest *)self serverPlayerScope];
  [(GKAchievementLeaderboardScoreRangeRequest *)self range];
  v8 = [NSNumber numberWithInteger:v4];
  v9 = [NSNumber numberWithInteger:[(GKAchievementLeaderboardScoreRangeRequest *)self range]];
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(NSDictionary);

  return v5;
}

@end