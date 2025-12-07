@interface _CDErrorUtilities
+ (BOOL)isCoreDataFatalError:(id)error;
+ (BOOL)isCoreDataTemporaryError:(id)error;
+ (id)transformErrorForNSSecureCoding:(id)coding;
+ (void)simulateCrashWithDescription:(id)description;
@end

@implementation _CDErrorUtilities

+ (id)transformErrorForNSSecureCoding:(id)coding
{
  v16[1] = *MEMORY[0x1E69E9840];
  codingCopy = coding;
  v4 = codingCopy;
  if (codingCopy)
  {
    userInfo = [codingCopy userInfo];
    v6 = [userInfo count];

    if (v6)
    {
      v7 = MEMORY[0x1E696ABC0];
      domain = [v4 domain];
      code = [v4 code];
      v15 = *MEMORY[0x1E696A578];
      userInfo2 = [v4 userInfo];
      v11 = [userInfo2 description];
      v16[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v13 = [v7 errorWithDomain:domain code:code userInfo:v12];
    }

    else
    {
      v13 = v4;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isCoreDataFatalError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E695D488]];

  LOBYTE(userInfo) = [&unk_1F05EF680 containsObject:v4];
  return userInfo;
}

+ (BOOL)isCoreDataTemporaryError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x1E695D488]];

  LOBYTE(userInfo) = [&unk_1F05EF698 containsObject:v4];
  return userInfo;
}

+ (void)simulateCrashWithDescription:(id)description
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_CDErrorUtilities simulateCrashWithDescription:description];
  }
}

+ (void)simulateCrashWithDescription:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Simulating crash. Reason: %@", &v1, 0xCu);
}

@end