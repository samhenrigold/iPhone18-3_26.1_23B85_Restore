@interface BSXPCServiceConnectionEndpoint
+ (id)nullEndpoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNullEndpoint;
- (BSXPCServiceConnectionEndpoint)init;
- (id)RBSTarget;
- (id)_initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(int)launching targetPID:(void *)d withTargetDescription:;
- (id)debugDescription;
- (id)description;
- (id)initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(uint64_t)launching targetPID:(void *)d targetDescription:;
- (uint64_t)compare:(uint64_t)compare;
- (unint64_t)hash;
@end

@implementation BSXPCServiceConnectionEndpoint

- (unint64_t)hash
{
  if (self->_xpcEndpoint)
  {
    xpcEndpoint = self->_xpcEndpoint;

    return xpc_hash(xpcEndpoint);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = BSXPCServiceConnectionEndpoint;
    return [(BSXPCServiceConnectionEndpoint *)&v6 hash];
  }
}

- (id)RBSTarget
{
  if (self)
  {
    if (*(self + 12) < 1)
    {
      if (*(self + 16))
      {
        self = [getRBSTargetClass_0() targetWithEndpoint:*(self + 16)];
      }

      else
      {
        self = 0;
      }
    }

    else
    {
      self = [getRBSTargetClass_0() targetWithPid:*(self + 12)];
    }

    v1 = vars8;
  }

  return self;
}

- (BOOL)isNullEndpoint
{
  selfCopy = self;
  if (self)
  {
    v2 = +[BSXPCServiceConnectionEndpoint nullEndpoint];
    selfCopy = v2 == selfCopy;
  }

  return selfCopy;
}

+ (id)nullEndpoint
{
  objc_opt_self();
  if (qword_1ED4A7C18 != -1)
  {
    dispatch_once(&qword_1ED4A7C18, &__block_literal_global_4);
  }

  v1 = _MergedGlobals_7;

  return v1;
}

void __46__BSXPCServiceConnectionEndpoint_nullEndpoint__block_invoke()
{
  v0 = [[BSXPCServiceConnectionEndpoint alloc] _initWithXPCEndpoint:0 oneshot:0 nonLaunching:0 targetPID:@"<null>" withTargetDescription:?];
  v1 = _MergedGlobals_7;
  _MergedGlobals_7 = v0;
}

- (id)description
{
  if (self->_nonLaunching)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NL:%@", self->_targetDescription];
  }

  else
  {
    v2 = self->_targetDescription;
  }

  return v2;
}

- (BSXPCServiceConnectionEndpoint)init
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on BSXPCServiceConnectionEndpoint"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138544642;
    v11 = v5;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    v16 = 2114;
    v17 = @"BSXPCServiceConnectionEndpoint.m";
    v18 = 1024;
    v19 = 41;
    v20 = 2114;
    v21 = v4;
    _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(int)launching targetPID:(void *)d withTargetDescription:
{
  v12 = a2;
  endpointCopy = endpoint;
  dCopy = d;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = BSXPCServiceConnectionEndpoint;
    v15 = objc_msgSendSuper2(&v21, sel_init);
    self = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 2, a2);
      v16 = [endpointCopy copy];
      v17 = self[3];
      self[3] = v16;

      *(self + 8) = oneshot;
      *(self + 3) = launching;
      v18 = [dCopy copy];
      v19 = self[4];
      self[4] = v18;
    }
  }

  return self;
}

- (id)initWithXPCEndpoint:(void *)endpoint oneshot:(char)oneshot nonLaunching:(uint64_t)launching targetPID:(void *)d targetDescription:
{
  v63 = *MEMORY[0x1E69E9840];
  v50 = a2;
  endpointCopy = endpoint;
  dCopy = d;
  if (self)
  {
    v13 = endpointCopy;
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = MEMORY[0x1E696AEC0];
        classForCoder = [v13 classForCoder];
        if (!classForCoder)
        {
          classForCoder = objc_opt_class();
        }

        v42 = NSStringFromClass(classForCoder);
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = [v40 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"oneshot", v42, v44];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v46 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          *buf = 138544642;
          v52 = v46;
          v53 = 2114;
          v54 = v48;
          v55 = 2048;
          selfCopy4 = self;
          v57 = 2114;
          v58 = @"BSXPCServiceConnectionEndpoint.m";
          v59 = 1024;
          v60 = 65;
          v61 = 2114;
          v62 = v45;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        v49 = v45;
        [v45 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A848FCCLL);
      }
    }

    if ((launching & 0x80000000) != 0)
    {
      launching = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid targetPID %i", launching];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v52 = v19;
        v53 = 2114;
        v54 = v21;
        v55 = 2048;
        selfCopy4 = self;
        v57 = 2114;
        v58 = @"BSXPCServiceConnectionEndpoint.m";
        v59 = 1024;
        v60 = 66;
        v61 = 2114;
        v62 = launching;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = launching;
      [launching UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A848C28);
    }

    v14 = dCopy;
    v15 = MEMORY[0x1E696AEC0];
    if (!v14)
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v15 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"targetDescription", v24];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v52 = v26;
        v53 = 2114;
        v54 = v28;
        v55 = 2048;
        selfCopy4 = self;
        v57 = 2114;
        v58 = @"BSXPCServiceConnectionEndpoint.m";
        v59 = 1024;
        v60 = 67;
        v61 = 2114;
        v62 = v25;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v29 = v25;
      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A848D40);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v14 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v32 = NSStringFromClass(classForCoder2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [v30 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"targetDescription", v32, v34];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v36 = NSStringFromSelector(sel_initWithXPCEndpoint_oneshot_nonLaunching_targetPID_targetDescription_);
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138544642;
        v52 = v36;
        v53 = 2114;
        v54 = v38;
        v55 = 2048;
        selfCopy4 = self;
        v57 = 2114;
        v58 = @"BSXPCServiceConnectionEndpoint.m";
        v59 = 1024;
        v60 = 67;
        v61 = 2114;
        v62 = v35;
        _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v39 = v35;
      [v35 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19A848E84);
    }

    v16 = v50;
    self = [(BSXPCServiceConnectionEndpoint *)self _initWithXPCEndpoint:v50 oneshot:v13 nonLaunching:oneshot targetPID:launching withTargetDescription:v14];
  }

  else
  {
    v16 = v50;
  }

  return self;
}

- (uint64_t)compare:(uint64_t)compare
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!compare)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v5 = v3;
  if (!v5)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v23 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"other", v25];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(sel_compare_);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v42 = v27;
      v43 = 2114;
      v44 = v29;
      v45 = 2048;
      *v46 = compare;
      *&v46[8] = 2114;
      *&v46[10] = @"BSXPCServiceConnectionEndpoint.m";
      v47 = 1024;
      v48 = 86;
      v49 = 2114;
      v50 = v26;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A84945CLL);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = MEMORY[0x1E696AEC0];
    classForCoder = [v5 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v33 = NSStringFromClass(classForCoder);
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v31 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"other", v33, v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel_compare_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v42 = v37;
      v43 = 2114;
      v44 = v39;
      v45 = 2048;
      *v46 = compare;
      *&v46[8] = 2114;
      *&v46[10] = @"BSXPCServiceConnectionEndpoint.m";
      v47 = 1024;
      v48 = 86;
      v49 = 2114;
      v50 = v36;
      _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v40 = v36;
    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19A8495A4);
  }

  v6 = *(compare + 16);
  v7 = *(v5 + 2);
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = v6;
    v9 = v7;
    v10 = xpc_endpoint_compare();
    if (v10 == -1)
    {
      v11 = -1;
LABEL_13:

      goto LABEL_22;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid xpc_endpoint_compare result : %i l=%@ r=%@", v10, v8, v9];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult __endpointCompare(__strong xpc_endpoint_t, __strong xpc_endpoint_t)"}];
          *buf = 138544130;
          v42 = v21;
          v43 = 2114;
          v44 = @"BSXPCServiceConnectionEndpoint.m";
          v45 = 1024;
          *v46 = 31;
          *&v46[4] = 2114;
          *&v46[6] = v20;
          _os_log_error_impl(&dword_19A821000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        v22 = v20;
        [v20 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19A84933CLL);
      }

      v11 = 1;
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    goto LABEL_21;
  }

  v12 = *(compare + 24);
  v13 = *(v5 + 3);
  if (v12)
  {
    if (v13)
    {
      v11 = [v12 compare:?];
      if (v11)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

LABEL_19:
    v11 = 1;
    goto LABEL_22;
  }

  if (v13)
  {
LABEL_21:
    v11 = -1;
    goto LABEL_22;
  }

LABEL_23:
  if (*(compare + 8))
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (*(compare + 8) == v5[8])
  {
    v15 = *(compare + 12);
    v16 = *(v5 + 3);
    v17 = v15 == v16;
    v18 = v15 < v16;
    v19 = -1;
    if (!v18)
    {
      v19 = 1;
    }

    if (v17)
    {
      v11 = 0;
    }

    else
    {
      v11 = v19;
    }
  }

LABEL_22:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    xpcEndpoint = self->_xpcEndpoint;
    v9 = equalCopy->_xpcEndpoint;
    if (xpcEndpoint)
    {
      if (!v9 || !xpc_equal(xpcEndpoint, v9))
      {
        goto LABEL_3;
      }
    }

    else if (v9)
    {
      goto LABEL_3;
    }

    if (BSEqualObjects() && self->_nonLaunching == equalCopy->_nonLaunching)
    {
      v6 = self->_targetPID == equalCopy->_targetPID;
      goto LABEL_5;
    }
  }

LABEL_3:
  v6 = 0;
LABEL_5:

  return v6;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_xpcEndpoint withName:@"xpcEndpoint" skipIfNil:0];
  v5 = [v3 appendObject:self->_oneshot withName:@"oneshot" skipIfNil:0];
  v6 = [v3 appendBool:self->_nonLaunching withName:@"nonLaunching"];
  v7 = [v3 appendInt:self->_targetPID withName:@"targetPID"];
  [v3 appendString:self->_targetDescription withName:@"targetDescription" skipIfEmpty:0];
  build = [v3 build];

  return build;
}

@end