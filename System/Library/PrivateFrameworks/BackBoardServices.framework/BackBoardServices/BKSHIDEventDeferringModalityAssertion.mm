@interface BKSHIDEventDeferringModalityAssertion
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringModalityAssertion)init;
- (BKSHIDEventDeferringModalityAssertion)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringModalityAssertion

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringModalityAssertion *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
      objc_storeStrong(of + 3, v3[3]);
      objc_storeStrong(of + 4, v3[4]);
      of[5] = v3[5];
    }
  }

  return of;
}

- (id)_init
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v5 = NSStringFromSelector(sel__init);
          v6 = objc_opt_class();
          v7 = NSStringFromClass(v6);
          *buf = 138544642;
          v10 = v5;
          v11 = 2114;
          v12 = v7;
          v13 = 2048;
          v14 = v1;
          v15 = 2114;
          v16 = @"BKSHIDEventDeferringModalityAssertion.m";
          v17 = 1024;
          v18 = 46;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186370D68);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSHIDEventDeferringModalityAssertion;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy appendObject:? withName:?];
  v4 = [streamCopy appendObject:? withName:?];
  v5 = [streamCopy appendObject:? withName:?];
  v6 = [streamCopy appendObject:? withName:?];
  v7 = [streamCopy appendTimeInterval:? withName:? decomposeUnits:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringModalityAssertion alloc];

  return [(BKSHIDEventDeferringModalityAssertion *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = equalCopy;
    if (BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
    {
      v5 = BSFloatEqualToFloat();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  [(BKSHIDEventDeferringSelectionPathSymbol *)self->_pathIdentifier hash];
  [(BKSHIDEventDeferringSelectionTarget *)self->_selectionTarget hash];
  [(BKSHIDEventDeferringModality *)self->_modality hash];
  [(BKSHIDEventDeferringChangeBasis *)self->_basis hash];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  [v3 hash];

  return BSHashPurifyNS();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_pathIdentifier)
  {
    [coderCopy encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_selectionTarget)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_modality)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }

  if (self->_basis)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }

  [coderCopy encodeDouble:? forKey:?];
}

- (BKSHIDEventDeferringModalityAssertion)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = BKSHIDEventDeferringModalityAssertion;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringModalityAssertion *)&v18 init];
  v5 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v6 = [v5 setWithObjects:{objc_opt_class(), 0, v18.receiver, v18.super_class}];
  v7 = [coderCopy decodeObjectOfClasses:? forKey:?];
  pathIdentifier = v4->_pathIdentifier;
  v4->_pathIdentifier = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  selectionTarget = v4->_selectionTarget;
  v4->_selectionTarget = v9;

  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  modality = v4->_modality;
  v4->_modality = v11;

  objc_opt_class();
  v13 = [coderCopy decodeObjectOfClass:? forKey:?];
  basis = v4->_basis;
  v4->_basis = v13;

  [coderCopy decodeDoubleForKey:?];
  v16 = v15;

  v4->_timestamp = v16;
  return v4;
}

- (BKSHIDEventDeferringModalityAssertion)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringModalityAssertion.m";
    v9 = 1024;
    v10 = 35;
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
    v8 = @"BKSHIDEventDeferringModalityAssertion.m";
    v9 = 1024;
    v10 = 40;
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
  _init = [(BKSHIDEventDeferringModalityAssertion *)[BKSMutableHIDEventDeferringModalityAssertion alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end