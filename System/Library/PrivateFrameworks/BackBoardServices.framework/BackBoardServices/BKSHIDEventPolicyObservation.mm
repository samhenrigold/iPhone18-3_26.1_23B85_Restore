@interface BKSHIDEventPolicyObservation
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventPolicyObservation)init;
- (BKSHIDEventPolicyObservation)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_init;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventPolicyObservation

- (void)_init
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v7 = NSStringFromSelector(sel__init);
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          *buf = 138544642;
          v12 = v7;
          v13 = 2114;
          v14 = v9;
          v15 = 2048;
          v16 = v1;
          v17 = 2114;
          v18 = @"BKSHIDEventPolicyObservation.m";
          v19 = 1024;
          v20 = 60;
          v21 = 2114;
          v22 = v6;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v6 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186349098);
      }
    }

    v4 = +[BKSHIDEventDeferringSelectionPathIdentifier primary];
    v5 = v1[4];
    v1[4] = v4;

    v10.receiver = v1;
    v10.super_class = BKSHIDEventPolicyObservation;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  return result;
}

- (unint64_t)hash
{
  [(BKSHIDEventDisplay *)self->_display hash];
  [(BKSHIDEventDeferringEnvironment *)self->_environment hash];
  [(BKSHIDEventDeferringSelectionPathIdentifier *)self->_selectionPath hash];
  [(BKSHIDEventDeferringToken *)self->_token hash];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:?];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [v4 hash];

  return BSHashPurifyNS();
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventPolicyObservation *)of _init];
    of = _init;
    if (_init)
    {
      *(_init + 2) = *(v3 + 2);
      objc_storeStrong(_init + 2, *(v3 + 2));
      objc_storeStrong(of + 3, *(v3 + 3));
      objc_storeStrong(of + 4, *(v3 + 4));
      objc_storeStrong(of + 5, *(v3 + 5));
      of[6] = *(v3 + 6);
      *(of + 56) = *(v3 + 56);
    }
  }

  return of;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy appendInteger:? withName:?];
  v4 = [streamCopy appendObject:? withName:?];
  v5 = [streamCopy appendObject:? withName:?];
  v6 = [streamCopy appendObject:? withName:?];
  v7 = [streamCopy appendObject:? withName:?];
  v8 = [streamCopy appendInteger:? withName:?];
  v9 = [streamCopy appendBool:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventPolicyObservation alloc];

  return [(BKSHIDEventPolicyObservation *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5[2] == self->_pid && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && *(v5 + 6) == self->_policyStatus && *(v5 + 56) == self->_finalStringToken;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  if (self->_display)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  if (self->_environment)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  v4 = coderCopy;
  if (self->_selectionPath)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  if (self->_token)
  {
    [coderCopy encodeObject:? forKey:?];
    v4 = coderCopy;
  }

  [v4 encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (BKSHIDEventPolicyObservation)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = BKSHIDEventPolicyObservation;
  coderCopy = coder;
  v4 = [(BKSHIDEventPolicyObservation *)&v15 init];
  v4->_pid = [coderCopy decodeIntegerForKey:{v15.receiver, v15.super_class}];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  display = v4->_display;
  v4->_display = v5;

  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  environment = v4->_environment;
  v4->_environment = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  selectionPath = v4->_selectionPath;
  v4->_selectionPath = v9;

  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  token = v4->_token;
  v4->_token = v11;

  v4->_policyStatus = [coderCopy decodeIntegerForKey:?];
  v13 = [coderCopy decodeBoolForKey:?];

  v4->_finalStringToken = v13;
  return v4;
}

- (BKSHIDEventPolicyObservation)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventPolicyObservation.m";
    v9 = 1024;
    v10 = 49;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventPolicyObservation.m";
    v9 = 1024;
    v10 = 54;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSHIDEventPolicyObservation *)[BKSMutableHIDEventPolicyObservation alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end