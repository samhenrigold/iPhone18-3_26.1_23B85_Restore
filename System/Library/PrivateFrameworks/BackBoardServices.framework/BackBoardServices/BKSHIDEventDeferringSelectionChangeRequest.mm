@interface BKSHIDEventDeferringSelectionChangeRequest
+ (id)build:(id)build;
+ (id)new;
- (BKSHIDEventDeferringSelectionChangeRequest)init;
- (BKSHIDEventDeferringSelectionChangeRequest)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (double)_init;
- (double)_initWithCopyOf:(double *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringSelectionChangeRequest

- (double)_initWithCopyOf:(double *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventDeferringSelectionChangeRequest *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      objc_storeStrong(of + 2, v3[2]);
      objc_storeStrong(of + 3, v3[3]);
      *(of + 4) = v3[4];
      *(of + 40) = *(v3 + 40);
    }
  }

  return of;
}

- (double)_init
{
  v22 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        v5 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v6 = NSStringFromSelector(sel__init);
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          *buf = 138544642;
          v11 = v6;
          v12 = 2114;
          v13 = v8;
          v14 = 2048;
          v15 = v1;
          v16 = 2114;
          v17 = @"BKSHIDEventDeferringSelectionChangeRequest.m";
          v18 = 1024;
          v19 = 49;
          v20 = 2114;
          v21 = v5;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v5 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186371F08);
      }
    }

    BSContinuousMachTimeNow();
    *(v1 + 4) = v4;
    v9.receiver = v1;
    v9.super_class = BKSHIDEventDeferringSelectionChangeRequest;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  return result;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy appendObject:? withName:?];
  v4 = [streamCopy appendObject:? withName:?];
  v5 = [streamCopy appendObject:? withName:?];
  v6 = [streamCopy appendTimeInterval:? withName:? decomposeUnits:?];
  v7 = [streamCopy appendBool:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventDeferringSelectionChangeRequest alloc];

  return [(BKSHIDEventDeferringSelectionChangeRequest *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSFloatEqualToFloat() && v5[40] == self->_ignoreModalities;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  [(BKSHIDEventDeferringSelectionPathSymbol *)self->_pathIdentifier hash];
  [(BKSHIDEventDeferringSelectionTarget *)self->_selectionTarget hash];
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

  if (self->_basis)
  {
    [v5 encodeObject:? forKey:?];
    coderCopy = v5;
  }

  [coderCopy encodeDouble:? forKey:?];
  [v5 encodeBool:? forKey:?];
}

- (BKSHIDEventDeferringSelectionChangeRequest)initWithCoder:(id)coder
{
  v15.receiver = self;
  v15.super_class = BKSHIDEventDeferringSelectionChangeRequest;
  coderCopy = coder;
  v4 = [(BKSHIDEventDeferringSelectionChangeRequest *)&v15 init];
  v5 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v6 = [v5 setWithObjects:{objc_opt_class(), 0, v15.receiver, v15.super_class}];
  v7 = [coderCopy decodeObjectOfClasses:? forKey:?];
  pathIdentifier = v4->_pathIdentifier;
  v4->_pathIdentifier = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  selectionTarget = v4->_selectionTarget;
  v4->_selectionTarget = v9;

  objc_opt_class();
  v11 = [coderCopy decodeObjectOfClass:? forKey:?];
  basis = v4->_basis;
  v4->_basis = v11;

  [coderCopy decodeDoubleForKey:?];
  v4->_timestamp = v13;
  LOBYTE(v6) = [coderCopy decodeBoolForKey:?];

  v4->_ignoreModalities = v6;
  return v4;
}

- (BKSHIDEventDeferringSelectionChangeRequest)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventDeferringSelectionChangeRequest.m";
    v9 = 1024;
    v10 = 38;
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
    v8 = @"BKSHIDEventDeferringSelectionChangeRequest.m";
    v9 = 1024;
    v10 = 43;
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
  _init = [(BKSHIDEventDeferringSelectionChangeRequest *)[BKSMutableHIDEventDeferringSelectionChangeRequest alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end