@interface BKSHIDEventKeyCommandsDispatchingPredicate
- (BKSHIDEventKeyCommandsDispatchingPredicate)init;
- (BKSHIDEventKeyCommandsDispatchingPredicate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithSenderDescriptors:(id)descriptors;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
@end

@implementation BKSHIDEventKeyCommandsDispatchingPredicate

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self succinctDescriptionBuilder];
  allObjects = [(NSSet *)self->_senderDescriptors allObjects];
  [succinctDescriptionBuilder appendArraySection:? withName:? multilinePrefix:? skipIfEmpty:?];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self descriptionBuilderWithMultilinePrefix:?];
  build = [v3 build];

  return build;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
    if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
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

- (BKSHIDEventKeyCommandsDispatchingPredicate)initWithCoder:(id)coder
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

  v11 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v12 = [v11 setWithObjects:{objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:? forKey:?];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v8 bs_containsObjectPassingTest:?])
  {
    v14 = MEMORY[0x1E696ABC0];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v8];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v16 = [v14 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    goto LABEL_9;
  }

  self = [(BKSHIDEventKeyCommandsDispatchingPredicate *)self _initWithSenderDescriptors:?];
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

BOOL __60__BKSHIDEventKeyCommandsDispatchingPredicate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [BKSMutableHIDEventKeyCommandsDispatchingPredicate allocWithZone:?];

  return [(BKSHIDEventKeyCommandsDispatchingPredicate *)v3 _initWithSenderDescriptors:?];
}

id __54__BKSHIDEventKeyCommandsDispatchingPredicate_displays__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[BKSHIDEventDisplay nullDisplay];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithSenderDescriptors:(id)descriptors
{
  v29 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v6 = objc_opt_class();
  if (v6 != objc_opt_class())
  {
    v7 = objc_opt_class();
    if (v7 != objc_opt_class())
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        selfCopy = self;
        v23 = 2114;
        v24 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
        v25 = 1024;
        v26 = 31;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186396164);
    }
  }

  v16.receiver = self;
  v16.super_class = BKSHIDEventKeyCommandsDispatchingPredicate;
  v8 = [(BKSHIDEventKeyCommandsDispatchingPredicate *)&v16 init];
  if (v8)
  {
    v9 = [descriptorsCopy copy];
    senderDescriptors = v8->_senderDescriptors;
    v8->_senderDescriptors = v9;
  }

  return v8;
}

- (BKSHIDEventKeyCommandsDispatchingPredicate)init
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
    v16 = @"BKSHIDEventKeyCommandsDispatchingPredicate.m";
    v17 = 1024;
    v18 = 26;
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