@interface BMFindMyLocationChange
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFindMyLocationChange)initWithIdsHandle:(id)handle stateChange:(int)change activityState:(int)state name:(id)name;
- (BMFindMyLocationChange)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFindMyLocationChange

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"idsHandle" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateChange" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    idsHandle = [(BMFindMyLocationChange *)self idsHandle];
    idsHandle2 = [v5 idsHandle];
    v8 = idsHandle2;
    if (idsHandle == idsHandle2)
    {
    }

    else
    {
      idsHandle3 = [(BMFindMyLocationChange *)self idsHandle];
      idsHandle4 = [v5 idsHandle];
      v11 = [idsHandle3 isEqual:idsHandle4];

      if (!v11)
      {
        goto LABEL_11;
      }
    }

    stateChange = [(BMFindMyLocationChange *)self stateChange];
    if (stateChange == [v5 stateChange])
    {
      activityState = [(BMFindMyLocationChange *)self activityState];
      if (activityState == [v5 activityState])
      {
        name = [(BMFindMyLocationChange *)self name];
        name2 = [v5 name];
        if (name == name2)
        {
          v12 = 1;
        }

        else
        {
          name3 = [(BMFindMyLocationChange *)self name];
          name4 = [v5 name];
          v12 = [name3 isEqual:name4];
        }

        goto LABEL_12;
      }
    }

LABEL_11:
    v12 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)jsonDictionary
{
  v14[4] = *MEMORY[0x1E69E9840];
  idsHandle = [(BMFindMyLocationChange *)self idsHandle];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFindMyLocationChange stateChange](self, "stateChange")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFindMyLocationChange activityState](self, "activityState")}];
  name = [(BMFindMyLocationChange *)self name];
  v13[0] = @"idsHandle";
  null = idsHandle;
  if (!idsHandle)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"stateChange";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = null2;
  v13[2] = @"activityState";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null3;
  v13[3] = @"name";
  null4 = name;
  if (!name)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null4;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (name)
  {
    if (v5)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v5)
    {
LABEL_11:
      if (v4)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (idsHandle)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (idsHandle)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:

  return v11;
}

- (BMFindMyLocationChange)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"idsHandle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v32 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"stateChange"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v8;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v9 = 0;
            selfCopy2 = 0;
            goto LABEL_30;
          }

          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v37 = *MEMORY[0x1E696A578];
          v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateChange"];
          v38 = v16;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v25 = [v23 initWithDomain:v24 code:2 userInfo:v14];
          v9 = 0;
          selfCopy2 = 0;
          *error = v25;
          goto LABEL_29;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMFindMyLocationChangeStateChangeFromString(v8)];
      }

      v9 = v10;
    }

    else
    {
      v9 = 0;
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"activityState"];
    selfCopy = self;
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      errorCopy2 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v14;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v16 = 0;
            selfCopy2 = 0;
            self = selfCopy;
            goto LABEL_29;
          }

          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v26 = *MEMORY[0x1E698F240];
          v35 = *MEMORY[0x1E696A578];
          v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"activityState"];
          v36 = v19;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v27 = [v30 initWithDomain:v26 code:2 userInfo:v18];
          v16 = 0;
          selfCopy2 = 0;
          *errorCopy2 = v27;
          goto LABEL_41;
        }

        v17 = [MEMORY[0x1E696AD98] numberWithInt:BMFindMyLocationChangeActivityStateFromString(v14)];
      }

      v16 = v17;
    }

    else
    {
      errorCopy2 = error;
      v16 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_27:
      self = -[BMFindMyLocationChange initWithIdsHandle:stateChange:activityState:name:](selfCopy, "initWithIdsHandle:stateChange:activityState:name:", v32, [v9 intValue], objc_msgSend(v16, "intValue"), v19);
      selfCopy2 = self;
LABEL_28:

LABEL_29:
      goto LABEL_30;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      goto LABEL_27;
    }

    if (errorCopy2)
    {
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v28 = *MEMORY[0x1E698F240];
      v33 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
      v34 = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *errorCopy2 = [v29 initWithDomain:v28 code:2 userInfo:v22];
    }

    v19 = 0;
    selfCopy2 = 0;
LABEL_41:
    self = selfCopy;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v32 = 0;
    selfCopy2 = 0;
    goto LABEL_31;
  }

  v11 = objc_alloc(MEMORY[0x1E696ABC0]);
  v12 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"idsHandle"];
  v40[0] = v9;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v32 = 0;
  selfCopy2 = 0;
  *error = [v11 initWithDomain:v12 code:2 userInfo:v8];
LABEL_30:

LABEL_31:
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFindMyLocationChange *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_idsHandle)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v35.receiver = self;
  v35.super_class = BMFindMyLocationChange;
  v5 = [(BMEventBase *)&v35 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v36 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v36 & 0x7F) << v7;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 != 6)
        {
          if (v15 != 3)
          {
LABEL_41:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_57;
            }

            goto LABEL_55;
          }

          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v36 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v36 & 0x7F) << v23;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_52;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 5)
          {
LABEL_52:
            LODWORD(v18) = 0;
          }

          v31 = 24;
          goto LABEL_54;
        }

        v28 = PBReaderReadString();
        v29 = 40;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
            goto LABEL_41;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v36 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v36 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v36 & 0x7F) << v16;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_48;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
          {
LABEL_48:
            LODWORD(v18) = 0;
          }

          v31 = 20;
LABEL_54:
          *(&v5->super.super.isa + v31) = v18;
          goto LABEL_55;
        }

        v28 = PBReaderReadString();
        v29 = 32;
      }

      v30 = *(&v5->super.super.isa + v29);
      *(&v5->super.super.isa + v29) = v28;

LABEL_55:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_57:
    v33 = 0;
  }

  else
  {
LABEL_58:
    v33 = v5;
  }

  return v33;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  idsHandle = [(BMFindMyLocationChange *)self idsHandle];
  v5 = BMFindMyLocationChangeStateChangeAsString([(BMFindMyLocationChange *)self stateChange]);
  v6 = BMFindMyLocationChangeActivityStateAsString([(BMFindMyLocationChange *)self activityState]);
  name = [(BMFindMyLocationChange *)self name];
  v8 = [v3 initWithFormat:@"BMFindMyLocationChange with idsHandle: %@, stateChange: %@, activityState: %@, name: %@", idsHandle, v5, v6, name];

  return v8;
}

- (BMFindMyLocationChange)initWithIdsHandle:(id)handle stateChange:(int)change activityState:(int)state name:(id)name
{
  handleCopy = handle;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = BMFindMyLocationChange;
  v13 = [(BMEventBase *)&v15 init];
  if (v13)
  {
    v13->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v13->_idsHandle, handle);
    v13->_stateChange = change;
    v13->_activityState = state;
    objc_storeStrong(&v13->_name, name);
  }

  return v13;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"idsHandle" number:1 type:13 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateChange" number:2 type:4 subMessageClass:0];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityState" number:3 type:4 subMessageClass:0];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:6 type:13 subMessageClass:0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMFindMyLocationChange;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMFindMyLocationChange_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = version;
  }

LABEL_9:

  return v9;
}

@end