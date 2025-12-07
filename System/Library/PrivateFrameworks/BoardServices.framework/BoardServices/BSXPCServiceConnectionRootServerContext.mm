@interface BSXPCServiceConnectionRootServerContext
+ (void)uniqueServerContextWithEndpointDescription:(uint64_t)description;
@end

@implementation BSXPCServiceConnectionRootServerContext

+ (void)uniqueServerContextWithEndpointDescription:(uint64_t)description
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  v4 = v2;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(sel_uniqueServerContextWithEndpointDescription_);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v18 = v8;
      v19 = 2114;
      v20 = v10;
      v21 = 2048;
      v22 = v3;
      v23 = 2114;
      v24 = @"BSXPCServiceConnectionContext.m";
      v25 = 1024;
      v26 = 203;
      v27 = 2114;
      v28 = v7;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A860818);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(sel_uniqueServerContextWithEndpointDescription_);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = v3;
      v23 = 2114;
      v24 = @"BSXPCServiceConnectionContext.m";
      v25 = 1024;
      v26 = 203;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A86091CLL);
  }

  v5 = [(BSXPCServiceConnectionRootContext *)[BSXPCServiceConnectionRootServerContext alloc] _initWithType:v4 eDesc:?];

  return v5;
}

@end