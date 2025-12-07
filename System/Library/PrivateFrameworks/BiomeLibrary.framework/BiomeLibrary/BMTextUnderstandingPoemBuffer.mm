@interface BMTextUnderstandingPoemBuffer
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMTextUnderstandingPoemBuffer)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMTextUnderstandingPoemBuffer)initWithMessageTimestamp:(id)timestamp conversationId:(id)id spotlightId:(id)spotlightId photoAttachment:(id)attachment extractions:(id)extractions continuousFeatures:(id)features rawMessage:(id)message senderId:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSDate)messageTimestamp;
- (NSString)description;
- (id)_continuousFeaturesJSONArray;
- (id)_extractionsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMTextUnderstandingPoemBuffer

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    messageTimestamp = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
    messageTimestamp2 = [v5 messageTimestamp];
    v8 = messageTimestamp2;
    if (messageTimestamp == messageTimestamp2)
    {
    }

    else
    {
      messageTimestamp3 = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
      messageTimestamp4 = [v5 messageTimestamp];
      v11 = [messageTimestamp3 isEqual:messageTimestamp4];

      if (!v11)
      {
        goto LABEL_30;
      }
    }

    conversationId = [(BMTextUnderstandingPoemBuffer *)self conversationId];
    conversationId2 = [v5 conversationId];
    v15 = conversationId2;
    if (conversationId == conversationId2)
    {
    }

    else
    {
      conversationId3 = [(BMTextUnderstandingPoemBuffer *)self conversationId];
      conversationId4 = [v5 conversationId];
      v18 = [conversationId3 isEqual:conversationId4];

      if (!v18)
      {
        goto LABEL_30;
      }
    }

    spotlightId = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
    spotlightId2 = [v5 spotlightId];
    v21 = spotlightId2;
    if (spotlightId == spotlightId2)
    {
    }

    else
    {
      spotlightId3 = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
      spotlightId4 = [v5 spotlightId];
      v24 = [spotlightId3 isEqual:spotlightId4];

      if (!v24)
      {
        goto LABEL_30;
      }
    }

    if (-[BMTextUnderstandingPoemBuffer hasPhotoAttachment](self, "hasPhotoAttachment") || [v5 hasPhotoAttachment])
    {
      if (![(BMTextUnderstandingPoemBuffer *)self hasPhotoAttachment])
      {
        goto LABEL_30;
      }

      if (![v5 hasPhotoAttachment])
      {
        goto LABEL_30;
      }

      photoAttachment = [(BMTextUnderstandingPoemBuffer *)self photoAttachment];
      if (photoAttachment != [v5 photoAttachment])
      {
        goto LABEL_30;
      }
    }

    extractions = [(BMTextUnderstandingPoemBuffer *)self extractions];
    extractions2 = [v5 extractions];
    v28 = extractions2;
    if (extractions == extractions2)
    {
    }

    else
    {
      extractions3 = [(BMTextUnderstandingPoemBuffer *)self extractions];
      extractions4 = [v5 extractions];
      v31 = [extractions3 isEqual:extractions4];

      if (!v31)
      {
        goto LABEL_30;
      }
    }

    continuousFeatures = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
    continuousFeatures2 = [v5 continuousFeatures];
    v34 = continuousFeatures2;
    if (continuousFeatures == continuousFeatures2)
    {
    }

    else
    {
      continuousFeatures3 = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
      continuousFeatures4 = [v5 continuousFeatures];
      v37 = [continuousFeatures3 isEqual:continuousFeatures4];

      if (!v37)
      {
        goto LABEL_30;
      }
    }

    rawMessage = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
    rawMessage2 = [v5 rawMessage];
    v40 = rawMessage2;
    if (rawMessage == rawMessage2)
    {
    }

    else
    {
      rawMessage3 = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
      rawMessage4 = [v5 rawMessage];
      v43 = [rawMessage3 isEqual:rawMessage4];

      if (!v43)
      {
LABEL_30:
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }
    }

    senderId = [(BMTextUnderstandingPoemBuffer *)self senderId];
    senderId2 = [v5 senderId];
    if (senderId == senderId2)
    {
      v12 = 1;
    }

    else
    {
      senderId3 = [(BMTextUnderstandingPoemBuffer *)self senderId];
      senderId4 = [v5 senderId];
      v12 = [senderId3 isEqual:senderId4];
    }

    goto LABEL_31;
  }

  v12 = 0;
LABEL_32:

  return v12;
}

- (NSDate)messageTimestamp
{
  if (self->_hasRaw_messageTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_messageTimestamp];
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
  v30[8] = *MEMORY[0x1E69E9840];
  messageTimestamp = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
  if (messageTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    messageTimestamp2 = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
    [messageTimestamp2 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  conversationId = [(BMTextUnderstandingPoemBuffer *)self conversationId];
  spotlightId = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
  if ([(BMTextUnderstandingPoemBuffer *)self hasPhotoAttachment])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBuffer photoAttachment](self, "photoAttachment")}];
  }

  else
  {
    v28 = 0;
  }

  _extractionsJSONArray = [(BMTextUnderstandingPoemBuffer *)self _extractionsJSONArray];
  _continuousFeaturesJSONArray = [(BMTextUnderstandingPoemBuffer *)self _continuousFeaturesJSONArray];
  rawMessage = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
  senderId = [(BMTextUnderstandingPoemBuffer *)self senderId];
  v29[0] = @"messageTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v30[0] = null;
  v29[1] = @"conversationId";
  null2 = conversationId;
  if (!conversationId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null2;
  v30[1] = null2;
  v29[2] = @"spotlightId";
  null3 = spotlightId;
  if (!spotlightId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null3;
  v30[2] = null3;
  v29[3] = @"photoAttachment";
  null4 = v28;
  if (!v28)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v6;
  v30[3] = null4;
  v29[4] = @"extractions";
  null5 = _extractionsJSONArray;
  if (!_extractionsJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = conversationId;
  v30[4] = null5;
  v29[5] = @"continuousFeatures";
  null6 = _continuousFeaturesJSONArray;
  if (!_continuousFeaturesJSONArray)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null6;
  v29[6] = @"rawMessage";
  null7 = rawMessage;
  if (!rawMessage)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null7;
  v29[7] = @"senderId";
  null8 = senderId;
  if (!senderId)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v30[7] = null8;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:8];
  if (senderId)
  {
    if (rawMessage)
    {
      goto LABEL_25;
    }

LABEL_36:

    if (_continuousFeaturesJSONArray)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  if (!rawMessage)
  {
    goto LABEL_36;
  }

LABEL_25:
  if (_continuousFeaturesJSONArray)
  {
    goto LABEL_26;
  }

LABEL_37:

LABEL_26:
  if (!_extractionsJSONArray)
  {
  }

  if (v28)
  {
    if (spotlightId)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (spotlightId)
    {
LABEL_30:
      if (v26)
      {
        goto LABEL_31;
      }

LABEL_40:

      if (v27)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }
  }

  if (!v26)
  {
    goto LABEL_40;
  }

LABEL_31:
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_41:

LABEL_32:

  return v25;
}

- (id)_continuousFeaturesJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  continuousFeatures = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
  v5 = [continuousFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(continuousFeatures);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 doubleValue];
        if (fabs(v10) == INFINITY)
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v3 addObject:null];
        }

        else
        {
          [v9 doubleValue];
          [v3 addObject:v9];
        }
      }

      v6 = [continuousFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_extractionsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  extractions = [(BMTextUnderstandingPoemBuffer *)self extractions];
  v5 = [extractions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(extractions);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [extractions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMTextUnderstandingPoemBuffer)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v166[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"messageTimestamp"];
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

    v13 = [v10 initWithTimeIntervalSince1970:v12];
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
        v7 = 0;
        selfCopy3 = 0;
        goto LABEL_110;
      }

      v88 = objc_alloc(MEMORY[0x1E696ABC0]);
      v89 = v6;
      v90 = *MEMORY[0x1E698F240];
      v165 = *MEMORY[0x1E696A578];
      selfCopy = self;
      v92 = objc_alloc(MEMORY[0x1E696AEC0]);
      v108 = objc_opt_class();
      v93 = v92;
      self = selfCopy;
      v46 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v108, @"messageTimestamp"];
      v166[0] = v46;
      v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v166 forKeys:&v165 count:1];
      v95 = v90;
      v6 = v89;
      v128 = v94;
      v96 = [v88 initWithDomain:v95 code:2 userInfo:?];
      v7 = 0;
      selfCopy3 = 0;
      *error = v96;
      goto LABEL_109;
    }

    v13 = v6;
    goto LABEL_6;
  }

  v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v7 = [v14 dateFromString:v6];

LABEL_9:
  v15 = [dictionaryCopy objectForKeyedSubscript:@"conversationId"];
  v128 = v15;
  if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v125 = 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v125 = v16;
LABEL_12:
    v17 = [dictionaryCopy objectForKeyedSubscript:@"spotlightId"];
    v127 = v17;
    if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v19 = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
LABEL_15:
      v20 = [dictionaryCopy objectForKeyedSubscript:@"photoAttachment"];
      v123 = v7;
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v120 = v20;
        v121 = v6;
        v124 = 0;
LABEL_18:
        v21 = [dictionaryCopy objectForKeyedSubscript:@"extractions"];
        null = [MEMORY[0x1E695DFB0] null];
        v23 = [v21 isEqual:null];

        selfCopy2 = self;
        if (v23)
        {
          v116 = dictionaryCopy;
          v117 = v19;

          v21 = 0;
LABEL_25:
          v130 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v21, "count")}];
          v137 = 0u;
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v21 = v21;
          v24 = [v21 countByEnumeratingWithState:&v137 objects:v156 count:16];
          if (!v24)
          {
            goto LABEL_35;
          }

          v25 = v24;
          v26 = *v138;
          while (1)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v138 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v137 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                errorCopy2 = error;
                if (error)
                {
                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v154 = *MEMORY[0x1E696A578];
                  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"extractions"];
                  v155 = v29;
                  v65 = MEMORY[0x1E695DF20];
                  v66 = &v155;
                  v67 = &v154;
LABEL_51:
                  v68 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:1];
                  v69 = [v63 initWithDomain:v64 code:2 userInfo:v68];
                  selfCopy3 = 0;
                  *errorCopy2 = v69;
                  v33 = v21;
                  dictionaryCopy = v116;
                  goto LABEL_86;
                }

LABEL_73:
                selfCopy3 = 0;
                v33 = v21;
                dictionaryCopy = v116;
                self = selfCopy2;
                v46 = v125;
                goto LABEL_74;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                errorCopy2 = error;
                if (error)
                {
                  v63 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v64 = *MEMORY[0x1E698F240];
                  v152 = *MEMORY[0x1E696A578];
                  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"extractions"];
                  v153 = v29;
                  v65 = MEMORY[0x1E695DF20];
                  v66 = &v153;
                  v67 = &v152;
                  goto LABEL_51;
                }

                goto LABEL_73;
              }

              v29 = v28;
              v30 = [BMTextUnderstandingPoemBufferExtraction alloc];
              v136 = 0;
              v31 = [(BMTextUnderstandingPoemBufferExtraction *)v30 initWithJSONDictionary:v29 error:&v136];
              v32 = v136;
              if (v32)
              {
                v68 = v32;
                v55 = v120;
                if (error)
                {
                  v70 = v32;
                  *error = v68;
                }

                selfCopy3 = 0;
                v33 = v21;
                dictionaryCopy = v116;
                v19 = v117;
                self = selfCopy2;
                v46 = v125;
                goto LABEL_103;
              }

              [v130 addObject:v31];
            }

            v25 = [v21 countByEnumeratingWithState:&v137 objects:v156 count:16];
            if (!v25)
            {
LABEL_35:

              dictionaryCopy = v116;
              v33 = [v116 objectForKeyedSubscript:@"continuousFeatures"];
              null2 = [MEMORY[0x1E695DFB0] null];
              v35 = [v33 isEqual:null2];

              if (v35)
              {

                v33 = 0;
                self = selfCopy2;
LABEL_57:
                v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v33, "count")}];
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                v135 = 0u;
                v33 = v33;
                v71 = [v33 countByEnumeratingWithState:&v132 objects:v149 count:16];
                if (!v71)
                {
                  goto LABEL_66;
                }

                v72 = v71;
                v73 = *v133;
LABEL_59:
                v74 = 0;
                while (1)
                {
                  if (*v133 != v73)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v75 = *(*(&v132 + 1) + 8 * v74);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    errorCopy4 = error;
                    if (error)
                    {
                      v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v87 = *MEMORY[0x1E698F240];
                      v145 = *MEMORY[0x1E696A578];
                      v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"continuousFeatures"];
                      v146 = v114;
                      v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v146 forKeys:&v145 count:1];
                      v84 = v86;
                      v85 = v87;
                      goto LABEL_81;
                    }

                    goto LABEL_85;
                  }

                  [v29 addObject:v75];
                  if (v72 == ++v74)
                  {
                    v72 = [v33 countByEnumeratingWithState:&v132 objects:v149 count:16];
                    self = selfCopy2;
                    if (v72)
                    {
                      goto LABEL_59;
                    }

LABEL_66:

                    v76 = [v116 objectForKeyedSubscript:@"rawMessage"];
                    v114 = v76;
                    if (!v76)
                    {
                      v68 = 0;
                      v46 = v125;
                      goto LABEL_94;
                    }

                    v77 = v76;
                    objc_opt_class();
                    v46 = v125;
                    if (objc_opt_isKindOfClass())
                    {
                      v68 = 0;
                      goto LABEL_94;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v68 = v77;
LABEL_94:
                      v19 = v117;
                      v99 = [v116 objectForKeyedSubscript:@"senderId"];
                      v110 = v99;
                      if (v99)
                      {
                        v100 = v99;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = 0;
                          goto LABEL_99;
                        }

                        v101 = v117;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = v100;
                          goto LABEL_99;
                        }

                        if (error)
                        {
                          v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v119 = *MEMORY[0x1E698F240];
                          v141 = *MEMORY[0x1E696A578];
                          v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"senderId"];
                          v142 = v105;
                          v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
                          *error = [v126 initWithDomain:v119 code:2 userInfo:v106];
                        }

                        v113 = 0;
                        selfCopy3 = 0;
                        v19 = v101;
                      }

                      else
                      {
LABEL_99:
                        v113 = v99;
                        self = [(BMTextUnderstandingPoemBuffer *)self initWithMessageTimestamp:v123 conversationId:v46 spotlightId:v117 photoAttachment:v124 extractions:v130 continuousFeatures:v29 rawMessage:v68 senderId:v99];
                        selfCopy3 = self;
                      }

LABEL_100:
                      v55 = v120;
                    }

                    else
                    {
                      if (error)
                      {
                        v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v109 = *MEMORY[0x1E698F240];
                        v143 = *MEMORY[0x1E696A578];
                        v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rawMessage"];
                        v144 = v113;
                        v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
                        v104 = v111;
                        v110 = v103;
                        v68 = 0;
                        selfCopy3 = 0;
                        *error = [v104 initWithDomain:v109 code:2 userInfo:?];
                        v19 = v117;
                        goto LABEL_100;
                      }

                      v68 = 0;
                      selfCopy3 = 0;
                      v19 = v117;
                      v55 = v120;
                    }

LABEL_102:

LABEL_103:
LABEL_104:

                    v6 = v121;
                    goto LABEL_106;
                  }
                }

                errorCopy4 = error;
                if (error)
                {
                  v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v82 = *MEMORY[0x1E698F240];
                  v147 = *MEMORY[0x1E696A578];
                  v114 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"continuousFeatures"];
                  v148 = v114;
                  v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v148 forKeys:&v147 count:1];
                  v84 = v81;
                  v85 = v82;
LABEL_81:
                  v112 = v83;
                  self = selfCopy2;
                  v46 = v125;
                  v55 = v120;
                  selfCopy3 = 0;
                  *errorCopy4 = [v84 initWithDomain:v85 code:2 userInfo:?];
                  v68 = v33;
                  v19 = v117;

                  goto LABEL_102;
                }

LABEL_85:
                selfCopy3 = 0;
                v68 = v33;
LABEL_86:
                self = selfCopy2;
                v46 = v125;
LABEL_87:
                v19 = v117;
                v55 = v120;
                goto LABEL_103;
              }

              self = selfCopy2;
              if (!v33)
              {
                goto LABEL_57;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_57;
              }

              v46 = v125;
              if (error)
              {
                v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                v97 = *MEMORY[0x1E698F240];
                v150 = *MEMORY[0x1E696A578];
                v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"continuousFeatures"];
                v151 = v29;
                v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v151 forKeys:&v150 count:1];
                v98 = [v115 initWithDomain:v97 code:2 userInfo:v68];
                selfCopy3 = 0;
                *error = v98;
                goto LABEL_87;
              }

              selfCopy3 = 0;
LABEL_74:
              v19 = v117;
              v55 = v120;
              goto LABEL_104;
            }
          }
        }

        if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v116 = dictionaryCopy;
          v117 = v19;
          goto LABEL_25;
        }

        if (error)
        {
          v78 = objc_alloc(MEMORY[0x1E696ABC0]);
          v79 = *MEMORY[0x1E698F240];
          v157 = *MEMORY[0x1E696A578];
          v130 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"extractions"];
          v158 = v130;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v157 count:1];
          selfCopy3 = 0;
          *error = [v78 initWithDomain:v79 code:2 userInfo:v33];
          v46 = v125;
          v55 = v120;
          goto LABEL_104;
        }

        selfCopy3 = 0;
        v46 = v125;
        v55 = v120;
        v6 = v121;
LABEL_106:

        v7 = v123;
        goto LABEL_107;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v120 = v20;
        v121 = v6;
        v124 = v20;
        goto LABEL_18;
      }

      if (error)
      {
        v118 = v19;
        v56 = v6;
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = *MEMORY[0x1E698F240];
        v159 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photoAttachment"];
        v160 = v21;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v60 = v57;
        v6 = v56;
        v19 = v118;
        v131 = v59;
        v61 = [v60 initWithDomain:v58 code:2 userInfo:?];
        v124 = 0;
        selfCopy3 = 0;
        *error = v61;
        v55 = v20;
        v46 = v125;

        goto LABEL_106;
      }

      v124 = 0;
      selfCopy3 = 0;
      v46 = v125;
      v55 = v20;
LABEL_107:

      goto LABEL_108;
    }

    if (error)
    {
      v48 = v7;
      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = v6;
      v51 = *MEMORY[0x1E698F240];
      v161 = *MEMORY[0x1E696A578];
      v124 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"spotlightId"];
      v162 = v124;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v161 count:1];
      v53 = v49;
      v7 = v48;
      v54 = v51;
      v6 = v50;
      v55 = v52;
      v19 = 0;
      selfCopy3 = 0;
      *error = [v53 initWithDomain:v54 code:2 userInfo:v52];
      v46 = v125;
      goto LABEL_107;
    }

    v19 = 0;
    selfCopy3 = 0;
    v46 = v125;
LABEL_108:

    goto LABEL_109;
  }

  if (error)
  {
    v36 = v7;
    v37 = objc_alloc(MEMORY[0x1E696ABC0]);
    v38 = v6;
    v39 = *MEMORY[0x1E698F240];
    v163 = *MEMORY[0x1E696A578];
    v40 = dictionaryCopy;
    v41 = objc_alloc(MEMORY[0x1E696AEC0]);
    v107 = objc_opt_class();
    v42 = v41;
    dictionaryCopy = v40;
    v19 = [v42 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v107, @"conversationId"];
    v164 = v19;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v164 forKeys:&v163 count:1];
    v44 = v37;
    v7 = v36;
    v45 = v39;
    v6 = v38;
    v127 = v43;
    v46 = 0;
    selfCopy3 = 0;
    *error = [v44 initWithDomain:v45 code:2 userInfo:?];
    goto LABEL_108;
  }

  v46 = 0;
  selfCopy3 = 0;
LABEL_109:

LABEL_110:
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMTextUnderstandingPoemBuffer *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_messageTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_spotlightId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPhotoAttachment)
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_extractions;
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

        v10 = *(*(&v21 + 1) + 8 * v9);
        v20 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_continuousFeatures;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v13);
  }

  if (self->_rawMessage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_senderId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v46.receiver = self;
  v46.super_class = BMTextUnderstandingPoemBuffer;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_65;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (LOBYTE(v47[0]) & 0x7F) << v9;
        if ((LOBYTE(v47[0]) & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 4)
      {
        if (v17 > 6)
        {
          if (v17 == 7)
          {
            v18 = PBReaderReadString();
            v19 = 72;
            goto LABEL_51;
          }

          if (v17 == 8)
          {
            v18 = PBReaderReadString();
            v19 = 80;
            goto LABEL_51;
          }
        }

        else
        {
          if (v17 == 5)
          {
            v47[0] = 0.0;
            v47[1] = 0.0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_67;
            }

            v32 = [[BMTextUnderstandingPoemBufferExtraction alloc] initByReadFrom:fromCopy];
            if (!v32)
            {
              goto LABEL_67;
            }

            v33 = v32;
            [v6 addObject:v32];
            PBReaderRecallMark();
LABEL_61:

            goto LABEL_62;
          }

          if (v17 == 6)
          {
            v20 = MEMORY[0x1E696AD98];
            v47[0] = 0.0;
            v21 = [fromCopy position] + 8;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 8, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 = [v20 numberWithDouble:v47[0]];
            if (!v37)
            {
LABEL_67:

              goto LABEL_64;
            }

            v33 = v37;
            [v7 addObject:v37];
            goto LABEL_61;
          }
        }
      }

      else if (v17 > 2)
      {
        if (v17 == 3)
        {
          v18 = PBReaderReadString();
          v19 = 48;
          goto LABEL_51;
        }

        if (v17 == 4)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          v5->_hasPhotoAttachment = 1;
          while (1)
          {
            LOBYTE(v47[0]) = 0;
            v26 = [fromCopy position] + 1;
            if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v25 |= (LOBYTE(v47[0]) & 0x7F) << v23;
            if ((LOBYTE(v47[0]) & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v15 = v24++ >= 9;
            if (v15)
            {
              LOBYTE(v29) = 0;
              goto LABEL_55;
            }
          }

          v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_55:
          v5->_photoAttachment = v29;
          goto LABEL_62;
        }
      }

      else
      {
        if (v17 == 1)
        {
          v5->_hasRaw_messageTimestamp = 1;
          v47[0] = 0.0;
          v30 = [fromCopy position] + 8;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 8, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v47 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_messageTimestamp = v47[0];
          goto LABEL_62;
        }

        if (v17 == 2)
        {
          v18 = PBReaderReadString();
          v19 = 40;
LABEL_51:
          v34 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_62:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v39 = [v6 copy];
  extractions = v5->_extractions;
  v5->_extractions = v39;

  v41 = [v7 copy];
  continuousFeatures = v5->_continuousFeatures;
  v5->_continuousFeatures = v41;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_64:
    v44 = 0;
  }

  else
  {
LABEL_65:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  messageTimestamp = [(BMTextUnderstandingPoemBuffer *)self messageTimestamp];
  conversationId = [(BMTextUnderstandingPoemBuffer *)self conversationId];
  spotlightId = [(BMTextUnderstandingPoemBuffer *)self spotlightId];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMTextUnderstandingPoemBuffer photoAttachment](self, "photoAttachment")}];
  extractions = [(BMTextUnderstandingPoemBuffer *)self extractions];
  continuousFeatures = [(BMTextUnderstandingPoemBuffer *)self continuousFeatures];
  rawMessage = [(BMTextUnderstandingPoemBuffer *)self rawMessage];
  senderId = [(BMTextUnderstandingPoemBuffer *)self senderId];
  v12 = [v3 initWithFormat:@"BMTextUnderstandingPoemBuffer with messageTimestamp: %@, conversationId: %@, spotlightId: %@, photoAttachment: %@, extractions: %@, continuousFeatures: %@, rawMessage: %@, senderId: %@", messageTimestamp, conversationId, spotlightId, v7, extractions, continuousFeatures, rawMessage, senderId];

  return v12;
}

- (BMTextUnderstandingPoemBuffer)initWithMessageTimestamp:(id)timestamp conversationId:(id)id spotlightId:(id)spotlightId photoAttachment:(id)attachment extractions:(id)extractions continuousFeatures:(id)features rawMessage:(id)message senderId:(id)self0
{
  timestampCopy = timestamp;
  idCopy = id;
  spotlightIdCopy = spotlightId;
  attachmentCopy = attachment;
  extractionsCopy = extractions;
  featuresCopy = features;
  messageCopy = message;
  senderIdCopy = senderId;
  v27.receiver = self;
  v27.super_class = BMTextUnderstandingPoemBuffer;
  v18 = [(BMEventBase *)&v27 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_messageTimestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_messageTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_messageTimestamp = v19;
    objc_storeStrong(&v18->_conversationId, id);
    objc_storeStrong(&v18->_spotlightId, spotlightId);
    if (attachmentCopy)
    {
      v18->_hasPhotoAttachment = 1;
      v18->_photoAttachment = [attachmentCopy BOOLValue];
    }

    else
    {
      v18->_hasPhotoAttachment = 0;
      v18->_photoAttachment = 0;
    }

    objc_storeStrong(&v18->_extractions, extractions);
    objc_storeStrong(&v18->_continuousFeatures, features);
    objc_storeStrong(&v18->_rawMessage, message);
    objc_storeStrong(&v18->_senderId, senderId);
  }

  return v18;
}

+ (id)protoFields
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageTimestamp" number:1 type:0 subMessageClass:0];
  v12[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:2 type:13 subMessageClass:0];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"spotlightId" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoAttachment" number:4 type:12 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extractions" number:5 type:14 subMessageClass:objc_opt_class()];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"continuousFeatures" number:6 type:0 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMessage" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"senderId" number:8 type:13 subMessageClass:0];
  v12[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)columns
{
  v12[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"spotlightId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoAttachment" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"extractions_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_245];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"continuousFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_247];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMessage" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"senderId" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
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

id __40__BMTextUnderstandingPoemBuffer_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _continuousFeaturesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMTextUnderstandingPoemBuffer_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _extractionsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMTextUnderstandingPoemBuffer alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end