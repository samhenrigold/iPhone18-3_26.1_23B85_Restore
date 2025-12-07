@interface BSXPCServiceConnectionActivationMessage
- (id)initWithMessage:(void *)message;
- (void)dealloc;
- (void)invalidate;
- (void)sendIfNecessary;
@end

@implementation BSXPCServiceConnectionActivationMessage

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if ((BSAtomicGetFlag() & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must be sent or invalidated before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BSXPCServiceConnection.m";
      v18 = 1024;
      v19 = 1526;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82675CLL);
  }

  v9.receiver = self;
  v9.super_class = BSXPCServiceConnectionActivationMessage;
  [(BSXPCServiceConnectionActivationMessage *)&v9 dealloc];
}

- (void)sendIfNecessary
{
  if (BSAtomicSetFlag())
  {
    [(BSXPCServiceConnectionMessage *)self->_message send];
    message = self->_message;
    self->_message = 0;
  }
}

- (void)invalidate
{
  if (BSAtomicSetFlag())
  {
    [(BSXPCServiceConnectionMessage *)self->_message invalidate];
    message = self->_message;
    self->_message = 0;
  }
}

- (id)initWithMessage:(void *)message
{
  if (!message)
  {
    return 0;
  }

  v6.receiver = message;
  v6.super_class = BSXPCServiceConnectionActivationMessage;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(v3 + 1, a2);
    *(v4 + 4) = 0;
  }

  return v4;
}

@end