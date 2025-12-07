@interface INPlayAnnouncementSoundIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INPlayAnnouncementSoundIntentResponse)initWithBackingStore:(id)store;
- (INPlayAnnouncementSoundIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INPlayAnnouncementSoundIntentResponse)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPlayAnnouncementSoundIntentResponse

- (id)_dictionaryRepresentation
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"code";
  code = [(INPlayAnnouncementSoundIntentResponse *)self code];
  v3 = code;
  if (code < 6)
  {
    null = off_1E7287FB0[code];
    v5 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v5 = 0;
  }

  v9[0] = null;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  if (v3 >= 6)
  {
  }

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INPlayAnnouncementSoundIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INPlayAnnouncementSoundIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INPlayAnnouncementSoundIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INPlayAnnouncementSoundIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INPlayAnnouncementSoundIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INPlayAnnouncementSoundIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INPlayAnnouncementSoundIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INPlayAnnouncementSoundIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INPlayAnnouncementSoundIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INPlayAnnouncementSoundIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INPlayAnnouncementSoundIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INPlayAnnouncementSoundIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INPlayAnnouncementSoundIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INPlayAnnouncementSoundIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INPlayAnnouncementSoundIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
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
      v9 = off_1E7287FB0[code];
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INPlayAnnouncementSoundIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    codeCopy = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INPlayAnnouncementSoundIntentResponse;
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