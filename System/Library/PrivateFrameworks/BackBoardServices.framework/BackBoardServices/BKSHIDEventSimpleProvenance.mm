@interface BKSHIDEventSimpleProvenance
+ (BKSHIDEventSimpleProvenance)new;
+ (id)_withInternalKey:(id)key buildMessage:(id)message;
+ (id)build:(id)build;
- (BKSHIDEventSimpleProvenance)init;
- (BKSHIDEventSimpleProvenance)initWithCoder:(id)coder;
- (BOOL)_verifySignatureWithInternalKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (id)_calculateSignatureWithHMACContext:(uint64_t)context;
- (id)_init;
- (id)_initWithCopyOf:(id *)of;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventSimpleProvenance

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
          v16 = @"BKSHIDEventSimpleProvenance.m";
          v17 = 1024;
          v18 = 48;
          v19 = 2114;
          v20 = v4;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v4 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18634DFC4);
      }
    }

    v8.receiver = v1;
    v8.super_class = BKSHIDEventSimpleProvenance;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

void __45__BKSHIDEventSimpleProvenance_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

- (id)_initWithCopyOf:(id *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSHIDEventSimpleProvenance *)of _init];
    of = _init;
    if (_init)
    {
      objc_storeStrong(_init + 1, v3[1]);
      of[2] = v3[2];
      *(of + 6) = *(v3 + 6);
      of[4] = v3[4];
    }
  }

  return of;
}

- (BOOL)_verifySignatureWithInternalKey:(id)key
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"key", v14];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(a2);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v16;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v18;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 234;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v15;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636E564);
  }

  v6 = keyCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v21 = NSStringFromClass(classForCoder);
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [v19 stringWithFormat:@"key", v21, v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v25;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v27;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 234;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v24;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v24 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636E6A0);
  }

  _context = [(_BKSHIDEventAuthenticationKey *)v6 _context];
  memcpy(&__dst, _context, sizeof(__dst));
  v8 = [(BKSHIDEventSimpleProvenance *)self _calculateSignatureWithHMACContext:?];
  v9 = [(NSData *)self->_signature length];
  v10 = v9 == [v8 length] && timingsafe_bcmp(objc_msgSend(v8, "bytes"), -[NSData bytes](self->_signature, "bytes"), v9) == 0;

  return v10;
}

- (id)_calculateSignatureWithHMACContext:(uint64_t)context
{
  v6 = *MEMORY[0x1E69E9840];
  if (context)
  {
    contextCopy = context;
    CCHmacUpdate(ctx, (context + 32), 8uLL);
    CCHmacUpdate(ctx, (contextCopy + 24), 4uLL);
    CCHmacUpdate(ctx, (contextCopy + 16), 8uLL);
    CCHmacFinal(ctx, macOut);
    context = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
  }

  return context;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy appendObject:? withName:?];
  v4 = [streamCopy appendInteger:? withName:?];
  v5 = [streamCopy appendInteger:? withName:?];
  v6 = [streamCopy appendInt64:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableHIDEventSimpleProvenance alloc];

  return [(BKSHIDEventSimpleProvenance *)&v4->super.super.isa _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = BSEqualObjects() && v5[2] == self->_versionedPID && *(v5 + 6) == self->_eventType && v5[4] == self->_timestamp;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  signature = self->_signature;
  if (signature)
  {

    return [(NSData *)signature hash];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    [v4 hash];

    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [v5 hash];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v6 hash];

    return BSHashPurifyNS();
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_signature)
  {
    [coderCopy encodeObject:? forKey:?];
    coderCopy = v5;
  }

  [coderCopy encodeInteger:? forKey:?];
  [v5 encodeInteger:? forKey:?];
  [v5 encodeInt64:? forKey:?];
}

- (BKSHIDEventSimpleProvenance)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = BKSHIDEventSimpleProvenance;
  coderCopy = coder;
  v4 = [(BKSHIDEventSimpleProvenance *)&v9 init];
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:v9.receiver forKey:v9.super_class];
  signature = v4->_signature;
  v4->_signature = v5;

  v4->_versionedPID = [coderCopy decodeIntegerForKey:?];
  v4->_eventType = [coderCopy decodeIntegerForKey:?];
  v7 = [coderCopy decodeInt64ForKey:?];

  v4->_timestamp = v7;
  return v4;
}

- (BKSHIDEventSimpleProvenance)init
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventSimpleProvenance.m";
    v9 = 1024;
    v10 = 37;
    v11 = 2114;
    v12 = v2;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
  }

  [v2 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)_withInternalKey:(id)key buildMessage:(id)message
{
  v37 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  messageCopy = message;
  v9 = keyCopy;
  if (!v9)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = [v19 stringWithFormat:@"key", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v23;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v25;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 221;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v22;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636EEC4);
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E696AEC0];
    classForCoder = [v10 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v28 = NSStringFromClass(classForCoder);
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = [v26 stringWithFormat:@"key", v28, v30];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v32 = NSStringFromSelector(a2);
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v32;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v34;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventSimpleProvenance.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 221;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v31;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v31 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18636F000);
  }

  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"builder != nil" object:? file:? lineNumber:? description:?];
  }

  _init = [(BKSHIDEventSimpleProvenance *)[BKSMutableHIDEventSimpleProvenance alloc] _init];
  messageCopy[2](messageCopy, _init);
  mach_continuous_time();
  [_init setTimestamp:?];
  if (_init)
  {
    v12 = v10;
    v13 = [_init copy];
    _context = [(_BKSHIDEventAuthenticationKey *)v12 _context];

    memcpy(&__dst, _context, sizeof(__dst));
    v15 = [(BKSHIDEventSimpleProvenance *)v13 _calculateSignatureWithHMACContext:?];
    v16 = [v15 copy];
    v17 = v13[1];
    v13[1] = v16;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BKSHIDEventSimpleProvenance)new
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    v5 = 138544130;
    v6 = v3;
    v7 = 2114;
    v8 = @"BKSHIDEventSimpleProvenance.m";
    v9 = 1024;
    v10 = 42;
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
  _init = [(BKSHIDEventSimpleProvenance *)[BKSMutableHIDEventSimpleProvenance alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

@end