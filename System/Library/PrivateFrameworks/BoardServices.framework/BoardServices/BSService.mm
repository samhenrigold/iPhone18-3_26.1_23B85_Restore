@interface BSService
- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)prefix;
- (id)registerListener:(void *)listener forInstance:;
@end

@implementation BSService

- (id)registerListener:(void *)listener forInstance:
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = a2;
  listenerCopy = listener;
  v7 = listenerCopy;
  if (!self)
  {
    goto LABEL_35;
  }

  if (!v5)
  {
    v36 = MEMORY[0x1E696AEC0];
    if (listenerCopy)
    {
      v37 = listenerCopy;
    }

    else
    {
      v37 = @"<any>";
    }

    identifier = [*(self + 8) identifier];
    identifier2 = [*(self + 16) identifier];
    v40 = [v36 stringWithFormat:@"asked to register a nil listener for instance %@ of service %@ of domain %@", v37, identifier, identifier2];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(sel_registerListener_forInstance_);
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      *location = 138544642;
      *&location[4] = v41;
      v85 = 2114;
      v86 = v43;
      v87 = 2048;
      selfCopy5 = self;
      v89 = 2114;
      v90 = @"BSServiceDomain.m";
      v91 = 1024;
      v92 = 82;
      v93 = 2114;
      v94 = v40;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v44 = v40;
    [v40 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8631A0);
  }

  v8 = [MEMORY[0x1E698E7B8] referenceWithObject:v5];
  os_unfair_lock_lock((self + 48));
  v75 = v8;
  if (*(self + 52) == 1)
  {
    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot register listener on an invalidated service"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(sel_registerListener_forInstance_);
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *location = 138544642;
      *&location[4] = v46;
      v85 = 2114;
      v86 = v48;
      v87 = 2048;
      selfCopy5 = self;
      v89 = 2114;
      v90 = @"BSServiceDomain.m";
      v91 = 1024;
      v92 = 87;
      v93 = 2114;
      v94 = v45;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v49 = v45;
    [v45 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A863298);
  }

  if (*(self + 24))
  {
    v50 = MEMORY[0x1E696AEC0];
    identifier3 = [*(self + 8) identifier];
    identifier4 = [*(self + 16) identifier];
    v53 = [v50 stringWithFormat:@"already have a global listener for service %@ of domain %@ : old=%@ new=%@", identifier3, identifier4, *(self + 24), v5];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(sel_registerListener_forInstance_);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *location = 138544642;
      *&location[4] = v54;
      v85 = 2114;
      v86 = v56;
      v87 = 2048;
      selfCopy5 = self;
      v89 = 2114;
      v90 = @"BSServiceDomain.m";
      v91 = 1024;
      v92 = 88;
      v93 = 2114;
      v94 = v53;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
    }

    v57 = v53;
    [v53 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8633C8);
  }

  v9 = *(self + 32);
  if (v7)
  {
    if (v9)
    {
      v10 = [v9 objectForKey:v7];

      if (v10)
      {
        v58 = MEMORY[0x1E696AEC0];
        identifier5 = [*(self + 8) identifier];
        identifier6 = [*(self + 16) identifier];
        v61 = [*(self + 32) objectForKey:v7];
        v62 = [v58 stringWithFormat:@"already have a listener for instance %@ of service %@ of domain %@ : old=%@ new=%@", v7, identifier5, identifier6, v61, v5];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v63 = NSStringFromSelector(sel_registerListener_forInstance_);
          v64 = objc_opt_class();
          v65 = NSStringFromClass(v64);
          *location = 138544642;
          *&location[4] = v63;
          v85 = 2114;
          v86 = v65;
          v87 = 2048;
          selfCopy5 = self;
          v89 = 2114;
          v90 = @"BSServiceDomain.m";
          v91 = 1024;
          v92 = 91;
          v93 = 2114;
          v94 = v62;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
        }

        v66 = v62;
        [v62 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A863510);
      }

      [*(self + 32) setObject:v8 forKey:v7];
      goto LABEL_13;
    }

    v13 = [MEMORY[0x1E695DF90] dictionaryWithObject:v8 forKey:v7];
    v12 = *(self + 32);
    *(self + 32) = v13;
  }

  else
  {
    if (v9)
    {
      v67 = MEMORY[0x1E696AEC0];
      identifier7 = [*(self + 8) identifier];
      identifier8 = [*(self + 16) identifier];
      v70 = [v67 stringWithFormat:@"already have a listener for service %@ of domain %@ : old=%@ new=%@", identifier7, identifier8, *(self + 32), v5];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v71 = NSStringFromSelector(sel_registerListener_forInstance_);
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        *location = 138544642;
        *&location[4] = v71;
        v85 = 2114;
        v86 = v73;
        v87 = 2048;
        selfCopy5 = self;
        v89 = 2114;
        v90 = @"BSServiceDomain.m";
        v91 = 1024;
        v92 = 97;
        v93 = 2114;
        v94 = v70;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v74 = v70;
      [v70 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A863640);
    }

    v11 = v8;
    v12 = *(self + 24);
    *(self + 24) = v11;
  }

LABEL_13:
  v14 = [*(self + 40) count];
  if (v14)
  {
    if (v7)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [*(self + 40) objectAtIndex:v15];
        instance = [v17 instance];
        v19 = BSEqualStrings();

        if (v19)
        {
          if (!v16)
          {
            v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:v14];
          }

          [v16 addObject:v17];
          [*(self + 40) removeObjectAtIndex:v15];
          --v14;
        }

        else
        {
          ++v15;
        }
      }

      while (v15 < v14);
    }

    else
    {
      v16 = *(self + 40);
      array = [MEMORY[0x1E695DF70] array];
      v21 = *(self + 40);
      *(self + 40) = array;
    }
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock((self + 48));
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v22 = v16;
  v23 = [v22 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v23)
  {
    v24 = *v80;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v80 != v24)
        {
          objc_enumerationMutation(v22);
        }

        [v5 didReceiveConnection:*(*(&v79 + 1) + 8 * i)];
      }

      v23 = [v22 countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v23);
  }

  objc_initWeak(location, self);
  v26 = objc_alloc(MEMORY[0x1E698E778]);
  v27 = MEMORY[0x1E696AEC0];
  identifier9 = [*(self + 16) identifier];
  v29 = [v27 stringWithFormat:@"com.apple.boardservices.domain:%@", identifier9];
  v30 = MEMORY[0x1E696AEC0];
  identifier10 = [*(self + 8) identifier];
  v32 = identifier10;
  v33 = @"<any>";
  if (v7)
  {
    v33 = v7;
  }

  v34 = [v30 stringWithFormat:@"listener:%@-%@ -> %p", identifier10, v33, v5];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __42__BSService_registerListener_forInstance___block_invoke;
  v76[3] = &unk_1E7520E68;
  objc_copyWeak(&v78, location);
  v76[4] = v75;
  v77 = v7;
  self = [v26 initWithIdentifier:v29 forReason:v34 invalidationBlock:v76];

  objc_destroyWeak(&v78);
  objc_destroyWeak(location);

LABEL_35:

  return self;
}

void __42__BSService_registerListener_forInstance___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v2;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 12);
    if ((WeakRetained[52] & 1) == 0)
    {
      if (!v4)
      {
        v5 = (WeakRetained + 24);
        v8 = *(WeakRetained + 3);
        if (v8 != v3)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v5 = (WeakRetained + 32);
      v6 = [*(WeakRetained + 4) objectForKey:v4];

      if (v6 == v3)
      {
        v7 = [*v5 count];
        v8 = *v5;
        if (v7 != 1)
        {
          [v8 removeObjectForKey:v4];
          goto LABEL_9;
        }

LABEL_8:
        *v5 = 0;
      }
    }

LABEL_9:
    os_unfair_lock_unlock(WeakRetained + 12);
  }
}

- (id)_debugDescriptionWithMultilinePrefix:(uint64_t)prefix
{
  v3 = a2;
  if (prefix)
  {
    v4 = [MEMORY[0x1E698E680] builderWithObject:prefix];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke;
    v16[3] = &unk_1E75209E8;
    v5 = v4;
    v17 = v5;
    prefixCopy = prefix;
    v6 = [v5 modifyProem:v16];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_2;
    v13 = &unk_1E75209E8;
    prefixCopy2 = prefix;
    v7 = v5;
    v15 = v7;
    [v7 appendBodySectionWithName:0 multilinePrefix:v3 block:&v10];
    build = [v7 build];
  }

  else
  {
    build = 0;
  }

  return build;
}

id __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 8) identifier];
  v4 = [v2 appendObject:v3 withName:0];

  os_unfair_lock_lock((*(a1 + 40) + 48));
  v5 = *(a1 + 40);
  if (*(v5 + 52))
  {
    v6 = @"invalid";
  }

  else
  {
    v6 = @"active";
  }

  os_unfair_lock_unlock((v5 + 48));
  return [*(a1 + 32) appendObject:v6 withName:@"state"];
}

void __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = [v2 activeMultilinePrefix];
  [(BSServiceSpecification *)v3 _appendManagerDumpBodyToBuilder:v2 withMultilinePrefix:v4];

  v5 = [*(a1 + 40) appendObject:*(*(a1 + 32) + 24) withName:@"listener" skipIfNil:1];
  if ([*(*(a1 + 32) + 32) count])
  {
    v6 = [*(*(a1 + 32) + 32) allKeys];
    v7 = [v6 mutableCopy];

    [v7 sortUsingSelector:sel_compare_];
    v8 = *(a1 + 40);
    v9 = [v8 activeMultilinePrefix];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_3;
    v16[3] = &unk_1E75205A8;
    v10 = v7;
    v17 = v10;
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    v18 = v11;
    v19 = v12;
    [v8 appendBodySectionWithName:@"listeners" multilinePrefix:v9 block:v16];
  }

  v13 = *(a1 + 40);
  v14 = *(*(a1 + 32) + 40);
  v15 = [v13 activeMultilinePrefix];
  [v13 appendArraySection:v14 withName:@"pendedConnections" multilinePrefix:v15 skipIfEmpty:1];
}

void __50__BSService__debugDescriptionWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [*(*(a1 + 48) + 32) objectForKey:{v6, v10}];
        v9 = [v7 appendObject:v8 withName:v6];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

@end