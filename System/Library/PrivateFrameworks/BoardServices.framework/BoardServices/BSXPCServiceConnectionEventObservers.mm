@interface BSXPCServiceConnectionEventObservers
- (BSXPCServiceConnectionEventObservers)init;
- (void)clearRevocations;
- (void)consumeRevocations:(uint64_t)revocations;
@end

@implementation BSXPCServiceConnectionEventObservers

- (void)clearRevocations
{
  if (self)
  {
    os_unfair_lock_lock((self + 16));
    v2 = *(self + 8);
    *(self + 8) = 0;

    os_unfair_lock_unlock((self + 16));
  }
}

- (BSXPCServiceConnectionEventObservers)init
{
  v3.receiver = self;
  v3.super_class = BSXPCServiceConnectionEventObservers;
  result = [(BSXPCServiceConnectionEventObservers *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)consumeRevocations:(uint64_t)revocations
{
  v25 = *MEMORY[0x1E69E9840];
  if (revocations)
  {
    if (!a2)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"outRevocations"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(sel_consumeRevocations_);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138544642;
        v14 = v9;
        v15 = 2114;
        v16 = v11;
        v17 = 2048;
        revocationsCopy = revocations;
        v19 = 2114;
        v20 = @"BSXPCServiceConnection.m";
        v21 = 1024;
        v22 = 1586;
        v23 = 2114;
        v24 = v8;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v12 = v8;
      [v8 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A877B38);
    }

    os_unfair_lock_lock((revocations + 16));
    if ([*(revocations + 8) count])
    {
      v4 = *a2;
      if (!*a2)
      {
        v4 = [MEMORY[0x1E695DFA8] set];
        v5 = v4;
        *a2 = v4;
      }

      v6 = NSAllMapTableValues(*(revocations + 8));
      [v4 addObjectsFromArray:v6];
    }

    v7 = *(revocations + 8);
    *(revocations + 8) = 0;

    os_unfair_lock_unlock((revocations + 16));
  }
}

void __69__BSXPCServiceConnectionEventObservers_addRevocationBlock_forReason___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [a2 assertion];
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    [*(WeakRetained + 1) removeObjectForKey:v3];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

@end