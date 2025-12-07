@interface BMProactiveHarvestingNotificationStack
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingNotificationStack)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingNotificationStack)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp notificationIDs:(id)ds appBundleID:(id)iD threadID:(id)threadID stackState:(id)state sectionID:(id)sectionID contentProtection:(id)self0 personaId:(id)self1;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_notificationIDsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingNotificationStack

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_35;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_35;
      }
    }

    notificationIDs = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
    notificationIDs2 = [v5 notificationIDs];
    v21 = notificationIDs2;
    if (notificationIDs == notificationIDs2)
    {
    }

    else
    {
      notificationIDs3 = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
      notificationIDs4 = [v5 notificationIDs];
      v24 = [notificationIDs3 isEqual:notificationIDs4];

      if (!v24)
      {
        goto LABEL_35;
      }
    }

    appBundleID = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
    appBundleID2 = [v5 appBundleID];
    v27 = appBundleID2;
    if (appBundleID == appBundleID2)
    {
    }

    else
    {
      appBundleID3 = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
      appBundleID4 = [v5 appBundleID];
      v30 = [appBundleID3 isEqual:appBundleID4];

      if (!v30)
      {
        goto LABEL_35;
      }
    }

    threadID = [(BMProactiveHarvestingNotificationStack *)self threadID];
    threadID2 = [v5 threadID];
    v33 = threadID2;
    if (threadID == threadID2)
    {
    }

    else
    {
      threadID3 = [(BMProactiveHarvestingNotificationStack *)self threadID];
      threadID4 = [v5 threadID];
      v36 = [threadID3 isEqual:threadID4];

      if (!v36)
      {
        goto LABEL_35;
      }
    }

    if (-[BMProactiveHarvestingNotificationStack hasStackState](self, "hasStackState") || [v5 hasStackState])
    {
      if (![(BMProactiveHarvestingNotificationStack *)self hasStackState])
      {
        goto LABEL_35;
      }

      if (![v5 hasStackState])
      {
        goto LABEL_35;
      }

      stackState = [(BMProactiveHarvestingNotificationStack *)self stackState];
      if (stackState != [v5 stackState])
      {
        goto LABEL_35;
      }
    }

    if (-[BMProactiveHarvestingNotificationStack hasSectionID](self, "hasSectionID") || [v5 hasSectionID])
    {
      if (![(BMProactiveHarvestingNotificationStack *)self hasSectionID])
      {
        goto LABEL_35;
      }

      if (![v5 hasSectionID])
      {
        goto LABEL_35;
      }

      sectionID = [(BMProactiveHarvestingNotificationStack *)self sectionID];
      if (sectionID != [v5 sectionID])
      {
        goto LABEL_35;
      }
    }

    contentProtection = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v41 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v44 = [contentProtection3 isEqual:contentProtection4];

      if (!v44)
      {
LABEL_35:
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    personaId = [(BMProactiveHarvestingNotificationStack *)self personaId];
    personaId2 = [v5 personaId];
    if (personaId == personaId2)
    {
      v12 = 1;
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingNotificationStack *)self personaId];
      personaId4 = [v5 personaId];
      v12 = [personaId3 isEqual:personaId4];
    }

    goto LABEL_36;
  }

  v12 = 0;
LABEL_37:

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
  v34[9] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
  absoluteTimestamp = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  _notificationIDsJSONArray = [(BMProactiveHarvestingNotificationStack *)self _notificationIDsJSONArray];
  appBundleID = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
  threadID = [(BMProactiveHarvestingNotificationStack *)self threadID];
  if ([(BMProactiveHarvestingNotificationStack *)self hasStackState])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack stackState](self, "stackState")}];
  }

  else
  {
    v32 = 0;
  }

  if ([(BMProactiveHarvestingNotificationStack *)self hasSectionID])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack sectionID](self, "sectionID")}];
  }

  else
  {
    v31 = 0;
  }

  contentProtection = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
  personaId = [(BMProactiveHarvestingNotificationStack *)self personaId];
  v33[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v34[0] = null;
  v33[1] = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v34[1] = null2;
  v33[2] = @"notificationIDs";
  null3 = _notificationIDsJSONArray;
  if (!_notificationIDsJSONArray)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null3;
  v34[2] = null3;
  v33[3] = @"appBundleID";
  null4 = appBundleID;
  if (!appBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = uniqueID;
  v24 = null4;
  v34[3] = null4;
  v33[4] = @"threadID";
  null5 = threadID;
  if (!threadID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v7;
  v34[4] = null5;
  v33[5] = @"stackState";
  null6 = v32;
  if (!v32)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v34[5] = null6;
  v33[6] = @"sectionID";
  null7 = v31;
  if (!v31)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = threadID;
  v34[6] = null7;
  v33[7] = @"contentProtection";
  null8 = contentProtection;
  if (!contentProtection)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v34[7] = null8;
  v33[8] = @"personaId";
  null9 = personaId;
  if (!personaId)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v34[8] = null9;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:9];
  if (personaId)
  {
    if (contentProtection)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (contentProtection)
    {
      goto LABEL_30;
    }
  }

LABEL_30:
  if (!v31)
  {
  }

  if (!v32)
  {
  }

  if (!v20)
  {
  }

  if (appBundleID)
  {
    if (_notificationIDsJSONArray)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (_notificationIDsJSONArray)
    {
LABEL_38:
      if (v29)
      {
        goto LABEL_39;
      }

LABEL_47:

      if (v30)
      {
        goto LABEL_40;
      }

      goto LABEL_48;
    }
  }

  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_39:
  if (v30)
  {
    goto LABEL_40;
  }

LABEL_48:

LABEL_40:

  return v28;
}

- (id)_notificationIDsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  notificationIDs = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
  v5 = [notificationIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(notificationIDs);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [notificationIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMProactiveHarvestingNotificationStack)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v133[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v132 = *MEMORY[0x1E696A578];
        v17 = dictionaryCopy;
        selfCopy = self;
        v19 = objc_alloc(MEMORY[0x1E696AEC0]);
        v83 = objc_opt_class();
        v20 = v19;
        self = selfCopy;
        dictionaryCopy = v17;
        v8 = [v20 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v83, @"uniqueID"];
        v133[0] = v8;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:&v132 count:1];
        v21 = [v15 initWithDomain:v16 code:2 userInfo:v7];
        v22 = 0;
        selfCopy3 = 0;
        *error = v21;
        goto LABEL_100;
      }

      v22 = 0;
      selfCopy3 = 0;
      goto LABEL_101;
    }

    v105 = v6;
  }

  else
  {
    v105 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v103 = v7;
  v104 = v6;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
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
        v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v24 dateFromString:v7];

        goto LABEL_16;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v67 = objc_alloc(MEMORY[0x1E696ABC0]);
          v68 = *MEMORY[0x1E698F240];
          v130 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
          v131 = v25;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
          v69 = [v67 initWithDomain:v68 code:2 userInfo:v28];
          v8 = 0;
          selfCopy3 = 0;
          *error = v69;
          v22 = v105;
          goto LABEL_98;
        }

        v8 = 0;
        selfCopy3 = 0;
        v22 = v105;
        goto LABEL_100;
      }

      v14 = v7;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_16:
  v25 = [dictionaryCopy objectForKeyedSubscript:@"notificationIDs"];
  null = [MEMORY[0x1E695DFB0] null];
  v27 = [v25 isEqual:null];

  v102 = v8;
  if (v27)
  {

    v25 = 0;
  }

  else if (v25)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        selfCopy3 = 0;
        v22 = v105;
        goto LABEL_99;
      }

      v56 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v128 = *MEMORY[0x1E696A578];
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"notificationIDs"];
      v129 = v28;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
      v58 = [v56 initWithDomain:v57 code:2 userInfo:v36];
      selfCopy3 = 0;
      *error = v58;
LABEL_56:
      v22 = v105;
      goto LABEL_97;
    }
  }

  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v25 = v25;
  v29 = [v25 countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (!v29)
  {
    goto LABEL_29;
  }

  v30 = v29;
  v31 = *v108;
  v101 = dictionaryCopy;
  while (2)
  {
    selfCopy2 = self;
    for (i = 0; i != v30; ++i)
    {
      if (*v108 != v31)
      {
        objc_enumerationMutation(v25);
      }

      v34 = *(*(&v107 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v47 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v125 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"notificationIDs"];
          v126 = v35;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v50 = v47;
          v51 = v48;
LABEL_52:
          v55 = v49;
          self = selfCopy2;
          v22 = v105;
          selfCopy3 = 0;
          *error = [v50 initWithDomain:v51 code:2 userInfo:?];
          v36 = v25;
          dictionaryCopy = v101;
          v8 = v102;
          goto LABEL_95;
        }

        goto LABEL_53;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v123 = *MEMORY[0x1E696A578];
          v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"notificationIDs"];
          v124 = v54;
          v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
          v50 = v52;
          v51 = v53;
          v35 = v54;
          goto LABEL_52;
        }

LABEL_53:
        selfCopy3 = 0;
        v36 = v25;
        self = selfCopy2;
        dictionaryCopy = v101;
        goto LABEL_56;
      }

      [v28 addObject:v34];
    }

    v30 = [v25 countByEnumeratingWithState:&v107 objects:v127 count:16];
    self = selfCopy2;
    dictionaryCopy = v101;
    if (v30)
    {
      continue;
    }

    break;
  }

LABEL_29:

  v35 = [dictionaryCopy objectForKeyedSubscript:@"appBundleID"];
  if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
      goto LABEL_32;
    }

    if (error)
    {
      v59 = objc_alloc(MEMORY[0x1E696ABC0]);
      v60 = *MEMORY[0x1E698F240];
      v121 = *MEMORY[0x1E696A578];
      v61 = v35;
      v62 = objc_alloc(MEMORY[0x1E696AEC0]);
      v84 = objc_opt_class();
      v63 = v62;
      v35 = v61;
      v55 = [v63 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v84, @"appBundleID"];
      v122 = v55;
      v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      v64 = [v59 initWithDomain:v60 code:2 userInfo:?];
      v36 = 0;
      selfCopy3 = 0;
      *error = v64;
      v22 = v105;
      v8 = v102;

      goto LABEL_95;
    }

    v36 = 0;
    selfCopy3 = 0;
    v22 = v105;
  }

  else
  {
    v36 = 0;
LABEL_32:
    v37 = [dictionaryCopy objectForKeyedSubscript:@"threadID"];
    v95 = v35;
    v99 = v37;
    if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = v36;
        v96 = v38;
        goto LABEL_35;
      }

      selfCopy3 = error;
      if (error)
      {
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v119 = *MEMORY[0x1E696A578];
        v98 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"threadID"];
        v120 = v98;
        v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v66 = [v97 initWithDomain:v65 code:2 userInfo:?];
        v55 = 0;
        selfCopy3 = 0;
        v22 = v105;
        *error = v66;
        goto LABEL_93;
      }

      v55 = 0;
      v22 = v105;
    }

    else
    {
      v89 = v36;
      v96 = 0;
LABEL_35:
      v39 = [dictionaryCopy objectForKeyedSubscript:@"stackState"];
      v92 = v39;
      if (v39 && (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = v40;
          goto LABEL_38;
        }

        if (error)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v117 = *MEMORY[0x1E696A578];
          v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stackState"];
          v118 = v93;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
          v73 = v71;
          v35 = v95;
          v88 = v72;
          v98 = 0;
          selfCopy3 = 0;
          *error = [v70 initWithDomain:v73 code:2 userInfo:?];
          v22 = v105;
          v55 = v96;
          v36 = v89;
          goto LABEL_92;
        }

        v98 = 0;
        selfCopy3 = 0;
        v22 = v105;
        v55 = v96;
        v36 = v89;
      }

      else
      {
        v98 = 0;
LABEL_38:
        v41 = [dictionaryCopy objectForKeyedSubscript:@"sectionID"];
        v36 = v89;
        v88 = v41;
        if (v41 && (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v93 = v42;
            goto LABEL_41;
          }

          if (error)
          {
            v94 = objc_alloc(MEMORY[0x1E696ABC0]);
            v74 = *MEMORY[0x1E698F240];
            v115 = *MEMORY[0x1E696A578];
            v90 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sectionID"];
            v116 = v90;
            v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
            v76 = v74;
            v35 = v95;
            v77 = [v94 initWithDomain:v76 code:2 userInfo:v75];
            v93 = 0;
            selfCopy3 = 0;
            *error = v77;
            v22 = v105;
            goto LABEL_90;
          }

          v93 = 0;
          selfCopy3 = 0;
          v22 = v105;
        }

        else
        {
          v93 = 0;
LABEL_41:
          v43 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
          v87 = v43;
          if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = v44;
              goto LABEL_44;
            }

            if (error)
            {
              v91 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v113 = *MEMORY[0x1E696A578];
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
              v114 = v46;
              v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
              v79 = [v91 initWithDomain:v78 code:2 userInfo:v45];
              v90 = 0;
              selfCopy3 = 0;
              *error = v79;
              v22 = v105;
              goto LABEL_88;
            }

            v90 = 0;
            selfCopy3 = 0;
            v22 = v105;
          }

          else
          {
            v90 = 0;
LABEL_44:
            v45 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
            if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v46 = 0;
              v22 = v105;
              goto LABEL_47;
            }

            objc_opt_class();
            v22 = v105;
            if (objc_opt_isKindOfClass())
            {
              v46 = v45;
LABEL_47:
              self = [(BMProactiveHarvestingNotificationStack *)self initWithUniqueID:v22 absoluteTimestamp:v8 notificationIDs:v28 appBundleID:v89 threadID:v96 stackState:v98 sectionID:v93 contentProtection:v90 personaId:v46];
              selfCopy3 = self;
            }

            else
            {
              if (error)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v85 = *MEMORY[0x1E698F240];
                v111 = *MEMORY[0x1E696A578];
                v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
                v112 = v80;
                v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
                *error = [v86 initWithDomain:v85 code:2 userInfo:v81];
              }

              v46 = 0;
              selfCopy3 = 0;
            }

LABEL_88:

            v35 = v95;
          }

          v75 = v87;
LABEL_90:
        }

        v55 = v96;
LABEL_92:
      }

LABEL_93:
    }

LABEL_95:
  }

LABEL_97:
LABEL_98:

  v7 = v103;
  v6 = v104;
LABEL_99:

LABEL_100:
LABEL_101:

  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNotificationStack *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_notificationIDs;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_appBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasStackState)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_hasSectionID)
  {
    PBDataWriterWriteInt64Field();
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
  v45.receiver = self;
  v45.super_class = BMProactiveHarvestingNotificationStack;
  v5 = [(BMEventBase *)&v45 init];
  if (!v5)
  {
    goto LABEL_75;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_73;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v46) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v46) & 0x7F) << v8;
        if ((LOBYTE(v46) & 0x80) == 0)
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
        goto LABEL_73;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 4)
      {
        break;
      }

      if (v16 <= 2)
      {
        if (v16 == 1)
        {
          v17 = PBReaderReadString();
          v18 = 40;
          goto LABEL_58;
        }

        if (v16 == 2)
        {
          v5->_hasRaw_absoluteTimestamp = 1;
          v46 = 0.0;
          v19 = [fromCopy position] + 8;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 8, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_absoluteTimestamp = v46;
          goto LABEL_72;
        }

LABEL_59:
        if (!PBReaderSkipValueWithTag())
        {
LABEL_77:

          goto LABEL_74;
        }

        goto LABEL_72;
      }

      if (v16 != 3)
      {
        if (v16 == 4)
        {
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v28 = PBReaderReadString();
      if (!v28)
      {
        goto LABEL_77;
      }

      v29 = v28;
      [v6 addObject:v28];

LABEL_72:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_73;
      }
    }

    if (v16 <= 6)
    {
      if (v16 == 5)
      {
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_58;
      }

      if (v16 == 6)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasStackState = 1;
        while (1)
        {
          LOBYTE(v46) = 0;
          v24 = [fromCopy position] + 1;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v23 = (((LOBYTE(v46) & 0x7F) << v21) | v23);
          if ((LOBYTE(v46) & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v14 = v22++ >= 9;
          if (v14)
          {
            v27 = 0;
            goto LABEL_64;
          }
        }

        if ([fromCopy hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_64:
        v37 = 72;
        goto LABEL_69;
      }
    }

    else
    {
      switch(v16)
      {
        case 7:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasSectionID = 1;
          while (1)
          {
            LOBYTE(v46) = 0;
            v33 = [fromCopy position] + 1;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v46 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v32 = (((LOBYTE(v46) & 0x7F) << v30) | v32);
            if ((LOBYTE(v46) & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v14 = v31++ >= 9;
            if (v14)
            {
              v27 = 0;
              goto LABEL_68;
            }
          }

          if ([fromCopy hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v32;
          }

LABEL_68:
          v37 = 80;
LABEL_69:
          *(&v5->super.super.isa + v37) = v27;
          goto LABEL_72;
        case 8:
          v17 = PBReaderReadString();
          v18 = 88;
          goto LABEL_58;
        case 9:
          v17 = PBReaderReadString();
          v18 = 96;
LABEL_58:
          v36 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_72;
      }
    }

    goto LABEL_59;
  }

LABEL_73:
  v40 = [v6 copy];
  notificationIDs = v5->_notificationIDs;
  v5->_notificationIDs = v40;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_74:
    v43 = 0;
  }

  else
  {
LABEL_75:
    v43 = v5;
  }

  return v43;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingNotificationStack *)self uniqueID];
  absoluteTimestamp = [(BMProactiveHarvestingNotificationStack *)self absoluteTimestamp];
  notificationIDs = [(BMProactiveHarvestingNotificationStack *)self notificationIDs];
  appBundleID = [(BMProactiveHarvestingNotificationStack *)self appBundleID];
  threadID = [(BMProactiveHarvestingNotificationStack *)self threadID];
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack stackState](self, "stackState")}];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[BMProactiveHarvestingNotificationStack sectionID](self, "sectionID")}];
  contentProtection = [(BMProactiveHarvestingNotificationStack *)self contentProtection];
  personaId = [(BMProactiveHarvestingNotificationStack *)self personaId];
  v13 = [v3 initWithFormat:@"BMProactiveHarvestingNotificationStack with uniqueID: %@, absoluteTimestamp: %@, notificationIDs: %@, appBundleID: %@, threadID: %@, stackState: %@, sectionID: %@, contentProtection: %@, personaId: %@", uniqueID, absoluteTimestamp, notificationIDs, appBundleID, threadID, v9, v10, contentProtection, personaId];

  return v13;
}

- (BMProactiveHarvestingNotificationStack)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp notificationIDs:(id)ds appBundleID:(id)iD threadID:(id)threadID stackState:(id)state sectionID:(id)sectionID contentProtection:(id)self0 personaId:(id)self1
{
  dCopy = d;
  timestampCopy = timestamp;
  dsCopy = ds;
  iDCopy = iD;
  threadIDCopy = threadID;
  stateCopy = state;
  sectionIDCopy = sectionID;
  protectionCopy = protection;
  idCopy = id;
  v32.receiver = self;
  v32.super_class = BMProactiveHarvestingNotificationStack;
  v21 = [(BMEventBase *)&v32 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v21->_uniqueID, d);
    if (timestampCopy)
    {
      v21->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v21->_hasRaw_absoluteTimestamp = 0;
      v22 = -1.0;
    }

    v21->_raw_absoluteTimestamp = v22;
    objc_storeStrong(&v21->_notificationIDs, ds);
    objc_storeStrong(&v21->_appBundleID, iD);
    objc_storeStrong(&v21->_threadID, threadID);
    if (stateCopy)
    {
      v21->_hasStackState = 1;
      longLongValue = [stateCopy longLongValue];
    }

    else
    {
      v21->_hasStackState = 0;
      longLongValue = -1;
    }

    v21->_stackState = longLongValue;
    if (sectionIDCopy)
    {
      v21->_hasSectionID = 1;
      longLongValue2 = [sectionIDCopy longLongValue];
    }

    else
    {
      v21->_hasSectionID = 0;
      longLongValue2 = -1;
    }

    v21->_sectionID = longLongValue2;
    objc_storeStrong(&v21->_contentProtection, protection);
    objc_storeStrong(&v21->_personaId, id);
  }

  return v21;
}

+ (id)protoFields
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v13[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationIDs" number:3 type:13 subMessageClass:0];
  v13[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appBundleID" number:4 type:13 subMessageClass:0];
  v13[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threadID" number:5 type:13 subMessageClass:0];
  v13[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stackState" number:6 type:3 subMessageClass:0];
  v13[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sectionID" number:7 type:3 subMessageClass:0];
  v13[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:8 type:13 subMessageClass:0];
  v13[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:9 type:13 subMessageClass:0];
  v13[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  return v11;
}

+ (id)columns
{
  v13[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"notificationIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_30805];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threadID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stackState" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:3 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sectionID" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:3 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
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

id __49__BMProactiveHarvestingNotificationStack_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _notificationIDsJSONArray];
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

    v8 = [[BMProactiveHarvestingNotificationStack alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end