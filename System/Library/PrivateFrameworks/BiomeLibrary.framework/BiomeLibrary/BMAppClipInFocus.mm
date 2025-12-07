@interface BMAppClipInFocus
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppClipInFocus)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAppClipInFocus)initWithURLHash:(id)hash clipBundleID:(id)d appBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(id)reason fullURL:(id)l referrerURL:(id)rL referrerBundleID:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppClipInFocus

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"URLHash" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clipBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webAppBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"launchReason" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fullURL" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"referrerURL" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"referrerBundleID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uRLHash = [(BMAppClipInFocus *)self URLHash];
    uRLHash2 = [v5 URLHash];
    v8 = uRLHash2;
    if (uRLHash == uRLHash2)
    {
    }

    else
    {
      uRLHash3 = [(BMAppClipInFocus *)self URLHash];
      uRLHash4 = [v5 URLHash];
      v11 = [uRLHash3 isEqual:uRLHash4];

      if (!v11)
      {
        goto LABEL_29;
      }
    }

    clipBundleID = [(BMAppClipInFocus *)self clipBundleID];
    clipBundleID2 = [v5 clipBundleID];
    v15 = clipBundleID2;
    if (clipBundleID == clipBundleID2)
    {
    }

    else
    {
      clipBundleID3 = [(BMAppClipInFocus *)self clipBundleID];
      clipBundleID4 = [v5 clipBundleID];
      v18 = [clipBundleID3 isEqual:clipBundleID4];

      if (!v18)
      {
        goto LABEL_29;
      }
    }

    appBundleID = [(BMAppClipInFocus *)self appBundleID];
    appBundleID2 = [v5 appBundleID];
    v21 = appBundleID2;
    if (appBundleID == appBundleID2)
    {
    }

    else
    {
      appBundleID3 = [(BMAppClipInFocus *)self appBundleID];
      appBundleID4 = [v5 appBundleID];
      v24 = [appBundleID3 isEqual:appBundleID4];

      if (!v24)
      {
        goto LABEL_29;
      }
    }

    webAppBundleID = [(BMAppClipInFocus *)self webAppBundleID];
    webAppBundleID2 = [v5 webAppBundleID];
    v27 = webAppBundleID2;
    if (webAppBundleID == webAppBundleID2)
    {
    }

    else
    {
      webAppBundleID3 = [(BMAppClipInFocus *)self webAppBundleID];
      webAppBundleID4 = [v5 webAppBundleID];
      v30 = [webAppBundleID3 isEqual:webAppBundleID4];

      if (!v30)
      {
        goto LABEL_29;
      }
    }

    launchReason = [(BMAppClipInFocus *)self launchReason];
    launchReason2 = [v5 launchReason];
    v33 = launchReason2;
    if (launchReason == launchReason2)
    {
    }

    else
    {
      launchReason3 = [(BMAppClipInFocus *)self launchReason];
      launchReason4 = [v5 launchReason];
      v36 = [launchReason3 isEqual:launchReason4];

      if (!v36)
      {
        goto LABEL_29;
      }
    }

    fullURL = [(BMAppClipInFocus *)self fullURL];
    fullURL2 = [v5 fullURL];
    v39 = fullURL2;
    if (fullURL == fullURL2)
    {
    }

    else
    {
      fullURL3 = [(BMAppClipInFocus *)self fullURL];
      fullURL4 = [v5 fullURL];
      v42 = [fullURL3 isEqual:fullURL4];

      if (!v42)
      {
        goto LABEL_29;
      }
    }

    referrerURL = [(BMAppClipInFocus *)self referrerURL];
    referrerURL2 = [v5 referrerURL];
    v45 = referrerURL2;
    if (referrerURL == referrerURL2)
    {
    }

    else
    {
      referrerURL3 = [(BMAppClipInFocus *)self referrerURL];
      referrerURL4 = [v5 referrerURL];
      v48 = [referrerURL3 isEqual:referrerURL4];

      if (!v48)
      {
LABEL_29:
        v12 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    referrerBundleID = [(BMAppClipInFocus *)self referrerBundleID];
    referrerBundleID2 = [v5 referrerBundleID];
    if (referrerBundleID == referrerBundleID2)
    {
      v12 = 1;
    }

    else
    {
      referrerBundleID3 = [(BMAppClipInFocus *)self referrerBundleID];
      referrerBundleID4 = [v5 referrerBundleID];
      v12 = [referrerBundleID3 isEqual:referrerBundleID4];
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

- (id)jsonDictionary
{
  v28[8] = *MEMORY[0x1E69E9840];
  uRLHash = [(BMAppClipInFocus *)self URLHash];
  clipBundleID = [(BMAppClipInFocus *)self clipBundleID];
  appBundleID = [(BMAppClipInFocus *)self appBundleID];
  webAppBundleID = [(BMAppClipInFocus *)self webAppBundleID];
  launchReason = [(BMAppClipInFocus *)self launchReason];
  fullURL = [(BMAppClipInFocus *)self fullURL];
  referrerURL = [(BMAppClipInFocus *)self referrerURL];
  referrerBundleID = [(BMAppClipInFocus *)self referrerBundleID];
  v27[0] = @"URLHash";
  null = uRLHash;
  if (!uRLHash)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v28[0] = null;
  v27[1] = @"clipBundleID";
  null2 = clipBundleID;
  if (!clipBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v28[1] = null2;
  v27[2] = @"appBundleID";
  null3 = appBundleID;
  if (!appBundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = uRLHash;
  v20 = null3;
  v28[2] = null3;
  v27[3] = @"webAppBundleID";
  null4 = webAppBundleID;
  if (!webAppBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = clipBundleID;
  v28[3] = null4;
  v27[4] = @"launchReason";
  null5 = launchReason;
  if (!launchReason)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = appBundleID;
  v28[4] = null5;
  v27[5] = @"fullURL";
  null6 = fullURL;
  if (!fullURL)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v27[6] = @"referrerURL";
  null7 = referrerURL;
  if (!referrerURL)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null7;
  v27[7] = @"referrerBundleID";
  null8 = referrerBundleID;
  if (!referrerBundleID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = null8;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (referrerBundleID)
  {
    if (referrerURL)
    {
      goto LABEL_19;
    }

LABEL_31:

    if (fullURL)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (!referrerURL)
  {
    goto LABEL_31;
  }

LABEL_19:
  if (fullURL)
  {
    goto LABEL_20;
  }

LABEL_32:

LABEL_20:
  if (!launchReason)
  {
  }

  if (!webAppBundleID)
  {
  }

  if (v24)
  {
    if (v25)
    {
      goto LABEL_26;
    }

LABEL_34:

    if (v26)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_26:
  if (v26)
  {
    goto LABEL_27;
  }

LABEL_35:

LABEL_27:

  return v23;
}

- (BMAppClipInFocus)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v86[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"URLHash"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"clipBundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v25 = 0;
          goto LABEL_45;
        }

        errorCopy = error;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clipBundleID"];
        v84 = v15;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
        v35 = v33;
        v11 = v34;
        v36 = [v32 initWithDomain:v35 code:2 userInfo:v34];
        v25 = 0;
        error = 0;
        *errorCopy = v36;
        goto LABEL_44;
      }

      v70 = v9;
    }

    else
    {
      v70 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appBundleID"];
    v68 = v7;
    v66 = v10;
    errorCopy2 = error;
    if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v15 = 0;
          v25 = v70;
          goto LABEL_44;
        }

        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v81 = *MEMORY[0x1E696A578];
        v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appBundleID"];
        v82 = v69;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
        v39 = [v37 initWithDomain:v38 code:2 userInfo:v24];
        v15 = 0;
        error = 0;
        *errorCopy2 = v39;
        goto LABEL_42;
      }

      v12 = v8;
      v13 = v9;
      selfCopy2 = self;
      v15 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      selfCopy2 = self;
      v15 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"webAppBundleID"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v69 = 0;
          v25 = v70;
          v24 = v16;
          self = selfCopy2;
          v9 = v13;
          v8 = v12;
          v7 = v68;
          goto LABEL_43;
        }

        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = v15;
        v42 = *MEMORY[0x1E698F240];
        v79 = *MEMORY[0x1E696A578];
        v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"webAppBundleID"];
        v80 = v67;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        v43 = v42;
        v15 = v41;
        v24 = v16;
        v44 = [v40 initWithDomain:v43 code:2 userInfo:v17];
        v69 = 0;
        error = 0;
        *errorCopy2 = v44;
        self = selfCopy2;
        v9 = v13;
        v8 = v12;
        goto LABEL_75;
      }

      v60 = v16;
      v69 = v16;
    }

    else
    {
      v60 = v16;
      v69 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"launchReason"];
    self = selfCopy2;
    v65 = v12;
    if (!v17)
    {
      v67 = 0;
      v9 = v13;
      goto LABEL_27;
    }

    objc_opt_class();
    v9 = v13;
    if (objc_opt_isKindOfClass())
    {
      v67 = 0;
LABEL_27:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"fullURL"];
      v62 = v15;
      if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v7 = v68;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v63 = 0;
            error = 0;
            goto LABEL_39;
          }

          errorCopy3 = self;
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = *MEMORY[0x1E698F240];
          v75 = *MEMORY[0x1E696A578];
          v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fullURL"];
          v76 = v21;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          v52 = [v64 initWithDomain:v51 code:2 userInfo:v19];
          v63 = 0;
          error = 0;
          *errorCopy2 = v52;
LABEL_38:

          self = errorCopy3;
          v7 = v68;
LABEL_39:
          v15 = v62;
          v24 = v60;
LABEL_40:

          v8 = v65;
LABEL_41:

LABEL_42:
          v25 = v70;
LABEL_43:

          v11 = v66;
LABEL_44:

          goto LABEL_45;
        }

        v63 = v18;
      }

      else
      {
        v63 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"referrerURL"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        errorCopy3 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v21 = 0;
            error = 0;
            goto LABEL_38;
          }

          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v73 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"referrerURL"];
          v74 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v54 = [v58 initWithDomain:v53 code:2 userInfo:v22];
          v21 = 0;
          error = 0;
          *errorCopy2 = v54;
          goto LABEL_37;
        }

        v21 = v19;
      }

      else
      {
        errorCopy3 = self;
        v21 = 0;
      }

      v22 = [dictionaryCopy objectForKeyedSubscript:@"referrerBundleID"];
      if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v59 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v71 = *MEMORY[0x1E696A578];
            v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"referrerBundleID"];
            v72 = v55;
            v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
            *errorCopy2 = [v59 initWithDomain:v57 code:2 userInfo:v56];
          }

          v23 = 0;
          error = 0;
          goto LABEL_37;
        }

        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      error = [(BMAppClipInFocus *)errorCopy3 initWithURLHash:v65 clipBundleID:v70 appBundleID:v62 webAppBundleID:v69 launchReason:v67 fullURL:v63 referrerURL:v21 referrerBundleID:v23];
      errorCopy3 = error;
LABEL_37:

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = v17;
      goto LABEL_27;
    }

    if (error)
    {
      errorCopy4 = error;
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = v15;
      v48 = *MEMORY[0x1E698F240];
      v77 = *MEMORY[0x1E696A578];
      v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"launchReason"];
      v78 = v63;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v49 = v48;
      v15 = v47;
      v50 = [v46 initWithDomain:v49 code:2 userInfo:v18];
      v67 = 0;
      error = 0;
      *errorCopy4 = v50;
      v24 = v60;
      v7 = v68;
      goto LABEL_40;
    }

    v67 = 0;
    v8 = v12;
    v24 = v60;
LABEL_75:
    v7 = v68;
    goto LABEL_41;
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
    goto LABEL_46;
  }

  errorCopy5 = error;
  v28 = objc_alloc(MEMORY[0x1E696ABC0]);
  v29 = *MEMORY[0x1E698F240];
  v85 = *MEMORY[0x1E696A578];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"URLHash"];
  v86[0] = v25;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
  v30 = [v28 initWithDomain:v29 code:2 userInfo:v9];
  v8 = 0;
  error = 0;
  *errorCopy5 = v30;
LABEL_45:

LABEL_46:
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppClipInFocus *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_URLHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_clipBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_webAppBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_fullURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_referrerURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_referrerBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMAppClipInFocus;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_24;
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
        v24 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v24 & 0x7F) << v7;
        if ((v24 & 0x80) == 0)
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

      v15 = (v14 >> 3) - 1;
      if (v15 >= 8)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v16 = off_1E6E9A440[v15];
        v17 = PBReaderReadString();
        v18 = *v16;
        v19 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_23:
    v21 = 0;
  }

  else
  {
LABEL_24:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uRLHash = [(BMAppClipInFocus *)self URLHash];
  clipBundleID = [(BMAppClipInFocus *)self clipBundleID];
  appBundleID = [(BMAppClipInFocus *)self appBundleID];
  webAppBundleID = [(BMAppClipInFocus *)self webAppBundleID];
  launchReason = [(BMAppClipInFocus *)self launchReason];
  fullURL = [(BMAppClipInFocus *)self fullURL];
  referrerURL = [(BMAppClipInFocus *)self referrerURL];
  referrerBundleID = [(BMAppClipInFocus *)self referrerBundleID];
  v12 = [v3 initWithFormat:@"BMAppClipInFocus with URLHash: %@, clipBundleID: %@, appBundleID: %@, webAppBundleID: %@, launchReason: %@, fullURL: %@, referrerURL: %@, referrerBundleID: %@", uRLHash, clipBundleID, appBundleID, webAppBundleID, launchReason, fullURL, referrerURL, referrerBundleID];

  return v12;
}

- (BMAppClipInFocus)initWithURLHash:(id)hash clipBundleID:(id)d appBundleID:(id)iD webAppBundleID:(id)bundleID launchReason:(id)reason fullURL:(id)l referrerURL:(id)rL referrerBundleID:(id)self0
{
  hashCopy = hash;
  dCopy = d;
  iDCopy = iD;
  bundleIDCopy = bundleID;
  reasonCopy = reason;
  lCopy = l;
  rLCopy = rL;
  referrerBundleIDCopy = referrerBundleID;
  v27.receiver = self;
  v27.super_class = BMAppClipInFocus;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_URLHash, hash);
    objc_storeStrong(&v18->_clipBundleID, d);
    objc_storeStrong(&v18->_appBundleID, iD);
    objc_storeStrong(&v18->_webAppBundleID, bundleID);
    objc_storeStrong(&v18->_launchReason, reason);
    objc_storeStrong(&v18->_fullURL, l);
    objc_storeStrong(&v18->_referrerURL, rL);
    objc_storeStrong(&v18->_referrerBundleID, referrerBundleID);
  }

  return v18;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"URLHash" number:1 type:13 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clipBundleID" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleID" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webAppBundleID" number:4 type:13 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"launchReason" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullURL" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"referrerURL" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"referrerBundleID" number:8 type:13 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMAppClipInFocus alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[4] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end