@interface _BKSHIDKeyboardDeviceClientProxy
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (_BKSHIDKeyboardDeviceClientProxy)initWithDevice:(id)device lifetimeAssertion:(id)assertion;
- (void)dealloc;
@end

@implementation _BKSHIDKeyboardDeviceClientProxy

- (NSString)debugDescription
{
  v2 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v4 = [v2 descriptionForRootObject:? withStyle:?];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v8 = v7;

  if (v8)
  {
    v9 = [(BKSHIDKeyboardDevice *)self->_device isEqual:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_lifetimeAssertion invalidate];
  v3.receiver = self;
  v3.super_class = _BKSHIDKeyboardDeviceClientProxy;
  [(_BKSHIDKeyboardDeviceClientProxy *)&v3 dealloc];
}

- (_BKSHIDKeyboardDeviceClientProxy)initWithDevice:(id)device lifetimeAssertion:(id)assertion
{
  v47 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  assertionCopy = assertion;
  v34.receiver = self;
  v34.super_class = _BKSHIDKeyboardDeviceClientProxy;
  v10 = [(_BKSHIDKeyboardDeviceClientProxy *)&v34 init];
  if (v10)
  {
    v11 = deviceCopy;
    if (!v11)
    {
      v14 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v14 stringWithFormat:@"device", v16];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v36 = v18;
        v37 = 2114;
        v38 = v20;
        v39 = 2048;
        v40 = v10;
        v41 = 2114;
        v42 = @"BKSHIDKeyboardService.m";
        v43 = 1024;
        v44 = 51;
        v45 = 2114;
        v46 = v17;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863543C4);
    }

    v12 = v11;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = MEMORY[0x1E696AEC0];
      classForCoder = [v12 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v23 = NSStringFromClass(classForCoder);
      objc_opt_class();
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = [v21 stringWithFormat:@"device", v23, v25];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v36 = v27;
        v37 = 2114;
        v38 = v29;
        v39 = 2048;
        v40 = v10;
        v41 = 2114;
        v42 = @"BKSHIDKeyboardService.m";
        v43 = 1024;
        v44 = 51;
        v45 = 2114;
        v46 = v26;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186354504);
    }

    if (!assertionCopy)
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"assertion != ((void *)0)"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138544642;
        v36 = v31;
        v37 = 2114;
        v38 = v33;
        v39 = 2048;
        v40 = v10;
        v41 = 2114;
        v42 = @"BKSHIDKeyboardService.m";
        v43 = 1024;
        v44 = 52;
        v45 = 2114;
        v46 = v30;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v30 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863545FCLL);
    }

    objc_storeStrong(&v10->_device, device);
    objc_storeStrong(&v10->_lifetimeAssertion, assertion);
  }

  return v10;
}

@end