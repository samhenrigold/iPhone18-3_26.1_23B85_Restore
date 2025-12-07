@interface CCAppIntentsExtractedEntityAppointment
- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error;
- (CCAppIntentsExtractedEntityAppointment)initWithEventName:(id)name startLocationName:(id)locationName startLocationAddress:(id)address startLocationTelephone:(id)telephone startDate:(id)date startDateTimeZone:(id)zone endDate:(id)endDate endDateTimeZone:(id)self0 duration:(id)self1 cost:(id)self2 costCode:(id)self3 eventSubType:(id)self4 error:(id *)self5;
- (CCAppIntentsExtractedEntityAppointment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (NSString)cost;
- (NSString)costCode;
- (NSString)endDate;
- (NSString)endDateTimeZone;
- (NSString)eventName;
- (NSString)eventSubType;
- (NSString)startDate;
- (NSString)startDateTimeZone;
- (NSString)startLocationAddress;
- (NSString)startLocationName;
- (NSString)startLocationTelephone;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type;
@end

@implementation CCAppIntentsExtractedEntityAppointment

- (CCAppIntentsExtractedEntityAppointment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"eventName"];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"startLocationName"];
    v18 = [dictionaryCopy objectForKeyedSubscript:@"startLocationAddress"];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"startLocationTelephone"];
    v20 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    v19 = [dictionaryCopy objectForKeyedSubscript:@"startDateTimeZone"];
    v17 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    [dictionaryCopy objectForKeyedSubscript:@"endDateTimeZone"];
    v16 = v22 = self;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"cost"];
    v11 = [dictionaryCopy objectForKeyedSubscript:@"costCode"];
    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventSubType"];
    v13 = [[CCAppIntentsExtractedEntityAppointment alloc] initWithEventName:v23 startLocationName:v21 startLocationAddress:v18 startLocationTelephone:v9 startDate:v20 startDateTimeZone:v19 endDate:v17 endDateTimeZone:v16 duration:v15 cost:v10 costCode:v11 eventSubType:v12 error:error];

    self = v22;
  }

  else
  {
    CCSetError();
    v13 = 0;
  }

  return v13;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  if (self->_eventName)
  {
    eventName = [(CCAppIntentsExtractedEntityAppointment *)self eventName];
    [v3 setObject:eventName forKeyedSubscript:@"eventName"];
  }

  if (self->_startLocationName)
  {
    startLocationName = [(CCAppIntentsExtractedEntityAppointment *)self startLocationName];
    [v3 setObject:startLocationName forKeyedSubscript:@"startLocationName"];
  }

  if (self->_startLocationAddress)
  {
    startLocationAddress = [(CCAppIntentsExtractedEntityAppointment *)self startLocationAddress];
    [v3 setObject:startLocationAddress forKeyedSubscript:@"startLocationAddress"];
  }

  if (self->_startLocationTelephone)
  {
    startLocationTelephone = [(CCAppIntentsExtractedEntityAppointment *)self startLocationTelephone];
    [v3 setObject:startLocationTelephone forKeyedSubscript:@"startLocationTelephone"];
  }

  if (self->_startDate)
  {
    startDate = [(CCAppIntentsExtractedEntityAppointment *)self startDate];
    [v3 setObject:startDate forKeyedSubscript:@"startDate"];
  }

  if (self->_startDateTimeZone)
  {
    startDateTimeZone = [(CCAppIntentsExtractedEntityAppointment *)self startDateTimeZone];
    [v3 setObject:startDateTimeZone forKeyedSubscript:@"startDateTimeZone"];
  }

  if (self->_endDate)
  {
    endDate = [(CCAppIntentsExtractedEntityAppointment *)self endDate];
    [v3 setObject:endDate forKeyedSubscript:@"endDate"];
  }

  if (self->_endDateTimeZone)
  {
    endDateTimeZone = [(CCAppIntentsExtractedEntityAppointment *)self endDateTimeZone];
    [v3 setObject:endDateTimeZone forKeyedSubscript:@"endDateTimeZone"];
  }

  if (self->_hasDuration)
  {
    v12 = MEMORY[0x1E696AD98];
    [(CCAppIntentsExtractedEntityAppointment *)self duration];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"duration"];
  }

  if (self->_cost)
  {
    cost = [(CCAppIntentsExtractedEntityAppointment *)self cost];
    [v3 setObject:cost forKeyedSubscript:@"cost"];
  }

  if (self->_costCode)
  {
    costCode = [(CCAppIntentsExtractedEntityAppointment *)self costCode];
    [v3 setObject:costCode forKeyedSubscript:@"costCode"];
  }

  if (self->_eventSubType)
  {
    eventSubType = [(CCAppIntentsExtractedEntityAppointment *)self eventSubType];
    [v3 setObject:eventSubType forKeyedSubscript:@"eventSubType"];
  }

  v17 = [v3 copy];

  return v17;
}

- (void)enumerateFieldsUsingBlock:(id)block parentFieldType:(unsigned __int16)type
{
  blockCopy = block;
  if (self->_eventName)
  {
    v5 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27446 stringValue:self->_eventName];
    blockCopy[2](blockCopy, v5);
  }

  if (self->_startLocationName)
  {
    v6 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27447 stringValue:self->_startLocationName];
    blockCopy[2](blockCopy, v6);
  }

  if (self->_startLocationAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27448 stringValue:self->_startLocationAddress];
    blockCopy[2](blockCopy, v7);
  }

  if (self->_startLocationTelephone)
  {
    v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27449 stringValue:self->_startLocationTelephone];
    blockCopy[2](blockCopy, v8);
  }

  if (self->_startDate)
  {
    v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27450 stringValue:self->_startDate];
    blockCopy[2](blockCopy, v9);
  }

  if (self->_startDateTimeZone)
  {
    v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27451 stringValue:self->_startDateTimeZone];
    blockCopy[2](blockCopy, v10);
  }

  if (self->_endDate)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27452 stringValue:self->_endDate];
    blockCopy[2](blockCopy, v11);
  }

  if (self->_endDateTimeZone)
  {
    v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27453 stringValue:self->_endDateTimeZone];
    blockCopy[2](blockCopy, v12);
  }

  if (self->_hasDuration)
  {
    v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27454 doubleValue:self->_duration];
    blockCopy[2](blockCopy, v13);
  }

  if (self->_cost)
  {
    v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27455 stringValue:self->_cost];
    blockCopy[2](blockCopy, v14);
  }

  if (self->_costCode)
  {
    v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27456 stringValue:self->_costCode];
    blockCopy[2](blockCopy, v15);
  }

  v16 = blockCopy;
  if (self->_eventSubType)
  {
    v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:27457 stringValue:self->_eventSubType];
    blockCopy[2](blockCopy, v17);

    v16 = blockCopy;
  }
}

- (NSString)eventSubType
{
  v2 = [(NSString *)self->_eventSubType copy];

  return v2;
}

- (NSString)costCode
{
  v2 = [(NSString *)self->_costCode copy];

  return v2;
}

- (NSString)cost
{
  v2 = [(NSString *)self->_cost copy];

  return v2;
}

- (NSString)endDateTimeZone
{
  v2 = [(NSString *)self->_endDateTimeZone copy];

  return v2;
}

- (NSString)endDate
{
  v2 = [(NSString *)self->_endDate copy];

  return v2;
}

- (NSString)startDateTimeZone
{
  v2 = [(NSString *)self->_startDateTimeZone copy];

  return v2;
}

- (NSString)startDate
{
  v2 = [(NSString *)self->_startDate copy];

  return v2;
}

- (NSString)startLocationTelephone
{
  v2 = [(NSString *)self->_startLocationTelephone copy];

  return v2;
}

- (NSString)startLocationAddress
{
  v2 = [(NSString *)self->_startLocationAddress copy];

  return v2;
}

- (NSString)startLocationName
{
  v2 = [(NSString *)self->_startLocationName copy];

  return v2;
}

- (NSString)eventName
{
  v2 = [(NSString *)self->_eventName copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:dataCopy];
  v8 = MEMORY[0x1E6993AB8];
  v9 = MEMORY[0x1E6993AB0];
  v10 = MEMORY[0x1E6993AA8];
  if (*&v7[*MEMORY[0x1E6993AB8]] >= *&v7[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_60;
  }

  v11 = 0;
  v12 = MEMORY[0x1E6993AA0];
  while (2)
  {
    if (*&v7[*v10])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v17 = *v8;
        v18 = *&v7[v17];
        v19 = v18 + 1;
        if (v18 == -1 || v19 > *&v7[*v9])
        {
          break;
        }

        v20 = *(*&v7[*v12] + v18);
        *&v7[v17] = v19;
        v16 |= (v20 & 0x7F) << v14;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 += 7;
        if (v15++ >= 9)
        {
          v22 = 0;
          v23 = *v10;
          if (*&v7[v23])
          {
            goto LABEL_61;
          }

          goto LABEL_21;
        }
      }

      *&v7[*v10] = 1;
LABEL_17:
      v23 = *v10;
      v24 = *&v7[v23];
      if (v24)
      {
        v22 = 0;
      }

      else
      {
        v22 = v16;
      }

      if (v24)
      {
        goto LABEL_61;
      }

LABEL_21:
      v25 = v22 >> 3;
      if ((v22 >> 3) > 6)
      {
        if (v25 > 9)
        {
          switch(v25)
          {
            case 0xA:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 96;
              goto LABEL_50;
            case 0xB:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 104;
              goto LABEL_50;
            case 0xC:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 112;
              goto LABEL_50;
          }
        }

        else
        {
          switch(v25)
          {
            case 7:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 72;
              goto LABEL_50;
            case 8:
              v26 = CCPBReaderReadStringNoCopy();
              v27 = 80;
              goto LABEL_50;
            case 9:
              v28 = *v8;
              v29 = *&v7[v28];
              if (v29 <= 0xFFFFFFFFFFFFFFF7 && v29 + 8 <= *&v7[*v9])
              {
                v30 = *(*&v7[*v12] + v29);
                *&v7[v28] = v29 + 8;
              }

              else
              {
                *&v7[v23] = 1;
                v30 = 0.0;
              }

              v11 = 0;
              self->_duration = v30;
              self->_hasDuration = 1;
              goto LABEL_52;
          }
        }
      }

      else if (v25 > 3)
      {
        switch(v25)
        {
          case 4:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 48;
            goto LABEL_50;
          case 5:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 56;
            goto LABEL_50;
          case 6:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 64;
            goto LABEL_50;
        }
      }

      else
      {
        switch(v25)
        {
          case 1:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 24;
            goto LABEL_50;
          case 2:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 32;
            goto LABEL_50;
          case 3:
            v26 = CCPBReaderReadStringNoCopy();
            v27 = 40;
LABEL_50:
            v31 = *(&self->super.super.isa + v27);
            *(&self->super.super.isa + v27) = v26;

LABEL_51:
            v11 = 0;
            goto LABEL_52;
        }
      }

      if (CCPBReaderSkipValueWithTag())
      {
        goto LABEL_51;
      }

      v32 = objc_opt_class();
      NSStringFromClass(v32);
      v39 = dataCopy;
      v34 = v33 = error;
      v11 = CCSkipFieldErrorForMessage();

      error = v33;
      dataCopy = v39;
LABEL_52:
      if (*&v7[*v8] < *&v7[*v9])
      {
        continue;
      }
    }

    break;
  }

  if (v11)
  {
    CCSetError();
    goto LABEL_62;
  }

LABEL_60:
  if (!*&v7[*v10])
  {
    v37 = 1;
    goto LABEL_64;
  }

LABEL_61:
  v35 = objc_opt_class();
  v11 = NSStringFromClass(v35);
  v36 = CCInvalidBufferErrorForMessage();
  CCSetError();

LABEL_62:
  v37 = 0;
LABEL_64:

  return v37;
}

- (CCAppIntentsExtractedEntityAppointment)initWithEventName:(id)name startLocationName:(id)locationName startLocationAddress:(id)address startLocationTelephone:(id)telephone startDate:(id)date startDateTimeZone:(id)zone endDate:(id)endDate endDateTimeZone:(id)self0 duration:(id)self1 cost:(id)self2 costCode:(id)self3 eventSubType:(id)self4 error:(id *)self5
{
  nameCopy = name;
  locationNameCopy = locationName;
  addressCopy = address;
  telephoneCopy = telephone;
  dateCopy = date;
  zoneCopy = zone;
  endDateCopy = endDate;
  timeZoneCopy = timeZone;
  durationCopy = duration;
  costCopy = cost;
  codeCopy = code;
  typeCopy = type;
  v26 = objc_opt_new();
  v58 = costCopy;
  if (!nameCopy)
  {
    v28 = 0;
    if (!locationNameCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  objc_opt_class();
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v28 = 0;
  if (IsInstanceOfExpectedClass)
  {
    CCPBDataWriterWriteStringField();
    if (!locationNameCopy)
    {
LABEL_4:
      v29 = v28;
      goto LABEL_8;
    }

LABEL_6:
    v30 = nameCopy;
    objc_opt_class();
    v31 = CCValidateIsInstanceOfExpectedClass();
    v29 = v28;

    if (!v31)
    {
      CCSetError();
      v40 = 0;
      v28 = v29;
      nameCopy = v30;
      v32 = zoneCopy;
      v34 = dateCopy;
      goto LABEL_36;
    }

    CCPBDataWriterWriteStringField();
    nameCopy = v30;
LABEL_8:
    v53 = nameCopy;
    v32 = zoneCopy;
    if (!addressCopy)
    {
      v28 = v29;
      v34 = dateCopy;
      v35 = telephoneCopy;
      if (!telephoneCopy)
      {
LABEL_11:
        v36 = v28;
        if (v34)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }

LABEL_21:
      objc_opt_class();
      v41 = CCValidateIsInstanceOfExpectedClass();
      v36 = v28;

      if (!v41)
      {
        goto LABEL_51;
      }

      CCPBDataWriterWriteStringField();
      if (v34)
      {
LABEL_12:
        objc_opt_class();
        v37 = CCValidateIsInstanceOfExpectedClass();
        v28 = v36;

        if (!v37)
        {
          goto LABEL_44;
        }

        CCPBDataWriterWriteStringField();
        if (!v32)
        {
LABEL_14:
          v36 = v28;
          if (endDateCopy)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }

LABEL_24:
        objc_opt_class();
        v42 = CCValidateIsInstanceOfExpectedClass();
        v36 = v28;

        if (!v42)
        {
          goto LABEL_51;
        }

        CCPBDataWriterWriteStringField();
        if (endDateCopy)
        {
LABEL_15:
          objc_opt_class();
          v38 = CCValidateIsInstanceOfExpectedClass();
          v28 = v36;

          if (!v38)
          {
            goto LABEL_44;
          }

          CCPBDataWriterWriteStringField();
          selfCopy4 = self;
          if (!timeZoneCopy)
          {
            goto LABEL_29;
          }

LABEL_27:
          objc_opt_class();
          v43 = CCValidateIsInstanceOfExpectedClass();
          v44 = v28;

          if (!v43)
          {
            CCSetError();
            v28 = v44;
            goto LABEL_39;
          }

          CCPBDataWriterWriteStringField();
          v28 = v44;
LABEL_29:
          if (!durationCopy)
          {
LABEL_32:
            if (!v58)
            {
              v36 = v28;
              goto LABEL_41;
            }

            objc_opt_class();
            v48 = CCValidateIsInstanceOfExpectedClass();
            v36 = v28;

            if (v48)
            {
              CCPBDataWriterWriteStringField();
LABEL_41:
              if (!codeCopy)
              {
                v28 = v36;
                goto LABEL_46;
              }

              objc_opt_class();
              v49 = CCValidateIsInstanceOfExpectedClass();
              v28 = v36;

              if (v49)
              {
                CCPBDataWriterWriteStringField();
LABEL_46:
                if (!typeCopy)
                {
LABEL_49:
                  immutableData = [v26 immutableData];
                  selfCopy4 = [(CCItemMessage *)self initWithData:immutableData error:error];

                  v40 = selfCopy4;
                  goto LABEL_50;
                }

                objc_opt_class();
                v50 = CCValidateIsInstanceOfExpectedClass();
                v36 = v28;

                if (v50)
                {
                  CCPBDataWriterWriteStringField();
                  v28 = v36;
                  goto LABEL_49;
                }

                goto LABEL_51;
              }

LABEL_44:
              CCSetError();
              v40 = 0;
LABEL_52:
              nameCopy = v53;
              goto LABEL_53;
            }

LABEL_51:
            CCSetError();
            v40 = 0;
            v28 = v36;
            goto LABEL_52;
          }

          objc_opt_class();
          v45 = CCValidateIsInstanceOfExpectedClass();
          v46 = v28;
          v47 = v28;
          v28 = v46;

          if (v45)
          {
            [durationCopy doubleValue];
            CCPBDataWriterWriteDoubleField();
            goto LABEL_32;
          }

          CCSetError();
LABEL_39:
          v40 = 0;
LABEL_50:
          nameCopy = v53;
          goto LABEL_54;
        }

LABEL_26:
        v28 = v36;
        selfCopy4 = self;
        if (!timeZoneCopy)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

LABEL_23:
      v28 = v36;
      if (!v32)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    objc_opt_class();
    v33 = CCValidateIsInstanceOfExpectedClass();
    v28 = v29;

    v34 = dateCopy;
    if (v33)
    {
      CCPBDataWriterWriteStringField();
      v35 = telephoneCopy;
      if (!telephoneCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }

    CCSetError();
    v40 = 0;
    nameCopy = v53;
LABEL_36:
    v35 = telephoneCopy;
LABEL_53:
    selfCopy4 = self;
    goto LABEL_54;
  }

  CCSetError();
  v40 = 0;
  selfCopy4 = self;
  v32 = zoneCopy;
  v34 = dateCopy;
  v35 = telephoneCopy;
LABEL_54:

  return v40;
}

@end