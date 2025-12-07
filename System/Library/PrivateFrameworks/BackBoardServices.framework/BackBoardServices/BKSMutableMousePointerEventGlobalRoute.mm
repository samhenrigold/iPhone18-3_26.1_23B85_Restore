@interface BKSMutableMousePointerEventGlobalRoute
- (void)setOptions:(id)options;
@end

@implementation BKSMutableMousePointerEventGlobalRoute

- (void)setOptions:(id)options
{
  v28 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  if (optionsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [(BKSMousePointerGlobalContextOptions *)optionsCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"options", v9, v11];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v17 = v13;
        v18 = 2114;
        v19 = v15;
        v20 = 2048;
        selfCopy = self;
        v22 = 2114;
        v23 = @"BKSMousePointerEventGlobalRoute.m";
        v24 = 1024;
        v25 = 160;
        v26 = 2114;
        v27 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639359CLL);
    }
  }

  options = self->super._options;
  self->super._options = optionsCopy;
}

@end