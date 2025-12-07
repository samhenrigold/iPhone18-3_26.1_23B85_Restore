@interface _BSNSXPCCallbackTracking
- (_BSNSXPCCallbackTracking)init;
- (uint64_t)isInvalidationStillPending;
- (void)captureConnection;
- (void)dealloc;
- (void)sendError:(BOOL)error isOnQueue:;
@end

@implementation _BSNSXPCCallbackTracking

- (uint64_t)isInvalidationStillPending
{
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 44);
    os_unfair_lock_unlock((self + 40));
    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (_BSNSXPCCallbackTracking)init
{
  v8.receiver = self;
  v8.super_class = _BSNSXPCCallbackTracking;
  v2 = [(_BSNSXPCCallbackTracking *)&v8 init];
  v3 = v2;
  if (v2)
  {
    lock_connectionReference = v2->_lock_connectionReference;
    v2->_lock_connectionReference = 0;

    lock_connection = v3->_lock_connection;
    v3->_lock_connection = 0;

    lock_errorHandler = v3->_lock_errorHandler;
    v3->_lock_errorHandler = 0;

    objc_storeWeak(&v3->_lock_observer, 0);
    v3->_lock._os_unfair_lock_opaque = 0;
    v3->_lock_invalidated = 0;
  }

  return v3;
}

- (void)captureConnection
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    v2 = *(self + 8);
    if (!v2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_connectionReference != nil"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = NSStringFromSelector(sel_captureConnection);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        *buf = 138544642;
        v16 = v6;
        v17 = 2114;
        v18 = v8;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 2114;
        v22 = @"BSNSXPCTransport.m";
        v23 = 1024;
        v24 = 178;
        v25 = 2114;
        v26 = v5;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v9 = v5;
      [v5 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A82DE90);
    }

    if ((*(self + 44) & 1) == 0 && !*(self + 16))
    {
      object = [v2 object];
      v4 = *(self + 16);
      *(self + 16) = object;

      if (!*(self + 16))
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_connection != nil"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = NSStringFromSelector(sel_captureConnection);
          v12 = objc_opt_class();
          NSStringFromClass(v12);
          *buf = 138544642;
          v16 = v11;
          v13 = v17 = 2114;
          v18 = v13;
          v19 = 2048;
          selfCopy2 = self;
          v21 = 2114;
          v22 = @"BSNSXPCTransport.m";
          v23 = 1024;
          v24 = 181;
          v25 = 2114;
          v26 = v10;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v14 = v10;
        [v10 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A82DF94);
      }
    }

    os_unfair_lock_unlock((self + 40));
  }
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_lock_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_BSNSXPCCallbackTracking must invalidate before dealloc"];
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
      v17 = @"BSNSXPCTransport.m";
      v18 = 1024;
      v19 = 150;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A82E688);
  }

  v9.receiver = self;
  v9.super_class = _BSNSXPCCallbackTracking;
  [(_BSNSXPCCallbackTracking *)&v9 dealloc];
}

- (void)sendError:(BOOL)error isOnQueue:
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 40));
    if (*(self + 44) == 1)
    {
      os_unfair_lock_unlock((self + 40));
      v6 = 0;
      v7 = 0;
      WeakRetained = 0;
      v9 = 0;
LABEL_26:

      return;
    }

    v9 = MEMORY[0x19A908200](*(self + 24));
    WeakRetained = objc_loadWeakRetained((self + 32));

    if (WeakRetained)
    {
      WeakRetained = objc_loadWeakRetained((self + 32));
      v10 = *(self + 16);
      if (v10)
      {
        object = v10;
      }

      else
      {
        object = [*(self + 8) object];
      }

      v7 = object;
      v12 = [_BSNSXPCConnectionEvent alloc];
      if (v12)
      {
        *v22 = v12;
        *&v22[8] = _BSNSXPCConnectionEvent;
        v12 = objc_msgSendSuper2(v22, sel_init);
        if (v12)
        {
          v12->_code = a2;
          v12->_onQueue = error;
        }
      }

      v6 = v12;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (a2 != 2)
    {
      *(self + 44) = 1;
      v13 = *(self + 24);
      *(self + 24) = 0;

      objc_storeWeak((self + 32), 0);
      v14 = *(self + 16);
      *(self + 16) = 0;
    }

    os_unfair_lock_unlock((self + 40));
    if (!v9)
    {
LABEL_23:
      if (WeakRetained)
      {
        if (!v7)
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot call observer with event %@ because connection has deallocated : %@", v6, *(self + 8)];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v18 = NSStringFromSelector(sel_sendError_isOnQueue_);
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            *v22 = 138544642;
            *&v22[4] = v18;
            *&v22[12] = 2114;
            *&v22[14] = v20;
            v23 = 2048;
            selfCopy = self;
            v25 = 2114;
            v26 = @"BSNSXPCTransport.m";
            v27 = 1024;
            v28 = 220;
            v29 = 2114;
            v30 = v17;
            _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v22, 0x3Au);
          }

          v21 = v17;
          [v17 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x19A838708);
        }

        [WeakRetained connection:v7 didHaltWithEvent:v6];
      }

      goto LABEL_26;
    }

    if (a2 == 2)
    {
      v15 = MEMORY[0x1E69E9E18];
    }

    else
    {
      if (a2 == 4)
      {
        v15 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v15 = MEMORY[0x1E69E9E20];
    }

    v16 = v15;
    (v9)[2](v9, v15);
    goto LABEL_22;
  }
}

@end