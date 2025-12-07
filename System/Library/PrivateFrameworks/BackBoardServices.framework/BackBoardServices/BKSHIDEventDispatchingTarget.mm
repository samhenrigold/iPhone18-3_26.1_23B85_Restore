@interface BKSHIDEventDispatchingTarget
+ (id)focusTargetForPID:(int)d;
+ (id)keyboardFocusTarget;
+ (id)keyboardFocusTargetWithDeferringToken:(id)token;
+ (id)systemTarget;
+ (id)systemTargetWithDeferringToken:(id)token;
+ (id)targetForDeferringEnvironment:(id)environment;
+ (id)targetForDeferringEnvironment:(id)environment deferringToken:(id)token;
+ (id)targetForDeferringEnvironment:(id)environment selectionPath:(id)path;
+ (id)targetForPID:(int)d environment:(id)environment;
+ (id)targetForPID:(int)d environment:(id)environment selectionPath:(id)path;
- (BKSHIDEventDispatchingTarget)init;
- (BKSHIDEventDispatchingTarget)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithEnvironment:(id)environment token:(id)token selectionPath:(id)path pid:(int)pid;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDispatchingTarget

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash]^ (105491 * self->_pid);
  deferringToken = self->_deferringToken;
  if (deferringToken)
  {
    v3 ^= [(BKSHIDEventDeferringToken *)deferringToken hash];
  }

  selectionPathIdentifier = self->_selectionPathIdentifier;
  if (selectionPathIdentifier)
  {
    v3 ^= [(BKSHIDEventDeferringSelectionPathIdentifier *)selectionPathIdentifier hash];
  }

  return v3;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6 = MEMORY[0x1E69E9820];
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:v6 block:{3221225472, __61__BKSHIDEventDispatchingTarget_appendDescriptionToFormatter___block_invoke, &unk_1E6F47C78}];
}

id __61__BKSHIDEventDispatchingTarget_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) deferringEnvironment];
  v4 = [v2 appendObject:? withName:? skipIfNil:?];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) deferringToken];
  v7 = [v5 appendObject:? withName:? skipIfNil:?];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) selectionPathIdentifier];
  v10 = [v8 appendObject:? withName:? skipIfNil:?];

  v11 = *(a1 + 32);
  [*(a1 + 40) pid];
  return [v11 appendInteger:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && self->_pid == equalCopy->_pid && BSEqualObjects() && BSEqualObjects())
    {
      v6 = BSEqualObjects();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSHIDEventDispatchingTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v9 = [v6 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:? forKey:?];
  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  v10 = [coderCopy decodeInt32ForKey:?];
  if (!v7 || v10 < 1)
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, v7];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v14 = [v12 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    goto LABEL_7;
  }

  v11 = [BKSHIDEventDispatchingTarget _initWithEnvironment:"_initWithEnvironment:token:selectionPath:pid:" token:? selectionPath:? pid:?];
LABEL_8:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
}

- (id)_initWithEnvironment:(id)environment token:(id)token selectionPath:(id)path pid:(int)pid
{
  v36 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  tokenCopy = token;
  pathCopy = path;
  v14 = objc_opt_class();
  if (v14 != objc_opt_class())
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      selfCopy = self;
      v30 = 2114;
      v31 = @"BKSHIDEventDispatchingTarget.m";
      v32 = 1024;
      v33 = 33;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186367AD8);
  }

  v23.receiver = self;
  v23.super_class = BKSHIDEventDispatchingTarget;
  v15 = [(BKSHIDEventDispatchingTarget *)&v23 init];
  if (v15)
  {
    v16 = [environmentCopy copy];
    environment = v15->_environment;
    v15->_environment = v16;

    v15->_pid = pid;
    objc_storeStrong(&v15->_deferringToken, token);
    objc_storeStrong(&v15->_selectionPathIdentifier, path);
  }

  return v15;
}

- (BKSHIDEventDispatchingTarget)init
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
    v16 = @"BKSHIDEventDispatchingTarget.m";
    v17 = 1024;
    v18 = 28;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)focusTargetForPID:(int)d
{
  v25 = *MEMORY[0x1E69E9840];
  if (d <= 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138544642;
      v14 = v10;
      v15 = 2114;
      v16 = v12;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = @"BKSHIDEventDispatchingTarget.m";
      v21 = 1024;
      v22 = 108;
      v23 = 2114;
      v24 = v9;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v13, 0x3Au);
    }

    [v9 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186367DBCLL);
  }

  if (getpid() == d)
  {
    v3 = +[BKSHIDEventDispatchingTarget keyboardFocusTarget];
  }

  else
  {
    v4 = [BKSHIDEventDispatchingTarget alloc];
    v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
    v3 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v4 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];
  }

  return v3;
}

+ (id)targetForPID:(int)d environment:(id)environment selectionPath:(id)path
{
  pathCopy = path;
  environmentCopy = environment;
  v8 = [BKSHIDEventDispatchingTarget _initWithEnvironment:"_initWithEnvironment:token:selectionPath:pid:" token:? selectionPath:? pid:?];

  return v8;
}

+ (id)targetForPID:(int)d environment:(id)environment
{
  v32 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  if (d <= 0)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = 138544642;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"BKSHIDEventDispatchingTarget.m";
      v28 = 1024;
      v29 = 89;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v20, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186368068);
  }

  v8 = environmentCopy;
  if (getpid() != d)
  {
    goto LABEL_7;
  }

  v9 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v10 = [v8 isEqual:?];

  if (v10)
  {
    v11 = +[BKSHIDEventDispatchingTarget keyboardFocusTarget];
    goto LABEL_8;
  }

  v12 = +[BKSHIDEventDeferringEnvironment systemEnvironment];
  v13 = [v8 isEqual:?];

  if (v13)
  {
    v11 = +[BKSHIDEventDispatchingTarget systemTarget];
  }

  else
  {
LABEL_7:
    v11 = [BKSHIDEventDispatchingTarget _initWithEnvironment:"_initWithEnvironment:token:selectionPath:pid:" token:? selectionPath:? pid:?];
  }

LABEL_8:
  v14 = v11;

  return v14;
}

+ (id)targetForDeferringEnvironment:(id)environment selectionPath:(id)path
{
  pathCopy = path;
  environmentCopy = environment;
  v7 = [BKSHIDEventDispatchingTarget alloc];
  getpid();
  v8 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v7 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];

  return v8;
}

+ (id)targetForDeferringEnvironment:(id)environment deferringToken:(id)token
{
  tokenCopy = token;
  environmentCopy = environment;
  v7 = [BKSHIDEventDispatchingTarget alloc];
  getpid();
  v8 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v7 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];

  return v8;
}

+ (id)targetForDeferringEnvironment:(id)environment
{
  environmentCopy = environment;
  v4 = [BKSHIDEventDispatchingTarget alloc];
  getpid();
  v5 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v4 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];

  return v5;
}

+ (id)keyboardFocusTargetWithDeferringToken:(id)token
{
  tokenCopy = token;
  v4 = [BKSHIDEventDispatchingTarget alloc];
  v5 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  getpid();
  v6 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v4 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];

  return v6;
}

+ (id)systemTargetWithDeferringToken:(id)token
{
  tokenCopy = token;
  v4 = [BKSHIDEventDispatchingTarget alloc];
  v5 = +[BKSHIDEventDeferringEnvironment systemEnvironment];
  getpid();
  v6 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v4 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];

  return v6;
}

+ (id)keyboardFocusTarget
{
  if (keyboardFocusTarget_onceToken != -1)
  {
    dispatch_once(&keyboardFocusTarget_onceToken, &__block_literal_global_11);
  }

  v3 = keyboardFocusTarget___focusTarget;

  return v3;
}

void __51__BKSHIDEventDispatchingTarget_keyboardFocusTarget__block_invoke()
{
  v0 = [BKSHIDEventDispatchingTarget alloc];
  v3 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  getpid();
  v1 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v0 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];
  v2 = keyboardFocusTarget___focusTarget;
  keyboardFocusTarget___focusTarget = v1;
}

+ (id)systemTarget
{
  if (systemTarget_onceToken != -1)
  {
    dispatch_once(&systemTarget_onceToken, &__block_literal_global_2386);
  }

  v3 = systemTarget___systemTarget;

  return v3;
}

void __44__BKSHIDEventDispatchingTarget_systemTarget__block_invoke()
{
  v0 = [BKSHIDEventDispatchingTarget alloc];
  v3 = +[BKSHIDEventDeferringEnvironment systemEnvironment];
  getpid();
  v1 = [BKSHIDEventDispatchingTarget _initWithEnvironment:v0 token:"_initWithEnvironment:token:selectionPath:pid:" selectionPath:? pid:?];
  v2 = systemTarget___systemTarget;
  systemTarget___systemTarget = v1;
}

@end