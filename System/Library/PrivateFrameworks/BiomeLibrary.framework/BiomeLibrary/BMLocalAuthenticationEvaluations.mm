@interface BMLocalAuthenticationEvaluations
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMLocalAuthenticationEvaluations)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMLocalAuthenticationEvaluations)initWithPolicy:(id)policy result:(id)result biometry:(id)biometry passcode:(id)passcode ratchetState:(int)state ratchetArmingState:(int)armingState;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMLocalAuthenticationEvaluations

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"policy" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:2 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"result" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:2 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"biometry_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_234];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"passcode_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_236];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ratchetState" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ratchetArmingState" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMLocalAuthenticationEvaluations hasPolicy](self, "hasPolicy") || [v5 hasPolicy])
    {
      if (![(BMLocalAuthenticationEvaluations *)self hasPolicy])
      {
        goto LABEL_23;
      }

      if (![v5 hasPolicy])
      {
        goto LABEL_23;
      }

      policy = [(BMLocalAuthenticationEvaluations *)self policy];
      if (policy != [v5 policy])
      {
        goto LABEL_23;
      }
    }

    if (-[BMLocalAuthenticationEvaluations hasResult](self, "hasResult") || [v5 hasResult])
    {
      if (![(BMLocalAuthenticationEvaluations *)self hasResult])
      {
        goto LABEL_23;
      }

      if (![v5 hasResult])
      {
        goto LABEL_23;
      }

      result = [(BMLocalAuthenticationEvaluations *)self result];
      if (result != [v5 result])
      {
        goto LABEL_23;
      }
    }

    biometry = [(BMLocalAuthenticationEvaluations *)self biometry];
    biometry2 = [v5 biometry];
    v10 = biometry2;
    if (biometry == biometry2)
    {
    }

    else
    {
      biometry3 = [(BMLocalAuthenticationEvaluations *)self biometry];
      biometry4 = [v5 biometry];
      v13 = [biometry3 isEqual:biometry4];

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    passcode = [(BMLocalAuthenticationEvaluations *)self passcode];
    passcode2 = [v5 passcode];
    v17 = passcode2;
    if (passcode == passcode2)
    {
    }

    else
    {
      passcode3 = [(BMLocalAuthenticationEvaluations *)self passcode];
      passcode4 = [v5 passcode];
      v20 = [passcode3 isEqual:passcode4];

      if (!v20)
      {
        goto LABEL_23;
      }
    }

    ratchetState = [(BMLocalAuthenticationEvaluations *)self ratchetState];
    if (ratchetState == [v5 ratchetState])
    {
      ratchetArmingState = [(BMLocalAuthenticationEvaluations *)self ratchetArmingState];
      v14 = ratchetArmingState == [v5 ratchetArmingState];
LABEL_24:

      goto LABEL_25;
    }

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  v14 = 0;
LABEL_25:

  return v14;
}

- (id)jsonDictionary
{
  v24[6] = *MEMORY[0x1E69E9840];
  if ([(BMLocalAuthenticationEvaluations *)self hasPolicy])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations policy](self, "policy")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMLocalAuthenticationEvaluations *)self hasResult])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations result](self, "result")}];
  }

  else
  {
    v4 = 0;
  }

  biometry = [(BMLocalAuthenticationEvaluations *)self biometry];
  jsonDictionary = [biometry jsonDictionary];

  passcode = [(BMLocalAuthenticationEvaluations *)self passcode];
  jsonDictionary2 = [passcode jsonDictionary];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations ratchetState](self, "ratchetState")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations ratchetArmingState](self, "ratchetArmingState")}];
  v23[0] = @"policy";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v22 = v3;
  v24[0] = null;
  v23[1] = @"result";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null2;
  v24[1] = null2;
  v23[2] = @"biometry";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v23[3] = @"passcode";
  null4 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23[4] = @"ratchetState";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v23[5] = @"ratchetArmingState";
  null6 = v10;
  if (!v10)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v24[5] = null6;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:{6, v19}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v9)
    {
LABEL_21:
      if (jsonDictionary2)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }
  }

  if (jsonDictionary2)
  {
LABEL_22:
    if (jsonDictionary)
    {
      goto LABEL_23;
    }

LABEL_32:

    if (v4)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_31:

  if (!jsonDictionary)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (v4)
  {
    goto LABEL_24;
  }

LABEL_33:

LABEL_24:
  if (!v22)
  {
  }

  return v17;
}

- (BMLocalAuthenticationEvaluations)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v81[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"policy"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"result"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          v17 = 0;
          goto LABEL_61;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = v8;
        v26 = *MEMORY[0x1E698F240];
        v78 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v54 = objc_opt_class();
        v29 = v28;
        self = selfCopy;
        v15 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v54, @"result"];
        v79 = v15;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v31 = v26;
        v8 = v25;
        v67 = v30;
        v32 = [v24 initWithDomain:v31 code:2 userInfo:?];
        v10 = 0;
        v17 = 0;
        *error = v32;
        goto LABEL_59;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"biometry"];
    errorCopy = error;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v17 = 0;
          goto LABEL_60;
        }

        v64 = v10;
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v62 = v8;
        v35 = *MEMORY[0x1E698F240];
        v76 = *MEMORY[0x1E696A578];
        selfCopy2 = self;
        v37 = objc_alloc(MEMORY[0x1E696AEC0]);
        v55 = objc_opt_class();
        v38 = v37;
        self = selfCopy2;
        v67 = [v38 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v55, @"biometry"];
        v77 = v67;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v40 = v34;
        v41 = v35;
        v8 = v62;
        v10 = v64;
        *error = [v40 initWithDomain:v41 code:2 userInfo:v39];

        v17 = 0;
        goto LABEL_58;
      }

      v15 = v11;
      v69 = 0;
      v67 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initWithJSONDictionary:v15 error:&v69];
      v16 = v69;
      if (v16)
      {
        if (error)
        {
          v16 = v16;
          *error = v16;
        }

        v17 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v67 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"passcode"];
    v61 = v8;
    v63 = v10;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy)
        {
          v17 = 0;
          goto LABEL_57;
        }

        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy3 = self;
        v43 = *MEMORY[0x1E698F240];
        v74 = *MEMORY[0x1E696A578];
        v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"passcode"];
        v75 = v60;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
        v44 = v43;
        self = selfCopy3;
        v45 = [v42 initWithDomain:v44 code:2 userInfo:v14];
        v17 = 0;
        *errorCopy = v45;
        goto LABEL_55;
      }

      v14 = v12;
      v68 = 0;
      v60 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initWithJSONDictionary:v14 error:&v68];
      v18 = v68;
      if (v18)
      {
        if (errorCopy)
        {
          v18 = v18;
          *errorCopy = v18;
        }

        v17 = 0;
        goto LABEL_56;
      }

      selfCopy5 = self;
    }

    else
    {
      selfCopy5 = self;
      v60 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"ratchetState"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v14 = 0;
            v17 = 0;
            goto LABEL_54;
          }

          v57 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v72 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ratchetState"];
          v73 = v47;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v51 = [v57 initWithDomain:v50 code:2 userInfo:v46];
          v14 = 0;
          v17 = 0;
          *errorCopy = v51;
          goto LABEL_53;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationEvaluationsRatchetStateFromString(v13)];
      }

      v14 = v33;
    }

    else
    {
      v14 = 0;
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"ratchetArmingState"];
    if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v46;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            v56 = *MEMORY[0x1E698F240];
            v70 = *MEMORY[0x1E696A578];
            v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ratchetArmingState"];
            v71 = v52;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
            *errorCopy = [v58 initWithDomain:v56 code:2 userInfo:v53];
          }

          v47 = 0;
          v17 = 0;
          goto LABEL_53;
        }

        v48 = [MEMORY[0x1E696AD98] numberWithInt:BMLocalAuthenticationEvaluationsRatchetArmingStateFromString(v46)];
      }

      v47 = v48;
    }

    else
    {
      v47 = 0;
    }

    v17 = -[BMLocalAuthenticationEvaluations initWithPolicy:result:biometry:passcode:ratchetState:ratchetArmingState:](selfCopy5, "initWithPolicy:result:biometry:passcode:ratchetState:ratchetArmingState:", v61, v63, v67, v60, [v14 intValue], objc_msgSend(v47, "intValue"));
    selfCopy5 = v17;
LABEL_53:

LABEL_54:
    self = selfCopy5;
LABEL_55:
    v10 = v63;
LABEL_56:

    v8 = v61;
LABEL_57:

LABEL_58:
    v15 = v11;
LABEL_59:

    v11 = v15;
LABEL_60:

    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = *MEMORY[0x1E698F240];
    v80 = *MEMORY[0x1E696A578];
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"policy"];
    v81[0] = v21;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v22 = v19;
    v10 = v21;
    v23 = [v22 initWithDomain:v20 code:2 userInfo:v9];
    v8 = 0;
    v17 = 0;
    *error = v23;
LABEL_61:

    goto LABEL_62;
  }

  v8 = 0;
  v17 = 0;
LABEL_62:

  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMLocalAuthenticationEvaluations *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasPolicy)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasResult)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_biometry)
  {
    PBDataWriterPlaceMark();
    [(BMLocalAuthenticationEvaluationsMechanism *)self->_biometry writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_passcode)
  {
    PBDataWriterPlaceMark();
    [(BMLocalAuthenticationEvaluationsMechanism *)self->_passcode writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMLocalAuthenticationEvaluations;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_91;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_89;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v50) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v50 & 0x7F) << v7;
        if ((v50 & 0x80) == 0)
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
        goto LABEL_89;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      switch(v15)
      {
        case 4:
          v50 = 0;
          v51 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_90;
          }

          v16 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_90;
          }

          v17 = 48;
LABEL_49:
          v32 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          PBReaderRecallMark();
          goto LABEL_88;
        case 5:
          v39 = 0;
          v40 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v41 = [fromCopy position] + 1;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v50 & 0x7F) << v39;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v24 = v40++ > 8;
            if (v24)
            {
              goto LABEL_85;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 8)
          {
LABEL_85:
            LODWORD(v20) = 0;
          }

          v45 = 32;
          break;
        case 7:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v50) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v50 & 0x7F) << v18;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_76;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 5)
          {
LABEL_76:
            LODWORD(v20) = 0;
          }

          v45 = 36;
          break;
        default:
LABEL_50:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_90;
          }

          goto LABEL_88;
      }

      *(&v5->super.super.isa + v45) = v20;
LABEL_88:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_89;
      }
    }

    if (v15 == 1)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v5->_hasPolicy = 1;
      while (1)
      {
        LOBYTE(v50) = 0;
        v28 = [fromCopy position] + 1;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v27 |= (v50 & 0x7F) << v25;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v25 += 7;
        v13 = v26++ >= 9;
        if (v13)
        {
          v31 = 0;
          goto LABEL_73;
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

LABEL_73:
      v44 = 24;
      goto LABEL_82;
    }

    if (v15 == 2)
    {
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v5->_hasResult = 1;
      while (1)
      {
        LOBYTE(v50) = 0;
        v36 = [fromCopy position] + 1;
        if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:&v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v35 |= (v50 & 0x7F) << v33;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v13 = v34++ >= 9;
        if (v13)
        {
          v31 = 0;
          goto LABEL_81;
        }
      }

      if ([fromCopy hasError])
      {
        v31 = 0;
      }

      else
      {
        v31 = v35;
      }

LABEL_81:
      v44 = 28;
LABEL_82:
      *(&v5->super.super.isa + v44) = v31;
      goto LABEL_88;
    }

    if (v15 != 3)
    {
      goto LABEL_50;
    }

    v50 = 0;
    v51 = 0;
    if (!PBReaderPlaceMark())
    {
      goto LABEL_90;
    }

    v16 = [[BMLocalAuthenticationEvaluationsMechanism alloc] initByReadFrom:fromCopy];
    if (!v16)
    {
      goto LABEL_90;
    }

    v17 = 40;
    goto LABEL_49;
  }

LABEL_89:
  if ([fromCopy hasError])
  {
LABEL_90:
    v47 = 0;
  }

  else
  {
LABEL_91:
    v47 = v5;
  }

  return v47;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations policy](self, "policy")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMLocalAuthenticationEvaluations result](self, "result")}];
  biometry = [(BMLocalAuthenticationEvaluations *)self biometry];
  passcode = [(BMLocalAuthenticationEvaluations *)self passcode];
  v8 = BMLocalAuthenticationEvaluationsRatchetStateAsString([(BMLocalAuthenticationEvaluations *)self ratchetState]);
  v9 = BMLocalAuthenticationEvaluationsRatchetArmingStateAsString([(BMLocalAuthenticationEvaluations *)self ratchetArmingState]);
  v10 = [v3 initWithFormat:@"BMLocalAuthenticationEvaluations with policy: %@, result: %@, biometry: %@, passcode: %@, ratchetState: %@, ratchetArmingState: %@", v4, v5, biometry, passcode, v8, v9];

  return v10;
}

- (BMLocalAuthenticationEvaluations)initWithPolicy:(id)policy result:(id)result biometry:(id)biometry passcode:(id)passcode ratchetState:(int)state ratchetArmingState:(int)armingState
{
  policyCopy = policy;
  resultCopy = result;
  biometryCopy = biometry;
  passcodeCopy = passcode;
  v22.receiver = self;
  v22.super_class = BMLocalAuthenticationEvaluations;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (policyCopy)
    {
      v18->_hasPolicy = 1;
      intValue = [policyCopy intValue];
    }

    else
    {
      v18->_hasPolicy = 0;
      intValue = -1;
    }

    v18->_policy = intValue;
    if (resultCopy)
    {
      v18->_hasResult = 1;
      intValue2 = [resultCopy intValue];
    }

    else
    {
      v18->_hasResult = 0;
      intValue2 = -1;
    }

    v18->_result = intValue2;
    objc_storeStrong(&v18->_biometry, biometry);
    objc_storeStrong(&v18->_passcode, passcode);
    v18->_ratchetState = state;
    v18->_ratchetArmingState = armingState;
  }

  return v18;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"policy" number:1 type:2 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"result" number:2 type:2 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"biometry" number:3 type:14 subMessageClass:objc_opt_class()];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passcode" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ratchetState" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ratchetArmingState" number:7 type:4 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __43__BMLocalAuthenticationEvaluations_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 passcode];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __43__BMLocalAuthenticationEvaluations_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 biometry];
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

    v8 = [[BMLocalAuthenticationEvaluations alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end