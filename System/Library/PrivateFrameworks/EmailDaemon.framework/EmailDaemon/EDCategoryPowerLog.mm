@interface EDCategoryPowerLog
+ (void)logStartCategorizationWithReason:(int64_t)reason;
+ (void)logStopCategorizationWithReason:(int64_t)reason count:(unint64_t)count;
@end

@implementation EDCategoryPowerLog

+ (void)logStartCategorizationWithReason:(int64_t)reason
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (categoryPowerLogIdentifier_onceToken != -1)
  {
    +[EDCategoryPowerLog logStartCategorizationWithReason:];
  }

  v6[0] = @"eventType";
  v6[1] = @"reason";
  v7[0] = &unk_1F45E65F8;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  PPSSendTelemetry();
}

+ (void)logStopCategorizationWithReason:(int64_t)reason count:(unint64_t)count
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (categoryPowerLogIdentifier_onceToken != -1)
  {
    +[EDCategoryPowerLog logStartCategorizationWithReason:];
  }

  v10[0] = &unk_1F45E6610;
  v9[0] = @"eventType";
  v9[1] = @"reason";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
  v10[1] = v6;
  v9[2] = @"count";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v10[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  PPSSendTelemetry();
}

@end