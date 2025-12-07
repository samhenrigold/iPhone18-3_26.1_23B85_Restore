@interface STBlueprint(UsageLimit)
@end

@implementation STBlueprint(UsageLimit)

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"STBlueprint+UsageLimit.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"hasBundleIdentifiers || hasWebDomains || hasCategoryIdentifiers"}];
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.2()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch always allow blueprint: %{public}@", v2, v3, v4, v5);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1B831F000, log, OS_LOG_TYPE_FAULT, "Fetched more than one always allow blueprint for user: %{public}@", buf, 0xCu);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1B831F000, log, OS_LOG_TYPE_FAULT, "Fetched more than one always allow blueprint configuration for user: %{public}@", buf, 0xCu);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.5()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to deserialize always allow declaration: %{public}@", v2, v3, v4, v5);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.6(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Always allow blueprint has no configuration for user: %{public}@", buf, 0xCu);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.7()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch existing usage limit blueprints: %{public}@", v2, v3, v4, v5);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.9()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to serialize declaration: %{public}@", v2, v3, v4, v5);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.11()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to save changes: %{public}@", v2, v3, v4, v5);
}

+ (void)saveUsageLimitWithIdentifier:()UsageLimit user:bundleIdentifiers:webDomains:categoryIdentifiers:dailyBudgetLimit:budgetLimitByWeekday:enabled:behaviorType:error:.cold.13()
{
  OUTLINED_FUNCTION_0_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to deserialize declaration: %{public}@", v2, v3, v4, v5);
}

@end