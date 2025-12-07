@interface BMMLSELabeledDataStoreFeatureFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithIntValue:(id)value doubleValue:(id)doubleValue stringValue:(id)stringValue BOOLValue:(id)lValue timeBucketValue:(int)bucketValue doubleValuedVectorValue:(id)vectorValue;
- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSELabeledDataStoreFeatureFeatureValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMLSELabeledDataStoreFeatureFeatureValue hasIntValue](self, "hasIntValue") || [v5 hasIntValue])
    {
      if (![(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasIntValue])
      {
        goto LABEL_25;
      }

      if (![v5 hasIntValue])
      {
        goto LABEL_25;
      }

      intValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self intValue];
      if (intValue != [v5 intValue])
      {
        goto LABEL_25;
      }
    }

    if (-[BMMLSELabeledDataStoreFeatureFeatureValue hasDoubleValue](self, "hasDoubleValue") || [v5 hasDoubleValue])
    {
      if (![(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasDoubleValue])
      {
        goto LABEL_25;
      }

      if (![v5 hasDoubleValue])
      {
        goto LABEL_25;
      }

      [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
      v8 = v7;
      [v5 doubleValue];
      if (v8 != v9)
      {
        goto LABEL_25;
      }
    }

    stringValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
    stringValue2 = [v5 stringValue];
    v12 = stringValue2;
    if (stringValue == stringValue2)
    {
    }

    else
    {
      stringValue3 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
      stringValue4 = [v5 stringValue];
      v15 = [stringValue3 isEqual:stringValue4];

      if (!v15)
      {
        goto LABEL_25;
      }
    }

    if (!-[BMMLSELabeledDataStoreFeatureFeatureValue hasBoolValue](self, "hasBoolValue") && ![v5 hasBoolValue] || -[BMMLSELabeledDataStoreFeatureFeatureValue hasBoolValue](self, "hasBoolValue") && objc_msgSend(v5, "hasBoolValue") && (v17 = -[BMMLSELabeledDataStoreFeatureFeatureValue BOOLValue](self, "BOOLValue"), v17 == objc_msgSend(v5, "BOOLValue")))
    {
      timeBucketValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self timeBucketValue];
      if (timeBucketValue == [v5 timeBucketValue])
      {
        doubleValuedVectorValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
        doubleValuedVectorValue2 = [v5 doubleValuedVectorValue];
        if (doubleValuedVectorValue == doubleValuedVectorValue2)
        {
          v16 = 1;
        }

        else
        {
          doubleValuedVectorValue3 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
          doubleValuedVectorValue4 = [v5 doubleValuedVectorValue];
          v16 = [doubleValuedVectorValue3 isEqual:doubleValuedVectorValue4];
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v16 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v16 = 0;
LABEL_27:

  return v16;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  if ([(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasIntValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStoreFeatureFeatureValue intValue](self, "intValue")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasDoubleValue]|| ([(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
    v5 = MEMORY[0x1E696AD98];
    [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
    v6 = [v5 numberWithDouble:?];
  }

  stringValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
  if ([(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasBoolValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStoreFeatureFeatureValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSELabeledDataStoreFeatureFeatureValue timeBucketValue](self, "timeBucketValue")}];
  doubleValuedVectorValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
  jsonDictionary = [doubleValuedVectorValue jsonDictionary];

  v24[0] = @"intValue";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v23 = v3;
  v25[0] = null;
  v24[1] = @"doubleValue";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v25[1] = null2;
  v24[2] = @"stringValue";
  null3 = stringValue;
  if (!stringValue)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = null3;
  v24[3] = @"BOOLValue";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = null4;
  v24[4] = @"timeBucketValue";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"doubleValuedVectorValue";
  null6 = jsonDictionary;
  if (!jsonDictionary)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (jsonDictionary)
  {
    if (v9)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v9)
    {
LABEL_25:
      if (v8)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  if (v8)
  {
LABEL_26:
    if (stringValue)
    {
      goto LABEL_27;
    }

LABEL_36:

    if (v6)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_35:

  if (!stringValue)
  {
    goto LABEL_36;
  }

LABEL_27:
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_37:

LABEL_28:
  if (!v23)
  {
  }

  return v18;
}

- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v68[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"intValue"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"doubleValue"];
    v52 = v7;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v54 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"stringValue"];
      selfCopy = self;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = 0;
LABEL_10:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"BOOLValue"];
        v50 = v11;
        v51 = v8;
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v53 = 0;
              v22 = 0;
              goto LABEL_58;
            }

            v34 = objc_alloc(MEMORY[0x1E696ABC0]);
            v35 = *MEMORY[0x1E698F240];
            v61 = *MEMORY[0x1E696A578];
            errorCopy = error;
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"BOOLValue"];
            v62 = v15;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
            v37 = v34;
            v8 = v51;
            v38 = [v37 initWithDomain:v35 code:2 userInfo:v13];
            v53 = 0;
            v22 = 0;
            *errorCopy = v38;
            v11 = v50;
            goto LABEL_57;
          }

          v53 = v12;
        }

        else
        {
          v53 = 0;
        }

        v13 = [dictionaryCopy objectForKeyedSubscript:@"timeBucketValue"];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          errorCopy3 = error;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v13;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v15 = 0;
                v22 = 0;
                v11 = v50;
                goto LABEL_57;
              }

              v49 = objc_alloc(MEMORY[0x1E696ABC0]);
              v44 = *MEMORY[0x1E698F240];
              v59 = *MEMORY[0x1E696A578];
              v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeBucketValue"];
              v60 = v39;
              v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
              v45 = [v49 initWithDomain:v44 code:2 userInfo:v40];
              v15 = 0;
              v22 = 0;
              *errorCopy3 = v45;
              goto LABEL_54;
            }

            v16 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString(v13)];
          }

          v15 = v16;
        }

        else
        {
          errorCopy3 = error;
          v15 = 0;
        }

        v39 = [dictionaryCopy objectForKeyedSubscript:@"doubleValuedVectorValue"];
        if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v40 = 0;
LABEL_40:
          v11 = v50;
          v22 = -[BMMLSELabeledDataStoreFeatureFeatureValue initWithIntValue:doubleValue:stringValue:BOOLValue:timeBucketValue:doubleValuedVectorValue:](selfCopy, "initWithIntValue:doubleValue:stringValue:BOOLValue:timeBucketValue:doubleValuedVectorValue:", v51, v54, v50, v53, [v15 intValue], v40);
          selfCopy = v22;
LABEL_55:

LABEL_56:
          v8 = v51;
LABEL_57:

          goto LABEL_58;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v39;
          v56 = 0;
          v40 = [[BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector alloc] initWithJSONDictionary:v41 error:&v56];
          v42 = v56;
          if (!v42)
          {

            goto LABEL_40;
          }

          if (errorCopy3)
          {
            v42 = v42;
            *errorCopy3 = v42;
          }

          v39 = v41;
        }

        else
        {
          if (!errorCopy3)
          {
            v22 = 0;
            v11 = v50;
            goto LABEL_56;
          }

          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v57 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"doubleValuedVectorValue"];
          v58 = v40;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *errorCopy3 = [v48 initWithDomain:v47 code:2 userInfo:v43];
        }

        v22 = 0;
LABEL_54:
        v11 = v50;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        goto LABEL_10;
      }

      if (error)
      {
        v29 = v8;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy4 = error;
        v32 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
        v64 = v53;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v33 = v30;
        v8 = v29;
        v22 = 0;
        *errorCopy4 = [v33 initWithDomain:v32 code:2 userInfo:v12];
        v11 = 0;
LABEL_58:
        v20 = v54;

        self = selfCopy;
        goto LABEL_59;
      }

      v11 = 0;
      v22 = 0;
      v20 = v54;
LABEL_59:

      v7 = v52;
      goto LABEL_60;
    }

    if (error)
    {
      v23 = v8;
      v24 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy5 = error;
      v26 = *MEMORY[0x1E698F240];
      v65 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
      v66 = v27;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v28 = v24;
      v8 = v23;
      v20 = 0;
      v22 = 0;
      *errorCopy5 = [v28 initWithDomain:v26 code:2 userInfo:v10];
      v11 = v27;
      goto LABEL_59;
    }

    v20 = 0;
    v22 = 0;
LABEL_60:

    goto LABEL_61;
  }

  if (error)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy6 = error;
    v19 = *MEMORY[0x1E698F240];
    v67 = *MEMORY[0x1E696A578];
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intValue"];
    v68[0] = v20;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v21 = [v17 initWithDomain:v19 code:2 userInfo:v9];
    v8 = 0;
    v22 = 0;
    *errorCopy6 = v21;
    goto LABEL_60;
  }

  v8 = 0;
  v22 = 0;
LABEL_61:

  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSELabeledDataStoreFeatureFeatureValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIntValue)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDoubleValue)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBoolValue)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_doubleValuedVectorValue)
  {
    PBDataWriterPlaceMark();
    [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self->_doubleValuedVectorValue writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMMLSELabeledDataStoreFeatureFeatureValue;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_76;
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
        LOBYTE(v48[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48[0] & 0x7F) << v7;
        if ((v48[0] & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasBoolValue = 1;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v34 |= (v48[0] & 0x7F) << v32;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                LOBYTE(v38) = 0;
                goto LABEL_66;
              }
            }

            v38 = (v34 != 0) & ~[fromCopy hasError];
LABEL_66:
            v5->_BOOLValue = v38;
            break;
          case 6:
            v48[0] = 0;
            v48[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_75;
            }

            v41 = [[BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector alloc] initByReadFrom:fromCopy];
            if (!v41)
            {
              goto LABEL_75;
            }

            doubleValuedVectorValue = v5->_doubleValuedVectorValue;
            v5->_doubleValuedVectorValue = v41;

            PBReaderRecallMark();
            break;
          case 5:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v48[0] & 0x7F) << v18;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_69;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 0x16)
            {
LABEL_69:
              LODWORD(v20) = 0;
            }

            v5->_timeBucketValue = v20;
            break;
          default:
LABEL_53:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_75;
            }

            break;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasIntValue = 1;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (v48[0] & 0x7F) << v25;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_64;
              }
            }

            if ([fromCopy hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_64:
            v5->_intValue = v31;
            break;
          case 2:
            v5->_hasDoubleValue = 1;
            v48[0] = 0;
            v39 = [fromCopy position] + 8;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 8, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            *&v5->_doubleValue = v48[0];
            break;
          case 3:
            v16 = PBReaderReadString();
            stringValue = v5->_stringValue;
            v5->_stringValue = v16;

            break;
          default:
            goto LABEL_53;
        }
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_75:
    v45 = 0;
  }

  else
  {
LABEL_76:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStoreFeatureFeatureValue intValue](self, "intValue")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
  v6 = [v5 numberWithDouble:?];
  stringValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStoreFeatureFeatureValue BOOLValue](self, "BOOLValue")}];
  v9 = BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketAsString([(BMMLSELabeledDataStoreFeatureFeatureValue *)self timeBucketValue]);
  doubleValuedVectorValue = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
  v11 = [v3 initWithFormat:@"BMMLSELabeledDataStoreFeatureFeatureValue with intValue: %@, doubleValue: %@, stringValue: %@, BOOLValue: %@, timeBucketValue: %@, doubleValuedVectorValue: %@", v4, v6, stringValue, v8, v9, doubleValuedVectorValue];

  return v11;
}

- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithIntValue:(id)value doubleValue:(id)doubleValue stringValue:(id)stringValue BOOLValue:(id)lValue timeBucketValue:(int)bucketValue doubleValuedVectorValue:(id)vectorValue
{
  valueCopy = value;
  doubleValueCopy = doubleValue;
  stringValueCopy = stringValue;
  lValueCopy = lValue;
  vectorValueCopy = vectorValue;
  v23.receiver = self;
  v23.super_class = BMMLSELabeledDataStoreFeatureFeatureValue;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (valueCopy)
    {
      v19->_hasIntValue = 1;
      unsignedIntValue = [valueCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v19->_hasIntValue = 0;
    }

    v19->_intValue = unsignedIntValue;
    if (doubleValueCopy)
    {
      v19->_hasDoubleValue = 1;
      [doubleValueCopy doubleValue];
    }

    else
    {
      v19->_hasDoubleValue = 0;
      v21 = -1.0;
    }

    v19->_doubleValue = v21;
    objc_storeStrong(&v19->_stringValue, stringValue);
    if (lValueCopy)
    {
      v19->_hasBoolValue = 1;
      v19->_BOOLValue = [lValueCopy BOOLValue];
    }

    else
    {
      v19->_hasBoolValue = 0;
      v19->_BOOLValue = 0;
    }

    v19->_timeBucketValue = bucketValue;
    objc_storeStrong(&v19->_doubleValuedVectorValue, vectorValue);
  }

  return v19;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intValue" number:1 type:4 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"doubleValue" number:2 type:0 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stringValue" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"BOOLValue" number:4 type:12 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeBucketValue" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"doubleValuedVectorValue" number:6 type:14 subMessageClass:objc_opt_class()];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intValue" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"doubleValue" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stringValue" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"BOOLValue" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeBucketValue" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"doubleValuedVectorValue_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_163];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __52__BMMLSELabeledDataStoreFeatureFeatureValue_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 doubleValuedVectorValue];
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

    v8 = [[BMMLSELabeledDataStoreFeatureFeatureValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end