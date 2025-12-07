@interface BMProactiveHarvestingNotifications
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingNotifications)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingNotifications)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp bundleID:(id)iD notificationID:(id)notificationID title:(id)title subtitle:(id)subtitle body:(id)body threadID:(id)self0 category:(id)self1 isGroupMessage:(id)self2 isTimeSensitive:(id)self3 isCritical:(id)self4 isCommunicationNotification:(id)self5 contentProtection:(id)self6 personaId:(id)self7 attachments:(id)self8 fromHandles:(id)self9 toHandles:(id)toHandles;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_attachmentsJSONArray;
- (id)_fromHandlesJSONArray;
- (id)_toHandlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingNotifications

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingNotifications *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingNotifications *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_73;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_73;
      }
    }

    bundleID = [(BMProactiveHarvestingNotifications *)self bundleID];
    bundleID2 = [v5 bundleID];
    v21 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMProactiveHarvestingNotifications *)self bundleID];
      bundleID4 = [v5 bundleID];
      v24 = [bundleID3 isEqual:bundleID4];

      if (!v24)
      {
        goto LABEL_73;
      }
    }

    notificationID = [(BMProactiveHarvestingNotifications *)self notificationID];
    notificationID2 = [v5 notificationID];
    v27 = notificationID2;
    if (notificationID == notificationID2)
    {
    }

    else
    {
      notificationID3 = [(BMProactiveHarvestingNotifications *)self notificationID];
      notificationID4 = [v5 notificationID];
      v30 = [notificationID3 isEqual:notificationID4];

      if (!v30)
      {
        goto LABEL_73;
      }
    }

    title = [(BMProactiveHarvestingNotifications *)self title];
    title2 = [v5 title];
    v33 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMProactiveHarvestingNotifications *)self title];
      title4 = [v5 title];
      v36 = [title3 isEqual:title4];

      if (!v36)
      {
        goto LABEL_73;
      }
    }

    subtitle = [(BMProactiveHarvestingNotifications *)self subtitle];
    subtitle2 = [v5 subtitle];
    v39 = subtitle2;
    if (subtitle == subtitle2)
    {
    }

    else
    {
      subtitle3 = [(BMProactiveHarvestingNotifications *)self subtitle];
      subtitle4 = [v5 subtitle];
      v42 = [subtitle3 isEqual:subtitle4];

      if (!v42)
      {
        goto LABEL_73;
      }
    }

    body = [(BMProactiveHarvestingNotifications *)self body];
    body2 = [v5 body];
    v45 = body2;
    if (body == body2)
    {
    }

    else
    {
      body3 = [(BMProactiveHarvestingNotifications *)self body];
      body4 = [v5 body];
      v48 = [body3 isEqual:body4];

      if (!v48)
      {
        goto LABEL_73;
      }
    }

    threadID = [(BMProactiveHarvestingNotifications *)self threadID];
    threadID2 = [v5 threadID];
    v51 = threadID2;
    if (threadID == threadID2)
    {
    }

    else
    {
      threadID3 = [(BMProactiveHarvestingNotifications *)self threadID];
      threadID4 = [v5 threadID];
      v54 = [threadID3 isEqual:threadID4];

      if (!v54)
      {
        goto LABEL_73;
      }
    }

    category = [(BMProactiveHarvestingNotifications *)self category];
    category2 = [v5 category];
    v57 = category2;
    if (category == category2)
    {
    }

    else
    {
      category3 = [(BMProactiveHarvestingNotifications *)self category];
      category4 = [v5 category];
      v60 = [category3 isEqual:category4];

      if (!v60)
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsGroupMessage](self, "hasIsGroupMessage") || [v5 hasIsGroupMessage])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsGroupMessage])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsGroupMessage])
      {
        goto LABEL_73;
      }

      isGroupMessage = [(BMProactiveHarvestingNotifications *)self isGroupMessage];
      if (isGroupMessage != [v5 isGroupMessage])
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsTimeSensitive](self, "hasIsTimeSensitive") || [v5 hasIsTimeSensitive])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsTimeSensitive])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsTimeSensitive])
      {
        goto LABEL_73;
      }

      isTimeSensitive = [(BMProactiveHarvestingNotifications *)self isTimeSensitive];
      if (isTimeSensitive != [v5 isTimeSensitive])
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsCritical](self, "hasIsCritical") || [v5 hasIsCritical])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsCritical])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsCritical])
      {
        goto LABEL_73;
      }

      isCritical = [(BMProactiveHarvestingNotifications *)self isCritical];
      if (isCritical != [v5 isCritical])
      {
        goto LABEL_73;
      }
    }

    if (-[BMProactiveHarvestingNotifications hasIsCommunicationNotification](self, "hasIsCommunicationNotification") || [v5 hasIsCommunicationNotification])
    {
      if (![(BMProactiveHarvestingNotifications *)self hasIsCommunicationNotification])
      {
        goto LABEL_73;
      }

      if (![v5 hasIsCommunicationNotification])
      {
        goto LABEL_73;
      }

      isCommunicationNotification = [(BMProactiveHarvestingNotifications *)self isCommunicationNotification];
      if (isCommunicationNotification != [v5 isCommunicationNotification])
      {
        goto LABEL_73;
      }
    }

    contentProtection = [(BMProactiveHarvestingNotifications *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v67 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingNotifications *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v70 = [contentProtection3 isEqual:contentProtection4];

      if (!v70)
      {
        goto LABEL_73;
      }
    }

    personaId = [(BMProactiveHarvestingNotifications *)self personaId];
    personaId2 = [v5 personaId];
    v73 = personaId2;
    if (personaId == personaId2)
    {
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingNotifications *)self personaId];
      personaId4 = [v5 personaId];
      v76 = [personaId3 isEqual:personaId4];

      if (!v76)
      {
        goto LABEL_73;
      }
    }

    attachments = [(BMProactiveHarvestingNotifications *)self attachments];
    attachments2 = [v5 attachments];
    v79 = attachments2;
    if (attachments == attachments2)
    {
    }

    else
    {
      attachments3 = [(BMProactiveHarvestingNotifications *)self attachments];
      attachments4 = [v5 attachments];
      v82 = [attachments3 isEqual:attachments4];

      if (!v82)
      {
        goto LABEL_73;
      }
    }

    fromHandles = [(BMProactiveHarvestingNotifications *)self fromHandles];
    fromHandles2 = [v5 fromHandles];
    v85 = fromHandles2;
    if (fromHandles == fromHandles2)
    {
    }

    else
    {
      fromHandles3 = [(BMProactiveHarvestingNotifications *)self fromHandles];
      fromHandles4 = [v5 fromHandles];
      v88 = [fromHandles3 isEqual:fromHandles4];

      if (!v88)
      {
LABEL_73:
        v12 = 0;
LABEL_74:

        goto LABEL_75;
      }
    }

    toHandles = [(BMProactiveHarvestingNotifications *)self toHandles];
    toHandles2 = [v5 toHandles];
    if (toHandles == toHandles2)
    {
      v12 = 1;
    }

    else
    {
      toHandles3 = [(BMProactiveHarvestingNotifications *)self toHandles];
      toHandles4 = [v5 toHandles];
      v12 = [toHandles3 isEqual:toHandles4];
    }

    goto LABEL_74;
  }

  v12 = 0;
LABEL_75:

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
  v64[18] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingNotifications *)self uniqueID];
  absoluteTimestamp = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  bundleID = [(BMProactiveHarvestingNotifications *)self bundleID];
  notificationID = [(BMProactiveHarvestingNotifications *)self notificationID];
  title = [(BMProactiveHarvestingNotifications *)self title];
  subtitle = [(BMProactiveHarvestingNotifications *)self subtitle];
  body = [(BMProactiveHarvestingNotifications *)self body];
  threadID = [(BMProactiveHarvestingNotifications *)self threadID];
  category = [(BMProactiveHarvestingNotifications *)self category];
  if ([(BMProactiveHarvestingNotifications *)self hasIsGroupMessage])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isGroupMessage](self, "isGroupMessage")}];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMProactiveHarvestingNotifications *)self hasIsTimeSensitive])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isTimeSensitive](self, "isTimeSensitive")}];
  }

  else
  {
    v59 = 0;
  }

  if ([(BMProactiveHarvestingNotifications *)self hasIsCritical])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCritical](self, "isCritical")}];
  }

  else
  {
    v58 = 0;
  }

  if ([(BMProactiveHarvestingNotifications *)self hasIsCommunicationNotification])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCommunicationNotification](self, "isCommunicationNotification")}];
  }

  else
  {
    v57 = 0;
  }

  contentProtection = [(BMProactiveHarvestingNotifications *)self contentProtection];
  personaId = [(BMProactiveHarvestingNotifications *)self personaId];
  _attachmentsJSONArray = [(BMProactiveHarvestingNotifications *)self _attachmentsJSONArray];
  _fromHandlesJSONArray = [(BMProactiveHarvestingNotifications *)self _fromHandlesJSONArray];
  _toHandlesJSONArray = [(BMProactiveHarvestingNotifications *)self _toHandlesJSONArray];
  v63[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null;
  v64[0] = null;
  v63[1] = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null2;
  v64[1] = null2;
  v63[2] = @"bundleID";
  null3 = bundleID;
  if (!bundleID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null3;
  v64[2] = null3;
  v63[3] = @"notificationID";
  null4 = notificationID;
  if (!notificationID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null4;
  v64[3] = null4;
  v63[4] = @"title";
  null5 = title;
  if (!title)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null5;
  v64[4] = null5;
  v63[5] = @"subtitle";
  null6 = subtitle;
  if (!subtitle)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null6;
  v64[5] = null6;
  v63[6] = @"body";
  null7 = body;
  if (!body)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null7;
  v64[6] = null7;
  v63[7] = @"threadID";
  null8 = threadID;
  if (!threadID)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v64[7] = null8;
  v63[8] = @"category";
  null9 = category;
  if (!category)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v64[8] = null9;
  v63[9] = @"isGroupMessage";
  null10 = v60;
  if (!v60)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = v7;
  v64[9] = null10;
  v63[10] = @"isTimeSensitive";
  null11 = v59;
  v25 = null10;
  if (!v59)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = bundleID;
  v47 = null11;
  v64[10] = null11;
  v63[11] = @"isCritical";
  null12 = v58;
  if (!v58)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = uniqueID;
  v35 = null12;
  v64[11] = null12;
  v63[12] = @"isCommunicationNotification";
  null13 = v57;
  if (!v57)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = notificationID;
  v64[12] = null13;
  v63[13] = @"contentProtection";
  null14 = contentProtection;
  if (!contentProtection)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null8;
  v48 = title;
  v64[13] = null14;
  v63[14] = @"personaId";
  null15 = personaId;
  if (!personaId)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = body;
  v64[14] = null15;
  v63[15] = @"attachments";
  null16 = _attachmentsJSONArray;
  if (!_attachmentsJSONArray)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v25;
  v64[15] = null16;
  v63[16] = @"fromHandles";
  null17 = _fromHandlesJSONArray;
  if (!_fromHandlesJSONArray)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v64[16] = null17;
  v63[17] = @"toHandles";
  null18 = _toHandlesJSONArray;
  if (!_toHandlesJSONArray)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v64[17] = null18;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:{18, v35}];
  if (!_toHandlesJSONArray)
  {
  }

  if (!_fromHandlesJSONArray)
  {
  }

  if (!_attachmentsJSONArray)
  {
  }

  if (!personaId)
  {
  }

  if (!contentProtection)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (!v59)
  {
  }

  if (!v60)
  {
  }

  if (!category)
  {
  }

  if (threadID)
  {
    if (v30)
    {
      goto LABEL_74;
    }
  }

  else
  {

    if (v30)
    {
LABEL_74:
      if (subtitle)
      {
        goto LABEL_75;
      }

      goto LABEL_85;
    }
  }

  if (subtitle)
  {
LABEL_75:
    if (v48)
    {
      goto LABEL_76;
    }

    goto LABEL_86;
  }

LABEL_85:

  if (v48)
  {
LABEL_76:
    if (v49)
    {
      goto LABEL_77;
    }

    goto LABEL_87;
  }

LABEL_86:

  if (v49)
  {
LABEL_77:
    if (v51)
    {
      goto LABEL_78;
    }

    goto LABEL_88;
  }

LABEL_87:

  if (v51)
  {
LABEL_78:
    if (v52)
    {
      goto LABEL_79;
    }

LABEL_89:

    if (v50)
    {
      goto LABEL_80;
    }

    goto LABEL_90;
  }

LABEL_88:

  if (!v52)
  {
    goto LABEL_89;
  }

LABEL_79:
  if (v50)
  {
    goto LABEL_80;
  }

LABEL_90:

LABEL_80:

  return v46;
}

- (id)_toHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  toHandles = [(BMProactiveHarvestingNotifications *)self toHandles];
  v5 = [toHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(toHandles);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [toHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_fromHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fromHandles = [(BMProactiveHarvestingNotifications *)self fromHandles];
  v5 = [fromHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(fromHandles);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [fromHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_attachmentsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachments = [(BMProactiveHarvestingNotifications *)self attachments];
  v5 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(attachments);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMProactiveHarvestingNotifications)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v337[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = *MEMORY[0x1E698F240];
        v336 = *MEMORY[0x1E696A578];
        selfCopy = self;
        v15 = objc_alloc(MEMORY[0x1E696AEC0]);
        v218 = objc_opt_class();
        v16 = v15;
        self = selfCopy;
        v17 = [v16 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v218, @"uniqueID"];
        v337[0] = v17;
        v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v337 forKeys:&v336 count:1];
        v18 = [v12 initWithDomain:v13 code:2 userInfo:?];
        v7 = 0;
        v19 = 0;
        *error = v18;
        goto LABEL_239;
      }

      v7 = 0;
      v19 = 0;
      goto LABEL_240;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v268 = v8;
  if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v266 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    v11 = objc_alloc(MEMORY[0x1E695DF00]);
    [v10 doubleValue];
    v266 = [v11 initWithTimeIntervalSinceReferenceDate:?];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v20 = v9;
    v266 = [v10 dateFromString:v20];

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v270 = objc_alloc(MEMORY[0x1E696ABC0]);
      v124 = *MEMORY[0x1E698F240];
      v334 = *MEMORY[0x1E696A578];
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v335 = v54;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
      v125 = [v270 initWithDomain:v124 code:2 userInfo:v21];
      v17 = 0;
      v19 = 0;
      *error = v125;
      goto LABEL_238;
    }

    v17 = 0;
    v19 = 0;
    goto LABEL_239;
  }

  v266 = v9;
LABEL_16:
  v21 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  v269 = v21;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v332 = *MEMORY[0x1E696A578];
        v48 = objc_alloc(MEMORY[0x1E696AEC0]);
        v219 = objc_opt_class();
        v49 = v48;
        v21 = v269;
        v50 = [v49 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v219, @"bundleID"];
        v333 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
        v52 = v46;
        v22 = v51;
        v53 = [v52 initWithDomain:v47 code:2 userInfo:v51];
        v54 = 0;
        v19 = 0;
        *error = v53;
        v17 = v266;
        goto LABEL_237;
      }

      v54 = 0;
      v19 = 0;
      v17 = v266;
      goto LABEL_238;
    }

    v265 = v21;
  }

  else
  {
    v265 = 0;
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"notificationID"];
  v267 = v22;
  selfCopy2 = self;
  if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v330 = *MEMORY[0x1E696A578];
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v220 = objc_opt_class();
        v58 = v57;
        v21 = v269;
        v23 = [v58 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v220, @"notificationID"];
        v331 = v23;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
        v60 = v55;
        v22 = v267;
        v264 = v59;
        v61 = [v60 initWithDomain:v56 code:2 userInfo:?];
        v50 = 0;
        v19 = 0;
        *error = v61;
        v54 = v265;
        v17 = v266;
        goto LABEL_236;
      }

      v50 = 0;
      v19 = 0;
      v54 = v265;
      v17 = v266;
      goto LABEL_237;
    }

    v262 = v22;
  }

  else
  {
    v262 = 0;
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  v264 = v23;
  v261 = v7;
  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v23 = 0;
          v19 = 0;
          v54 = v265;
          v17 = v266;
          v50 = v262;
          goto LABEL_236;
        }

        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v328 = *MEMORY[0x1E696A578];
        v64 = objc_alloc(MEMORY[0x1E696AEC0]);
        v221 = objc_opt_class();
        v65 = v64;
        v21 = v269;
        v260 = [v65 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v221, @"title"];
        v329 = v260;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
        v66 = v62;
        v22 = v267;
        v67 = [v66 initWithDomain:v63 code:2 userInfo:v24];
        v23 = 0;
        v19 = 0;
        *error = v67;
        goto LABEL_126;
      }

      v23 = v23;
    }
  }

  v24 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
  v257 = v23;
  if (v24)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v260 = v24;
        goto LABEL_34;
      }

      if (error)
      {
        v68 = objc_alloc(MEMORY[0x1E696ABC0]);
        v69 = *MEMORY[0x1E698F240];
        v326 = *MEMORY[0x1E696A578];
        v70 = objc_alloc(MEMORY[0x1E696AEC0]);
        v222 = objc_opt_class();
        v71 = v70;
        v21 = v269;
        v259 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v222, @"subtitle"];
        v327 = v259;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
        v73 = v68;
        v22 = v267;
        v258 = v72;
        v74 = [v73 initWithDomain:v69 code:2 userInfo:?];
        v260 = 0;
        v19 = 0;
        *error = v74;
        v54 = v265;
        v17 = v266;
        v50 = v262;
        goto LABEL_234;
      }

      v260 = 0;
      v19 = 0;
LABEL_126:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      goto LABEL_235;
    }
  }

  v260 = 0;
LABEL_34:
  v25 = [dictionaryCopy objectForKeyedSubscript:@"body"];
  v258 = v25;
  if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v259 = 0;
        v19 = 0;
        v54 = v265;
        v17 = v266;
        v50 = v262;
        v23 = v257;
        goto LABEL_234;
      }

      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
      v76 = *MEMORY[0x1E698F240];
      v324 = *MEMORY[0x1E696A578];
      v77 = objc_alloc(MEMORY[0x1E696AEC0]);
      v223 = objc_opt_class();
      v78 = v77;
      v21 = v269;
      v256 = [v78 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v223, @"body"];
      v325 = v256;
      v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
      v80 = v75;
      v22 = v267;
      v255 = v79;
      v81 = [v80 initWithDomain:v76 code:2 userInfo:?];
      v259 = 0;
      v19 = 0;
      *error = v81;
      goto LABEL_133;
    }

    v259 = v26;
  }

  else
  {
    v259 = 0;
  }

  v27 = [dictionaryCopy objectForKeyedSubscript:@"threadID"];
  v255 = v27;
  if (v27)
  {
    v28 = v27;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v256 = v28;
        goto LABEL_40;
      }

      if (error)
      {
        v82 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = *MEMORY[0x1E698F240];
        v322 = *MEMORY[0x1E696A578];
        v84 = objc_alloc(MEMORY[0x1E696AEC0]);
        v224 = objc_opt_class();
        v85 = v84;
        v21 = v269;
        v86 = [v85 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v224, @"threadID"];
        v323 = v86;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
        v88 = v82;
        v22 = v267;
        v254 = v87;
        v89 = [v88 initWithDomain:v83 code:2 userInfo:?];
        v256 = 0;
        v19 = 0;
        *error = v89;
        goto LABEL_137;
      }

      v256 = 0;
      v19 = 0;
LABEL_133:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      goto LABEL_233;
    }
  }

  v256 = 0;
LABEL_40:
  v29 = [dictionaryCopy objectForKeyedSubscript:@"category"];
  v254 = v29;
  if (v29)
  {
    v30 = v29;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v246 = v30;
        goto LABEL_43;
      }

      if (error)
      {
        v90 = objc_alloc(MEMORY[0x1E696ABC0]);
        v91 = *MEMORY[0x1E698F240];
        v320 = *MEMORY[0x1E696A578];
        v92 = objc_alloc(MEMORY[0x1E696AEC0]);
        v225 = objc_opt_class();
        v93 = v92;
        v21 = v269;
        v94 = [v93 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v225, @"category"];
        v321 = v94;
        v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
        v96 = v90;
        v22 = v267;
        v248 = v95;
        v97 = [v96 initWithDomain:v91 code:2 userInfo:?];
        v246 = 0;
        v19 = 0;
        *error = v97;
        goto LABEL_149;
      }

      v86 = 0;
      v19 = 0;
LABEL_137:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      goto LABEL_232;
    }
  }

  v246 = 0;
LABEL_43:
  v31 = [dictionaryCopy objectForKeyedSubscript:@"isGroupMessage"];
  v248 = v31;
  if (v31)
  {
    v32 = v31;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v249 = v32;
        goto LABEL_46;
      }

      if (error)
      {
        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v318 = *MEMORY[0x1E696A578];
        v119 = objc_alloc(MEMORY[0x1E696AEC0]);
        v226 = objc_opt_class();
        v120 = v119;
        v21 = v269;
        v250 = [v120 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v226, @"isGroupMessage"];
        v319 = v250;
        v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
        v122 = v117;
        v22 = v267;
        v244 = v121;
        v123 = [v122 initWithDomain:v118 code:2 userInfo:?];
        v94 = 0;
        v19 = 0;
        *error = v123;
        v54 = v265;
        v17 = v266;
        v50 = v262;
        goto LABEL_230;
      }

      v94 = 0;
      v19 = 0;
LABEL_149:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      goto LABEL_231;
    }
  }

  v249 = 0;
LABEL_46:
  v33 = [dictionaryCopy objectForKeyedSubscript:@"isTimeSensitive"];
  v244 = v33;
  if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v250 = 0;
        v19 = 0;
        v54 = v265;
        v17 = v266;
        v50 = v262;
        v94 = v249;
        goto LABEL_230;
      }

      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
      v127 = *MEMORY[0x1E698F240];
      v316 = *MEMORY[0x1E696A578];
      v128 = objc_alloc(MEMORY[0x1E696AEC0]);
      v227 = objc_opt_class();
      v129 = v128;
      v21 = v269;
      v245 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"isTimeSensitive"];
      v317 = v245;
      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
      v131 = v126;
      v22 = v267;
      v242 = v130;
      v132 = [v131 initWithDomain:v127 code:2 userInfo:?];
      v250 = 0;
      v19 = 0;
      *error = v132;
      goto LABEL_170;
    }

    v250 = v34;
  }

  else
  {
    v250 = 0;
  }

  v35 = [dictionaryCopy objectForKeyedSubscript:@"isCritical"];
  v242 = v35;
  if (v35)
  {
    v36 = v35;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v245 = v36;
        goto LABEL_52;
      }

      if (error)
      {
        v133 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v314 = *MEMORY[0x1E696A578];
        v135 = objc_alloc(MEMORY[0x1E696AEC0]);
        v228 = objc_opt_class();
        v136 = v135;
        v21 = v269;
        v243 = [v136 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"isCritical"];
        v315 = v243;
        v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
        v138 = v133;
        v22 = v267;
        v240 = v137;
        v139 = [v138 initWithDomain:v134 code:2 userInfo:?];
        v245 = 0;
        v19 = 0;
        *error = v139;
        goto LABEL_172;
      }

      v245 = 0;
      v19 = 0;
LABEL_170:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      v94 = v249;
      goto LABEL_229;
    }
  }

  v245 = 0;
LABEL_52:
  v37 = [dictionaryCopy objectForKeyedSubscript:@"isCommunicationNotification"];
  v240 = v37;
  if (v37)
  {
    v38 = v37;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v243 = v38;
        goto LABEL_55;
      }

      if (error)
      {
        v140 = objc_alloc(MEMORY[0x1E696ABC0]);
        v141 = *MEMORY[0x1E698F240];
        v312 = *MEMORY[0x1E696A578];
        v142 = objc_alloc(MEMORY[0x1E696AEC0]);
        v229 = objc_opt_class();
        v143 = v142;
        v21 = v269;
        v241 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"isCommunicationNotification"];
        v313 = v241;
        v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
        v145 = v140;
        v22 = v267;
        v238 = v144;
        v146 = [v145 initWithDomain:v141 code:2 userInfo:?];
        v243 = 0;
        v19 = 0;
        *error = v146;
        goto LABEL_174;
      }

      v243 = 0;
      v19 = 0;
LABEL_172:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      v94 = v249;
      goto LABEL_228;
    }
  }

  v243 = 0;
LABEL_55:
  v39 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
  v238 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v241 = v40;
        goto LABEL_58;
      }

      if (error)
      {
        v147 = objc_alloc(MEMORY[0x1E696ABC0]);
        v148 = *MEMORY[0x1E698F240];
        v310 = *MEMORY[0x1E696A578];
        v149 = objc_alloc(MEMORY[0x1E696AEC0]);
        v230 = objc_opt_class();
        v150 = v149;
        v21 = v269;
        v235 = [v150 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v230, @"contentProtection"];
        v311 = v235;
        v151 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
        v152 = v147;
        v22 = v267;
        v236 = v151;
        v153 = [v152 initWithDomain:v148 code:2 userInfo:?];
        v241 = 0;
        v19 = 0;
        *error = v153;
LABEL_176:
        v54 = v265;
        v17 = v266;
        v50 = v262;
        v94 = v249;
        goto LABEL_226;
      }

      v241 = 0;
      v19 = 0;
LABEL_174:
      v54 = v265;
      v17 = v266;
      v50 = v262;
      v94 = v249;
      goto LABEL_227;
    }
  }

  v241 = 0;
LABEL_58:
  v41 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
  v236 = v41;
  if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v235 = 0;
    goto LABEL_61;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
      v155 = *MEMORY[0x1E698F240];
      v308 = *MEMORY[0x1E696A578];
      v156 = objc_alloc(MEMORY[0x1E696AEC0]);
      v231 = objc_opt_class();
      v157 = v156;
      v21 = v269;
      obj = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v231, @"personaId"];
      v309 = obj;
      v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
      v159 = v154;
      v22 = v267;
      v253 = v158;
      v160 = [v159 initWithDomain:v155 code:2 userInfo:?];
      v235 = 0;
      v19 = 0;
      *error = v160;
      v54 = v265;
      v17 = v266;
      v50 = v262;
      v94 = v249;

      goto LABEL_225;
    }

    v235 = 0;
    v19 = 0;
    goto LABEL_176;
  }

  v235 = v42;
LABEL_61:
  v43 = [dictionaryCopy objectForKeyedSubscript:@"attachments"];
  null = [MEMORY[0x1E695DFB0] null];
  v45 = [v43 isEqual:null];

  v251 = v6;
  v239 = v24;
  if (v45)
  {

LABEL_100:
    v98 = 0;
    v22 = v267;
    goto LABEL_101;
  }

  if (!v43)
  {
    goto LABEL_100;
  }

  objc_opt_class();
  obj = v43;
  v22 = v267;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v94 = v249;
    if (error)
    {
      v181 = objc_alloc(MEMORY[0x1E696ABC0]);
      v182 = *MEMORY[0x1E698F240];
      v306 = *MEMORY[0x1E696A578];
      v252 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attachments"];
      v307 = v252;
      v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
      v184 = v182;
      v22 = v267;
      v237 = v183;
      v19 = 0;
      *error = [v181 initWithDomain:v184 code:2 userInfo:?];
      v54 = v265;
      v17 = v266;
      goto LABEL_222;
    }

    v19 = 0;
    v54 = v265;
    v17 = v266;
    v50 = v262;
    goto LABEL_225;
  }

  v98 = v43;
LABEL_101:
  v94 = v249;
  v252 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v98, "count")}];
  v283 = 0u;
  v284 = 0u;
  v285 = 0u;
  v286 = 0u;
  obj = v98;
  v99 = [obj countByEnumeratingWithState:&v283 objects:v305 count:16];
  v100 = v259;
  v101 = v256;
  v102 = v250;
  v103 = v245;
  v104 = v243;
  v105 = v241;
  if (v99)
  {
    v106 = v99;
    v107 = *v284;
    do
    {
      for (i = 0; i != v106; ++i)
      {
        if (*v284 != v107)
        {
          objc_enumerationMutation(obj);
        }

        v109 = *(*(&v283 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy2 = error;
          if (error)
          {
            v162 = objc_alloc(MEMORY[0x1E696ABC0]);
            v163 = *MEMORY[0x1E698F240];
            v303 = *MEMORY[0x1E696A578];
            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attachments"];
            v304 = v110;
            v164 = MEMORY[0x1E695DF20];
            v165 = &v304;
            v166 = &v303;
LABEL_144:
            v167 = [v164 dictionaryWithObjects:v165 forKeys:v166 count:1];
            v168 = v162;
            v21 = v269;
            v19 = 0;
            *errorCopy2 = [v168 initWithDomain:v163 code:2 userInfo:v167];
            v237 = obj;
            v6 = v251;
            v54 = v265;
            v17 = v266;
            v24 = v239;
            goto LABEL_196;
          }

LABEL_168:
          v19 = 0;
          v6 = v251;
          v54 = v265;
          v17 = v266;
          v50 = v262;
          v24 = v239;
          v94 = v249;

          goto LABEL_224;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy2 = error;
          if (error)
          {
            v162 = objc_alloc(MEMORY[0x1E696ABC0]);
            v163 = *MEMORY[0x1E698F240];
            v301 = *MEMORY[0x1E696A578];
            v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attachments"];
            v302 = v110;
            v164 = MEMORY[0x1E695DF20];
            v165 = &v302;
            v166 = &v301;
            goto LABEL_144;
          }

          goto LABEL_168;
        }

        v110 = v109;
        v111 = [BMProactiveHarvestingContentAttachment alloc];
        v282 = 0;
        v112 = [(BMProactiveHarvestingContentAttachment *)v111 initWithJSONDictionary:v110 error:&v282];
        v113 = v282;
        if (v113)
        {
          v167 = v113;
          v6 = v251;
          v24 = v239;
          if (error)
          {
            v169 = v113;
            *error = v167;
          }

          v19 = 0;
          v237 = obj;
          goto LABEL_195;
        }

        [v252 addObject:v112];

        v21 = v269;
        v22 = v267;
      }

      v106 = [obj countByEnumeratingWithState:&v283 objects:v305 count:16];
      v100 = v259;
      v101 = v256;
      v94 = v249;
      v102 = v250;
      v103 = v245;
      v104 = v243;
      v105 = v241;
    }

    while (v106);
  }

  v241 = v105;
  v243 = v104;
  v245 = v103;
  v250 = v102;
  v256 = v101;

  v114 = [dictionaryCopy objectForKeyedSubscript:@"fromHandles"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v116 = [v114 isEqual:null2];

  if (v116)
  {

    v114 = 0;
    v6 = v251;
    v24 = v239;
  }

  else
  {
    v259 = v100;
    v6 = v251;
    v50 = v262;
    v24 = v239;
    if (v114)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v237 = v114;
        if (!error)
        {
          v19 = 0;
          v54 = v265;
          v17 = v266;
          v22 = v267;
          goto LABEL_223;
        }

        v199 = objc_alloc(MEMORY[0x1E696ABC0]);
        v200 = *MEMORY[0x1E698F240];
        v299 = *MEMORY[0x1E696A578];
        v110 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"fromHandles"];
        v300 = v110;
        v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
        v201 = v200;
        v21 = v269;
        v202 = [v199 initWithDomain:v201 code:2 userInfo:v167];
        v19 = 0;
        *error = v202;
LABEL_193:
        v54 = v265;
        v17 = v266;
        goto LABEL_221;
      }
    }
  }

  v110 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v114, "count")}];
  v278 = 0u;
  v279 = 0u;
  v280 = 0u;
  v281 = 0u;
  v237 = v114;
  v170 = [v237 countByEnumeratingWithState:&v278 objects:v298 count:16];
  if (!v170)
  {
    goto LABEL_162;
  }

  v171 = v170;
  v172 = *v279;
  do
  {
    for (j = 0; j != v171; ++j)
    {
      if (*v279 != v172)
      {
        objc_enumerationMutation(v237);
      }

      v174 = *(*(&v278 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy4 = error;
        if (error)
        {
          v186 = objc_alloc(MEMORY[0x1E696ABC0]);
          v187 = *MEMORY[0x1E698F240];
          v296 = *MEMORY[0x1E696A578];
          v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"fromHandles"];
          v297 = v175;
          v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
          v189 = v186;
          v190 = v187;
          goto LABEL_182;
        }

LABEL_194:
        v19 = 0;
        v167 = v237;
LABEL_195:
        v54 = v265;
        v17 = v266;
        v21 = v269;
LABEL_196:
        v94 = v249;
        goto LABEL_221;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy4 = error;
        if (!error)
        {
          goto LABEL_194;
        }

        v191 = objc_alloc(MEMORY[0x1E696ABC0]);
        v192 = *MEMORY[0x1E698F240];
        v294 = *MEMORY[0x1E696A578];
        v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fromHandles"];
        v295 = v175;
        v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
        v189 = v191;
        v190 = v192;
LABEL_182:
        *errorCopy4 = [v189 initWithDomain:v190 code:2 userInfo:v188];

LABEL_186:
        v19 = 0;
        v167 = v237;
        v54 = v265;
        v17 = v266;
        v21 = v269;
        v94 = v249;
        goto LABEL_220;
      }

      v175 = v174;
      v176 = [BMProactiveHarvestingNamedHandle alloc];
      v277 = 0;
      v177 = [(BMProactiveHarvestingNamedHandle *)v176 initWithJSONDictionary:v175 error:&v277];
      v178 = v277;
      if (v178)
      {
        v193 = v178;
        if (error)
        {
          v194 = v178;
          *error = v193;
        }

        goto LABEL_186;
      }

      [v110 addObject:v177];

      v6 = v251;
      v24 = v239;
    }

    v171 = [v237 countByEnumeratingWithState:&v278 objects:v298 count:16];
  }

  while (v171);
LABEL_162:

  v167 = [dictionaryCopy objectForKeyedSubscript:@"toHandles"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v180 = [v167 isEqual:null3];

  if (v180)
  {

    v167 = 0;
    v21 = v269;
    v94 = v249;
    goto LABEL_198;
  }

  v94 = v249;
  if (v167)
  {
    objc_opt_class();
    v21 = v269;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v195 = objc_alloc(MEMORY[0x1E696ABC0]);
        v196 = *MEMORY[0x1E698F240];
        v292 = *MEMORY[0x1E696A578];
        v175 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"toHandles"];
        v293 = v175;
        v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
        v198 = v196;
        v21 = v269;
        *error = [v195 initWithDomain:v198 code:2 userInfo:v197];

        v19 = 0;
        v54 = v265;
        v17 = v266;
        goto LABEL_220;
      }

      v19 = 0;
      goto LABEL_193;
    }
  }

  else
  {
    v21 = v269;
  }

LABEL_198:
  v175 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v167, "count")}];
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  v276 = 0u;
  v167 = v167;
  v203 = [v167 countByEnumeratingWithState:&v273 objects:v291 count:16];
  if (!v203)
  {
    goto LABEL_208;
  }

  v204 = v203;
  v233 = *v274;
  while (2)
  {
    v205 = 0;
    while (2)
    {
      if (*v274 != v233)
      {
        objc_enumerationMutation(v167);
      }

      v206 = *(*(&v273 + 1) + 8 * v205);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = v265;
        v17 = v266;
        errorCopy6 = error;
        v94 = v249;
        if (error)
        {
          v234 = objc_alloc(MEMORY[0x1E696ABC0]);
          v232 = *MEMORY[0x1E698F240];
          v289 = *MEMORY[0x1E696A578];
          v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"toHandles"];
          v290 = v207;
          v212 = MEMORY[0x1E695DF20];
          v213 = &v290;
          v214 = &v289;
LABEL_214:
          v215 = [v212 dictionaryWithObjects:v213 forKeys:v214 count:1];
          *errorCopy6 = [v234 initWithDomain:v232 code:2 userInfo:v215];
LABEL_218:

          v21 = v269;
        }

LABEL_219:

        v19 = 0;
        goto LABEL_220;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v54 = v265;
        v17 = v266;
        errorCopy6 = error;
        v94 = v249;
        if (error)
        {
          v234 = objc_alloc(MEMORY[0x1E696ABC0]);
          v232 = *MEMORY[0x1E698F240];
          v287 = *MEMORY[0x1E696A578];
          v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"toHandles"];
          v288 = v207;
          v212 = MEMORY[0x1E695DF20];
          v213 = &v288;
          v214 = &v287;
          goto LABEL_214;
        }

        goto LABEL_219;
      }

      v207 = v206;
      v208 = [BMProactiveHarvestingNamedHandle alloc];
      v272 = 0;
      v209 = [(BMProactiveHarvestingNamedHandle *)v208 initWithJSONDictionary:v207 error:&v272];
      v210 = v272;
      if (v210)
      {
        v215 = v210;
        if (error)
        {
          v216 = v210;
          *error = v215;
        }

        v54 = v265;
        v17 = v266;
        v94 = v249;
        goto LABEL_218;
      }

      [v175 addObject:v209];

      ++v205;
      v21 = v269;
      if (v204 != v205)
      {
        continue;
      }

      break;
    }

    v94 = v249;
    v204 = [v167 countByEnumeratingWithState:&v273 objects:v291 count:16];
    if (v204)
    {
      continue;
    }

    break;
  }

LABEL_208:

  v54 = v265;
  v17 = v266;
  v19 = [(BMProactiveHarvestingNotifications *)selfCopy2 initWithUniqueID:v261 absoluteTimestamp:v266 bundleID:v265 notificationID:v262 title:v257 subtitle:v260 body:v259 threadID:v256 category:v246 isGroupMessage:v94 isTimeSensitive:v250 isCritical:v245 isCommunicationNotification:v243 contentProtection:v241 personaId:v235 attachments:v252 fromHandles:v110 toHandles:v175];
  selfCopy2 = v19;
LABEL_220:

  v6 = v251;
  v24 = v239;
LABEL_221:

  v22 = v267;
LABEL_222:
  v50 = v262;
LABEL_223:

LABEL_224:
LABEL_225:

LABEL_226:
LABEL_227:

LABEL_228:
LABEL_229:

LABEL_230:
LABEL_231:

  v86 = v246;
LABEL_232:

LABEL_233:
  v23 = v257;

LABEL_234:
LABEL_235:

  v7 = v261;
LABEL_236:

  self = selfCopy2;
LABEL_237:

LABEL_238:
LABEL_239:

LABEL_240:
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingNotifications *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsGroupMessage)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTimeSensitive)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCritical)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCommunicationNotification)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = self->_attachments;
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
  v11 = self->_fromHandles;
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
  v17 = self->_toHandles;
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
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v65.receiver = self;
  v65.super_class = BMProactiveHarvestingNotifications;
  v5 = [(BMEventBase *)&v65 init];
  if (!v5)
  {
    goto LABEL_96;
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
        LOBYTE(v66) = 0;
        v13 = [fromCopy position] + 1;
        if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v12 |= (LOBYTE(v66) & 0x7F) << v10;
        if ((LOBYTE(v66) & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v16 = v11++ >= 9;
        if (v16)
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

      switch((v17 >> 3))
      {
        case 1u:
          v18 = PBReaderReadString();
          v19 = 48;
          goto LABEL_73;
        case 2u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v66 = 0.0;
          v33 = [fromCopy position] + 8;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 8, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_absoluteTimestamp = v66;
          goto LABEL_90;
        case 3u:
          v18 = PBReaderReadString();
          v19 = 56;
          goto LABEL_73;
        case 4u:
          v18 = PBReaderReadString();
          v19 = 64;
          goto LABEL_73;
        case 5u:
          v18 = PBReaderReadString();
          v19 = 72;
          goto LABEL_73;
        case 6u:
          v18 = PBReaderReadString();
          v19 = 80;
          goto LABEL_73;
        case 7u:
          v18 = PBReaderReadString();
          v19 = 88;
          goto LABEL_73;
        case 8u:
          v18 = PBReaderReadString();
          v19 = 96;
          goto LABEL_73;
        case 9u:
          v18 = PBReaderReadString();
          v19 = 104;
          goto LABEL_73;
        case 0xAu:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasIsGroupMessage = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v47 = [fromCopy position] + 1;
            if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 1, v48 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v46 |= (LOBYTE(v66) & 0x7F) << v44;
            if ((LOBYTE(v66) & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v16 = v45++ >= 9;
            if (v16)
            {
              LOBYTE(v26) = 0;
              goto LABEL_88;
            }
          }

          v26 = (v46 != 0) & ~[fromCopy hasError];
LABEL_88:
          v53 = 32;
          goto LABEL_89;
        case 0xBu:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasIsTimeSensitive = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v23 = [fromCopy position] + 1;
            if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v22 |= (LOBYTE(v66) & 0x7F) << v20;
            if ((LOBYTE(v66) & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v16 = v21++ >= 9;
            if (v16)
            {
              LOBYTE(v26) = 0;
              goto LABEL_82;
            }
          }

          v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_82:
          v53 = 34;
          goto LABEL_89;
        case 0xCu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasIsCritical = 1;
          while (1)
          {
            LOBYTE(v66) = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (LOBYTE(v66) & 0x7F) << v35;
            if ((LOBYTE(v66) & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v16 = v36++ >= 9;
            if (v16)
            {
              LOBYTE(v26) = 0;
              goto LABEL_86;
            }
          }

          v26 = (v37 != 0) & ~[fromCopy hasError];
LABEL_86:
          v53 = 36;
          goto LABEL_89;
        case 0xDu:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasIsCommunicationNotification = 1;
          break;
        case 0xEu:
          v18 = PBReaderReadString();
          v19 = 112;
          goto LABEL_73;
        case 0xFu:
          v18 = PBReaderReadString();
          v19 = 120;
LABEL_73:
          v50 = *(&v5->super.super.isa + v19);
          *(&v5->super.super.isa + v19) = v18;

          goto LABEL_90;
        case 0x10u:
          v66 = 0.0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_98;
          }

          v41 = [[BMProactiveHarvestingContentAttachment alloc] initByReadFrom:fromCopy];
          if (!v41)
          {
            goto LABEL_98;
          }

          v42 = v41;
          v43 = v6;
          goto LABEL_80;
        case 0x12u:
          v66 = 0.0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_98;
          }

          v52 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
          if (!v52)
          {
            goto LABEL_98;
          }

          v42 = v52;
          v43 = v7;
          goto LABEL_80;
        case 0x13u:
          v66 = 0.0;
          v67 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_98;
          }

          v51 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
          if (!v51)
          {
            goto LABEL_98;
          }

          v42 = v51;
          v43 = v8;
LABEL_80:
          [v43 addObject:v42];
          PBReaderRecallMark();

          goto LABEL_90;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_90;
          }

LABEL_98:

          goto LABEL_95;
      }

      while (1)
      {
        LOBYTE(v66) = 0;
        v30 = [fromCopy position] + 1;
        if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v66 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v29 |= (LOBYTE(v66) & 0x7F) << v27;
        if ((LOBYTE(v66) & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v16 = v28++ >= 9;
        if (v16)
        {
          LOBYTE(v26) = 0;
          goto LABEL_84;
        }
      }

      v26 = (v29 != 0) & ~[fromCopy hasError];
LABEL_84:
      v53 = 38;
LABEL_89:
      *(&v5->super.super.isa + v53) = v26;
LABEL_90:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v56 = [v6 copy];
  attachments = v5->_attachments;
  v5->_attachments = v56;

  v58 = [v7 copy];
  fromHandles = v5->_fromHandles;
  v5->_fromHandles = v58;

  v60 = [v8 copy];
  toHandles = v5->_toHandles;
  v5->_toHandles = v60;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_95:
    v63 = 0;
  }

  else
  {
LABEL_96:
    v63 = v5;
  }

  return v63;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingNotifications *)self uniqueID];
  absoluteTimestamp = [(BMProactiveHarvestingNotifications *)self absoluteTimestamp];
  bundleID = [(BMProactiveHarvestingNotifications *)self bundleID];
  notificationID = [(BMProactiveHarvestingNotifications *)self notificationID];
  title = [(BMProactiveHarvestingNotifications *)self title];
  subtitle = [(BMProactiveHarvestingNotifications *)self subtitle];
  body = [(BMProactiveHarvestingNotifications *)self body];
  threadID = [(BMProactiveHarvestingNotifications *)self threadID];
  category = [(BMProactiveHarvestingNotifications *)self category];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isGroupMessage](self, "isGroupMessage")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isTimeSensitive](self, "isTimeSensitive")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCritical](self, "isCritical")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingNotifications isCommunicationNotification](self, "isCommunicationNotification")}];
  contentProtection = [(BMProactiveHarvestingNotifications *)self contentProtection];
  personaId = [(BMProactiveHarvestingNotifications *)self personaId];
  attachments = [(BMProactiveHarvestingNotifications *)self attachments];
  fromHandles = [(BMProactiveHarvestingNotifications *)self fromHandles];
  toHandles = [(BMProactiveHarvestingNotifications *)self toHandles];
  v19 = [v18 initWithFormat:@"BMProactiveHarvestingNotifications with uniqueID: %@, absoluteTimestamp: %@, bundleID: %@, notificationID: %@, title: %@, subtitle: %@, body: %@, threadID: %@, category: %@, isGroupMessage: %@, isTimeSensitive: %@, isCritical: %@, isCommunicationNotification: %@, contentProtection: %@, personaId: %@, attachments: %@, fromHandles: %@, toHandles: %@", uniqueID, absoluteTimestamp, bundleID, notificationID, title, subtitle, body, threadID, category, v13, v11, v10, v9, contentProtection, personaId, attachments, fromHandles, toHandles];

  return v19;
}

- (BMProactiveHarvestingNotifications)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp bundleID:(id)iD notificationID:(id)notificationID title:(id)title subtitle:(id)subtitle body:(id)body threadID:(id)self0 category:(id)self1 isGroupMessage:(id)self2 isTimeSensitive:(id)self3 isCritical:(id)self4 isCommunicationNotification:(id)self5 contentProtection:(id)self6 personaId:(id)self7 attachments:(id)self8 fromHandles:(id)self9 toHandles:(id)toHandles
{
  dCopy = d;
  timestampCopy = timestamp;
  iDCopy = iD;
  notificationIDCopy = notificationID;
  notificationIDCopy2 = notificationID;
  titleCopy = title;
  subtitleCopy = subtitle;
  subtitleCopy2 = subtitle;
  bodyCopy = body;
  threadIDCopy = threadID;
  categoryCopy = category;
  messageCopy = message;
  sensitiveCopy = sensitive;
  v28 = timestampCopy;
  criticalCopy = critical;
  notificationCopy = notification;
  protectionCopy = protection;
  idCopy = id;
  attachmentsCopy = attachments;
  handlesCopy = handles;
  toHandlesCopy = toHandles;
  v51.receiver = self;
  v51.super_class = BMProactiveHarvestingNotifications;
  v30 = [(BMEventBase *)&v51 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_uniqueID, d);
    if (v28)
    {
      v30->_hasRaw_absoluteTimestamp = 1;
      [v28 timeIntervalSinceReferenceDate];
    }

    else
    {
      v30->_hasRaw_absoluteTimestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_absoluteTimestamp = v31;
    objc_storeStrong(&v30->_bundleID, iD);
    objc_storeStrong(&v30->_notificationID, notificationIDCopy);
    objc_storeStrong(&v30->_title, title);
    objc_storeStrong(&v30->_subtitle, subtitleCopy);
    objc_storeStrong(&v30->_body, body);
    objc_storeStrong(&v30->_threadID, threadID);
    objc_storeStrong(&v30->_category, category);
    if (messageCopy)
    {
      v30->_hasIsGroupMessage = 1;
      v30->_isGroupMessage = [messageCopy BOOLValue];
    }

    else
    {
      v30->_hasIsGroupMessage = 0;
      v30->_isGroupMessage = 0;
    }

    if (sensitiveCopy)
    {
      v30->_hasIsTimeSensitive = 1;
      v30->_isTimeSensitive = [sensitiveCopy BOOLValue];
    }

    else
    {
      v30->_hasIsTimeSensitive = 0;
      v30->_isTimeSensitive = 0;
    }

    if (criticalCopy)
    {
      v30->_hasIsCritical = 1;
      v30->_isCritical = [criticalCopy BOOLValue];
    }

    else
    {
      v30->_hasIsCritical = 0;
      v30->_isCritical = 0;
    }

    if (notificationCopy)
    {
      v30->_hasIsCommunicationNotification = 1;
      v30->_isCommunicationNotification = [notificationCopy BOOLValue];
    }

    else
    {
      v30->_hasIsCommunicationNotification = 0;
      v30->_isCommunicationNotification = 0;
    }

    objc_storeStrong(&v30->_contentProtection, protection);
    objc_storeStrong(&v30->_personaId, id);
    objc_storeStrong(&v30->_attachments, attachments);
    objc_storeStrong(&v30->_fromHandles, handles);
    objc_storeStrong(&v30->_toHandles, toHandles);
  }

  return v30;
}

+ (id)protoFields
{
  v23[19] = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v23[0] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:0];
  v23[1] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:3 type:13 subMessageClass:0];
  v23[2] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationID" number:4 type:13 subMessageClass:0];
  v23[3] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:5 type:13 subMessageClass:0];
  v23[4] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subtitle" number:6 type:13 subMessageClass:0];
  v23[5] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"body" number:7 type:13 subMessageClass:0];
  v23[6] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threadID" number:8 type:13 subMessageClass:0];
  v23[7] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:9 type:13 subMessageClass:0];
  v23[8] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupMessage" number:10 type:12 subMessageClass:0];
  v23[9] = v13;
  v12 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTimeSensitive" number:11 type:12 subMessageClass:0];
  v23[10] = v12;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCritical" number:12 type:12 subMessageClass:0];
  v23[11] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCommunicationNotification" number:13 type:12 subMessageClass:0];
  v23[12] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:14 type:13 subMessageClass:0];
  v23[13] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:15 type:13 subMessageClass:0];
  v23[14] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachments" number:16 type:14 subMessageClass:objc_opt_class()];
  v23[15] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"handles" number:17 type:14 subMessageClass:objc_opt_class()];
  v23[16] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromHandles" number:18 type:14 subMessageClass:objc_opt_class()];
  v23[17] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toHandles" number:19 type:14 subMessageClass:objc_opt_class()];
  v23[18] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:19];

  return v10;
}

+ (id)columns
{
  v23[19] = *MEMORY[0x1E69E9840];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notificationID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subtitle" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"body" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threadID" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupMessage" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTimeSensitive" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCritical" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCommunicationNotification" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attachments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_49547];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"handles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_103_49548];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fromHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_105];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"toHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_107];
  v23[0] = v22;
  v23[1] = v21;
  v23[2] = v20;
  v23[3] = v18;
  v23[4] = v17;
  v23[5] = v16;
  v23[6] = v15;
  v23[7] = v19;
  v23[8] = v14;
  v23[9] = v2;
  v23[10] = v13;
  v23[11] = v3;
  v23[12] = v12;
  v23[13] = v4;
  v23[14] = v5;
  v23[15] = v6;
  v23[16] = v11;
  v23[17] = v7;
  v23[18] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:19];

  return v10;
}

id __45__BMProactiveHarvestingNotifications_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _toHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMProactiveHarvestingNotifications_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _fromHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __45__BMProactiveHarvestingNotifications_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _attachmentsJSONArray];
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

    v8 = [[BMProactiveHarvestingNotifications alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end