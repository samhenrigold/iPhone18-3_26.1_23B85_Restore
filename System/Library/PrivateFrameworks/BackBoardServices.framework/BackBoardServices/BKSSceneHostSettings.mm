@interface BKSSceneHostSettings
+ (BKSSceneHostSettings)new;
- (BKSSceneHostSettings)init;
- (BKSSceneHostSettings)initWithCoder:(id)coder;
- (BKSSceneHostSettings)initWithIdentifier:(id)identifier touchBehavior:(int64_t)behavior;
- (BOOL)isEqual:(id)equal;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSSceneHostSettings

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __53__BKSSceneHostSettings_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
}

void __53__BKSSceneHostSettings_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:? withName:?];
  v2 = *(a1 + 32);
  v3 = NSStringFromBKSSceneHostTouchBehavior(*(*(a1 + 40) + 16));
  [v2 appendString:? withName:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
}

- (BKSSceneHostSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  [coderCopy decodeIntegerForKey:?];

  v6 = [BKSSceneHostSettings initWithIdentifier:"initWithIdentifier:touchBehavior:" touchBehavior:?];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    v8 = v9 && BSEqualObjects() && self->_touchBehavior == v9->_touchBehavior;
  }

  return v8;
}

- (BKSSceneHostSettings)initWithIdentifier:(id)identifier touchBehavior:(int64_t)behavior
{
  v50 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = MEMORY[0x1E696AEC0];
  v9 = objc_opt_class();
  if (!identifierCopy)
  {
    v15 = NSStringFromClass(v9);
    v16 = [v8 stringWithFormat:@"identifier", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v39 = v17;
      v40 = 2114;
      v41 = v19;
      v42 = 2048;
      selfCopy3 = self;
      v44 = 2114;
      v45 = @"BKSSceneHostSettings.m";
      v46 = 1024;
      v47 = 58;
      v48 = 2114;
      v49 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B77D0);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    classForCoder = [identifierCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v22 = NSStringFromClass(classForCoder);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"identifier", v22, v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(a2);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v39 = v26;
      v40 = 2114;
      v41 = v28;
      v42 = 2048;
      selfCopy3 = self;
      v44 = 2114;
      v45 = @"BKSSceneHostSettings.m";
      v46 = 1024;
      v47 = 58;
      v48 = 2114;
      v49 = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B7908);
  }

  if ((behavior - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"behavior == BKSSceneHostTouchBehaviorInactive || behavior == BKSSceneHostTouchBehaviorForeground"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v39 = v30;
      v40 = 2114;
      v41 = v32;
      v42 = 2048;
      selfCopy3 = self;
      v44 = 2114;
      v45 = @"BKSSceneHostSettings.m";
      v46 = 1024;
      v47 = 59;
      v48 = 2114;
      v49 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B79FCLL);
  }

  v37.receiver = self;
  v37.super_class = BKSSceneHostSettings;
  v10 = [(BKSSceneHostSettings *)&v37 init];
  if (v10)
  {
    v11 = objc_opt_class();
    if (v11 != objc_opt_class())
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v34 = NSStringFromSelector(a2);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138544642;
        v39 = v34;
        v40 = 2114;
        v41 = v36;
        v42 = 2048;
        selfCopy3 = v10;
        v44 = 2114;
        v45 = @"BKSSceneHostSettings.m";
        v46 = 1024;
        v47 = 63;
        v48 = 2114;
        v49 = v33;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v33 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B7AE4);
    }

    v12 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    v10->_touchBehavior = behavior;
  }

  return v10;
}

- (BKSSceneHostSettings)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSSceneHostSettings.m";
    v17 = 1024;
    v18 = 53;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSSceneHostSettings)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSSceneHostSettings.m";
    v17 = 1024;
    v18 = 48;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end