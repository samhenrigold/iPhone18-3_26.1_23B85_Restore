@interface CUTPowerAssertion
- (CUTPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout;
- (void)dealloc;
@end

@implementation CUTPowerAssertion

- (CUTPowerAssertion)initWithIdentifier:(id)identifier timeout:(double)timeout
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v36.receiver = self;
  v36.super_class = CUTPowerAssertion;
  v7 = [(CUTPowerAssertion *)&v36 init];
  if (v7)
  {
    v8 = objc_alloc_init(_CUTPowerAssertion);
    internal = v7->_internal;
    v7->_internal = v8;

    v10 = v7->_internal;
    if (timeout == 0.0)
    {
      v11 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, identifierCopy, v10 + 2);
    }

    else
    {
      v11 = IOPMAssertionCreateWithDescription(@"NoIdleSleepAssertion", identifierCopy, identifierCopy, 0, 0, timeout, @"TimeoutActionTurnOff", v10 + 2);
    }

    v14 = v11;
    if (v11)
    {
      *(v7->_internal + 2) = 0;
      v15 = objc_msgSend_power(CUTLog, v12, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_1B23310A8(identifierCopy, v14, v15);
      }

      v7 = 0;
    }

    else
    {
      v16 = objc_msgSend_copy(identifierCopy, v12, v13);
      v17 = v7->_internal;
      v18 = v17[2];
      v17[2] = v16;

      v19 = objc_autoreleasePoolPush();
      v22 = objc_msgSend_callStackReturnAddresses(MEMORY[0x1E696AF00], v20, v21);
      v23 = v7->_internal;
      v24 = v23[3];
      v23[3] = v22;

      v27 = objc_msgSend_power(CUTLog, v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v38 = identifierCopy;
        _os_log_impl(&dword_1B2321000, v27, OS_LOG_TYPE_DEFAULT, "Created power assertion {identifier: %{public}@}", buf, 0xCu);
      }

      v30 = objc_msgSend_power(CUTLog, v28, v29);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);

      if (v31)
      {
        v34 = objc_msgSend_power(CUTLog, v32, v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_1B2331130();
        }
      }

      objc_autoreleasePoolPop(v19);
    }
  }

  return v7;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_power(CUTLog, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(self->_internal + 2);
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, "Releasing power assertion {identifier: %{public}@}", buf, 0xCu);
  }

  v8 = objc_msgSend_power(CUTLog, v6, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    v12 = objc_msgSend_power(CUTLog, v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1B2331130();
    }
  }

  v13 = *(self->_internal + 2);
  if (v13)
  {
    v14 = IOPMAssertionRelease(v13);
    if (v14)
    {
      v17 = v14;
      v18 = objc_msgSend_power(CUTLog, v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1B23311B8(&self->_internal, v17, v18);
      }
    }
  }

  v19.receiver = self;
  v19.super_class = CUTPowerAssertion;
  [(CUTPowerAssertion *)&v19 dealloc];
}

@end