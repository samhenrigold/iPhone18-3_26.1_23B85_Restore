@interface INStartPhotoPlaybackIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INStartPhotoPlaybackIntentResponse)initWithBackingStore:(id)store;
- (INStartPhotoPlaybackIntentResponse)initWithCode:(INStartPhotoPlaybackIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INStartPhotoPlaybackIntentResponse)initWithCoder:(id)coder;
- (INStartPhotoPlaybackIntentResponseCode)code;
- (NSNumber)searchResultsCount;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setSearchResultsCount:(NSNumber *)searchResultsCount;
@end

@implementation INStartPhotoPlaybackIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INStartPhotoPlaybackIntentResponse *)self code];
  v4 = code;
  if (code < (INStartPhotoPlaybackIntentResponseCodeFailureRequiringAppLaunch|INStartPhotoPlaybackIntentResponseCodeContinueInApp))
  {
    null = off_1E727D6D8[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v11[1] = @"searchResultsCount";
  v12[0] = null;
  searchResultsCount = [(INStartPhotoPlaybackIntentResponse *)self searchResultsCount];
  null2 = searchResultsCount;
  if (!searchResultsCount)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!searchResultsCount)
  {
  }

  if (v4 >= 6)
  {
  }

  return v9;
}

- (void)setSearchResultsCount:(NSNumber *)searchResultsCount
{
  v7 = searchResultsCount;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if (v7)
  {
    [_responseMessagePBRepresentation setSearchResultsCount:{-[NSNumber intValue](v7, "intValue")}];
  }

  else
  {
    [_responseMessagePBRepresentation setHasSearchResultsCount:0];
  }

  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSNumber)searchResultsCount
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  if ([_responseMessagePBRepresentation hasSearchResultsCount])
  {
    v4 = MEMORY[0x1E696AD98];
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    v6 = [v4 numberWithInt:{objc_msgSend(_responseMessagePBRepresentation2, "searchResultsCount")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INStartPhotoPlaybackIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INStartPhotoPlaybackIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INStartPhotoPlaybackIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INStartPhotoPlaybackIntentResponseCodeFailure"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INStartPhotoPlaybackIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INStartPhotoPlaybackIntentResponseCodeFailureAppConfigurationRequired"];

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
  code = [(INStartPhotoPlaybackIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F000[code - 1];
  }
}

- (INStartPhotoPlaybackIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INStartPhotoPlaybackIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INStartPhotoPlaybackIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INStartPhotoPlaybackIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INStartPhotoPlaybackIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INStartPhotoPlaybackIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INStartPhotoPlaybackIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INStartPhotoPlaybackIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INStartPhotoPlaybackIntentResponse)initWithCode:(INStartPhotoPlaybackIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INStartPhotoPlaybackIntentResponseCodeFailureAppConfigurationRequired)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727D6D8[code];
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INStartPhotoPlaybackIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INStartPhotoPlaybackIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 5)
  {
    return 1;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5EFE8[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  if (requested)
  {
    v5 = 4;
  }

  if (code == 1)
  {
    v5 = 5;
  }

  v6 = 2;
  if (type != 4)
  {
    v6 = type == 5;
  }

  if (type == 1)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

@end