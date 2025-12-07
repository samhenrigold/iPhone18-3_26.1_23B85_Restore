@interface STCoreUser(UnmodeledInternal)
@end

@implementation STCoreUser(UnmodeledInternal)

- (void)setScreenTimeEnabled:()UnmodeledInternal .cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setScreenTimeEnabled:()UnmodeledInternal .cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)setContactsEditable:()UnmodeledInternal .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"YES";
  if ((a1 & 1) == 0)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "Failed to set contacts editable to %@: %{public}@", &v4, 0x16u);
}

- (void)setContactsEditable:()UnmodeledInternal .cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end