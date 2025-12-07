@interface BKSSimplerAssertion
+ (id)assertionWithDescription:(id)description invalidationBlock:(id)block;
+ (id)new;
- (BKSSimplerAssertion)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKSSimplerAssertion

- (void)invalidate
{
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    (*(self->_invalidationBlock + 2))();
    invalidationBlock = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_invalid._Value, 1u) & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class(), self, self->_identifier];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKSSimplerAssertion.m";
      v17 = 1024;
      v18 = 58;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186388D50);
  }

  v8.receiver = self;
  v8.super_class = BKSSimplerAssertion;
  [(BKSSimplerAssertion *)&v8 dealloc];
}

- (BKSSimplerAssertion)init
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
    v16 = @"BKSSimplerAssertion.m";
    v17 = 1024;
    v18 = 36;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)assertionWithDescription:(id)description invalidationBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  descriptionCopy = description;
  v7 = [BKSSimplerAssertion alloc];
  v8 = descriptionCopy;
  v9 = blockCopy;
  if (v7)
  {
    v34.receiver = v7;
    v34.super_class = BKSSimplerAssertion;
    v7 = objc_msgSendSuper2(&v34, sel_init);
    if (v7)
    {
      v10 = v8;
      v11 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v12 = objc_opt_class();
      if (!v10)
      {
        v16 = NSStringFromClass(v12);
        v17 = [v11 stringWithFormat:@"string", v16];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromSelector(sel__initWithIdentifier_invalidationBlock_);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138544642;
          v36 = v18;
          v37 = 2114;
          v38 = v20;
          v39 = 2048;
          v40 = v7;
          v41 = 2114;
          v42 = @"BKSSimplerAssertion.m";
          v43 = 1024;
          v44 = 43;
          v45 = 2114;
          v46 = v17;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v17 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863890B0);
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v21 = MEMORY[0x1E696AEC0];
        classForCoder = [v10 classForCoder];
        if (!classForCoder)
        {
          classForCoder = objc_opt_class();
        }

        v23 = NSStringFromClass(classForCoder);
        objc_opt_class();
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = [v21 stringWithFormat:@"string", v23, v25];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v27 = NSStringFromSelector(sel__initWithIdentifier_invalidationBlock_);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          *buf = 138544642;
          v36 = v27;
          v37 = 2114;
          v38 = v29;
          v39 = 2048;
          v40 = v7;
          v41 = 2114;
          v42 = @"BKSSimplerAssertion.m";
          v43 = 1024;
          v44 = 43;
          v45 = 2114;
          v46 = v26;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v26 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863891ECLL);
      }

      if (!v9)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"block != ((void *)0)"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v31 = NSStringFromSelector(sel__initWithIdentifier_invalidationBlock_);
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138544642;
          v36 = v31;
          v37 = 2114;
          v38 = v33;
          v39 = 2048;
          v40 = v7;
          v41 = 2114;
          v42 = @"BKSSimplerAssertion.m";
          v43 = 1024;
          v44 = 44;
          v45 = 2114;
          v46 = v30;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v30 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x1863892E0);
      }

      objc_storeStrong(&v7->_identifier, description);
      v13 = [v9 copy];
      invalidationBlock = v7->_invalidationBlock;
      v7->_invalidationBlock = v13;
    }
  }

  return v7;
}

+ (id)new
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
    v16 = @"BKSSimplerAssertion.m";
    v17 = 1024;
    v18 = 31;
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