@interface BMFeedbackLearningTupleInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMFeedbackLearningTupleInteraction)initWithEventId:(id)id sessionId:(id)sessionId absoluteTimestamp:(id)timestamp tupleInteraction:(id)interaction candidateInteractions:(id)interactions statementId:(id)statementId;
- (BMFeedbackLearningTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSUUID)eventId;
- (NSUUID)sessionId;
- (id)_candidateInteractionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMFeedbackLearningTupleInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    eventId = [(BMFeedbackLearningTupleInteraction *)self eventId];
    eventId2 = [v5 eventId];
    v8 = eventId2;
    if (eventId == eventId2)
    {
    }

    else
    {
      eventId3 = [(BMFeedbackLearningTupleInteraction *)self eventId];
      eventId4 = [v5 eventId];
      v11 = [eventId3 isEqual:eventId4];

      if (!v11)
      {
        goto LABEL_28;
      }
    }

    sessionId = [(BMFeedbackLearningTupleInteraction *)self sessionId];
    sessionId2 = [v5 sessionId];
    v15 = sessionId2;
    if (sessionId == sessionId2)
    {
    }

    else
    {
      sessionId3 = [(BMFeedbackLearningTupleInteraction *)self sessionId];
      sessionId4 = [v5 sessionId];
      v18 = [sessionId3 isEqual:sessionId4];

      if (!v18)
      {
        goto LABEL_28;
      }
    }

    absoluteTimestamp = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_28;
      }
    }

    tupleInteraction = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
    tupleInteraction2 = [v5 tupleInteraction];
    v27 = tupleInteraction2;
    if (tupleInteraction == tupleInteraction2)
    {
    }

    else
    {
      tupleInteraction3 = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
      tupleInteraction4 = [v5 tupleInteraction];
      v30 = [tupleInteraction3 isEqual:tupleInteraction4];

      if (!v30)
      {
        goto LABEL_28;
      }
    }

    candidateInteractions = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
    candidateInteractions2 = [v5 candidateInteractions];
    v33 = candidateInteractions2;
    if (candidateInteractions == candidateInteractions2)
    {
    }

    else
    {
      candidateInteractions3 = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
      candidateInteractions4 = [v5 candidateInteractions];
      v36 = [candidateInteractions3 isEqual:candidateInteractions4];

      if (!v36)
      {
        goto LABEL_28;
      }
    }

    if (!-[BMFeedbackLearningTupleInteraction hasStatementId](self, "hasStatementId") && ![v5 hasStatementId])
    {
      v12 = 1;
      goto LABEL_29;
    }

    if (-[BMFeedbackLearningTupleInteraction hasStatementId](self, "hasStatementId") && [v5 hasStatementId])
    {
      statementId = [(BMFeedbackLearningTupleInteraction *)self statementId];
      v12 = statementId == [v5 statementId];
LABEL_29:

      goto LABEL_30;
    }

LABEL_28:
    v12 = 0;
    goto LABEL_29;
  }

  v12 = 0;
LABEL_30:

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

- (NSUUID)sessionId
{
  raw_sessionId = self->_raw_sessionId;
  if (raw_sessionId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_sessionId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)eventId
{
  raw_eventId = self->_raw_eventId;
  if (raw_eventId)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_eventId toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v28[6] = *MEMORY[0x1E69E9840];
  eventId = [(BMFeedbackLearningTupleInteraction *)self eventId];
  uUIDString = [eventId UUIDString];

  sessionId = [(BMFeedbackLearningTupleInteraction *)self sessionId];
  uUIDString2 = [sessionId UUIDString];

  absoluteTimestamp = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v8 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  tupleInteraction = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
  jsonDictionary = [tupleInteraction jsonDictionary];

  _candidateInteractionsJSONArray = [(BMFeedbackLearningTupleInteraction *)self _candidateInteractionsJSONArray];
  if ([(BMFeedbackLearningTupleInteraction *)self hasStatementId])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMFeedbackLearningTupleInteraction statementId](self, "statementId")}];
  }

  else
  {
    v14 = 0;
  }

  v26 = uUIDString;
  v27[0] = @"eventId";
  null = uUIDString;
  if (!uUIDString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v25 = uUIDString2;
  v28[0] = null;
  v27[1] = @"sessionId";
  null2 = uUIDString2;
  if (!uUIDString2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28[1] = null2;
  v27[2] = @"absoluteTimestamp";
  null3 = v10;
  if (!v10)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28[2] = null3;
  v27[3] = @"tupleInteraction";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = null4;
  v27[4] = @"candidateInteractions";
  null5 = _candidateInteractionsJSONArray;
  if (!_candidateInteractionsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v27[5] = @"statementId";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{6, v23}];
  if (v14)
  {
    if (_candidateInteractionsJSONArray)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (_candidateInteractionsJSONArray)
    {
LABEL_21:
      if (jsonDictionary)
      {
        goto LABEL_22;
      }

LABEL_32:

      if (v10)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  if (!jsonDictionary)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v10)
  {
    goto LABEL_23;
  }

LABEL_33:

LABEL_23:
  if (!v25)
  {
  }

  if (!v26)
  {
  }

  return v21;
}

- (id)_candidateInteractionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  candidateInteractions = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
  v5 = [candidateInteractions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(candidateInteractions);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [candidateInteractions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMFeedbackLearningTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v146[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"eventId"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v42 = *MEMORY[0x1E698F240];
        v143 = *MEMORY[0x1E696A578];
        v43 = v7;
        v44 = objc_alloc(MEMORY[0x1E696AEC0]);
        v96 = objc_opt_class();
        v45 = v44;
        v7 = v43;
        v8 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v96, @"eventId"];
        v144 = v8;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
        v47 = v42;
        v9 = v46;
        selfCopy3 = 0;
        *errorCopy = [v40 initWithDomain:v47 code:2 userInfo:v46];
        goto LABEL_83;
      }

      selfCopy3 = 0;
      goto LABEL_85;
    }

    v8 = v7;
    v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    if (!v17)
    {
      if (!error)
      {
        selfCopy3 = 0;
        goto LABEL_84;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v77 = *MEMORY[0x1E698F240];
      v145 = *MEMORY[0x1E696A578];
      v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"eventId"];
      v146[0] = v78;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v146 forKeys:&v145 count:1];
      v80 = v77;
      v9 = v78;
      *errorCopy2 = [v75 initWithDomain:v80 code:2 userInfo:v79];

      goto LABEL_66;
    }

    v18 = v17;
    errorCopy4 = error;

    v8 = v18;
  }

  else
  {
    errorCopy4 = error;
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"sessionId"];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v9;
        v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v19];
        if (!v20)
        {
          v81 = v19;
          if (errorCopy4)
          {
            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = v9;
            v83 = *MEMORY[0x1E698F240];
            v141 = *MEMORY[0x1E696A578];
            v116 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"sessionId"];
            v142 = v116;
            v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
            v85 = v83;
            v9 = v82;
            *errorCopy4 = [v119 initWithDomain:v85 code:2 userInfo:v84];

            selfCopy3 = 0;
            v10 = v81;
          }

          else
          {
            selfCopy3 = 0;
            v10 = v19;
          }

          goto LABEL_82;
        }

        v21 = v20;

        v10 = v21;
        goto LABEL_7;
      }

      if (errorCopy4)
      {
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = v9;
        v50 = *MEMORY[0x1E698F240];
        v139 = *MEMORY[0x1E696A578];
        v51 = v8;
        v52 = objc_alloc(MEMORY[0x1E696AEC0]);
        v97 = objc_opt_class();
        v53 = v52;
        v8 = v51;
        v10 = [v53 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v97, @"sessionId"];
        v140 = v10;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
        v55 = v50;
        v9 = v49;
        v115 = v54;
        selfCopy3 = 0;
        *errorCopy4 = [v48 initWithDomain:v55 code:2 userInfo:?];

        goto LABEL_82;
      }

LABEL_66:
      selfCopy3 = 0;
      goto LABEL_83;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v109 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = MEMORY[0x1E695DF00];
      v33 = v12;
      v34 = [v32 alloc];
      [v33 doubleValue];
      v36 = v35;

      v114 = [v34 initWithTimeIntervalSinceReferenceDate:v36];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v56 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v114 = [v56 dateFromString:v12];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy4)
          {
            v105 = v9;
            v87 = objc_alloc(MEMORY[0x1E696ABC0]);
            v107 = v8;
            v88 = *MEMORY[0x1E698F240];
            v137 = *MEMORY[0x1E696A578];
            v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
            v138 = v37;
            v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            v90 = v87;
            v91 = v88;
            v9 = v105;
            v8 = v107;
            v112 = v89;
            v114 = 0;
            selfCopy3 = 0;
            *errorCopy4 = [v90 initWithDomain:v91 code:2 userInfo:?];

            goto LABEL_80;
          }

          v114 = 0;
          selfCopy3 = 0;
          goto LABEL_81;
        }

        v114 = v12;
      }
    }
  }

  else
  {
    v114 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"tupleInteraction"];
  v108 = v10;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v57 = v13;
      if (errorCopy4)
      {
        v118 = objc_alloc(MEMORY[0x1E696ABC0]);
        v104 = v9;
        v58 = *MEMORY[0x1E698F240];
        v135 = *MEMORY[0x1E696A578];
        v59 = v8;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v98 = objc_opt_class();
        v61 = v60;
        v8 = v59;
        v111 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v98, @"tupleInteraction"];
        v136 = v111;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
        v63 = v58;
        v9 = v104;
        *errorCopy4 = [v118 initWithDomain:v63 code:2 userInfo:v62];

        selfCopy3 = 0;
        v37 = v57;
      }

      else
      {
        selfCopy3 = 0;
        v37 = v13;
      }

      goto LABEL_80;
    }

    v37 = v13;
    v125 = 0;
    v110 = [[BMFeedbackLearningTupleInteractionTupleInteraction alloc] initWithJSONDictionary:v37 error:&v125];
    v38 = v125;
    if (v38)
    {
      if (errorCopy4)
      {
        v38 = v38;
        *errorCopy4 = v38;
      }

      selfCopy3 = 0;
      goto LABEL_79;
    }

    v102 = v13;
    v106 = v8;
  }

  else
  {
    v102 = v13;
    v106 = v8;
    v110 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"candidateInteractions"];
  null = [MEMORY[0x1E695DFB0] null];
  v16 = [v14 isEqual:null];

  v103 = v9;
  if (v16)
  {
    selfCopy2 = self;
    v101 = dictionaryCopy;

    v14 = 0;
  }

  else
  {
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v133 = *MEMORY[0x1E696A578];
          v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidateInteractions"];
          v134 = v117;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
          v74 = [v72 initWithDomain:v73 code:2 userInfo:v31];
          selfCopy3 = 0;
          *errorCopy4 = v74;
          goto LABEL_77;
        }

        selfCopy3 = 0;
        goto LABEL_78;
      }
    }

    selfCopy2 = self;
    v101 = dictionaryCopy;
  }

  v117 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v14 = v14;
  v22 = [v14 countByEnumeratingWithState:&v121 objects:v132 count:16];
  if (!v22)
  {
    goto LABEL_34;
  }

  v23 = v22;
  v24 = *v122;
  v99 = v7;
  while (2)
  {
    for (i = 0; i != v23; ++i)
    {
      if (*v122 != v24)
      {
        objc_enumerationMutation(v14);
      }

      v26 = *(*(&v121 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy4)
        {
          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v65 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidateInteractions"];
          v131 = v27;
          v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          *errorCopy4 = [v64 initWithDomain:v65 code:2 userInfo:v66];

LABEL_56:
          selfCopy3 = 0;
          v31 = v14;
          self = selfCopy2;
          dictionaryCopy = v101;
          v7 = v99;
LABEL_60:
          v10 = v108;
          goto LABEL_76;
        }

LABEL_63:
        selfCopy3 = 0;
        v31 = v14;
        self = selfCopy2;
        dictionaryCopy = v101;
        v7 = v99;
        v10 = v108;
        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v128 = *MEMORY[0x1E696A578];
          v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateInteractions"];
          v129 = v27;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          *errorCopy4 = [v67 initWithDomain:v68 code:2 userInfo:v69];

          goto LABEL_56;
        }

        goto LABEL_63;
      }

      v27 = v26;
      v28 = [BMFeedbackLearningTupleInteractionCandidateInteraction alloc];
      v120 = 0;
      v29 = [(BMFeedbackLearningTupleInteractionCandidateInteraction *)v28 initWithJSONDictionary:v27 error:&v120];
      v30 = v120;
      if (v30)
      {
        v70 = v30;
        v7 = v99;
        if (errorCopy4)
        {
          v71 = v30;
          *errorCopy4 = v70;
        }

        selfCopy3 = 0;
        v31 = v14;
        self = selfCopy2;
        dictionaryCopy = v101;
        goto LABEL_60;
      }

      [v117 addObject:v29];
    }

    v23 = [v14 countByEnumeratingWithState:&v121 objects:v132 count:16];
    v7 = v99;
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_34:

  dictionaryCopy = v101;
  v27 = [v101 objectForKeyedSubscript:@"statementId"];
  if (!v27)
  {
    v31 = 0;
    self = selfCopy2;
    v10 = v108;
    goto LABEL_75;
  }

  objc_opt_class();
  self = selfCopy2;
  v10 = v108;
  if (objc_opt_isKindOfClass())
  {
    v31 = 0;
    goto LABEL_75;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = v27;
LABEL_75:
    self = [(BMFeedbackLearningTupleInteraction *)self initWithEventId:v106 sessionId:v10 absoluteTimestamp:v114 tupleInteraction:v110 candidateInteractions:v117 statementId:v31];
    selfCopy3 = self;
  }

  else
  {
    v31 = errorCopy4;
    if (errorCopy4)
    {
      v92 = objc_alloc(MEMORY[0x1E696ABC0]);
      v93 = *MEMORY[0x1E698F240];
      v126 = *MEMORY[0x1E696A578];
      v94 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"statementId"];
      v127 = v94;
      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
      *errorCopy4 = [v92 initWithDomain:v93 code:2 userInfo:v95];

      v31 = 0;
    }

    selfCopy3 = 0;
  }

LABEL_76:

LABEL_77:
  v9 = v103;
LABEL_78:

  v37 = v102;
  v8 = v106;
LABEL_79:

LABEL_80:
  v12 = v109;
LABEL_81:

LABEL_82:
LABEL_83:

LABEL_84:
LABEL_85:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMFeedbackLearningTupleInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_raw_eventId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_raw_sessionId)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_tupleInteraction)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMFeedbackLearningTupleInteractionTupleInteraction *)self->_tupleInteraction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_candidateInteractions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        v15 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:{toCopy, v11}];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_hasStatementId)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMFeedbackLearningTupleInteraction;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_57;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v41) & 0x7F) << v8;
        if ((LOBYTE(v41) & 0x80) == 0)
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
        goto LABEL_57;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      switch(v16)
      {
        case 4:
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_60;
          }

          v28 = [[BMFeedbackLearningTupleInteractionTupleInteraction alloc] initByReadFrom:fromCopy];
          if (!v28)
          {
            goto LABEL_60;
          }

          tupleInteraction = v5->_tupleInteraction;
          v5->_tupleInteraction = v28;

          PBReaderRecallMark();
          break;
        case 5:
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_60;
          }

          v31 = [[BMFeedbackLearningTupleInteractionCandidateInteraction alloc] initByReadFrom:fromCopy];
          if (!v31)
          {
            goto LABEL_60;
          }

          v32 = v31;
          [v6 addObject:v31];
          PBReaderRecallMark();

          break;
        case 6:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasStatementId = 1;
          while (1)
          {
            LOBYTE(v41) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (LOBYTE(v41) & 0x7F) << v19;
            if ((LOBYTE(v41) & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v14 = v20++ >= 9;
            if (v14)
            {
              v25 = 0;
              goto LABEL_53;
            }
          }

          if ([fromCopy hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_53:
          v5->_statementId = v25;
          break;
        default:
LABEL_42:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_60;
          }

          break;
      }

LABEL_56:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_57;
      }
    }

    switch(v16)
    {
      case 1:
        v26 = PBReaderReadData();
        if ([v26 length] != 16)
        {
          goto LABEL_59;
        }

        v27 = 16;
LABEL_46:
        v30 = *(&v5->super.super.isa + v27);
        *(&v5->super.super.isa + v27) = v26;

        goto LABEL_56;
      case 2:
        v26 = PBReaderReadData();
        if ([v26 length] != 16)
        {
LABEL_59:

LABEL_60:
          goto LABEL_61;
        }

        v27 = 24;
        goto LABEL_46;
      case 3:
        v5->_hasRaw_absoluteTimestamp = 1;
        v41 = 0.0;
        v17 = [fromCopy position] + 8;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_absoluteTimestamp = v41;
        goto LABEL_56;
    }

    goto LABEL_42;
  }

LABEL_57:
  v35 = [v6 copy];
  candidateInteractions = v5->_candidateInteractions;
  v5->_candidateInteractions = v35;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_61:
    v38 = 0;
  }

  else
  {
LABEL_58:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  eventId = [(BMFeedbackLearningTupleInteraction *)self eventId];
  sessionId = [(BMFeedbackLearningTupleInteraction *)self sessionId];
  absoluteTimestamp = [(BMFeedbackLearningTupleInteraction *)self absoluteTimestamp];
  tupleInteraction = [(BMFeedbackLearningTupleInteraction *)self tupleInteraction];
  candidateInteractions = [(BMFeedbackLearningTupleInteraction *)self candidateInteractions];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMFeedbackLearningTupleInteraction statementId](self, "statementId")}];
  v10 = [v3 initWithFormat:@"BMFeedbackLearningTupleInteraction with eventId: %@, sessionId: %@, absoluteTimestamp: %@, tupleInteraction: %@, candidateInteractions: %@, statementId: %@", eventId, sessionId, absoluteTimestamp, tupleInteraction, candidateInteractions, v9];

  return v10;
}

- (BMFeedbackLearningTupleInteraction)initWithEventId:(id)id sessionId:(id)sessionId absoluteTimestamp:(id)timestamp tupleInteraction:(id)interaction candidateInteractions:(id)interactions statementId:(id)statementId
{
  v31 = *MEMORY[0x1E69E9840];
  idCopy = id;
  sessionIdCopy = sessionId;
  timestampCopy = timestamp;
  interactionCopy = interaction;
  interactionsCopy = interactions;
  statementIdCopy = statementId;
  v28.receiver = self;
  v28.super_class = BMFeedbackLearningTupleInteraction;
  v20 = [(BMEventBase *)&v28 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (idCopy)
    {
      v29 = 0;
      v30 = 0;
      [idCopy getUUIDBytes:&v29];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v29 length:16];
      raw_eventId = v20->_raw_eventId;
      v20->_raw_eventId = v21;
    }

    else
    {
      raw_eventId = v20->_raw_eventId;
      v20->_raw_eventId = 0;
    }

    if (sessionIdCopy)
    {
      v29 = 0;
      v30 = 0;
      [sessionIdCopy getUUIDBytes:&v29];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v29 length:16];
      raw_sessionId = v20->_raw_sessionId;
      v20->_raw_sessionId = v23;
    }

    else
    {
      raw_sessionId = v20->_raw_sessionId;
      v20->_raw_sessionId = 0;
    }

    if (timestampCopy)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v25 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v25;
    objc_storeStrong(&v20->_tupleInteraction, interaction);
    objc_storeStrong(&v20->_candidateInteractions, interactions);
    if (statementIdCopy)
    {
      v20->_hasStatementId = 1;
      unsignedIntValue = [statementIdCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v20->_hasStatementId = 0;
    }

    v20->_statementId = unsignedIntValue;
  }

  return v20;
}

+ (id)protoFields
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventId" number:1 type:14 subMessageClass:0];
  v10[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sessionId" number:2 type:14 subMessageClass:0];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tupleInteraction" number:4 type:14 subMessageClass:objc_opt_class()];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateInteractions" number:5 type:14 subMessageClass:objc_opt_class()];
  v10[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"statementId" number:6 type:4 subMessageClass:0];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

+ (id)columns
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventId" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sessionId" dataType:6 requestOnly:0 fieldNumber:2 protoDataType:14 convertedType:3];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tupleInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_223];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateInteractions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_225];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"statementId" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

id __45__BMFeedbackLearningTupleInteraction_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _candidateInteractionsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMFeedbackLearningTupleInteraction_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 tupleInteraction];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
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

    v8 = [[BMFeedbackLearningTupleInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end