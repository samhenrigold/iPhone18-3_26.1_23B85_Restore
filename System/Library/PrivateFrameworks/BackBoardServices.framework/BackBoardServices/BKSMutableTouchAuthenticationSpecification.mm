@interface BKSMutableTouchAuthenticationSpecification
- (void)setDisplays:(id)displays;
@end

@implementation BKSMutableTouchAuthenticationSpecification

- (void)setDisplays:(id)displays
{
  v60 = *MEMORY[0x1E69E9840];
  displaysCopy = displays;
  if (displaysCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v35 = MEMORY[0x1E696AEC0];
      classForCoder = [displaysCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v37 = NSStringFromClass(classForCoder);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [v35 stringWithFormat:@"displays", v37, v39];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(a2);
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138544642;
        v49 = v41;
        v50 = 2114;
        v51 = v43;
        v52 = 2048;
        selfCopy3 = self;
        v54 = 2114;
        v55 = @"BKSTouchAuthenticationSpecification.m";
        v56 = 1024;
        v57 = 298;
        v58 = 2114;
        v59 = v40;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v40 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186382748);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = displaysCopy;
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v45;
    do
    {
      v10 = 0;
      do
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v44 + 1) + 8 * v10);
        if (!v11)
        {
          v19 = MEMORY[0x1E696AEC0];
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = [v19 stringWithFormat:@"display", v21];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v23 = NSStringFromSelector(a2);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138544642;
            v49 = v23;
            v50 = 2114;
            v51 = v25;
            v52 = 2048;
            selfCopy3 = self;
            v54 = 2114;
            v55 = @"BKSTouchAuthenticationSpecification.m";
            v56 = 1024;
            v57 = 301;
            v58 = 2114;
            v59 = v22;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v22 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x1863824D0);
        }

        v12 = v11;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = MEMORY[0x1E696AEC0];
          classForCoder2 = [v12 classForCoder];
          if (!classForCoder2)
          {
            classForCoder2 = objc_opt_class();
          }

          v28 = NSStringFromClass(classForCoder2);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [v26 stringWithFormat:@"display", v28, v30];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v32 = NSStringFromSelector(a2);
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            *buf = 138544642;
            v49 = v32;
            v50 = 2114;
            v51 = v34;
            v52 = 2048;
            selfCopy3 = self;
            v54 = 2114;
            v55 = @"BKSTouchAuthenticationSpecification.m";
            v56 = 1024;
            v57 = 301;
            v58 = 2114;
            v59 = v31;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v31 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x18638260CLL);
        }

        v10 = (v10 + 1);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v13 = objc_opt_class();
  v14 = v6;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [v16 copy];
  displays = self->super._displays;
  self->super._displays = v17;
}

@end