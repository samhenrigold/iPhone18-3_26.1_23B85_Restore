@interface BKSMutableHIDEventDiscreteDispatchingPredicate
+ (id)defaultFocusPredicate;
+ (id)defaultSystemPredicate;
- (BKSMutableHIDEventDiscreteDispatchingPredicate)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDescriptors:(id)descriptors;
- (void)setDisplays:(id)displays;
- (void)setSenderDescriptors:(id)descriptors;
@end

@implementation BKSMutableHIDEventDiscreteDispatchingPredicate

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDEventDiscreteDispatchingPredicate allocWithZone:?];

  return [BKSHIDEventDiscreteDispatchingPredicate _initWithSourceDescriptors:v3 descriptors:"_initWithSourceDescriptors:descriptors:"];
}

- (void)setDescriptors:(id)descriptors
{
  v40 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (!descriptorsCopy)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"descriptors", v9];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v29 = v11;
      v30 = 2114;
      v31 = v13;
      v32 = 2048;
      selfCopy3 = self;
      v34 = 2114;
      v35 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v36 = 1024;
      v37 = 256;
      v38 = 2114;
      v39 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639C0D8);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [descriptorsCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"descriptors", v16, v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v29 = v20;
      v30 = 2114;
      v31 = v22;
      v32 = 2048;
      selfCopy3 = self;
      v34 = 2114;
      v35 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v36 = 1024;
      v37 = 256;
      v38 = 2114;
      v39 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639C214);
  }

  if ([descriptorsCopy bs_containsObjectPassingTest:?])
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:descriptorsCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v29 = v24;
      v30 = 2114;
      v31 = v26;
      v32 = 2048;
      selfCopy3 = self;
      v34 = 2114;
      v35 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v36 = 1024;
      v37 = 260;
      v38 = 2114;
      v39 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639C308);
  }

  v5 = [descriptorsCopy copy];
  descriptors = self->super._descriptors;
  self->super._descriptors = v5;
}

BOOL __65__BKSMutableHIDEventDiscreteDispatchingPredicate_setDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)setSenderDescriptors:(id)descriptors
{
  v40 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  if (descriptorsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v19 = MEMORY[0x1E696AEC0];
      classForCoder = [descriptorsCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v21 = NSStringFromClass(classForCoder);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v19 stringWithFormat:@"senderDescriptors", v21, v23];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(a2);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 138544642;
        v29 = v25;
        v30 = 2114;
        v31 = v27;
        v32 = 2048;
        selfCopy2 = self;
        v34 = 2114;
        v35 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v36 = 1024;
        v37 = 239;
        v38 = 2114;
        v39 = v24;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639C720);
    }

    v6 = [MEMORY[0x1E695DFA8] set];
    v7 = descriptorsCopy;
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v7);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v7];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = NSStringFromSelector(a2);
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = 138544642;
              v29 = v16;
              v30 = 2114;
              v31 = v18;
              v32 = 2048;
              selfCopy2 = self;
              v34 = 2114;
              v35 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
              v36 = 1024;
              v37 = 243;
              v38 = 2114;
              v39 = v15;
              _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            [v15 UTF8String];
            _bs_set_crash_log_message();
            __break(0);
            JUMPOUT(0x18639C5E4);
          }

          [v6 addObject:?];
        }

        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    v12 = [v6 copy];
    senderDescriptors = self->super._senderDescriptors;
    self->super._senderDescriptors = v12;
  }

  else
  {
    v14 = self->super._senderDescriptors;
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
        v27 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v28 = 1024;
        v29 = 223;
        v30 = 2114;
        v31 = v11;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639C948);
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
        v27 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v28 = 1024;
        v29 = 227;
        v30 = 2114;
        v31 = v15;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639CA3CLL);
    }
  }

  v5 = [displaysCopy bs_map:?];
  [(BKSMutableHIDEventDiscreteDispatchingPredicate *)self setSenderDescriptors:?];
}

void *__62__BKSMutableHIDEventDiscreteDispatchingPredicate_setDisplays___block_invoke_150(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(BKSMutableHIDEventSenderDescriptor);
  [(BKSMutableHIDEventSenderDescriptor *)v3 setAssociatedDisplay:?];

  v4 = [(BKSMutableHIDEventSenderDescriptor *)v3 copy];

  return v4;
}

BOOL __62__BKSMutableHIDEventDiscreteDispatchingPredicate_setDisplays___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (BKSMutableHIDEventDiscreteDispatchingPredicate)init
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
      v21 = 1024;
      v22 = 217;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18639CCA0);
  }

  v5 = [MEMORY[0x1E695DFD8] set];
  v6 = [MEMORY[0x1E695DFD8] set];
  v7 = [BKSHIDEventDiscreteDispatchingPredicate _initWithSourceDescriptors:"_initWithSourceDescriptors:descriptors:" descriptors:?];

  return v7;
}

+ (id)defaultFocusPredicate
{
  if (defaultFocusPredicate_onceToken != -1)
  {
    dispatch_once(&defaultFocusPredicate_onceToken, &__block_literal_global_171);
  }

  v2 = [defaultFocusPredicate___defaultFocusPredicate mutableCopy];

  return v2;
}

void __71__BKSMutableHIDEventDiscreteDispatchingPredicate_defaultFocusPredicate__block_invoke()
{
  v22 = [MEMORY[0x1E695DFA8] set];
  v0 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v22 addObject:?];

  v1 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v22 addObject:?];

  v2 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v22 addObject:?];

  v3 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v22 addObject:?];

  v4 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v22 addObject:?];

  v5 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v6 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v7 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v8 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v9 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v10 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v11 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v12 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v13 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v22 addObject:?];

  v14 = [BKSHIDEventUsagePairDescriptor descriptorForHIDEventType:"descriptorForHIDEventType:page:usage:" page:? usage:?];
  [v22 addObject:?];

  v15 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:?];
  [v22 addObject:?];

  v16 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:?];
  [v22 addObject:?];

  v17 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v22 addObject:?];

  v18 = [BKSHIDEventDiscreteDispatchingPredicate alloc];
  v19 = [MEMORY[0x1E695DFD8] set];
  v20 = [BKSHIDEventDiscreteDispatchingPredicate _initWithSourceDescriptors:v18 descriptors:"_initWithSourceDescriptors:descriptors:"];
  v21 = defaultFocusPredicate___defaultFocusPredicate;
  defaultFocusPredicate___defaultFocusPredicate = v20;
}

+ (id)defaultSystemPredicate
{
  if (defaultSystemPredicate_onceToken != -1)
  {
    dispatch_once(&defaultSystemPredicate_onceToken, &__block_literal_global_167);
  }

  v2 = [defaultSystemPredicate___defaultSystemPredicate mutableCopy];

  return v2;
}

void __72__BKSMutableHIDEventDiscreteDispatchingPredicate_defaultSystemPredicate__block_invoke()
{
  v76 = [MEMORY[0x1E695DFA8] set];
  v0 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v1 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v2 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v3 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v4 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v5 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v6 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v7 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v8 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v9 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v10 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v11 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v12 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v13 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v14 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v15 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v16 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v17 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v18 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v19 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v20 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v21 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v22 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v23 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v24 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v25 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v26 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v27 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v28 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v29 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v30 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v31 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v32 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v33 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v34 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v35 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v36 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v37 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v38 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v39 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v40 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v41 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v42 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v43 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v44 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v45 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v46 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v47 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v48 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v49 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v50 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v51 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v52 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v53 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v54 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v55 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v56 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v57 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v58 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v59 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v60 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v61 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v62 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v63 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v64 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v65 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v66 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v67 = [BKSHIDEventKeyboardDescriptor descriptorWithPage:"descriptorWithPage:usage:" usage:?];
  [v76 addObject:?];

  v68 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v76 addObject:?];

  v69 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:?];
  [v76 addObject:?];

  v70 = [BKSHIDEventBiometricDescriptor descriptorWithBiometricEventType:?];
  [v76 addObject:?];

  v71 = [BKSHIDEventDescriptor descriptorWithEventType:?];
  [v76 addObject:?];

  v72 = [BKSHIDEventDiscreteDispatchingPredicate alloc];
  v73 = [MEMORY[0x1E695DFD8] set];
  v74 = [BKSHIDEventDiscreteDispatchingPredicate _initWithSourceDescriptors:v72 descriptors:"_initWithSourceDescriptors:descriptors:"];
  v75 = defaultSystemPredicate___defaultSystemPredicate;
  defaultSystemPredicate___defaultSystemPredicate = v74;
}

@end