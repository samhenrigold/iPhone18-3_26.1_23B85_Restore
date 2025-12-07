@interface INEndWorkoutIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INEndWorkoutIntentResponse)initWithBackingStore:(id)store;
- (INEndWorkoutIntentResponse)initWithCode:(INEndWorkoutIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INEndWorkoutIntentResponse)initWithCoder:(id)coder;
- (INEndWorkoutIntentResponseCode)code;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INEndWorkoutIntentResponse

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"code";
  code = [(INEndWorkoutIntentResponse *)self code];
  v3 = code;
  if (code < 8)
  {
    null = off_1E727EEA0[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v9[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (v3 >= 8)
  {
  }

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeSuccess"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeHandleInApp"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INEndWorkoutIntentResponseCodeFailureNoMatchingWorkout"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INEndWorkoutIntentResponse *)self code];
  if ((code - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F0B8[code - 1];
  }
}

- (INEndWorkoutIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INEndWorkoutIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INEndWorkoutIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INEndWorkoutIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INEndWorkoutIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INEndWorkoutIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INEndWorkoutIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INEndWorkoutIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INEndWorkoutIntentResponse)initWithCode:(INEndWorkoutIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INEndWorkoutIntentResponseCodeSuccess)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727EEA0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INEndWorkoutIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INEndWorkoutIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 5)
  {
    return 0;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 6)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F09C[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 4)
  {
    v5 = type == 5;
  }

  v6 = 7;
  v7 = 3;
  if (requested)
  {
    v7 = 4;
  }

  if (!code)
  {
    v7 = 5;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end