@interface BKSHIDEventKeyCommandsRegistration
- (BKSHIDEventKeyCommandsRegistration)init;
- (BKSHIDEventKeyCommandsRegistration)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (id)_initWithEnvironment:(id)environment token:(id)token keyCommands:(id)commands;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventKeyCommandsRegistration

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v5 = [streamCopy appendObject:? withName:?];
  v6 = [streamCopy appendObject:? withName:? skipIfNil:?];
  if ([streamCopy hasSuccinctStyle])
  {
    [(NSSet *)self->_keyCommands count];
    v7 = [streamCopy appendInteger:? withName:?];
  }

  else
  {
    v8 = MEMORY[0x1E69E9820];
    v9 = streamCopy;
    [v9 appendCustomFormatWithName:v8 block:{3221225472, __64__BKSHIDEventKeyCommandsRegistration_appendDescriptionToStream___block_invoke, &unk_1E6F47000, self}];
  }
}

- (id)succinctDescription
{
  v2 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v4 = [v2 descriptionForRootObject:? withStyle:?];

  return v4;
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
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && BSEqualObjects() && BSEqualObjects())
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

- (unint64_t)hash
{
  v3 = [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  v4 = [(BKSHIDEventDeferringToken *)self->_token hash];
  return v3 ^ v4 ^ [(NSSet *)self->_keyCommands hash]^ 0x1E5B1;
}

- (BKSHIDEventKeyCommandsRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    objc_opt_class();
    v11 = [coderCopy decodeObjectOfClass:? forKey:?];
    if (v11)
    {
      v8 = v11;
      v12 = MEMORY[0x1E695DFD8];
      objc_opt_class();
      v13 = [v12 setWithObjects:{objc_opt_class(), 0}];
      v9 = [coderCopy decodeObjectOfClasses:? forKey:?];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 bs_containsObjectPassingTest:?])
      {
        objc_opt_class();
        v23 = [coderCopy decodeObjectOfClass:? forKey:?];
        self = [BKSHIDEventKeyCommandsRegistration _initWithEnvironment:"_initWithEnvironment:token:keyCommands:" token:? keyCommands:?];

        selfCopy = self;
        goto LABEL_11;
      }

      v17 = MEMORY[0x1E696ABC0];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:v9];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v20 = [v17 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:0];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v16 = [v14 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

      v8 = 0;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v10 = [v7 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

BOOL __52__BKSHIDEventKeyCommandsRegistration_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [BKSMutableHIDEventKeyCommandsRegistration allocWithZone:?];

  return [BKSHIDEventKeyCommandsRegistration _initWithEnvironment:v3 token:"_initWithEnvironment:token:keyCommands:" keyCommands:?];
}

- (id)_initWithEnvironment:(id)environment token:(id)token keyCommands:(id)commands
{
  v39 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  tokenCopy = token;
  commandsCopy = commands;
  v12 = objc_opt_class();
  if (v12 != objc_opt_class())
  {
    v13 = objc_opt_class();
    if (v13 != objc_opt_class())
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        v28 = v23;
        v29 = 2114;
        v30 = v25;
        v31 = 2048;
        selfCopy = self;
        v33 = 2114;
        v34 = @"BKSHIDEventKeyCommandsRegistration.m";
        v35 = 1024;
        v36 = 35;
        v37 = 2114;
        v38 = v22;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638F5ECLL);
    }
  }

  v26.receiver = self;
  v26.super_class = BKSHIDEventKeyCommandsRegistration;
  v14 = [(BKSHIDEventKeyCommandsRegistration *)&v26 init];
  if (v14)
  {
    v15 = [environmentCopy copy];
    environment = v14->_environment;
    v14->_environment = v15;

    v17 = [tokenCopy copy];
    token = v14->_token;
    v14->_token = v17;

    v19 = [commandsCopy copy];
    keyCommands = v14->_keyCommands;
    v14->_keyCommands = v19;
  }

  return v14;
}

- (BKSHIDEventKeyCommandsRegistration)init
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
    v16 = @"BKSHIDEventKeyCommandsRegistration.m";
    v17 = 1024;
    v18 = 30;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end