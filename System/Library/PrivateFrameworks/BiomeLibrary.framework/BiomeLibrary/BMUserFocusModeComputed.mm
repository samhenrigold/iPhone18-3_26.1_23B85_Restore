@interface BMUserFocusModeComputed
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUserFocusModeComputed)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMUserFocusModeComputed)initWithMode:(id)mode starting:(id)starting updateReason:(int)reason semanticType:(int)type updateSource:(int)source semanticModeIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUserFocusModeComputed

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mode" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"starting" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updateReason" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"semanticType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updateSource" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"semanticModeIdentifier" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
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
    mode = [(BMUserFocusModeComputed *)self mode];
    mode2 = [v5 mode];
    v8 = mode2;
    if (mode == mode2)
    {
    }

    else
    {
      mode3 = [(BMUserFocusModeComputed *)self mode];
      mode4 = [v5 mode];
      v11 = [mode3 isEqual:mode4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMUserFocusModeComputed hasStarting](self, "hasStarting") && ![v5 hasStarting] || -[BMUserFocusModeComputed hasStarting](self, "hasStarting") && objc_msgSend(v5, "hasStarting") && (v13 = -[BMUserFocusModeComputed starting](self, "starting"), v13 == objc_msgSend(v5, "starting")))
    {
      updateReason = [(BMUserFocusModeComputed *)self updateReason];
      if (updateReason == [v5 updateReason])
      {
        semanticType = [(BMUserFocusModeComputed *)self semanticType];
        if (semanticType == [v5 semanticType])
        {
          updateSource = [(BMUserFocusModeComputed *)self updateSource];
          if (updateSource == [v5 updateSource])
          {
            semanticModeIdentifier = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
            semanticModeIdentifier2 = [v5 semanticModeIdentifier];
            if (semanticModeIdentifier == semanticModeIdentifier2)
            {
              v12 = 1;
            }

            else
            {
              semanticModeIdentifier3 = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
              semanticModeIdentifier4 = [v5 semanticModeIdentifier];
              v12 = [semanticModeIdentifier3 isEqual:semanticModeIdentifier4];
            }

            goto LABEL_18;
          }
        }
      }
    }

LABEL_17:
    v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v22[6] = *MEMORY[0x1E69E9840];
  mode = [(BMUserFocusModeComputed *)self mode];
  if ([(BMUserFocusModeComputed *)self hasStarting])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusModeComputed starting](self, "starting")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusModeComputed updateReason](self, "updateReason")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusModeComputed semanticType](self, "semanticType")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusModeComputed updateSource](self, "updateSource")}];
  semanticModeIdentifier = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
  v21[0] = @"mode";
  null = mode;
  if (!mode)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v20 = mode;
  v22[0] = null;
  v21[1] = @"starting";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null2;
  v22[1] = null2;
  v21[2] = @"updateReason";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22[2] = null3;
  v21[3] = @"semanticType";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22[3] = null4;
  v21[4] = @"updateSource";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v22[4] = null5;
  v21[5] = @"semanticModeIdentifier";
  null6 = semanticModeIdentifier;
  if (!semanticModeIdentifier)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v22[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{6, v17}];
  if (semanticModeIdentifier)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v6)
  {
LABEL_19:
    if (v5)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v4)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v20)
  {
  }

  return v15;
}

- (BMUserFocusModeComputed)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v61[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"mode"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!p_isa)
      {
        v49 = 0;
        selfCopy6 = self;
        goto LABEL_48;
      }

      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v11 = *MEMORY[0x1E698F240];
      v60 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mode"];
      v61[0] = v48;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
      v12 = [v10 initWithDomain:v11 code:2 userInfo:v7];
      v49 = 0;
      v13 = p_isa;
      p_isa = 0;
      *v13 = v12;
      goto LABEL_59;
    }

    v49 = v6;
  }

  else
  {
    v49 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"starting"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v7;
        goto LABEL_7;
      }

      if (p_isa)
      {
        v14 = objc_alloc(MEMORY[0x1E696ABC0]);
        v15 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"starting"];
        v59 = v47;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v16 = [v14 initWithDomain:v15 code:2 userInfo:v8];
        v48 = 0;
        v17 = p_isa;
        p_isa = 0;
        *v17 = v16;
        goto LABEL_65;
      }

      v48 = 0;
LABEL_59:
      selfCopy6 = self;
      goto LABEL_47;
    }
  }

  v48 = 0;
LABEL_7:
  v8 = [dictionaryCopy objectForKeyedSubscript:@"updateReason"];
  v44 = v6;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
LABEL_22:
        v47 = v9;
        goto LABEL_23;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusModeComputedUpdateReasonFromString(v8)];
        goto LABEL_22;
      }

      if (p_isa)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"updateReason"];
        v57 = v45;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
        v32 = [v30 initWithDomain:v31 code:2 userInfo:v18];
        v47 = 0;
        v33 = p_isa;
        p_isa = 0;
        *v33 = v32;
        goto LABEL_67;
      }

      v47 = 0;
LABEL_65:
      selfCopy6 = self;
      goto LABEL_46;
    }
  }

  v47 = 0;
LABEL_23:
  v18 = [dictionaryCopy objectForKeyedSubscript:@"semanticType"];
  if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
LABEL_30:
        v45 = v19;
        goto LABEL_31;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusModeComputedSemanticTypeFromString(v18)];
        goto LABEL_30;
      }

      if (p_isa)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = p_isa;
        v36 = *MEMORY[0x1E698F240];
        v54 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"semanticType"];
        v55 = v21;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v37 = [v34 initWithDomain:v36 code:2 userInfo:v20];
        v45 = 0;
        p_isa = 0;
        *v35 = v37;
        goto LABEL_69;
      }

      v45 = 0;
LABEL_67:
      selfCopy6 = self;
      goto LABEL_45;
    }
  }

  v45 = 0;
LABEL_31:
  v20 = [dictionaryCopy objectForKeyedSubscript:@"updateSource"];
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v20;
LABEL_38:
        v21 = v22;
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusModeComputedUpdateSourceFromString(v20)];
        goto LABEL_38;
      }

      if (p_isa)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = p_isa;
        v40 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"updateSource"];
        v53 = v24;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v41 = [v38 initWithDomain:v40 code:2 userInfo:v23];
        v21 = 0;
        p_isa = 0;
        *v39 = v41;
        goto LABEL_63;
      }

      v21 = 0;
LABEL_69:
      selfCopy6 = self;
      goto LABEL_44;
    }
  }

  v21 = 0;
LABEL_39:
  v23 = [dictionaryCopy objectForKeyedSubscript:@"semanticModeIdentifier"];
  if (v23)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
        goto LABEL_42;
      }

      if (p_isa)
      {
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v27 = p_isa;
        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"semanticModeIdentifier"];
        v51 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        *v27 = [v43 initWithDomain:v42 code:2 userInfo:v29];

        v24 = 0;
        p_isa = 0;
      }

      else
      {
        v24 = 0;
      }

LABEL_63:
      selfCopy6 = self;
      goto LABEL_43;
    }
  }

  v24 = 0;
LABEL_42:
  selfCopy6 = -[BMUserFocusModeComputed initWithMode:starting:updateReason:semanticType:updateSource:semanticModeIdentifier:](self, "initWithMode:starting:updateReason:semanticType:updateSource:semanticModeIdentifier:", v49, v48, [v47 intValue], objc_msgSend(v45, "intValue"), objc_msgSend(v21, "intValue"), v24);
  p_isa = &selfCopy6->super.super.isa;
LABEL_43:

LABEL_44:
LABEL_45:

  v6 = v44;
LABEL_46:

LABEL_47:
LABEL_48:

  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusModeComputed *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_mode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStarting)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_semanticModeIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMUserFocusModeComputed;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_84;
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
        v48 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
        if (v15 == 4)
        {
          v30 = 0;
          v31 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v48 & 0x7F) << v30;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              goto LABEL_68;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0xB)
          {
LABEL_68:
            LODWORD(v18) = 0;
          }

          v43 = 28;
LABEL_78:
          *(&v5->super.super.isa + v43) = v18;
          goto LABEL_81;
        }

        if (v15 != 6)
        {
          if (v15 != 5)
          {
LABEL_53:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_83;
            }

            goto LABEL_81;
          }

          v23 = 0;
          v24 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v22 = v24++ > 8;
            if (v22)
            {
              goto LABEL_76;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
          {
LABEL_76:
            LODWORD(v18) = 0;
          }

          v43 = 32;
          goto LABEL_78;
        }

        v28 = PBReaderReadString();
        v29 = 48;
      }

      else
      {
        if (v15 != 1)
        {
          if (v15 == 2)
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v5->_hasStarting = 1;
            while (1)
            {
              v48 = 0;
              v38 = [fromCopy position] + 1;
              if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v37 |= (v48 & 0x7F) << v35;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v13 = v36++ >= 9;
              if (v13)
              {
                LOBYTE(v41) = 0;
                goto LABEL_80;
              }
            }

            v41 = (v37 != 0) & ~[fromCopy hasError];
LABEL_80:
            v5->_starting = v41;
            goto LABEL_81;
          }

          if (v15 != 3)
          {
            goto LABEL_53;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v48 = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v48 & 0x7F) << v16;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v22 = v17++ > 8;
            if (v22)
            {
              goto LABEL_72;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 3)
          {
LABEL_72:
            LODWORD(v18) = 0;
          }

          v43 = 24;
          goto LABEL_78;
        }

        v28 = PBReaderReadString();
        v29 = 40;
      }

      v42 = *(&v5->super.super.isa + v29);
      *(&v5->super.super.isa + v29) = v28;

LABEL_81:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_83:
    v45 = 0;
  }

  else
  {
LABEL_84:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  mode = [(BMUserFocusModeComputed *)self mode];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusModeComputed starting](self, "starting")}];
  v6 = BMUserFocusModeComputedUpdateReasonAsString([(BMUserFocusModeComputed *)self updateReason]);
  v7 = BMUserFocusModeComputedSemanticTypeAsString([(BMUserFocusModeComputed *)self semanticType]);
  v8 = BMUserFocusModeComputedUpdateSourceAsString([(BMUserFocusModeComputed *)self updateSource]);
  semanticModeIdentifier = [(BMUserFocusModeComputed *)self semanticModeIdentifier];
  v10 = [v3 initWithFormat:@"BMUserFocusModeComputed with mode: %@, starting: %@, updateReason: %@, semanticType: %@, updateSource: %@, semanticModeIdentifier: %@", mode, v5, v6, v7, v8, semanticModeIdentifier];

  return v10;
}

- (BMUserFocusModeComputed)initWithMode:(id)mode starting:(id)starting updateReason:(int)reason semanticType:(int)type updateSource:(int)source semanticModeIdentifier:(id)identifier
{
  modeCopy = mode;
  startingCopy = starting;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = BMUserFocusModeComputed;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_mode, mode);
    if (startingCopy)
    {
      v18->_hasStarting = 1;
      v18->_starting = [startingCopy BOOLValue];
    }

    else
    {
      v18->_hasStarting = 0;
      v18->_starting = 0;
    }

    v18->_updateReason = reason;
    v18->_semanticType = type;
    v18->_updateSource = source;
    objc_storeStrong(&v18->_semanticModeIdentifier, identifier);
  }

  return v18;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mode" number:1 type:13 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"starting" number:2 type:12 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updateReason" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"semanticType" number:4 type:4 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updateSource" number:5 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"semanticModeIdentifier" number:6 type:13 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUserFocusModeComputed_v1;
  }

  else
  {
    if (version != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUserFocusModeComputed;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 20) = version;
  }

LABEL_9:

  return v9;
}

@end