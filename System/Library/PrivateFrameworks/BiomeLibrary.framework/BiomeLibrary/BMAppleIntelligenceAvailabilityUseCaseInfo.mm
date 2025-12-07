@interface BMAppleIntelligenceAvailabilityUseCaseInfo
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppleIntelligenceAvailabilityUseCaseInfo)initWithIsDeviceEligible:(id)eligible shouldBlockAppleIntelligenceAssets:(id)assets waitlistStatus:(int)status;
- (BMAppleIntelligenceAvailabilityUseCaseInfo)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppleIntelligenceAvailabilityUseCaseInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMAppleIntelligenceAvailabilityUseCaseInfo hasIsDeviceEligible](self, "hasIsDeviceEligible") && ![v5 hasIsDeviceEligible] || -[BMAppleIntelligenceAvailabilityUseCaseInfo hasIsDeviceEligible](self, "hasIsDeviceEligible") && objc_msgSend(v5, "hasIsDeviceEligible") && (v6 = -[BMAppleIntelligenceAvailabilityUseCaseInfo isDeviceEligible](self, "isDeviceEligible"), v6 == objc_msgSend(v5, "isDeviceEligible"))) && (!-[BMAppleIntelligenceAvailabilityUseCaseInfo hasShouldBlockAppleIntelligenceAssets](self, "hasShouldBlockAppleIntelligenceAssets") && !objc_msgSend(v5, "hasShouldBlockAppleIntelligenceAssets") || -[BMAppleIntelligenceAvailabilityUseCaseInfo hasShouldBlockAppleIntelligenceAssets](self, "hasShouldBlockAppleIntelligenceAssets") && objc_msgSend(v5, "hasShouldBlockAppleIntelligenceAssets") && (v7 = -[BMAppleIntelligenceAvailabilityUseCaseInfo shouldBlockAppleIntelligenceAssets](self, "shouldBlockAppleIntelligenceAssets"), v7 == objc_msgSend(v5, "shouldBlockAppleIntelligenceAssets"))))
    {
      waitlistStatus = [(BMAppleIntelligenceAvailabilityUseCaseInfo *)self waitlistStatus];
      v8 = waitlistStatus == [v5 waitlistStatus];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonDictionary
{
  v12[3] = *MEMORY[0x1E69E9840];
  if ([(BMAppleIntelligenceAvailabilityUseCaseInfo *)self hasIsDeviceEligible])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailabilityUseCaseInfo isDeviceEligible](self, "isDeviceEligible")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMAppleIntelligenceAvailabilityUseCaseInfo *)self hasShouldBlockAppleIntelligenceAssets])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailabilityUseCaseInfo shouldBlockAppleIntelligenceAssets](self, "shouldBlockAppleIntelligenceAssets")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIntelligenceAvailabilityUseCaseInfo waitlistStatus](self, "waitlistStatus")}];
  v11[0] = @"isDeviceEligible";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"shouldBlockAppleIntelligenceAssets";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = null2;
  v11[2] = @"waitlistStatus";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (v5)
  {
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_20:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_21:

LABEL_16:

  return v9;
}

- (BMAppleIntelligenceAvailabilityUseCaseInfo)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isDeviceEligible"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"shouldBlockAppleIntelligenceAssets"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_25;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shouldBlockAppleIntelligenceAssets"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v18 = [v23 initWithDomain:v17 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v18;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"waitlistStatus"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v24 = objc_alloc(MEMORY[0x1E696ABC0]);
            v22 = *MEMORY[0x1E698F240];
            v25 = *MEMORY[0x1E696A578];
            v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"waitlistStatus"];
            v26 = v20;
            v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
            *error = [v24 initWithDomain:v22 code:2 userInfo:v21];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusFromString(v11)];
      }

      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    self = -[BMAppleIntelligenceAvailabilityUseCaseInfo initWithIsDeviceEligible:shouldBlockAppleIntelligenceAssets:waitlistStatus:](self, "initWithIsDeviceEligible:shouldBlockAppleIntelligenceAssets:waitlistStatus:", v8, v10, [v12 intValue]);
    selfCopy = self;
LABEL_24:

    goto LABEL_25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    selfCopy = 0;
    goto LABEL_26;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDeviceEligible"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v14 initWithDomain:v15 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppleIntelligenceAvailabilityUseCaseInfo *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsDeviceEligible)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasShouldBlockAppleIntelligenceAssets)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMAppleIntelligenceAvailabilityUseCaseInfo;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_62;
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
        v41 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v41 & 0x7F) << v7;
        if ((v41 & 0x80) == 0)
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
      if ((v14 >> 3) == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasIsDeviceEligible = 1;
        while (1)
        {
          v41 = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (v41 & 0x7F) << v30;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v13 = v31++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_53;
          }
        }

        v29 = (v32 != 0) & ~[fromCopy hasError];
LABEL_53:
        v36 = 16;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 3)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v41 & 0x7F) << v16;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              if (v17++ > 8)
              {
                goto LABEL_57;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 4)
            {
LABEL_57:
              LODWORD(v18) = 0;
            }

            v5->_waitlistStatus = v18;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_61;
          }

          goto LABEL_59;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasShouldBlockAppleIntelligenceAssets = 1;
        while (1)
        {
          v41 = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v41 & 0x7F) << v23;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_51;
          }
        }

        v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_51:
        v36 = 18;
      }

      *(&v5->super.super.isa + v36) = v29;
LABEL_59:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_61:
    v38 = 0;
  }

  else
  {
LABEL_62:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailabilityUseCaseInfo isDeviceEligible](self, "isDeviceEligible")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIntelligenceAvailabilityUseCaseInfo shouldBlockAppleIntelligenceAssets](self, "shouldBlockAppleIntelligenceAssets")}];
  v6 = BMAppleIntelligenceAvailabilityUseCaseInfoWaitlistStatusAsString([(BMAppleIntelligenceAvailabilityUseCaseInfo *)self waitlistStatus]);
  v7 = [v3 initWithFormat:@"BMAppleIntelligenceAvailabilityUseCaseInfo with isDeviceEligible: %@, shouldBlockAppleIntelligenceAssets: %@, waitlistStatus: %@", v4, v5, v6];

  return v7;
}

- (BMAppleIntelligenceAvailabilityUseCaseInfo)initWithIsDeviceEligible:(id)eligible shouldBlockAppleIntelligenceAssets:(id)assets waitlistStatus:(int)status
{
  eligibleCopy = eligible;
  assetsCopy = assets;
  v12.receiver = self;
  v12.super_class = BMAppleIntelligenceAvailabilityUseCaseInfo;
  v10 = [(BMEventBase *)&v12 init];
  if (v10)
  {
    v10->_dataVersion = [objc_opt_class() latestDataVersion];
    if (eligibleCopy)
    {
      v10->_hasIsDeviceEligible = 1;
      v10->_isDeviceEligible = [eligibleCopy BOOLValue];
    }

    else
    {
      v10->_hasIsDeviceEligible = 0;
      v10->_isDeviceEligible = 0;
    }

    if (assetsCopy)
    {
      v10->_hasShouldBlockAppleIntelligenceAssets = 1;
      v10->_shouldBlockAppleIntelligenceAssets = [assetsCopy BOOLValue];
    }

    else
    {
      v10->_hasShouldBlockAppleIntelligenceAssets = 0;
      v10->_shouldBlockAppleIntelligenceAssets = 0;
    }

    v10->_waitlistStatus = status;
  }

  return v10;
}

+ (id)protoFields
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDeviceEligible" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shouldBlockAppleIntelligenceAssets" number:2 type:12 subMessageClass:{0, v2}];
  v7[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"waitlistStatus" number:3 type:4 subMessageClass:0];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

+ (id)columns
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDeviceEligible" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shouldBlockAppleIntelligenceAssets" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"waitlistStatus" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

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

    v8 = [[BMAppleIntelligenceAvailabilityUseCaseInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end