@interface FBSSettings(FBSSceneExtension)
@end

@implementation FBSSettings(FBSSceneExtension)

- (void)valueForProperty:()FBSSceneExtension expectedClass:.cold.1(const char *a1)
{
  v6 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)valueForProperty:()FBSSceneExtension expectedClass:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"clazz != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end