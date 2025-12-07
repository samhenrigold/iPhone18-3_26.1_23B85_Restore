@interface BKSMutableHIDEventKeyCommandsDispatchingPredicate
- (BKSMutableHIDEventKeyCommandsDispatchingPredicate)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDisplays:(id)displays;
- (void)setSenderDescriptors:(id)descriptors;
@end

@implementation BKSMutableHIDEventKeyCommandsDispatchingPredicate

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDEventKeyCommandsDispatchingPredicate allocWithZone:?];

  return [(BKSHIDEventKeyCommandsDispatchingPredicate *)v3 _initWithSenderDescriptors:?];
}

- (void)setSenderDescriptors:(id)descriptors
{
  v46 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (descriptorsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = MEMORY[0x1E696AEC0];
      classForCoder = [descriptorsCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v23 = NSStringFromClass(classForCoder);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v21 stringWithFormat:@"senderDescriptors", v23, v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v35 = v27;
        v36 = 2114;
        v37 = v29;
        v38 = 2048;
        selfCopy2 = self;
        v40 = 2114;
        v41 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v42 = 1024;
        v43 = 176;
        v44 = 2114;
        v45 = v26;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863955D0);
    }

    v6 = [MEMORY[0x1E695DFA8] set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = descriptorsCopy;
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v30 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:v7];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v18 = NSStringFromSelector(a2);
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              *buf = 138544642;
              v35 = v18;
              v36 = 2114;
              v37 = v20;
              v38 = 2048;
              selfCopy2 = self;
              v40 = 2114;
              v41 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
              v42 = 1024;
              v43 = 180;
              v44 = 2114;
              v45 = v17;
              _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v17 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x186395494);
          }

          v13 = [v12 copy];
          [v6 addObject:?];
        }

        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    v14 = [v6 copy];
    senderDescriptors = self->super._senderDescriptors;
    self->super._senderDescriptors = v14;
  }

  else
  {
    v16 = self->super._senderDescriptors;
    self->super._senderDescriptors = 0;
  }
}

- (void)setDisplays:(id)displays
{
  v32 = *MEMORY[0x1E69E9840];
  displaysCopy = displays;
  if (displaysCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = MEMORY[0x1E696AEC0];
      classForCoder = [displaysCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v8 = NSStringFromClass(classForCoder);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v6 stringWithFormat:@"displays", v8, v10];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v21 = v12;
        v22 = 2114;
        v23 = v14;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2114;
        v27 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v28 = 1024;
        v29 = 160;
        v30 = 2114;
        v31 = v11;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863957F8);
    }

    if ([displaysCopy bs_containsObjectPassingTest:?])
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:displaysCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138544642;
        v21 = v16;
        v22 = 2114;
        v23 = v18;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2114;
        v27 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v28 = 1024;
        v29 = 164;
        v30 = 2114;
        v31 = v15;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863958ECLL);
    }
  }

  v5 = [displaysCopy bs_map:?];
  [(BKSMutableHIDEventKeyCommandsDispatchingPredicate *)self setSenderDescriptors:?];
}

BKSMutableHIDEventSenderDescriptor *__65__BKSMutableHIDEventKeyCommandsDispatchingPredicate_setDisplays___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  [(BKSMutableHIDEventSenderDescriptor *)v3 setAssociatedDisplay:?];

  return v3;
}

BOOL __65__BKSMutableHIDEventKeyCommandsDispatchingPredicate_setDisplays___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BKSMutableHIDEventKeyCommandsDispatchingPredicate)init
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = 138544642;
      v13 = v9;
      v14 = 2114;
      v15 = v11;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
      v20 = 1024;
      v21 = 153;
      v22 = 2114;
      v23 = v8;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v12, 0x3Au);
    }

    [v8 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186395B28);
  }

  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self _initWithSenderDescriptors:?];

  return v6;
}

@end