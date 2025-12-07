@interface BMSiriPostSiriEngagement
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriPostSiriEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriPostSiriEngagement)initWithUISessionID:(id)d taskID:(id)iD taskType:(id)type conversationPath:(id)path appPattern:(id)pattern requestIds:(id)ids engagementUnderstandingFeatures:(id)features pseEvents:(id)self0 clientSessionId:(id)self1 lastRequestId:(id)self2 executionUUID:(id)self3;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_pseEventsJSONArray;
- (id)_requestIdsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriPostSiriEngagement

+ (id)columns
{
  v15[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"UISessionID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"taskType" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationPath" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appPattern" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"requestIds_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_431];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"engagementUnderstandingFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_433];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"pseEvents_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_435];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientSessionId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastRequestId" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"executionUUID" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
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
    uISessionID = [(BMSiriPostSiriEngagement *)self UISessionID];
    uISessionID2 = [v5 UISessionID];
    v8 = uISessionID2;
    if (uISessionID == uISessionID2)
    {
    }

    else
    {
      uISessionID3 = [(BMSiriPostSiriEngagement *)self UISessionID];
      uISessionID4 = [v5 UISessionID];
      v11 = [uISessionID3 isEqual:uISessionID4];

      if (!v11)
      {
        goto LABEL_41;
      }
    }

    taskID = [(BMSiriPostSiriEngagement *)self taskID];
    taskID2 = [v5 taskID];
    v15 = taskID2;
    if (taskID == taskID2)
    {
    }

    else
    {
      taskID3 = [(BMSiriPostSiriEngagement *)self taskID];
      taskID4 = [v5 taskID];
      v18 = [taskID3 isEqual:taskID4];

      if (!v18)
      {
        goto LABEL_41;
      }
    }

    taskType = [(BMSiriPostSiriEngagement *)self taskType];
    taskType2 = [v5 taskType];
    v21 = taskType2;
    if (taskType == taskType2)
    {
    }

    else
    {
      taskType3 = [(BMSiriPostSiriEngagement *)self taskType];
      taskType4 = [v5 taskType];
      v24 = [taskType3 isEqual:taskType4];

      if (!v24)
      {
        goto LABEL_41;
      }
    }

    conversationPath = [(BMSiriPostSiriEngagement *)self conversationPath];
    conversationPath2 = [v5 conversationPath];
    v27 = conversationPath2;
    if (conversationPath == conversationPath2)
    {
    }

    else
    {
      conversationPath3 = [(BMSiriPostSiriEngagement *)self conversationPath];
      conversationPath4 = [v5 conversationPath];
      v30 = [conversationPath3 isEqual:conversationPath4];

      if (!v30)
      {
        goto LABEL_41;
      }
    }

    appPattern = [(BMSiriPostSiriEngagement *)self appPattern];
    appPattern2 = [v5 appPattern];
    v33 = appPattern2;
    if (appPattern == appPattern2)
    {
    }

    else
    {
      appPattern3 = [(BMSiriPostSiriEngagement *)self appPattern];
      appPattern4 = [v5 appPattern];
      v36 = [appPattern3 isEqual:appPattern4];

      if (!v36)
      {
        goto LABEL_41;
      }
    }

    requestIds = [(BMSiriPostSiriEngagement *)self requestIds];
    requestIds2 = [v5 requestIds];
    v39 = requestIds2;
    if (requestIds == requestIds2)
    {
    }

    else
    {
      requestIds3 = [(BMSiriPostSiriEngagement *)self requestIds];
      requestIds4 = [v5 requestIds];
      v42 = [requestIds3 isEqual:requestIds4];

      if (!v42)
      {
        goto LABEL_41;
      }
    }

    engagementUnderstandingFeatures = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
    engagementUnderstandingFeatures2 = [v5 engagementUnderstandingFeatures];
    v45 = engagementUnderstandingFeatures2;
    if (engagementUnderstandingFeatures == engagementUnderstandingFeatures2)
    {
    }

    else
    {
      engagementUnderstandingFeatures3 = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
      engagementUnderstandingFeatures4 = [v5 engagementUnderstandingFeatures];
      v48 = [engagementUnderstandingFeatures3 isEqual:engagementUnderstandingFeatures4];

      if (!v48)
      {
        goto LABEL_41;
      }
    }

    pseEvents = [(BMSiriPostSiriEngagement *)self pseEvents];
    pseEvents2 = [v5 pseEvents];
    v51 = pseEvents2;
    if (pseEvents == pseEvents2)
    {
    }

    else
    {
      pseEvents3 = [(BMSiriPostSiriEngagement *)self pseEvents];
      pseEvents4 = [v5 pseEvents];
      v54 = [pseEvents3 isEqual:pseEvents4];

      if (!v54)
      {
        goto LABEL_41;
      }
    }

    clientSessionId = [(BMSiriPostSiriEngagement *)self clientSessionId];
    clientSessionId2 = [v5 clientSessionId];
    v57 = clientSessionId2;
    if (clientSessionId == clientSessionId2)
    {
    }

    else
    {
      clientSessionId3 = [(BMSiriPostSiriEngagement *)self clientSessionId];
      clientSessionId4 = [v5 clientSessionId];
      v60 = [clientSessionId3 isEqual:clientSessionId4];

      if (!v60)
      {
        goto LABEL_41;
      }
    }

    lastRequestId = [(BMSiriPostSiriEngagement *)self lastRequestId];
    lastRequestId2 = [v5 lastRequestId];
    v63 = lastRequestId2;
    if (lastRequestId == lastRequestId2)
    {
    }

    else
    {
      lastRequestId3 = [(BMSiriPostSiriEngagement *)self lastRequestId];
      lastRequestId4 = [v5 lastRequestId];
      v66 = [lastRequestId3 isEqual:lastRequestId4];

      if (!v66)
      {
LABEL_41:
        v12 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    executionUUID = [(BMSiriPostSiriEngagement *)self executionUUID];
    executionUUID2 = [v5 executionUUID];
    if (executionUUID == executionUUID2)
    {
      v12 = 1;
    }

    else
    {
      executionUUID3 = [(BMSiriPostSiriEngagement *)self executionUUID];
      executionUUID4 = [v5 executionUUID];
      v12 = [executionUUID3 isEqual:executionUUID4];
    }

    goto LABEL_42;
  }

  v12 = 0;
LABEL_43:

  return v12;
}

- (id)jsonDictionary
{
  v38[11] = *MEMORY[0x1E69E9840];
  uISessionID = [(BMSiriPostSiriEngagement *)self UISessionID];
  taskID = [(BMSiriPostSiriEngagement *)self taskID];
  taskType = [(BMSiriPostSiriEngagement *)self taskType];
  conversationPath = [(BMSiriPostSiriEngagement *)self conversationPath];
  appPattern = [(BMSiriPostSiriEngagement *)self appPattern];
  _requestIdsJSONArray = [(BMSiriPostSiriEngagement *)self _requestIdsJSONArray];
  engagementUnderstandingFeatures = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
  jsonDictionary = [engagementUnderstandingFeatures jsonDictionary];

  _pseEventsJSONArray = [(BMSiriPostSiriEngagement *)self _pseEventsJSONArray];
  clientSessionId = [(BMSiriPostSiriEngagement *)self clientSessionId];
  lastRequestId = [(BMSiriPostSiriEngagement *)self lastRequestId];
  executionUUID = [(BMSiriPostSiriEngagement *)self executionUUID];
  v37[0] = @"UISessionID";
  null = uISessionID;
  if (!uISessionID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null;
  v38[0] = null;
  v37[1] = @"taskID";
  null2 = taskID;
  if (!taskID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null2;
  v38[1] = null2;
  v37[2] = @"taskType";
  null3 = taskType;
  if (!taskType)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null3;
  v38[2] = null3;
  v37[3] = @"conversationPath";
  null4 = conversationPath;
  if (!conversationPath)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = uISessionID;
  v25 = null4;
  v38[3] = null4;
  v37[4] = @"appPattern";
  null5 = appPattern;
  if (!appPattern)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = taskID;
  v24 = null5;
  v38[4] = null5;
  v37[5] = @"requestIds";
  null6 = _requestIdsJSONArray;
  if (!_requestIdsJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = taskType;
  v38[5] = null6;
  v37[6] = @"engagementUnderstandingFeatures";
  null7 = jsonDictionary;
  if (!jsonDictionary)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = conversationPath;
  v38[6] = null7;
  v37[7] = @"pseEvents";
  null8 = _pseEventsJSONArray;
  if (!_pseEventsJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v38[7] = null8;
  v37[8] = @"clientSessionId";
  null9 = clientSessionId;
  if (!clientSessionId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v38[8] = null9;
  v37[9] = @"lastRequestId";
  null10 = lastRequestId;
  if (!lastRequestId)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v38[9] = null10;
  v37[10] = @"executionUUID";
  null11 = executionUUID;
  if (!executionUUID)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v38[10] = null11;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:11];
  if (executionUUID)
  {
    if (lastRequestId)
    {
      goto LABEL_25;
    }

LABEL_42:

    if (clientSessionId)
    {
      goto LABEL_26;
    }

    goto LABEL_43;
  }

  if (!lastRequestId)
  {
    goto LABEL_42;
  }

LABEL_25:
  if (clientSessionId)
  {
    goto LABEL_26;
  }

LABEL_43:

LABEL_26:
  if (!_pseEventsJSONArray)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!_requestIdsJSONArray)
  {
  }

  if (!appPattern)
  {
  }

  if (v30)
  {
    if (v31)
    {
      goto LABEL_36;
    }
  }

  else
  {

    if (v31)
    {
LABEL_36:
      if (v32)
      {
        goto LABEL_37;
      }

LABEL_46:

      if (v33)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }
  }

  if (!v32)
  {
    goto LABEL_46;
  }

LABEL_37:
  if (v33)
  {
    goto LABEL_38;
  }

LABEL_47:

LABEL_38:

  return v29;
}

- (id)_pseEventsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  pseEvents = [(BMSiriPostSiriEngagement *)self pseEvents];
  v5 = [pseEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(pseEvents);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [pseEvents countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_requestIdsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  requestIds = [(BMSiriPostSiriEngagement *)self requestIds];
  v5 = [requestIds countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(requestIds);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [requestIds countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMSiriPostSiriEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v212[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"UISessionID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"taskID"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v164 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v164 = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"taskType"];
      v165 = v10;
      if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v162 = 0;
LABEL_10:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"conversationPath"];
        v163 = v12;
        if (v12 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v67 = v7;
              v68 = objc_alloc(MEMORY[0x1E696ABC0]);
              errorCopy = error;
              v69 = v8;
              v70 = *MEMORY[0x1E698F240];
              v205 = *MEMORY[0x1E696A578];
              v71 = v9;
              v72 = objc_alloc(MEMORY[0x1E696AEC0]);
              v139 = objc_opt_class();
              v73 = v72;
              v9 = v71;
              v74 = [v73 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v139, @"conversationPath"];
              v206 = v74;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
              v76 = v68;
              v7 = v67;
              v77 = v70;
              v8 = v69;
              v161 = v75;
              v14 = 0;
              v38 = 0;
              *errorCopy = [v76 initWithDomain:v77 code:2 userInfo:?];
              v34 = v164;
              goto LABEL_142;
            }

            v14 = 0;
            v38 = 0;
            v34 = v164;
            goto LABEL_143;
          }

          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = [dictionaryCopy objectForKeyedSubscript:@"appPattern"];
        v160 = v14;
        v161 = v15;
        v158 = v7;
        v159 = v8;
        if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v78 = v8;
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              errorCopy2 = error;
              v80 = v9;
              v81 = *MEMORY[0x1E698F240];
              v203 = *MEMORY[0x1E696A578];
              v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appPattern"];
              v204 = v17;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
              v82 = v79;
              v8 = v78;
              v83 = v81;
              v9 = v80;
              v157 = 0;
              v38 = 0;
              *errorCopy2 = [v82 initWithDomain:v83 code:2 userInfo:v20];
              v34 = v164;
              goto LABEL_140;
            }

            v74 = 0;
            v38 = 0;
            v34 = v164;
            goto LABEL_142;
          }

          v153 = v9;
          v157 = v16;
        }

        else
        {
          v153 = v9;
          v157 = 0;
        }

        v17 = [dictionaryCopy objectForKeyedSubscript:@"requestIds"];
        null = [MEMORY[0x1E695DFB0] null];
        v19 = [v17 isEqual:null];

        if (v19)
        {
          selfCopy3 = self;

          v17 = 0;
        }

        else
        {
          if (v17)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v38 = 0;
                v9 = v153;
                v34 = v164;
                goto LABEL_141;
              }

              v84 = objc_alloc(MEMORY[0x1E696ABC0]);
              selfCopy2 = self;
              v86 = *MEMORY[0x1E698F240];
              v201 = *MEMORY[0x1E696A578];
              v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"requestIds"];
              v202 = v20;
              v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
              v88 = v86;
              self = selfCopy2;
              v14 = v160;
              v38 = 0;
              *error = [v84 initWithDomain:v88 code:2 userInfo:v87];
              v66 = v87;
              v9 = v153;
              goto LABEL_64;
            }
          }

          selfCopy3 = self;
        }

        v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v17 = v17;
        v21 = [v17 countByEnumeratingWithState:&v177 objects:v200 count:16];
        errorCopy3 = error;
        if (v21)
        {
          v22 = v21;
          v23 = *v178;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v178 != v23)
              {
                objc_enumerationMutation(v17);
              }

              v25 = *(*(&v177 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v50 = errorCopy3;
                if (errorCopy3)
                {
                  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v52 = *MEMORY[0x1E698F240];
                  v198 = *MEMORY[0x1E696A578];
                  v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"requestIds"];
                  v199 = v150;
                  obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v199 forKeys:&v198 count:1];
                  v53 = [v51 initWithDomain:v52 code:2 userInfo:?];
                  v34 = v164;
                  goto LABEL_55;
                }

LABEL_59:
                v38 = 0;
                v66 = v17;
                self = selfCopy3;
                v9 = v153;
LABEL_64:
                v34 = v164;
                goto LABEL_139;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!errorCopy3)
                {
                  goto LABEL_59;
                }

                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v65 = *MEMORY[0x1E698F240];
                v196 = *MEMORY[0x1E696A578];
                v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"requestIds"];
                v197 = v150;
                obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v197 forKeys:&v196 count:1];
                v53 = [v64 initWithDomain:v65 code:2 userInfo:?];
                v34 = v164;
                v50 = errorCopy3;
LABEL_55:
                v38 = 0;
                *v50 = v53;
                v66 = v17;
                self = selfCopy3;
                v9 = v153;
LABEL_56:
                v14 = v160;
                goto LABEL_138;
              }

              [v20 addObject:v25];
            }

            v22 = [v17 countByEnumeratingWithState:&v177 objects:v200 count:16];
            error = errorCopy3;
          }

          while (v22);
        }

        v26 = [dictionaryCopy objectForKeyedSubscript:@"engagementUnderstandingFeatures"];
        v149 = v26;
        if (!v26 || (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v150 = 0;
          goto LABEL_39;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v99 = v27;
          v176 = 0;
          v150 = [[BMSiriPostSiriEngagementFeatures alloc] initWithJSONDictionary:v99 error:&v176];
          v100 = v176;
          if (!v100)
          {

LABEL_39:
            v28 = [dictionaryCopy objectForKeyedSubscript:@"pseEvents"];
            null2 = [MEMORY[0x1E695DFB0] null];
            v30 = [v28 isEqual:null2];

            if (v30)
            {

              v28 = 0;
            }

            else if (v28)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                obj = v28;
                v14 = v160;
                if (!error)
                {
                  v38 = 0;
                  self = selfCopy3;
                  v9 = v153;
                  v34 = v164;
                  v66 = v149;
                  goto LABEL_138;
                }

                v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                v114 = *MEMORY[0x1E698F240];
                v192 = *MEMORY[0x1E696A578];
                v151 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"pseEvents"];
                v193 = v151;
                v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v193 forKeys:&v192 count:1];
                v116 = v114;
                v117 = v115;
                v38 = 0;
                *error = [v113 initWithDomain:v116 code:2 userInfo:v115];
                v9 = v153;
                goto LABEL_106;
              }
            }

            v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v28, "count")}];
            v172 = 0u;
            v173 = 0u;
            v174 = 0u;
            v175 = 0u;
            v89 = v28;
            v90 = [v89 countByEnumeratingWithState:&v172 objects:v191 count:16];
            obj = v89;
            if (!v90)
            {
              goto LABEL_78;
            }

            v91 = v90;
            v92 = *v173;
LABEL_70:
            v93 = 0;
            while (1)
            {
              if (*v173 != v92)
              {
                objc_enumerationMutation(obj);
              }

              v94 = *(*(&v172 + 1) + 8 * v93);
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
                  v106 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v107 = *MEMORY[0x1E698F240];
                  v187 = *MEMORY[0x1E696A578];
                  errorCopy5 = error;
                  v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"pseEvents"];
                  v188 = v95;
                  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v188 forKeys:&v187 count:1];
                  goto LABEL_98;
                }

                goto LABEL_105;
              }

              v95 = v94;
              v96 = [BMSiriPostSiriEngagementSignal alloc];
              v171 = 0;
              v97 = [(BMSiriPostSiriEngagementSignal *)v96 initWithJSONDictionary:v95 error:&v171];
              v98 = v171;
              if (v98)
              {
                v110 = v98;
                if (errorCopy3)
                {
                  v112 = v98;
                  *errorCopy3 = v110;
                }

                v38 = 0;
                goto LABEL_102;
              }

              [v151 addObject:v97];

              ++v93;
              error = errorCopy3;
              if (v91 == v93)
              {
                v89 = obj;
                v91 = [obj countByEnumeratingWithState:&v172 objects:v191 count:16];
                if (v91)
                {
                  goto LABEL_70;
                }

LABEL_78:

                v95 = [dictionaryCopy objectForKeyedSubscript:@"clientSessionId"];
                if (!v95)
                {
                  v147 = 0;
                  v8 = v159;
                  v9 = v153;
                  goto LABEL_110;
                }

                objc_opt_class();
                v8 = v159;
                v9 = v153;
                if (objc_opt_isKindOfClass())
                {
                  v147 = 0;
LABEL_110:
                  v14 = v160;
                  v118 = [dictionaryCopy objectForKeyedSubscript:@"lastRequestId"];
                  v146 = v118;
                  if (!v118 || (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v110 = 0;
                    goto LABEL_113;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v110 = v119;
                    v14 = v160;
LABEL_113:
                    v120 = [dictionaryCopy objectForKeyedSubscript:@"executionUUID"];
                    v154 = v120;
                    if (!v120)
                    {
LABEL_116:
                      v34 = v164;
                      goto LABEL_117;
                    }

                    v121 = v120;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v120 = 0;
                      goto LABEL_116;
                    }

                    objc_opt_class();
                    v34 = v164;
                    if (objc_opt_isKindOfClass())
                    {
                      v120 = v121;
                      v14 = v160;
LABEL_117:
                      v144 = v120;
                      v38 = [(BMSiriPostSiriEngagement *)selfCopy3 initWithUISessionID:v8 taskID:v34 taskType:v162 conversationPath:v14 appPattern:v157 requestIds:v20 engagementUnderstandingFeatures:v150 pseEvents:v151 clientSessionId:v147 lastRequestId:v110 executionUUID:v120];
                      selfCopy3 = v38;
LABEL_133:

LABEL_134:
LABEL_135:

LABEL_136:
                      v117 = v147;
                      v66 = v149;
LABEL_137:

                      self = selfCopy3;
LABEL_138:

LABEL_139:
LABEL_140:

LABEL_141:
                      v74 = v157;
                      v7 = v158;
LABEL_142:

LABEL_143:
                      v46 = v162;
LABEL_144:

                      goto LABEL_145;
                    }

                    if (errorCopy3)
                    {
                      v145 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v143 = *MEMORY[0x1E698F240];
                      v181 = *MEMORY[0x1E696A578];
                      v133 = v9;
                      v134 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"executionUUID"];
                      v182 = v134;
                      v135 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
                      *errorCopy3 = [v145 initWithDomain:v143 code:2 userInfo:v135];

                      v9 = v133;
                    }

                    v144 = 0;
                    v38 = 0;
LABEL_132:
                    v14 = v160;
                    goto LABEL_133;
                  }

                  if (errorCopy3)
                  {
                    v155 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v126 = *MEMORY[0x1E698F240];
                    v183 = *MEMORY[0x1E696A578];
                    v127 = v9;
                    v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v142 = objc_opt_class();
                    v129 = v128;
                    v9 = v127;
                    v144 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v142, @"lastRequestId"];
                    v184 = v144;
                    v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
                    v131 = v155;
                    v154 = v130;
                    v132 = [v131 initWithDomain:v126 code:2 userInfo:?];
                    v110 = 0;
                    v38 = 0;
                    *errorCopy3 = v132;
                    v34 = v164;
                    goto LABEL_132;
                  }

                  v110 = 0;
                  v38 = 0;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v147 = v95;
                    goto LABEL_110;
                  }

                  if (!errorCopy3)
                  {
                    v147 = 0;
                    v38 = 0;
                    v34 = v164;
                    v14 = v160;
                    goto LABEL_136;
                  }

                  v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v122 = *MEMORY[0x1E698F240];
                  v185 = *MEMORY[0x1E696A578];
                  v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v141 = objc_opt_class();
                  v124 = v123;
                  v9 = v153;
                  v110 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v141, @"clientSessionId"];
                  v186 = v110;
                  v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v186 forKeys:&v185 count:1];
                  v125 = [v148 initWithDomain:v122 code:2 userInfo:?];
                  v147 = 0;
                  v38 = 0;
                  *errorCopy3 = v125;
                }

                v34 = v164;
                v14 = v160;
                goto LABEL_134;
              }
            }

            if (error)
            {
              v106 = objc_alloc(MEMORY[0x1E696ABC0]);
              v107 = *MEMORY[0x1E698F240];
              v189 = *MEMORY[0x1E696A578];
              v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"pseEvents"];
              v190 = v95;
              v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v190 forKeys:&v189 count:1];
              errorCopy5 = error;
LABEL_98:
              v110 = v108;
              v111 = [v106 initWithDomain:v107 code:2 userInfo:v108];
              v38 = 0;
              *errorCopy5 = v111;
LABEL_102:
              v9 = v153;
              v147 = obj;
              v8 = v159;
              v14 = v160;
              v34 = v164;
              goto LABEL_135;
            }

LABEL_105:
            v38 = 0;
            v9 = v153;
            v117 = obj;
            v8 = v159;
            v14 = v160;
LABEL_106:
            v34 = v164;
            v66 = v149;
            goto LABEL_137;
          }

          self = selfCopy3;
          if (error)
          {
            v100 = v100;
            *error = v100;
          }

          v38 = 0;
          obj = v99;
          v66 = v99;
        }

        else
        {
          if (!error)
          {
            v38 = 0;
            self = selfCopy3;
            v9 = v153;
            v34 = v164;
            v66 = v149;
            goto LABEL_139;
          }

          v101 = objc_alloc(MEMORY[0x1E696ABC0]);
          v102 = *MEMORY[0x1E698F240];
          v194 = *MEMORY[0x1E696A578];
          errorCopy6 = error;
          v104 = objc_alloc(MEMORY[0x1E696AEC0]);
          v140 = objc_opt_class();
          v105 = v104;
          v66 = v149;
          v150 = [v105 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v140, @"engagementUnderstandingFeatures"];
          v195 = v150;
          obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v195 forKeys:&v194 count:1];
          v38 = 0;
          *errorCopy6 = [v101 initWithDomain:v102 code:2 userInfo:?];
          self = selfCopy3;
        }

        v9 = v153;
        v34 = v164;
        goto LABEL_56;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v162 = v11;
        goto LABEL_10;
      }

      if (error)
      {
        v54 = v7;
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy7 = error;
        v56 = v8;
        v57 = *MEMORY[0x1E698F240];
        v207 = *MEMORY[0x1E696A578];
        v58 = v9;
        v59 = objc_alloc(MEMORY[0x1E696AEC0]);
        v138 = objc_opt_class();
        v60 = v59;
        v9 = v58;
        v14 = [v60 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v138, @"taskType"];
        v208 = v14;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
        v62 = v55;
        v7 = v54;
        v63 = v57;
        v8 = v56;
        v163 = v61;
        v46 = 0;
        v38 = 0;
        *errorCopy7 = [v62 initWithDomain:v63 code:2 userInfo:?];
        v34 = v164;
        goto LABEL_144;
      }

      v46 = 0;
      v38 = 0;
      v34 = v164;
LABEL_145:

      goto LABEL_146;
    }

    if (error)
    {
      v39 = v7;
      v40 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy8 = error;
      v41 = v8;
      v42 = *MEMORY[0x1E698F240];
      v209 = *MEMORY[0x1E696A578];
      v43 = v9;
      v44 = objc_alloc(MEMORY[0x1E696AEC0]);
      v137 = objc_opt_class();
      v45 = v44;
      v9 = v43;
      v46 = [v45 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v137, @"taskID"];
      v210 = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
      v48 = v40;
      v7 = v39;
      v49 = v42;
      v8 = v41;
      v165 = v47;
      v34 = 0;
      v38 = 0;
      *errorCopy8 = [v48 initWithDomain:v49 code:2 userInfo:?];
      goto LABEL_145;
    }

    v34 = 0;
    v38 = 0;
LABEL_146:

    goto LABEL_147;
  }

  if (error)
  {
    v31 = v7;
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v211 = *MEMORY[0x1E696A578];
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"UISessionID"];
    v212[0] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v212 forKeys:&v211 count:1];
    v36 = v32;
    v7 = v31;
    v9 = v35;
    v37 = [v36 initWithDomain:v33 code:2 userInfo:v35];
    v8 = 0;
    v38 = 0;
    *error = v37;
    goto LABEL_146;
  }

  v8 = 0;
  v38 = 0;
LABEL_147:

  return v38;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriPostSiriEngagement *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_UISessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appPattern)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_requestIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  if (self->_engagementUnderstandingFeatures)
  {
    v20 = 0;
    PBDataWriterPlaceMark();
    [(BMSiriPostSiriEngagementFeatures *)self->_engagementUnderstandingFeatures writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_pseEvents;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        v20 = 0;
        PBDataWriterPlaceMark();
        [v15 writeTo:{toCopy, v16}];
        PBDataWriterRecallMark();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v12);
  }

  if (self->_clientSessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_lastRequestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_executionUUID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMSiriPostSiriEngagement;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_54;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v35 & 0x7F) << v9;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        if (v10++ >= 9)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        goto LABEL_54;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) <= 5)
      {
        break;
      }

      if (v17 > 8)
      {
        switch(v17)
        {
          case 9:
            v20 = PBReaderReadString();
            v21 = 88;
            goto LABEL_49;
          case 0xA:
            v20 = PBReaderReadString();
            v21 = 96;
            goto LABEL_49;
          case 0xB:
            v20 = PBReaderReadString();
            v21 = 104;
            goto LABEL_49;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if (v17 == 6)
      {
        v24 = PBReaderReadString();
        if (!v24)
        {
          goto LABEL_53;
        }

        v19 = v24;
        [v6 addObject:v24];
LABEL_47:

        goto LABEL_50;
      }

      if (v17 != 7)
      {
        if (v17 == 8)
        {
          v35 = 0;
          v36 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v18 = [[BMSiriPostSiriEngagementSignal alloc] initByReadFrom:fromCopy];
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = v18;
          [v7 addObject:v18];
          PBReaderRecallMark();
          goto LABEL_47;
        }

        goto LABEL_52;
      }

      v35 = 0;
      v36 = 0;
      if (!PBReaderPlaceMark() || (v22 = [[BMSiriPostSiriEngagementFeatures alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_53:

        goto LABEL_55;
      }

      engagementUnderstandingFeatures = v5->_engagementUnderstandingFeatures;
      v5->_engagementUnderstandingFeatures = v22;

      PBReaderRecallMark();
LABEL_50:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_54;
      }
    }

    if (v17 <= 2)
    {
      if (v17 == 1)
      {
        v20 = PBReaderReadString();
        v21 = 24;
        goto LABEL_49;
      }

      if (v17 == 2)
      {
        v20 = PBReaderReadString();
        v21 = 32;
        goto LABEL_49;
      }
    }

    else
    {
      switch(v17)
      {
        case 3:
          v20 = PBReaderReadString();
          v21 = 40;
          goto LABEL_49;
        case 4:
          v20 = PBReaderReadString();
          v21 = 48;
          goto LABEL_49;
        case 5:
          v20 = PBReaderReadString();
          v21 = 56;
LABEL_49:
          v25 = *(&v5->super.super.isa + v21);
          *(&v5->super.super.isa + v21) = v20;

          goto LABEL_50;
      }
    }

    goto LABEL_52;
  }

LABEL_54:
  v27 = [v6 copy];
  requestIds = v5->_requestIds;
  v5->_requestIds = v27;

  v29 = [v7 copy];
  pseEvents = v5->_pseEvents;
  v5->_pseEvents = v29;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_55:
    v32 = 0;
  }

  else
  {
LABEL_56:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  uISessionID = [(BMSiriPostSiriEngagement *)self UISessionID];
  taskID = [(BMSiriPostSiriEngagement *)self taskID];
  taskType = [(BMSiriPostSiriEngagement *)self taskType];
  conversationPath = [(BMSiriPostSiriEngagement *)self conversationPath];
  appPattern = [(BMSiriPostSiriEngagement *)self appPattern];
  requestIds = [(BMSiriPostSiriEngagement *)self requestIds];
  engagementUnderstandingFeatures = [(BMSiriPostSiriEngagement *)self engagementUnderstandingFeatures];
  pseEvents = [(BMSiriPostSiriEngagement *)self pseEvents];
  clientSessionId = [(BMSiriPostSiriEngagement *)self clientSessionId];
  lastRequestId = [(BMSiriPostSiriEngagement *)self lastRequestId];
  executionUUID = [(BMSiriPostSiriEngagement *)self executionUUID];
  v15 = [v14 initWithFormat:@"BMSiriPostSiriEngagement with UISessionID: %@, taskID: %@, taskType: %@, conversationPath: %@, appPattern: %@, requestIds: %@, engagementUnderstandingFeatures: %@, pseEvents: %@, clientSessionId: %@, lastRequestId: %@, executionUUID: %@", uISessionID, taskID, taskType, conversationPath, appPattern, requestIds, engagementUnderstandingFeatures, pseEvents, clientSessionId, lastRequestId, executionUUID];

  return v15;
}

- (BMSiriPostSiriEngagement)initWithUISessionID:(id)d taskID:(id)iD taskType:(id)type conversationPath:(id)path appPattern:(id)pattern requestIds:(id)ids engagementUnderstandingFeatures:(id)features pseEvents:(id)self0 clientSessionId:(id)self1 lastRequestId:(id)self2 executionUUID:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  typeCopy = type;
  pathCopy = path;
  patternCopy = pattern;
  idsCopy = ids;
  featuresCopy = features;
  eventsCopy = events;
  idCopy = id;
  requestIdCopy = requestId;
  uIDCopy = uID;
  v34.receiver = self;
  v34.super_class = BMSiriPostSiriEngagement;
  v22 = [(BMEventBase *)&v34 init];
  if (v22)
  {
    v22->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v22->_UISessionID, d);
    objc_storeStrong(&v22->_taskID, iDCopy);
    objc_storeStrong(&v22->_taskType, type);
    objc_storeStrong(&v22->_conversationPath, path);
    objc_storeStrong(&v22->_appPattern, pattern);
    objc_storeStrong(&v22->_requestIds, ids);
    objc_storeStrong(&v22->_engagementUnderstandingFeatures, features);
    objc_storeStrong(&v22->_pseEvents, events);
    objc_storeStrong(&v22->_clientSessionId, id);
    objc_storeStrong(&v22->_lastRequestId, requestId);
    objc_storeStrong(&v22->_executionUUID, uID);
  }

  return v22;
}

+ (id)protoFields
{
  v15[11] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"UISessionID" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskID" number:2 type:13 subMessageClass:0];
  v15[1] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"taskType" number:3 type:13 subMessageClass:0];
  v15[2] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationPath" number:4 type:13 subMessageClass:0];
  v15[3] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appPattern" number:5 type:13 subMessageClass:0];
  v15[4] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestIds" number:6 type:13 subMessageClass:0];
  v15[5] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"engagementUnderstandingFeatures" number:7 type:14 subMessageClass:objc_opt_class()];
  v15[6] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pseEvents" number:8 type:14 subMessageClass:objc_opt_class()];
  v15[7] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientSessionId" number:9 type:13 subMessageClass:0];
  v15[8] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastRequestId" number:10 type:13 subMessageClass:0];
  v15[9] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"executionUUID" number:11 type:13 subMessageClass:0];
  v15[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:11];

  return v11;
}

id __35__BMSiriPostSiriEngagement_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _pseEventsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMSiriPostSiriEngagement_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 engagementUnderstandingFeatures];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __35__BMSiriPostSiriEngagement_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _requestIdsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version)
  {
    if (version != 1)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMSiriPostSiriEngagement;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    v7 = BMSiriPostSiriEngagement_v0;
  }

  v8 = [[v7 alloc] initByReadFrom:v6];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = version;
  }

LABEL_9:

  return v9;
}

@end