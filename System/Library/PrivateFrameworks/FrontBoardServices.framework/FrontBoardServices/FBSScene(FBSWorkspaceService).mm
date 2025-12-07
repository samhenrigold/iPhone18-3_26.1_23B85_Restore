@interface FBSScene(FBSWorkspaceService)
@end

@implementation FBSScene(FBSWorkspaceService)

- (void)activateWithCompletion:()FBSWorkspaceService .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot configure parameters after activation"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    LODWORD(v12) = 138544642;
    *(&v12 + 4) = a1;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, DWORD2(v12));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

@end