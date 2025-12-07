@interface BMAppInstallationMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppInstallationMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppInstallationMetadata)initWithOriginalInstallationDate:(id)date version:(id)version shortVersion:(id)shortVersion uniqueInstallID:(id)d installSessionID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (NSDate)originalInstallationDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppInstallationMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    originalInstallationDate = [(BMAppInstallationMetadata *)self originalInstallationDate];
    originalInstallationDate2 = [v5 originalInstallationDate];
    v8 = originalInstallationDate2;
    if (originalInstallationDate == originalInstallationDate2)
    {
    }

    else
    {
      originalInstallationDate3 = [(BMAppInstallationMetadata *)self originalInstallationDate];
      originalInstallationDate4 = [v5 originalInstallationDate];
      v11 = [originalInstallationDate3 isEqual:originalInstallationDate4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    version = [(BMAppInstallationMetadata *)self version];
    version2 = [v5 version];
    v15 = version2;
    if (version == version2)
    {
    }

    else
    {
      version3 = [(BMAppInstallationMetadata *)self version];
      version4 = [v5 version];
      v18 = [version3 isEqual:version4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    shortVersion = [(BMAppInstallationMetadata *)self shortVersion];
    shortVersion2 = [v5 shortVersion];
    v21 = shortVersion2;
    if (shortVersion == shortVersion2)
    {
    }

    else
    {
      shortVersion3 = [(BMAppInstallationMetadata *)self shortVersion];
      shortVersion4 = [v5 shortVersion];
      v24 = [shortVersion3 isEqual:shortVersion4];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    uniqueInstallID = [(BMAppInstallationMetadata *)self uniqueInstallID];
    uniqueInstallID2 = [v5 uniqueInstallID];
    v27 = uniqueInstallID2;
    if (uniqueInstallID == uniqueInstallID2)
    {
    }

    else
    {
      uniqueInstallID3 = [(BMAppInstallationMetadata *)self uniqueInstallID];
      uniqueInstallID4 = [v5 uniqueInstallID];
      v30 = [uniqueInstallID3 isEqual:uniqueInstallID4];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    installSessionID = [(BMAppInstallationMetadata *)self installSessionID];
    installSessionID2 = [v5 installSessionID];
    if (installSessionID == installSessionID2)
    {
      v12 = 1;
    }

    else
    {
      installSessionID3 = [(BMAppInstallationMetadata *)self installSessionID];
      installSessionID4 = [v5 installSessionID];
      v12 = [installSessionID3 isEqual:installSessionID4];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSDate)originalInstallationDate
{
  if (self->_hasRaw_originalInstallationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_originalInstallationDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v27[5] = *MEMORY[0x1E69E9840];
  originalInstallationDate = [(BMAppInstallationMetadata *)self originalInstallationDate];
  if (originalInstallationDate)
  {
    v4 = MEMORY[0x1E696AD98];
    originalInstallationDate2 = [(BMAppInstallationMetadata *)self originalInstallationDate];
    [originalInstallationDate2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  version = [(BMAppInstallationMetadata *)self version];
  shortVersion = [(BMAppInstallationMetadata *)self shortVersion];
  uniqueInstallID = [(BMAppInstallationMetadata *)self uniqueInstallID];
  v10 = [uniqueInstallID base64EncodedStringWithOptions:0];

  installSessionID = [(BMAppInstallationMetadata *)self installSessionID];
  v12 = [installSessionID base64EncodedStringWithOptions:0];

  v22 = @"originalInstallationDate";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v27[0] = null;
  v23 = @"version";
  null2 = version;
  if (!version)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = null2;
  v24 = @"shortVersion";
  null3 = shortVersion;
  if (!shortVersion)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = null3;
  v25 = @"uniqueInstallID";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = null4;
  v26 = @"installSessionID";
  null5 = v12;
  if (!v12)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v22 count:{5, v20}];
  if (v12)
  {
    if (v10)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v10)
    {
LABEL_16:
      if (shortVersion)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (shortVersion)
  {
LABEL_17:
    if (version)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!version)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:

  return v18;
}

- (BMAppInstallationMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v63[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"originalInstallationDate"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v49 = 0;
LABEL_9:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"version"];
    if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v48 = 0;
          v22 = 0;
          goto LABEL_26;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v60 = *MEMORY[0x1E696A578];
        v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"version"];
        v61 = v46;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
        v48 = 0;
        v22 = 0;
        *error = [v24 initWithDomain:v25 code:2 userInfo:v16];
        goto LABEL_25;
      }

      v48 = v15;
    }

    else
    {
      v48 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"shortVersion"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v46 = 0;
          v22 = 0;
          goto LABEL_25;
        }

        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v58 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shortVersion"];
        v59 = v19;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        v27 = v7;
        v18 = v28 = error;
        v29 = [v47 initWithDomain:v26 code:2 userInfo:v18];
        v46 = 0;
        v22 = 0;
        *v28 = v29;
        v7 = v27;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v45 = v7;
      errorCopy2 = error;
      v46 = v16;
    }

    else
    {
      v45 = v7;
      v46 = 0;
      errorCopy2 = error;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"uniqueInstallID"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
LABEL_18:
      v20 = [dictionaryCopy objectForKeyedSubscript:@"installSessionID"];
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v21 = 0;
LABEL_21:
        v22 = [(BMAppInstallationMetadata *)self initWithOriginalInstallationDate:v49 version:v48 shortVersion:v46 uniqueInstallID:v19 installSessionID:v21];
        self = v22;
LABEL_22:

LABEL_23:
        v7 = v45;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v20 options:0];
        if (v21)
        {
          goto LABEL_21;
        }

        if (errorCopy2)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v42 = *MEMORY[0x1E698F240];
          v52 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"installSessionID"];
          v53 = v34;
          v35 = MEMORY[0x1E695DF20];
          v36 = &v53;
          v37 = &v52;
LABEL_56:
          v39 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
          *errorCopy2 = [v44 initWithDomain:v42 code:2 userInfo:v39];
        }
      }

      else if (errorCopy2)
      {
        v44 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"installSessionID"];
        v51 = v34;
        v35 = MEMORY[0x1E695DF20];
        v36 = &v51;
        v37 = &v50;
        goto LABEL_56;
      }

      v21 = 0;
      v22 = 0;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v18 options:0];
      if (v19)
      {
        goto LABEL_18;
      }

      if (errorCopy2)
      {
        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v56 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"uniqueInstallID"];
        v57 = v21;
        v31 = MEMORY[0x1E695DF20];
        v32 = &v57;
        v33 = &v56;
LABEL_53:
        v20 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:1];
        v38 = [v43 initWithDomain:v30 code:2 userInfo:v20];
        v19 = 0;
        v22 = 0;
        *errorCopy2 = v38;
        goto LABEL_22;
      }
    }

    else if (errorCopy2)
    {
      v43 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v54 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"uniqueInstallID"];
      v55 = v21;
      v31 = MEMORY[0x1E695DF20];
      v32 = &v55;
      v33 = &v54;
      goto LABEL_53;
    }

    v19 = 0;
    v22 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSince1970:v12];
LABEL_6:
    v49 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v49 = [v14 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    goto LABEL_6;
  }

  if (!error)
  {
    v49 = 0;
    v22 = 0;
    goto LABEL_27;
  }

  v40 = objc_alloc(MEMORY[0x1E696ABC0]);
  v41 = *MEMORY[0x1E698F240];
  v62 = *MEMORY[0x1E696A578];
  v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"originalInstallationDate"];
  v63[0] = v48;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
  v49 = 0;
  v22 = 0;
  *error = [v40 initWithDomain:v41 code:2 userInfo:v15];
LABEL_26:

LABEL_27:
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppInstallationMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_hasRaw_originalInstallationDate)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_shortVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_uniqueInstallID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_installSessionID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v25.receiver = self;
  v25.super_class = BMAppInstallationMetadata;
  v5 = [(BMEventBase *)&v25 init];
  if (!v5)
  {
    goto LABEL_40;
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
        LOBYTE(v26) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v26) & 0x7F) << v7;
        if ((LOBYTE(v26) & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v5->_hasRaw_originalInstallationDate = 1;
          v26 = 0.0;
          v20 = [fromCopy position] + 8;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v26 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_originalInstallationDate = v26;
          goto LABEL_29;
        }

        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 40;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v15)
        {
          case 3:
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_28;
          case 4:
            v16 = PBReaderReadData();
            v17 = 56;
            goto LABEL_28;
          case 5:
            v16 = PBReaderReadData();
            v17 = 64;
LABEL_28:
            v18 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_29;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_39;
      }

LABEL_29:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_39:
    v23 = 0;
  }

  else
  {
LABEL_40:
    v23 = v5;
  }

  return v23;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  originalInstallationDate = [(BMAppInstallationMetadata *)self originalInstallationDate];
  version = [(BMAppInstallationMetadata *)self version];
  shortVersion = [(BMAppInstallationMetadata *)self shortVersion];
  uniqueInstallID = [(BMAppInstallationMetadata *)self uniqueInstallID];
  installSessionID = [(BMAppInstallationMetadata *)self installSessionID];
  v9 = [v3 initWithFormat:@"BMAppInstallationMetadata with originalInstallationDate: %@, version: %@, shortVersion: %@, uniqueInstallID: %@, installSessionID: %@", originalInstallationDate, version, shortVersion, uniqueInstallID, installSessionID];

  return v9;
}

- (BMAppInstallationMetadata)initWithOriginalInstallationDate:(id)date version:(id)version shortVersion:(id)shortVersion uniqueInstallID:(id)d installSessionID:(id)iD
{
  dateCopy = date;
  versionCopy = version;
  shortVersionCopy = shortVersion;
  dCopy = d;
  iDCopy = iD;
  v20.receiver = self;
  v20.super_class = BMAppInstallationMetadata;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (dateCopy)
    {
      v17->_hasRaw_originalInstallationDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v17->_hasRaw_originalInstallationDate = 0;
      v18 = -1.0;
    }

    v17->_raw_originalInstallationDate = v18;
    objc_storeStrong(&v17->_version, version);
    objc_storeStrong(&v17->_shortVersion, shortVersion);
    objc_storeStrong(&v17->_uniqueInstallID, d);
    objc_storeStrong(&v17->_installSessionID, iD);
  }

  return v17;
}

+ (id)protoFields
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originalInstallationDate" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:2 type:13 subMessageClass:{0, v2}];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortVersion" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueInstallID" number:4 type:14 subMessageClass:0];
  v9[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"installSessionID" number:5 type:14 subMessageClass:0];
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)columns
{
  v9[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originalInstallationDate" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortVersion" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueInstallID" dataType:4 requestOnly:0 fieldNumber:4 protoDataType:14 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"installSessionID" dataType:4 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:5];

  return v7;
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

    v8 = [[BMAppInstallationMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end