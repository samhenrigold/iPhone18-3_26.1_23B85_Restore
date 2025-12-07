@interface BMUserFocusInferredMode
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMUserFocusInferredMode)initWithAbsoluteTimestamp:(id)timestamp modeIdentifier:(id)identifier origin:(int)origin originBundleID:(id)d isAutomationEnabled:(id)enabled isStart:(id)start uuid:(id)uuid originAnchorType:(id)self0 uiLocation:(id)self1 confidenceScore:(id)self2 serializedTriggers:(id)self3 modeType:(int)self4 shouldSuggestTriggers:(id)self5 userModeName:(id)self6;
- (BMUserFocusInferredMode)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_serializedTriggersJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMUserFocusInferredMode

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMUserFocusInferredMode *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_54;
      }
    }

    modeIdentifier = [(BMUserFocusInferredMode *)self modeIdentifier];
    modeIdentifier2 = [v5 modeIdentifier];
    v15 = modeIdentifier2;
    if (modeIdentifier == modeIdentifier2)
    {
    }

    else
    {
      modeIdentifier3 = [(BMUserFocusInferredMode *)self modeIdentifier];
      modeIdentifier4 = [v5 modeIdentifier];
      v18 = [modeIdentifier3 isEqual:modeIdentifier4];

      if (!v18)
      {
        goto LABEL_54;
      }
    }

    origin = [(BMUserFocusInferredMode *)self origin];
    if (origin == [v5 origin])
    {
      originBundleID = [(BMUserFocusInferredMode *)self originBundleID];
      originBundleID2 = [v5 originBundleID];
      v22 = originBundleID2;
      if (originBundleID == originBundleID2)
      {
      }

      else
      {
        originBundleID3 = [(BMUserFocusInferredMode *)self originBundleID];
        originBundleID4 = [v5 originBundleID];
        v25 = [originBundleID3 isEqual:originBundleID4];

        if (!v25)
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasIsAutomationEnabled](self, "hasIsAutomationEnabled") || [v5 hasIsAutomationEnabled])
      {
        if (![(BMUserFocusInferredMode *)self hasIsAutomationEnabled])
        {
          goto LABEL_54;
        }

        if (![v5 hasIsAutomationEnabled])
        {
          goto LABEL_54;
        }

        isAutomationEnabled = [(BMUserFocusInferredMode *)self isAutomationEnabled];
        if (isAutomationEnabled != [v5 isAutomationEnabled])
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasIsStart](self, "hasIsStart") || [v5 hasIsStart])
      {
        if (![(BMUserFocusInferredMode *)self hasIsStart])
        {
          goto LABEL_54;
        }

        if (![v5 hasIsStart])
        {
          goto LABEL_54;
        }

        isStart = [(BMUserFocusInferredMode *)self isStart];
        if (isStart != [v5 isStart])
        {
          goto LABEL_54;
        }
      }

      uuid = [(BMUserFocusInferredMode *)self uuid];
      uuid2 = [v5 uuid];
      v30 = uuid2;
      if (uuid == uuid2)
      {
      }

      else
      {
        uuid3 = [(BMUserFocusInferredMode *)self uuid];
        uuid4 = [v5 uuid];
        v33 = [uuid3 isEqual:uuid4];

        if (!v33)
        {
          goto LABEL_54;
        }
      }

      originAnchorType = [(BMUserFocusInferredMode *)self originAnchorType];
      originAnchorType2 = [v5 originAnchorType];
      v36 = originAnchorType2;
      if (originAnchorType == originAnchorType2)
      {
      }

      else
      {
        originAnchorType3 = [(BMUserFocusInferredMode *)self originAnchorType];
        originAnchorType4 = [v5 originAnchorType];
        v39 = [originAnchorType3 isEqual:originAnchorType4];

        if (!v39)
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasUiLocation](self, "hasUiLocation") || [v5 hasUiLocation])
      {
        if (![(BMUserFocusInferredMode *)self hasUiLocation])
        {
          goto LABEL_54;
        }

        if (![v5 hasUiLocation])
        {
          goto LABEL_54;
        }

        uiLocation = [(BMUserFocusInferredMode *)self uiLocation];
        if (uiLocation != [v5 uiLocation])
        {
          goto LABEL_54;
        }
      }

      if (-[BMUserFocusInferredMode hasConfidenceScore](self, "hasConfidenceScore") || [v5 hasConfidenceScore])
      {
        if (![(BMUserFocusInferredMode *)self hasConfidenceScore])
        {
          goto LABEL_54;
        }

        if (![v5 hasConfidenceScore])
        {
          goto LABEL_54;
        }

        [(BMUserFocusInferredMode *)self confidenceScore];
        v42 = v41;
        [v5 confidenceScore];
        if (v42 != v43)
        {
          goto LABEL_54;
        }
      }

      serializedTriggers = [(BMUserFocusInferredMode *)self serializedTriggers];
      serializedTriggers2 = [v5 serializedTriggers];
      v46 = serializedTriggers2;
      if (serializedTriggers == serializedTriggers2)
      {
      }

      else
      {
        serializedTriggers3 = [(BMUserFocusInferredMode *)self serializedTriggers];
        serializedTriggers4 = [v5 serializedTriggers];
        v49 = [serializedTriggers3 isEqual:serializedTriggers4];

        if (!v49)
        {
          goto LABEL_54;
        }
      }

      modeType = [(BMUserFocusInferredMode *)self modeType];
      if (modeType == [v5 modeType])
      {
        if (!-[BMUserFocusInferredMode hasShouldSuggestTriggers](self, "hasShouldSuggestTriggers") && ![v5 hasShouldSuggestTriggers] || -[BMUserFocusInferredMode hasShouldSuggestTriggers](self, "hasShouldSuggestTriggers") && objc_msgSend(v5, "hasShouldSuggestTriggers") && (v51 = -[BMUserFocusInferredMode shouldSuggestTriggers](self, "shouldSuggestTriggers"), v51 == objc_msgSend(v5, "shouldSuggestTriggers")))
        {
          userModeName = [(BMUserFocusInferredMode *)self userModeName];
          userModeName2 = [v5 userModeName];
          if (userModeName == userModeName2)
          {
            v12 = 1;
          }

          else
          {
            userModeName3 = [(BMUserFocusInferredMode *)self userModeName];
            userModeName4 = [v5 userModeName];
            v12 = [userModeName3 isEqual:userModeName4];
          }

          goto LABEL_55;
        }
      }
    }

LABEL_54:
    v12 = 0;
LABEL_55:

    goto LABEL_56;
  }

  v12 = 0;
LABEL_56:

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
  v54[14] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMUserFocusInferredMode *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMUserFocusInferredMode *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  modeIdentifier = [(BMUserFocusInferredMode *)self modeIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusInferredMode origin](self, "origin")}];
  originBundleID = [(BMUserFocusInferredMode *)self originBundleID];
  if ([(BMUserFocusInferredMode *)self hasIsAutomationEnabled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isAutomationEnabled](self, "isAutomationEnabled")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMUserFocusInferredMode *)self hasIsStart])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isStart](self, "isStart")}];
  }

  else
  {
    v11 = 0;
  }

  uuid = [(BMUserFocusInferredMode *)self uuid];
  originAnchorType = [(BMUserFocusInferredMode *)self originAnchorType];
  if ([(BMUserFocusInferredMode *)self hasUiLocation])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUserFocusInferredMode uiLocation](self, "uiLocation")}];
  }

  else
  {
    v50 = 0;
  }

  if (![(BMUserFocusInferredMode *)self hasConfidenceScore]|| ([(BMUserFocusInferredMode *)self confidenceScore], fabs(v12) == INFINITY))
  {
    v49 = 0;
  }

  else
  {
    [(BMUserFocusInferredMode *)self confidenceScore];
    v13 = MEMORY[0x1E696AD98];
    [(BMUserFocusInferredMode *)self confidenceScore];
    v49 = [v13 numberWithDouble:?];
  }

  _serializedTriggersJSONArray = [(BMUserFocusInferredMode *)self _serializedTriggersJSONArray];
  v47 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMUserFocusInferredMode modeType](self, "modeType")}];
  if ([(BMUserFocusInferredMode *)self hasShouldSuggestTriggers])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode shouldSuggestTriggers](self, "shouldSuggestTriggers")}];
  }

  else
  {
    v14 = 0;
  }

  userModeName = [(BMUserFocusInferredMode *)self userModeName];
  v53[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null;
  v54[0] = null;
  v53[1] = @"modeIdentifier";
  null2 = modeIdentifier;
  if (!modeIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null2;
  v54[1] = null2;
  v53[2] = @"origin";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null3;
  v54[2] = null3;
  v53[3] = @"originBundleID";
  null4 = originBundleID;
  if (!originBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null4;
  v54[3] = null4;
  v53[4] = @"isAutomationEnabled";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null5;
  v54[4] = null5;
  v53[5] = @"isStart";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = v8;
  v36 = null6;
  v54[5] = null6;
  v53[6] = @"uuid";
  null7 = uuid;
  if (!uuid)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v10;
  v54[6] = null7;
  v53[7] = @"originAnchorType";
  null8 = originAnchorType;
  if (!originAnchorType)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v11;
  v54[7] = null8;
  v53[8] = @"uiLocation";
  null9 = v50;
  if (!v50)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v54[8] = null9;
  v53[9] = @"confidenceScore";
  null10 = v49;
  if (!v49)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = null8;
  v35 = null7;
  v43 = v6;
  v54[9] = null10;
  v53[10] = @"serializedTriggers";
  null11 = _serializedTriggersJSONArray;
  if (!_serializedTriggersJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = modeIdentifier;
  v54[10] = null11;
  v53[11] = @"modeType";
  null12 = v47;
  if (!v47)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v54[11] = null12;
  v53[12] = @"shouldSuggestTriggers";
  null13 = v14;
  v30 = v14;
  if (!v14)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v54[12] = null13;
  v53[13] = @"userModeName";
  null14 = userModeName;
  if (!userModeName)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v54[13] = null14;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:{14, v33}];
  if (!userModeName)
  {
  }

  if (!v30)
  {
  }

  if (!v47)
  {
  }

  if (!_serializedTriggersJSONArray)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!originAnchorType)
  {
  }

  if (!uuid)
  {
  }

  if (v44)
  {
    if (v45)
    {
      goto LABEL_66;
    }
  }

  else
  {

    if (v45)
    {
LABEL_66:
      if (originBundleID)
      {
        goto LABEL_67;
      }

      goto LABEL_75;
    }
  }

  if (originBundleID)
  {
LABEL_67:
    if (v46)
    {
      goto LABEL_68;
    }

    goto LABEL_76;
  }

LABEL_75:

  if (v46)
  {
LABEL_68:
    if (v27)
    {
      goto LABEL_69;
    }

LABEL_77:

    if (v43)
    {
      goto LABEL_70;
    }

    goto LABEL_78;
  }

LABEL_76:

  if (!v27)
  {
    goto LABEL_77;
  }

LABEL_69:
  if (v43)
  {
    goto LABEL_70;
  }

LABEL_78:

LABEL_70:

  return v42;
}

- (id)_serializedTriggersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  serializedTriggers = [(BMUserFocusInferredMode *)self serializedTriggers];
  v5 = [serializedTriggers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(serializedTriggers);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) base64EncodedStringWithOptions:0];
        [v3 addObject:v9];
      }

      v6 = [serializedTriggers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMUserFocusInferredMode)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v221[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v6;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v7 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v111 = 0;
        errorCopy = 0;
        goto LABEL_143;
      }

      v125 = objc_alloc(MEMORY[0x1E696ABC0]);
      v126 = *MEMORY[0x1E698F240];
      v220 = *MEMORY[0x1E696A578];
      v127 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v221[0] = v127;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v221 forKeys:&v220 count:1];
      v128 = [v125 initWithDomain:v126 code:2 userInfo:v15];
      v111 = 0;
      errorCopy = 0;
      *error = v128;
      v35 = v127;
      goto LABEL_142;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"modeIdentifier"];
  v182 = v6;
  v183 = v7;
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
LABEL_12:
    v17 = [dictionaryCopy objectForKeyedSubscript:@"origin"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v179 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v179 = v17;
      goto LABEL_15;
    }

    v35 = v16;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v179 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusInferredModeOriginFromString(v17)];
LABEL_15:
      v18 = [dictionaryCopy objectForKeyedSubscript:@"originBundleID"];
      v180 = v16;
      v181 = v18;
      if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = 0;
        goto LABEL_18;
      }

      v35 = v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
LABEL_18:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"isAutomationEnabled"];
        v177 = v20;
        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v173 = v21;
          v174 = 0;
          goto LABEL_21;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v173 = v21;
          v174 = v21;
LABEL_21:
          v22 = [dictionaryCopy objectForKeyedSubscript:@"isStart"];
          v176 = v22;
          if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v175 = 0;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v175 = v23;
LABEL_24:
            v24 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
            v172 = v24;
            if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v165 = 0;
LABEL_27:
              v26 = [dictionaryCopy objectForKeyedSubscript:@"originAnchorType"];
              v170 = v26;
              if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!error)
                  {
                    v171 = 0;
                    errorCopy = 0;
                    errorCopy2 = v179;
                    v49 = v173;
                    v77 = v165;
                    goto LABEL_135;
                  }

                  v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v100 = v15;
                  v101 = *MEMORY[0x1E698F240];
                  v206 = *MEMORY[0x1E696A578];
                  v102 = v17;
                  v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v151 = objc_opt_class();
                  v104 = v103;
                  v17 = v102;
                  v105 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v151, @"originAnchorType"];
                  v207 = v105;
                  v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
                  v107 = v101;
                  v15 = v100;
                  v58 = v105;
                  v164 = v106;
                  v108 = [v99 initWithDomain:v107 code:2 userInfo:?];
                  v171 = 0;
                  errorCopy = 0;
                  *error = v108;
                  v20 = v177;
                  errorCopy2 = v179;
                  goto LABEL_148;
                }

                v171 = v27;
              }

              else
              {
                v171 = 0;
              }

              v28 = [dictionaryCopy objectForKeyedSubscript:@"uiLocation"];
              v164 = v28;
              if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v160 = 0;
LABEL_33:
                v30 = [dictionaryCopy objectForKeyedSubscript:@"confidenceScore"];
                v158 = v17;
                v159 = v15;
                v162 = v30;
                if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (error)
                    {
                      v122 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v123 = *MEMORY[0x1E698F240];
                      v202 = *MEMORY[0x1E696A578];
                      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"confidenceScore"];
                      v203 = v32;
                      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
                      v124 = [v122 initWithDomain:v123 code:2 userInfo:v50];
                      v163 = 0;
                      errorCopy = 0;
                      *error = v124;
                      v20 = v177;
                      errorCopy2 = v179;
                      v49 = v173;
                      v77 = v165;
                      v58 = v160;
                      goto LABEL_131;
                    }

                    v163 = 0;
                    errorCopy = 0;
                    v20 = v177;
                    errorCopy2 = v179;
                    v49 = v173;
                    v77 = v165;
                    v58 = v160;
                    goto LABEL_133;
                  }

                  v163 = v31;
                }

                else
                {
                  v163 = 0;
                }

                v32 = [dictionaryCopy objectForKeyedSubscript:@"serializedTriggers"];
                null = [MEMORY[0x1E695DFB0] null];
                v34 = [v32 isEqual:null];

                if (v34)
                {
                  selfCopy2 = self;

                  v32 = 0;
                }

                else
                {
                  if (v32)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!error)
                      {
                        errorCopy = 0;
                        v20 = v177;
                        errorCopy2 = v179;
                        v49 = v173;
                        v77 = v165;
                        v58 = v160;
                        goto LABEL_132;
                      }

                      v129 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v130 = *MEMORY[0x1E698F240];
                      v200 = *MEMORY[0x1E696A578];
                      v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"serializedTriggers"];
                      v201 = v50;
                      v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
                      v132 = [v129 initWithDomain:v130 code:2 userInfo:v131];
                      errorCopy = 0;
                      *error = v132;
                      v121 = v131;
                      goto LABEL_107;
                    }
                  }

                  selfCopy2 = self;
                }

                v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
                v185 = 0u;
                v186 = 0u;
                v187 = 0u;
                v188 = 0u;
                v32 = v32;
                v51 = [v32 countByEnumeratingWithState:&v185 objects:v199 count:16];
                if (!v51)
                {
                  goto LABEL_70;
                }

                v52 = v51;
                v53 = *v186;
LABEL_63:
                v54 = 0;
                while (1)
                {
                  if (*v186 != v53)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v55 = *(*(&v185 + 1) + 8 * v54);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (error)
                    {
                      v109 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v110 = *MEMORY[0x1E698F240];
                      v195 = *MEMORY[0x1E696A578];
                      v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSData", objc_opt_class(), @"serializedTriggers"];
                      v196 = v155;
                      v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
                      v97 = v109;
                      v98 = v110;
                      goto LABEL_93;
                    }

                    goto LABEL_97;
                  }

                  [v50 addObject:v55];
                  if (v52 == ++v54)
                  {
                    v52 = [v32 countByEnumeratingWithState:&v185 objects:v199 count:16];
                    if (v52)
                    {
                      goto LABEL_63;
                    }

LABEL_70:

                    v56 = [dictionaryCopy objectForKeyedSubscript:@"modeType"];
                    v155 = v56;
                    if (!v56)
                    {
                      v157 = 0;
                      self = selfCopy2;
LABEL_110:
                      v20 = v177;
                      v77 = v165;
                      v58 = v160;
                      goto LABEL_117;
                    }

                    v57 = v56;
                    objc_opt_class();
                    self = selfCopy2;
                    v58 = v160;
                    if (objc_opt_isKindOfClass())
                    {
                      v157 = 0;
                      goto LABEL_116;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v157 = v57;
LABEL_116:
                      v20 = v177;
                      v77 = v165;
LABEL_117:
                      v133 = [dictionaryCopy objectForKeyedSubscript:@"shouldSuggestTriggers"];
                      v169 = v133;
                      if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v156 = 0;
                        goto LABEL_120;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v156 = v134;
LABEL_120:
                        v135 = [dictionaryCopy objectForKeyedSubscript:@"userModeName"];
                        v166 = v135;
                        if (!v135)
                        {
LABEL_123:
                          errorCopy2 = v179;
                          goto LABEL_124;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v135 = 0;
                          goto LABEL_123;
                        }

                        objc_opt_class();
                        errorCopy2 = v179;
                        if (objc_opt_isKindOfClass())
                        {
                          v135 = v135;
                          v20 = v177;
LABEL_124:
                          intValue = [errorCopy2 intValue];
                          LODWORD(v153) = [v157 intValue];
                          self = [(BMUserFocusInferredMode *)self initWithAbsoluteTimestamp:v183 modeIdentifier:v180 origin:intValue originBundleID:v20 isAutomationEnabled:v174 isStart:v175 uuid:v77 originAnchorType:v171 uiLocation:v58 confidenceScore:v163 serializedTriggers:v50 modeType:v153 shouldSuggestTriggers:v156 userModeName:v135];
                          errorCopy = self;
                        }

                        else
                        {
                          if (error)
                          {
                            v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v154 = *MEMORY[0x1E698F240];
                            v189 = *MEMORY[0x1E696A578];
                            v142 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userModeName"];
                            v190 = v142;
                            v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
                            *error = [v161 initWithDomain:v154 code:2 userInfo:v143];
                          }

                          v135 = 0;
                          errorCopy = 0;
                          v20 = v177;
                        }

LABEL_125:
                      }

                      else
                      {
                        if (error)
                        {
                          v139 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v167 = *MEMORY[0x1E698F240];
                          v191 = *MEMORY[0x1E696A578];
                          v135 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shouldSuggestTriggers"];
                          v192 = v135;
                          v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
                          v141 = v167;
                          v166 = v140;
                          v156 = 0;
                          errorCopy = 0;
                          *error = [v139 initWithDomain:v141 code:2 userInfo:?];
                          v20 = v177;
                          errorCopy2 = v179;
                          goto LABEL_125;
                        }

                        v156 = 0;
                        errorCopy = 0;
                        v20 = v177;
                        errorCopy2 = v179;
                      }

                      v137 = v169;
LABEL_127:

LABEL_128:
                      v49 = v173;

                      goto LABEL_129;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v157 = [MEMORY[0x1E696AD98] numberWithInt:BMUserFocusInferredModeTypeFromString(v57)];
                      goto LABEL_110;
                    }

                    if (error)
                    {
                      v144 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v145 = *MEMORY[0x1E698F240];
                      v193 = *MEMORY[0x1E696A578];
                      v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"modeType"];
                      v194 = v156;
                      v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
                      v157 = 0;
                      errorCopy = 0;
                      *error = [v144 initWithDomain:v145 code:2 userInfo:v137];
                      v20 = v177;
                      errorCopy2 = v179;
                      v77 = v165;
                      v58 = v160;
                      goto LABEL_127;
                    }

                    v157 = 0;
                    errorCopy = 0;
                    v20 = v177;
                    errorCopy2 = v179;
                    v49 = v173;
                    v77 = v165;
                    v58 = v160;
LABEL_129:

                    v121 = v157;
LABEL_130:

LABEL_131:
                    v17 = v158;
LABEL_132:

                    v15 = v159;
LABEL_133:

LABEL_134:
LABEL_135:
                    v48 = v174;
LABEL_136:

                    goto LABEL_137;
                  }
                }

                if (error)
                {
                  v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v95 = *MEMORY[0x1E698F240];
                  v197 = *MEMORY[0x1E696A578];
                  v155 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"serializedTriggers"];
                  v198 = v155;
                  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
                  v97 = v94;
                  v98 = v95;
LABEL_93:
                  v156 = v96;
                  v77 = v165;
                  self = selfCopy2;
                  v20 = v177;
                  errorCopy2 = v179;
                  v58 = v160;
                  errorCopy = 0;
                  *error = [v97 initWithDomain:v98 code:2 userInfo:?];
                  v157 = v32;
                  goto LABEL_128;
                }

LABEL_97:
                errorCopy = 0;
                v121 = v32;
                self = selfCopy2;
LABEL_107:
                v20 = v177;
                errorCopy2 = v179;
                v49 = v173;
                v77 = v165;
                v58 = v160;
                goto LABEL_130;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v160 = v29;
                goto LABEL_33;
              }

              if (error)
              {
                v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                v113 = v15;
                v114 = *MEMORY[0x1E698F240];
                v204 = *MEMORY[0x1E696A578];
                v115 = v17;
                v116 = objc_alloc(MEMORY[0x1E696AEC0]);
                v152 = objc_opt_class();
                v117 = v116;
                v17 = v115;
                v163 = [v117 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v152, @"uiLocation"];
                v205 = v163;
                v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
                v119 = v114;
                v15 = v113;
                v162 = v118;
                v120 = [v112 initWithDomain:v119 code:2 userInfo:?];
                v58 = 0;
                errorCopy = 0;
                *error = v120;
                errorCopy2 = v179;
                v49 = v173;
                v77 = v165;
                goto LABEL_133;
              }

              v58 = 0;
              errorCopy = 0;
              errorCopy2 = v179;
LABEL_148:
              v49 = v173;
              v77 = v165;
              goto LABEL_134;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v165 = v25;
              goto LABEL_27;
            }

            if (error)
            {
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v80 = v15;
              v81 = *MEMORY[0x1E698F240];
              v208 = *MEMORY[0x1E696A578];
              v82 = v17;
              v83 = objc_alloc(MEMORY[0x1E696AEC0]);
              v149 = objc_opt_class();
              v84 = v83;
              v17 = v82;
              v171 = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v149, @"uuid"];
              v209 = v171;
              v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
              v86 = v81;
              v15 = v80;
              v48 = v174;
              v170 = v85;
              v87 = [v79 initWithDomain:v86 code:2 userInfo:?];
              v77 = 0;
              errorCopy = 0;
              *error = v87;
              errorCopy2 = v179;
              v49 = v173;
              goto LABEL_136;
            }

            errorCopy = 0;
            errorCopy2 = v179;
            v49 = v173;
            v48 = v174;
            v77 = 0;
LABEL_137:

            goto LABEL_138;
          }

          if (error)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            v69 = v15;
            v70 = *MEMORY[0x1E698F240];
            v210 = *MEMORY[0x1E696A578];
            v71 = v17;
            v72 = objc_alloc(MEMORY[0x1E696AEC0]);
            v148 = objc_opt_class();
            v73 = v72;
            v17 = v71;
            v74 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v148, @"isStart"];
            v211 = v74;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
            v76 = v70;
            v15 = v69;
            v77 = v74;
            v48 = v174;
            v172 = v75;
            v78 = [v68 initWithDomain:v76 code:2 userInfo:?];
            v175 = 0;
            errorCopy = 0;
            *error = v78;
            errorCopy2 = v179;
            v49 = v173;
            goto LABEL_137;
          }

          v175 = 0;
          errorCopy = 0;
          errorCopy2 = v179;
          v49 = v173;
          v48 = v174;
LABEL_138:

          goto LABEL_139;
        }

        if (error)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = v15;
          v61 = *MEMORY[0x1E698F240];
          v212 = *MEMORY[0x1E696A578];
          v62 = v17;
          v63 = objc_alloc(MEMORY[0x1E696AEC0]);
          v147 = objc_opt_class();
          v49 = v21;
          v64 = v63;
          v17 = v62;
          v175 = [v64 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v147, @"isAutomationEnabled"];
          v213 = v175;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
          v66 = v61;
          v15 = v60;
          v176 = v65;
          v67 = [v59 initWithDomain:v66 code:2 userInfo:?];
          v48 = 0;
          errorCopy = 0;
          *error = v67;
          errorCopy2 = v179;
          goto LABEL_138;
        }

        errorCopy = 0;
        errorCopy2 = v179;
        v49 = v21;
        v48 = 0;
LABEL_139:
        v111 = v183;

        v35 = v180;
        goto LABEL_140;
      }

      errorCopy = error;
      if (error)
      {
        v178 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v214 = *MEMORY[0x1E696A578];
        v42 = v15;
        v43 = objc_alloc(MEMORY[0x1E696AEC0]);
        v146 = objc_opt_class();
        v44 = v43;
        v15 = v42;
        v45 = [v44 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v146, @"originBundleID"];
        v215 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
        v47 = [v178 initWithDomain:v41 code:2 userInfo:v46];
        v20 = 0;
        errorCopy = 0;
        *error = v47;
        v48 = v45;
        v49 = v46;
        errorCopy2 = v179;
        goto LABEL_139;
      }

      v20 = 0;
      errorCopy2 = v179;
LABEL_99:
      v111 = v183;
LABEL_140:

      goto LABEL_141;
    }

    errorCopy2 = error;
    if (error)
    {
      v88 = objc_alloc(MEMORY[0x1E696ABC0]);
      v89 = *MEMORY[0x1E698F240];
      v216 = *MEMORY[0x1E696A578];
      v90 = v15;
      v91 = objc_alloc(MEMORY[0x1E696AEC0]);
      v150 = objc_opt_class();
      v92 = v91;
      v15 = v90;
      v20 = [v92 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v150, @"origin"];
      v217 = v20;
      v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
      v93 = [v88 initWithDomain:v89 code:2 userInfo:?];
      errorCopy2 = 0;
      errorCopy = 0;
      *error = v93;
      goto LABEL_99;
    }

    errorCopy = 0;
LABEL_113:
    v111 = v183;
LABEL_141:

    v6 = v182;
    goto LABEL_142;
  }

  if (error)
  {
    v36 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E698F240];
    v218 = *MEMORY[0x1E696A578];
    errorCopy2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"modeIdentifier"];
    v219 = errorCopy2;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
    v39 = [v36 initWithDomain:v37 code:2 userInfo:v17];
    v35 = 0;
    errorCopy = 0;
    *error = v39;
    goto LABEL_113;
  }

  errorCopy = 0;
  v35 = 0;
  v111 = v7;
LABEL_142:

LABEL_143:
  return errorCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMUserFocusInferredMode *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_originBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsAutomationEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsStart)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originAnchorType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasUiLocation)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasConfidenceScore)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_serializedTriggers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasShouldSuggestTriggers)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_userModeName)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v75.receiver = self;
  v75.super_class = BMUserFocusInferredMode;
  v5 = [(BMEventBase *)&v75 init];
  if (!v5)
  {
    goto LABEL_117;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v76) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v76 & 0x7F) << v8;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      switch((v15 >> 3))
      {
        case 1u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v76 = 0;
          v16 = [fromCopy position] + 8;
          if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v66 = v76;
          v67 = 24;
          goto LABEL_113;
        case 2u:
          v45 = PBReaderReadString();
          v46 = 56;
          goto LABEL_75;
        case 3u:
          v40 = 0;
          v41 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v76) = 0;
            v42 = [fromCopy position] + 1;
            if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v76 & 0x7F) << v40;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v24 = v41++ > 8;
            if (v24)
            {
              goto LABEL_99;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0x11)
          {
LABEL_99:
            LODWORD(v20) = 0;
          }

          v63 = 44;
          goto LABEL_101;
        case 4u:
          v45 = PBReaderReadString();
          v46 = 64;
          goto LABEL_75;
        case 5u:
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasIsAutomationEnabled = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v28 = [fromCopy position] + 1;
            if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v27 |= (v76 & 0x7F) << v25;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v14 = v26++ >= 9;
            if (v14)
            {
              LOBYTE(v31) = 0;
              goto LABEL_94;
            }
          }

          v31 = (v27 != 0) & ~[fromCopy hasError];
LABEL_94:
          v64 = 32;
          goto LABEL_104;
        case 6u:
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v5->_hasIsStart = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v50 = [fromCopy position] + 1;
            if (v50 >= [fromCopy position] && (v51 = objc_msgSend(fromCopy, "position") + 1, v51 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v49 |= (v76 & 0x7F) << v47;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v14 = v48++ >= 9;
            if (v14)
            {
              LOBYTE(v31) = 0;
              goto LABEL_103;
            }
          }

          v31 = (v49 != 0) & ~[fromCopy hasError];
LABEL_103:
          v64 = 34;
          goto LABEL_104;
        case 7u:
          v45 = PBReaderReadString();
          v46 = 72;
          goto LABEL_75;
        case 8u:
          v45 = PBReaderReadString();
          v46 = 80;
          goto LABEL_75;
        case 9u:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v5->_hasUiLocation = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v59 = [fromCopy position] + 1;
            if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v58 |= (v76 & 0x7F) << v56;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v14 = v57++ >= 9;
            if (v14)
            {
              v62 = 0;
              goto LABEL_108;
            }
          }

          if ([fromCopy hasError])
          {
            v62 = 0;
          }

          else
          {
            v62 = v58;
          }

LABEL_108:
          v5->_uiLocation = v62;
          goto LABEL_114;
        case 0xAu:
          v5->_hasConfidenceScore = 1;
          v76 = 0;
          v38 = [fromCopy position] + 8;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 8, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v66 = v76;
          v67 = 96;
LABEL_113:
          *(&v5->super.super.isa + v67) = v66;
          goto LABEL_114;
        case 0xBu:
          v54 = PBReaderReadData();
          if (!v54)
          {
            goto LABEL_119;
          }

          v55 = v54;
          [v6 addObject:v54];

          goto LABEL_114;
        case 0xCu:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v76) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v76 & 0x7F) << v18;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_91;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0x12)
          {
LABEL_91:
            LODWORD(v20) = 0;
          }

          v63 = 48;
LABEL_101:
          *(&v5->super.super.isa + v63) = v20;
          goto LABEL_114;
        case 0xDu:
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasShouldSuggestTriggers = 1;
          break;
        case 0xEu:
          v45 = PBReaderReadString();
          v46 = 112;
LABEL_75:
          v53 = *(&v5->super.super.isa + v46);
          *(&v5->super.super.isa + v46) = v45;

          goto LABEL_114;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_114;
          }

LABEL_119:

          goto LABEL_116;
      }

      while (1)
      {
        LOBYTE(v76) = 0;
        v35 = [fromCopy position] + 1;
        if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v34 |= (v76 & 0x7F) << v32;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v32 += 7;
        v14 = v33++ >= 9;
        if (v14)
        {
          LOBYTE(v31) = 0;
          goto LABEL_96;
        }
      }

      v31 = (v34 != 0) & ~[fromCopy hasError];
LABEL_96:
      v64 = 38;
LABEL_104:
      *(&v5->super.super.isa + v64) = v31;
LABEL_114:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v70 = [v6 copy];
  serializedTriggers = v5->_serializedTriggers;
  v5->_serializedTriggers = v70;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_116:
    v73 = 0;
  }

  else
  {
LABEL_117:
    v73 = v5;
  }

  return v73;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMUserFocusInferredMode *)self absoluteTimestamp];
  modeIdentifier = [(BMUserFocusInferredMode *)self modeIdentifier];
  v18 = BMUserFocusInferredModeOriginAsString([(BMUserFocusInferredMode *)self origin]);
  originBundleID = [(BMUserFocusInferredMode *)self originBundleID];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isAutomationEnabled](self, "isAutomationEnabled")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode isStart](self, "isStart")}];
  uuid = [(BMUserFocusInferredMode *)self uuid];
  originAnchorType = [(BMUserFocusInferredMode *)self originAnchorType];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMUserFocusInferredMode uiLocation](self, "uiLocation")}];
  v7 = MEMORY[0x1E696AD98];
  [(BMUserFocusInferredMode *)self confidenceScore];
  v8 = [v7 numberWithDouble:?];
  serializedTriggers = [(BMUserFocusInferredMode *)self serializedTriggers];
  v10 = BMUserFocusInferredModeTypeAsString([(BMUserFocusInferredMode *)self modeType]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusInferredMode shouldSuggestTriggers](self, "shouldSuggestTriggers")}];
  userModeName = [(BMUserFocusInferredMode *)self userModeName];
  v16 = [v15 initWithFormat:@"BMUserFocusInferredMode with absoluteTimestamp: %@, modeIdentifier: %@, origin: %@, originBundleID: %@, isAutomationEnabled: %@, isStart: %@, uuid: %@, originAnchorType: %@, uiLocation: %@, confidenceScore: %@, serializedTriggers: %@, modeType: %@, shouldSuggestTriggers: %@, userModeName: %@", absoluteTimestamp, modeIdentifier, v18, originBundleID, v14, v3, uuid, originAnchorType, v6, v8, serializedTriggers, v10, v11, userModeName];

  return v16;
}

- (BMUserFocusInferredMode)initWithAbsoluteTimestamp:(id)timestamp modeIdentifier:(id)identifier origin:(int)origin originBundleID:(id)d isAutomationEnabled:(id)enabled isStart:(id)start uuid:(id)uuid originAnchorType:(id)self0 uiLocation:(id)self1 confidenceScore:(id)self2 serializedTriggers:(id)self3 modeType:(int)self4 shouldSuggestTriggers:(id)self5 userModeName:(id)self6
{
  timestampCopy = timestamp;
  obj = identifier;
  identifierCopy = identifier;
  dCopy = d;
  dCopy2 = d;
  enabledCopy = enabled;
  startCopy = start;
  uuidCopy = uuid;
  typeCopy = type;
  locationCopy = location;
  scoreCopy = score;
  triggersCopy = triggers;
  suggestTriggersCopy = suggestTriggers;
  nameCopy = name;
  v41.receiver = self;
  v41.super_class = BMUserFocusInferredMode;
  v28 = [(BMEventBase *)&v41 init];
  if (v28)
  {
    v28->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v28->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v28->_hasRaw_absoluteTimestamp = 0;
      v29 = -1.0;
    }

    v28->_raw_absoluteTimestamp = v29;
    objc_storeStrong(&v28->_modeIdentifier, obj);
    v28->_origin = origin;
    objc_storeStrong(&v28->_originBundleID, dCopy);
    if (enabledCopy)
    {
      v28->_hasIsAutomationEnabled = 1;
      v28->_isAutomationEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v28->_hasIsAutomationEnabled = 0;
      v28->_isAutomationEnabled = 0;
    }

    if (startCopy)
    {
      v28->_hasIsStart = 1;
      v28->_isStart = [startCopy BOOLValue];
    }

    else
    {
      v28->_hasIsStart = 0;
      v28->_isStart = 0;
    }

    objc_storeStrong(&v28->_uuid, uuid);
    objc_storeStrong(&v28->_originAnchorType, type);
    if (locationCopy)
    {
      v28->_hasUiLocation = 1;
      unsignedLongLongValue = [locationCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v28->_hasUiLocation = 0;
    }

    v28->_uiLocation = unsignedLongLongValue;
    if (scoreCopy)
    {
      v28->_hasConfidenceScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v28->_hasConfidenceScore = 0;
      v31 = -1.0;
    }

    v28->_confidenceScore = v31;
    objc_storeStrong(&v28->_serializedTriggers, triggers);
    v28->_modeType = modeType;
    if (suggestTriggersCopy)
    {
      v28->_hasShouldSuggestTriggers = 1;
      v28->_shouldSuggestTriggers = [suggestTriggersCopy BOOLValue];
    }

    else
    {
      v28->_hasShouldSuggestTriggers = 0;
      v28->_shouldSuggestTriggers = 0;
    }

    objc_storeStrong(&v28->_userModeName, name);
  }

  return v28;
}

+ (id)protoFields
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v18[0] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modeIdentifier" number:2 type:13 subMessageClass:0];
  v18[1] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"origin" number:3 type:4 subMessageClass:0];
  v18[2] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originBundleID" number:4 type:13 subMessageClass:0];
  v18[3] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAutomationEnabled" number:5 type:12 subMessageClass:0];
  v18[4] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isStart" number:6 type:12 subMessageClass:0];
  v18[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uuid" number:7 type:13 subMessageClass:0];
  v18[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originAnchorType" number:8 type:13 subMessageClass:0];
  v18[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiLocation" number:9 type:5 subMessageClass:0];
  v18[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"confidenceScore" number:10 type:0 subMessageClass:0];
  v18[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"serializedTriggers" number:11 type:14 subMessageClass:0];
  v18[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"modeType" number:12 type:4 subMessageClass:0];
  v18[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shouldSuggestTriggers" number:13 type:12 subMessageClass:0];
  v18[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userModeName" number:14 type:13 subMessageClass:0];
  v18[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

+ (id)columns
{
  v18[14] = *MEMORY[0x1E69E9840];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modeIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"origin" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAutomationEnabled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isStart" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uuid" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originAnchorType" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiLocation" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:5 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"confidenceScore" dataType:1 requestOnly:0 fieldNumber:10 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"serializedTriggers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_196];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"modeType" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shouldSuggestTriggers" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userModeName" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v18[0] = v17;
  v18[1] = v16;
  v18[2] = v15;
  v18[3] = v14;
  v18[4] = v2;
  v18[5] = v3;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v6;
  v18[9] = v13;
  v18[10] = v7;
  v18[11] = v12;
  v18[12] = v8;
  v18[13] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:14];

  return v11;
}

id __34__BMUserFocusInferredMode_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _serializedTriggersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUserFocusInferredMode_v1;
  }

  else
  {
    if (version != 2)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMUserFocusInferredMode;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 40) = version;
  }

LABEL_9:

  return v9;
}

@end