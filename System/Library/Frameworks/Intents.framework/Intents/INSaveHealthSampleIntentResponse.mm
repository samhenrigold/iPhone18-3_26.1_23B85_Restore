@interface INSaveHealthSampleIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (INDateComponentsRange)recordDate;
- (INSaveHealthSampleIntentResponse)initWithBackingStore:(id)store;
- (INSaveHealthSampleIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INSaveHealthSampleIntentResponse)initWithCoder:(id)coder;
- (NSArray)sampleUuids;
- (NSArray)valuesDefaultUnits;
- (NSArray)valuesUserProvidedUnits;
- (NSString)defaultUnit;
- (NSString)punchoutUrl;
- (NSString)userProvidedUnit;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaultUnit:(id)unit;
- (void)setPunchoutUrl:(id)url;
- (void)setRecordDate:(id)date;
- (void)setSampleUuids:(id)uuids;
- (void)setUserProvidedUnit:(id)unit;
- (void)setValuesDefaultUnits:(id)units;
- (void)setValuesUserProvidedUnits:(id)units;
@end

@implementation INSaveHealthSampleIntentResponse

- (id)_dictionaryRepresentation
{
  v29[8] = *MEMORY[0x1E69E9840];
  v28[0] = @"code";
  code = [(INSaveHealthSampleIntentResponse *)self code];
  v27 = code;
  if (code < 9)
  {
    null = *(&off_1E727E6E8 + code);
    v26 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v26 = 0;
  }

  v24 = null;
  v29[0] = null;
  v28[1] = @"sampleUuids";
  sampleUuids = [(INSaveHealthSampleIntentResponse *)self sampleUuids];
  v6 = sampleUuids;
  if (!sampleUuids)
  {
    sampleUuids = [MEMORY[0x1E695DFB0] null];
  }

  v23 = sampleUuids;
  v29[1] = sampleUuids;
  v28[2] = @"recordDate";
  recordDate = [(INSaveHealthSampleIntentResponse *)self recordDate];
  v8 = recordDate;
  if (!recordDate)
  {
    recordDate = [MEMORY[0x1E695DFB0] null];
  }

  v22 = recordDate;
  v29[2] = recordDate;
  v28[3] = @"defaultUnit";
  defaultUnit = [(INSaveHealthSampleIntentResponse *)self defaultUnit];
  v10 = defaultUnit;
  if (!defaultUnit)
  {
    defaultUnit = [MEMORY[0x1E695DFB0] null];
  }

  v21 = defaultUnit;
  v29[3] = defaultUnit;
  v28[4] = @"valuesDefaultUnits";
  valuesDefaultUnits = [(INSaveHealthSampleIntentResponse *)self valuesDefaultUnits];
  v12 = valuesDefaultUnits;
  if (!valuesDefaultUnits)
  {
    valuesDefaultUnits = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = valuesDefaultUnits;
  v28[5] = @"userProvidedUnit";
  userProvidedUnit = [(INSaveHealthSampleIntentResponse *)self userProvidedUnit];
  null2 = userProvidedUnit;
  if (!userProvidedUnit)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null2;
  v28[6] = @"valuesUserProvidedUnits";
  valuesUserProvidedUnits = [(INSaveHealthSampleIntentResponse *)self valuesUserProvidedUnits];
  null3 = valuesUserProvidedUnits;
  if (!valuesUserProvidedUnits)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = null3;
  v28[7] = @"punchoutUrl";
  punchoutUrl = [(INSaveHealthSampleIntentResponse *)self punchoutUrl];
  null4 = punchoutUrl;
  if (!punchoutUrl)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = null4;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
  if (!punchoutUrl)
  {
  }

  if (!valuesUserProvidedUnits)
  {
  }

  if (!userProvidedUnit)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (v27 >= 9)
  {
  }

  return v25;
}

- (void)setPunchoutUrl:(id)url
{
  urlCopy = url;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(urlCopy);

  [_responseMessagePBRepresentation setPunchoutUrl:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setValuesUserProvidedUnits:(id)units
{
  unitsCopy = units;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToWellnessValues(unitsCopy);

  [_responseMessagePBRepresentation setValuesUserProvidedUnits:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setUserProvidedUnit:(id)unit
{
  unitCopy = unit;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(unitCopy);

  [_responseMessagePBRepresentation setUserProvidedUnit:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setValuesDefaultUnits:(id)units
{
  unitsCopy = units;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToWellnessValues(unitsCopy);

  [_responseMessagePBRepresentation setValuesDefaultUnits:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setDefaultUnit:(id)unit
{
  unitCopy = unit;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(unitCopy);

  [_responseMessagePBRepresentation setDefaultUnit:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setRecordDate:(id)date
{
  dateCopy = date;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToDateTimeRange(dateCopy);

  [_responseMessagePBRepresentation setRecordDate:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setSampleUuids:(id)uuids
{
  uuidsCopy = uuids;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToStrings(uuidsCopy);

  [_responseMessagePBRepresentation setSampleUuids:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSString)punchoutUrl
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  punchoutUrl = [_responseMessagePBRepresentation punchoutUrl];
  v4 = INIntentSlotValueTransformFromString(punchoutUrl);

  return v4;
}

- (NSArray)valuesUserProvidedUnits
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  valuesUserProvidedUnits = [_responseMessagePBRepresentation valuesUserProvidedUnits];
  v4 = INIntentSlotValueTransformFromWellnessValues(valuesUserProvidedUnits);

  return v4;
}

- (NSString)userProvidedUnit
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  userProvidedUnit = [_responseMessagePBRepresentation userProvidedUnit];
  v4 = INIntentSlotValueTransformFromString(userProvidedUnit);

  return v4;
}

- (NSArray)valuesDefaultUnits
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  valuesDefaultUnits = [_responseMessagePBRepresentation valuesDefaultUnits];
  v4 = INIntentSlotValueTransformFromWellnessValues(valuesDefaultUnits);

  return v4;
}

- (NSString)defaultUnit
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  defaultUnit = [_responseMessagePBRepresentation defaultUnit];
  v4 = INIntentSlotValueTransformFromString(defaultUnit);

  return v4;
}

- (INDateComponentsRange)recordDate
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  recordDate = [_responseMessagePBRepresentation recordDate];
  v4 = INIntentSlotValueTransformFromDateTimeRange(recordDate);

  return v4;
}

- (NSArray)sampleUuids
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  sampleUuids = [_responseMessagePBRepresentation sampleUuids];
  v4 = INIntentSlotValueTransformFromStrings(sampleUuids);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureUnsupportedSampleType"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureUnsupportedUnitType"])
  {
    v5 = 7;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INSaveHealthSampleIntentResponseCodeFailureValueOutOfRange"];

  if (v6)
  {
    return 8;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INSaveHealthSampleIntentResponse *)self code];
  if ((code - 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FAA0[code - 1];
  }
}

- (INSaveHealthSampleIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INSaveHealthSampleIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INSaveHealthSampleIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INSaveHealthSampleIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INSaveHealthSampleIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v22 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E727E6E8 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v15 = "[INSaveHealthSampleIntentResponse initWithCode:userActivity:]";
    v16 = 2048;
    codeCopy = code;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v13.receiver = self;
  v13.super_class = INSaveHealthSampleIntentResponse;
  v11 = [(INIntentResponse *)&v13 _initWithCode:code userActivity:activityCopy];

  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) < 3)
  {
    return code - 5;
  }

  else
  {
    return 0x7FFFFFFF;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 7)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FA80[code - 1];
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

  if ((code - 1) >= 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = (code + 5);
  }

  if (type != 1)
  {
    v8 = 0;
  }

  if (type)
  {
    v6 = v8;
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