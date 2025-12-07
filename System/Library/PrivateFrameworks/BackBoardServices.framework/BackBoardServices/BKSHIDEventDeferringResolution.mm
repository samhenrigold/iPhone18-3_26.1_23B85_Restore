@interface BKSHIDEventDeferringResolution
+ (id)build:(id)build;
- (BKSHIDEventDeferringResolution)init;
- (BKSHIDEventDeferringResolution)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (id)_initWithCopyOf:(id *)of;
- (id)_initWithDisplay:(void *)display environment:(void *)environment versionedPID:(void *)d pid:(uint64_t)pid token:(int)token dispatchingTarget:(void *)target;
- (id)modifiedResolution:(id)resolution;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringResolution

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDisplay *)self->_display hash];
  v4 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  pid = self->_pid;
  v6 = v3 ^ v4 ^ pid ^ [(BKSHIDEventDeferringToken *)self->_token hash]^ 0x19397;
  dispatchingTarget = self->_dispatchingTarget;
  if (dispatchingTarget)
  {
    v6 ^= [(BKSHIDEventDispatchingTarget *)dispatchingTarget hash];
  }

  return v6;
}

- (id)_initWithCopyOf:(id *)of
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (of)
  {
    v19.receiver = of;
    v19.super_class = BKSHIDEventDeferringResolution;
    of = objc_msgSendSuper2(&v19, sel_init);
    if (of)
    {
      v4 = objc_opt_class();
      if (v4 != objc_opt_class())
      {
        v5 = objc_opt_class();
        if (v5 != objc_opt_class())
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = NSStringFromSelector(sel__initWithCopyOf_);
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = 138544642;
            v21 = v16;
            v22 = 2114;
            v23 = v18;
            v24 = 2048;
            ofCopy = of;
            v26 = 2114;
            v27 = @"BKSHIDEventDeferringResolution.m";
            v28 = 1024;
            v29 = 57;
            v30 = 2114;
            v31 = v15;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          [v15 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x186386A6CLL);
        }
      }

      v6 = [v3[1] copy];
      v7 = of[1];
      of[1] = v6;

      v8 = [v3[2] copy];
      v9 = of[2];
      of[2] = v8;

      of[3] = v3[3];
      *(of + 8) = *(v3 + 8);
      v10 = [v3[5] copy];
      v11 = of[5];
      of[5] = v10;

      objc_storeStrong(of + 7, v3[7]);
      v12 = [v3[6] copy];
      v13 = of[6];
      of[6] = v12;
    }
  }

  return of;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6 = MEMORY[0x1E69E9820];
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:v6 block:{3221225472, __60__BKSHIDEventDeferringResolution_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
}

void *__60__BKSHIDEventDeferringResolution_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:? withName:?];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = [v4 _isNullDisplay];
    v3 = *(a1 + 40);
    if ((v5 & 1) == 0)
    {
      v6 = [*(a1 + 32) appendObject:? withName:?];
      v3 = *(a1 + 40);
    }
  }

  if ([*(v3 + 48) length])
  {
    [*(a1 + 32) appendString:? withName:?];
  }

  else if ((*(*(a1 + 40) + 24) + 1) >= 2)
  {
    v8 = [*(a1 + 32) appendVersionedPID:? withName:?];
  }

  else
  {
    v7 = [*(a1 + 32) appendInteger:? withName:?];
  }

  v9 = [*(a1 + 32) appendObject:? withName:? skipIfNil:?];
  result = [*(a1 + 32) hasDebugStyle];
  if (result)
  {
    return [*(a1 + 32) appendObject:? withName:? skipIfNil:?];
  }

  return result;
}

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
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && BSEqualObjects() && BSEqualObjects() && self->_pid == equalCopy->_pid && BSEqualObjects() && self->_versionedPID == equalCopy->_versionedPID)
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BKSHIDEventDeferringResolution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v10 = [v7 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }
  }

  objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  v11 = [coderCopy decodeInt64ForKey:?];
  v12 = [coderCopy decodeInt32ForKey:?];
  v13 = v12;
  if (!v8 || !v9 || v12 <= 0 && v11 == -1)
  {
    v14 = MEMORY[0x1E696ABC0];
    v15 = MEMORY[0x1E696AEC0];
    v10 = NSStringFromBSVersionedPID();
    v22 = [v15 stringWithFormat:v8, v9, v10, v13];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v17 = [v14 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    goto LABEL_9;
  }

  objc_opt_class();
  v20 = [coderCopy decodeObjectOfClass:? forKey:?];
  if (self)
  {
    v21 = [BKSHIDEventDeferringResolution _initWithDisplay:v8 environment:v9 versionedPID:v11 pid:v13 token:v20 dispatchingTarget:?];
  }

  else
  {
    v21 = 0;
  }

  self = v21;

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (id)_initWithDisplay:(void *)display environment:(void *)environment versionedPID:(void *)d pid:(uint64_t)pid token:(int)token dispatchingTarget:(void *)target
{
  v65 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  dCopy = d;
  targetCopy = target;
  if (!environmentCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"display != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v54 = v25;
      v55 = 2114;
      v56 = v27;
      v57 = 2048;
      displayCopy7 = display;
      v59 = 2114;
      v60 = @"BKSHIDEventDeferringResolution.m";
      v61 = 1024;
      v62 = 74;
      v63 = 2114;
      v64 = v24;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387390);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[display isKindOfClass:[BKSHIDEventDisplay class]]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v54 = v29;
      v55 = 2114;
      v56 = v31;
      v57 = 2048;
      displayCopy7 = display;
      v59 = 2114;
      v60 = @"BKSHIDEventDeferringResolution.m";
      v61 = 1024;
      v62 = 75;
      v63 = 2114;
      v64 = v28;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387488);
  }

  if (!dCopy)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"environment != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138544642;
      v54 = v33;
      v55 = 2114;
      v56 = v35;
      v57 = 2048;
      displayCopy7 = display;
      v59 = 2114;
      v60 = @"BKSHIDEventDeferringResolution.m";
      v61 = 1024;
      v62 = 76;
      v63 = 2114;
      v64 = v32;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v32 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387580);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[environment isKindOfClass:[BKSHIDEventDeferringEnvironment class]]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      *buf = 138544642;
      v54 = v37;
      v55 = 2114;
      v56 = v39;
      v57 = 2048;
      displayCopy7 = display;
      v59 = 2114;
      v60 = @"BKSHIDEventDeferringResolution.m";
      v61 = 1024;
      v62 = 77;
      v63 = 2114;
      v64 = v36;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186387678);
  }

  if (pid == -1)
  {
    if (token <= 0)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544642;
        v54 = v49;
        v55 = 2114;
        v56 = v51;
        v57 = 2048;
        displayCopy7 = display;
        v59 = 2114;
        v60 = @"BKSHIDEventDeferringResolution.m";
        v61 = 1024;
        v62 = 82;
        v63 = 2114;
        v64 = v48;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v48 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387948);
    }
  }

  else
  {
    token = pid;
  }

  if (targetCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[token isKindOfClass:[BKSHIDEventDeferringToken class]]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v41 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138544642;
        v54 = v41;
        v55 = 2114;
        v56 = v43;
        v57 = 2048;
        displayCopy7 = display;
        v59 = 2114;
        v60 = @"BKSHIDEventDeferringResolution.m";
        v61 = 1024;
        v62 = 86;
        v63 = 2114;
        v64 = v40;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v40 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186387770);
    }
  }

  v14 = objc_opt_class();
  if (v14 != objc_opt_class())
  {
    v15 = objc_opt_class();
    if (v15 != objc_opt_class())
    {
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v45 = NSStringFromSelector(sel__initWithDisplay_environment_versionedPID_pid_token_dispatchingTarget_);
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        *buf = 138544642;
        v54 = v45;
        v55 = 2114;
        v56 = v47;
        v57 = 2048;
        displayCopy7 = display;
        v59 = 2114;
        v60 = @"BKSHIDEventDeferringResolution.m";
        v61 = 1024;
        v62 = 93;
        v63 = 2114;
        v64 = v44;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v44 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638785CLL);
    }
  }

  v52.receiver = display;
  v52.super_class = BKSHIDEventDeferringResolution;
  v16 = objc_msgSendSuper2(&v52, sel_init);
  if (v16)
  {
    v17 = [environmentCopy copy];
    v18 = *(v16 + 1);
    *(v16 + 1) = v17;

    v19 = [dCopy copy];
    v20 = *(v16 + 2);
    *(v16 + 2) = v19;

    *(v16 + 3) = pid;
    *(v16 + 8) = token;
    v21 = [targetCopy copy];
    v22 = *(v16 + 5);
    *(v16 + 5) = v21;

    objc_storeStrong(v16 + 7, 0);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringResolution allocWithZone:?];

  return [(BKSHIDEventDeferringResolution *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BKSHIDEventDeferringResolution)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeferringResolution.m";
    v17 = 1024;
    v18 = 51;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)modifiedResolution:(id)resolution
{
  resolutionCopy = resolution;
  v5 = [(BKSHIDEventDeferringResolution *)self mutableCopy];
  resolutionCopy[2](resolutionCopy, v5);

  return v5;
}

+ (id)build:(id)build
{
  buildCopy = build;
  v4 = objc_opt_new();
  buildCopy[2](buildCopy, v4);

  return v4;
}

@end