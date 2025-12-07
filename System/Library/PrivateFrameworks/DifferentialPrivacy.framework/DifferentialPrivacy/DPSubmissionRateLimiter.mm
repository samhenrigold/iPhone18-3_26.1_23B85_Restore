@interface DPSubmissionRateLimiter
@end

@implementation DPSubmissionRateLimiter

void __42___DPSubmissionRateLimiter_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = +[_DPSubmissionRateLimiter rateLimitsFromBudgetProperties];
  v2 = [objc_alloc(*(a1 + 32)) initWithLimits:v4];
  v3 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v2;
}

void __41___DPSubmissionRateLimiter_debit_forKey___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() budgetNameForKey:*(a1 + 40)];
  if (v2)
  {
    v22 = v2;
    v3 = [*(a1 + 32) limitDictionary];
    v4 = [v3 objectForKeyedSubscript:v22];

    v5 = [v4 objectForKeyedSubscript:@"interval"];
    v6 = [v5 unsignedIntegerValue];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"chunks_amount"];
      v8 = [v7 unsignedIntegerValue];

      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = [v4 objectForKeyedSubscript:@"refill_amount"];
      v11 = [v10 unsignedIntegerValue];

      v12 = [v4 objectForKeyedSubscript:@"limit"];
      v13 = [v12 unsignedIntegerValue];

      v14 = [v4 objectForKeyedSubscript:@"checkpoint"];
      v15 = [MEMORY[0x277CBEAA8] date];
      [v15 timeIntervalSinceDate:v14];
      v17 = v16 / v6;

      v18 = v13 + v11 * v9 * v17;
      v19 = [v14 dateByAddingTimeInterval:(v17 * v6)];

      v20 = *(a1 + 56);
      if (v20 >= v18)
      {
        v20 = v18;
      }

      *(*(*(a1 + 48) + 8) + 24) = v20;
      [v4 setObject:v19 forKeyedSubscript:@"checkpoint"];
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18 - *(*(*(a1 + 48) + 8) + 24)];
      [v4 setObject:v21 forKeyedSubscript:@"limit"];
    }

    v2 = v22;
  }
}

void __42___DPSubmissionRateLimiter_credit_amount___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() budgetNameForKey:*(a1 + 40)];
  if (v2)
  {
    v8 = v2;
    v3 = [*(a1 + 32) limitDictionary];
    v4 = [v3 objectForKeyedSubscript:v8];

    v5 = MEMORY[0x277CCABB0];
    v6 = [v4 objectForKeyedSubscript:@"limit"];
    v7 = [v5 numberWithUnsignedInteger:{*(a1 + 48) + objc_msgSend(v6, "unsignedIntegerValue")}];
    [v4 setObject:v7 forKeyedSubscript:@"limit"];

    v2 = v8;
  }
}

@end