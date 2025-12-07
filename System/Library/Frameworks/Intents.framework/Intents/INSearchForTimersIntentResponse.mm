@interface INSearchForTimersIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INSearchForTimersIntentResponse)initWithBackingStore:(id)store;
- (INSearchForTimersIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSearchForTimersIntentResponse)initWithCoder:(id)coder;
- (NSArray)matchedTimers;
- (NSArray)unmatchedTimers;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setMatchedTimers:(id)timers;
- (void)setUnmatchedTimers:(id)timers;
@end

@implementation INSearchForTimersIntentResponse

- (id)_dictionaryRepresentation
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"code";
  code = [(INSearchForTimersIntentResponse *)self code];
  v4 = code;
  if (code < 6)
  {
    null = *(&off_1E72861A8 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v14[0] = null;
  v13[1] = @"matchedTimers";
  matchedTimers = [(INSearchForTimersIntentResponse *)self matchedTimers];
  null2 = matchedTimers;
  if (!matchedTimers)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"unmatchedTimers";
  unmatchedTimers = [(INSearchForTimersIntentResponse *)self unmatchedTimers];
  null3 = unmatchedTimers;
  if (!unmatchedTimers)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!unmatchedTimers)
  {
  }

  if (!matchedTimers)
  {
  }

  if (v4 >= 6)
  {
  }

  return v11;
}

- (void)setUnmatchedTimers:(id)timers
{
  timersCopy = timers;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTimers(timersCopy);

  [_responseMessagePBRepresentation setUnmatchedTimers:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setMatchedTimers:(id)timers
{
  timersCopy = timers;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToTimers(timersCopy);

  [_responseMessagePBRepresentation setMatchedTimers:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)unmatchedTimers
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  unmatchedTimers = [_responseMessagePBRepresentation unmatchedTimers];
  v4 = INIntentSlotValueTransformFromTimers(unmatchedTimers);

  return v4;
}

- (NSArray)matchedTimers
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  matchedTimers = [_responseMessagePBRepresentation matchedTimers];
  v4 = INIntentSlotValueTransformFromTimers(matchedTimers);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSearchForTimersIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSearchForTimersIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSearchForTimersIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSearchForTimersIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSearchForTimersIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSearchForTimersIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INSearchForTimersIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INSearchForTimersIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSearchForTimersIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSearchForTimersIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSearchForTimersIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSearchForTimersIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSearchForTimersIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSearchForTimersIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSearchForTimersIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v22 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E72861A8 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INSearchForTimersIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    codeCopy = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INSearchForTimersIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:activityCopy];

  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = 4;
  if (requested)
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

  if (type <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end