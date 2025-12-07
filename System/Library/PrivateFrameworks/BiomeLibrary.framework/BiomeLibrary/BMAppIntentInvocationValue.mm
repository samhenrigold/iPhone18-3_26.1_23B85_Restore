@interface BMAppIntentInvocationValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntentInvocationValue)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMAppIntentInvocationValue)initWithValueType:(id)type value:(id)value displayRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppIntentInvocationValue

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"valueType" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"value" number:2 type:14 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayRepresentation" number:3 type:14 subMessageClass:objc_opt_class()];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    valueType = [(BMAppIntentInvocationValue *)self valueType];
    valueType2 = [v5 valueType];
    v8 = valueType2;
    if (valueType == valueType2)
    {
    }

    else
    {
      valueType3 = [(BMAppIntentInvocationValue *)self valueType];
      valueType4 = [v5 valueType];
      v11 = [valueType3 isEqual:valueType4];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    value = [(BMAppIntentInvocationValue *)self value];
    value2 = [v5 value];
    v15 = value2;
    if (value == value2)
    {
    }

    else
    {
      value3 = [(BMAppIntentInvocationValue *)self value];
      value4 = [v5 value];
      v18 = [value3 isEqual:value4];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    displayRepresentation = [(BMAppIntentInvocationValue *)self displayRepresentation];
    displayRepresentation2 = [v5 displayRepresentation];
    if (displayRepresentation == displayRepresentation2)
    {
      v12 = 1;
    }

    else
    {
      displayRepresentation3 = [(BMAppIntentInvocationValue *)self displayRepresentation];
      displayRepresentation4 = [v5 displayRepresentation];
      v12 = [displayRepresentation3 isEqual:displayRepresentation4];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  valueType = [(BMAppIntentInvocationValue *)self valueType];
  jsonDictionary = [valueType jsonDictionary];

  value = [(BMAppIntentInvocationValue *)self value];
  v6 = [value base64EncodedStringWithOptions:0];

  displayRepresentation = [(BMAppIntentInvocationValue *)self displayRepresentation];
  jsonDictionary2 = [displayRepresentation jsonDictionary];

  v14[0] = @"valueType";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"value";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"displayRepresentation";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (jsonDictionary2)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (jsonDictionary)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (jsonDictionary)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:

  return v12;
}

- (BMAppIntentInvocationValue)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v40[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"valueType"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v32 = 0;
    v8 = [[BMAppIntentInvocationValueType alloc] initWithJSONDictionary:v10 error:&v32];
    v14 = v32;
    if (v14)
    {
      if (p_isa)
      {
        v14 = v14;
        *p_isa = v14;
      }

      p_isa = 0;
      goto LABEL_14;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            goto LABEL_12;
          }

          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"displayRepresentation"];
          v34 = v12;
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *p_isa = [v30 initWithDomain:v29 code:2 userInfo:v26];

          p_isa = 0;
LABEL_11:

LABEL_12:
LABEL_13:

          goto LABEL_14;
        }

        v15 = v11;
        v31 = 0;
        v12 = [[BMAppIntentInvocationDisplayRepresentation alloc] initWithJSONDictionary:v15 error:&v31];
        v16 = v31;
        if (v16)
        {
          if (p_isa)
          {
            v16 = v16;
            *p_isa = v16;
          }

          p_isa = 0;
          v11 = v15;
          goto LABEL_11;
        }
      }

      else
      {
        v12 = 0;
      }

      self = [(BMAppIntentInvocationValue *)self initWithValueType:v8 value:v10 displayRepresentation:v12];
      p_isa = &self->super.super.isa;
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      if (v10)
      {
        goto LABEL_7;
      }

      if (p_isa)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"value"];
        v38 = v11;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v38;
        v25 = &v37;
LABEL_39:
        v12 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
        v27 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        v10 = 0;
        v28 = p_isa;
        p_isa = 0;
        *v28 = v27;
        goto LABEL_11;
      }
    }

    else if (p_isa)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v35 = *MEMORY[0x1E696A578];
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"value"];
      v36 = v11;
      v23 = MEMORY[0x1E695DF20];
      v24 = &v36;
      v25 = &v35;
      goto LABEL_39;
    }

    v10 = 0;
    goto LABEL_13;
  }

  if (!p_isa)
  {
    goto LABEL_15;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"valueType"];
  v40[0] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v19 = [v17 initWithDomain:v18 code:2 userInfo:v10];
  v20 = p_isa;
  p_isa = 0;
  *v20 = v19;
LABEL_14:

LABEL_15:
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_valueType)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationValueType *)self->_valueType writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_value)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_displayRepresentation)
  {
    PBDataWriterPlaceMark();
    [(BMAppIntentInvocationDisplayRepresentation *)self->_displayRepresentation writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v24.receiver = self;
  v24.super_class = BMAppIntentInvocationValue;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_33;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_31;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v25) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v25 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v25 & 0x7F) << v7;
        if ((v25 & 0x80) == 0)
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
        goto LABEL_31;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        break;
      }

      if (v15 != 2)
      {
        if (v15 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        v25 = 0;
        v26 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_32;
        }

        v16 = [[BMAppIntentInvocationValueType alloc] initByReadFrom:fromCopy];
        if (!v16)
        {
          goto LABEL_32;
        }

        v17 = 24;
        goto LABEL_28;
      }

      v18 = PBReaderReadData();
      value = v5->_value;
      v5->_value = v18;

LABEL_30:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_31;
      }
    }

    v25 = 0;
    v26 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_32;
    }

    v16 = [[BMAppIntentInvocationDisplayRepresentation alloc] initByReadFrom:fromCopy];
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = 40;
LABEL_28:
    v20 = *(&v5->super.super.isa + v17);
    *(&v5->super.super.isa + v17) = v16;

    PBReaderRecallMark();
    goto LABEL_30;
  }

LABEL_31:
  if ([fromCopy hasError])
  {
LABEL_32:
    v22 = 0;
  }

  else
  {
LABEL_33:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  valueType = [(BMAppIntentInvocationValue *)self valueType];
  value = [(BMAppIntentInvocationValue *)self value];
  displayRepresentation = [(BMAppIntentInvocationValue *)self displayRepresentation];
  v7 = [v3 initWithFormat:@"BMAppIntentInvocationValue with valueType: %@, value: %@, displayRepresentation: %@", valueType, value, displayRepresentation];

  return v7;
}

- (BMAppIntentInvocationValue)initWithValueType:(id)type value:(id)value displayRepresentation:(id)representation
{
  typeCopy = type;
  valueCopy = value;
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = BMAppIntentInvocationValue;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_valueType, type);
    objc_storeStrong(&v12->_value, value);
    objc_storeStrong(&v12->_displayRepresentation, representation);
  }

  return v12;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"valueType_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_781];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"value" dataType:4 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"displayRepresentation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_783];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

id __37__BMAppIntentInvocationValue_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 displayRepresentation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __37__BMAppIntentInvocationValue_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 valueType];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMAppIntentInvocationValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end