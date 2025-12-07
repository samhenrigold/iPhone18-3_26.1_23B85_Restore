@interface BMAppleIDChildSetup
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppleIDChildSetup)initWithIsNewChildAccount:(id)account startDate:(id)date endDate:(id)endDate completedSetup:(id)setup lastViewedScreen:(int)screen appUsage:(id)usage askToBuy:(id)buy commSafety:(id)self0 screenDistance:(id)self1 age:(id)self2 flowType:(int)self3;
- (BMAppleIDChildSetup)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppleIDChildSetup

+ (id)columns
{
  v15[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNewChildAccount" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"completedSetup" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastViewedScreen" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appUsage" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"askToBuy" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"commSafety" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"screenDistance" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"age" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"flowType" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v13;
  v15[6] = v7;
  v15[7] = v8;
  v15[8] = v14;
  v15[9] = v9;
  v15[10] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMAppleIDChildSetup hasIsNewChildAccount](self, "hasIsNewChildAccount") || [v5 hasIsNewChildAccount])
    {
      if (![(BMAppleIDChildSetup *)self hasIsNewChildAccount])
      {
        goto LABEL_48;
      }

      if (![v5 hasIsNewChildAccount])
      {
        goto LABEL_48;
      }

      isNewChildAccount = [(BMAppleIDChildSetup *)self isNewChildAccount];
      if (isNewChildAccount != [v5 isNewChildAccount])
      {
        goto LABEL_48;
      }
    }

    startDate = [(BMAppleIDChildSetup *)self startDate];
    startDate2 = [v5 startDate];
    v9 = startDate2;
    if (startDate == startDate2)
    {
    }

    else
    {
      startDate3 = [(BMAppleIDChildSetup *)self startDate];
      startDate4 = [v5 startDate];
      v12 = [startDate3 isEqual:startDate4];

      if (!v12)
      {
        goto LABEL_48;
      }
    }

    endDate = [(BMAppleIDChildSetup *)self endDate];
    endDate2 = [v5 endDate];
    v16 = endDate2;
    if (endDate == endDate2)
    {
    }

    else
    {
      endDate3 = [(BMAppleIDChildSetup *)self endDate];
      endDate4 = [v5 endDate];
      v19 = [endDate3 isEqual:endDate4];

      if (!v19)
      {
        goto LABEL_48;
      }
    }

    if (!-[BMAppleIDChildSetup hasCompletedSetup](self, "hasCompletedSetup") && ![v5 hasCompletedSetup] || -[BMAppleIDChildSetup hasCompletedSetup](self, "hasCompletedSetup") && objc_msgSend(v5, "hasCompletedSetup") && (v20 = -[BMAppleIDChildSetup completedSetup](self, "completedSetup"), v20 == objc_msgSend(v5, "completedSetup")))
    {
      lastViewedScreen = [(BMAppleIDChildSetup *)self lastViewedScreen];
      if (lastViewedScreen == [v5 lastViewedScreen])
      {
        if (!-[BMAppleIDChildSetup hasAppUsage](self, "hasAppUsage") && ![v5 hasAppUsage] || -[BMAppleIDChildSetup hasAppUsage](self, "hasAppUsage") && objc_msgSend(v5, "hasAppUsage") && (v22 = -[BMAppleIDChildSetup appUsage](self, "appUsage"), v22 == objc_msgSend(v5, "appUsage")))
        {
          if (!-[BMAppleIDChildSetup hasAskToBuy](self, "hasAskToBuy") && ![v5 hasAskToBuy] || -[BMAppleIDChildSetup hasAskToBuy](self, "hasAskToBuy") && objc_msgSend(v5, "hasAskToBuy") && (v23 = -[BMAppleIDChildSetup askToBuy](self, "askToBuy"), v23 == objc_msgSend(v5, "askToBuy")))
          {
            if (!-[BMAppleIDChildSetup hasCommSafety](self, "hasCommSafety") && ![v5 hasCommSafety] || -[BMAppleIDChildSetup hasCommSafety](self, "hasCommSafety") && objc_msgSend(v5, "hasCommSafety") && (v24 = -[BMAppleIDChildSetup commSafety](self, "commSafety"), v24 == objc_msgSend(v5, "commSafety")))
            {
              if (!-[BMAppleIDChildSetup hasScreenDistance](self, "hasScreenDistance") && ![v5 hasScreenDistance] || -[BMAppleIDChildSetup hasScreenDistance](self, "hasScreenDistance") && objc_msgSend(v5, "hasScreenDistance") && (v25 = -[BMAppleIDChildSetup screenDistance](self, "screenDistance"), v25 == objc_msgSend(v5, "screenDistance")))
              {
                if (!-[BMAppleIDChildSetup hasAge](self, "hasAge") && ![v5 hasAge] || -[BMAppleIDChildSetup hasAge](self, "hasAge") && objc_msgSend(v5, "hasAge") && (v26 = -[BMAppleIDChildSetup age](self, "age"), v26 == objc_msgSend(v5, "age")))
                {
                  flowType = [(BMAppleIDChildSetup *)self flowType];
                  v13 = flowType == [v5 flowType];
LABEL_49:

                  goto LABEL_50;
                }
              }
            }
          }
        }
      }
    }

LABEL_48:
    v13 = 0;
    goto LABEL_49;
  }

  v13 = 0;
LABEL_50:

  return v13;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v43[11] = *MEMORY[0x1E69E9840];
  if ([(BMAppleIDChildSetup *)self hasIsNewChildAccount])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup isNewChildAccount](self, "isNewChildAccount")}];
  }

  else
  {
    v3 = 0;
  }

  startDate = [(BMAppleIDChildSetup *)self startDate];
  if (startDate)
  {
    v5 = MEMORY[0x1E696AD98];
    startDate2 = [(BMAppleIDChildSetup *)self startDate];
    [startDate2 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  endDate = [(BMAppleIDChildSetup *)self endDate];
  if (endDate)
  {
    v9 = MEMORY[0x1E696AD98];
    endDate2 = [(BMAppleIDChildSetup *)self endDate];
    [endDate2 timeIntervalSince1970];
    v11 = [v9 numberWithDouble:?];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasCompletedSetup])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup completedSetup](self, "completedSetup")}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIDChildSetup lastViewedScreen](self, "lastViewedScreen")}];
  if ([(BMAppleIDChildSetup *)self hasAppUsage])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup appUsage](self, "appUsage")}];
  }

  else
  {
    v41 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasAskToBuy])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup askToBuy](self, "askToBuy")}];
  }

  else
  {
    v40 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasCommSafety])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup commSafety](self, "commSafety")}];
  }

  else
  {
    v39 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasScreenDistance])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup screenDistance](self, "screenDistance")}];
  }

  else
  {
    v38 = 0;
  }

  if ([(BMAppleIDChildSetup *)self hasAge])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppleIDChildSetup age](self, "age")}];
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppleIDChildSetup flowType](self, "flowType")}];
  v42[0] = @"isNewChildAccount";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null;
  v43[0] = null;
  v42[1] = @"startDate";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null2;
  v43[1] = null2;
  v42[2] = @"endDate";
  null3 = v11;
  if (!v11)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null3;
  v43[2] = null3;
  v42[3] = @"completedSetup";
  null4 = v12;
  if (!v12)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v3;
  v30 = null4;
  v43[3] = null4;
  v42[4] = @"lastViewedScreen";
  null5 = v13;
  if (!v13)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v7;
  v29 = null5;
  v43[4] = null5;
  v42[5] = @"appUsage";
  null6 = v41;
  if (!v41)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v11;
  v43[5] = null6;
  v42[6] = @"askToBuy";
  null7 = v40;
  if (!v40)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v43[6] = null7;
  v42[7] = @"commSafety";
  null8 = v39;
  if (!v39)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v13;
  v43[7] = null8;
  v42[8] = @"screenDistance";
  null9 = v38;
  if (!v38)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v43[8] = null9;
  v42[9] = @"age";
  null10 = v14;
  if (!v14)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v43[9] = null10;
  v42[10] = @"flowType";
  null11 = v15;
  if (!v15)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v43[10] = null11;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:11];
  if (v15)
  {
    if (v14)
    {
      goto LABEL_52;
    }
  }

  else
  {

    if (v14)
    {
      goto LABEL_52;
    }
  }

LABEL_52:
  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v40)
  {
  }

  if (!v41)
  {
  }

  if (!v24)
  {
  }

  if (v12)
  {
    if (v35)
    {
      goto LABEL_64;
    }
  }

  else
  {

    if (v35)
    {
LABEL_64:
      if (v36)
      {
        goto LABEL_65;
      }

LABEL_73:

      if (v37)
      {
        goto LABEL_66;
      }

      goto LABEL_74;
    }
  }

  if (!v36)
  {
    goto LABEL_73;
  }

LABEL_65:
  if (v37)
  {
    goto LABEL_66;
  }

LABEL_74:

LABEL_66:

  return v34;
}

- (BMAppleIDChildSetup)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v146[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isNewChildAccount"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = MEMORY[0x1E695DF00];
        v22 = v9;
        v23 = [v21 alloc];
        [v22 doubleValue];
        v25 = v24;

        v10 = [v23 initWithTimeIntervalSince1970:v25];
      }

      else
      {
        errorCopy = error;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v10 = [v46 dateFromString:v9];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v10 = 0;
              goto LABEL_98;
            }

            v88 = objc_alloc(MEMORY[0x1E696ABC0]);
            v89 = *MEMORY[0x1E698F240];
            v143 = *MEMORY[0x1E696A578];
            v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
            v144 = v124;
            v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
            v90 = [v88 initWithDomain:v89 code:2 userInfo:?];
            v10 = 0;
            errorCopy = 0;
            *error = v90;
            goto LABEL_97;
          }

          v10 = v9;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
    v122 = v11;
    if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = MEMORY[0x1E695DF00];
        v27 = v12;
        v28 = [v26 alloc];
        [v27 doubleValue];
        v30 = v29;

        v124 = [v28 initWithTimeIntervalSince1970:v30];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v124 = [v47 dateFromString:v12];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v124 = 0;
              errorCopy = 0;
              goto LABEL_97;
            }

            v91 = objc_alloc(MEMORY[0x1E696ABC0]);
            v117 = v10;
            v92 = *MEMORY[0x1E698F240];
            v141 = *MEMORY[0x1E696A578];
            v55 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
            v142 = v55;
            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
            v94 = v92;
            v10 = v117;
            v121 = v93;
            v95 = [v91 initWithDomain:v94 code:2 userInfo:?];
            v124 = 0;
            errorCopy = 0;
            *error = v95;
            goto LABEL_96;
          }

          v124 = v12;
        }
      }
    }

    else
    {
      v124 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"completedSetup"];
    v121 = v13;
    if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = v7;
      v16 = v8;
      v120 = 0;
LABEL_13:
      v17 = [dictionaryCopy objectForKeyedSubscript:@"lastViewedScreen"];
      v114 = v17;
      if (v17 && (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v123 = v18;
        }

        else
        {
          selfCopy = self;
          errorCopy2 = error;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v123 = 0;
              errorCopy = 0;
              self = selfCopy;
              v55 = v120;
              v52 = v18;
              v8 = v16;
              v7 = v15;
              goto LABEL_95;
            }

            v77 = objc_alloc(MEMORY[0x1E696ABC0]);
            v116 = v10;
            v78 = *MEMORY[0x1E698F240];
            v137 = *MEMORY[0x1E696A578];
            v79 = objc_alloc(MEMORY[0x1E696AEC0]);
            v99 = objc_opt_class();
            v80 = v79;
            v52 = v18;
            v119 = [v80 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v99, @"lastViewedScreen"];
            v138 = v119;
            v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            v82 = v78;
            v10 = v116;
            v118 = v81;
            v83 = [v77 initWithDomain:v82 code:2 userInfo:?];
            v123 = 0;
            errorCopy = 0;
            *errorCopy2 = v83;
            self = selfCopy;
            v55 = v120;
            v8 = v16;
            v7 = v15;
            goto LABEL_94;
          }

          v123 = [MEMORY[0x1E696AD98] numberWithInt:BMAppleIDChildSetupChildSetupScreenFromString(v18)];
          self = selfCopy;
        }
      }

      else
      {
        v123 = 0;
      }

      v19 = [dictionaryCopy objectForKeyedSubscript:@"appUsage"];
      v8 = v16;
      v110 = v9;
      v118 = v19;
      if (v19)
      {
        v20 = v19;
        objc_opt_class();
        v7 = v15;
        if (objc_opt_isKindOfClass())
        {
          v119 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v119 = 0;
              errorCopy = 0;
              v55 = v120;
              v52 = v114;
              goto LABEL_94;
            }

            v57 = v10;
            v58 = objc_alloc(MEMORY[0x1E696ABC0]);
            errorCopy3 = error;
            v59 = *MEMORY[0x1E698F240];
            v135 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"appUsage"];
            v136 = v32;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
            v60 = v58;
            v10 = v57;
            v119 = 0;
            errorCopy = 0;
            *errorCopy3 = [v60 initWithDomain:v59 code:2 userInfo:v31];
            goto LABEL_106;
          }

          v119 = v20;
        }
      }

      else
      {
        v119 = 0;
        v7 = v15;
      }

      v31 = [dictionaryCopy objectForKeyedSubscript:@"askToBuy"];
      v115 = v10;
      if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v32 = 0;
LABEL_35:
        v33 = [dictionaryCopy objectForKeyedSubscript:@"commSafety"];
        v109 = v8;
        errorCopy4 = error;
        v107 = v32;
        if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v111 = 0;
              errorCopy = 0;
              goto LABEL_92;
            }

            v66 = objc_alloc(MEMORY[0x1E696ABC0]);
            v67 = *MEMORY[0x1E698F240];
            v131 = *MEMORY[0x1E696A578];
            v68 = v7;
            v69 = objc_alloc(MEMORY[0x1E696AEC0]);
            v98 = objc_opt_class();
            v70 = v69;
            v7 = v68;
            v108 = [v70 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v98, @"commSafety"];
            v132 = v108;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:&v131 count:1];
            v71 = v67;
            v32 = v107;
            v111 = 0;
            errorCopy = 0;
            *errorCopy4 = [v66 initWithDomain:v71 code:2 userInfo:v34];
            goto LABEL_91;
          }

          v111 = v33;
        }

        else
        {
          v111 = 0;
        }

        v34 = [dictionaryCopy objectForKeyedSubscript:@"screenDistance"];
        v104 = v7;
        if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v108 = 0;
              errorCopy = 0;
              goto LABEL_91;
            }

            v72 = objc_alloc(MEMORY[0x1E696ABC0]);
            selfCopy2 = self;
            v74 = *MEMORY[0x1E698F240];
            v129 = *MEMORY[0x1E696A578];
            v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"screenDistance"];
            v130 = v37;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
            v75 = v72;
            v32 = v107;
            v76 = v74;
            self = selfCopy2;
            v108 = 0;
            errorCopy = 0;
            *errorCopy4 = [v75 initWithDomain:v76 code:2 userInfo:v35];
LABEL_90:

            v7 = v104;
LABEL_91:

            v8 = v109;
            goto LABEL_92;
          }

          v108 = v34;
        }

        else
        {
          v108 = 0;
        }

        v35 = [dictionaryCopy objectForKeyedSubscript:@"age"];
        if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy4)
            {
              v37 = 0;
              errorCopy = 0;
              goto LABEL_90;
            }

            selfCopy5 = self;
            v102 = objc_alloc(MEMORY[0x1E696ABC0]);
            v84 = *MEMORY[0x1E698F240];
            v127 = *MEMORY[0x1E696A578];
            v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"age"];
            v128 = v39;
            v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
            v85 = [v102 initWithDomain:v84 code:2 userInfo:v38];
            v37 = 0;
            errorCopy = 0;
            *errorCopy4 = v85;
            goto LABEL_89;
          }

          selfCopy5 = self;
          v37 = v35;
        }

        else
        {
          selfCopy5 = self;
          v37 = 0;
        }

        v38 = [dictionaryCopy objectForKeyedSubscript:@"flowType"];
        if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v61 = v38;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (errorCopy4)
              {
                v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                v101 = *MEMORY[0x1E698F240];
                v125 = *MEMORY[0x1E696A578];
                v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"flowType"];
                v126 = v96;
                v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
                *errorCopy4 = [v103 initWithDomain:v101 code:2 userInfo:v97];
              }

              v39 = 0;
              errorCopy = 0;
              goto LABEL_89;
            }

            v61 = [MEMORY[0x1E696AD98] numberWithInt:BMAppleIDChildSetupFlowTypeFromString(v38)];
          }

          v39 = v61;
        }

        else
        {
          v39 = 0;
        }

        intValue = [v123 intValue];
        LODWORD(v100) = [v39 intValue];
        errorCopy = [(BMAppleIDChildSetup *)selfCopy5 initWithIsNewChildAccount:v109 startDate:v115 endDate:v124 completedSetup:v120 lastViewedScreen:intValue appUsage:v119 askToBuy:v107 commSafety:v111 screenDistance:v108 age:v37 flowType:v100];
        selfCopy5 = errorCopy;
LABEL_89:

        self = selfCopy5;
        v32 = v107;
        goto LABEL_90;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
        goto LABEL_35;
      }

      if (error)
      {
        errorCopy5 = error;
        v63 = objc_alloc(MEMORY[0x1E696ABC0]);
        v64 = *MEMORY[0x1E698F240];
        v133 = *MEMORY[0x1E696A578];
        v111 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"askToBuy"];
        v134 = v111;
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        v65 = [v63 initWithDomain:v64 code:2 userInfo:v33];
        v32 = 0;
        errorCopy = 0;
        *errorCopy5 = v65;
LABEL_92:
        v55 = v120;
        v52 = v114;

        v10 = v115;
LABEL_93:

        v9 = v110;
LABEL_94:

        goto LABEL_95;
      }

      v32 = 0;
      errorCopy = 0;
LABEL_106:
      v55 = v120;
      v52 = v114;
      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v7;
      v16 = v8;
      v120 = v14;
      goto LABEL_13;
    }

    if (error)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = v10;
      v50 = *MEMORY[0x1E698F240];
      v139 = *MEMORY[0x1E696A578];
      selfCopy6 = self;
      errorCopy6 = error;
      v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"completedSetup"];
      v140 = v123;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      v53 = v50;
      v10 = v49;
      v54 = [v48 initWithDomain:v53 code:2 userInfo:v52];
      v55 = 0;
      errorCopy = 0;
      *errorCopy6 = v54;
      self = selfCopy6;
LABEL_95:

      goto LABEL_96;
    }

    v55 = 0;
    errorCopy = 0;
LABEL_96:

LABEL_97:
    goto LABEL_98;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (error)
  {
    v40 = objc_alloc(MEMORY[0x1E696ABC0]);
    v41 = *MEMORY[0x1E698F240];
    v145 = *MEMORY[0x1E696A578];
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNewChildAccount"];
    v146[0] = v42;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:&v145 count:1];
    v43 = v41;
    v10 = v42;
    v44 = [v40 initWithDomain:v43 code:2 userInfo:v9];
    v8 = 0;
    errorCopy = 0;
    *error = v44;
LABEL_98:

    goto LABEL_99;
  }

  v8 = 0;
  errorCopy = 0;
LABEL_99:

  return errorCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppleIDChildSetup *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsNewChildAccount)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRaw_startDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasCompletedSetup)
  {
    PBDataWriterWriteBOOLField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasAppUsage)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAskToBuy)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCommSafety)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasScreenDistance)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAge)
  {
    PBDataWriterWriteUint32Field();
  }

  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v85.receiver = self;
  v85.super_class = BMAppleIDChildSetup;
  v5 = [(BMEventBase *)&v85 init];
  if (!v5)
  {
    goto LABEL_155;
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
        LOBYTE(v86) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v86 & 0x7F) << v7;
        if ((v86 & 0x80) == 0)
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
      if ((v14 >> 3) <= 5)
      {
        if (v15 <= 2)
        {
          if (v15 != 1)
          {
            if (v15 != 2)
            {
LABEL_119:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_154;
              }

              goto LABEL_152;
            }

            v5->_hasRaw_startDate = 1;
            v86 = 0;
            v35 = [fromCopy position] + 8;
            if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 8, v36 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v79 = v86;
            v80 = 24;
            goto LABEL_151;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasIsNewChildAccount = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v86 & 0x7F) << v37;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_122;
            }
          }

          v22 = (v39 != 0) & ~[fromCopy hasError];
LABEL_122:
          v76 = 48;
          goto LABEL_146;
        }

        if (v15 == 3)
        {
          v5->_hasRaw_endDate = 1;
          v86 = 0;
          v62 = [fromCopy position] + 8;
          if (v62 >= [fromCopy position] && (v63 = objc_msgSend(fromCopy, "position") + 8, v63 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v79 = v86;
          v80 = 40;
LABEL_151:
          *(&v5->super.super.isa + v80) = v79;
          goto LABEL_152;
        }

        if (v15 == 4)
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasCompletedSetup = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (v86 & 0x7F) << v43;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_124;
            }
          }

          v22 = (v45 != 0) & ~[fromCopy hasError];
LABEL_124:
          v76 = 50;
          goto LABEL_146;
        }

        if (v15 != 5)
        {
          goto LABEL_119;
        }

        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v86 & 0x7F) << v23;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v29 = v24++ > 8;
          if (v29)
          {
            goto LABEL_133;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v25 > 0xE)
        {
LABEL_133:
          LODWORD(v25) = 0;
        }

        v77 = 68;
      }

      else
      {
        if (v15 <= 8)
        {
          switch(v15)
          {
            case 6:
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v5->_hasAppUsage = 1;
              while (1)
              {
                LOBYTE(v86) = 0;
                v67 = [fromCopy position] + 1;
                if (v67 >= [fromCopy position] && (v68 = objc_msgSend(fromCopy, "position") + 1, v68 <= objc_msgSend(fromCopy, "length")))
                {
                  data7 = [fromCopy data];
                  [data7 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v66 |= (v86 & 0x7F) << v64;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v64 += 7;
                v13 = v65++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_143;
                }
              }

              v22 = (v66 != 0) & ~[fromCopy hasError];
LABEL_143:
              v76 = 52;
              break;
            case 7:
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v5->_hasAskToBuy = 1;
              while (1)
              {
                LOBYTE(v86) = 0;
                v52 = [fromCopy position] + 1;
                if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
                {
                  data8 = [fromCopy data];
                  [data8 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v51 |= (v86 & 0x7F) << v49;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v49 += 7;
                v13 = v50++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_126;
                }
              }

              v22 = (v51 != 0) & ~[fromCopy hasError];
LABEL_126:
              v76 = 54;
              break;
            case 8:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              v5->_hasCommSafety = 1;
              while (1)
              {
                LOBYTE(v86) = 0;
                v19 = [fromCopy position] + 1;
                if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
                {
                  data9 = [fromCopy data];
                  [data9 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

                  [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
                }

                else
                {
                  [fromCopy _setError];
                }

                v18 |= (v86 & 0x7F) << v16;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v13 = v17++ >= 9;
                if (v13)
                {
                  LOBYTE(v22) = 0;
                  goto LABEL_136;
                }
              }

              v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_136:
              v76 = 56;
              break;
            default:
              goto LABEL_119;
          }

          goto LABEL_146;
        }

        if (v15 == 9)
        {
          v70 = 0;
          v71 = 0;
          v72 = 0;
          v5->_hasScreenDistance = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v73 = [fromCopy position] + 1;
            if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v72 |= (v86 & 0x7F) << v70;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            v13 = v71++ >= 9;
            if (v13)
            {
              LOBYTE(v22) = 0;
              goto LABEL_145;
            }
          }

          v22 = (v72 != 0) & ~[fromCopy hasError];
LABEL_145:
          v76 = 58;
LABEL_146:
          *(&v5->super.super.isa + v76) = v22;
          goto LABEL_152;
        }

        if (v15 == 10)
        {
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasAge = 1;
          while (1)
          {
            LOBYTE(v86) = 0;
            v58 = [fromCopy position] + 1;
            if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v57 |= (v86 & 0x7F) << v55;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              v61 = 0;
              goto LABEL_130;
            }
          }

          if ([fromCopy hasError])
          {
            v61 = 0;
          }

          else
          {
            v61 = v57;
          }

LABEL_130:
          v5->_age = v61;
          goto LABEL_152;
        }

        if (v15 != 11)
        {
          goto LABEL_119;
        }

        v30 = 0;
        v31 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v86) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v86 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (v86 & 0x7F) << v30;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v29 = v31++ > 8;
          if (v29)
          {
            goto LABEL_139;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v25 > 2)
        {
LABEL_139:
          LODWORD(v25) = 0;
        }

        v77 = 76;
      }

      *(&v5->super.super.isa + v77) = v25;
LABEL_152:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_154:
    v83 = 0;
  }

  else
  {
LABEL_155:
    v83 = v5;
  }

  return v83;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup isNewChildAccount](self, "isNewChildAccount")}];
  startDate = [(BMAppleIDChildSetup *)self startDate];
  endDate = [(BMAppleIDChildSetup *)self endDate];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup completedSetup](self, "completedSetup")}];
  v4 = BMAppleIDChildSetupChildSetupScreenAsString([(BMAppleIDChildSetup *)self lastViewedScreen]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup appUsage](self, "appUsage")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup askToBuy](self, "askToBuy")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup commSafety](self, "commSafety")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppleIDChildSetup screenDistance](self, "screenDistance")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppleIDChildSetup age](self, "age")}];
  v10 = BMAppleIDChildSetupFlowTypeAsString([(BMAppleIDChildSetup *)self flowType]);
  v16 = [v15 initWithFormat:@"BMAppleIDChildSetup with isNewChildAccount: %@, startDate: %@, endDate: %@, completedSetup: %@, lastViewedScreen: %@, appUsage: %@, askToBuy: %@, commSafety: %@, screenDistance: %@, age: %@, flowType: %@", v14, startDate, endDate, v12, v4, v5, v6, v7, v8, v9, v10];

  return v16;
}

- (BMAppleIDChildSetup)initWithIsNewChildAccount:(id)account startDate:(id)date endDate:(id)endDate completedSetup:(id)setup lastViewedScreen:(int)screen appUsage:(id)usage askToBuy:(id)buy commSafety:(id)self0 screenDistance:(id)self1 age:(id)self2 flowType:(int)self3
{
  accountCopy = account;
  dateCopy = date;
  endDateCopy = endDate;
  setupCopy = setup;
  usageCopy = usage;
  buyCopy = buy;
  safetyCopy = safety;
  distanceCopy = distance;
  ageCopy = age;
  v33.receiver = self;
  v33.super_class = BMAppleIDChildSetup;
  v26 = [(BMEventBase *)&v33 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    if (accountCopy)
    {
      v26->_hasIsNewChildAccount = 1;
      v26->_isNewChildAccount = [accountCopy BOOLValue];
    }

    else
    {
      accountCopy = 0;
      v26->_hasIsNewChildAccount = 0;
      v26->_isNewChildAccount = 0;
    }

    if (dateCopy)
    {
      v26->_hasRaw_startDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_startDate = 0;
      v27 = -1.0;
    }

    v26->_raw_startDate = v27;
    if (endDateCopy)
    {
      v26->_hasRaw_endDate = 1;
      [endDateCopy timeIntervalSince1970];
    }

    else
    {
      v26->_hasRaw_endDate = 0;
      v28 = -1.0;
    }

    v26->_raw_endDate = v28;
    if (setupCopy)
    {
      v26->_hasCompletedSetup = 1;
      v26->_completedSetup = [setupCopy BOOLValue];
    }

    else
    {
      v26->_hasCompletedSetup = 0;
      v26->_completedSetup = 0;
    }

    v26->_lastViewedScreen = screen;
    if (usageCopy)
    {
      v26->_hasAppUsage = 1;
      v26->_appUsage = [usageCopy BOOLValue];
    }

    else
    {
      v26->_hasAppUsage = 0;
      v26->_appUsage = 0;
    }

    if (buyCopy)
    {
      v26->_hasAskToBuy = 1;
      v26->_askToBuy = [buyCopy BOOLValue];
    }

    else
    {
      v26->_hasAskToBuy = 0;
      v26->_askToBuy = 0;
    }

    if (safetyCopy)
    {
      v26->_hasCommSafety = 1;
      v26->_commSafety = [safetyCopy BOOLValue];
    }

    else
    {
      v26->_hasCommSafety = 0;
      v26->_commSafety = 0;
    }

    if (distanceCopy)
    {
      v26->_hasScreenDistance = 1;
      v26->_screenDistance = [distanceCopy BOOLValue];
    }

    else
    {
      v26->_hasScreenDistance = 0;
      v26->_screenDistance = 0;
    }

    if (ageCopy)
    {
      v26->_hasAge = 1;
      unsignedIntValue = [ageCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v26->_hasAge = 0;
    }

    v26->_age = unsignedIntValue;
    v26->_flowType = type;
  }

  return v26;
}

+ (id)protoFields
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNewChildAccount" number:1 type:12 subMessageClass:0];
  v15[0] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:2 type:0 subMessageClass:0];
  v15[1] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:3 type:0 subMessageClass:0];
  v15[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"completedSetup" number:4 type:12 subMessageClass:0];
  v15[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastViewedScreen" number:5 type:4 subMessageClass:0];
  v15[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appUsage" number:6 type:12 subMessageClass:0];
  v15[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"askToBuy" number:7 type:12 subMessageClass:0];
  v15[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"commSafety" number:8 type:12 subMessageClass:0];
  v15[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"screenDistance" number:9 type:12 subMessageClass:0];
  v15[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"age" number:10 type:4 subMessageClass:0];
  v15[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"flowType" number:11 type:4 subMessageClass:0];
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

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

    v8 = [[BMAppleIDChildSetup alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[16] = 0;
    }
  }

  return v4;
}

@end