@interface FBScene(UIApp)
- (void)uiClientSettings;
- (void)uiSettings;
@end

@implementation FBScene(UIApp)

- (void)uiSettings
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"settings is of an unexpected class : %@", self];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)uiClientSettings
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientSettings is of an unexpected class : %@", self];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end