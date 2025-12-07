@interface BMDiscoverabilityUsage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDiscoverabilityUsage)initWithContentIdentifier:(id)identifier bundleID:(id)d contentType:(int)type context:(id)context eligibleContext:(id)eligibleContext ineligibleReason:(int)reason osBuild:(id)build state:(int)self0 analyticsEvent:(id)self1;
- (BMDiscoverabilityUsage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDiscoverabilityUsage

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"context" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eligibleContext" dataType:4 requestOnly:0 fieldNumber:5 protoDataType:14 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ineligibleReason" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"state" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"analyticsEvent" dataType:4 requestOnly:0 fieldNumber:9 protoDataType:14 convertedType:0];
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
    contentIdentifier = [(BMDiscoverabilityUsage *)self contentIdentifier];
    contentIdentifier2 = [v5 contentIdentifier];
    v8 = contentIdentifier2;
    if (contentIdentifier == contentIdentifier2)
    {
    }

    else
    {
      contentIdentifier3 = [(BMDiscoverabilityUsage *)self contentIdentifier];
      contentIdentifier4 = [v5 contentIdentifier];
      v11 = [contentIdentifier3 isEqual:contentIdentifier4];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    bundleID = [(BMDiscoverabilityUsage *)self bundleID];
    bundleID2 = [v5 bundleID];
    v15 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMDiscoverabilityUsage *)self bundleID];
      bundleID4 = [v5 bundleID];
      v18 = [bundleID3 isEqual:bundleID4];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    contentType = [(BMDiscoverabilityUsage *)self contentType];
    if (contentType == [v5 contentType])
    {
      context = [(BMDiscoverabilityUsage *)self context];
      context2 = [v5 context];
      v22 = context2;
      if (context == context2)
      {
      }

      else
      {
        context3 = [(BMDiscoverabilityUsage *)self context];
        context4 = [v5 context];
        v25 = [context3 isEqual:context4];

        if (!v25)
        {
          goto LABEL_28;
        }
      }

      eligibleContext = [(BMDiscoverabilityUsage *)self eligibleContext];
      eligibleContext2 = [v5 eligibleContext];
      v28 = eligibleContext2;
      if (eligibleContext == eligibleContext2)
      {
      }

      else
      {
        eligibleContext3 = [(BMDiscoverabilityUsage *)self eligibleContext];
        eligibleContext4 = [v5 eligibleContext];
        v31 = [eligibleContext3 isEqual:eligibleContext4];

        if (!v31)
        {
          goto LABEL_28;
        }
      }

      ineligibleReason = [(BMDiscoverabilityUsage *)self ineligibleReason];
      if (ineligibleReason == [v5 ineligibleReason])
      {
        osBuild = [(BMDiscoverabilityUsage *)self osBuild];
        osBuild2 = [v5 osBuild];
        v35 = osBuild2;
        if (osBuild == osBuild2)
        {
        }

        else
        {
          osBuild3 = [(BMDiscoverabilityUsage *)self osBuild];
          osBuild4 = [v5 osBuild];
          v38 = [osBuild3 isEqual:osBuild4];

          if (!v38)
          {
            goto LABEL_28;
          }
        }

        state = [(BMDiscoverabilityUsage *)self state];
        if (state == [v5 state])
        {
          analyticsEvent = [(BMDiscoverabilityUsage *)self analyticsEvent];
          analyticsEvent2 = [v5 analyticsEvent];
          if (analyticsEvent == analyticsEvent2)
          {
            v12 = 1;
          }

          else
          {
            analyticsEvent3 = [(BMDiscoverabilityUsage *)self analyticsEvent];
            analyticsEvent4 = [v5 analyticsEvent];
            v12 = [analyticsEvent3 isEqual:analyticsEvent4];
          }

          goto LABEL_29;
        }
      }
    }

LABEL_28:
    v12 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v12 = 0;
LABEL_30:

  return v12;
}

- (id)jsonDictionary
{
  v34[9] = *MEMORY[0x1E69E9840];
  contentIdentifier = [(BMDiscoverabilityUsage *)self contentIdentifier];
  bundleID = [(BMDiscoverabilityUsage *)self bundleID];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDiscoverabilityUsage contentType](self, "contentType")}];
  context = [(BMDiscoverabilityUsage *)self context];
  eligibleContext = [(BMDiscoverabilityUsage *)self eligibleContext];
  v8 = [eligibleContext base64EncodedStringWithOptions:0];

  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDiscoverabilityUsage ineligibleReason](self, "ineligibleReason")}];
  osBuild = [(BMDiscoverabilityUsage *)self osBuild];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDiscoverabilityUsage state](self, "state")}];
  analyticsEvent = [(BMDiscoverabilityUsage *)self analyticsEvent];
  v12 = [analyticsEvent base64EncodedStringWithOptions:0];

  v33[0] = @"contentIdentifier";
  null = contentIdentifier;
  if (!contentIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v34[0] = null;
  v33[1] = @"bundleID";
  null2 = bundleID;
  if (!bundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v34[1] = null2;
  v33[2] = @"contentType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = contentIdentifier;
  v25 = null3;
  v34[2] = null3;
  v33[3] = @"context";
  null4 = context;
  if (!context)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = bundleID;
  v24 = null4;
  v34[3] = null4;
  v33[4] = @"eligibleContext";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v5;
  v34[4] = null5;
  v33[5] = @"ineligibleReason";
  null6 = v32;
  if (!v32)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = null6;
  v33[6] = @"osBuild";
  null7 = osBuild;
  if (!osBuild)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v8;
  v34[6] = null7;
  v33[7] = @"state";
  null8 = v10;
  if (!v10)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = null8;
  v33[8] = @"analyticsEvent";
  null9 = v12;
  if (!v12)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v34[8] = null9;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:9];
  if (v12)
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_35:

    if (osBuild)
    {
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  if (!v10)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (osBuild)
  {
    goto LABEL_22;
  }

LABEL_36:

LABEL_22:
  if (!v32)
  {
  }

  if (!v20)
  {
  }

  if (!context)
  {
  }

  if (v29)
  {
    if (v30)
    {
      goto LABEL_30;
    }

LABEL_38:

    if (v31)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (!v30)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (v31)
  {
    goto LABEL_31;
  }

LABEL_39:

LABEL_31:

  return v28;
}

- (BMDiscoverabilityUsage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v108[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"contentIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
    selfCopy = self;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          v18 = 0;
          goto LABEL_74;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
        v106 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v23 = v20;
        v10 = v22;
        v16 = 0;
        v18 = 0;
        *error = [v19 initWithDomain:v23 code:2 userInfo:v22];
        v11 = v21;
        goto LABEL_73;
      }

      errorCopy2 = error;
      v83 = v9;
    }

    else
    {
      errorCopy2 = error;
      v83 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"contentType"];
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy2)
          {
            v11 = 0;
            v18 = 0;
            v16 = v83;
            goto LABEL_73;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = v10;
          v51 = *MEMORY[0x1E698F240];
          v103 = *MEMORY[0x1E696A578];
          v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"contentType"];
          v104 = v85;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
          v53 = v51;
          v10 = v50;
          v54 = [v49 initWithDomain:v53 code:2 userInfo:v52];
          v11 = 0;
          v18 = 0;
          *errorCopy2 = v54;
          v25 = v52;
          goto LABEL_91;
        }

        v12 = [MEMORY[0x1E696AD98] numberWithInt:BMDiscoverabilityUsageContentTypeFromString(v10)];
      }

      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"context"];
    v81 = v24;
    v79 = v10;
    if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v85 = 0;
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v85 = v25;
LABEL_26:
      v26 = [dictionaryCopy objectForKeyedSubscript:@"eligibleContext"];
      v78 = v26;
      if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v84 = 0;
        goto LABEL_29;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v84 = v27;
        goto LABEL_29;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy2)
        {
          v84 = 0;
          v18 = 0;
          v16 = v83;
          v25 = v81;
          goto LABEL_71;
        }

        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v97 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"eligibleContext"];
        v98 = v82;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
        v59 = [v57 initWithDomain:v58 code:2 userInfo:v28];
        v84 = 0;
        v18 = 0;
        *errorCopy2 = v59;
        goto LABEL_103;
      }

      v25 = v81;
      v84 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v27 options:0];
      if (v84)
      {
LABEL_29:
        v28 = [dictionaryCopy objectForKeyedSubscript:@"ineligibleReason"];
        v74 = v9;
        if (!v28 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v82 = 0;
          goto LABEL_48;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;
LABEL_47:
          v82 = v29;
LABEL_48:
          v38 = [dictionaryCopy objectForKeyedSubscript:@"osBuild"];
          v73 = v7;
          v76 = v11;
          v77 = v8;
          if (!v38 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v80 = 0;
            goto LABEL_51;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = v38;
LABEL_51:
            v39 = [dictionaryCopy objectForKeyedSubscript:@"state"];
            if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v40 = selfCopy;
              v41 = 0;
              goto LABEL_63;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = selfCopy;
              v42 = v39;
LABEL_62:
              v41 = v42;
LABEL_63:
              v46 = [dictionaryCopy objectForKeyedSubscript:@"analyticsEvent"];
              if (!v46 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v47 = 0;
LABEL_66:
                [v76 intValue];
                [v82 intValue];
                LODWORD(v68) = [v41 intValue];
                v16 = v83;
                v18 = [BMDiscoverabilityUsage initWithContentIdentifier:v40 bundleID:"initWithContentIdentifier:bundleID:contentType:context:eligibleContext:ineligibleReason:osBuild:state:analyticsEvent:" contentType:v77 context:v80 eligibleContext:v68 ineligibleReason:v47 osBuild:? state:? analyticsEvent:?];
                v40 = v18;
LABEL_67:

LABEL_68:
                selfCopy = v40;

                v7 = v73;
                v11 = v76;
                v8 = v77;
LABEL_69:
                v25 = v81;

                v9 = v74;
                goto LABEL_70;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = v46;
                goto LABEL_66;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v47 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v46 options:0];
                if (v47)
                {
                  goto LABEL_66;
                }

                if (errorCopy2)
                {
                  v71 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v69 = *MEMORY[0x1E698F240];
                  v89 = *MEMORY[0x1E696A578];
                  v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"analyticsEvent"];
                  v90 = v55;
                  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                  *errorCopy2 = [v71 initWithDomain:v69 code:2 userInfo:v56];
                }
              }

              else if (errorCopy2)
              {
                v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                v70 = *MEMORY[0x1E698F240];
                v87 = *MEMORY[0x1E696A578];
                v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"analyticsEvent"];
                v88 = v66;
                v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
                *errorCopy2 = [v72 initWithDomain:v70 code:2 userInfo:v67];
              }

              v47 = 0;
              v18 = 0;
LABEL_97:
              v16 = v83;
              goto LABEL_67;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = selfCopy;
              v42 = [MEMORY[0x1E696AD98] numberWithInt:BMDiscoverabilityUsageStateFromString(v39)];
              goto LABEL_62;
            }

            v40 = selfCopy;
            if (errorCopy2)
            {
              v63 = objc_alloc(MEMORY[0x1E696ABC0]);
              v64 = *MEMORY[0x1E698F240];
              v91 = *MEMORY[0x1E696A578];
              v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"state"];
              v92 = v47;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
              v65 = [v63 initWithDomain:v64 code:2 userInfo:v46];
              v41 = 0;
              v18 = 0;
              *errorCopy2 = v65;
              goto LABEL_97;
            }

            v41 = 0;
            v18 = 0;
LABEL_105:
            v16 = v83;
            goto LABEL_68;
          }

          if (errorCopy2)
          {
            v40 = selfCopy;
            v43 = objc_alloc(MEMORY[0x1E696ABC0]);
            v44 = *MEMORY[0x1E698F240];
            v93 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
            v94 = v41;
            v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
            v45 = [v43 initWithDomain:v44 code:2 userInfo:v39];
            v80 = 0;
            v18 = 0;
            *errorCopy2 = v45;
            goto LABEL_105;
          }

          v80 = 0;
          v18 = 0;
LABEL_99:
          v16 = v83;
          goto LABEL_69;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = [MEMORY[0x1E696AD98] numberWithInt:BMDiscoverabilityUsageIneligibleReasonFromString(v28)];
          goto LABEL_47;
        }

        if (errorCopy2)
        {
          v60 = objc_alloc(MEMORY[0x1E696ABC0]);
          v61 = *MEMORY[0x1E698F240];
          v95 = *MEMORY[0x1E696A578];
          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ineligibleReason"];
          v96 = v80;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
          v62 = [v60 initWithDomain:v61 code:2 userInfo:v38];
          v82 = 0;
          v18 = 0;
          *errorCopy2 = v62;
          goto LABEL_99;
        }

        v82 = 0;
        v18 = 0;
LABEL_103:
        v16 = v83;
        v25 = v81;
        goto LABEL_70;
      }

      if (errorCopy2)
      {
        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v35 = *MEMORY[0x1E698F240];
        v99 = *MEMORY[0x1E696A578];
        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"eligibleContext"];
        v100 = v82;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v36 = v34;
        v25 = v81;
        v37 = [v36 initWithDomain:v35 code:2 userInfo:v28];
        v84 = 0;
        v18 = 0;
        *errorCopy2 = v37;
        v16 = v83;
LABEL_70:

        goto LABEL_71;
      }

      v84 = 0;
      v18 = 0;
LABEL_40:
      v16 = v83;
LABEL_71:

      v10 = v79;
LABEL_72:

LABEL_73:
      self = selfCopy;
      goto LABEL_74;
    }

    if (errorCopy2)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v101 = *MEMORY[0x1E696A578];
      v84 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"context"];
      v102 = v84;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v33 = v30;
      v25 = v81;
      v78 = v32;
      v85 = 0;
      v18 = 0;
      *errorCopy2 = [v33 initWithDomain:v31 code:2 userInfo:?];
      goto LABEL_40;
    }

    v85 = 0;
    v18 = 0;
LABEL_91:
    v16 = v83;
    goto LABEL_72;
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
    v18 = 0;
    goto LABEL_75;
  }

  selfCopy2 = self;
  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v107 = *MEMORY[0x1E696A578];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentIdentifier"];
  v108[0] = v16;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:&v107 count:1];
  v17 = v14;
  self = selfCopy2;
  v8 = 0;
  v18 = 0;
  *error = [v17 initWithDomain:v15 code:2 userInfo:v9];
LABEL_74:

LABEL_75:
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDiscoverabilityUsage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_contentIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_context)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eligibleContext)
  {
    PBDataWriterWriteDataField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_analyticsEvent)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMDiscoverabilityUsage;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_82;
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v30 = 0;
            v31 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v32 = [fromCopy position] + 1;
              if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v41 & 0x7F) << v30;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v22 = v31++ > 8;
              if (v22)
              {
                goto LABEL_72;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 4)
            {
LABEL_72:
              LODWORD(v18) = 0;
            }

            v36 = 20;
LABEL_78:
            *(&v5->super.super.isa + v36) = v18;
            goto LABEL_79;
          }

          if (v15 != 4)
          {
            goto LABEL_64;
          }

          v23 = PBReaderReadString();
          v24 = 48;
        }

        else if (v15 == 1)
        {
          v23 = PBReaderReadString();
          v24 = 32;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_64;
          }

          v23 = PBReaderReadString();
          v24 = 40;
        }
      }

      else if (v15 <= 6)
      {
        if (v15 != 5)
        {
          if (v15 != 6)
          {
LABEL_64:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          v25 = 0;
          v26 = 0;
          v18 = 0;
          while (1)
          {
            v41 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v41 & 0x7F) << v25;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v22 = v26++ > 8;
            if (v22)
            {
              goto LABEL_68;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v18 > 0x18)
          {
LABEL_68:
            LODWORD(v18) = 0;
          }

          v36 = 24;
          goto LABEL_78;
        }

        v23 = PBReaderReadData();
        v24 = 56;
      }

      else
      {
        switch(v15)
        {
          case 7:
            v23 = PBReaderReadString();
            v24 = 64;
            break;
          case 9:
            v23 = PBReaderReadData();
            v24 = 72;
            break;
          case 8:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v41 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

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
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_76;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 9)
            {
LABEL_76:
              LODWORD(v18) = 0;
            }

            v36 = 28;
            goto LABEL_78;
          default:
            goto LABEL_64;
        }
      }

      v35 = *(&v5->super.super.isa + v24);
      *(&v5->super.super.isa + v24) = v23;

LABEL_79:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_81:
    v38 = 0;
  }

  else
  {
LABEL_82:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  contentIdentifier = [(BMDiscoverabilityUsage *)self contentIdentifier];
  bundleID = [(BMDiscoverabilityUsage *)self bundleID];
  v6 = BMDiscoverabilityUsageContentTypeAsString([(BMDiscoverabilityUsage *)self contentType]);
  context = [(BMDiscoverabilityUsage *)self context];
  eligibleContext = [(BMDiscoverabilityUsage *)self eligibleContext];
  v9 = BMDiscoverabilityUsageIneligibleReasonAsString([(BMDiscoverabilityUsage *)self ineligibleReason]);
  osBuild = [(BMDiscoverabilityUsage *)self osBuild];
  v11 = BMDiscoverabilityUsageStateAsString([(BMDiscoverabilityUsage *)self state]);
  analyticsEvent = [(BMDiscoverabilityUsage *)self analyticsEvent];
  v13 = [v3 initWithFormat:@"BMDiscoverabilityUsage with contentIdentifier: %@, bundleID: %@, contentType: %@, context: %@, eligibleContext: %@, ineligibleReason: %@, osBuild: %@, state: %@, analyticsEvent: %@", contentIdentifier, bundleID, v6, context, eligibleContext, v9, osBuild, v11, analyticsEvent];

  return v13;
}

- (BMDiscoverabilityUsage)initWithContentIdentifier:(id)identifier bundleID:(id)d contentType:(int)type context:(id)context eligibleContext:(id)eligibleContext ineligibleReason:(int)reason osBuild:(id)build state:(int)self0 analyticsEvent:(id)self1
{
  identifierCopy = identifier;
  dCopy = d;
  contextCopy = context;
  eligibleContextCopy = eligibleContext;
  buildCopy = build;
  eventCopy = event;
  v26.receiver = self;
  v26.super_class = BMDiscoverabilityUsage;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v19->_contentIdentifier, identifier);
    objc_storeStrong(&v19->_bundleID, d);
    v19->_contentType = type;
    objc_storeStrong(&v19->_context, context);
    objc_storeStrong(&v19->_eligibleContext, eligibleContext);
    v19->_ineligibleReason = reason;
    objc_storeStrong(&v19->_osBuild, build);
    v19->_state = state;
    objc_storeStrong(&v19->_analyticsEvent, event);
  }

  return v19;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentIdentifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:2 type:13 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:3 type:4 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"context" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eligibleContext" number:5 type:14 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ineligibleReason" number:6 type:4 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:7 type:13 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"state" number:8 type:4 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"analyticsEvent" number:9 type:14 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
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

    v8 = [[BMDiscoverabilityUsage alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end