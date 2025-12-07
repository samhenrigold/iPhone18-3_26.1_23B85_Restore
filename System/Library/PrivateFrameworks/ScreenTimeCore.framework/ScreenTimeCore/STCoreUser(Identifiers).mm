@interface STCoreUser(Identifiers)
@end

@implementation STCoreUser(Identifiers)

- (void)validateForUpdate:()Identifiers .cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForUpdate:()Identifiers .cold.2(void *a1)
{
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for update on CoreUser failed for %{public}s user, with error: %{public}@", v4, v5, v6, v7);
}

- (void)validateForInsert:()Identifiers .cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForInsert:()Identifiers .cold.2(void *a1)
{
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Insert on CoreUser failed for %{public}s user with error: %{public}@", v4, v5, v6, v7);
}

- (void)validateForDelete:()Identifiers .cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)validateForDelete:()Identifiers .cold.2(void *a1)
{
  v1 = [a1 localUserDeviceState];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_1(&dword_1B831F000, v2, v3, "%{public}s Validate for Delete on CoreUser failed for %{public}s user failed with error: %{public}@", v4, v5, v6, v7);
}

@end