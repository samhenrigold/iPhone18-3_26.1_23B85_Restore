@interface BKSMutableHIDEventSenderDescriptor
+ (id)new;
- (BKSMutableHIDEventSenderDescriptor)init;
- (void)setAssociatedDisplay:(id)display;
- (void)setPrimaryPage:(unsigned int)page primaryUsage:(unsigned int)usage;
@end

@implementation BKSMutableHIDEventSenderDescriptor

- (BKSMutableHIDEventSenderDescriptor)init
{
  v3.receiver = self;
  v3.super_class = BKSMutableHIDEventSenderDescriptor;
  return [(BKSHIDEventSenderDescriptor *)&v3 _initWithHardwareType:0 associatedDisplay:0 authenticated:0 primaryPage:0 primaryUsage:0 senderID:0];
}

- (void)setPrimaryPage:(unsigned int)page primaryUsage:(unsigned int)usage
{
  v22 = *MEMORY[0x1E69E9840];
  if (!page && usage)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"primaryPage != 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKSHIDEventSenderDescriptor.m";
      v18 = 1024;
      v19 = 440;
      v20 = 2114;
      v21 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B31ACLL);
  }

  self->super._primaryPage = page;
  self->super._primaryUsage = usage;
}

- (void)setAssociatedDisplay:(id)display
{
  v28 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  if (displayCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x1E696AEC0];
      classForCoder = [(BKSHIDEventDisplay *)displayCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v9 = NSStringFromClass(classForCoder);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v7 stringWithFormat:@"associatedDisplay", v9, v11];

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
        v23 = @"BKSHIDEventSenderDescriptor.m";
        v24 = 1024;
        v25 = 432;
        v26 = 2114;
        v27 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B3398);
    }
  }

  associatedDisplay = self->super._associatedDisplay;
  self->super._associatedDisplay = displayCopy;
}

+ (id)new
{
  v2 = [self alloc];

  return [v2 _initWithHardwareType:? associatedDisplay:? authenticated:? primaryPage:? primaryUsage:? senderID:?];
}

@end