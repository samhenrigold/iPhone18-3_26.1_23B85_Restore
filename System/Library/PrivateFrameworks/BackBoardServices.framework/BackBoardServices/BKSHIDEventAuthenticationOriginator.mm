@interface BKSHIDEventAuthenticationOriginator
- (id)buildMessage:(id)message;
- (int64_t)validateMessage:(id)message;
@end

@implementation BKSHIDEventAuthenticationOriginator

- (int64_t)validateMessage:(id)message
{
  v43 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (!messageCopy)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 stringWithFormat:@"message", v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v21;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v23;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationOriginator.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 49;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A1320);
  }

  v6 = messageCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = MEMORY[0x1E696AEC0];
    classForCoder = [v6 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v26 = NSStringFromClass(classForCoder);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v24 stringWithFormat:@"message", v26, v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(a2);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v30;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v32;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = self;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationOriginator.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 49;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A145CLL);
  }

  key = self->_key;
  if (!key)
  {
    v14 = BKLogEventDelivery();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      v13 = 1;
      goto LABEL_15;
    }

    LOWORD(__dst.ctx[0]) = 0;
    v15 = "message auth failure: backboardd hasn't signed any events";
LABEL_17:
    _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, v15, &__dst, 2u);
    goto LABEL_14;
  }

  v8 = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = MEMORY[0x1E696AEC0];
    classForCoder2 = [(_BKSHIDEventAuthenticationKey *)v8 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v35 = NSStringFromClass(classForCoder2);
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = [v33 stringWithFormat:@"key", v35, v37];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel__verifySignatureWithInternalKey_);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v39;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v41;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = v6;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationMessage.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 263;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v38;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A159CLL);
  }

  _context = [(_BKSHIDEventAuthenticationKey *)v8 _context];
  memcpy(&__dst, _context, sizeof(__dst));
  v10 = [(BKSHIDEventAuthenticationMessage *)v6 _calculateSignatureWithHMACContext:?];
  v11 = [v6[11] length];
  if (v11 != [v10 length])
  {

    goto LABEL_13;
  }

  v12 = timingsafe_bcmp([v10 bytes], objc_msgSend(v6[11], "bytes"), v11);

  if (v12)
  {
LABEL_13:
    v14 = BKLogEventDelivery();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    LOWORD(__dst.ctx[0]) = 0;
    v15 = "message auth failure: contents failed to verify; message is corrupt";
    goto LABEL_17;
  }

  if ([v6 registrantEntitled])
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

LABEL_15:

  return v13;
}

- (id)buildMessage:(id)message
{
  v42 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (!messageCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"builder != nil" object:? file:? lineNumber:? description:?];
  }

  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  key = self->_key;
  if (!key)
  {
    v7 = +[_BKSHIDEventAuthenticationKey eventAuthenticationKey];
    v8 = self->_key;
    self->_key = v7;

    key = self->_key;
  }

  self->_keyLastAccessTime = v5 / 1000000000.0;
  v9 = key;
  v10 = messageCopy;
  v11 = objc_opt_self();
  v12 = v9;
  if (!v12)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v24 stringWithFormat:@"key", v26];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(sel__withInternalKey_buildMessage_);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v28;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v30;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = v11;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationMessage.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 249;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v27;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A18D0);
  }

  v13 = v12;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = MEMORY[0x1E696AEC0];
    classForCoder = [(_BKSHIDEventAuthenticationKey *)v13 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v33 = NSStringFromClass(classForCoder);
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = [v31 stringWithFormat:@"key", v33, v35];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(sel__withInternalKey_buildMessage_);
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      __dst.ctx[0] = 138544642;
      *&__dst.ctx[1] = v37;
      LOWORD(__dst.ctx[3]) = 2114;
      *(&__dst.ctx[3] + 2) = v39;
      HIWORD(__dst.ctx[5]) = 2048;
      *&__dst.ctx[6] = v11;
      LOWORD(__dst.ctx[8]) = 2114;
      *(&__dst.ctx[8] + 2) = @"BKSHIDEventAuthenticationMessage.m";
      HIWORD(__dst.ctx[10]) = 1024;
      __dst.ctx[11] = 249;
      LOWORD(__dst.ctx[12]) = 2114;
      *(&__dst.ctx[12] + 2) = v36;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &__dst, 0x3Au);
    }

    [v36 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863A1A0CLL);
  }

  if (!messageCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:@"builder != nil" object:? file:? lineNumber:? description:?];
  }

  _init = [(BKSHIDEventAuthenticationMessage *)[BKSMutableHIDEventAuthenticationMessage alloc] _init];
  v10[2](v10, _init);
  v15 = mach_continuous_time();
  if (_init)
  {
    _init[6] = v15;
    v16 = v13;
    v17 = [_init copy];
    _context = [(_BKSHIDEventAuthenticationKey *)v16 _context];

    memcpy(&__dst, _context, sizeof(__dst));
    v19 = [(BKSHIDEventAuthenticationMessage *)v17 _calculateSignatureWithHMACContext:?];
    v20 = [v19 copy];
    v21 = v17[11];
    v17[11] = v20;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end