@interface NSXPCConnection(BSNSXPCMessageSession)
- (id)externalMessageSessionController;
@end

@implementation NSXPCConnection(BSNSXPCMessageSession)

- (id)externalMessageSessionController
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_getAssociatedObject(self, "BSNSXPCTransport");
    if (!v2)
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v4 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"transport", v6];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(sel__BSNSXPCTransport);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        *buf = 138544642;
        v23 = v8;
        v24 = 2114;
        v25 = v10;
        v26 = 2048;
        selfCopy2 = self;
        v28 = 2114;
        v29 = @"BSNSXPCTransport.m";
        v30 = 1024;
        v31 = 856;
        v32 = 2114;
        v33 = v7;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v11 = v7;
      [v7 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83E9F4);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = MEMORY[0x1E696AEC0];
      classForCoder = [v2 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v14 = NSStringFromClass(classForCoder);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = [v12 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"transport", v14, v16];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(sel__BSNSXPCTransport);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v23 = v18;
        v24 = 2114;
        v25 = v20;
        v26 = 2048;
        selfCopy2 = self;
        v28 = 2114;
        v29 = @"BSNSXPCTransport.m";
        v30 = 1024;
        v31 = 856;
        v32 = 2114;
        v33 = v17;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v21 = v17;
      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A83EB3CLL);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end