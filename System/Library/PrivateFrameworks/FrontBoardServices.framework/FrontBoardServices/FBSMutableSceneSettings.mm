@interface FBSMutableSceneSettings
- (id)ignoreOcclusionReasons;
- (void)addPropagatedProperty:(SEL)property;
- (void)addPropagatedSetting:(id)setting;
- (void)addPropagatedSettings:(id)settings;
- (void)removePropagatedProperty:(SEL)property;
- (void)removePropagatedSetting:(id)setting;
- (void)removePropagatedSettings:(id)settings;
@end

@implementation FBSMutableSceneSettings

- (id)ignoreOcclusionReasons
{
  ignoreOcclusionReasons = self->super._ignoreOcclusionReasons;
  if (!ignoreOcclusionReasons)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = self->super._ignoreOcclusionReasons;
    self->super._ignoreOcclusionReasons = v4;

    ignoreOcclusionReasons = self->super._ignoreOcclusionReasons;
  }

  return ignoreOcclusionReasons;
}

- (void)addPropagatedProperty:(SEL)property
{
  v6 = objc_opt_class();
  v7 = FBSSettingForSelector(v6, property);
  if (!v7)
  {
    [(FBSMutableSceneSettings *)property addPropagatedProperty:a2, self];
  }

  v8 = v7;
  [(FBSMutableSceneSettings *)self addPropagatedSetting:v7];
}

- (void)removePropagatedProperty:(SEL)property
{
  v6 = objc_opt_class();
  v7 = FBSSettingForSelector(v6, property);
  if (!v7)
  {
    [(FBSMutableSceneSettings *)property removePropagatedProperty:a2, self];
  }

  v8 = v7;
  [(FBSMutableSceneSettings *)self removePropagatedSetting:v7];
}

- (void)addPropagatedSetting:(id)setting
{
  settingCopy = setting;
  if (!settingCopy)
  {
    [FBSMutableSceneSettings addPropagatedSetting:a2];
  }

  v7 = settingCopy;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:settingCopy];
  [(FBSMutableSceneSettings *)self addPropagatedSettings:v6];
}

- (void)removePropagatedSetting:(id)setting
{
  settingCopy = setting;
  if (!settingCopy)
  {
    [FBSMutableSceneSettings removePropagatedSetting:a2];
  }

  v7 = settingCopy;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:settingCopy];
  [(FBSMutableSceneSettings *)self removePropagatedSettings:v6];
}

- (void)addPropagatedSettings:(id)settings
{
  v23 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if ([settingsCopy count])
  {
    v15 = a2;
    v6 = [(FBSSettings *)self valueForProperty:sel_propagatedSettings expectedClass:objc_opt_class()];
    if (!v6)
    {
      v6 = objc_opt_new();
      [(FBSSettings *)self setValue:v6 forProperty:sel_propagatedSettings, a2];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = settingsCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          NSClassFromString(&cfstr_Fbssetting.isa);
          if (!v12)
          {
            [FBSMutableSceneSettings addPropagatedSettings:v15];
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [FBSMutableSceneSettings addPropagatedSettings:v15];
          }

          isLocal = [(FBSSetting *)v12 isLocal];
          if (isLocal)
          {
            name = FBLogCommon(isLocal);
            if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
            {
              [(FBSMutableSceneSettings *)v20 addPropagatedSettings:v12, &v21, name];
            }
          }

          else
          {
            name = [(FBSSetting *)v12 name];
            [v6 setObject:v12 forKey:name];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (void)removePropagatedSettings:(id)settings
{
  v19 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if ([settingsCopy count])
  {
    v6 = [(FBSSettings *)self valueForProperty:sel_propagatedSettings expectedClass:objc_opt_class()];
    if (v6)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = settingsCopy;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v14 + 1) + 8 * i);
            NSClassFromString(&cfstr_Fbssetting.isa);
            if (!v12)
            {
              [FBSMutableSceneSettings removePropagatedSettings:a2];
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [FBSMutableSceneSettings removePropagatedSettings:a2];
            }

            name = [(FBSSetting *)v12 name];
            [v6 setObject:0 forKey:{name, v14}];
          }

          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)addPropagatedProperty:(uint64_t)a3 .cold.1(const char *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a1);
  v6 = [v4 stringWithFormat:@"no setting for %@", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (void)removePropagatedProperty:(uint64_t)a3 .cold.1(const char *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a1);
  v6 = [v4 stringWithFormat:@"no setting for %@", v5];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
}

- (void)addPropagatedSetting:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"setting != ((void *)0)"];
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

- (void)removePropagatedSetting:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"setting != ((void *)0)"];
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

- (void)addPropagatedSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSettingClass]"];
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

- (void)addPropagatedSettings:(void *)a3 .cold.2(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = [(FBSSetting *)a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1A2DBB000, a4, OS_LOG_TYPE_ERROR, "cannot propagate local setting %@", a1, 0xCu);
}

- (void)addPropagatedSettings:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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

- (void)removePropagatedSettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:FBSSettingClass]"];
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

- (void)removePropagatedSettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
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