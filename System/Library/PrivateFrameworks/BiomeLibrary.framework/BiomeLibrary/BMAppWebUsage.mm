@interface BMAppWebUsage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppWebUsage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppWebUsage)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp usageState:(int)state webpageURL:(id)l webDomain:(id)domain applicationID:(id)iD deviceID:(id)deviceID isUsageTrusted:(id)self0 safariProfileID:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppWebUsage

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageState" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageURL" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webDomain" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"applicationID" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUsageTrusted" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"safariProfileID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v13[0] = v2;
  v13[1] = v3;
  v13[2] = v4;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMAppWebUsage *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMAppWebUsage *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_33;
      }
    }

    absoluteTimestamp = [(BMAppWebUsage *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMAppWebUsage *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_33;
      }
    }

    usageState = [(BMAppWebUsage *)self usageState];
    if (usageState == [v5 usageState])
    {
      webpageURL = [(BMAppWebUsage *)self webpageURL];
      webpageURL2 = [v5 webpageURL];
      v22 = webpageURL2;
      if (webpageURL == webpageURL2)
      {
      }

      else
      {
        webpageURL3 = [(BMAppWebUsage *)self webpageURL];
        webpageURL4 = [v5 webpageURL];
        v25 = [webpageURL3 isEqual:webpageURL4];

        if (!v25)
        {
          goto LABEL_33;
        }
      }

      webDomain = [(BMAppWebUsage *)self webDomain];
      webDomain2 = [v5 webDomain];
      v28 = webDomain2;
      if (webDomain == webDomain2)
      {
      }

      else
      {
        webDomain3 = [(BMAppWebUsage *)self webDomain];
        webDomain4 = [v5 webDomain];
        v31 = [webDomain3 isEqual:webDomain4];

        if (!v31)
        {
          goto LABEL_33;
        }
      }

      applicationID = [(BMAppWebUsage *)self applicationID];
      applicationID2 = [v5 applicationID];
      v34 = applicationID2;
      if (applicationID == applicationID2)
      {
      }

      else
      {
        applicationID3 = [(BMAppWebUsage *)self applicationID];
        applicationID4 = [v5 applicationID];
        v37 = [applicationID3 isEqual:applicationID4];

        if (!v37)
        {
          goto LABEL_33;
        }
      }

      deviceID = [(BMAppWebUsage *)self deviceID];
      deviceID2 = [v5 deviceID];
      v40 = deviceID2;
      if (deviceID == deviceID2)
      {
      }

      else
      {
        deviceID3 = [(BMAppWebUsage *)self deviceID];
        deviceID4 = [v5 deviceID];
        v43 = [deviceID3 isEqual:deviceID4];

        if (!v43)
        {
          goto LABEL_33;
        }
      }

      if (!-[BMAppWebUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") && ![v5 hasIsUsageTrusted] || -[BMAppWebUsage hasIsUsageTrusted](self, "hasIsUsageTrusted") && objc_msgSend(v5, "hasIsUsageTrusted") && (v44 = -[BMAppWebUsage isUsageTrusted](self, "isUsageTrusted"), v44 == objc_msgSend(v5, "isUsageTrusted")))
      {
        safariProfileID = [(BMAppWebUsage *)self safariProfileID];
        safariProfileID2 = [v5 safariProfileID];
        if (safariProfileID == safariProfileID2)
        {
          v12 = 1;
        }

        else
        {
          safariProfileID3 = [(BMAppWebUsage *)self safariProfileID];
          safariProfileID4 = [v5 safariProfileID];
          v12 = [safariProfileID3 isEqual:safariProfileID4];
        }

        goto LABEL_34;
      }
    }

LABEL_33:
    v12 = 0;
LABEL_34:

    goto LABEL_35;
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v34[9] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMAppWebUsage *)self uniqueID];
  absoluteTimestamp = [(BMAppWebUsage *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMAppWebUsage *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppWebUsage usageState](self, "usageState")}];
  webpageURL = [(BMAppWebUsage *)self webpageURL];
  webDomain = [(BMAppWebUsage *)self webDomain];
  applicationID = [(BMAppWebUsage *)self applicationID];
  deviceID = [(BMAppWebUsage *)self deviceID];
  if ([(BMAppWebUsage *)self hasIsUsageTrusted])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppWebUsage isUsageTrusted](self, "isUsageTrusted")}];
  }

  else
  {
    v11 = 0;
  }

  safariProfileID = [(BMAppWebUsage *)self safariProfileID];
  v33[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v34[0] = null;
  v33[1] = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v34[1] = null2;
  v33[2] = @"usageState";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null3;
  v34[2] = null3;
  v33[3] = @"webpageURL";
  null4 = webpageURL;
  if (!webpageURL)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = uniqueID;
  v24 = null4;
  v34[3] = null4;
  v33[4] = @"webDomain";
  null5 = webDomain;
  if (!webDomain)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v7;
  v34[4] = null5;
  v33[5] = @"applicationID";
  null6 = applicationID;
  if (!applicationID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = null6;
  v33[6] = @"deviceID";
  null7 = deviceID;
  if (!deviceID)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = webpageURL;
  v34[6] = null7;
  v33[7] = @"isUsageTrusted";
  null8 = v11;
  if (!v11)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = null8;
  v33[8] = @"safariProfileID";
  null9 = safariProfileID;
  if (!safariProfileID)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v34[8] = null9;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:9];
  if (safariProfileID)
  {
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_40:

    if (deviceID)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (!v11)
  {
    goto LABEL_40;
  }

LABEL_27:
  if (deviceID)
  {
    goto LABEL_28;
  }

LABEL_41:

LABEL_28:
  if (!applicationID)
  {
  }

  if (!webDomain)
  {
  }

  if (v20)
  {
    if (v8)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v8)
    {
LABEL_34:
      if (v29)
      {
        goto LABEL_35;
      }

LABEL_44:

      if (v30)
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }
  }

  if (!v29)
  {
    goto LABEL_44;
  }

LABEL_35:
  if (v30)
  {
    goto LABEL_36;
  }

LABEL_45:

LABEL_36:

  return v28;
}

- (BMAppWebUsage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v89[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = MEMORY[0x1E695DF00];
        v11 = v8;
        v12 = [v10 alloc];
        [v11 doubleValue];
        v14 = v13;

        v15 = [v12 initWithTimeIntervalSinceReferenceDate:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v9 = [v21 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v9 = 0;
            v20 = 0;
            goto LABEL_45;
          }

          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = *MEMORY[0x1E698F240];
          v86 = *MEMORY[0x1E696A578];
          v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v87 = v70;
          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          v57 = [v55 initWithDomain:v56 code:2 userInfo:?];
          v9 = 0;
          v20 = 0;
          *error = v57;
          goto LABEL_44;
        }

        v15 = v8;
      }

      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_16:
    v22 = [dictionaryCopy objectForKeyedSubscript:@"usageState"];
    v65 = v8;
    v68 = v22;
    if (v22 && (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = v23;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v70 = 0;
            v20 = 0;
            goto LABEL_44;
          }

          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = v9;
          v48 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"usageState"];
          v85 = v32;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v49 = v48;
          v9 = v47;
          v70 = 0;
          v20 = 0;
          *error = [v46 initWithDomain:v49 code:2 userInfo:v24];
LABEL_43:

          v8 = v65;
LABEL_44:

          goto LABEL_45;
        }

        v70 = [MEMORY[0x1E696AD98] numberWithInt:BMAppWebUsageStateFromString(v23)];
      }
    }

    else
    {
      v70 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"webpageURL"];
    v69 = v7;
    if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v32 = 0;
          v20 = 0;
          goto LABEL_43;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = v9;
        v36 = *MEMORY[0x1E698F240];
        v82 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webpageURL"];
        v83 = v67;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v37 = v36;
        v9 = v35;
        v32 = 0;
        v20 = 0;
        *error = [v34 initWithDomain:v37 code:2 userInfo:v25];
        goto LABEL_42;
      }

      v64 = v24;
    }

    else
    {
      v64 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"webDomain"];
    v60 = v6;
    v63 = v9;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v67 = 0;
          v20 = 0;
          v32 = v64;
          goto LABEL_42;
        }

        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = *MEMORY[0x1E698F240];
        v80 = *MEMORY[0x1E696A578];
        v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webDomain"];
        v81 = v62;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v67 = 0;
        v20 = 0;
        *error = [v38 initWithDomain:v39 code:2 userInfo:v26];
        goto LABEL_86;
      }

      v67 = v25;
    }

    else
    {
      v67 = 0;
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"applicationID"];
    if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v62 = 0;
LABEL_28:
      v27 = [dictionaryCopy objectForKeyedSubscript:@"deviceID"];
      selfCopy = self;
      if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v61 = 0;
            v20 = 0;
            goto LABEL_40;
          }

          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v44 = *MEMORY[0x1E698F240];
          v76 = *MEMORY[0x1E696A578];
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceID"];
          v77 = v29;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v45 = [v43 initWithDomain:v44 code:2 userInfo:v28];
          v61 = 0;
          v20 = 0;
          *error = v45;
          goto LABEL_39;
        }

        v61 = v27;
      }

      else
      {
        v61 = 0;
      }

      v28 = [dictionaryCopy objectForKeyedSubscript:@"isUsageTrusted"];
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v29 = 0;
            v20 = 0;
            goto LABEL_39;
          }

          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v74 = *MEMORY[0x1E696A578];
          v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUsageTrusted"];
          v75 = v31;
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v52 = [v50 initWithDomain:v51 code:2 userInfo:v30];
          v29 = 0;
          v20 = 0;
          *error = v52;
          goto LABEL_38;
        }

        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = [dictionaryCopy objectForKeyedSubscript:@"safariProfileID"];
      if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v59 = objc_alloc(MEMORY[0x1E696ABC0]);
            v58 = *MEMORY[0x1E698F240];
            v72 = *MEMORY[0x1E696A578];
            v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"safariProfileID"];
            v73 = v53;
            v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
            *error = [v59 initWithDomain:v58 code:2 userInfo:v54];
          }

          v31 = 0;
          v20 = 0;
          goto LABEL_38;
        }

        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v20 = -[BMAppWebUsage initWithUniqueID:absoluteTimestamp:usageState:webpageURL:webDomain:applicationID:deviceID:isUsageTrusted:safariProfileID:](selfCopy, "initWithUniqueID:absoluteTimestamp:usageState:webpageURL:webDomain:applicationID:deviceID:isUsageTrusted:safariProfileID:", v69, v63, [v70 intValue], v64, v67, v62, v61, v29, v31);
      selfCopy = v20;
LABEL_38:

LABEL_39:
      self = selfCopy;
LABEL_40:
      v32 = v64;

LABEL_41:
      v6 = v60;
      v9 = v63;
LABEL_42:

      v7 = v69;
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = v26;
      goto LABEL_28;
    }

    if (error)
    {
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      v41 = *MEMORY[0x1E698F240];
      v78 = *MEMORY[0x1E696A578];
      v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"applicationID"];
      v79 = v61;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v42 = [v40 initWithDomain:v41 code:2 userInfo:v27];
      v62 = 0;
      v20 = 0;
      *error = v42;
      goto LABEL_40;
    }

    v62 = 0;
    v20 = 0;
LABEL_86:
    v32 = v64;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    goto LABEL_4;
  }

  if (!error)
  {
    v7 = 0;
    v20 = 0;
    goto LABEL_46;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v88 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
  v89[0] = v18;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:&v88 count:1];
  v19 = v17;
  v9 = v18;
  v7 = 0;
  v20 = 0;
  *error = [v16 initWithDomain:v19 code:2 userInfo:v8];
LABEL_45:

LABEL_46:
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppWebUsage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_webpageURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_webDomain)
  {
    PBDataWriterWriteStringField();
  }

  v4 = toCopy;
  if (self->_applicationID)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_hasIsUsageTrusted)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }

  if (self->_safariProfileID)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMAppWebUsage;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_72;
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
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v40) & 0x7F) << v7;
        if ((LOBYTE(v40) & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            while (1)
            {
              LOBYTE(v40) = 0;
              v23 = [fromCopy position] + 1;
              if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v22 |= (LOBYTE(v40) & 0x7F) << v20;
              if ((LOBYTE(v40) & 0x80) == 0)
              {
                break;
              }

              v20 += 7;
              if (v21++ > 8)
              {
                goto LABEL_64;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v22 > 3)
            {
LABEL_64:
              LODWORD(v22) = 0;
            }

            v5->_usageState = v22;
            goto LABEL_49;
          }

          if (v15 == 4)
          {
            v16 = PBReaderReadString();
            v17 = 56;
            goto LABEL_48;
          }
        }

        else
        {
          if (v15 == 1)
          {
            v16 = PBReaderReadString();
            v17 = 48;
            goto LABEL_48;
          }

          if (v15 == 2)
          {
            v5->_hasRaw_absoluteTimestamp = 1;
            v40 = 0.0;
            v18 = [fromCopy position] + 8;
            if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 8, v19 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v40;
            goto LABEL_49;
          }
        }
      }

      else if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_48;
        }

        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_48;
        }
      }

      else
      {
        switch(v15)
        {
          case 7:
            v16 = PBReaderReadString();
            v17 = 80;
            goto LABEL_48;
          case 8:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v5->_hasIsUsageTrusted = 1;
            while (1)
            {
              LOBYTE(v40) = 0;
              v32 = [fromCopy position] + 1;
              if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v31 |= (LOBYTE(v40) & 0x7F) << v29;
              if ((LOBYTE(v40) & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v13 = v30++ >= 9;
              if (v13)
              {
                LOBYTE(v35) = 0;
                goto LABEL_67;
              }
            }

            v35 = (v31 != 0) & ~[fromCopy hasError];
LABEL_67:
            v5->_isUsageTrusted = v35;
            goto LABEL_49;
          case 9:
            v16 = PBReaderReadString();
            v17 = 88;
LABEL_48:
            v27 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            goto LABEL_49;
        }
      }

      if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_71;
      }

LABEL_49:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_71:
    v37 = 0;
  }

  else
  {
LABEL_72:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMAppWebUsage *)self uniqueID];
  absoluteTimestamp = [(BMAppWebUsage *)self absoluteTimestamp];
  v6 = BMAppWebUsageStateAsString([(BMAppWebUsage *)self usageState]);
  webpageURL = [(BMAppWebUsage *)self webpageURL];
  webDomain = [(BMAppWebUsage *)self webDomain];
  applicationID = [(BMAppWebUsage *)self applicationID];
  deviceID = [(BMAppWebUsage *)self deviceID];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppWebUsage isUsageTrusted](self, "isUsageTrusted")}];
  safariProfileID = [(BMAppWebUsage *)self safariProfileID];
  v13 = [v3 initWithFormat:@"BMAppWebUsage with uniqueID: %@, absoluteTimestamp: %@, usageState: %@, webpageURL: %@, webDomain: %@, applicationID: %@, deviceID: %@, isUsageTrusted: %@, safariProfileID: %@", uniqueID, absoluteTimestamp, v6, webpageURL, webDomain, applicationID, deviceID, v11, safariProfileID];

  return v13;
}

- (BMAppWebUsage)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp usageState:(int)state webpageURL:(id)l webDomain:(id)domain applicationID:(id)iD deviceID:(id)deviceID isUsageTrusted:(id)self0 safariProfileID:(id)self1
{
  dCopy = d;
  timestampCopy = timestamp;
  lCopy = l;
  domainCopy = domain;
  iDCopy = iD;
  deviceIDCopy = deviceID;
  trustedCopy = trusted;
  profileIDCopy = profileID;
  v29.receiver = self;
  v29.super_class = BMAppWebUsage;
  v20 = [(BMEventBase *)&v29 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_uniqueID, d);
    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    v20->_usageState = state;
    objc_storeStrong(&v20->_webpageURL, l);
    objc_storeStrong(&v20->_webDomain, domain);
    objc_storeStrong(&v20->_applicationID, iD);
    objc_storeStrong(&v20->_deviceID, deviceID);
    if (trustedCopy)
    {
      v20->_hasIsUsageTrusted = 1;
      v20->_isUsageTrusted = [trustedCopy BOOLValue];
    }

    else
    {
      v20->_hasIsUsageTrusted = 0;
      v20->_isUsageTrusted = 0;
    }

    objc_storeStrong(&v20->_safariProfileID, profileID);
  }

  return v20;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageState" number:3 type:4 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageURL" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webDomain" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"applicationID" number:6 type:13 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceID" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUsageTrusted" number:8 type:12 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"safariProfileID" number:9 type:13 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMAppWebUsage alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end