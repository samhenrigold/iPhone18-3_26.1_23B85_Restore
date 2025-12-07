@interface _DKEventAdapter
- (BOOL)isEqual:(id)equal;
- (double)valueDouble;
- (id)customMetadata;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)streamName;
- (id)structuredMetadata;
- (id)uuid;
- (id)uuidHash;
- (id)valueString;
- (int64_t)endDayOfWeek;
- (int64_t)endSecondOfDay;
- (int64_t)secondsFromGMT;
- (int64_t)startDayOfWeek;
- (int64_t)startSecondOfDay;
- (int64_t)valueInteger;
- (int64_t)valueTypeCode;
- (signed)valueClass;
@end

@implementation _DKEventAdapter

- (id)uuid
{
  uUID = [(_DKObject *)self->_dkEvent UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)uuidHash
{
  v2 = MEMORY[0x1E696AD98];
  uuid = [(_DKEventAdapter *)self uuid];
  v4 = [v2 numberWithUnsignedInteger:{objc_msgSend(uuid, "hash")}];

  return v4;
}

- (id)streamName
{
  stream = [(_DKEvent *)self->_dkEvent stream];
  name = [stream name];

  return name;
}

- (int64_t)secondsFromGMT
{
  timeZone = [(_DKEvent *)self->_dkEvent timeZone];
  secondsFromGMT = [timeZone secondsFromGMT];

  return secondsFromGMT;
}

- (int64_t)startSecondOfDay
{
  startDate = [(_DKEvent *)self->_dkEvent startDate];
  [startDate timeIntervalSinceReferenceDate];
  v4 = v3 % 86400;

  return v4;
}

- (int64_t)startDayOfWeek
{
  startDayOfWeek = self->_startDayOfWeek;
  if (startDayOfWeek)
  {

    return [(NSNumber *)startDayOfWeek longLongValue];
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    startDate = [(_DKEvent *)self->_dkEvent startDate];
    v7 = [currentCalendar components:512 fromDate:startDate];
    weekday = [v7 weekday];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:weekday];
    v10 = self->_startDayOfWeek;
    self->_startDayOfWeek = v9;

    return weekday;
  }
}

- (int64_t)endSecondOfDay
{
  endDate = [(_DKEvent *)self->_dkEvent endDate];
  [endDate timeIntervalSinceReferenceDate];
  v4 = v3 % 86400;

  return v4;
}

- (int64_t)endDayOfWeek
{
  endDayOfWeek = self->_endDayOfWeek;
  if (endDayOfWeek)
  {

    return [(NSNumber *)endDayOfWeek longLongValue];
  }

  else
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    endDate = [(_DKEvent *)self->_dkEvent endDate];
    v7 = [currentCalendar components:512 fromDate:endDate];
    weekday = [v7 weekday];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:weekday];
    v10 = self->_endDayOfWeek;
    self->_endDayOfWeek = v9;

    return weekday;
  }
}

- (double)valueDouble
{
  value = [(_DKEvent *)self->_dkEvent value];
  [value doubleValue];
  v4 = v3;

  return v4;
}

- (int64_t)valueInteger
{
  value = [(_DKEvent *)self->_dkEvent value];
  integerValue = [value integerValue];

  return integerValue;
}

- (id)valueString
{
  value = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    value2 = [(_DKEvent *)self->_dkEvent value];
    stringValue = [value2 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (signed)valueClass
{
  value = [(_DKEvent *)self->_dkEvent value];
  uUID = [value UUID];

  if (uUID)
  {
    return 0;
  }

  value2 = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  value3 = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    return 2;
  }

  value4 = [(_DKEvent *)self->_dkEvent value];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (int64_t)valueTypeCode
{
  if (![(_DKEventAdapter *)self valueClass])
  {
    return 0;
  }

  value = [(_DKEvent *)self->_dkEvent value];
  typeCode = [value typeCode];

  return typeCode;
}

- (id)structuredMetadata
{
  v25 = *MEMORY[0x1E69E9840];
  structuredMetadata = self->_structuredMetadata;
  if (structuredMetadata)
  {
    v3 = structuredMetadata;
  }

  else
  {
    v5 = objc_opt_new();
    v6 = objc_autoreleasePoolPush();
    metadata = [(_DKEvent *)self->_dkEvent metadata];
    v8 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = metadata;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v8 objectForKeyedSubscript:{v14, v20}];
          if (v15)
          {
            v16 = [v9 objectForKeyedSubscript:v14];
            [v5 setObject:v16 forKeyedSubscript:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    objc_autoreleasePoolPop(v6);
    v17 = [v5 copy];
    v18 = self->_structuredMetadata;
    self->_structuredMetadata = v17;

    v3 = v17;
  }

  return v3;
}

- (id)customMetadata
{
  v53 = *MEMORY[0x1E69E9840];
  customMetadata = self->_customMetadata;
  if (customMetadata)
  {
    v3 = customMetadata;
    goto LABEL_36;
  }

  v5 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  metadata = [(_DKEvent *)self->_dkEvent metadata];
  v7 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = metadata;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v9)
  {
    goto LABEL_35;
  }

  v10 = v9;
  v11 = 0x1E696A000uLL;
  v12 = *v45;
  v41 = v5;
  v42 = v7;
  v43 = *v45;
  do
  {
    v13 = 0;
    do
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v44 + 1) + 8 * v13);
      v15 = [v8 objectForKeyedSubscript:v14];
      v16 = [v7 objectForKeyedSubscript:v14];
      if (!v16)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = *(v11 + 3776);
          v18 = v15;
          v19 = [_CDHashUtilities md5ForString:v18];
          [v17 stringWithFormat:@"%@S", v19];
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v15;
          IsFloatType = CFNumberIsFloatType(v19);
          v22 = *(v11 + 3776);
          if (IsFloatType)
          {
            v23 = [v22 stringWithFormat:@"%@D", v19];
            v20 = v23;
            if (v19)
            {
              v50[0] = @"name";
              v50[1] = @"doubleValue";
              v51[0] = v14;
              v51[1] = v19;
              v50[2] = @"valueHash";
              v24 = &stru_1F05B9908;
              if (v23)
              {
                v24 = v23;
              }

              v51[2] = v24;
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
              [v41 addObject:v25];

              v5 = v41;
              goto LABEL_28;
            }

LABEL_25:
            v48[0] = @"name";
            v48[1] = @"valueHash";
            v32 = &stru_1F05B9908;
            if (v20)
            {
              v32 = v20;
            }

            v49[0] = v14;
            v49[1] = v32;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
            [v5 addObject:v19];
LABEL_28:

            v11 = 0x1E696A000;
            v12 = v43;
            goto LABEL_29;
          }

          [v22 stringWithFormat:@"%@I", v19];
          v20 = LABEL_23:;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = *(v11 + 3776);
            v19 = v15;
            [(__CFNumber *)v19 timeIntervalSinceReferenceDate];
            v27 = v26;
            v7 = v42;
            [v27 stringWithFormat:@"%fT", v28];
            goto LABEL_23;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = *(v11 + 3776);
            v30 = v15;
            v19 = [_CDHashUtilities md5ForData:v30];
            v31 = v29;
            v7 = v42;
            v20 = [v31 stringWithFormat:@"%@B", v19];

            v5 = v41;
          }

          else
          {
            if (![v15 conformsToProtocol:&unk_1F05F0800])
            {
              v20 = 0;
              goto LABEL_25;
            }

            v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v15];
            v33 = *(v11 + 3776);
            v18 = [_CDHashUtilities md5ForData:v19];
            v34 = v33;
            v5 = v41;
            [v34 stringWithFormat:@"%@O", v18];
            v20 = LABEL_11:;

            v7 = v42;
          }
        }

        goto LABEL_25;
      }

LABEL_29:

      ++v13;
    }

    while (v10 != v13);
    v35 = [v8 countByEnumeratingWithState:&v44 objects:v52 count:16];
    v10 = v35;
  }

  while (v35);
LABEL_35:

  objc_autoreleasePoolPop(context);
  v36 = [v5 copy];
  v37 = selfCopy->_customMetadata;
  selfCopy->_customMetadata = v36;

  v3 = v36;
LABEL_36:

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_DKEvent *)self->_dkEvent isEqual:equalCopy[5]];

  return v5;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_dkEvent;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end