@interface EMMessageIDRandomizer
+ (OS_os_log)log;
+ (id)_createRandomizedStringForMessageID:(int64_t)d;
+ (id)_findExistingStringError:(id *)error messageID:(int64_t)d;
+ (id)_findOrCreateRandomizedStringForMessageID:(int64_t)d;
+ (id)_queryKeychainError:(id *)error messageID:(int64_t)d;
+ (id)randomizedStringForGlobalMessageID:(int64_t)d;
+ (void)_deleteExpiredStringForMessageID:(int64_t)d;
- (EMMessageIDRandomizer)init;
@end

@implementation EMMessageIDRandomizer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__EMMessageIDRandomizer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_22 != -1)
  {
    dispatch_once(&log_onceToken_22, block);
  }

  v2 = log_log_22;

  return v2;
}

void __28__EMMessageIDRandomizer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_22;
  log_log_22 = v1;
}

- (EMMessageIDRandomizer)init
{
  v3.receiver = self;
  v3.super_class = EMMessageIDRandomizer;
  return [(EMMessageIDRandomizer *)&v3 init];
}

+ (id)randomizedStringForGlobalMessageID:(int64_t)d
{
  v11 = *MEMORY[0x1E69E9840];
  lock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&lock);
  v5 = [self _findOrCreateRandomizedStringForMessageID:d];
  os_unfair_lock_unlock(&lock);
  if (!v5)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = EFDeviceUnlockedSinceBoot();
      [(EMMessageIDRandomizer *)v7 randomizedStringForGlobalMessageID:buf, v6];
    }
  }

  return v5;
}

+ (id)_findOrCreateRandomizedStringForMessageID:(int64_t)d
{
  v10 = 0;
  v5 = [self _findExistingStringError:&v10 messageID:d];
  v6 = v10;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [self _createRandomizedStringForMessageID:d];
  }

  v8 = v7;

  return v8;
}

+ (id)_queryKeychainError:(id *)error messageID:(int64_t)d
{
  v24[5] = *MEMORY[0x1E69E9840];
  v24[0] = *MEMORY[0x1E697B008];
  v5 = *MEMORY[0x1E697AE88];
  v23[0] = *MEMORY[0x1E697AFF8];
  v23[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v24[1] = v6;
  v7 = *MEMORY[0x1E697B310];
  v23[2] = *MEMORY[0x1E697B318];
  v23[3] = v7;
  v24[2] = MEMORY[0x1E695E118];
  v24[3] = MEMORY[0x1E695E118];
  v23[4] = *MEMORY[0x1E697B260];
  v24[4] = &unk_1F461CCA8;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:5];

  result = 0;
  v9 = SecItemCopyMatching(v8, &result);
  v10 = v9;
  if (v9)
  {
    if (v9 == -25300)
    {
      v11 = [objc_opt_class() log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_1C6655000, v11, OS_LOG_TYPE_DEFAULT, "No randomized string found", v21, 2u);
      }
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(EMMessageIDRandomizer *)v10 _queryKeychainError:v13 messageID:v14, v15, v16, v17, v18, v19];
      }

      if (error)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
        *error = v12 = 0;
        goto LABEL_13;
      }
    }
  }

  else if (result)
  {
    CFAutorelease(result);
    v12 = result;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

+ (id)_findExistingStringError:(id *)error messageID:(int64_t)d
{
  v6 = [self _queryKeychainError:error messageID:?];
  v7 = v6;
  if (v6)
  {
    firstObject = [v6 firstObject];
    v9 = [firstObject objectForKeyedSubscript:*MEMORY[0x1E697ACD0]];

    if ([v9 ef_isMoreThanTimeIntervalAgo:86400.0])
    {
      [self _deleteExpiredStringForMessageID:d];
      v10 = 0;
    }

    else
    {
      firstObject2 = [v7 firstObject];
      v12 = [firstObject2 objectForKeyedSubscript:*MEMORY[0x1E697B3C0]];

      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)_createRandomizedStringForMessageID:(int64_t)d
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Will create new randomized string for messageID %lld", buf, 0xCu);
  }

  ef_UUID = [MEMORY[0x1E696AEC0] ef_UUID];
  v6 = [ef_UUID dataUsingEncoding:4];
  v7 = *MEMORY[0x1E697AFF8];
  v25[0] = *MEMORY[0x1E697B3C0];
  v25[1] = v7;
  v8 = *MEMORY[0x1E697B008];
  v26[0] = v6;
  v26[1] = v8;
  v26[2] = @"com.apple.mail.categories";
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{d, v25[0], v7, *MEMORY[0x1E697ABD0], *MEMORY[0x1E697AE88]}];
  v26[3] = v9;
  v25[4] = *MEMORY[0x1E697AD00];
  v10 = MEMORY[0x1E696AD98];
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  v12 = [v10 numberWithInt:{objc_msgSend(currentDevice, "isInternal") ^ 1}];
  v25[5] = *MEMORY[0x1E697ABD8];
  v13 = *MEMORY[0x1E697ABE0];
  v26[4] = v12;
  v26[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:6];

  v15 = SecItemAdd(v14, 0);
  if (v15)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(EMMessageIDRandomizer *)v15 _createRandomizedStringForMessageID:v16, v17, v18, v19, v20, v21, v22];
    }

    v23 = 0;
  }

  else
  {
    v23 = ef_UUID;
  }

  return v23;
}

+ (void)_deleteExpiredStringForMessageID:(int64_t)d
{
  v19[3] = *MEMORY[0x1E69E9840];
  v4 = [objc_opt_class() log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_1C6655000, v4, OS_LOG_TYPE_DEFAULT, "Will delete expired randomized string", v17, 2u);
  }

  v5 = *MEMORY[0x1E697B008];
  v6 = *MEMORY[0x1E697ABD0];
  v18[0] = *MEMORY[0x1E697AFF8];
  v18[1] = v6;
  v19[0] = v5;
  v19[1] = @"com.apple.mail.categories";
  v18[2] = *MEMORY[0x1E697AE88];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v19[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v9 = SecItemDelete(v8);
  if (v9)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(EMMessageIDRandomizer *)v9 _deleteExpiredStringForMessageID:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

+ (void)randomizedStringForGlobalMessageID:(os_log_t)log .cold.1(char a1, uint8_t *buf, os_log_t log)
{
  v3 = @"NO";
  if (a1)
  {
    v3 = @"YES";
  }

  *buf = 138412290;
  *(buf + 4) = v3;
  _os_log_fault_impl(&dword_1C6655000, log, OS_LOG_TYPE_FAULT, "Could not generate randomized string. Device unlocked since boot: %@", buf, 0xCu);
}

+ (void)_queryKeychainError:(uint64_t)a3 messageID:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1C6655000, a2, a3, "Error finding existing randomized string: %d", a5, a6, a7, a8, v8);
}

+ (void)_createRandomizedStringForMessageID:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1C6655000, a2, a3, "Error creating new randomized string: %d", a5, a6, a7, a8, v8);
}

+ (void)_deleteExpiredStringForMessageID:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  OUTLINED_FUNCTION_0_5(&dword_1C6655000, a2, a3, "Error deleting expired randomized string: %d", a5, a6, a7, a8, v8);
}

@end