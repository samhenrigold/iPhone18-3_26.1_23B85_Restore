@interface BMMotionActivity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMotionActivity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMotionActivity)initWithStationary:(id)stationary walking:(id)walking running:(id)running automotive:(id)automotive cycling:(id)cycling unknown:(id)unknown startDate:(id)date confidence:(int)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMotionActivity

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stationary" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"walking" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"running" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"automotive" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cycling" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unknown" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:2];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidence" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
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
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v5 = equalCopy;
  if (-[BMMotionActivity hasStationary](self, "hasStationary") || [v5 hasStationary])
  {
    if (![(BMMotionActivity *)self hasStationary])
    {
      goto LABEL_34;
    }

    if (![v5 hasStationary])
    {
      goto LABEL_34;
    }

    stationary = [(BMMotionActivity *)self stationary];
    if (stationary != [v5 stationary])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasWalking](self, "hasWalking") || [v5 hasWalking])
  {
    if (![(BMMotionActivity *)self hasWalking])
    {
      goto LABEL_34;
    }

    if (![v5 hasWalking])
    {
      goto LABEL_34;
    }

    walking = [(BMMotionActivity *)self walking];
    if (walking != [v5 walking])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasRunning](self, "hasRunning") || [v5 hasRunning])
  {
    if (![(BMMotionActivity *)self hasRunning])
    {
      goto LABEL_34;
    }

    if (![v5 hasRunning])
    {
      goto LABEL_34;
    }

    running = [(BMMotionActivity *)self running];
    if (running != [v5 running])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasAutomotive](self, "hasAutomotive") || [v5 hasAutomotive])
  {
    if (![(BMMotionActivity *)self hasAutomotive])
    {
      goto LABEL_34;
    }

    if (![v5 hasAutomotive])
    {
      goto LABEL_34;
    }

    automotive = [(BMMotionActivity *)self automotive];
    if (automotive != [v5 automotive])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasCycling](self, "hasCycling") || [v5 hasCycling])
  {
    if (![(BMMotionActivity *)self hasCycling])
    {
      goto LABEL_34;
    }

    if (![v5 hasCycling])
    {
      goto LABEL_34;
    }

    cycling = [(BMMotionActivity *)self cycling];
    if (cycling != [v5 cycling])
    {
      goto LABEL_34;
    }
  }

  if (-[BMMotionActivity hasUnknown](self, "hasUnknown") || [v5 hasUnknown])
  {
    if (![(BMMotionActivity *)self hasUnknown])
    {
      goto LABEL_34;
    }

    if (![v5 hasUnknown])
    {
      goto LABEL_34;
    }

    unknown = [(BMMotionActivity *)self unknown];
    if (unknown != [v5 unknown])
    {
      goto LABEL_34;
    }
  }

  startDate = [(BMMotionActivity *)self startDate];
  startDate2 = [v5 startDate];
  v14 = startDate2;
  if (startDate == startDate2)
  {

    goto LABEL_39;
  }

  startDate3 = [(BMMotionActivity *)self startDate];
  startDate4 = [v5 startDate];
  v17 = [startDate3 isEqual:startDate4];

  if (v17)
  {
LABEL_39:
    confidence = [(BMMotionActivity *)self confidence];
    v18 = confidence == [v5 confidence];
    goto LABEL_35;
  }

LABEL_34:
  v18 = 0;
LABEL_35:

LABEL_37:
  return v18;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
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
  v31[8] = *MEMORY[0x1E69E9840];
  if ([(BMMotionActivity *)self hasStationary])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity stationary](self, "stationary")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMMotionActivity *)self hasWalking])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity walking](self, "walking")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMMotionActivity *)self hasRunning])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity running](self, "running")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMMotionActivity *)self hasAutomotive])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity automotive](self, "automotive")}];
  }

  else
  {
    v29 = 0;
  }

  if ([(BMMotionActivity *)self hasCycling])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity cycling](self, "cycling")}];
  }

  else
  {
    v28 = 0;
  }

  if ([(BMMotionActivity *)self hasUnknown])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity unknown](self, "unknown")}];
  }

  else
  {
    v6 = 0;
  }

  startDate = [(BMMotionActivity *)self startDate];
  if (startDate)
  {
    v8 = MEMORY[0x1E696AD98];
    startDate2 = [(BMMotionActivity *)self startDate];
    [startDate2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMotionActivity confidence](self, "confidence")}];
  v30[0] = @"stationary";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v31[0] = null;
  v30[1] = @"walking";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v31[1] = null2;
  v30[2] = @"running";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v3;
  v23 = null3;
  v31[2] = null3;
  v30[3] = @"automotive";
  null4 = v29;
  if (!v29)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v4;
  v31[3] = null4;
  v30[4] = @"cycling";
  null5 = v28;
  if (!v28)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v5;
  v31[4] = null5;
  v30[5] = @"unknown";
  null6 = v6;
  if (!v6)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = null6;
  v30[6] = @"startDate";
  null7 = v10;
  if (!v10)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v30[7] = @"confidence";
  null8 = v11;
  if (!v11)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v31[7] = null8;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:8];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_40;
    }

LABEL_52:

    if (v6)
    {
      goto LABEL_41;
    }

    goto LABEL_53;
  }

  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_40:
  if (v6)
  {
    goto LABEL_41;
  }

LABEL_53:

LABEL_41:
  if (!v28)
  {
  }

  if (!v29)
  {
  }

  if (v17)
  {
    if (v26)
    {
      goto LABEL_47;
    }

LABEL_55:

    if (v27)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

  if (!v26)
  {
    goto LABEL_55;
  }

LABEL_47:
  if (v27)
  {
    goto LABEL_48;
  }

LABEL_56:

LABEL_48:

  return v21;
}

- (BMMotionActivity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v108[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"stationary"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"walking"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          goto LABEL_70;
        }

        v28 = dictionaryCopy;
        errorCopy = error;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v105 = *MEMORY[0x1E696A578];
        v32 = v8;
        v33 = objc_alloc(MEMORY[0x1E696AEC0]);
        v74 = objc_opt_class();
        v34 = v33;
        v8 = v32;
        v35 = [v34 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v74, @"walking"];
        v106 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
        v37 = v31;
        v11 = v36;
        v38 = [v30 initWithDomain:v37 code:2 userInfo:v36];
        v10 = 0;
        error = 0;
        *errorCopy = v38;
        dictionaryCopy = v28;
        goto LABEL_69;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"running"];
    v92 = dictionaryCopy;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v35 = 0;
          goto LABEL_69;
        }

        v89 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v46 = *MEMORY[0x1E698F240];
        v103 = *MEMORY[0x1E696A578];
        v47 = v10;
        v48 = objc_alloc(MEMORY[0x1E696AEC0]);
        v75 = objc_opt_class();
        v49 = v48;
        v10 = v47;
        v90 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v75, @"running"];
        v104 = v90;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v51 = [v89 initWithDomain:v46 code:2 userInfo:v50];
        v35 = 0;
        error = 0;
        *errorCopy2 = v51;
LABEL_68:

        dictionaryCopy = v92;
LABEL_69:

        goto LABEL_70;
      }

      v12 = v8;
      v13 = v9;
      v14 = v7;
      selfCopy2 = self;
      v88 = v11;
    }

    else
    {
      v12 = v8;
      v13 = v9;
      v14 = v7;
      selfCopy2 = self;
      v88 = 0;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"automotive"];
    v84 = v11;
    errorCopy3 = error;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v90 = 0;
          v35 = v88;
          v50 = v16;
          self = selfCopy2;
          v7 = v14;
          v9 = v13;
          v8 = v12;
          goto LABEL_68;
        }

        v91 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v50 = v16;
        v87 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"automotive"];
        v102 = v87;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v54 = v52;
        v11 = v84;
        v86 = v53;
        v55 = [v91 initWithDomain:v54 code:2 userInfo:?];
        v90 = 0;
        error = 0;
        *errorCopy3 = v55;
        v35 = v88;
        self = selfCopy2;
        v7 = v14;
        v9 = v13;
        v8 = v12;
        goto LABEL_67;
      }

      v82 = v16;
      v90 = v16;
    }

    else
    {
      v82 = v16;
      v90 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"cycling"];
    self = selfCopy2;
    v86 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      v7 = v14;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        v9 = v13;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = v12;
          if (!error)
          {
            v87 = 0;
            v35 = v88;
            v50 = v82;
            goto LABEL_67;
          }

          v56 = objc_alloc(MEMORY[0x1E696ABC0]);
          v57 = v10;
          v58 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v59 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cycling"];
          v100 = v59;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v60 = v58;
          v10 = v57;
          v61 = [v56 initWithDomain:v60 code:2 userInfo:v19];
          v87 = 0;
          error = 0;
          *errorCopy3 = v61;
LABEL_66:
          v50 = v82;

          v11 = v84;
          v35 = v88;
LABEL_67:

          goto LABEL_68;
        }

        v87 = v18;
LABEL_24:
        v8 = v12;
        v19 = [v92 objectForKeyedSubscript:@"unknown"];
        v85 = v10;
        if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v59 = 0;
              goto LABEL_66;
            }

            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"unknown"];
            v98 = v22;
            v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v64 = [v62 initWithDomain:v63 code:2 userInfo:v20];
            v59 = 0;
            error = 0;
            *errorCopy3 = v64;
            goto LABEL_65;
          }

          v80 = v19;
        }

        else
        {
          v80 = 0;
        }

        v20 = [v92 objectForKeyedSubscript:@"startDate"];
        v83 = v12;
        if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          errorCopy4 = self;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = MEMORY[0x1E695DF00];
            v40 = v20;
            v41 = [v39 alloc];
            [v40 doubleValue];
            v43 = v42;

            v44 = [v41 initWithTimeIntervalSince1970:v43];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v65 = objc_alloc_init(MEMORY[0x1E696AC80]);
              v22 = [v65 dateFromString:v20];

              goto LABEL_54;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v22 = 0;
                error = 0;
                v8 = v12;
                v59 = v80;
                goto LABEL_65;
              }

              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = *MEMORY[0x1E698F240];
              v95 = *MEMORY[0x1E696A578];
              v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
              v96 = v67;
              v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
              v73 = [v79 initWithDomain:v72 code:2 userInfo:v66];
              v22 = 0;
              error = 0;
              *errorCopy3 = v73;
              v59 = v80;
              goto LABEL_64;
            }

            v44 = v20;
          }

          v22 = v44;
        }

        else
        {
          errorCopy4 = self;
          v22 = 0;
        }

LABEL_54:
        v66 = [v92 objectForKeyedSubscript:@"confidence"];
        if (v66)
        {
          objc_opt_class();
          v59 = v80;
          if (objc_opt_isKindOfClass())
          {
            v67 = 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v68 = v66;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy3)
                {
                  v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v77 = *MEMORY[0x1E698F240];
                  v93 = *MEMORY[0x1E696A578];
                  v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"confidence"];
                  v94 = v70;
                  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
                  *errorCopy3 = [v78 initWithDomain:v77 code:2 userInfo:v71];
                }

                v67 = 0;
                error = 0;
                goto LABEL_64;
              }

              v68 = [MEMORY[0x1E696AD98] numberWithInt:BMMotionActivityConfidenceFromString(v66)];
            }

            v67 = v68;
          }
        }

        else
        {
          v67 = 0;
          v59 = v80;
        }

        LODWORD(v76) = [v67 intValue];
        error = [(BMMotionActivity *)errorCopy4 initWithStationary:v83 walking:v85 running:v88 automotive:v90 cycling:v87 unknown:v59 startDate:v22 confidence:v76];
        errorCopy4 = error;
LABEL_64:

        self = errorCopy4;
        v8 = v83;
LABEL_65:

        v10 = v85;
        goto LABEL_66;
      }

      v87 = 0;
    }

    else
    {
      v87 = 0;
      v7 = v14;
    }

    v9 = v13;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    v23 = dictionaryCopy;
    errorCopy5 = error;
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = *MEMORY[0x1E698F240];
    v107 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stationary"];
    v108[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:&v107 count:1];
    v27 = [v25 initWithDomain:v26 code:2 userInfo:v9];
    v8 = 0;
    error = 0;
    *errorCopy5 = v27;
    dictionaryCopy = v23;
LABEL_70:

    goto LABEL_71;
  }

  v8 = 0;
LABEL_71:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMotionActivity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasStationary)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasWalking)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRunning)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAutomotive)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCycling)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUnknown)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_startDate)
  {
    PBDataWriterWriteDoubleField();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v67.receiver = self;
  v67.super_class = BMMotionActivity;
  v5 = [(BMEventBase *)&v67 init];
  if (!v5)
  {
    goto LABEL_120;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_118;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v68) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v68) & 0x7F) << v7;
        if ((LOBYTE(v68) & 0x80) == 0)
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
        goto LABEL_118;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 4)
      {
        break;
      }

      if (v15 <= 6)
      {
        if (v15 == 5)
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasCycling = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 |= (LOBYTE(v68) & 0x7F) << v48;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v13 = v49++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_100;
            }
          }

          v22 = (v50 != 0) & ~[fromCopy hasError];
LABEL_100:
          v62 = 40;
        }

        else
        {
          if (v15 != 6)
          {
            goto LABEL_95;
          }

          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasUnknown = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (LOBYTE(v68) & 0x7F) << v23;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v13 = v24++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_106;
            }
          }

          v22 = (v25 != 0) & ~[fromCopy hasError];
LABEL_106:
          v62 = 42;
        }

LABEL_109:
        *(&v5->super.super.isa + v62) = v22;
        goto LABEL_110;
      }

      if (v15 == 7)
      {
        v5->_hasRaw_startDate = 1;
        v68 = 0.0;
        v60 = [fromCopy position] + 8;
        if (v60 >= [fromCopy position] && (v61 = objc_msgSend(fromCopy, "position") + 8, v61 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_startDate = v68;
      }

      else
      {
        if (v15 != 8)
        {
LABEL_95:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_119;
          }

          goto LABEL_110;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (1)
        {
          LOBYTE(v68) = 0;
          v38 = [fromCopy position] + 1;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v37 |= (LOBYTE(v68) & 0x7F) << v35;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          if (v36++ > 8)
          {
            goto LABEL_114;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v37 > 3)
        {
LABEL_114:
          LODWORD(v37) = 0;
        }

        v5->_confidence = v37;
      }

LABEL_110:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_118;
      }
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v5->_hasRunning = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v57 = [fromCopy position] + 1;
          if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v56 |= (LOBYTE(v68) & 0x7F) << v54;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v13 = v55++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_102;
          }
        }

        v22 = (v56 != 0) & ~[fromCopy hasError];
LABEL_102:
        v62 = 36;
      }

      else
      {
        if (v15 != 4)
        {
          goto LABEL_95;
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasAutomotive = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (LOBYTE(v68) & 0x7F) << v29;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            LOBYTE(v22) = 0;
            goto LABEL_108;
          }
        }

        v22 = (v31 != 0) & ~[fromCopy hasError];
LABEL_108:
        v62 = 38;
      }
    }

    else if (v15 == 1)
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v5->_hasStationary = 1;
      while (1)
      {
        LOBYTE(v68) = 0;
        v45 = [fromCopy position] + 1;
        if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v44 |= (LOBYTE(v68) & 0x7F) << v42;
        if ((LOBYTE(v68) & 0x80) == 0)
        {
          break;
        }

        v42 += 7;
        v13 = v43++ >= 9;
        if (v13)
        {
          LOBYTE(v22) = 0;
          goto LABEL_98;
        }
      }

      v22 = (v44 != 0) & ~[fromCopy hasError];
LABEL_98:
      v62 = 32;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_95;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v5->_hasWalking = 1;
      while (1)
      {
        LOBYTE(v68) = 0;
        v19 = [fromCopy position] + 1;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v68 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v18 |= (LOBYTE(v68) & 0x7F) << v16;
        if ((LOBYTE(v68) & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v13 = v17++ >= 9;
        if (v13)
        {
          LOBYTE(v22) = 0;
          goto LABEL_104;
        }
      }

      v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_104:
      v62 = 34;
    }

    goto LABEL_109;
  }

LABEL_118:
  if ([fromCopy hasError])
  {
LABEL_119:
    v65 = 0;
  }

  else
  {
LABEL_120:
    v65 = v5;
  }

  return v65;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity stationary](self, "stationary")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity walking](self, "walking")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity running](self, "running")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity automotive](self, "automotive")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity cycling](self, "cycling")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMotionActivity unknown](self, "unknown")}];
  startDate = [(BMMotionActivity *)self startDate];
  v11 = BMMotionActivityConfidenceAsString([(BMMotionActivity *)self confidence]);
  v12 = [v3 initWithFormat:@"BMMotionActivity with stationary: %@, walking: %@, running: %@, automotive: %@, cycling: %@, unknown: %@, startDate: %@, confidence: %@", v4, v5, v6, v7, v8, v9, startDate, v11];

  return v12;
}

- (BMMotionActivity)initWithStationary:(id)stationary walking:(id)walking running:(id)running automotive:(id)automotive cycling:(id)cycling unknown:(id)unknown startDate:(id)date confidence:(int)self0
{
  stationaryCopy = stationary;
  walkingCopy = walking;
  runningCopy = running;
  automotiveCopy = automotive;
  cyclingCopy = cycling;
  unknownCopy = unknown;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = BMMotionActivity;
  v23 = [(BMEventBase *)&v26 init];
  if (v23)
  {
    v23->_dataVersion = [objc_opt_class() latestDataVersion];
    if (stationaryCopy)
    {
      v23->_hasStationary = 1;
      v23->_stationary = [stationaryCopy BOOLValue];
    }

    else
    {
      v23->_hasStationary = 0;
      v23->_stationary = 0;
    }

    if (walkingCopy)
    {
      v23->_hasWalking = 1;
      v23->_walking = [walkingCopy BOOLValue];
    }

    else
    {
      v23->_hasWalking = 0;
      v23->_walking = 0;
    }

    if (runningCopy)
    {
      v23->_hasRunning = 1;
      v23->_running = [runningCopy BOOLValue];
    }

    else
    {
      v23->_hasRunning = 0;
      v23->_running = 0;
    }

    if (automotiveCopy)
    {
      v23->_hasAutomotive = 1;
      v23->_automotive = [automotiveCopy BOOLValue];
    }

    else
    {
      v23->_hasAutomotive = 0;
      v23->_automotive = 0;
    }

    if (cyclingCopy)
    {
      v23->_hasCycling = 1;
      v23->_cycling = [cyclingCopy BOOLValue];
    }

    else
    {
      v23->_hasCycling = 0;
      v23->_cycling = 0;
    }

    if (unknownCopy)
    {
      v23->_hasUnknown = 1;
      v23->_unknown = [unknownCopy BOOLValue];
    }

    else
    {
      v23->_hasUnknown = 0;
      v23->_unknown = 0;
    }

    if (dateCopy)
    {
      v23->_hasRaw_startDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v23->_hasRaw_startDate = 0;
      v24 = -1.0;
    }

    v23->_raw_startDate = v24;
    v23->_confidence = confidence;
  }

  return v23;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stationary" number:1 type:12 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"walking" number:2 type:12 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"running" number:3 type:12 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"automotive" number:4 type:12 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cycling" number:5 type:12 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unknown" number:6 type:12 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:7 type:0 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidence" number:8 type:4 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
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

    v8 = [[BMMotionActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end