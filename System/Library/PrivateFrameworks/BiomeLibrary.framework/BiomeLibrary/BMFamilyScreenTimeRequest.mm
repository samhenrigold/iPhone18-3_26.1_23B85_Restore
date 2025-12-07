@interface BMFamilyScreenTimeRequest
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFamilyScreenTimeRequest)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMFamilyScreenTimeRequest)initWithRequestID:(id)d eventTime:(id)time requesterDSID:(id)iD responderDSID:(id)sID requestKind:(int)kind status:(int)status approvalTime:(int)approvalTime websitePath:(id)self0 bundleID:(id)self1 isActionUserDevice:(id)self2;
- (BOOL)isEqual:(id)equal;
- (NSDate)eventTime;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFamilyScreenTimeRequest

+ (id)columns
{
  v14[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTime" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requesterDSID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"responderDSID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestKind" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"status" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"approvalTime" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"websitePath" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionUserDevice" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v14[9] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    requestID = [(BMFamilyScreenTimeRequest *)self requestID];
    requestID2 = [v5 requestID];
    v8 = requestID2;
    if (requestID == requestID2)
    {
    }

    else
    {
      requestID3 = [(BMFamilyScreenTimeRequest *)self requestID];
      requestID4 = [v5 requestID];
      v11 = [requestID3 isEqual:requestID4];

      if (!v11)
      {
        goto LABEL_35;
      }
    }

    eventTime = [(BMFamilyScreenTimeRequest *)self eventTime];
    eventTime2 = [v5 eventTime];
    v15 = eventTime2;
    if (eventTime == eventTime2)
    {
    }

    else
    {
      eventTime3 = [(BMFamilyScreenTimeRequest *)self eventTime];
      eventTime4 = [v5 eventTime];
      v18 = [eventTime3 isEqual:eventTime4];

      if (!v18)
      {
        goto LABEL_35;
      }
    }

    requesterDSID = [(BMFamilyScreenTimeRequest *)self requesterDSID];
    requesterDSID2 = [v5 requesterDSID];
    v21 = requesterDSID2;
    if (requesterDSID == requesterDSID2)
    {
    }

    else
    {
      requesterDSID3 = [(BMFamilyScreenTimeRequest *)self requesterDSID];
      requesterDSID4 = [v5 requesterDSID];
      v24 = [requesterDSID3 isEqual:requesterDSID4];

      if (!v24)
      {
        goto LABEL_35;
      }
    }

    responderDSID = [(BMFamilyScreenTimeRequest *)self responderDSID];
    responderDSID2 = [v5 responderDSID];
    v27 = responderDSID2;
    if (responderDSID == responderDSID2)
    {
    }

    else
    {
      responderDSID3 = [(BMFamilyScreenTimeRequest *)self responderDSID];
      responderDSID4 = [v5 responderDSID];
      v30 = [responderDSID3 isEqual:responderDSID4];

      if (!v30)
      {
        goto LABEL_35;
      }
    }

    requestKind = [(BMFamilyScreenTimeRequest *)self requestKind];
    if (requestKind != [v5 requestKind])
    {
      goto LABEL_35;
    }

    status = [(BMFamilyScreenTimeRequest *)self status];
    if (status != [v5 status])
    {
      goto LABEL_35;
    }

    approvalTime = [(BMFamilyScreenTimeRequest *)self approvalTime];
    if (approvalTime != [v5 approvalTime])
    {
      goto LABEL_35;
    }

    websitePath = [(BMFamilyScreenTimeRequest *)self websitePath];
    websitePath2 = [v5 websitePath];
    v36 = websitePath2;
    if (websitePath == websitePath2)
    {
    }

    else
    {
      websitePath3 = [(BMFamilyScreenTimeRequest *)self websitePath];
      websitePath4 = [v5 websitePath];
      v39 = [websitePath3 isEqual:websitePath4];

      if (!v39)
      {
        goto LABEL_35;
      }
    }

    bundleID = [(BMFamilyScreenTimeRequest *)self bundleID];
    bundleID2 = [v5 bundleID];
    v42 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMFamilyScreenTimeRequest *)self bundleID];
      bundleID4 = [v5 bundleID];
      v45 = [bundleID3 isEqual:bundleID4];

      if (!v45)
      {
        goto LABEL_35;
      }
    }

    if (!-[BMFamilyScreenTimeRequest hasIsActionUserDevice](self, "hasIsActionUserDevice") && ![v5 hasIsActionUserDevice])
    {
      LOBYTE(v12) = 1;
      goto LABEL_36;
    }

    if (-[BMFamilyScreenTimeRequest hasIsActionUserDevice](self, "hasIsActionUserDevice") && [v5 hasIsActionUserDevice])
    {
      isActionUserDevice = [(BMFamilyScreenTimeRequest *)self isActionUserDevice];
      v12 = isActionUserDevice ^ [v5 isActionUserDevice] ^ 1;
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:
    LOBYTE(v12) = 0;
    goto LABEL_36;
  }

  LOBYTE(v12) = 0;
LABEL_37:

  return v12;
}

- (NSDate)eventTime
{
  if (self->_hasRaw_eventTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_eventTime];
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
  v38[10] = *MEMORY[0x1E69E9840];
  requestID = [(BMFamilyScreenTimeRequest *)self requestID];
  eventTime = [(BMFamilyScreenTimeRequest *)self eventTime];
  if (eventTime)
  {
    v5 = MEMORY[0x1E696AD98];
    eventTime2 = [(BMFamilyScreenTimeRequest *)self eventTime];
    [eventTime2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  requesterDSID = [(BMFamilyScreenTimeRequest *)self requesterDSID];
  responderDSID = [(BMFamilyScreenTimeRequest *)self responderDSID];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyScreenTimeRequest requestKind](self, "requestKind")}];
  v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyScreenTimeRequest status](self, "status")}];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMFamilyScreenTimeRequest approvalTime](self, "approvalTime")}];
  websitePath = [(BMFamilyScreenTimeRequest *)self websitePath];
  bundleID = [(BMFamilyScreenTimeRequest *)self bundleID];
  if ([(BMFamilyScreenTimeRequest *)self hasIsActionUserDevice])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyScreenTimeRequest isActionUserDevice](self, "isActionUserDevice")}];
  }

  else
  {
    v12 = 0;
  }

  v37[0] = @"requestID";
  null = requestID;
  if (!requestID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v38[0] = null;
  v37[1] = @"eventTime";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v38[1] = null2;
  v37[2] = @"requesterDSID";
  null3 = requesterDSID;
  if (!requesterDSID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null3;
  v38[2] = null3;
  v37[3] = @"responderDSID";
  null4 = responderDSID;
  if (!responderDSID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = requestID;
  v26 = null4;
  v38[3] = null4;
  v37[4] = @"requestKind";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v7;
  v38[4] = null5;
  v37[5] = @"status";
  null6 = v36;
  if (!v36)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = requesterDSID;
  v38[5] = null6;
  v37[6] = @"approvalTime";
  null7 = v11;
  if (!v11)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = responderDSID;
  v38[6] = null7;
  v37[7] = @"websitePath";
  null8 = websitePath;
  if (!websitePath)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v38[7] = null8;
  v37[8] = @"bundleID";
  null9 = bundleID;
  if (!bundleID)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v38[8] = null9;
  v37[9] = @"isActionUserDevice";
  null10 = v12;
  if (!v12)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v38[9] = null10;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:10];
  if (!v12)
  {
  }

  if (!bundleID)
  {
  }

  if (websitePath)
  {
    if (v11)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v36)
  {
  }

  if (!v22)
  {
  }

  if (v20)
  {
    if (v31)
    {
      goto LABEL_39;
    }
  }

  else
  {

    if (v31)
    {
LABEL_39:
      if (v32)
      {
        goto LABEL_40;
      }

LABEL_48:

      if (v33)
      {
        goto LABEL_41;
      }

      goto LABEL_49;
    }
  }

  if (!v32)
  {
    goto LABEL_48;
  }

LABEL_40:
  if (v33)
  {
    goto LABEL_41;
  }

LABEL_49:

LABEL_41:

  return v30;
}

- (BMFamilyScreenTimeRequest)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v119[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventTime"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = MEMORY[0x1E695DF00];
        v10 = v8;
        v11 = [v9 alloc];
        [v10 doubleValue];
        v13 = v12;

        v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v99 = [v20 dateFromString:v8];

          goto LABEL_16;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v99 = 0;
            errorCopy = 0;
            goto LABEL_51;
          }

          v75 = objc_alloc(MEMORY[0x1E696ABC0]);
          v76 = v8;
          v77 = *MEMORY[0x1E698F240];
          v116 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"eventTime"];
          v117 = v41;
          v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v79 = v77;
          v8 = v76;
          v96 = v78;
          v99 = 0;
          errorCopy = 0;
          *error = [v75 initWithDomain:v79 code:2 userInfo:?];
          goto LABEL_50;
        }

        v14 = v8;
      }

      v99 = v14;
    }

    else
    {
      v99 = 0;
    }

LABEL_16:
    v21 = [dictionaryCopy objectForKeyedSubscript:@"requesterDSID"];
    v96 = v21;
    if (v21 && (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          errorCopy = 0;
          goto LABEL_50;
        }

        v43 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = v8;
        v45 = *MEMORY[0x1E698F240];
        v114 = *MEMORY[0x1E696A578];
        v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requesterDSID"];
        v115 = v98;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        v47 = v43;
        v24 = v46;
        v48 = v45;
        v8 = v44;
        v41 = 0;
        errorCopy = 0;
        *error = [v47 initWithDomain:v48 code:2 userInfo:v46];
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      v95 = v22;
    }

    else
    {
      v95 = 0;
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"responderDSID"];
    v91 = v23;
    if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v98 = 0;
          errorCopy = 0;
          v41 = v95;
          goto LABEL_49;
        }

        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = v8;
        v51 = *MEMORY[0x1E698F240];
        v112 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"responderDSID"];
        v113 = v93;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v52 = v49;
        v24 = v91;
        v53 = v51;
        v8 = v50;
        v98 = 0;
        errorCopy = 0;
        *error = [v52 initWithDomain:v53 code:2 userInfo:v25];
        v41 = v95;
        goto LABEL_48;
      }

      v98 = v24;
    }

    else
    {
      v98 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"requestKind"];
    v92 = v6;
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v7;
        selfCopy3 = self;
        v93 = v25;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v93 = 0;
            errorCopy = 0;
            v41 = v95;
            v24 = v91;
            goto LABEL_48;
          }

          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = v8;
          v65 = *MEMORY[0x1E698F240];
          v110 = *MEMORY[0x1E696A578];
          v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestKind"];
          v111 = v90;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v67 = v65;
          v8 = v64;
          v87 = v66;
          v68 = [v94 initWithDomain:v67 code:2 userInfo:?];
          v93 = 0;
          errorCopy = 0;
          *error = v68;
          v41 = v95;
          v24 = v91;
LABEL_47:

LABEL_48:
          goto LABEL_49;
        }

        v26 = v7;
        v93 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyScreenTimeRequestKindFromString(v25)];
        selfCopy3 = self;
      }
    }

    else
    {
      v26 = v7;
      selfCopy3 = self;
      v93 = 0;
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    v86 = v25;
    v87 = v28;
    if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = v29;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v90 = 0;
            errorCopy = 0;
            v41 = v95;
            self = selfCopy3;
            v7 = v26;
            v24 = v91;
            v6 = v92;
            goto LABEL_47;
          }

          v69 = objc_alloc(MEMORY[0x1E696ABC0]);
          v70 = *MEMORY[0x1E698F240];
          v108 = *MEMORY[0x1E696A578];
          v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"status"];
          v109 = v89;
          v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
          v71 = [v69 initWithDomain:v70 code:2 userInfo:?];
          v90 = 0;
          errorCopy = 0;
          *error = v71;
          self = selfCopy3;
          v7 = v26;
          v24 = v91;
          v6 = v92;
          goto LABEL_46;
        }

        v90 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyScreenTimeRequestStatusFromString(v29)];
      }
    }

    else
    {
      v90 = 0;
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"approvalTime"];
    v85 = v30;
    if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      self = selfCopy3;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v89 = 0;
            errorCopy = 0;
            v7 = v26;
            v24 = v91;
            v6 = v92;
            goto LABEL_45;
          }

          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v106 = *MEMORY[0x1E696A578];
          v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"approvalTime"];
          v107 = v88;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
          v74 = [v72 initWithDomain:v73 code:2 userInfo:v32];
          v89 = 0;
          errorCopy = 0;
          *error = v74;
          v7 = v26;
          v6 = v92;
LABEL_44:

          v24 = v91;
LABEL_45:
          v25 = v86;
LABEL_46:

          v41 = v95;
          goto LABEL_47;
        }

        v89 = [MEMORY[0x1E696AD98] numberWithInt:BMFamilyScreenTimeRequestApprovedTimeFromString(v31)];
        v7 = v26;
LABEL_32:
        v32 = [dictionaryCopy objectForKeyedSubscript:@"websitePath"];
        v6 = v92;
        if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            errorCopy = error;
            if (!error)
            {
              v88 = 0;
              goto LABEL_44;
            }

            v54 = v8;
            v55 = v7;
            v56 = objc_alloc(MEMORY[0x1E696ABC0]);
            v57 = *MEMORY[0x1E698F240];
            v104 = *MEMORY[0x1E696A578];
            v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"websitePath"];
            v105 = v36;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
            v58 = v56;
            v7 = v55;
            v8 = v54;
            v59 = [v58 initWithDomain:v57 code:2 userInfo:v33];
            v88 = 0;
            errorCopy = 0;
            *error = v59;
            goto LABEL_43;
          }

          v88 = v32;
        }

        else
        {
          v88 = 0;
        }

        v33 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
        v84 = v8;
        if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v36 = 0;
              errorCopy = 0;
              v6 = v92;
              goto LABEL_43;
            }

            v34 = v7;
            selfCopy6 = self;
            v82 = objc_alloc(MEMORY[0x1E696ABC0]);
            v60 = *MEMORY[0x1E698F240];
            v102 = *MEMORY[0x1E696A578];
            v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
            v103 = v38;
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
            v61 = [v82 initWithDomain:v60 code:2 userInfo:v37];
            v36 = 0;
            errorCopy = 0;
            *error = v61;
            goto LABEL_42;
          }

          v34 = v7;
          selfCopy6 = self;
          v36 = v33;
        }

        else
        {
          v34 = v7;
          selfCopy6 = self;
          v36 = 0;
        }

        v37 = [dictionaryCopy objectForKeyedSubscript:@"isActionUserDevice"];
        if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v83 = objc_alloc(MEMORY[0x1E696ABC0]);
              v81 = *MEMORY[0x1E698F240];
              v100 = *MEMORY[0x1E696A578];
              v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionUserDevice"];
              v101 = v62;
              v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
              *error = [v83 initWithDomain:v81 code:2 userInfo:v63];
            }

            v38 = 0;
            errorCopy = 0;
            goto LABEL_42;
          }

          v38 = v37;
        }

        else
        {
          v38 = 0;
        }

        intValue = [v93 intValue];
        intValue2 = [v90 intValue];
        LODWORD(v80) = [v89 intValue];
        errorCopy = [(BMFamilyScreenTimeRequest *)selfCopy6 initWithRequestID:v34 eventTime:v99 requesterDSID:v95 responderDSID:v98 requestKind:intValue status:intValue2 approvalTime:v80 websitePath:v88 bundleID:v36 isActionUserDevice:v38];
        selfCopy6 = errorCopy;
LABEL_42:

        self = selfCopy6;
        v6 = v92;
        v7 = v34;
        v8 = v84;
LABEL_43:

        goto LABEL_44;
      }

      v89 = v31;
    }

    else
    {
      v89 = 0;
      self = selfCopy3;
    }

    v7 = v26;
    goto LABEL_32;
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
    errorCopy = 0;
    goto LABEL_52;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v118 = *MEMORY[0x1E696A578];
  v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestID"];
  v119[0] = v99;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:&v118 count:1];
  v18 = v16;
  v8 = v17;
  v7 = 0;
  errorCopy = 0;
  *error = [v15 initWithDomain:v18 code:2 userInfo:v17];
LABEL_51:

LABEL_52:
  return errorCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFamilyScreenTimeRequest *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_requestID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_eventTime)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_requesterDSID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_responderDSID)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_websitePath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  v4 = toCopy;
  if (self->_hasIsActionUserDevice)
  {
    PBDataWriterWriteBOOLField();
    v4 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMFamilyScreenTimeRequest;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_98;
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
        LOBYTE(v51) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
      if ((v14 >> 3) > 5)
      {
        if (v15 <= 7)
        {
          if (v15 == 6)
          {
            v39 = 0;
            v40 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v41 = [fromCopy position] + 1;
              if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (LOBYTE(v51) & 0x7F) << v39;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v22 = v40++ > 8;
              if (v22)
              {
                goto LABEL_84;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 3)
            {
LABEL_84:
              LODWORD(v18) = 0;
            }

            v45 = 44;
          }

          else
          {
            if (v15 != 7)
            {
LABEL_76:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_97;
              }

              goto LABEL_95;
            }

            v32 = 0;
            v33 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v51) = 0;
              v34 = [fromCopy position] + 1;
              if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (LOBYTE(v51) & 0x7F) << v32;
              if ((LOBYTE(v51) & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v22 = v33++ > 8;
              if (v22)
              {
                goto LABEL_80;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 3)
            {
LABEL_80:
              LODWORD(v18) = 0;
            }

            v45 = 48;
          }

          goto LABEL_90;
        }

        if (v15 == 8)
        {
          v37 = PBReaderReadString();
          v38 = 80;
          goto LABEL_75;
        }

        if (v15 == 9)
        {
          v37 = PBReaderReadString();
          v38 = 88;
          goto LABEL_75;
        }

        if (v15 != 10)
        {
          goto LABEL_76;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasIsActionUserDevice = 1;
        while (1)
        {
          LOBYTE(v51) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (LOBYTE(v51) & 0x7F) << v23;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v13 = v24++ >= 9;
          if (v13)
          {
            LOBYTE(v29) = 0;
            goto LABEL_92;
          }
        }

        v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_92:
        v5->_isActionUserDevice = v29;
      }

      else
      {
        if (v15 > 2)
        {
          switch(v15)
          {
            case 3:
              v37 = PBReaderReadString();
              v38 = 64;
              break;
            case 4:
              v37 = PBReaderReadString();
              v38 = 72;
              break;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v19 = [fromCopy position] + 1;
                if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
                {
                  data5 = [fromCopy data];
                  [data5 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (LOBYTE(v51) & 0x7F) << v16;
                if ((LOBYTE(v51) & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v22 = v17++ > 8;
                if (v22)
                {
                  goto LABEL_88;
                }
              }

              if (([fromCopy hasError] & 1) != 0 || v18 > 2)
              {
LABEL_88:
                LODWORD(v18) = 0;
              }

              v45 = 40;
LABEL_90:
              *(&v5->super.super.isa + v45) = v18;
              goto LABEL_95;
            default:
              goto LABEL_76;
          }

          goto LABEL_75;
        }

        if (v15 == 1)
        {
          v37 = PBReaderReadString();
          v38 = 56;
LABEL_75:
          v44 = *(&v5->super.super.isa + v38);
          *(&v5->super.super.isa + v38) = v37;

          goto LABEL_95;
        }

        if (v15 != 2)
        {
          goto LABEL_76;
        }

        v5->_hasRaw_eventTime = 1;
        v51 = 0.0;
        v30 = [fromCopy position] + 8;
        if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v51 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_eventTime = v51;
      }

LABEL_95:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_97:
    v48 = 0;
  }

  else
  {
LABEL_98:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  requestID = [(BMFamilyScreenTimeRequest *)self requestID];
  eventTime = [(BMFamilyScreenTimeRequest *)self eventTime];
  requesterDSID = [(BMFamilyScreenTimeRequest *)self requesterDSID];
  responderDSID = [(BMFamilyScreenTimeRequest *)self responderDSID];
  v6 = BMFamilyScreenTimeRequestKindAsString([(BMFamilyScreenTimeRequest *)self requestKind]);
  v7 = BMFamilyScreenTimeRequestStatusAsString([(BMFamilyScreenTimeRequest *)self status]);
  v8 = BMFamilyScreenTimeRequestApprovedTimeAsString([(BMFamilyScreenTimeRequest *)self approvalTime]);
  websitePath = [(BMFamilyScreenTimeRequest *)self websitePath];
  bundleID = [(BMFamilyScreenTimeRequest *)self bundleID];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMFamilyScreenTimeRequest isActionUserDevice](self, "isActionUserDevice")}];
  v15 = [v14 initWithFormat:@"BMFamilyScreenTimeRequest with requestID: %@, eventTime: %@, requesterDSID: %@, responderDSID: %@, requestKind: %@, status: %@, approvalTime: %@, websitePath: %@, bundleID: %@, isActionUserDevice: %@", requestID, eventTime, requesterDSID, responderDSID, v6, v7, v8, websitePath, bundleID, v11];

  return v15;
}

- (BMFamilyScreenTimeRequest)initWithRequestID:(id)d eventTime:(id)time requesterDSID:(id)iD responderDSID:(id)sID requestKind:(int)kind status:(int)status approvalTime:(int)approvalTime websitePath:(id)self0 bundleID:(id)self1 isActionUserDevice:(id)self2
{
  dCopy = d;
  timeCopy = time;
  iDCopy = iD;
  sIDCopy = sID;
  pathCopy = path;
  bundleIDCopy = bundleID;
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = BMFamilyScreenTimeRequest;
  v20 = [(BMEventBase *)&v29 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_requestID, d);
    if (timeCopy)
    {
      v20->_hasRaw_eventTime = 1;
      [timeCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_eventTime = 0;
      v21 = -1.0;
    }

    v20->_raw_eventTime = v21;
    objc_storeStrong(&v20->_requesterDSID, iD);
    objc_storeStrong(&v20->_responderDSID, sID);
    v20->_requestKind = kind;
    v20->_status = status;
    v20->_approvalTime = approvalTime;
    objc_storeStrong(&v20->_websitePath, path);
    objc_storeStrong(&v20->_bundleID, bundleID);
    if (deviceCopy)
    {
      v20->_hasIsActionUserDevice = 1;
      v20->_isActionUserDevice = [deviceCopy BOOLValue];
    }

    else
    {
      v20->_hasIsActionUserDevice = 0;
      v20->_isActionUserDevice = 0;
    }
  }

  return v20;
}

+ (id)protoFields
{
  v14[10] = *MEMORY[0x1E69E9840];
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestID" number:1 type:13 subMessageClass:0];
  v14[0] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTime" number:2 type:0 subMessageClass:0];
  v14[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requesterDSID" number:3 type:13 subMessageClass:0];
  v14[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"responderDSID" number:4 type:13 subMessageClass:0];
  v14[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestKind" number:5 type:4 subMessageClass:0];
  v14[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"status" number:6 type:4 subMessageClass:0];
  v14[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"approvalTime" number:7 type:4 subMessageClass:0];
  v14[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"websitePath" number:8 type:13 subMessageClass:0];
  v14[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:9 type:13 subMessageClass:0];
  v14[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionUserDevice" number:10 type:12 subMessageClass:0];
  v14[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:10];

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMFamilyScreenTimeRequest alloc] initByReadFrom:v6];
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