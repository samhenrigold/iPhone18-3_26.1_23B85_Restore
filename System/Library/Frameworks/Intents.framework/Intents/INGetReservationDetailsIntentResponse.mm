@interface INGetReservationDetailsIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INGetReservationDetailsIntentResponse)initWithBackingStore:(id)store;
- (INGetReservationDetailsIntentResponse)initWithCode:(INGetReservationDetailsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity;
- (INGetReservationDetailsIntentResponse)initWithCoder:(id)coder;
- (INGetReservationDetailsIntentResponseCode)code;
- (NSArray)reservations;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (void)encodeWithCoder:(id)coder;
- (void)setReservations:(NSArray *)reservations;
@end

@implementation INGetReservationDetailsIntentResponse

- (id)_dictionaryRepresentation
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  code = [(INGetReservationDetailsIntentResponse *)self code];
  v4 = code;
  if (code < (INGetReservationDetailsIntentResponseCodeFailure|INGetReservationDetailsIntentResponseCodeInProgress))
  {
    null = *(&off_1E7287510 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v11[1] = @"reservations";
  v12[0] = null;
  reservations = [(INGetReservationDetailsIntentResponse *)self reservations];
  null2 = reservations;
  if (!reservations)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  if (!reservations)
  {
  }

  if (v4 >= 6)
  {
  }

  return v9;
}

- (void)setReservations:(NSArray *)reservations
{
  v4 = reservations;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToReservationWrappers(v4);

  [_responseMessagePBRepresentation setReservations:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSArray)reservations
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  reservations = [_responseMessagePBRepresentation reservations];
  v4 = INIntentSlotValueTransformFromReservationWrappers(reservations);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INGetReservationDetailsIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INGetReservationDetailsIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INGetReservationDetailsIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INGetReservationDetailsIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INGetReservationDetailsIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INGetReservationDetailsIntentResponseCodeFailureRequiringAppLaunch"];

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
  code = [(INGetReservationDetailsIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INGetReservationDetailsIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INGetReservationDetailsIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INGetReservationDetailsIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (INGetReservationDetailsIntentResponseCode)code
{
  v3.receiver = self;
  v3.super_class = INGetReservationDetailsIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INGetReservationDetailsIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INGetReservationDetailsIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INGetReservationDetailsIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INGetReservationDetailsIntentResponse)initWithCode:(INGetReservationDetailsIntentResponseCode)code userActivity:(NSUserActivity *)userActivity
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = userActivity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > INGetReservationDetailsIntentResponseCodeFailureRequiringAppLaunch)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E7287510 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INGetReservationDetailsIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    v17 = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INGetReservationDetailsIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:v6];

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