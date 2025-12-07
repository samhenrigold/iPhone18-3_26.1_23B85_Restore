@interface BMProactiveHarvestingPhotosKnowledgeGraphEnrichment
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithAbsoluteTimestamp:(id)timestamp topics:(id)topics entities:(id)entities locations:(id)locations uniqueID:(id)d contentProtection:(id)protection personaId:(id)id;
- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_entitiesJSONArray;
- (id)_locationsJSONArray;
- (id)_topicsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingPhotosKnowledgeGraphEnrichment

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_25;
      }
    }

    topics = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
    topics2 = [v5 topics];
    v15 = topics2;
    if (topics == topics2)
    {
    }

    else
    {
      topics3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
      topics4 = [v5 topics];
      v18 = [topics3 isEqual:topics4];

      if (!v18)
      {
        goto LABEL_25;
      }
    }

    entities = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
    entities2 = [v5 entities];
    v21 = entities2;
    if (entities == entities2)
    {
    }

    else
    {
      entities3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
      entities4 = [v5 entities];
      v24 = [entities3 isEqual:entities4];

      if (!v24)
      {
        goto LABEL_25;
      }
    }

    locations = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
    locations2 = [v5 locations];
    v27 = locations2;
    if (locations == locations2)
    {
    }

    else
    {
      locations3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
      locations4 = [v5 locations];
      v30 = [locations3 isEqual:locations4];

      if (!v30)
      {
        goto LABEL_25;
      }
    }

    uniqueID = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v33 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v36 = [uniqueID3 isEqual:uniqueID4];

      if (!v36)
      {
        goto LABEL_25;
      }
    }

    contentProtection = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v39 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v42 = [contentProtection3 isEqual:contentProtection4];

      if (!v42)
      {
LABEL_25:
        v12 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    personaId = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_26;
  }

  v12 = 0;
LABEL_27:

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
  v28[7] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  _topicsJSONArray = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _topicsJSONArray];
  _entitiesJSONArray = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _entitiesJSONArray];
  _locationsJSONArray = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self _locationsJSONArray];
  uniqueID = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
  personaId = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
  v27[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null;
  v28[0] = null;
  v27[1] = @"topics";
  null2 = _topicsJSONArray;
  if (!_topicsJSONArray)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null2;
  v28[1] = null2;
  v27[2] = @"entities";
  null3 = _entitiesJSONArray;
  if (!_entitiesJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v6;
  v22 = null3;
  v28[2] = null3;
  v27[3] = @"locations";
  null4 = _locationsJSONArray;
  if (!_locationsJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = _topicsJSONArray;
  v28[3] = null4;
  v27[4] = @"uniqueID";
  null5 = uniqueID;
  if (!uniqueID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[4] = null5;
  v27[5] = @"contentProtection";
  null6 = contentProtection;
  if (!contentProtection)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null6;
  v27[6] = @"personaId";
  null7 = personaId;
  if (!personaId)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = null7;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:7];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_20;
    }

LABEL_30:

    if (uniqueID)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (!contentProtection)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (uniqueID)
  {
    goto LABEL_21;
  }

LABEL_31:

LABEL_21:
  if (!_locationsJSONArray)
  {
  }

  if (_entitiesJSONArray)
  {
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_33:

    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

  if (!v25)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v26)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:

  return v20;
}

- (id)_locationsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  locations = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
  v5 = [locations countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(locations);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [locations countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_entitiesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  entities = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
  v5 = [entities countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(entities);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [entities countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_topicsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  topics = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
  v5 = [topics countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(topics);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [topics countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v154[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v105 = v6;
  if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v104 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = MEMORY[0x1E695DF00];
    v9 = v7;
    v10 = [v8 alloc];
    [v9 doubleValue];
    v12 = v11;

    v13 = [v10 initWithTimeIntervalSinceReferenceDate:v12];
LABEL_6:
    v104 = v13;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v104 = [v14 dateFromString:v7];

LABEL_9:
    v15 = [dictionaryCopy objectForKeyedSubscript:@"topics"];
    null = [MEMORY[0x1E695DFB0] null];
    v17 = [v15 isEqual:null];

    if (v17)
    {
      selfCopy2 = self;

      v15 = 0;
    }

    else
    {
      if (v15)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v33 = 0;
            v37 = v104;
            goto LABEL_124;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v50 = *MEMORY[0x1E698F240];
          v151 = *MEMORY[0x1E696A578];
          v109 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"topics"];
          v152 = v109;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v152 forKeys:&v151 count:1];
          v33 = 0;
          *error = [v49 initWithDomain:v50 code:2 userInfo:v27];
          goto LABEL_52;
        }
      }

      selfCopy2 = self;
    }

    v109 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v15;
    v18 = [obj countByEnumeratingWithState:&v122 objects:v150 count:16];
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = *v123;
    v102 = dictionaryCopy;
LABEL_16:
    v21 = 0;
    while (1)
    {
      if (*v123 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v122 + 1) + 8 * v21);
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
          v34 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v146 = *MEMORY[0x1E696A578];
          v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"topics"];
          v147 = v23;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v33 = 0;
          *error = [v34 initWithDomain:v35 code:2 userInfo:v32];
          goto LABEL_30;
        }

        goto LABEL_51;
      }

      v23 = v22;
      v24 = [BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic alloc];
      v121 = 0;
      v25 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic *)v24 initWithJSONDictionary:v23 error:&v121];
      v26 = v121;
      if (v26)
      {
        v32 = v26;
        self = selfCopy2;
        dictionaryCopy = v102;
        if (error)
        {
          v36 = v26;
          *error = v32;
        }

        v33 = 0;
        v15 = obj;
        v107 = obj;
        goto LABEL_34;
      }

      [v109 addObject:v25];

      if (v19 == ++v21)
      {
        v19 = [obj countByEnumeratingWithState:&v122 objects:v150 count:16];
        dictionaryCopy = v102;
        if (!v19)
        {
LABEL_24:

          v27 = [dictionaryCopy objectForKeyedSubscript:@"entities"];
          null2 = [MEMORY[0x1E695DFB0] null];
          v29 = [v27 isEqual:null2];

          if (v29)
          {

            v27 = 0;
          }

          else if (v27)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              self = selfCopy2;
              if (!error)
              {
                v33 = 0;
                v37 = v104;
                v15 = obj;
                goto LABEL_122;
              }

              v107 = v27;
              v69 = objc_alloc(MEMORY[0x1E696ABC0]);
              v70 = *MEMORY[0x1E698F240];
              v144 = *MEMORY[0x1E696A578];
              v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"entities"];
              v145 = v23;
              v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
              v33 = 0;
              *error = [v69 initWithDomain:v70 code:2 userInfo:v32];
              goto LABEL_85;
            }
          }

          v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
          v117 = 0u;
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v107 = v27;
          v38 = [v107 countByEnumeratingWithState:&v117 objects:v143 count:16];
          if (!v38)
          {
            goto LABEL_47;
          }

          v39 = v38;
          v40 = *v118;
          v103 = dictionaryCopy;
LABEL_39:
          v41 = 0;
          while (1)
          {
            if (*v118 != v40)
            {
              objc_enumerationMutation(v107);
            }

            v42 = *(*(&v117 + 1) + 8 * v41);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              errorCopy6 = error;
              if (error)
              {
                v52 = objc_alloc(MEMORY[0x1E696ABC0]);
                v53 = *MEMORY[0x1E698F240];
                v139 = *MEMORY[0x1E696A578];
                v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entities"];
                v140 = v43;
                v54 = MEMORY[0x1E695DF20];
                v55 = &v140;
                v56 = &v139;
                goto LABEL_60;
              }

              goto LABEL_83;
            }

            v43 = v42;
            v44 = [BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity alloc];
            v116 = 0;
            v45 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity *)v44 initWithJSONDictionary:v43 error:&v116];
            v46 = v116;
            if (v46)
            {
              v57 = v46;
              v15 = obj;
              if (error)
              {
                v58 = v46;
                *error = v57;
              }

              v33 = 0;
              v32 = v107;
              dictionaryCopy = v103;
              goto LABEL_119;
            }

            [v23 addObject:v45];

            if (v39 == ++v41)
            {
              v39 = [v107 countByEnumeratingWithState:&v117 objects:v143 count:16];
              dictionaryCopy = v103;
              if (!v39)
              {
LABEL_47:

                v32 = [dictionaryCopy objectForKeyedSubscript:@"locations"];
                null3 = [MEMORY[0x1E695DFB0] null];
                v48 = [v32 isEqual:null3];

                if (v48)
                {

                  v32 = 0;
LABEL_68:
                  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count")}];
                  v112 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v115 = 0u;
                  v32 = v32;
                  v59 = [v32 countByEnumeratingWithState:&v112 objects:v136 count:16];
                  if (!v59)
                  {
                    goto LABEL_78;
                  }

                  v60 = v59;
                  v61 = *v113;
                  v103 = dictionaryCopy;
LABEL_70:
                  v62 = 0;
                  while (1)
                  {
                    if (*v113 != v61)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v63 = *(*(&v112 + 1) + 8 * v62);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      break;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      errorCopy5 = error;
                      if (error)
                      {
                        v75 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v76 = *MEMORY[0x1E698F240];
                        v132 = *MEMORY[0x1E696A578];
                        v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"locations"];
                        v133 = v64;
                        v77 = MEMORY[0x1E695DF20];
                        v78 = &v133;
                        v79 = &v132;
                        goto LABEL_93;
                      }

                      goto LABEL_101;
                    }

                    v64 = v63;
                    v65 = [BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation alloc];
                    v111 = 0;
                    v66 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation *)v65 initWithJSONDictionary:v64 error:&v111];
                    v67 = v111;
                    if (v67)
                    {
                      v80 = v67;
                      if (error)
                      {
                        v82 = v67;
                        *error = v80;
                      }

                      v33 = 0;
                      goto LABEL_97;
                    }

                    [v43 addObject:v66];

                    if (v60 == ++v62)
                    {
                      v60 = [v32 countByEnumeratingWithState:&v112 objects:v136 count:16];
                      dictionaryCopy = v103;
                      if (v60)
                      {
                        goto LABEL_70;
                      }

LABEL_78:

                      v64 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
                      if (!v64)
                      {
                        v57 = 0;
                        errorCopy4 = error;
                        goto LABEL_105;
                      }

                      objc_opt_class();
                      errorCopy4 = error;
                      if (objc_opt_isKindOfClass())
                      {
                        v57 = 0;
                        goto LABEL_105;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (error)
                        {
                          v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v90 = *MEMORY[0x1E698F240];
                          v130 = *MEMORY[0x1E696A578];
                          v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
                          v131 = v80;
                          v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
                          v91 = [v89 initWithDomain:v90 code:2 userInfo:?];
                          v57 = 0;
                          v33 = 0;
                          *error = v91;
                          goto LABEL_138;
                        }

                        v57 = 0;
                        v33 = 0;
                        v15 = obj;
                        goto LABEL_118;
                      }

                      v57 = v64;
LABEL_105:
                      v80 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
                      v100 = v80;
                      if (v80)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v80 = 0;
                          goto LABEL_110;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v80 = v80;
                          goto LABEL_110;
                        }

                        if (errorCopy4)
                        {
                          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v94 = *MEMORY[0x1E698F240];
                          v128 = *MEMORY[0x1E696A578];
                          v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
                          v129 = v98;
                          v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                          v80 = 0;
                          v33 = 0;
                          *errorCopy4 = [v96 initWithDomain:v94 code:2 userInfo:v92];
                          v87 = v92;
                          v15 = obj;
                          goto LABEL_115;
                        }

                        v80 = 0;
                        v33 = 0;
LABEL_138:
                        v15 = obj;
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
                        v37 = v104;
LABEL_120:

                        self = selfCopy2;
LABEL_121:

                        v27 = v107;
LABEL_122:

LABEL_124:
                        v7 = v105;
                        goto LABEL_125;
                      }

LABEL_110:
                      v86 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
                      v87 = v86;
                      if (v86)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v86 = 0;
                          goto LABEL_113;
                        }

                        objc_opt_class();
                        v15 = obj;
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (error)
                          {
                            v99 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v97 = *MEMORY[0x1E698F240];
                            v126 = *MEMORY[0x1E696A578];
                            v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                            v127 = v95;
                            v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                            *error = [v99 initWithDomain:v97 code:2 userInfo:v93];
                          }

                          v98 = 0;
                          v33 = 0;
LABEL_115:

                          goto LABEL_116;
                        }

                        v86 = v87;
                      }

                      else
                      {
LABEL_113:
                        v15 = obj;
                      }

                      v98 = v86;
                      v33 = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)selfCopy2 initWithAbsoluteTimestamp:v104 topics:v109 entities:v23 locations:v43 uniqueID:v57 contentProtection:v80 personaId:v86];
                      selfCopy2 = v33;
                      goto LABEL_115;
                    }
                  }

                  errorCopy5 = error;
                  if (error)
                  {
                    v75 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v76 = *MEMORY[0x1E698F240];
                    v134 = *MEMORY[0x1E696A578];
                    v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"locations"];
                    v135 = v64;
                    v77 = MEMORY[0x1E695DF20];
                    v78 = &v135;
                    v79 = &v134;
LABEL_93:
                    v80 = [v77 dictionaryWithObjects:v78 forKeys:v79 count:1];
                    v81 = [v75 initWithDomain:v76 code:2 userInfo:v80];
                    v33 = 0;
                    *errorCopy5 = v81;
LABEL_97:
                    v57 = v32;
                    dictionaryCopy = v103;
                    v15 = obj;
                    goto LABEL_117;
                  }

LABEL_101:
                  v33 = 0;
                  v57 = v32;
LABEL_61:
                  dictionaryCopy = v103;
LABEL_62:
                  v37 = v104;
                  v15 = obj;
                  goto LABEL_120;
                }

                if (!v32)
                {
                  goto LABEL_68;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_68;
                }

                if (error)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v84 = *MEMORY[0x1E698F240];
                  v137 = *MEMORY[0x1E696A578];
                  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"locations"];
                  v138 = v43;
                  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                  v85 = [v83 initWithDomain:v84 code:2 userInfo:v57];
                  v33 = 0;
                  *error = v85;
                  goto LABEL_62;
                }

                v33 = 0;
LABEL_84:
                self = selfCopy2;
LABEL_85:
                v37 = v104;
                v15 = obj;
                goto LABEL_121;
              }

              goto LABEL_39;
            }
          }

          errorCopy6 = error;
          if (error)
          {
            v52 = objc_alloc(MEMORY[0x1E696ABC0]);
            v53 = *MEMORY[0x1E698F240];
            v141 = *MEMORY[0x1E696A578];
            v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"entities"];
            v142 = v43;
            v54 = MEMORY[0x1E695DF20];
            v55 = &v142;
            v56 = &v141;
LABEL_60:
            v57 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:1];
            v33 = 0;
            *errorCopy6 = [v52 initWithDomain:v53 code:2 userInfo:v57];
            v32 = v107;
            goto LABEL_61;
          }

LABEL_83:
          v33 = 0;
          v32 = v107;
          dictionaryCopy = v103;
          goto LABEL_84;
        }

        goto LABEL_16;
      }
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = *MEMORY[0x1E698F240];
      v148 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"topics"];
      v149 = v23;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      v33 = 0;
      *error = [v30 initWithDomain:v31 code:2 userInfo:v32];
LABEL_30:
      v15 = obj;
      v107 = obj;
      self = selfCopy2;
      dictionaryCopy = v102;
LABEL_34:
      v37 = v104;
      goto LABEL_121;
    }

LABEL_51:
    v33 = 0;
    v15 = obj;
    v27 = obj;
    self = selfCopy2;
    dictionaryCopy = v102;
LABEL_52:
    v37 = v104;
    goto LABEL_122;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v7;
    goto LABEL_6;
  }

  if (error)
  {
    v71 = objc_alloc(MEMORY[0x1E696ABC0]);
    v72 = *MEMORY[0x1E698F240];
    v153 = *MEMORY[0x1E696A578];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
    v154[0] = v15;
    v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:&v153 count:1];
    v73 = [v71 initWithDomain:v72 code:2 userInfo:?];
    v37 = 0;
    v33 = 0;
    *error = v73;

    goto LABEL_124;
  }

  v37 = 0;
  v33 = 0;
LABEL_125:

  return v33;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_topics;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v31 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_entities;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      v15 = 0;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        v31 = 0;
        PBDataWriterPlaceMark();
        [v16 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v13);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = self->_locations;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        v31 = 0;
        PBDataWriterPlaceMark();
        [v22 writeTo:{toCopy, v23}];
        PBDataWriterRecallMark();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v23 objects:v36 count:16];
    }

    while (v19);
  }

  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichment;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_51;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v13 = [fromCopy position] + 1;
        if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v12 |= (LOBYTE(v41) & 0x7F) << v10;
        if ((LOBYTE(v41) & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_16;
        }
      }

      v17 = [fromCopy hasError] ? 0 : v12;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        break;
      }

      v18 = v17 >> 3;
      if ((v17 >> 3) <= 3)
      {
        switch(v18)
        {
          case 1:
            v5->_hasRaw_absoluteTimestamp = 1;
            v41 = 0.0;
            v24 = [fromCopy position] + 8;
            if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 8, v25 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v5->_raw_absoluteTimestamp = v41;
            goto LABEL_48;
          case 2:
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark() || (v28 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentTopic alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_53:

              goto LABEL_50;
            }

            v22 = v28;
            v23 = v6;
            goto LABEL_45;
          case 3:
            v41 = 0.0;
            v42 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_53;
            }

            v21 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentEntity alloc] initByReadFrom:fromCopy];
            if (!v21)
            {
              goto LABEL_53;
            }

            v22 = v21;
            v23 = v7;
            goto LABEL_45;
        }
      }

      else if (v18 > 5)
      {
        if (v18 == 6)
        {
          v19 = PBReaderReadString();
          v20 = 72;
          goto LABEL_41;
        }

        if (v18 == 7)
        {
          v19 = PBReaderReadString();
          v20 = 80;
          goto LABEL_41;
        }
      }

      else
      {
        if (v18 == 4)
        {
          v41 = 0.0;
          v42 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_53;
          }

          v26 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichmentLocation alloc] initByReadFrom:fromCopy];
          if (!v26)
          {
            goto LABEL_53;
          }

          v22 = v26;
          v23 = v8;
LABEL_45:
          [v23 addObject:v22];
          PBReaderRecallMark();

          goto LABEL_48;
        }

        if (v18 == 5)
        {
          v19 = PBReaderReadString();
          v20 = 64;
LABEL_41:
          v27 = *(&v5->super.super.isa + v20);
          *(&v5->super.super.isa + v20) = v19;

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_48:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v31 = [v6 copy];
  topics = v5->_topics;
  v5->_topics = v31;

  v33 = [v7 copy];
  entities = v5->_entities;
  v5->_entities = v33;

  v35 = [v8 copy];
  locations = v5->_locations;
  v5->_locations = v35;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_50:
    v38 = 0;
  }

  else
  {
LABEL_51:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self absoluteTimestamp];
  topics = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self topics];
  entities = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self entities];
  locations = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self locations];
  uniqueID = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self uniqueID];
  contentProtection = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self contentProtection];
  personaId = [(BMProactiveHarvestingPhotosKnowledgeGraphEnrichment *)self personaId];
  v11 = [v3 initWithFormat:@"BMProactiveHarvestingPhotosKnowledgeGraphEnrichment with absoluteTimestamp: %@, topics: %@, entities: %@, locations: %@, uniqueID: %@, contentProtection: %@, personaId: %@", absoluteTimestamp, topics, entities, locations, uniqueID, contentProtection, personaId];

  return v11;
}

- (BMProactiveHarvestingPhotosKnowledgeGraphEnrichment)initWithAbsoluteTimestamp:(id)timestamp topics:(id)topics entities:(id)entities locations:(id)locations uniqueID:(id)d contentProtection:(id)protection personaId:(id)id
{
  timestampCopy = timestamp;
  topicsCopy = topics;
  entitiesCopy = entities;
  locationsCopy = locations;
  dCopy = d;
  protectionCopy = protection;
  idCopy = id;
  v25.receiver = self;
  v25.super_class = BMProactiveHarvestingPhotosKnowledgeGraphEnrichment;
  v18 = [(BMEventBase *)&v25 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_topics, topics);
    objc_storeStrong(&v18->_entities, entities);
    objc_storeStrong(&v18->_locations, locations);
    objc_storeStrong(&v18->_uniqueID, d);
    objc_storeStrong(&v18->_contentProtection, protection);
    objc_storeStrong(&v18->_personaId, id);
  }

  return v18;
}

+ (id)protoFields
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"topics" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entities" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locations" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:7 type:13 subMessageClass:0];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)columns
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"topics_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_65059];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_269];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"locations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_271];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
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

id __62__BMProactiveHarvestingPhotosKnowledgeGraphEnrichment_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _locationsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __62__BMProactiveHarvestingPhotosKnowledgeGraphEnrichment_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _entitiesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __62__BMProactiveHarvestingPhotosKnowledgeGraphEnrichment_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _topicsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingPhotosKnowledgeGraphEnrichment alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[8] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end