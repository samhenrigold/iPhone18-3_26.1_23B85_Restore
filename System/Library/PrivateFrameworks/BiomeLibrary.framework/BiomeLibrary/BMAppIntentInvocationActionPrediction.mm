@interface BMAppIntentInvocationActionPrediction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppIntentInvocationActionPrediction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppIntentInvocationActionPrediction)initWithParameterIdentifiers:(id)identifiers displayRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_parameterIdentifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppIntentInvocationActionPrediction

+ (id)protoFields
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parameterIdentifiers" number:1 type:13 subMessageClass:0];
  v6[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayRepresentation" number:2 type:14 subMessageClass:objc_opt_class()];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    parameterIdentifiers = [(BMAppIntentInvocationActionPrediction *)self parameterIdentifiers];
    parameterIdentifiers2 = [v5 parameterIdentifiers];
    v8 = parameterIdentifiers2;
    if (parameterIdentifiers == parameterIdentifiers2)
    {
    }

    else
    {
      parameterIdentifiers3 = [(BMAppIntentInvocationActionPrediction *)self parameterIdentifiers];
      parameterIdentifiers4 = [v5 parameterIdentifiers];
      v11 = [parameterIdentifiers3 isEqual:parameterIdentifiers4];

      if (!v11)
      {
        v12 = 0;
LABEL_11:

        goto LABEL_12;
      }
    }

    displayRepresentation = [(BMAppIntentInvocationActionPrediction *)self displayRepresentation];
    displayRepresentation2 = [v5 displayRepresentation];
    if (displayRepresentation == displayRepresentation2)
    {
      v12 = 1;
    }

    else
    {
      displayRepresentation3 = [(BMAppIntentInvocationActionPrediction *)self displayRepresentation];
      displayRepresentation4 = [v5 displayRepresentation];
      v12 = [displayRepresentation3 isEqual:displayRepresentation4];
    }

    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  _parameterIdentifiersJSONArray = [(BMAppIntentInvocationActionPrediction *)self _parameterIdentifiersJSONArray];
  displayRepresentation = [(BMAppIntentInvocationActionPrediction *)self displayRepresentation];
  jsonDictionary = [displayRepresentation jsonDictionary];

  v10[0] = @"parameterIdentifiers";
  null = _parameterIdentifiersJSONArray;
  if (!_parameterIdentifiersJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"displayRepresentation";
  v11[0] = null;
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (jsonDictionary)
  {
    if (_parameterIdentifiersJSONArray)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (_parameterIdentifiersJSONArray)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v8;
}

- (id)_parameterIdentifiersJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  parameterIdentifiers = [(BMAppIntentInvocationActionPrediction *)self parameterIdentifiers];
  v5 = [parameterIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(parameterIdentifiers);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [parameterIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMAppIntentInvocationActionPrediction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"parameterIdentifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {
    errorCopy2 = error;

    v7 = 0;
LABEL_6:
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v7 = v7;
    v11 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = v11;
    v13 = *v41;
    v37 = dictionaryCopy;
LABEL_8:
    selfCopy = self;
    v15 = 0;
    while (1)
    {
      if (*v41 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v16 = *(*(&v40 + 1) + 8 * v15);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy2)
        {
          v26 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parameterIdentifiers"];
          v47 = v18;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          v24 = v26;
          v25 = v27;
          v20 = errorCopy2;
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      [v10 addObject:v16];
      if (v12 == ++v15)
      {
        v12 = [v7 countByEnumeratingWithState:&v40 objects:v50 count:16];
        self = selfCopy;
        dictionaryCopy = v37;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_15:

        v17 = [dictionaryCopy objectForKeyedSubscript:@"displayRepresentation"];
        if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v18 = 0;
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v17;
          v39 = 0;
          v18 = [[BMAppIntentInvocationDisplayRepresentation alloc] initWithJSONDictionary:v32 error:&v39];
          v33 = v39;
          if (v33)
          {
            if (errorCopy2)
            {
              v33 = v33;
              *errorCopy2 = v33;
            }

            selfCopy2 = 0;
            v17 = v32;
          }

          else
          {

LABEL_18:
            self = [(BMAppIntentInvocationActionPrediction *)self initWithParameterIdentifiers:v10 displayRepresentation:v18];
            selfCopy2 = self;
          }

LABEL_24:
        }

        else
        {
          selfCopy2 = errorCopy2;
          if (errorCopy2)
          {
            v36 = objc_alloc(MEMORY[0x1E696ABC0]);
            v34 = *MEMORY[0x1E698F240];
            v44 = *MEMORY[0x1E696A578];
            v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"displayRepresentation"];
            v45 = v18;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            *errorCopy2 = [v36 initWithDomain:v34 code:2 userInfo:v35];

            selfCopy2 = 0;
            goto LABEL_24;
          }
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    v20 = errorCopy2;
    if (errorCopy2)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v48 = *MEMORY[0x1E696A578];
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"parameterIdentifiers"];
      v49 = v18;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v24 = v21;
      v25 = v22;
LABEL_23:
      self = selfCopy;
      *v20 = [v24 initWithDomain:v25 code:2 userInfo:v23];

      selfCopy2 = 0;
      v17 = v7;
      dictionaryCopy = v37;
      goto LABEL_24;
    }

LABEL_25:
    selfCopy2 = 0;
    v17 = v7;
    self = selfCopy;
    dictionaryCopy = v37;
    goto LABEL_28;
  }

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    errorCopy2 = error;
    goto LABEL_6;
  }

  if (error)
  {
    v28 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = *MEMORY[0x1E698F240];
    v51 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"parameterIdentifiers"];
    v52[0] = v10;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v30 = [v28 initWithDomain:v29 code:2 userInfo:v17];
    selfCopy2 = 0;
    *error = v30;
    goto LABEL_28;
  }

  selfCopy2 = 0;
LABEL_29:

  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppIntentInvocationActionPrediction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_parameterIdentifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
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
  v26.receiver = self;
  v26.super_class = BMAppIntentInvocationActionPrediction;
  v5 = [(BMEventBase *)&v26 init];
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v27 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v27[0] & 0x7F) << v8;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 2)
      {
        v27[0] = 0;
        v27[1] = 0;
        if (!PBReaderPlaceMark() || (v18 = [[BMAppIntentInvocationDisplayRepresentation alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_29:

          goto LABEL_30;
        }

        displayRepresentation = v5->_displayRepresentation;
        v5->_displayRepresentation = v18;

        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 1)
      {
        v16 = PBReaderReadString();
        if (!v16)
        {
          goto LABEL_29;
        }

        v17 = v16;
        [v6 addObject:v16];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_29;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v21 = [v6 copy];
  parameterIdentifiers = v5->_parameterIdentifiers;
  v5->_parameterIdentifiers = v21;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_30:
    v24 = 0;
  }

  else
  {
LABEL_28:
    v24 = v5;
  }

  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  parameterIdentifiers = [(BMAppIntentInvocationActionPrediction *)self parameterIdentifiers];
  displayRepresentation = [(BMAppIntentInvocationActionPrediction *)self displayRepresentation];
  v6 = [v3 initWithFormat:@"BMAppIntentInvocationActionPrediction with parameterIdentifiers: %@, displayRepresentation: %@", parameterIdentifiers, displayRepresentation];

  return v6;
}

- (BMAppIntentInvocationActionPrediction)initWithParameterIdentifiers:(id)identifiers displayRepresentation:(id)representation
{
  identifiersCopy = identifiers;
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = BMAppIntentInvocationActionPrediction;
  v9 = [(BMEventBase *)&v11 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_parameterIdentifiers, identifiers);
    objc_storeStrong(&v9->_displayRepresentation, representation);
  }

  return v9;
}

+ (id)columns
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"parameterIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1095];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"displayRepresentation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1097];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

id __48__BMAppIntentInvocationActionPrediction_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 displayRepresentation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __48__BMAppIntentInvocationActionPrediction_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _parameterIdentifiersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMAppIntentInvocationActionPrediction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end