@interface STBlueprint(AlwaysAllow)
@end

@implementation STBlueprint(AlwaysAllow)

+ (void)alwaysAllowBundleIdentifiersForUser:()AlwaysAllow error:.cold.4(void *a1)
{
  v1 = [a1 appleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_1B831F000, v2, v3, "Always allow list does not have a configuration for user: %{public}@", v4, v5, v6, v7);
}

+ (void)alwaysAllowBundleIdentifiersForUser:()AlwaysAllow error:.cold.5(void *a1)
{
  v1 = [a1 appleID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_2(&dword_1B831F000, v2, v3, "User does not have an always allow list: %{public}@", v4, v5, v6, v7);
}

@end