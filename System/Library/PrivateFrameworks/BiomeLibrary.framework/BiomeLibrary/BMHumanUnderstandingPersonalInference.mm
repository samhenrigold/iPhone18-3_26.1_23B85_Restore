@interface BMHumanUnderstandingPersonalInference
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMHumanUnderstandingPersonalInference)initWithConfidence:(id)confidence fact:(id)fact qualifiers:(id)qualifiers modelVersion:(id)version;
- (BMHumanUnderstandingPersonalInference)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_qualifiersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMHumanUnderstandingPersonalInference

+ (id)columns
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fact_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_176];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"qualifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_178];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modelVersion" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
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
    if (-[BMHumanUnderstandingPersonalInference hasConfidence](self, "hasConfidence") || [v5 hasConfidence])
    {
      if (![(BMHumanUnderstandingPersonalInference *)self hasConfidence])
      {
        goto LABEL_21;
      }

      if (![v5 hasConfidence])
      {
        goto LABEL_21;
      }

      [(BMHumanUnderstandingPersonalInference *)self confidence];
      v7 = v6;
      [v5 confidence];
      if (v7 != v8)
      {
        goto LABEL_21;
      }
    }

    fact = [(BMHumanUnderstandingPersonalInference *)self fact];
    fact2 = [v5 fact];
    v11 = fact2;
    if (fact == fact2)
    {
    }

    else
    {
      fact3 = [(BMHumanUnderstandingPersonalInference *)self fact];
      fact4 = [v5 fact];
      v14 = [fact3 isEqual:fact4];

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    qualifiers = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
    qualifiers2 = [v5 qualifiers];
    v18 = qualifiers2;
    if (qualifiers == qualifiers2)
    {
    }

    else
    {
      qualifiers3 = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
      qualifiers4 = [v5 qualifiers];
      v21 = [qualifiers3 isEqual:qualifiers4];

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMHumanUnderstandingPersonalInference hasModelVersion](self, "hasModelVersion") && ![v5 hasModelVersion])
    {
      v15 = 1;
      goto LABEL_22;
    }

    if (-[BMHumanUnderstandingPersonalInference hasModelVersion](self, "hasModelVersion") && [v5 hasModelVersion])
    {
      modelVersion = [(BMHumanUnderstandingPersonalInference *)self modelVersion];
      v15 = modelVersion == [v5 modelVersion];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (![(BMHumanUnderstandingPersonalInference *)self hasConfidence]|| ([(BMHumanUnderstandingPersonalInference *)self confidence], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMHumanUnderstandingPersonalInference *)self confidence];
    v4 = MEMORY[0x1E696AD98];
    [(BMHumanUnderstandingPersonalInference *)self confidence];
    v5 = [v4 numberWithDouble:?];
  }

  fact = [(BMHumanUnderstandingPersonalInference *)self fact];
  jsonDictionary = [fact jsonDictionary];

  _qualifiersJSONArray = [(BMHumanUnderstandingPersonalInference *)self _qualifiersJSONArray];
  if ([(BMHumanUnderstandingPersonalInference *)self hasModelVersion])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMHumanUnderstandingPersonalInference modelVersion](self, "modelVersion")}];
  }

  else
  {
    v9 = 0;
  }

  v16[0] = @"confidence";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"fact";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"qualifiers";
  null3 = _qualifiersJSONArray;
  if (!_qualifiersJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"modelVersion";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v9)
  {
    if (_qualifiersJSONArray)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (_qualifiersJSONArray)
    {
LABEL_18:
      if (jsonDictionary)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!jsonDictionary)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:

  return v14;
}

- (id)_qualifiersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  qualifiers = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
  v5 = [qualifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(qualifiers);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [qualifiers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMHumanUnderstandingPersonalInference)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v77[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"confidence"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = v6;
        v28 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidence"];
        v77[0] = v8;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
        v29 = v28;
        v6 = v27;
        v30 = [v26 initWithDomain:v29 code:2 userInfo:v25];
        v7 = 0;
        selfCopy3 = 0;
        *error = v30;
        goto LABEL_55;
      }

      v7 = 0;
      selfCopy3 = 0;
      goto LABEL_57;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"fact"];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fact"];
        v75 = v25;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        *error = [v58 initWithDomain:v31 code:2 userInfo:v32];

        selfCopy3 = 0;
        goto LABEL_55;
      }

      selfCopy3 = 0;
      goto LABEL_56;
    }

    v22 = v8;
    v8 = v8;
    v64 = 0;
    v55 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initWithJSONDictionary:v8 error:&v64];
    v23 = v64;
    if (v23)
    {
      if (error)
      {
        v23 = v23;
        *error = v23;
      }

      selfCopy3 = 0;
      v25 = v55;
      goto LABEL_55;
    }

    v8 = v22;
  }

  else
  {
    v55 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"qualifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v11 = [v9 isEqual:null];

  v54 = v8;
  if (v11)
  {
    v51 = v7;
    v52 = v6;
    selfCopy2 = self;

    v9 = 0;
  }

  else
  {
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          selfCopy3 = 0;
          v25 = v55;
          goto LABEL_54;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v72 = *MEMORY[0x1E696A578];
        v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"qualifiers"];
        v73 = v57;
        errorCopy3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v44 = [v42 initWithDomain:v43 code:2 userInfo:errorCopy3];
        selfCopy3 = 0;
        *error = v44;
LABEL_48:
        v25 = v55;
        goto LABEL_53;
      }
    }

    v51 = v7;
    v52 = v6;
    selfCopy2 = self;
  }

  v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v9 = v9;
  v12 = [v9 countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = *v61;
  v50 = dictionaryCopy;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v61 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v60 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        if (error)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v69 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"qualifiers"];
          v70 = v17;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v70;
          v38 = &v69;
LABEL_40:
          v39 = [v36 dictionaryWithObjects:v37 forKeys:v38 count:1];
          *errorCopy2 = [v34 initWithDomain:v35 code:2 userInfo:v39];

          selfCopy3 = 0;
          errorCopy3 = v9;
          dictionaryCopy = v50;
          v6 = v52;
          self = selfCopy2;
LABEL_44:
          v7 = v51;
          v25 = v55;
          goto LABEL_52;
        }

        goto LABEL_47;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy2 = error;
        if (error)
        {
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v67 = *MEMORY[0x1E696A578];
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"qualifiers"];
          v68 = v17;
          v36 = MEMORY[0x1E695DF20];
          v37 = &v68;
          v38 = &v67;
          goto LABEL_40;
        }

LABEL_47:
        selfCopy3 = 0;
        errorCopy3 = v9;
        dictionaryCopy = v50;
        v7 = v51;
        v6 = v52;
        self = selfCopy2;
        goto LABEL_48;
      }

      v17 = v16;
      v18 = [BMHumanUnderstandingPersonalInferenceFact alloc];
      v59 = 0;
      v19 = [(BMHumanUnderstandingPersonalInferenceFact *)v18 initWithJSONDictionary:v17 error:&v59];
      v20 = v59;
      if (v20)
      {
        v40 = v20;
        v6 = v52;
        if (error)
        {
          v41 = v20;
          *error = v40;
        }

        selfCopy3 = 0;
        errorCopy3 = v9;
        dictionaryCopy = v50;
        self = selfCopy2;
        goto LABEL_44;
      }

      [v57 addObject:v19];
    }

    v13 = [v9 countByEnumeratingWithState:&v60 objects:v71 count:16];
    dictionaryCopy = v50;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_22:

  v17 = [dictionaryCopy objectForKeyedSubscript:@"modelVersion"];
  if (v17)
  {
    objc_opt_class();
    self = selfCopy2;
    v7 = v51;
    if (objc_opt_isKindOfClass())
    {
      errorCopy3 = 0;
      v6 = v52;
      goto LABEL_50;
    }

    objc_opt_class();
    v25 = v55;
    if (objc_opt_isKindOfClass())
    {
      errorCopy3 = v17;
      v6 = v52;
      goto LABEL_51;
    }

    v6 = v52;
    errorCopy3 = error;
    if (error)
    {
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v48 = *MEMORY[0x1E698F240];
      v65 = *MEMORY[0x1E696A578];
      v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"modelVersion"];
      v66 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      *error = [v49 initWithDomain:v48 code:2 userInfo:v47];

      errorCopy3 = 0;
    }

    selfCopy3 = 0;
  }

  else
  {
    errorCopy3 = 0;
    v6 = v52;
    self = selfCopy2;
    v7 = v51;
LABEL_50:
    v25 = v55;
LABEL_51:
    self = [(BMHumanUnderstandingPersonalInference *)self initWithConfidence:v7 fact:v25 qualifiers:v57 modelVersion:errorCopy3];
    selfCopy3 = self;
  }

LABEL_52:

LABEL_53:
  v8 = v54;
LABEL_54:

LABEL_55:
LABEL_56:

LABEL_57:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHumanUnderstandingPersonalInference *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasConfidence)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_fact)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMHumanUnderstandingPersonalInferenceFact *)self->_fact writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_qualifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        v15 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v11}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_hasModelVersion)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMHumanUnderstandingPersonalInference;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_51;
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
        LOBYTE(v38) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v38) & 0x7F) << v8;
        if ((LOBYTE(v38) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
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

      v16 = v15 >> 3;
      if ((v15 >> 3) > 2)
      {
        if (v16 != 3)
        {
          if (v16 == 4)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            v5->_hasModelVersion = 1;
            while (1)
            {
              LOBYTE(v38) = 0;
              v22 = [fromCopy position] + 1;
              if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v21 |= (LOBYTE(v38) & 0x7F) << v19;
              if ((LOBYTE(v38) & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v14 = v20++ >= 9;
              if (v14)
              {
                v25 = 0;
                goto LABEL_46;
              }
            }

            if ([fromCopy hasError])
            {
              v25 = 0;
            }

            else
            {
              v25 = v21;
            }

LABEL_46:
            v5->_modelVersion = v25;
            goto LABEL_49;
          }

LABEL_35:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_49;
        }

        v38 = 0.0;
        v39 = 0;
        if (!PBReaderPlaceMark() || (v28 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_52:

          goto LABEL_53;
        }

        v29 = v28;
        [v6 addObject:v28];
        PBReaderRecallMark();
      }

      else
      {
        if (v16 == 1)
        {
          v5->_hasConfidence = 1;
          v38 = 0.0;
          v26 = [fromCopy position] + 8;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 8, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_confidence = v38;
          goto LABEL_49;
        }

        if (v16 != 2)
        {
          goto LABEL_35;
        }

        v38 = 0.0;
        v39 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_52;
        }

        v17 = [[BMHumanUnderstandingPersonalInferenceFact alloc] initByReadFrom:fromCopy];
        if (!v17)
        {
          goto LABEL_52;
        }

        fact = v5->_fact;
        v5->_fact = v17;

        PBReaderRecallMark();
      }

LABEL_49:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v32 = [v6 copy];
  qualifiers = v5->_qualifiers;
  v5->_qualifiers = v32;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_53:
    v35 = 0;
  }

  else
  {
LABEL_51:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = MEMORY[0x1E696AD98];
  [(BMHumanUnderstandingPersonalInference *)self confidence];
  v5 = [v4 numberWithDouble:?];
  fact = [(BMHumanUnderstandingPersonalInference *)self fact];
  qualifiers = [(BMHumanUnderstandingPersonalInference *)self qualifiers];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMHumanUnderstandingPersonalInference modelVersion](self, "modelVersion")}];
  v9 = [v3 initWithFormat:@"BMHumanUnderstandingPersonalInference with confidence: %@, fact: %@, qualifiers: %@, modelVersion: %@", v5, fact, qualifiers, v8];

  return v9;
}

- (BMHumanUnderstandingPersonalInference)initWithConfidence:(id)confidence fact:(id)fact qualifiers:(id)qualifiers modelVersion:(id)version
{
  confidenceCopy = confidence;
  factCopy = fact;
  qualifiersCopy = qualifiers;
  versionCopy = version;
  v18.receiver = self;
  v18.super_class = BMHumanUnderstandingPersonalInference;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (confidenceCopy)
    {
      v14->_hasConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v14->_hasConfidence = 0;
      v15 = -1.0;
    }

    v14->_confidence = v15;
    objc_storeStrong(&v14->_fact, fact);
    objc_storeStrong(&v14->_qualifiers, qualifiers);
    if (versionCopy)
    {
      v14->_hasModelVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v14->_hasModelVersion = 0;
    }

    v14->_modelVersion = unsignedIntValue;
  }

  return v14;
}

+ (id)protoFields
{
  v8[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:1 type:0 subMessageClass:0];
  v8[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fact" number:2 type:14 subMessageClass:objc_opt_class()];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qualifiers" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modelVersion" number:4 type:4 subMessageClass:0];
  v8[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];

  return v6;
}

id __48__BMHumanUnderstandingPersonalInference_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _qualifiersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __48__BMHumanUnderstandingPersonalInference_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 fact];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMHumanUnderstandingPersonalInference alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end