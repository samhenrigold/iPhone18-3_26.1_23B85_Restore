@interface LACLocalBackoffCounter
- (void)currentBackoffErrorWithReply:(id)reply;
@end

@implementation LACLocalBackoffCounter

- (void)currentBackoffErrorWithReply:(id)reply
{
  v16[2] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v4 = MKBGetDeviceLockStateInfo();
  v5 = [v4 objectForKey:*MEMORY[0x1E69B1A28]];
  v6 = v5;
  if (v5 && (v5 = [v5 doubleValue], v7 > 0.0))
  {
    v8 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v5 = [v8 dateWithTimeIntervalSinceNow:?];
    v9 = v5;
    if (v5)
    {
      v15[0] = *MEMORY[0x1E696A578];
      v15[1] = @"RetryTime";
      v16[0] = @"Passcode backoff";
      v16[1] = v5;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v11 = [LACError errorWithCode:-1 userInfo:v10];

      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 0;
LABEL_7:
  v12 = LACLogDefault(v5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "backoff: %{public}@", &v13, 0xCu);
  }

  replyCopy[2](replyCopy, v11);
}

@end