@interface SBMutableKeyboardFocusCoalitionPreferences
- (void)setLockReasons:(id)reasons;
- (void)setPolicy:(id)policy;
@end

@implementation SBMutableKeyboardFocusCoalitionPreferences

- (void)setPolicy:(id)policy
{
  policyCopy = policy;
  if (!policyCopy)
  {
    [(SBMutableKeyboardFocusCoalitionPreferences *)a2 setPolicy:?];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBMutableKeyboardFocusCoalitionPreferences *)policyCopy setPolicy:a2, self];
  }

  v5 = [policyCopy copy];
  policy = self->super._policy;
  self->super._policy = v5;
}

- (void)setLockReasons:(id)reasons
{
  reasonsCopy = reasons;
  if (reasonsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(SBMutableKeyboardFocusCoalitionPreferences *)reasonsCopy setLockReasons:a2, self];
    }
  }

  v5 = [reasonsCopy copy];
  lockReasons = self->super._lockReasons;
  self->super._lockReasons = v5;
}

- (void)setPolicy:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"policy", v6, v8];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    OUTLINED_FUNCTION_9_0();
    v16 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v17 = 1024;
    v18 = 152;
    v19 = v13;
    v20 = v9;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setPolicy:(const char *)a1 .cold.2(const char *a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"policy", v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = NSStringFromSelector(a1);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544642;
    v13 = v8;
    v14 = 2114;
    v15 = v10;
    v16 = 2048;
    v17 = a2;
    v18 = 2114;
    v19 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v20 = 1024;
    v21 = 152;
    v22 = 2114;
    v23 = v7;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v11, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12);
  }

  [v7 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setLockReasons:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 classForCoder];
  if (!v5)
  {
    v5 = objc_opt_class();
  }

  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v4 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"lockReasons", v6, v8];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = NSStringFromSelector(a2);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    OUTLINED_FUNCTION_9_0();
    v16 = @"SBKeyboardFocusCoalitionMemberPreferences.m";
    v17 = 1024;
    v18 = 158;
    v19 = v13;
    v20 = v9;
    OUTLINED_FUNCTION_0(&dword_21ED4E000, MEMORY[0x277D86220], v14, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v15);
  }

  [v9 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end