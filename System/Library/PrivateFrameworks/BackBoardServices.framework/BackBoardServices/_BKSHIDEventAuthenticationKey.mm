@interface _BKSHIDEventAuthenticationKey
+ (void)eventAuthenticationKey;
- (uint64_t)_context;
@end

@implementation _BKSHIDEventAuthenticationKey

- (uint64_t)_context
{
  v20 = *MEMORY[0x1E69E9840];
  if (atomic_exchange((self + 400), 1u))
  {
    return self + 16;
  }

  if (![*(self + 8) length])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(sel__context);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138544642;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      v12 = 2048;
      selfCopy = self;
      v14 = 2114;
      v15 = @"_BKSHIDEventAuthenticationKey.m";
      v16 = 1024;
      v17 = 49;
      v18 = 2114;
      v19 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18634E1F4);
  }

  v2 = self + 16;
  CCHmacInit((self + 16), 2u, [*(self + 8) bytes], objc_msgSend(*(self + 8), "length"));
  return v2;
}

+ (void)eventAuthenticationKey
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  CCRandomGenerateBytes(bytes, 0x20uLL);
  v0 = [_BKSHIDEventAuthenticationKey alloc];
  if (v0)
  {
    v5.receiver = v0;
    v5.super_class = _BKSHIDEventAuthenticationKey;
    v1 = objc_msgSendSuper2(&v5, sel_init);
    if (v1)
    {
      v2 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      v3 = v1[1];
      v1[1] = v2;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

@end