@interface INAppendToNoteIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INAppendToNoteIntentResponse)initWithBackingStore:(id)store;
- (INAppendToNoteIntentResponse)initWithCode:(INAppendToNoteIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INAppendToNoteIntentResponse)initWithCoder:(id)coder;
- (INAppendToNoteIntentResponseCode)code;
- (INNote)note;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setNote:(INNote *)note;
@end

@implementation INAppendToNoteIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INAppendToNoteIntentResponse *)self code];
  v4 = code;
  if (code < (INAppendToNoteIntentResponseCodeFailureCannotUpdatePasswordProtectedNote|INAppendToNoteIntentResponseCodeReady))
  {
    null = off_1E727E0B8[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v11[1] = @"note";
  v12[0] = null;
  note = [(INAppendToNoteIntentResponse *)self note];
  null2 = note;
  if (!note)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!note)
  {
  }

  if (v4 >= 7)
  {
  }

  return v9;
}

- (void)setNote:(INNote *)note
{
  v4 = note;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToNote(v4);

  [_responseMessagePBRepresentation setNote:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (INNote)note
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  note = [_responseMessagePBRepresentation note];
  v4 = INIntentSlotValueTransformFromNote(note);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INAppendToNoteIntentResponseCodeFailureCannotUpdatePasswordProtectedNote"];

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
  code = [(INAppendToNoteIntentResponse *)self code];
  if ((code - 1) > 5)
  {
    return 0;
  }

  else
  {
    return qword_18EE5F580[code - 1];
  }
}

- (INAppendToNoteIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INAppendToNoteIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INAppendToNoteIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INAppendToNoteIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INAppendToNoteIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INAppendToNoteIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INAppendToNoteIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INAppendToNoteIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INAppendToNoteIntentResponse)initWithCode:(INAppendToNoteIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INAppendToNoteIntentResponseCodeFailureCannotUpdatePasswordProtectedNote)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E727E0B8[code];
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INAppendToNoteIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INAppendToNoteIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if (code == 6)
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
  if ((code - 1) > 5)
  {
    return 3;
  }

  else
  {
    return dword_18EE5F568[code - 1];
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

  if (code == 1)
  {
    v7 = 6;
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