@interface BMIntelligenceEngineInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceEngineInteraction)initWithAbsoluteTimestamp:(id)timestamp transcriptStatementId:(id)id appIntentInvocationUUID:(id)d sirikitIntentItemId:(id)itemId trigger:(int)trigger tupleInteraction:(id)interaction candidateInteractions:(id)interactions;
- (BMIntelligenceEngineInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (NSUUID)appIntentInvocationUUID;
- (id)_candidateInteractionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceEngineInteraction

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"transcriptStatementId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_630];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appIntentInvocationUUID" dataType:6 requestOnly:0 fieldNumber:3 protoDataType:14 convertedType:3];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sirikitIntentItemId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"trigger" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"tupleInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_632];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateInteractions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_634];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_22;
      }
    }

    transcriptStatementId = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
    transcriptStatementId2 = [v5 transcriptStatementId];
    v15 = transcriptStatementId2;
    if (transcriptStatementId == transcriptStatementId2)
    {
    }

    else
    {
      transcriptStatementId3 = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
      transcriptStatementId4 = [v5 transcriptStatementId];
      v18 = [transcriptStatementId3 isEqual:transcriptStatementId4];

      if (!v18)
      {
        goto LABEL_22;
      }
    }

    appIntentInvocationUUID = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
    appIntentInvocationUUID2 = [v5 appIntentInvocationUUID];
    v21 = appIntentInvocationUUID2;
    if (appIntentInvocationUUID == appIntentInvocationUUID2)
    {
    }

    else
    {
      appIntentInvocationUUID3 = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
      appIntentInvocationUUID4 = [v5 appIntentInvocationUUID];
      v24 = [appIntentInvocationUUID3 isEqual:appIntentInvocationUUID4];

      if (!v24)
      {
        goto LABEL_22;
      }
    }

    sirikitIntentItemId = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
    sirikitIntentItemId2 = [v5 sirikitIntentItemId];
    v27 = sirikitIntentItemId2;
    if (sirikitIntentItemId == sirikitIntentItemId2)
    {
    }

    else
    {
      sirikitIntentItemId3 = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
      sirikitIntentItemId4 = [v5 sirikitIntentItemId];
      v30 = [sirikitIntentItemId3 isEqual:sirikitIntentItemId4];

      if (!v30)
      {
        goto LABEL_22;
      }
    }

    trigger = [(BMIntelligenceEngineInteraction *)self trigger];
    if (trigger == [v5 trigger])
    {
      tupleInteraction = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
      tupleInteraction2 = [v5 tupleInteraction];
      v34 = tupleInteraction2;
      if (tupleInteraction == tupleInteraction2)
      {
      }

      else
      {
        tupleInteraction3 = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
        tupleInteraction4 = [v5 tupleInteraction];
        v37 = [tupleInteraction3 isEqual:tupleInteraction4];

        if (!v37)
        {
          goto LABEL_22;
        }
      }

      candidateInteractions = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
      candidateInteractions2 = [v5 candidateInteractions];
      if (candidateInteractions == candidateInteractions2)
      {
        v12 = 1;
      }

      else
      {
        candidateInteractions3 = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
        candidateInteractions4 = [v5 candidateInteractions];
        v12 = [candidateInteractions3 isEqual:candidateInteractions4];
      }

      goto LABEL_23;
    }

LABEL_22:
    v12 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (NSUUID)appIntentInvocationUUID
{
  raw_appIntentInvocationUUID = self->_raw_appIntentInvocationUUID;
  if (raw_appIntentInvocationUUID)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_appIntentInvocationUUID toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v31[7] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  transcriptStatementId = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
  jsonDictionary = [transcriptStatementId jsonDictionary];

  appIntentInvocationUUID = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
  uUIDString = [appIntentInvocationUUID UUIDString];

  sirikitIntentItemId = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligenceEngineInteraction trigger](self, "trigger")}];
  tupleInteraction = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
  jsonDictionary2 = [tupleInteraction jsonDictionary];

  _candidateInteractionsJSONArray = [(BMIntelligenceEngineInteraction *)self _candidateInteractionsJSONArray];
  v30[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v31[0] = null;
  v30[1] = @"transcriptStatementId";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v31[1] = null2;
  v30[2] = @"appIntentInvocationUUID";
  null3 = uUIDString;
  if (!uUIDString)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v31[2] = null3;
  v30[3] = @"sirikitIntentItemId";
  null4 = sirikitIntentItemId;
  if (!sirikitIntentItemId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null3;
  v28 = v6;
  v31[3] = null4;
  v30[4] = @"trigger";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = jsonDictionary;
  v31[4] = null5;
  v30[5] = @"tupleInteraction";
  null6 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = null6;
  v30[6] = @"candidateInteractions";
  null7 = _candidateInteractionsJSONArray;
  if (!_candidateInteractionsJSONArray)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = null7;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:7];
  if (_candidateInteractionsJSONArray)
  {
    if (jsonDictionary2)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!jsonDictionary2)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (v11)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!sirikitIntentItemId)
  {
  }

  if (uUIDString)
  {
    if (v20)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v28)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v28)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:

  return v23;
}

- (id)_candidateInteractionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  candidateInteractions = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
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

- (BMIntelligenceEngineInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v153[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v7 = 0x1E695D000uLL;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v6;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v7 = 0x1E695D000;
      v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v15 dateFromString:v6];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          goto LABEL_94;
        }

        v91 = objc_alloc(MEMORY[0x1E696ABC0]);
        v92 = dictionaryCopy;
        v93 = *MEMORY[0x1E698F240];
        v152 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
        v153[0] = v21;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:&v152 count:1];
        v95 = v93;
        dictionaryCopy = v92;
        v124 = v94;
        v96 = [v91 initWithDomain:v95 code:2 userInfo:?];
        v8 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v96;
        goto LABEL_92;
      }

      v14 = v6;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"transcriptStatementId"];
  if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v124 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v16;
    v132 = 0;
    v124 = [[BMIntelligenceEngineInteractionTranscriptStatementID alloc] initWithJSONDictionary:v21 error:&v132];
    v22 = v132;
    if (v22)
    {
      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      error = 0;
      goto LABEL_92;
    }

LABEL_12:
    v17 = [dictionaryCopy objectForKeyedSubscript:@"appIntentInvocationUUID"];
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
LABEL_91:

          v21 = v16;
          goto LABEL_92;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = v8;
        v32 = v16;
        v33 = *MEMORY[0x1E698F240];
        v146 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appIntentInvocationUUID"];
        v147 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v37 = v33;
        v16 = v32;
        v8 = v31;
        v38 = v36;
        error = 0;
        *errorCopy2 = [v30 initWithDomain:v37 code:2 userInfo:v36];
        goto LABEL_89;
      }

      v119 = v8;
      v23 = v17;
      v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v23];
      if (!v24)
      {
        if (!error)
        {
          v35 = v23;
          v8 = v119;
          goto LABEL_90;
        }

        v86 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v87 = v16;
        v88 = *MEMORY[0x1E698F240];
        v148 = *MEMORY[0x1E696A578];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"appIntentInvocationUUID"];
        v149 = v38;
        v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v90 = v88;
        v16 = v87;
        *errorCopy3 = [v86 initWithDomain:v90 code:2 userInfo:v89];

        error = 0;
        v35 = v23;
        v8 = v119;
LABEL_89:

LABEL_90:
        goto LABEL_91;
      }

      v25 = v24;

      v118 = v25;
      v8 = v119;
      v7 = 0x1E695D000;
    }

    else
    {
      v118 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"sirikitIntentItemId"];
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v117 = 0;
          v35 = v118;
          goto LABEL_88;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v121 = v8;
        v40 = v16;
        v41 = *MEMORY[0x1E698F240];
        v144 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sirikitIntentItemId"];
        v145 = v115;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
        v44 = v41;
        v16 = v40;
        v8 = v121;
        v117 = 0;
        error = 0;
        *errorCopy4 = [v39 initWithDomain:v44 code:2 userInfo:v43];
        v19 = v43;
LABEL_87:
        v35 = v118;

LABEL_88:
        v38 = v117;
        goto LABEL_89;
      }

      v117 = v18;
    }

    else
    {
      v117 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"trigger"];
    v113 = v6;
    v114 = v17;
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy8 = error;
        v115 = v19;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v115 = 0;
            goto LABEL_87;
          }

          v116 = objc_alloc(MEMORY[0x1E696ABC0]);
          v111 = v16;
          v98 = *MEMORY[0x1E698F240];
          v142 = *MEMORY[0x1E696A578];
          errorCopy6 = error;
          v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"trigger"];
          v143 = v49;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
          v100 = v98;
          v16 = v111;
          v101 = [v116 initWithDomain:v100 code:2 userInfo:v50];
          v115 = 0;
          error = 0;
          *errorCopy6 = v101;
          v17 = v114;
          goto LABEL_85;
        }

        errorCopy8 = error;
        v115 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligenceEngineInteractionDonationTriggerFromString(v19)];
      }

      v7 = 0x1E695D000uLL;
    }

    else
    {
      errorCopy8 = error;
      v115 = 0;
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"tupleInteraction"];
    v112 = v19;
    if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v108 = v45;
      v109 = v16;
      v107 = 0;
LABEL_47:
      v46 = [dictionaryCopy objectForKeyedSubscript:@"candidateInteractions"];
      null = [*(v7 + 4016) null];
      v48 = [v46 isEqual:null];

      v122 = v8;
      if (v48)
      {
        v104 = errorCopy8;
        v106 = v18;

        v46 = 0;
LABEL_60:
        v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "count")}];
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v130 = 0u;
        v46 = v46;
        v61 = [v46 countByEnumeratingWithState:&v127 objects:v137 count:16];
        if (!v61)
        {
          goto LABEL_70;
        }

        v62 = v61;
        v63 = *v128;
        v103 = dictionaryCopy;
LABEL_62:
        v64 = 0;
        while (1)
        {
          if (*v128 != v63)
          {
            objc_enumerationMutation(v46);
          }

          v65 = *(*(&v127 + 1) + 8 * v64);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            break;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            dictionaryCopy = v103;
            v70 = v104;
            v6 = v113;
            v18 = v106;
            if (!v104)
            {
              goto LABEL_81;
            }

            v102 = objc_alloc(MEMORY[0x1E696ABC0]);
            v71 = v113;
            v72 = *MEMORY[0x1E698F240];
            v133 = *MEMORY[0x1E696A578];
            v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateInteractions"];
            v134 = v66;
            v73 = MEMORY[0x1E695DF20];
            v74 = &v134;
            v75 = &v133;
            goto LABEL_75;
          }

          v66 = v65;
          v67 = [BMIntelligenceEngineInteractionCandidateInteraction alloc];
          v126 = 0;
          v68 = [(BMIntelligenceEngineInteractionCandidateInteraction *)v67 initWithJSONDictionary:v66 error:&v126];
          v69 = v126;
          if (v69)
          {
            v76 = v69;
            if (v104)
            {
              v79 = v69;
              *v104 = v76;
            }

            dictionaryCopy = v103;
            v6 = v113;
            v78 = v122;
            v18 = v106;
LABEL_80:

            v8 = v78;
LABEL_81:

            error = 0;
            goto LABEL_82;
          }

          [v60 addObject:v68];

          if (v62 == ++v64)
          {
            v62 = [v46 countByEnumeratingWithState:&v127 objects:v137 count:16];
            dictionaryCopy = v103;
            if (v62)
            {
              goto LABEL_62;
            }

LABEL_70:

            v50 = v107;
            error = -[BMIntelligenceEngineInteraction initWithAbsoluteTimestamp:transcriptStatementId:appIntentInvocationUUID:sirikitIntentItemId:trigger:tupleInteraction:candidateInteractions:](self, "initWithAbsoluteTimestamp:transcriptStatementId:appIntentInvocationUUID:sirikitIntentItemId:trigger:tupleInteraction:candidateInteractions:", v8, v124, v118, v117, [v115 intValue], v107, v60);
            self = error;
            v6 = v113;
            v18 = v106;
LABEL_83:

            v19 = v112;
            v49 = v108;
            goto LABEL_84;
          }
        }

        dictionaryCopy = v103;
        v70 = v104;
        v6 = v113;
        v18 = v106;
        if (!v104)
        {
          goto LABEL_81;
        }

        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = v113;
        v72 = *MEMORY[0x1E698F240];
        v135 = *MEMORY[0x1E696A578];
        v66 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidateInteractions"];
        v136 = v66;
        v73 = MEMORY[0x1E695DF20];
        v74 = &v136;
        v75 = &v135;
LABEL_75:
        v76 = [v73 dictionaryWithObjects:v74 forKeys:v75 count:1];
        v77 = v72;
        v6 = v71;
        v17 = v114;
        v78 = v122;
        *v70 = [v102 initWithDomain:v77 code:2 userInfo:v76];
        goto LABEL_80;
      }

      if (!v46)
      {
        v104 = errorCopy8;
        v106 = v18;
        goto LABEL_60;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v104 = errorCopy8;
        v106 = v18;
        goto LABEL_60;
      }

      if (errorCopy8)
      {
        v81 = objc_alloc(MEMORY[0x1E696ABC0]);
        v82 = *MEMORY[0x1E698F240];
        v138 = *MEMORY[0x1E696A578];
        v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidateInteractions"];
        v139 = v60;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
        v83 = v18;
        v85 = v84 = v8;
        *errorCopy8 = [v81 initWithDomain:v82 code:2 userInfo:v85];

        v8 = v84;
        v18 = v83;
        error = 0;
        v6 = v113;
LABEL_82:
        v50 = v107;
        goto LABEL_83;
      }

      error = 0;
      v50 = v107;
      v49 = v108;
      v6 = v113;
LABEL_84:

      v16 = v109;
      goto LABEL_85;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v45;
      v131 = 0;
      v50 = [[BMIntelligenceEngineInteractionTupleInteraction alloc] initWithJSONDictionary:v49 error:&v131];
      v51 = v131;
      if (!v51)
      {
        v107 = v50;
        v108 = v45;
        v109 = v16;

        v7 = 0x1E695D000;
        goto LABEL_47;
      }

      if (errorCopy8)
      {
        v51 = v51;
        *errorCopy8 = v51;
      }

      error = 0;
      v6 = v113;
    }

    else
    {
      v52 = v45;
      if (!errorCopy8)
      {
        error = 0;
        v6 = v113;
        v49 = v52;
        goto LABEL_86;
      }

      v110 = objc_alloc(MEMORY[0x1E696ABC0]);
      v123 = v8;
      v53 = v16;
      v54 = *MEMORY[0x1E698F240];
      v140 = *MEMORY[0x1E696A578];
      v55 = v18;
      v56 = errorCopy8;
      v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"tupleInteraction"];
      v141 = v57;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
      v59 = v54;
      v16 = v53;
      v8 = v123;
      *v56 = [v110 initWithDomain:v59 code:2 userInfo:v58];
      v18 = v55;
      v17 = v114;

      error = 0;
      v49 = v52;
      v50 = v57;
      v6 = v113;
    }

LABEL_85:

LABEL_86:
    goto LABEL_87;
  }

  if (error)
  {
    v26 = objc_alloc(MEMORY[0x1E696ABC0]);
    v120 = v8;
    v27 = v16;
    v28 = *MEMORY[0x1E698F240];
    v150 = *MEMORY[0x1E696A578];
    v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"transcriptStatementId"];
    v151 = v124;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
    *error = [v26 initWithDomain:v28 code:2 userInfo:v29];

    error = 0;
    v21 = v27;
    v8 = v120;
LABEL_92:

    v16 = v21;
  }

LABEL_94:
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_transcriptStatementId)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionTranscriptStatementID *)self->_transcriptStatementId writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_raw_appIntentInvocationUUID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sirikitIntentItemId)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_tupleInteraction)
  {
    v15 = 0;
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionTupleInteraction *)self->_tupleInteraction writeTo:toCopy];
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
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v41.receiver = self;
  v41.super_class = BMIntelligenceEngineInteraction;
  v5 = [(BMEventBase *)&v41 init];
  if (!v5)
  {
    goto LABEL_63;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_62;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v42) & 0x7F) << v8;
        if ((LOBYTE(v42) & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_62;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          v30 = PBReaderReadString();
          sirikitIntentItemId = v5->_sirikitIntentItemId;
          v5->_sirikitIntentItemId = v30;
LABEL_47:

          goto LABEL_61;
        }

        if (v16 == 5)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v42) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (LOBYTE(v42) & 0x7F) << v17;
            if ((LOBYTE(v42) & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            if (v18++ > 8)
            {
              goto LABEL_57;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 4)
          {
LABEL_57:
            LODWORD(v19) = 0;
          }

          v5->_trigger = v19;
          goto LABEL_61;
        }

LABEL_44:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

      if (v16 == 6)
      {
        v42 = 0.0;
        v43 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_65;
        }

        v31 = [[BMIntelligenceEngineInteractionTupleInteraction alloc] initByReadFrom:fromCopy];
        if (!v31)
        {
          goto LABEL_65;
        }

        v32 = 64;
LABEL_54:
        v33 = *(&v5->super.super.isa + v32);
        *(&v5->super.super.isa + v32) = v31;

        PBReaderRecallMark();
        goto LABEL_61;
      }

      if (v16 != 7)
      {
        goto LABEL_44;
      }

      v42 = 0.0;
      v43 = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_65;
      }

      v26 = [[BMIntelligenceEngineInteractionCandidateInteraction alloc] initByReadFrom:fromCopy];
      if (!v26)
      {
        goto LABEL_65;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_61:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_62;
      }
    }

    switch(v16)
    {
      case 1:
        v5->_hasRaw_absoluteTimestamp = 1;
        v42 = 0.0;
        v28 = [fromCopy position] + 8;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 8, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v42 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_absoluteTimestamp = v42;
        goto LABEL_61;
      case 2:
        v42 = 0.0;
        v43 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_65;
        }

        v31 = [[BMIntelligenceEngineInteractionTranscriptStatementID alloc] initByReadFrom:fromCopy];
        if (!v31)
        {
          goto LABEL_65;
        }

        v32 = 48;
        goto LABEL_54;
      case 3:
        v24 = PBReaderReadData();
        if ([(NSData *)v24 length]!= 16)
        {

LABEL_65:
          goto LABEL_66;
        }

        sirikitIntentItemId = v5->_raw_appIntentInvocationUUID;
        v5->_raw_appIntentInvocationUUID = v24;
        goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_62:
  v36 = [v6 copy];
  candidateInteractions = v5->_candidateInteractions;
  v5->_candidateInteractions = v36;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_66:
    v39 = 0;
  }

  else
  {
LABEL_63:
    v39 = v5;
  }

  return v39;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMIntelligenceEngineInteraction *)self absoluteTimestamp];
  transcriptStatementId = [(BMIntelligenceEngineInteraction *)self transcriptStatementId];
  appIntentInvocationUUID = [(BMIntelligenceEngineInteraction *)self appIntentInvocationUUID];
  sirikitIntentItemId = [(BMIntelligenceEngineInteraction *)self sirikitIntentItemId];
  v8 = BMIntelligenceEngineInteractionDonationTriggerAsString([(BMIntelligenceEngineInteraction *)self trigger]);
  tupleInteraction = [(BMIntelligenceEngineInteraction *)self tupleInteraction];
  candidateInteractions = [(BMIntelligenceEngineInteraction *)self candidateInteractions];
  v11 = [v3 initWithFormat:@"BMIntelligenceEngineInteraction with absoluteTimestamp: %@, transcriptStatementId: %@, appIntentInvocationUUID: %@, sirikitIntentItemId: %@, trigger: %@, tupleInteraction: %@, candidateInteractions: %@", absoluteTimestamp, transcriptStatementId, appIntentInvocationUUID, sirikitIntentItemId, v8, tupleInteraction, candidateInteractions];

  return v11;
}

- (BMIntelligenceEngineInteraction)initWithAbsoluteTimestamp:(id)timestamp transcriptStatementId:(id)id appIntentInvocationUUID:(id)d sirikitIntentItemId:(id)itemId trigger:(int)trigger tupleInteraction:(id)interaction candidateInteractions:(id)interactions
{
  v27[2] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  idCopy = id;
  dCopy = d;
  itemIdCopy = itemId;
  interactionCopy = interaction;
  interactionsCopy = interactions;
  v26.receiver = self;
  v26.super_class = BMIntelligenceEngineInteraction;
  v19 = [(BMEventBase *)&v26 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v19->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v19->_hasRaw_absoluteTimestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_absoluteTimestamp = v20;
    objc_storeStrong(&v19->_transcriptStatementId, id);
    if (dCopy)
    {
      v27[0] = 0;
      v27[1] = 0;
      [dCopy getUUIDBytes:v27];
      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v27 length:16];
      raw_appIntentInvocationUUID = v19->_raw_appIntentInvocationUUID;
      v19->_raw_appIntentInvocationUUID = v21;
    }

    else
    {
      raw_appIntentInvocationUUID = v19->_raw_appIntentInvocationUUID;
      v19->_raw_appIntentInvocationUUID = 0;
    }

    objc_storeStrong(&v19->_sirikitIntentItemId, itemId);
    v19->_trigger = trigger;
    objc_storeStrong(&v19->_tupleInteraction, interaction);
    objc_storeStrong(&v19->_candidateInteractions, interactions);
  }

  return v19;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"transcriptStatementId" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appIntentInvocationUUID" number:3 type:14 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sirikitIntentItemId" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trigger" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tupleInteraction" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateInteractions" number:7 type:14 subMessageClass:objc_opt_class()];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

id __42__BMIntelligenceEngineInteraction_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _candidateInteractionsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __42__BMIntelligenceEngineInteraction_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 tupleInteraction];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __42__BMIntelligenceEngineInteraction_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 transcriptStatementId];
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

    v8 = [[BMIntelligenceEngineInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end