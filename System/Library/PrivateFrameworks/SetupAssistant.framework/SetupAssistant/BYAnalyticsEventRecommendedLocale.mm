@interface BYAnalyticsEventRecommendedLocale
- (BYAnalyticsEventRecommendedLocale)initWithAnalyticsManager:(id)manager;
- (id)eventPayload;
@end

@implementation BYAnalyticsEventRecommendedLocale

- (BYAnalyticsEventRecommendedLocale)initWithAnalyticsManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = BYAnalyticsEventRecommendedLocale;
  v5 = [(BYAnalyticsEventRecommendedLocale *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __62__BYAnalyticsEventRecommendedLocale_initWithAnalyticsManager___block_invoke;
    v8[3] = &unk_1E7D036A0;
    v9 = v5;
    [managerCopy addEvent:@"com.apple.setupassistant.ios.guessedCountry" withPayloadBlock:v8 persist:1];
  }

  return v6;
}

id __62__BYAnalyticsEventRecommendedLocale_initWithAnalyticsManager___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) userVisitedLocalePane])
  {
    v2 = [*(a1 + 32) eventPayload];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)eventPayload
{
  v11[3] = *MEMORY[0x1E69E9840];
  source = [(BYAnalyticsEventRecommendedLocale *)self source];
  if (source > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7D03DC0[source];
  }

  v11[0] = v4;
  v10[0] = @"source";
  v10[1] = @"durationOfWiFiScan";
  v5 = MEMORY[0x1E696AD98];
  [(BYAnalyticsEventRecommendedLocale *)self durationOfWiFiScan];
  v6 = [v5 numberWithDouble:?];
  v11[1] = v6;
  v10[2] = @"userSawRecommendedLocale";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BYAnalyticsEventRecommendedLocale userSawRecommendedLocale](self, "userSawRecommendedLocale")}];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end