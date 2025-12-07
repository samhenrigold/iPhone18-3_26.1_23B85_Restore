@interface INJoinCallIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INJoinCallIntentResponse)initWithBackingStore:(id)store;
- (INJoinCallIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INJoinCallIntentResponse)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INJoinCallIntentResponse

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"code";
  code = [(INJoinCallIntentResponse *)self code];
  v3 = code;
  if (code < 7)
  {
    null = off_1E7288850[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v9[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (v3 >= 7)
  {
  }

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INJoinCallIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INJoinCallIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INJoinCallIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INJoinCallIntentResponseCodeInProgress"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INJoinCallIntentResponseCodeSuccess"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INJoinCallIntentResponseCodeFailure"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INJoinCallIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 6;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  result = [(INJoinCallIntentResponse *)self code];
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

- (INJoinCallIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INJoinCallIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INJoinCallIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INJoinCallIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INJoinCallIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v22 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 6)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288850[code];
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INJoinCallIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    codeCopy = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INJoinCallIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:activityCopy];

  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FD98[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type != 2)
  {
    v5 = v6;
  }

  v7 = 4;
  v8 = 5;
  if (requested)
  {
    v8 = 6;
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v7 = v8;
  }

  if (type <= 1)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

@end