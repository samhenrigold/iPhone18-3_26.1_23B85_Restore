@interface BMCommAppsHoldAssistFedStats
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCommAppsHoldAssistFedStats)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMCommAppsHoldAssistFedStats)initWithProtoVersion:(id)version remotePhoneNumber:(id)number holdDuration:(id)duration holdAssistMLClassification:(int)classification holdAssistRecommendation:(int)recommendation holdAssistObservation:(int)observation remotePhoneNumberCountryCode:(id)code;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCommAppsHoldAssistFedStats

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMCommAppsHoldAssistFedStats hasProtoVersion](self, "hasProtoVersion") || [v5 hasProtoVersion])
    {
      if (![(BMCommAppsHoldAssistFedStats *)self hasProtoVersion])
      {
        goto LABEL_22;
      }

      if (![v5 hasProtoVersion])
      {
        goto LABEL_22;
      }

      protoVersion = [(BMCommAppsHoldAssistFedStats *)self protoVersion];
      if (protoVersion != [v5 protoVersion])
      {
        goto LABEL_22;
      }
    }

    remotePhoneNumber = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
    remotePhoneNumber2 = [v5 remotePhoneNumber];
    v9 = remotePhoneNumber2;
    if (remotePhoneNumber == remotePhoneNumber2)
    {
    }

    else
    {
      remotePhoneNumber3 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
      remotePhoneNumber4 = [v5 remotePhoneNumber];
      v12 = [remotePhoneNumber3 isEqual:remotePhoneNumber4];

      if (!v12)
      {
        goto LABEL_22;
      }
    }

    if (!-[BMCommAppsHoldAssistFedStats hasHoldDuration](self, "hasHoldDuration") && ![v5 hasHoldDuration] || -[BMCommAppsHoldAssistFedStats hasHoldDuration](self, "hasHoldDuration") && objc_msgSend(v5, "hasHoldDuration") && (v14 = -[BMCommAppsHoldAssistFedStats holdDuration](self, "holdDuration"), v14 == objc_msgSend(v5, "holdDuration")))
    {
      holdAssistMLClassification = [(BMCommAppsHoldAssistFedStats *)self holdAssistMLClassification];
      if (holdAssistMLClassification == [v5 holdAssistMLClassification])
      {
        holdAssistRecommendation = [(BMCommAppsHoldAssistFedStats *)self holdAssistRecommendation];
        if (holdAssistRecommendation == [v5 holdAssistRecommendation])
        {
          holdAssistObservation = [(BMCommAppsHoldAssistFedStats *)self holdAssistObservation];
          if (holdAssistObservation == [v5 holdAssistObservation])
          {
            remotePhoneNumberCountryCode = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
            remotePhoneNumberCountryCode2 = [v5 remotePhoneNumberCountryCode];
            if (remotePhoneNumberCountryCode == remotePhoneNumberCountryCode2)
            {
              v13 = 1;
            }

            else
            {
              remotePhoneNumberCountryCode3 = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
              remotePhoneNumberCountryCode4 = [v5 remotePhoneNumberCountryCode];
              v13 = [remotePhoneNumberCountryCode3 isEqual:remotePhoneNumberCountryCode4];
            }

            goto LABEL_23;
          }
        }
      }
    }

LABEL_22:
    v13 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v13 = 0;
LABEL_24:

  return v13;
}

- (id)jsonDictionary
{
  v25[7] = *MEMORY[0x1E69E9840];
  if ([(BMCommAppsHoldAssistFedStats *)self hasProtoVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats protoVersion](self, "protoVersion")}];
  }

  else
  {
    v3 = 0;
  }

  remotePhoneNumber = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
  if ([(BMCommAppsHoldAssistFedStats *)self hasHoldDuration])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats holdDuration](self, "holdDuration")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommAppsHoldAssistFedStats holdAssistMLClassification](self, "holdAssistMLClassification")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommAppsHoldAssistFedStats holdAssistRecommendation](self, "holdAssistRecommendation")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCommAppsHoldAssistFedStats holdAssistObservation](self, "holdAssistObservation")}];
  remotePhoneNumberCountryCode = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
  v24[0] = @"protoVersion";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v25[0] = null;
  v24[1] = @"remotePhoneNumber";
  null2 = remotePhoneNumber;
  if (!remotePhoneNumber)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v25[1] = null2;
  v24[2] = @"holdDuration";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v3;
  v19 = null3;
  v25[2] = null3;
  v24[3] = @"holdAssistMLClassification";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = remotePhoneNumber;
  v25[3] = null4;
  v24[4] = @"holdAssistRecommendation";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = null5;
  v24[5] = @"holdAssistObservation";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = null6;
  v24[6] = @"remotePhoneNumberCountryCode";
  null7 = remotePhoneNumberCountryCode;
  if (!remotePhoneNumberCountryCode)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v25[6] = null7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:7];
  if (remotePhoneNumberCountryCode)
  {
    if (v8)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (v7)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_23:
  if (v7)
  {
    goto LABEL_24;
  }

LABEL_34:

LABEL_24:
  if (!v6)
  {
  }

  if (v5)
  {
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_36:

    if (v23)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v23)
  {
    goto LABEL_29;
  }

LABEL_37:

LABEL_29:

  return v17;
}

- (BMCommAppsHoldAssistFedStats)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v82[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"protoVersion"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v67 = 0;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"remotePhoneNumber"];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          v18 = 0;
          goto LABEL_57;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v21 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"remotePhoneNumber"];
        v80 = v66;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v23 = v19;
        v10 = v22;
        v8 = 0;
        v18 = 0;
        *errorCopy = [v23 initWithDomain:v21 code:2 userInfo:v22];
        goto LABEL_56;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"holdDuration"];
    v62 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v66 = 0;
          v18 = 0;
          goto LABEL_56;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v26 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"holdDuration"];
        v78 = v13;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v28 = v24;
        v10 = v62;
        v61 = v27;
        v66 = 0;
        v18 = 0;
        *errorCopy2 = [v28 initWithDomain:v26 code:2 userInfo:?];
LABEL_55:

LABEL_56:
        goto LABEL_57;
      }

      v66 = v10;
    }

    else
    {
      v66 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"holdAssistMLClassification"];
    v61 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v13 = 0;
            v18 = 0;
            v10 = v62;
            goto LABEL_55;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v75 = *MEMORY[0x1E696A578];
          v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"holdAssistMLClassification"];
          v76 = v65;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v51 = [v49 initWithDomain:v50 code:2 userInfo:v44];
          v13 = 0;
          v18 = 0;
          *error = v51;
          goto LABEL_53;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMCommAppsHoldAssistFedStatsMLClassificationFromString(v12)];
      }

      v13 = v14;
    }

    else
    {
      v13 = 0;
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"holdAssistRecommendation"];
    v59 = v29;
    v60 = v6;
    v64 = v8;
    if (v29 && (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v30;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v65 = 0;
            v18 = 0;
            v10 = v62;
            v44 = v30;
            goto LABEL_54;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v73 = *MEMORY[0x1E696A578];
          v44 = v30;
          v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"holdAssistRecommendation"];
          v74 = v63;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v54 = [v52 initWithDomain:v53 code:2 userInfo:v32];
          v65 = 0;
          v18 = 0;
          *error = v54;
          goto LABEL_52;
        }

        v31 = [MEMORY[0x1E696AD98] numberWithInt:BMCommAppsHoldAssistFedStatsRecommendationFromString(v30)];
      }

      v65 = v31;
    }

    else
    {
      v65 = 0;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"holdAssistObservation"];
    if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v63 = 0;
            v18 = 0;
            v44 = v59;
            goto LABEL_52;
          }

          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = *MEMORY[0x1E698F240];
          v71 = *MEMORY[0x1E696A578];
          v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"holdAssistObservation"];
          v72 = v38;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
          v57 = [v55 initWithDomain:v56 code:2 userInfo:v34];
          v63 = 0;
          v18 = 0;
          *error = v57;
          goto LABEL_50;
        }

        v33 = [MEMORY[0x1E696AD98] numberWithInt:BMCommAppsHoldAssistFedStatsObservationFromString(v32)];
      }

      v63 = v33;
    }

    else
    {
      v63 = 0;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"remotePhoneNumberCountryCode"];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v44 = v59;
        if (error)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = *MEMORY[0x1E698F240];
          v69 = *MEMORY[0x1E696A578];
          v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"remotePhoneNumberCountryCode"];
          v70 = v47;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          *error = [v46 initWithDomain:v58 code:2 userInfo:v48];
        }

        v38 = 0;
        v18 = 0;
        goto LABEL_51;
      }

      v35 = v7;
      v37 = v67;
      selfCopy2 = self;
      v38 = v34;
    }

    else
    {
      v35 = v7;
      v37 = v67;
      selfCopy2 = self;
      v38 = 0;
    }

    intValue = [v13 intValue];
    v40 = v13;
    intValue2 = [v65 intValue];
    intValue3 = [v63 intValue];
    v67 = v37;
    v43 = intValue2;
    v13 = v40;
    v18 = [(BMCommAppsHoldAssistFedStats *)selfCopy2 initWithProtoVersion:v37 remotePhoneNumber:v64 holdDuration:v66 holdAssistMLClassification:intValue holdAssistRecommendation:v43 holdAssistObservation:intValue3 remotePhoneNumberCountryCode:v38];
    self = v18;
    v7 = v35;
LABEL_50:
    v44 = v59;
LABEL_51:

LABEL_52:
    v6 = v60;
    v8 = v64;
LABEL_53:
    v10 = v62;
LABEL_54:

    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v67 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v67 = 0;
    v18 = 0;
    goto LABEL_58;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v17 = *MEMORY[0x1E698F240];
  v81 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"protoVersion"];
  v82[0] = v8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:&v81 count:1];
  v67 = 0;
  v18 = 0;
  *errorCopy3 = [v15 initWithDomain:v17 code:2 userInfo:v7];
LABEL_57:

LABEL_58:
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCommAppsHoldAssistFedStats *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasProtoVersion)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_remotePhoneNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasHoldDuration)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_remotePhoneNumberCountryCode)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v54.receiver = self;
  v54.super_class = BMCommAppsHoldAssistFedStats;
  v5 = [(BMEventBase *)&v54 init];
  if (!v5)
  {
    goto LABEL_102;
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
        v55 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v55 & 0x7F) << v7;
        if ((v55 & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        if (v15 == 1)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasProtoVersion = 1;
          while (1)
          {
            v55 = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v55 & 0x7F) << v35;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v13 = v36++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_80;
            }
          }

          if ([fromCopy hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v37;
          }

LABEL_80:
          v49 = 24;
LABEL_98:
          *(&v5->super.super.isa + v49) = v29;
          goto LABEL_99;
        }

        if (v15 != 2)
        {
          if (v15 != 3)
          {
            goto LABEL_63;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasHoldDuration = 1;
          while (1)
          {
            v55 = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (v55 & 0x7F) << v23;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              v29 = 0;
              goto LABEL_97;
            }
          }

          if ([fromCopy hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_97:
          v49 = 28;
          goto LABEL_98;
        }

        v46 = PBReaderReadString();
        v47 = 48;
      }

      else
      {
        if (v15 <= 5)
        {
          if (v15 == 4)
          {
            v41 = 0;
            v42 = 0;
            v18 = 0;
            while (1)
            {
              v55 = 0;
              v43 = [fromCopy position] + 1;
              if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v55 & 0x7F) << v41;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v22 = v42++ > 8;
              if (v22)
              {
                goto LABEL_83;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 5)
            {
LABEL_83:
              LODWORD(v18) = 0;
            }

            v50 = 32;
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_63;
            }

            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v55 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v55 & 0x7F) << v16;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_87;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 3)
            {
LABEL_87:
              LODWORD(v18) = 0;
            }

            v50 = 36;
          }

LABEL_93:
          *(&v5->super.super.isa + v50) = v18;
          goto LABEL_99;
        }

        if (v15 != 7)
        {
          if (v15 != 6)
          {
LABEL_63:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_101;
            }

            goto LABEL_99;
          }

          v30 = 0;
          v31 = 0;
          v18 = 0;
          while (1)
          {
            v55 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v55 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v55 & 0x7F) << v30;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v31++ > 8;
            if (v22)
            {
              goto LABEL_91;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 6)
          {
LABEL_91:
            LODWORD(v18) = 0;
          }

          v50 = 40;
          goto LABEL_93;
        }

        v46 = PBReaderReadString();
        v47 = 56;
      }

      v48 = *(&v5->super.super.isa + v47);
      *(&v5->super.super.isa + v47) = v46;

LABEL_99:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_101:
    v52 = 0;
  }

  else
  {
LABEL_102:
    v52 = v5;
  }

  return v52;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats protoVersion](self, "protoVersion")}];
  remotePhoneNumber = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumber];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMCommAppsHoldAssistFedStats holdDuration](self, "holdDuration")}];
  v7 = BMCommAppsHoldAssistFedStatsMLClassificationAsString([(BMCommAppsHoldAssistFedStats *)self holdAssistMLClassification]);
  v8 = BMCommAppsHoldAssistFedStatsRecommendationAsString([(BMCommAppsHoldAssistFedStats *)self holdAssistRecommendation]);
  v9 = BMCommAppsHoldAssistFedStatsObservationAsString([(BMCommAppsHoldAssistFedStats *)self holdAssistObservation]);
  remotePhoneNumberCountryCode = [(BMCommAppsHoldAssistFedStats *)self remotePhoneNumberCountryCode];
  v11 = [v3 initWithFormat:@"BMCommAppsHoldAssistFedStats with protoVersion: %@, remotePhoneNumber: %@, holdDuration: %@, holdAssistMLClassification: %@, holdAssistRecommendation: %@, holdAssistObservation: %@, remotePhoneNumberCountryCode: %@", v4, remotePhoneNumber, v6, v7, v8, v9, remotePhoneNumberCountryCode];

  return v11;
}

- (BMCommAppsHoldAssistFedStats)initWithProtoVersion:(id)version remotePhoneNumber:(id)number holdDuration:(id)duration holdAssistMLClassification:(int)classification holdAssistRecommendation:(int)recommendation holdAssistObservation:(int)observation remotePhoneNumberCountryCode:(id)code
{
  versionCopy = version;
  numberCopy = number;
  durationCopy = duration;
  codeCopy = code;
  v23.receiver = self;
  v23.super_class = BMCommAppsHoldAssistFedStats;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v19->_hasProtoVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v19->_hasProtoVersion = 0;
    }

    v19->_protoVersion = unsignedIntValue;
    objc_storeStrong(&v19->_remotePhoneNumber, number);
    if (durationCopy)
    {
      v19->_hasHoldDuration = 1;
      unsignedIntValue2 = [durationCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v19->_hasHoldDuration = 0;
    }

    v19->_holdDuration = unsignedIntValue2;
    v19->_holdAssistMLClassification = classification;
    v19->_holdAssistRecommendation = recommendation;
    v19->_holdAssistObservation = observation;
    objc_storeStrong(&v19->_remotePhoneNumberCountryCode, code);
  }

  return v19;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"protoVersion" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"remotePhoneNumber" number:2 type:13 subMessageClass:{0, v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdDuration" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdAssistMLClassification" number:4 type:4 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdAssistRecommendation" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"holdAssistObservation" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"remotePhoneNumberCountryCode" number:7 type:13 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"protoVersion" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"remotePhoneNumber" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdDuration" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdAssistMLClassification" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdAssistRecommendation" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"holdAssistObservation" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"remotePhoneNumberCountryCode" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
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

    v8 = [[BMCommAppsHoldAssistFedStats alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end