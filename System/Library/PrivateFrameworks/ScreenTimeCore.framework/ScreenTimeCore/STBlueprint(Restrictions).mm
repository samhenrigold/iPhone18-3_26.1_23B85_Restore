@interface STBlueprint(Restrictions)
@end

@implementation STBlueprint(Restrictions)

+ (void)saveRestrictionsBlueprintWithValuesForPresetRestrictions:()Restrictions forUser:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "Saving restrictions blueprint from presets to organization: %@", v3, 0xCu);
}

+ (void)saveRestrictionsBlueprintWithValuesForPresetRestrictions:()Restrictions forUser:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "failed to serialize restrictions during save: %{public}@", v1, 0xCu);
}

@end