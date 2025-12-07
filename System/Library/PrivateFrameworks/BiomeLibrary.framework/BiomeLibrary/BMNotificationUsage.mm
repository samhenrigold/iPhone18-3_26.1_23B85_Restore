@interface BMNotificationUsage
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMNotificationUsage)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMNotificationUsage)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp usageType:(int)type bundleID:(id)iD notificationID:(id)notificationID deviceID:(id)deviceID title:(id)title subtitle:(id)self0 body:(id)self1 badge:(id)self2 threadID:(id)self3 categoryID:(id)self4 sectionID:(id)self5 contactIDs:(id)self6 isGroupMessage:(id)self7 parentBundleID:(id)self8 bodyLength:(id)self9;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_contactIDsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMNotificationUsage

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMNotificationUsage *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMNotificationUsage *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMNotificationUsage *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_71;
      }
    }

    absoluteTimestamp = [(BMNotificationUsage *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v15 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMNotificationUsage *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v18 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v18)
      {
        goto LABEL_71;
      }
    }

    usageType = [(BMNotificationUsage *)self usageType];
    if (usageType == [v5 usageType])
    {
      bundleID = [(BMNotificationUsage *)self bundleID];
      bundleID2 = [v5 bundleID];
      v22 = bundleID2;
      if (bundleID == bundleID2)
      {
      }

      else
      {
        bundleID3 = [(BMNotificationUsage *)self bundleID];
        bundleID4 = [v5 bundleID];
        v25 = [bundleID3 isEqual:bundleID4];

        if (!v25)
        {
          goto LABEL_71;
        }
      }

      notificationID = [(BMNotificationUsage *)self notificationID];
      notificationID2 = [v5 notificationID];
      v28 = notificationID2;
      if (notificationID == notificationID2)
      {
      }

      else
      {
        notificationID3 = [(BMNotificationUsage *)self notificationID];
        notificationID4 = [v5 notificationID];
        v31 = [notificationID3 isEqual:notificationID4];

        if (!v31)
        {
          goto LABEL_71;
        }
      }

      deviceID = [(BMNotificationUsage *)self deviceID];
      deviceID2 = [v5 deviceID];
      v34 = deviceID2;
      if (deviceID == deviceID2)
      {
      }

      else
      {
        deviceID3 = [(BMNotificationUsage *)self deviceID];
        deviceID4 = [v5 deviceID];
        v37 = [deviceID3 isEqual:deviceID4];

        if (!v37)
        {
          goto LABEL_71;
        }
      }

      title = [(BMNotificationUsage *)self title];
      title2 = [v5 title];
      v40 = title2;
      if (title == title2)
      {
      }

      else
      {
        title3 = [(BMNotificationUsage *)self title];
        title4 = [v5 title];
        v43 = [title3 isEqual:title4];

        if (!v43)
        {
          goto LABEL_71;
        }
      }

      subtitle = [(BMNotificationUsage *)self subtitle];
      subtitle2 = [v5 subtitle];
      v46 = subtitle2;
      if (subtitle == subtitle2)
      {
      }

      else
      {
        subtitle3 = [(BMNotificationUsage *)self subtitle];
        subtitle4 = [v5 subtitle];
        v49 = [subtitle3 isEqual:subtitle4];

        if (!v49)
        {
          goto LABEL_71;
        }
      }

      body = [(BMNotificationUsage *)self body];
      body2 = [v5 body];
      v52 = body2;
      if (body == body2)
      {
      }

      else
      {
        body3 = [(BMNotificationUsage *)self body];
        body4 = [v5 body];
        v55 = [body3 isEqual:body4];

        if (!v55)
        {
          goto LABEL_71;
        }
      }

      if (-[BMNotificationUsage hasBadge](self, "hasBadge") || [v5 hasBadge])
      {
        if (![(BMNotificationUsage *)self hasBadge])
        {
          goto LABEL_71;
        }

        if (![v5 hasBadge])
        {
          goto LABEL_71;
        }

        badge = [(BMNotificationUsage *)self badge];
        if (badge != [v5 badge])
        {
          goto LABEL_71;
        }
      }

      threadID = [(BMNotificationUsage *)self threadID];
      threadID2 = [v5 threadID];
      v59 = threadID2;
      if (threadID == threadID2)
      {
      }

      else
      {
        threadID3 = [(BMNotificationUsage *)self threadID];
        threadID4 = [v5 threadID];
        v62 = [threadID3 isEqual:threadID4];

        if (!v62)
        {
          goto LABEL_71;
        }
      }

      categoryID = [(BMNotificationUsage *)self categoryID];
      categoryID2 = [v5 categoryID];
      v65 = categoryID2;
      if (categoryID == categoryID2)
      {
      }

      else
      {
        categoryID3 = [(BMNotificationUsage *)self categoryID];
        categoryID4 = [v5 categoryID];
        v68 = [categoryID3 isEqual:categoryID4];

        if (!v68)
        {
          goto LABEL_71;
        }
      }

      sectionID = [(BMNotificationUsage *)self sectionID];
      sectionID2 = [v5 sectionID];
      v71 = sectionID2;
      if (sectionID == sectionID2)
      {
      }

      else
      {
        sectionID3 = [(BMNotificationUsage *)self sectionID];
        sectionID4 = [v5 sectionID];
        v74 = [sectionID3 isEqual:sectionID4];

        if (!v74)
        {
          goto LABEL_71;
        }
      }

      contactIDs = [(BMNotificationUsage *)self contactIDs];
      contactIDs2 = [v5 contactIDs];
      v77 = contactIDs2;
      if (contactIDs == contactIDs2)
      {
      }

      else
      {
        contactIDs3 = [(BMNotificationUsage *)self contactIDs];
        contactIDs4 = [v5 contactIDs];
        v80 = [contactIDs3 isEqual:contactIDs4];

        if (!v80)
        {
          goto LABEL_71;
        }
      }

      if (-[BMNotificationUsage hasIsGroupMessage](self, "hasIsGroupMessage") || [v5 hasIsGroupMessage])
      {
        if (![(BMNotificationUsage *)self hasIsGroupMessage])
        {
          goto LABEL_71;
        }

        if (![v5 hasIsGroupMessage])
        {
          goto LABEL_71;
        }

        isGroupMessage = [(BMNotificationUsage *)self isGroupMessage];
        if (isGroupMessage != [v5 isGroupMessage])
        {
          goto LABEL_71;
        }
      }

      parentBundleID = [(BMNotificationUsage *)self parentBundleID];
      parentBundleID2 = [v5 parentBundleID];
      v84 = parentBundleID2;
      if (parentBundleID == parentBundleID2)
      {
      }

      else
      {
        parentBundleID3 = [(BMNotificationUsage *)self parentBundleID];
        parentBundleID4 = [v5 parentBundleID];
        v87 = [parentBundleID3 isEqual:parentBundleID4];

        if (!v87)
        {
          goto LABEL_71;
        }
      }

      if (!-[BMNotificationUsage hasBodyLength](self, "hasBodyLength") && ![v5 hasBodyLength])
      {
        v12 = 1;
        goto LABEL_72;
      }

      if (-[BMNotificationUsage hasBodyLength](self, "hasBodyLength") && [v5 hasBodyLength])
      {
        bodyLength = [(BMNotificationUsage *)self bodyLength];
        v12 = bodyLength == [v5 bodyLength];
LABEL_72:

        goto LABEL_73;
      }
    }

LABEL_71:
    v12 = 0;
    goto LABEL_72;
  }

  v12 = 0;
LABEL_73:

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
  v63[17] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMNotificationUsage *)self uniqueID];
  absoluteTimestamp = [(BMNotificationUsage *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v5 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMNotificationUsage *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMNotificationUsage usageType](self, "usageType")}];
  bundleID = [(BMNotificationUsage *)self bundleID];
  notificationID = [(BMNotificationUsage *)self notificationID];
  deviceID = [(BMNotificationUsage *)self deviceID];
  title = [(BMNotificationUsage *)self title];
  subtitle = [(BMNotificationUsage *)self subtitle];
  body = [(BMNotificationUsage *)self body];
  if ([(BMNotificationUsage *)self hasBadge])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMNotificationUsage badge](self, "badge")}];
  }

  else
  {
    v59 = 0;
  }

  threadID = [(BMNotificationUsage *)self threadID];
  categoryID = [(BMNotificationUsage *)self categoryID];
  sectionID = [(BMNotificationUsage *)self sectionID];
  _contactIDsJSONArray = [(BMNotificationUsage *)self _contactIDsJSONArray];
  if ([(BMNotificationUsage *)self hasIsGroupMessage])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMNotificationUsage isGroupMessage](self, "isGroupMessage")}];
  }

  else
  {
    v54 = 0;
  }

  parentBundleID = [(BMNotificationUsage *)self parentBundleID];
  if ([(BMNotificationUsage *)self hasBodyLength])
  {
    null17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMNotificationUsage bodyLength](self, "bodyLength")}];
  }

  else
  {
    null17 = 0;
  }

  v62[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null;
  v63[0] = null;
  v62[1] = @"absoluteTimestamp";
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null2;
  v63[1] = null2;
  v62[2] = @"usageType";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null3;
  v63[2] = null3;
  v62[3] = @"bundleID";
  null4 = bundleID;
  if (!bundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null4;
  v63[3] = null4;
  v62[4] = @"notificationID";
  null5 = notificationID;
  if (!notificationID)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null5;
  v63[4] = null5;
  v62[5] = @"deviceID";
  null6 = deviceID;
  if (!deviceID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null6;
  v63[5] = null6;
  v62[6] = @"title";
  null7 = title;
  if (!title)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null7;
  v63[6] = null7;
  v62[7] = @"subtitle";
  null8 = subtitle;
  if (!subtitle)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v63[7] = null8;
  v62[8] = @"body";
  null9 = body;
  if (!body)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v63[8] = null9;
  v62[9] = @"badge";
  null10 = v59;
  if (!v59)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null10;
  v47 = null9;
  v63[9] = null10;
  v62[10] = @"threadID";
  null11 = threadID;
  if (!threadID)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v7;
  v35 = null11;
  v63[10] = null11;
  v62[11] = @"categoryID";
  null12 = categoryID;
  if (!categoryID)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null17;
  v63[11] = null12;
  v62[12] = @"sectionID";
  null13 = sectionID;
  if (!sectionID)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null8;
  v49 = title;
  v50 = deviceID;
  v48 = uniqueID;
  v63[12] = null13;
  v62[13] = @"contactIDs";
  null14 = _contactIDsJSONArray;
  if (!_contactIDsJSONArray)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = notificationID;
  v29 = bundleID;
  v63[13] = null14;
  v62[14] = @"isGroupMessage";
  null15 = v54;
  if (!v54)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v8;
  v63[14] = null15;
  v62[15] = @"parentBundleID";
  null16 = parentBundleID;
  if (!parentBundleID)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v63[15] = null16;
  v62[16] = @"bodyLength";
  v33 = null17;
  if (!null17)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v63[16] = null17;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:{17, v35}];
  if (!v33)
  {
  }

  if (!parentBundleID)
  {
  }

  if (!v54)
  {
  }

  if (!_contactIDsJSONArray)
  {
  }

  if (!sectionID)
  {
  }

  if (!categoryID)
  {
  }

  if (!threadID)
  {
  }

  if (!v59)
  {
  }

  if (!body)
  {
  }

  if (subtitle)
  {
    if (v49)
    {
      goto LABEL_67;
    }
  }

  else
  {

    if (v49)
    {
LABEL_67:
      if (v50)
      {
        goto LABEL_68;
      }

      goto LABEL_78;
    }
  }

  if (v50)
  {
LABEL_68:
    if (v28)
    {
      goto LABEL_69;
    }

    goto LABEL_79;
  }

LABEL_78:

  if (v28)
  {
LABEL_69:
    if (v29)
    {
      goto LABEL_70;
    }

    goto LABEL_80;
  }

LABEL_79:

  if (v29)
  {
LABEL_70:
    if (v31)
    {
      goto LABEL_71;
    }

    goto LABEL_81;
  }

LABEL_80:

  if (v31)
  {
LABEL_71:
    if (v51)
    {
      goto LABEL_72;
    }

LABEL_82:

    if (v48)
    {
      goto LABEL_73;
    }

    goto LABEL_83;
  }

LABEL_81:

  if (!v51)
  {
    goto LABEL_82;
  }

LABEL_72:
  if (v48)
  {
    goto LABEL_73;
  }

LABEL_83:

LABEL_73:

  return v45;
}

- (id)_contactIDsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  contactIDs = [(BMNotificationUsage *)self contactIDs];
  v5 = [contactIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(contactIDs);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [contactIDs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMNotificationUsage)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v239[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  v196 = v195 = self;
  if (!v196 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v193 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v193 = v196;
LABEL_4:
    v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
    if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v8 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
LABEL_11:
      v8 = v14;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v8 = [v21 dateFromString:v7];

LABEL_16:
      v22 = [dictionaryCopy objectForKeyedSubscript:@"usageType"];
      v191 = v7;
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v23 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [MEMORY[0x1E696AD98] numberWithInt:BMNotificationUsageTypeFromString(v22)];
LABEL_19:
        v24 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
        v194 = v24;
        v190 = v23;
        if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v189 = 0;
LABEL_22:
          v25 = [dictionaryCopy objectForKeyedSubscript:@"notificationID"];
          v192 = v25;
          if (v25 && (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v188 = 0;
                v20 = 0;
                v19 = v193;
                v29 = v192;
                goto LABEL_167;
              }

              v52 = v7;
              v53 = v22;
              v54 = objc_alloc(MEMORY[0x1E696ABC0]);
              v55 = v8;
              v56 = *MEMORY[0x1E698F240];
              v230 = *MEMORY[0x1E696A578];
              v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"notificationID"];
              v231 = v57;
              v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
              v59 = v54;
              v22 = v53;
              v7 = v52;
              v28 = v58;
              v60 = v56;
              v8 = v55;
              v188 = 0;
              v20 = 0;
              *error = [v59 initWithDomain:v60 code:2 userInfo:v58];
              error = v57;
              v29 = v192;
              goto LABEL_120;
            }

            v186 = v22;
            v27 = v26;
          }

          else
          {
            v186 = v22;
            v27 = 0;
          }

          v28 = [dictionaryCopy objectForKeyedSubscript:@"deviceID"];
          errorCopy = error;
          v188 = v27;
          if (!v28 || (objc_opt_class(), v29 = v192, (objc_opt_isKindOfClass() & 1) != 0))
          {
            error = 0;
            goto LABEL_28;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            error = v28;
LABEL_28:
            v30 = [dictionaryCopy objectForKeyedSubscript:@"title"];
            errorCopy2 = error;
            if (!v30 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v185 = 0;
              goto LABEL_31;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v185 = v30;
LABEL_31:
              v31 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
              v183 = v31;
              if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v182 = 0;
LABEL_34:
                v33 = [dictionaryCopy objectForKeyedSubscript:@"body"];
                v181 = v33;
                if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy)
                    {
                      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v96 = v8;
                      v97 = *MEMORY[0x1E698F240];
                      v222 = *MEMORY[0x1E696A578];
                      v179 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"body"];
                      v223 = v179;
                      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
                      error = errorCopy2;
                      v99 = v97;
                      v8 = v96;
                      v178 = v98;
                      v180 = 0;
                      v20 = 0;
                      v22 = v186;
                      *errorCopy = [v95 initWithDomain:v99 code:2 userInfo:?];
                      v7 = v191;
                      v19 = v193;
                      goto LABEL_162;
                    }

                    v180 = 0;
                    v20 = 0;
                    v22 = v186;
                    v7 = v191;
                    v19 = v193;
                    error = errorCopy2;
                    goto LABEL_163;
                  }

                  v180 = v34;
                }

                else
                {
                  v180 = 0;
                }

                v35 = [dictionaryCopy objectForKeyedSubscript:@"badge"];
                v178 = v35;
                if (v35 && (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy)
                    {
                      v100 = v30;
                      v101 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v102 = v8;
                      v103 = *MEMORY[0x1E698F240];
                      v220 = *MEMORY[0x1E696A578];
                      v174 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"badge"];
                      v221 = v174;
                      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
                      v105 = v101;
                      v30 = v100;
                      error = errorCopy2;
                      v106 = v103;
                      v8 = v102;
                      v24 = v194;
                      v173 = v104;
                      v179 = 0;
                      v20 = 0;
                      v22 = v186;
                      *errorCopy = [v105 initWithDomain:v106 code:2 userInfo:?];
                      v7 = v191;
                      v19 = v193;
                      goto LABEL_161;
                    }

                    v179 = 0;
                    v20 = 0;
                    v22 = v186;
                    v7 = v191;
                    v19 = v193;
                    error = errorCopy2;
                    goto LABEL_162;
                  }

                  v179 = v36;
                }

                else
                {
                  v179 = 0;
                }

                v37 = [dictionaryCopy objectForKeyedSubscript:@"threadID"];
                v170 = v28;
                v173 = v37;
                if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy)
                    {
                      v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v113 = v8;
                      v114 = *MEMORY[0x1E698F240];
                      v218 = *MEMORY[0x1E696A578];
                      v172 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"threadID"];
                      v219 = v172;
                      v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
                      error = errorCopy2;
                      v116 = v114;
                      v8 = v113;
                      v171 = v115;
                      v174 = 0;
                      v20 = 0;
                      v22 = v186;
                      *errorCopy = [v112 initWithDomain:v116 code:2 userInfo:?];
                      v7 = v191;
                      v19 = v193;
                      goto LABEL_160;
                    }

                    v174 = 0;
                    v20 = 0;
                    v22 = v186;
                    v7 = v191;
                    v19 = v193;
                    error = errorCopy2;
                    goto LABEL_161;
                  }

                  v174 = v38;
                }

                else
                {
                  v174 = 0;
                }

                v39 = [dictionaryCopy objectForKeyedSubscript:@"categoryID"];
                v171 = v39;
                if (v39 && (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy)
                    {
                      v124 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v125 = v8;
                      v126 = *MEMORY[0x1E698F240];
                      v216 = *MEMORY[0x1E696A578];
                      v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"categoryID"];
                      v217 = v169;
                      v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
                      v128 = v124;
                      v129 = v127;
                      error = errorCopy2;
                      v130 = v126;
                      v8 = v125;
                      v172 = 0;
                      v20 = 0;
                      v22 = v186;
                      *errorCopy = [v128 initWithDomain:v130 code:2 userInfo:v127];
                      v19 = v193;
                      goto LABEL_159;
                    }

                    v172 = 0;
                    v20 = 0;
                    v22 = v186;
                    v7 = v191;
                    v19 = v193;
                    error = errorCopy2;
                    goto LABEL_160;
                  }

                  v172 = v40;
                }

                else
                {
                  v172 = 0;
                }

                v41 = [dictionaryCopy objectForKeyedSubscript:@"sectionID"];
                error = errorCopy2;
                v175 = v8;
                v168 = v41;
                if (v41 && (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy)
                    {
                      v132 = v30;
                      v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v134 = *MEMORY[0x1E698F240];
                      v214 = *MEMORY[0x1E696A578];
                      v129 = v168;
                      v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sectionID"];
                      v215 = v44;
                      v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
                      v135 = v133;
                      v30 = v132;
                      v28 = v170;
                      error = errorCopy2;
                      v136 = [v135 initWithDomain:v134 code:2 userInfo:v73];
                      v169 = 0;
                      v20 = 0;
                      *errorCopy = v136;
                      v19 = v193;
                      goto LABEL_157;
                    }

                    v169 = 0;
                    v20 = 0;
                    v22 = v186;
                    v19 = v193;
                    v129 = v168;
                    goto LABEL_159;
                  }

                  v43 = v30;
                  v169 = v42;
                }

                else
                {
                  v43 = v30;
                  v169 = 0;
                }

                v44 = [dictionaryCopy objectForKeyedSubscript:@"contactIDs"];
                null = [MEMORY[0x1E695DFB0] null];
                v46 = [v44 isEqual:null];

                if (v46)
                {

                  v44 = 0;
                }

                else
                {
                  v30 = v43;
                  if (v44)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy)
                      {
                        v20 = 0;
                        v19 = v193;
                        v129 = v168;
                        goto LABEL_158;
                      }

                      v158 = v43;
                      v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v138 = *MEMORY[0x1E698F240];
                      v212 = *MEMORY[0x1E696A578];
                      v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contactIDs"];
                      v213 = v73;
                      v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
                      v140 = v137;
                      v30 = v158;
                      v141 = [v140 initWithDomain:v138 code:2 userInfo:v139];
                      v20 = 0;
                      *errorCopy = v141;
                      v131 = v139;
                      v19 = v193;
                      goto LABEL_133;
                    }
                  }
                }

                v73 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v44, "count")}];
                v197 = 0u;
                v198 = 0u;
                v199 = 0u;
                v200 = 0u;
                v44 = v44;
                v74 = [v44 countByEnumeratingWithState:&v197 objects:v211 count:16];
                if (!v74)
                {
                  goto LABEL_90;
                }

                v75 = v74;
                v76 = *v198;
LABEL_83:
                v77 = 0;
                while (1)
                {
                  if (*v198 != v76)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v78 = *(*(&v197 + 1) + 8 * v77);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    break;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (errorCopy)
                    {
                      v117 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v118 = *MEMORY[0x1E698F240];
                      v207 = *MEMORY[0x1E696A578];
                      v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contactIDs"];
                      v208 = v165;
                      v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v208 forKeys:&v207 count:1];
                      v110 = v117;
                      v111 = v118;
                      goto LABEL_116;
                    }

                    goto LABEL_123;
                  }

                  [v73 addObject:v78];
                  if (v75 == ++v77)
                  {
                    v75 = [v44 countByEnumeratingWithState:&v197 objects:v211 count:16];
                    if (v75)
                    {
                      goto LABEL_83;
                    }

LABEL_90:

                    v79 = [dictionaryCopy objectForKeyedSubscript:@"isGroupMessage"];
                    v165 = v79;
                    if (!v79)
                    {
                      v166 = 0;
                      v28 = v170;
                      error = errorCopy2;
                      v30 = v43;
                      goto LABEL_139;
                    }

                    v80 = v79;
                    objc_opt_class();
                    error = errorCopy2;
                    v30 = v43;
                    if (objc_opt_isKindOfClass())
                    {
                      v166 = 0;
                      v28 = v170;
                      goto LABEL_139;
                    }

                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();
                    v143 = v80;
                    v28 = v170;
                    if (isKindOfClass)
                    {
                      v166 = v143;
LABEL_139:
                      v144 = [dictionaryCopy objectForKeyedSubscript:@"parentBundleID"];
                      v163 = v144;
                      if (!v144)
                      {
                        v20 = errorCopy;
                        goto LABEL_147;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v20 = errorCopy;
                        v144 = 0;
LABEL_147:
                        v145 = [dictionaryCopy objectForKeyedSubscript:@"bodyLength"];
                        v164 = v144;
                        v162 = v145;
                        if (!v145 || (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v147 = 0;
                          v19 = v193;
                          goto LABEL_150;
                        }

                        objc_opt_class();
                        v19 = v193;
                        if (objc_opt_isKindOfClass())
                        {
                          v147 = v146;
LABEL_150:
                          v24 = v194;
                          v160 = v147;
                          v20 = -[BMNotificationUsage initWithUniqueID:absoluteTimestamp:usageType:bundleID:notificationID:deviceID:title:subtitle:body:badge:threadID:categoryID:sectionID:contactIDs:isGroupMessage:parentBundleID:bodyLength:](v195, "initWithUniqueID:absoluteTimestamp:usageType:bundleID:notificationID:deviceID:title:subtitle:body:badge:threadID:categoryID:sectionID:contactIDs:isGroupMessage:parentBundleID:bodyLength:", v19, v175, [v190 intValue], v189, v188, error, v185, v182, v180, v179, v174, v172, v169, v73, v166, v144, v147);
                          v195 = v20;
                        }

                        else
                        {
                          v24 = v194;
                          if (v20)
                          {
                            v154 = v20;
                            v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v159 = *MEMORY[0x1E698F240];
                            v201 = *MEMORY[0x1E696A578];
                            v155 = v30;
                            v156 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bodyLength"];
                            v202 = v156;
                            v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v202 forKeys:&v201 count:1];
                            v154->super.super.isa = [v161 initWithDomain:v159 code:2 userInfo:v157];

                            v30 = v155;
                            v28 = v170;
                            error = errorCopy2;
                            v160 = 0;
                            v20 = 0;
                          }

                          else
                          {
                            v160 = 0;
                          }
                        }

LABEL_151:
                      }

                      else
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v20 = errorCopy;
                          v144 = v144;
                          v28 = v170;
                          goto LABEL_147;
                        }

                        if (errorCopy)
                        {
                          v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v153 = *MEMORY[0x1E698F240];
                          v203 = *MEMORY[0x1E696A578];
                          v160 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parentBundleID"];
                          v204 = v160;
                          v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v204 forKeys:&v203 count:1];
                          v164 = 0;
                          v20 = 0;
                          *errorCopy = [v152 initWithDomain:v153 code:2 userInfo:?];
                          v19 = v193;
                          v24 = v194;
                          v28 = v170;
                          goto LABEL_151;
                        }

                        v164 = 0;
                        v20 = 0;
                        v19 = v193;
                        v24 = v194;
                        v28 = v170;
                      }

                      v148 = v163;
LABEL_153:

LABEL_154:
                      v129 = v168;
                    }

                    else
                    {
                      if (errorCopy)
                      {
                        v150 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v167 = *MEMORY[0x1E698F240];
                        v205 = *MEMORY[0x1E696A578];
                        v28 = v170;
                        error = errorCopy2;
                        v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGroupMessage"];
                        v206 = v164;
                        v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                        v151 = [v150 initWithDomain:v167 code:2 userInfo:v148];
                        v166 = 0;
                        v20 = 0;
                        *errorCopy = v151;
                        v19 = v193;
                        v24 = v194;
                        goto LABEL_153;
                      }

                      v166 = 0;
                      v20 = 0;
                      v19 = v193;
                      v24 = v194;
                      v129 = v168;
                    }

                    v131 = v166;
LABEL_156:

LABEL_157:
LABEL_158:

                    v8 = v175;
                    v22 = v186;
LABEL_159:

                    v7 = v191;
LABEL_160:

LABEL_161:
LABEL_162:

LABEL_163:
LABEL_164:

LABEL_165:
                    v29 = v192;
LABEL_166:

LABEL_167:
                    v23 = v190;
LABEL_168:

                    error = v189;
                    goto LABEL_169;
                  }
                }

                if (errorCopy)
                {
                  v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v108 = *MEMORY[0x1E698F240];
                  v209 = *MEMORY[0x1E696A578];
                  v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contactIDs"];
                  v210 = v165;
                  v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v210 forKeys:&v209 count:1];
                  v110 = v107;
                  v111 = v108;
LABEL_116:
                  v164 = v109;
                  v24 = v194;
                  v28 = v170;
                  v20 = 0;
                  *errorCopy = [v110 initWithDomain:v111 code:2 userInfo:?];
                  v166 = v44;
                  v19 = v193;
                  error = errorCopy2;
                  v30 = v43;
                  goto LABEL_154;
                }

LABEL_123:
                v20 = 0;
                v131 = v44;
                v19 = v193;
                v24 = v194;
                v28 = v170;
                error = errorCopy2;
                v30 = v43;
LABEL_133:
                v129 = v168;
                goto LABEL_156;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v182 = v32;
                goto LABEL_34;
              }

              if (errorCopy)
              {
                v88 = v28;
                v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                v90 = v8;
                v91 = *MEMORY[0x1E698F240];
                v224 = *MEMORY[0x1E696A578];
                v180 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subtitle"];
                v225 = v180;
                v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                v93 = v89;
                v28 = v88;
                error = errorCopy2;
                v94 = v91;
                v8 = v90;
                v181 = v92;
                v182 = 0;
                v20 = 0;
                *errorCopy = [v93 initWithDomain:v94 code:2 userInfo:?];
                v22 = v186;
                v7 = v191;
                v19 = v193;
                goto LABEL_163;
              }

              v182 = 0;
              v20 = 0;
LABEL_130:
              v22 = v186;
              v7 = v191;
              v19 = v193;
              goto LABEL_164;
            }

            if (errorCopy)
            {
              v69 = objc_alloc(MEMORY[0x1E696ABC0]);
              v177 = v8;
              v70 = *MEMORY[0x1E698F240];
              v226 = *MEMORY[0x1E696A578];
              v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
              v227 = v182;
              v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
              v72 = v70;
              v8 = v177;
              v183 = v71;
              v185 = 0;
              v20 = 0;
              *errorCopy = [v69 initWithDomain:v72 code:2 userInfo:?];
              goto LABEL_130;
            }

            v185 = 0;
            v20 = 0;
LABEL_125:
            v22 = v186;
            v7 = v191;
            v19 = v193;
            goto LABEL_165;
          }

          if (error)
          {
            v61 = objc_alloc(MEMORY[0x1E696ABC0]);
            v62 = v8;
            v63 = *MEMORY[0x1E698F240];
            v228 = *MEMORY[0x1E696A578];
            v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceID"];
            v229 = v185;
            v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
            v65 = v61;
            v30 = v64;
            v66 = v63;
            v8 = v62;
            v67 = [v65 initWithDomain:v66 code:2 userInfo:v64];
            errorCopy3 = error;
            error = 0;
            v20 = 0;
            *errorCopy3 = v67;
            goto LABEL_125;
          }

          v20 = 0;
          v22 = v186;
          v7 = v191;
LABEL_120:
          v19 = v193;
          goto LABEL_166;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v189 = v24;
          goto LABEL_22;
        }

        if (error)
        {
          v47 = v22;
          v48 = objc_alloc(MEMORY[0x1E696ABC0]);
          v176 = v8;
          v49 = *MEMORY[0x1E698F240];
          v232 = *MEMORY[0x1E696A578];
          v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
          v233 = v188;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
          v50 = v48;
          v22 = v47;
          v7 = v191;
          v51 = v49;
          v8 = v176;
          v189 = 0;
          v20 = 0;
          *error = [v50 initWithDomain:v51 code:2 userInfo:v29];
          v19 = v193;
          goto LABEL_168;
        }

        v20 = 0;
        v19 = v193;
LABEL_169:

        goto LABEL_170;
      }

      v81 = v22;
      if (error)
      {
        v82 = objc_alloc(MEMORY[0x1E696ABC0]);
        v83 = v8;
        v84 = *MEMORY[0x1E698F240];
        v234 = *MEMORY[0x1E696A578];
        v85 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"usageType"];
        v235 = v85;
        v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
        v87 = v84;
        v8 = v83;
        v20 = 0;
        *error = [v82 initWithDomain:v87 code:2 userInfo:v86];
        error = v85;
        v23 = 0;
        v19 = v193;
        v22 = v81;
        v24 = v86;
        goto LABEL_169;
      }

      v23 = 0;
      v20 = 0;
      v19 = v193;
LABEL_170:

      goto LABEL_171;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      goto LABEL_11;
    }

    if (error)
    {
      v119 = objc_alloc(MEMORY[0x1E696ABC0]);
      v120 = *MEMORY[0x1E698F240];
      v236 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v237 = v23;
      v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
      v122 = v119;
      v22 = v121;
      v123 = [v122 initWithDomain:v120 code:2 userInfo:v121];
      v8 = 0;
      v20 = 0;
      *error = v123;
      v19 = v193;
      goto LABEL_170;
    }

    v8 = 0;
    v20 = 0;
    v19 = v193;
LABEL_171:

    goto LABEL_172;
  }

  if (error)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v238 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
    v239[0] = v17;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v239 forKeys:&v238 count:1];
    v18 = v16;
    v8 = v17;
    v19 = 0;
    v20 = 0;
    *error = [v15 initWithDomain:v18 code:2 userInfo:v7];
    goto LABEL_171;
  }

  v19 = 0;
  v20 = 0;
LABEL_172:

  return v20;
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

  PBDataWriterWriteUint32Field();
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_notificationID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceID)
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

  if (self->_hasBadge)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_threadID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_categoryID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sectionID)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_contactIDs;
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

  if (self->_hasIsGroupMessage)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_parentBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBodyLength)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v58.receiver = self;
  v58.super_class = BMNotificationUsage;
  v5 = [(BMEventBase *)&v58 init];
  if (!v5)
  {
    goto LABEL_94;
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
        LOBYTE(v59) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v59 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (LOBYTE(v59) & 0x7F) << v8;
        if ((LOBYTE(v59) & 0x80) == 0)
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
          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_64;
        case 2u:
          v5->_hasRaw_absoluteTimestamp = 1;
          v59 = 0.0;
          v20 = [fromCopy position] + 8;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v59 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_absoluteTimestamp = v59;
          goto LABEL_65;
        case 3u:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          while (1)
          {
            LOBYTE(v59) = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v59 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v24 |= (LOBYTE(v59) & 0x7F) << v22;
            if ((LOBYTE(v59) & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            if (v23++ > 8)
            {
              goto LABEL_78;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v24 > 0x1B)
          {
LABEL_78:
            LODWORD(v24) = 0;
          }

          v5->_usageType = v24;
          goto LABEL_65;
        case 4u:
          v16 = PBReaderReadString();
          v17 = 56;
          goto LABEL_64;
        case 5u:
          v16 = PBReaderReadString();
          v17 = 64;
          goto LABEL_64;
        case 7u:
          v16 = PBReaderReadString();
          v17 = 72;
          goto LABEL_64;
        case 8u:
          v16 = PBReaderReadString();
          v17 = 80;
          goto LABEL_64;
        case 9u:
          v16 = PBReaderReadString();
          v17 = 88;
          goto LABEL_64;
        case 0xAu:
          v16 = PBReaderReadString();
          v17 = 96;
          goto LABEL_64;
        case 0xBu:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v5->_hasBadge = 1;
          while (1)
          {
            LOBYTE(v59) = 0;
            v39 = [fromCopy position] + 1;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v59 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v38 |= (LOBYTE(v59) & 0x7F) << v36;
            if ((LOBYTE(v59) & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v14 = v37++ >= 9;
            if (v14)
            {
              v42 = 0;
              goto LABEL_85;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_85:
          v5->_badge = v42;
          goto LABEL_65;
        case 0xCu:
          v16 = PBReaderReadString();
          v17 = 112;
          goto LABEL_64;
        case 0xDu:
          v16 = PBReaderReadString();
          v17 = 120;
          goto LABEL_64;
        case 0xEu:
          v16 = PBReaderReadString();
          v17 = 128;
          goto LABEL_64;
        case 0xFu:
          v18 = PBReaderReadString();
          if (!v18)
          {
            goto LABEL_96;
          }

          v19 = v18;
          [v6 addObject:v18];

          goto LABEL_65;
        case 0x10u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasIsGroupMessage = 1;
          while (1)
          {
            LOBYTE(v59) = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v59 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v31 |= (LOBYTE(v59) & 0x7F) << v29;
            if ((LOBYTE(v59) & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v14 = v30++ >= 9;
            if (v14)
            {
              LOBYTE(v35) = 0;
              goto LABEL_81;
            }
          }

          v35 = (v31 != 0) & ~[fromCopy hasError];
LABEL_81:
          v5->_isGroupMessage = v35;
          goto LABEL_65;
        case 0x11u:
          v16 = PBReaderReadString();
          v17 = 144;
LABEL_64:
          v43 = *(&v5->super.super.isa + v17);
          *(&v5->super.super.isa + v17) = v16;

          goto LABEL_65;
        case 0x12u:
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v5->_hasBodyLength = 1;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_65;
          }

LABEL_96:

          goto LABEL_93;
      }

      while (1)
      {
        LOBYTE(v59) = 0;
        v48 = [fromCopy position] + 1;
        if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
        {
          data6 = [fromCopy data];
          [data6 getBytes:&v59 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v47 |= (LOBYTE(v59) & 0x7F) << v45;
        if ((LOBYTE(v59) & 0x80) == 0)
        {
          break;
        }

        v45 += 7;
        v14 = v46++ >= 9;
        if (v14)
        {
          v51 = 0;
          goto LABEL_89;
        }
      }

      v51 = [fromCopy hasError] ? 0 : v47;
LABEL_89:
      v5->_bodyLength = v51;
LABEL_65:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v53 = [v6 copy];
  contactIDs = v5->_contactIDs;
  v5->_contactIDs = v53;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_93:
    v56 = 0;
  }

  else
  {
LABEL_94:
    v56 = v5;
  }

  return v56;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMNotificationUsage *)self uniqueID];
  absoluteTimestamp = [(BMNotificationUsage *)self absoluteTimestamp];
  v15 = BMNotificationUsageTypeAsString([(BMNotificationUsage *)self usageType]);
  bundleID = [(BMNotificationUsage *)self bundleID];
  notificationID = [(BMNotificationUsage *)self notificationID];
  deviceID = [(BMNotificationUsage *)self deviceID];
  title = [(BMNotificationUsage *)self title];
  subtitle = [(BMNotificationUsage *)self subtitle];
  body = [(BMNotificationUsage *)self body];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMNotificationUsage badge](self, "badge")}];
  threadID = [(BMNotificationUsage *)self threadID];
  categoryID = [(BMNotificationUsage *)self categoryID];
  sectionID = [(BMNotificationUsage *)self sectionID];
  contactIDs = [(BMNotificationUsage *)self contactIDs];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMNotificationUsage isGroupMessage](self, "isGroupMessage")}];
  parentBundleID = [(BMNotificationUsage *)self parentBundleID];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMNotificationUsage bodyLength](self, "bodyLength")}];
  v18 = [v17 initWithFormat:@"BMNotificationUsage with uniqueID: %@, absoluteTimestamp: %@, usageType: %@, bundleID: %@, notificationID: %@, deviceID: %@, title: %@, subtitle: %@, body: %@, badge: %@, threadID: %@, categoryID: %@, sectionID: %@, contactIDs: %@, isGroupMessage: %@, parentBundleID: %@, bodyLength: %@", uniqueID, absoluteTimestamp, v15, bundleID, notificationID, deviceID, title, subtitle, body, v11, threadID, categoryID, sectionID, contactIDs, v5, parentBundleID, v7];

  return v18;
}

- (BMNotificationUsage)initWithUniqueID:(id)d absoluteTimestamp:(id)timestamp usageType:(int)type bundleID:(id)iD notificationID:(id)notificationID deviceID:(id)deviceID title:(id)title subtitle:(id)self0 body:(id)self1 badge:(id)self2 threadID:(id)self3 categoryID:(id)self4 sectionID:(id)self5 contactIDs:(id)self6 isGroupMessage:(id)self7 parentBundleID:(id)self8 bodyLength:(id)self9
{
  dCopy = d;
  timestampCopy = timestamp;
  iDCopy = iD;
  notificationIDCopy = notificationID;
  notificationIDCopy2 = notificationID;
  deviceIDCopy = deviceID;
  deviceIDCopy2 = deviceID;
  titleCopy = title;
  subtitleCopy = subtitle;
  bodyCopy = body;
  badgeCopy = badge;
  threadIDCopy = threadID;
  categoryIDCopy = categoryID;
  sectionIDCopy = sectionID;
  dsCopy = ds;
  v26 = timestampCopy;
  messageCopy = message;
  bundleIDCopy = bundleID;
  lengthCopy = length;
  v50.receiver = self;
  v50.super_class = BMNotificationUsage;
  v30 = [(BMEventBase *)&v50 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v30->_uniqueID, d);
    if (v26)
    {
      v30->_hasRaw_absoluteTimestamp = 1;
      [v26 timeIntervalSinceReferenceDate];
    }

    else
    {
      v30->_hasRaw_absoluteTimestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_absoluteTimestamp = v31;
    v30->_usageType = type;
    objc_storeStrong(&v30->_bundleID, iD);
    objc_storeStrong(&v30->_notificationID, notificationIDCopy);
    objc_storeStrong(&v30->_deviceID, deviceIDCopy);
    objc_storeStrong(&v30->_title, title);
    objc_storeStrong(&v30->_subtitle, subtitle);
    objc_storeStrong(&v30->_body, body);
    if (badgeCopy)
    {
      v30->_hasBadge = 1;
      unsignedLongLongValue = [badgeCopy unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue = 0;
      v30->_hasBadge = 0;
    }

    v30->_badge = unsignedLongLongValue;
    objc_storeStrong(&v30->_threadID, threadID);
    objc_storeStrong(&v30->_categoryID, categoryID);
    objc_storeStrong(&v30->_sectionID, sectionID);
    objc_storeStrong(&v30->_contactIDs, ds);
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

    objc_storeStrong(&v30->_parentBundleID, bundleID);
    if (lengthCopy)
    {
      v30->_hasBodyLength = 1;
      unsignedIntValue = [lengthCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v30->_hasBodyLength = 0;
    }

    v30->_bodyLength = unsignedIntValue;
  }

  return v30;
}

+ (id)protoFields
{
  v21[17] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v21[0] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:2 type:0 subMessageClass:0];
  v21[1] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageType" number:3 type:4 subMessageClass:0];
  v21[2] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:4 type:13 subMessageClass:0];
  v21[3] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationID" number:5 type:13 subMessageClass:0];
  v21[4] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceID" number:7 type:13 subMessageClass:0];
  v21[5] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:8 type:13 subMessageClass:0];
  v21[6] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subtitle" number:9 type:13 subMessageClass:0];
  v21[7] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"body" number:10 type:13 subMessageClass:0];
  v21[8] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"badge" number:11 type:5 subMessageClass:0];
  v21[9] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"threadID" number:12 type:13 subMessageClass:0];
  v21[10] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"categoryID" number:13 type:13 subMessageClass:0];
  v21[11] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sectionID" number:14 type:13 subMessageClass:0];
  v21[12] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactIDs" number:15 type:13 subMessageClass:0];
  v21[13] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupMessage" number:16 type:12 subMessageClass:0];
  v21[14] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parentBundleID" number:17 type:13 subMessageClass:0];
  v21[15] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bodyLength" number:18 type:4 subMessageClass:0];
  v21[16] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:17];

  return v11;
}

+ (id)columns
{
  v21[17] = *MEMORY[0x1E69E9840];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:1];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notificationID" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceID" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subtitle" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"body" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"badge" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:5 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"threadID" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"categoryID" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sectionID" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contactIDs_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_177];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupMessage" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parentBundleID" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bodyLength" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v21[0] = v20;
  v21[1] = v19;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v16;
  v21[5] = v15;
  v21[6] = v14;
  v21[7] = v2;
  v21[8] = v3;
  v21[9] = v4;
  v21[10] = v5;
  v21[11] = v13;
  v21[12] = v6;
  v21[13] = v7;
  v21[14] = v12;
  v21[15] = v8;
  v21[16] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:17];

  return v11;
}

id __30__BMNotificationUsage_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _contactIDsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMNotificationUsage alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[9] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end