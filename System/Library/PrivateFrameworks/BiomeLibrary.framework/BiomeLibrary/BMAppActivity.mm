@interface BMAppActivity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAppActivity)initWithBundleID:(id)d activityType:(id)type beginningOfActivity:(id)activity contentDescription:(id)description expirationDate:(id)date isEligibleForPrediction:(id)prediction isPubliclyIndexable:(id)indexable itemIdentifier:(id)self0 itemRelatedContentURL:(id)self1 itemRelatedUniqueIdentifier:(id)self2 shortcutAvailability:(id)self3 suggestedInvocationPhrase:(id)self4 title:(id)self5 userActivityRequiredString:(id)self6 userActivityUUID:(id)self7 sourceID:(id)self8 sourceBundleID:(id)self9 sourceItemID:(id)itemID sourceGroupID:(id)groupID calendarUserActivityDate:(id)activityDate calendarUserActivityExternalID:(id)externalID calendarUserActivityEndDate:(id)endDate;
- (BMAppActivity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)calendarUserActivityDate;
- (NSDate)calendarUserActivityEndDate;
- (NSDate)expirationDate;
- (NSString)description;
- (NSURL)itemRelatedContentURL;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAppActivity

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppActivity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v26[22] = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activityType" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"beginningOfActivity" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentDescription" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"expirationDate" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isEligibleForPrediction" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPubliclyIndexable" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedContentURL" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:4];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemRelatedUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shortcutAvailability" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedInvocationPhrase" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"title" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityRequiredString" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userActivityUUID" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceID" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceItemID" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceGroupID" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityDate" dataType:3 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:1];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityExternalID" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"calendarUserActivityEndDate" dataType:3 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:1];
  v26[0] = v25;
  v26[1] = v24;
  v26[2] = v23;
  v26[3] = v13;
  v26[4] = v22;
  v26[5] = v21;
  v26[6] = v20;
  v26[7] = v19;
  v26[8] = v18;
  v26[9] = v17;
  v26[10] = v16;
  v26[11] = v15;
  v26[12] = v2;
  v26[13] = v3;
  v26[14] = v4;
  v26[15] = v14;
  v26[16] = v5;
  v26[17] = v12;
  v26[18] = v6;
  v26[19] = v11;
  v26[20] = v7;
  v26[21] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:22];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMAppActivity *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMAppActivity *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_89;
      }
    }

    activityType = [(BMAppActivity *)self activityType];
    activityType2 = [v5 activityType];
    v15 = activityType2;
    if (activityType == activityType2)
    {
    }

    else
    {
      activityType3 = [(BMAppActivity *)self activityType];
      activityType4 = [v5 activityType];
      v18 = [activityType3 isEqual:activityType4];

      if (!v18)
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasBeginningOfActivity](self, "hasBeginningOfActivity") || [v5 hasBeginningOfActivity])
    {
      if (![(BMAppActivity *)self hasBeginningOfActivity])
      {
        goto LABEL_89;
      }

      if (![v5 hasBeginningOfActivity])
      {
        goto LABEL_89;
      }

      beginningOfActivity = [(BMAppActivity *)self beginningOfActivity];
      if (beginningOfActivity != [v5 beginningOfActivity])
      {
        goto LABEL_89;
      }
    }

    contentDescription = [(BMAppActivity *)self contentDescription];
    contentDescription2 = [v5 contentDescription];
    v22 = contentDescription2;
    if (contentDescription == contentDescription2)
    {
    }

    else
    {
      contentDescription3 = [(BMAppActivity *)self contentDescription];
      contentDescription4 = [v5 contentDescription];
      v25 = [contentDescription3 isEqual:contentDescription4];

      if (!v25)
      {
        goto LABEL_89;
      }
    }

    expirationDate = [(BMAppActivity *)self expirationDate];
    expirationDate2 = [v5 expirationDate];
    v28 = expirationDate2;
    if (expirationDate == expirationDate2)
    {
    }

    else
    {
      expirationDate3 = [(BMAppActivity *)self expirationDate];
      expirationDate4 = [v5 expirationDate];
      v31 = [expirationDate3 isEqual:expirationDate4];

      if (!v31)
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasIsEligibleForPrediction](self, "hasIsEligibleForPrediction") || [v5 hasIsEligibleForPrediction])
    {
      if (![(BMAppActivity *)self hasIsEligibleForPrediction])
      {
        goto LABEL_89;
      }

      if (![v5 hasIsEligibleForPrediction])
      {
        goto LABEL_89;
      }

      isEligibleForPrediction = [(BMAppActivity *)self isEligibleForPrediction];
      if (isEligibleForPrediction != [v5 isEligibleForPrediction])
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasIsPubliclyIndexable](self, "hasIsPubliclyIndexable") || [v5 hasIsPubliclyIndexable])
    {
      if (![(BMAppActivity *)self hasIsPubliclyIndexable])
      {
        goto LABEL_89;
      }

      if (![v5 hasIsPubliclyIndexable])
      {
        goto LABEL_89;
      }

      isPubliclyIndexable = [(BMAppActivity *)self isPubliclyIndexable];
      if (isPubliclyIndexable != [v5 isPubliclyIndexable])
      {
        goto LABEL_89;
      }
    }

    itemIdentifier = [(BMAppActivity *)self itemIdentifier];
    itemIdentifier2 = [v5 itemIdentifier];
    v36 = itemIdentifier2;
    if (itemIdentifier == itemIdentifier2)
    {
    }

    else
    {
      itemIdentifier3 = [(BMAppActivity *)self itemIdentifier];
      itemIdentifier4 = [v5 itemIdentifier];
      v39 = [itemIdentifier3 isEqual:itemIdentifier4];

      if (!v39)
      {
        goto LABEL_89;
      }
    }

    itemRelatedContentURL = [(BMAppActivity *)self itemRelatedContentURL];
    itemRelatedContentURL2 = [v5 itemRelatedContentURL];
    v42 = itemRelatedContentURL2;
    if (itemRelatedContentURL == itemRelatedContentURL2)
    {
    }

    else
    {
      itemRelatedContentURL3 = [(BMAppActivity *)self itemRelatedContentURL];
      itemRelatedContentURL4 = [v5 itemRelatedContentURL];
      v45 = [itemRelatedContentURL3 isEqual:itemRelatedContentURL4];

      if (!v45)
      {
        goto LABEL_89;
      }
    }

    itemRelatedUniqueIdentifier = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
    itemRelatedUniqueIdentifier2 = [v5 itemRelatedUniqueIdentifier];
    v48 = itemRelatedUniqueIdentifier2;
    if (itemRelatedUniqueIdentifier == itemRelatedUniqueIdentifier2)
    {
    }

    else
    {
      itemRelatedUniqueIdentifier3 = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
      itemRelatedUniqueIdentifier4 = [v5 itemRelatedUniqueIdentifier];
      v51 = [itemRelatedUniqueIdentifier3 isEqual:itemRelatedUniqueIdentifier4];

      if (!v51)
      {
        goto LABEL_89;
      }
    }

    if (-[BMAppActivity hasShortcutAvailability](self, "hasShortcutAvailability") || [v5 hasShortcutAvailability])
    {
      if (![(BMAppActivity *)self hasShortcutAvailability])
      {
        goto LABEL_89;
      }

      if (![v5 hasShortcutAvailability])
      {
        goto LABEL_89;
      }

      shortcutAvailability = [(BMAppActivity *)self shortcutAvailability];
      if (shortcutAvailability != [v5 shortcutAvailability])
      {
        goto LABEL_89;
      }
    }

    suggestedInvocationPhrase = [(BMAppActivity *)self suggestedInvocationPhrase];
    suggestedInvocationPhrase2 = [v5 suggestedInvocationPhrase];
    v55 = suggestedInvocationPhrase2;
    if (suggestedInvocationPhrase == suggestedInvocationPhrase2)
    {
    }

    else
    {
      suggestedInvocationPhrase3 = [(BMAppActivity *)self suggestedInvocationPhrase];
      suggestedInvocationPhrase4 = [v5 suggestedInvocationPhrase];
      v58 = [suggestedInvocationPhrase3 isEqual:suggestedInvocationPhrase4];

      if (!v58)
      {
        goto LABEL_89;
      }
    }

    title = [(BMAppActivity *)self title];
    title2 = [v5 title];
    v61 = title2;
    if (title == title2)
    {
    }

    else
    {
      title3 = [(BMAppActivity *)self title];
      title4 = [v5 title];
      v64 = [title3 isEqual:title4];

      if (!v64)
      {
        goto LABEL_89;
      }
    }

    userActivityRequiredString = [(BMAppActivity *)self userActivityRequiredString];
    userActivityRequiredString2 = [v5 userActivityRequiredString];
    v67 = userActivityRequiredString2;
    if (userActivityRequiredString == userActivityRequiredString2)
    {
    }

    else
    {
      userActivityRequiredString3 = [(BMAppActivity *)self userActivityRequiredString];
      userActivityRequiredString4 = [v5 userActivityRequiredString];
      v70 = [userActivityRequiredString3 isEqual:userActivityRequiredString4];

      if (!v70)
      {
        goto LABEL_89;
      }
    }

    userActivityUUID = [(BMAppActivity *)self userActivityUUID];
    userActivityUUID2 = [v5 userActivityUUID];
    v73 = userActivityUUID2;
    if (userActivityUUID == userActivityUUID2)
    {
    }

    else
    {
      userActivityUUID3 = [(BMAppActivity *)self userActivityUUID];
      userActivityUUID4 = [v5 userActivityUUID];
      v76 = [userActivityUUID3 isEqual:userActivityUUID4];

      if (!v76)
      {
        goto LABEL_89;
      }
    }

    sourceID = [(BMAppActivity *)self sourceID];
    sourceID2 = [v5 sourceID];
    v79 = sourceID2;
    if (sourceID == sourceID2)
    {
    }

    else
    {
      sourceID3 = [(BMAppActivity *)self sourceID];
      sourceID4 = [v5 sourceID];
      v82 = [sourceID3 isEqual:sourceID4];

      if (!v82)
      {
        goto LABEL_89;
      }
    }

    sourceBundleID = [(BMAppActivity *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v85 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMAppActivity *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v88 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v88)
      {
        goto LABEL_89;
      }
    }

    sourceItemID = [(BMAppActivity *)self sourceItemID];
    sourceItemID2 = [v5 sourceItemID];
    v91 = sourceItemID2;
    if (sourceItemID == sourceItemID2)
    {
    }

    else
    {
      sourceItemID3 = [(BMAppActivity *)self sourceItemID];
      sourceItemID4 = [v5 sourceItemID];
      v94 = [sourceItemID3 isEqual:sourceItemID4];

      if (!v94)
      {
        goto LABEL_89;
      }
    }

    sourceGroupID = [(BMAppActivity *)self sourceGroupID];
    sourceGroupID2 = [v5 sourceGroupID];
    v97 = sourceGroupID2;
    if (sourceGroupID == sourceGroupID2)
    {
    }

    else
    {
      sourceGroupID3 = [(BMAppActivity *)self sourceGroupID];
      sourceGroupID4 = [v5 sourceGroupID];
      v100 = [sourceGroupID3 isEqual:sourceGroupID4];

      if (!v100)
      {
        goto LABEL_89;
      }
    }

    calendarUserActivityDate = [(BMAppActivity *)self calendarUserActivityDate];
    calendarUserActivityDate2 = [v5 calendarUserActivityDate];
    v103 = calendarUserActivityDate2;
    if (calendarUserActivityDate == calendarUserActivityDate2)
    {
    }

    else
    {
      calendarUserActivityDate3 = [(BMAppActivity *)self calendarUserActivityDate];
      calendarUserActivityDate4 = [v5 calendarUserActivityDate];
      v106 = [calendarUserActivityDate3 isEqual:calendarUserActivityDate4];

      if (!v106)
      {
        goto LABEL_89;
      }
    }

    calendarUserActivityExternalID = [(BMAppActivity *)self calendarUserActivityExternalID];
    calendarUserActivityExternalID2 = [v5 calendarUserActivityExternalID];
    v109 = calendarUserActivityExternalID2;
    if (calendarUserActivityExternalID == calendarUserActivityExternalID2)
    {
    }

    else
    {
      calendarUserActivityExternalID3 = [(BMAppActivity *)self calendarUserActivityExternalID];
      calendarUserActivityExternalID4 = [v5 calendarUserActivityExternalID];
      v112 = [calendarUserActivityExternalID3 isEqual:calendarUserActivityExternalID4];

      if (!v112)
      {
LABEL_89:
        v12 = 0;
LABEL_90:

        goto LABEL_91;
      }
    }

    calendarUserActivityEndDate = [(BMAppActivity *)self calendarUserActivityEndDate];
    calendarUserActivityEndDate2 = [v5 calendarUserActivityEndDate];
    if (calendarUserActivityEndDate == calendarUserActivityEndDate2)
    {
      v12 = 1;
    }

    else
    {
      calendarUserActivityEndDate3 = [(BMAppActivity *)self calendarUserActivityEndDate];
      calendarUserActivityEndDate4 = [v5 calendarUserActivityEndDate];
      v12 = [calendarUserActivityEndDate3 isEqual:calendarUserActivityEndDate4];
    }

    goto LABEL_90;
  }

  v12 = 0;
LABEL_91:

  return v12;
}

- (NSDate)calendarUserActivityEndDate
{
  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_calendarUserActivityEndDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)calendarUserActivityDate
{
  if (self->_hasRaw_calendarUserActivityDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_calendarUserActivityDate];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)itemRelatedContentURL
{
  raw_itemRelatedContentURL = self->_raw_itemRelatedContentURL;
  if (raw_itemRelatedContentURL)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_itemRelatedContentURL toType:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)expirationDate
{
  if (self->_hasRaw_expirationDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_expirationDate];
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
  v82[22] = *MEMORY[0x1E69E9840];
  bundleID = [(BMAppActivity *)self bundleID];
  activityType = [(BMAppActivity *)self activityType];
  if ([(BMAppActivity *)self hasBeginningOfActivity])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity beginningOfActivity](self, "beginningOfActivity")}];
  }

  else
  {
    v5 = 0;
  }

  contentDescription = [(BMAppActivity *)self contentDescription];
  expirationDate = [(BMAppActivity *)self expirationDate];
  if (expirationDate)
  {
    v8 = MEMORY[0x1E696AD98];
    expirationDate2 = [(BMAppActivity *)self expirationDate];
    [expirationDate2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMAppActivity *)self hasIsEligibleForPrediction])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMAppActivity *)self hasIsPubliclyIndexable])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  }

  else
  {
    v79 = 0;
  }

  itemIdentifier = [(BMAppActivity *)self itemIdentifier];
  itemRelatedContentURL = [(BMAppActivity *)self itemRelatedContentURL];
  absoluteString = [itemRelatedContentURL absoluteString];

  itemRelatedUniqueIdentifier = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
  if ([(BMAppActivity *)self hasShortcutAvailability])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppActivity shortcutAvailability](self, "shortcutAvailability")}];
  }

  else
  {
    v75 = 0;
  }

  suggestedInvocationPhrase = [(BMAppActivity *)self suggestedInvocationPhrase];
  title = [(BMAppActivity *)self title];
  userActivityRequiredString = [(BMAppActivity *)self userActivityRequiredString];
  userActivityUUID = [(BMAppActivity *)self userActivityUUID];
  sourceID = [(BMAppActivity *)self sourceID];
  sourceBundleID = [(BMAppActivity *)self sourceBundleID];
  sourceItemID = [(BMAppActivity *)self sourceItemID];
  sourceGroupID = [(BMAppActivity *)self sourceGroupID];
  calendarUserActivityDate = [(BMAppActivity *)self calendarUserActivityDate];
  if (calendarUserActivityDate)
  {
    v13 = MEMORY[0x1E696AD98];
    calendarUserActivityDate2 = [(BMAppActivity *)self calendarUserActivityDate];
    [calendarUserActivityDate2 timeIntervalSinceReferenceDate];
    v66 = [v13 numberWithDouble:?];
  }

  else
  {
    v66 = 0;
  }

  calendarUserActivityExternalID = [(BMAppActivity *)self calendarUserActivityExternalID];
  calendarUserActivityEndDate = [(BMAppActivity *)self calendarUserActivityEndDate];
  if (calendarUserActivityEndDate)
  {
    v16 = MEMORY[0x1E696AD98];
    calendarUserActivityEndDate2 = [(BMAppActivity *)self calendarUserActivityEndDate];
    [calendarUserActivityEndDate2 timeIntervalSinceReferenceDate];
    v18 = [v16 numberWithDouble:?];
  }

  else
  {
    v18 = 0;
  }

  v81[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null;
  v82[0] = null;
  v81[1] = @"activityType";
  null2 = activityType;
  if (!activityType)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null2;
  v82[1] = null2;
  v81[2] = @"beginningOfActivity";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null3;
  v82[2] = null3;
  v81[3] = @"contentDescription";
  null4 = contentDescription;
  if (!contentDescription)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null4;
  v82[3] = null4;
  v81[4] = @"expirationDate";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null5;
  v82[4] = null5;
  v81[5] = @"isEligibleForPrediction";
  null6 = v80;
  if (!v80)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v82[5] = null6;
  v81[6] = @"isPubliclyIndexable";
  null7 = v79;
  if (!v79)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v82[6] = null7;
  v81[7] = @"itemIdentifier";
  null8 = itemIdentifier;
  if (!itemIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v82[7] = null8;
  v81[8] = @"itemRelatedContentURL";
  null9 = absoluteString;
  if (!absoluteString)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v82[8] = null9;
  v81[9] = @"itemRelatedUniqueIdentifier";
  null10 = itemRelatedUniqueIdentifier;
  if (!itemRelatedUniqueIdentifier)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null10;
  v82[9] = null10;
  v81[10] = @"shortcutAvailability";
  null11 = v75;
  if (!v75)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null11;
  v82[10] = null11;
  v81[11] = @"suggestedInvocationPhrase";
  null12 = suggestedInvocationPhrase;
  if (!suggestedInvocationPhrase)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = bundleID;
  v82[11] = null12;
  v81[12] = @"title";
  null13 = title;
  v32 = null12;
  if (!title)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null13;
  v82[12] = null13;
  v81[13] = @"userActivityRequiredString";
  null14 = userActivityRequiredString;
  if (!userActivityRequiredString)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v5;
  v58 = null14;
  v82[13] = null14;
  v81[14] = @"userActivityUUID";
  null15 = userActivityUUID;
  if (!userActivityUUID)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null7;
  v45 = null15;
  v82[14] = null15;
  v81[15] = @"sourceID";
  null16 = sourceID;
  if (!sourceID)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null9;
  v49 = null8;
  v82[15] = null16;
  v81[16] = @"sourceBundleID";
  null17 = sourceBundleID;
  if (!sourceBundleID)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null6;
  v62 = v10;
  v82[16] = null17;
  v81[17] = @"sourceItemID";
  null18 = sourceItemID;
  if (!sourceItemID)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v32;
  v38 = activityType;
  v82[17] = null18;
  v81[18] = @"sourceGroupID";
  null19 = sourceGroupID;
  if (!sourceGroupID)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = contentDescription;
  v82[18] = null19;
  v81[19] = @"calendarUserActivityDate";
  null20 = v66;
  if (!v66)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v82[19] = null20;
  v81[20] = @"calendarUserActivityExternalID";
  null21 = calendarUserActivityExternalID;
  if (!calendarUserActivityExternalID)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v82[20] = null21;
  v81[21] = @"calendarUserActivityEndDate";
  null22 = v18;
  if (!v18)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v82[21] = null22;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:{22, v45}];
  if (!v18)
  {
  }

  if (!calendarUserActivityExternalID)
  {
  }

  if (!v66)
  {
  }

  if (!sourceGroupID)
  {
  }

  if (!sourceItemID)
  {
  }

  if (!sourceBundleID)
  {
  }

  if (!sourceID)
  {
  }

  if (!userActivityUUID)
  {
  }

  if (!userActivityRequiredString)
  {
  }

  if (!title)
  {
  }

  if (!suggestedInvocationPhrase)
  {
  }

  if (!v75)
  {
  }

  if (!itemRelatedUniqueIdentifier)
  {
  }

  if (!absoluteString)
  {
  }

  if (!itemIdentifier)
  {
  }

  if (!v79)
  {
  }

  if (v80)
  {
    if (v62)
    {
      goto LABEL_100;
    }
  }

  else
  {

    if (v62)
    {
LABEL_100:
      if (v40)
      {
        goto LABEL_101;
      }

      goto LABEL_109;
    }
  }

  if (v40)
  {
LABEL_101:
    if (v63)
    {
      goto LABEL_102;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (v63)
  {
LABEL_102:
    if (v38)
    {
      goto LABEL_103;
    }

LABEL_111:

    if (v64)
    {
      goto LABEL_104;
    }

    goto LABEL_112;
  }

LABEL_110:

  if (!v38)
  {
    goto LABEL_111;
  }

LABEL_103:
  if (v64)
  {
    goto LABEL_104;
  }

LABEL_112:

LABEL_104:

  return v57;
}

- (BMAppActivity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v245[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v199 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v199 = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"activityType"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v198 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v198 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"beginningOfActivity"];
      selfCopy = self;
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v195 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v195 = v9;
LABEL_10:
        v10 = [dictionaryCopy objectForKeyedSubscript:@"contentDescription"];
        if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v196 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v196 = v10;
LABEL_13:
          v11 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
          v192 = v11;
          if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v193 = 0;
            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = objc_alloc(MEMORY[0x1E695DF00]);
            [v13 doubleValue];
            v193 = [v14 initWithTimeIntervalSince1970:?];
LABEL_37:

            goto LABEL_38;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = objc_alloc_init(MEMORY[0x1E696AC80]);
            v31 = v12;
            v193 = [v13 dateFromString:v31];

            goto LABEL_37;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v193 = v12;
LABEL_38:
            v32 = [dictionaryCopy objectForKeyedSubscript:@"isEligibleForPrediction"];
            v191 = v32;
            if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v190 = 0;
              goto LABEL_41;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v190 = v33;
LABEL_41:
              v34 = [dictionaryCopy objectForKeyedSubscript:@"isPubliclyIndexable"];
              v187 = v7;
              v188 = v34;
              if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v35 = v8;
                v36 = v9;
                v37 = v10;
                v189 = 0;
LABEL_44:
                v38 = [dictionaryCopy objectForKeyedSubscript:@"itemIdentifier"];
                v186 = v38;
                if (v38 && (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!error)
                    {
                      v185 = 0;
                      errorCopy2 = 0;
                      v17 = v198;
                      v19 = v199;
                      error = v195;
                      v10 = v37;
                      v9 = v36;
                      v8 = v35;
                      v7 = v187;
                      goto LABEL_146;
                    }

                    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v71 = *MEMORY[0x1E698F240];
                    v230 = *MEMORY[0x1E696A578];
                    v184 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemIdentifier"];
                    v231 = v184;
                    v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
                    v73 = [v70 initWithDomain:v71 code:2 userInfo:v72];
                    v185 = 0;
                    errorCopy2 = 0;
                    *error = v73;
                    v74 = v72;
                    v17 = v198;
                    v19 = v199;
                    error = v195;
                    v10 = v37;
                    v9 = v36;
                    v8 = v35;
                    v7 = v187;
                    v34 = v188;
                    goto LABEL_144;
                  }

                  v185 = v39;
                }

                else
                {
                  v185 = 0;
                }

                v40 = [dictionaryCopy objectForKeyedSubscript:@"itemRelatedContentURL"];
                v183 = v37;
                v184 = v40;
                if (v40)
                {
                  v41 = v40;
                  objc_opt_class();
                  v9 = v36;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v8 = v35;
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v7 = v187;
                      errorCopy2 = error;
                      if (!error)
                      {
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        v10 = v183;
                        goto LABEL_145;
                      }

                      v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v75 = *MEMORY[0x1E698F240];
                      v226 = *MEMORY[0x1E696A578];
                      v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemRelatedContentURL"];
                      v227 = v76;
                      v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
                      errorCopy2->super.super.isa = [v182 initWithDomain:v75 code:2 userInfo:v77];

                      v74 = v76;
                      errorCopy2 = 0;
                      v17 = v198;
                      v19 = v199;
                      error = v195;
                      goto LABEL_143;
                    }

                    v181 = v9;
                    v59 = v41;
                    v60 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v59];
                    v7 = v187;
                    if (!v60)
                    {
                      errorCopy2 = error;
                      if (error)
                      {
                        v115 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v116 = *MEMORY[0x1E698F240];
                        v228 = *MEMORY[0x1E696A578];
                        v117 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithString: for %@ returned nil", @"itemRelatedContentURL"];
                        v229 = v117;
                        v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
                        errorCopy2->super.super.isa = [v115 initWithDomain:v116 code:2 userInfo:v118];

                        errorCopy2 = 0;
                      }

                      v74 = v59;
                      v184 = v59;
                      v17 = v198;
                      v19 = v199;
                      error = v195;
                      v34 = v188;
                      v9 = v181;
                      v10 = v183;
                      goto LABEL_144;
                    }

                    v61 = v60;

                    v180 = v61;
LABEL_56:
                    v42 = [dictionaryCopy objectForKeyedSubscript:@"itemRelatedUniqueIdentifier"];
                    v179 = v42;
                    if (v42 && (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v44 = 0;
                          errorCopy2 = 0;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          goto LABEL_142;
                        }

                        v78 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v79 = *MEMORY[0x1E698F240];
                        v224 = *MEMORY[0x1E696A578];
                        v80 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"itemRelatedUniqueIdentifier"];
                        v225 = v80;
                        v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                        v81 = [v78 initWithDomain:v79 code:2 userInfo:?];
                        v44 = 0;
                        errorCopy2 = 0;
                        *error = v81;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
LABEL_141:

LABEL_142:
                        v74 = v180;
                        v9 = v181;
LABEL_143:
                        v10 = v183;
LABEL_144:

LABEL_145:
                        goto LABEL_146;
                      }

                      v44 = v43;
                    }

                    else
                    {
                      v44 = 0;
                    }

                    v45 = [dictionaryCopy objectForKeyedSubscript:@"shortcutAvailability"];
                    v178 = v45;
                    if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v80 = 0;
                          errorCopy2 = 0;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          goto LABEL_141;
                        }

                        v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v99 = *MEMORY[0x1E698F240];
                        v222 = *MEMORY[0x1E696A578];
                        v100 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v153 = objc_opt_class();
                        v101 = v100;
                        v34 = v188;
                        v177 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v153, @"shortcutAvailability"];
                        v223 = v177;
                        v176 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
                        v102 = [v98 initWithDomain:v99 code:2 userInfo:?];
                        v80 = 0;
                        errorCopy2 = 0;
                        *error = v102;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        goto LABEL_140;
                      }

                      v47 = v8;
                      v48 = v46;
                    }

                    else
                    {
                      v47 = v8;
                      v48 = 0;
                    }

                    v49 = [dictionaryCopy objectForKeyedSubscript:@"suggestedInvocationPhrase"];
                    v176 = v49;
                    if (v49 && (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v177 = 0;
                          errorCopy2 = 0;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          v80 = v48;
                          v8 = v47;
                          v7 = v187;
                          goto LABEL_140;
                        }

                        v103 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v104 = *MEMORY[0x1E698F240];
                        v220 = *MEMORY[0x1E696A578];
                        v174 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestedInvocationPhrase"];
                        v221 = v174;
                        v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
                        v105 = [v103 initWithDomain:v104 code:2 userInfo:?];
                        v177 = 0;
                        errorCopy2 = 0;
                        *error = v105;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        v80 = v48;
                        v8 = v47;
                        v7 = v187;
LABEL_139:

LABEL_140:
                        goto LABEL_141;
                      }

                      v177 = v50;
                    }

                    else
                    {
                      v177 = 0;
                    }

                    v51 = [dictionaryCopy objectForKeyedSubscript:@"title"];
                    v173 = v51;
                    v175 = v44;
                    if (v51 && (v52 = v51, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      v53 = v187;
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v174 = 0;
                          errorCopy2 = 0;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          v80 = v48;
                          v8 = v47;
                          v7 = v187;
                          v34 = v188;
                          goto LABEL_139;
                        }

                        v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v108 = *MEMORY[0x1E698F240];
                        v218 = *MEMORY[0x1E696A578];
                        v172 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"title"];
                        v219 = v172;
                        v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
                        v109 = [v107 initWithDomain:v108 code:2 userInfo:?];
                        v174 = 0;
                        errorCopy2 = 0;
                        *error = v109;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        v80 = v48;
                        v8 = v47;
                        v7 = v187;
                        v34 = v188;
                        goto LABEL_138;
                      }

                      v174 = v52;
                    }

                    else
                    {
                      v174 = 0;
                      v53 = v187;
                    }

                    v54 = [dictionaryCopy objectForKeyedSubscript:@"userActivityRequiredString"];
                    v170 = v48;
                    v171 = v54;
                    v168 = v47;
                    if (v54 && (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      v7 = v53;
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v172 = 0;
                          errorCopy2 = 0;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          v34 = v188;
                          v80 = v48;
                          v8 = v168;
                          goto LABEL_138;
                        }

                        v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v113 = *MEMORY[0x1E698F240];
                        v216 = *MEMORY[0x1E696A578];
                        v169 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userActivityRequiredString"];
                        v217 = v169;
                        v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v217 forKeys:&v216 count:1];
                        v114 = [v112 initWithDomain:v113 code:2 userInfo:?];
                        v172 = 0;
                        errorCopy2 = 0;
                        *error = v114;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        v34 = v188;
                        v80 = v48;
                        v8 = v168;
LABEL_137:

LABEL_138:
                        goto LABEL_139;
                      }

                      v172 = v55;
                      v56 = v48;
                    }

                    else
                    {
                      v172 = 0;
                      v7 = v53;
                      v56 = v48;
                    }

                    v57 = [dictionaryCopy objectForKeyedSubscript:@"userActivityUUID"];
                    v167 = v57;
                    if (v57)
                    {
                      v58 = v57;
                      objc_opt_class();
                      v8 = v168;
                      if (objc_opt_isKindOfClass())
                      {
                        v169 = 0;
                      }

                      else
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!error)
                          {
                            v169 = 0;
                            errorCopy2 = 0;
                            v17 = v198;
                            v19 = v199;
                            error = v195;
                            v80 = v56;
                            v34 = v188;
                            goto LABEL_137;
                          }

                          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v214 = *MEMORY[0x1E696A578];
                          v165 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"userActivityUUID"];
                          v215 = v165;
                          v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v215 forKeys:&v214 count:1];
                          v121 = [v119 initWithDomain:v120 code:2 userInfo:v82];
                          v169 = 0;
                          errorCopy2 = 0;
                          *error = v121;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          v80 = v56;
                          goto LABEL_136;
                        }

                        v169 = v58;
                      }
                    }

                    else
                    {
                      v169 = 0;
                      v8 = v168;
                    }

                    v82 = [dictionaryCopy objectForKeyedSubscript:@"sourceID"];
                    v80 = v56;
                    if (v82 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!error)
                        {
                          v165 = 0;
                          errorCopy2 = 0;
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          v80 = v170;
                          goto LABEL_136;
                        }

                        v166 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v124 = *MEMORY[0x1E698F240];
                        v212 = *MEMORY[0x1E696A578];
                        v164 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceID"];
                        v213 = v164;
                        v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v213 forKeys:&v212 count:1];
                        v125 = [v166 initWithDomain:v124 code:2 userInfo:?];
                        v165 = 0;
                        errorCopy2 = 0;
                        *error = v125;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        goto LABEL_213;
                      }

                      v165 = v82;
                      v80 = v170;
                    }

                    else
                    {
                      v165 = 0;
                    }

                    v83 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
                    v162 = v83;
                    if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v164 = 0;
                      goto LABEL_114;
                    }

                    v106 = v82;
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v164 = v84;
                      v80 = v170;
LABEL_114:
                      v85 = [dictionaryCopy objectForKeyedSubscript:@"sourceItemID"];
                      v160 = v85;
                      if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v163 = 0;
                        goto LABEL_117;
                      }

                      v106 = v82;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v163 = v86;
                        v80 = v170;
LABEL_117:
                        v87 = [dictionaryCopy objectForKeyedSubscript:@"sourceGroupID"];
                        v159 = v87;
                        if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v161 = 0;
                          goto LABEL_120;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v161 = v88;
                          v80 = v170;
LABEL_120:
                          v89 = [dictionaryCopy objectForKeyedSubscript:@"calendarUserActivityDate"];
                          v157 = v89;
                          if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v155 = 0;
LABEL_123:
                            v91 = [dictionaryCopy objectForKeyedSubscript:@"calendarUserActivityExternalID"];
                            v156 = v91;
                            if (v91 && (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                if (!error)
                                {
                                  v158 = 0;
                                  errorCopy2 = 0;
                                  v19 = v199;
                                  error = v195;
                                  v80 = v170;
                                  v96 = v155;
                                  goto LABEL_131;
                                }

                                v139 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v140 = *MEMORY[0x1E698F240];
                                v202 = *MEMORY[0x1E696A578];
                                v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"calendarUserActivityExternalID"];
                                v203 = v95;
                                v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v203 forKeys:&v202 count:1];
                                v141 = [v139 initWithDomain:v140 code:2 userInfo:?];
                                v158 = 0;
                                errorCopy2 = 0;
                                *error = v141;
                                v19 = v199;
                                error = v195;
                                goto LABEL_230;
                              }

                              v158 = v92;
                              v80 = v170;
                            }

                            else
                            {
                              v158 = 0;
                            }

                            v93 = [dictionaryCopy objectForKeyedSubscript:@"calendarUserActivityEndDate"];
                            v154 = v93;
                            if (!v93 || (v94 = v93, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v95 = 0;
                              v19 = v199;
LABEL_129:
                              v96 = v155;
                              error = v195;
                              errorCopy2 = [(BMAppActivity *)selfCopy initWithBundleID:v19 activityType:v198 beginningOfActivity:v195 contentDescription:v196 expirationDate:v193 isEligibleForPrediction:v190 isPubliclyIndexable:v189 itemIdentifier:v185 itemRelatedContentURL:v180 itemRelatedUniqueIdentifier:v175 shortcutAvailability:v80 suggestedInvocationPhrase:v177 title:v174 userActivityRequiredString:v172 userActivityUUID:v169 sourceID:v165 sourceBundleID:v164 sourceItemID:v163 sourceGroupID:v161 calendarUserActivityDate:v155 calendarUserActivityExternalID:v158 calendarUserActivityEndDate:v95];
                              selfCopy = errorCopy2;
LABEL_130:

LABEL_131:
                              v17 = v198;
LABEL_132:

LABEL_133:
LABEL_134:

LABEL_135:
LABEL_136:

                              v34 = v188;
                              v44 = v175;
                              goto LABEL_137;
                            }

                            objc_opt_class();
                            v19 = v199;
                            if (objc_opt_isKindOfClass())
                            {
                              v129 = v94;
                              v130 = objc_alloc(MEMORY[0x1E695DF00]);
                              [v129 doubleValue];
                              v95 = [v130 initWithTimeIntervalSinceReferenceDate:?];

                              goto LABEL_129;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v142 = objc_alloc_init(MEMORY[0x1E696AC80]);
                              v143 = v94;
                              v95 = [v142 dateFromString:v143];

LABEL_223:
                              v80 = v170;
                              goto LABEL_129;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v95 = v94;
                              goto LABEL_223;
                            }

                            if (error)
                            {
                              v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v148 = *MEMORY[0x1E698F240];
                              v200 = *MEMORY[0x1E696A578];
                              v149 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"calendarUserActivityEndDate"];
                              v201 = v149;
                              v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v201 forKeys:&v200 count:1];
                              v151 = v148;
                              v19 = v199;
                              *error = [v147 initWithDomain:v151 code:2 userInfo:v150];
                            }

                            v95 = 0;
                            errorCopy2 = 0;
                            error = v195;
LABEL_230:
                            v80 = v170;
                            v96 = v155;
                            goto LABEL_130;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v122 = v90;
                            v123 = objc_alloc(MEMORY[0x1E695DF00]);
                            [v122 doubleValue];
                            v155 = [v123 initWithTimeIntervalSinceReferenceDate:?];

                            goto LABEL_123;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v137 = objc_alloc_init(MEMORY[0x1E696AC80]);
                            v138 = v90;
                            v155 = [v137 dateFromString:v138];

LABEL_218:
                            v80 = v170;
                            goto LABEL_123;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v155 = v90;
                            goto LABEL_218;
                          }

                          if (error)
                          {
                            v144 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v145 = *MEMORY[0x1E698F240];
                            v204 = *MEMORY[0x1E696A578];
                            v158 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"calendarUserActivityDate"];
                            v205 = v158;
                            v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v205 forKeys:&v204 count:1];
                            v146 = [v144 initWithDomain:v145 code:2 userInfo:?];
                            v96 = 0;
                            errorCopy2 = 0;
                            *error = v146;
                            v19 = v199;
                            error = v195;
                            v80 = v170;
                            goto LABEL_131;
                          }

                          v96 = 0;
                          errorCopy2 = 0;
LABEL_201:
                          v17 = v198;
                          v19 = v199;
                          error = v195;
                          v80 = v170;
                          goto LABEL_132;
                        }

                        if (error)
                        {
                          v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v135 = *MEMORY[0x1E698F240];
                          v206 = *MEMORY[0x1E696A578];
                          v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceGroupID"];
                          v207 = v96;
                          v157 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
                          v136 = [v134 initWithDomain:v135 code:2 userInfo:?];
                          v161 = 0;
                          errorCopy2 = 0;
                          *error = v136;
                          goto LABEL_201;
                        }

                        v161 = 0;
                        errorCopy2 = 0;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
LABEL_220:
                        v80 = v170;
                        goto LABEL_133;
                      }

                      if (error)
                      {
                        v131 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v132 = *MEMORY[0x1E698F240];
                        v208 = *MEMORY[0x1E696A578];
                        v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceItemID"];
                        v209 = v161;
                        v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v209 forKeys:&v208 count:1];
                        v133 = [v131 initWithDomain:v132 code:2 userInfo:?];
                        v163 = 0;
                        errorCopy2 = 0;
                        *error = v133;
                        v17 = v198;
                        v19 = v199;
                        error = v195;
                        goto LABEL_220;
                      }

                      v163 = 0;
                      errorCopy2 = 0;
LABEL_215:
                      v17 = v198;
                      v19 = v199;
                      error = v195;
                      v82 = v106;
                      v80 = v170;
                      goto LABEL_134;
                    }

                    if (error)
                    {
                      v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v127 = *MEMORY[0x1E698F240];
                      v210 = *MEMORY[0x1E696A578];
                      v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleID"];
                      v211 = v163;
                      v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v211 forKeys:&v210 count:1];
                      v128 = [v126 initWithDomain:v127 code:2 userInfo:?];
                      v164 = 0;
                      errorCopy2 = 0;
                      *error = v128;
                      goto LABEL_215;
                    }

                    v164 = 0;
                    errorCopy2 = 0;
                    v17 = v198;
                    v19 = v199;
                    error = v195;
LABEL_213:
                    v80 = v170;
                    goto LABEL_135;
                  }

                  v180 = 0;
                  v181 = v36;
                }

                else
                {
                  v180 = 0;
                  v181 = v36;
                }

                v8 = v35;
                v7 = v187;
                goto LABEL_56;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = v8;
                v36 = v9;
                v37 = v10;
                v189 = v34;
                goto LABEL_44;
              }

              if (error)
              {
                v65 = objc_alloc(MEMORY[0x1E696ABC0]);
                v66 = *MEMORY[0x1E698F240];
                v232 = *MEMORY[0x1E696A578];
                v67 = objc_alloc(MEMORY[0x1E696AEC0]);
                v152 = objc_opt_class();
                v68 = v67;
                v34 = v188;
                v185 = [v68 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v152, @"isPubliclyIndexable"];
                v233 = v185;
                v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
                v69 = [v65 initWithDomain:v66 code:2 userInfo:?];
                v189 = 0;
                errorCopy2 = 0;
                *error = v69;
                v17 = v198;
                v19 = v199;
                error = v195;
LABEL_146:

LABEL_147:
LABEL_148:

                goto LABEL_149;
              }

              v189 = 0;
              errorCopy2 = 0;
LABEL_162:
              v17 = v198;
              v19 = v199;
              error = v195;
              goto LABEL_147;
            }

            if (error)
            {
              v62 = objc_alloc(MEMORY[0x1E696ABC0]);
              v63 = *MEMORY[0x1E698F240];
              v234 = *MEMORY[0x1E696A578];
              v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isEligibleForPrediction"];
              v235 = v189;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
              v64 = [v62 initWithDomain:v63 code:2 userInfo:v34];
              v190 = 0;
              errorCopy2 = 0;
              *error = v64;
              goto LABEL_162;
            }

            v190 = 0;
            errorCopy2 = 0;
LABEL_170:
            v17 = v198;
            v19 = v199;
            error = v195;
            goto LABEL_148;
          }

          if (error)
          {
            v194 = objc_alloc(MEMORY[0x1E696ABC0]);
            v110 = *MEMORY[0x1E698F240];
            v236 = *MEMORY[0x1E696A578];
            v190 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"expirationDate"];
            v237 = v190;
            v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
            v111 = [v194 initWithDomain:v110 code:2 userInfo:?];
            v193 = 0;
            errorCopy2 = 0;
            *error = v111;
            goto LABEL_170;
          }

          v193 = 0;
          errorCopy2 = 0;
LABEL_34:
          v17 = v198;
          v19 = v199;
          error = v195;
LABEL_149:

          goto LABEL_150;
        }

        if (error)
        {
          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v238 = *MEMORY[0x1E696A578];
          v193 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentDescription"];
          v239 = v193;
          v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
          v30 = [v28 initWithDomain:v29 code:2 userInfo:?];
          v196 = 0;
          errorCopy2 = 0;
          *error = v30;
          goto LABEL_34;
        }

        v196 = 0;
        errorCopy2 = 0;
        v17 = v198;
        v19 = v199;
        error = v195;
LABEL_150:

        self = selfCopy;
        goto LABEL_151;
      }

      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v240 = *MEMORY[0x1E696A578];
        v196 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"beginningOfActivity"];
        v241 = v196;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v10];
        errorCopy2 = 0;
        *error = v27;
        error = 0;
        v17 = v198;
        v19 = v199;
        goto LABEL_150;
      }

      errorCopy2 = 0;
      v17 = v198;
      v19 = v199;
LABEL_151:

      goto LABEL_152;
    }

    if (error)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v242 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activityType"];
      v243 = v23;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
      v24 = [v21 initWithDomain:v22 code:2 userInfo:v9];
      v17 = 0;
      errorCopy2 = 0;
      *error = v24;
      error = v23;
      v19 = v199;
      goto LABEL_151;
    }

    v17 = 0;
    errorCopy2 = 0;
    v19 = v199;
LABEL_152:

    goto LABEL_153;
  }

  if (error)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v244 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
    v245[0] = v17;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v245 forKeys:&v244 count:1];
    v18 = [v15 initWithDomain:v16 code:2 userInfo:v8];
    v19 = 0;
    errorCopy2 = 0;
    *error = v18;
    goto LABEL_152;
  }

  v19 = 0;
  errorCopy2 = 0;
LABEL_153:

  return errorCopy2;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasBeginningOfActivity)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_contentDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasRaw_expirationDate)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_hasIsEligibleForPrediction)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasIsPubliclyIndexable)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_itemIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_raw_itemRelatedContentURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_itemRelatedUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasShortcutAvailability)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_suggestedInvocationPhrase)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userActivityRequiredString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_userActivityUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceGroupID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasRaw_calendarUserActivityDate)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }

  if (self->_calendarUserActivityExternalID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasRaw_calendarUserActivityEndDate)
  {
    PBDataWriterWriteDoubleField();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v59.receiver = self;
  v59.super_class = BMAppActivity;
  v5 = [(BMEventBase *)&v59 init];
  if (!v5)
  {
    goto LABEL_104;
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
        LOBYTE(v60) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v60 & 0x7F) << v7;
        if ((v60 & 0x80) == 0)
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

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 88;
          goto LABEL_76;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_76;
        case 3u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasBeginningOfActivity = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (v60 & 0x7F) << v19;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v13 = v20++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_85;
            }
          }

          v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_85:
          v51 = 72;
          goto LABEL_90;
        case 4u:
          v15 = PBReaderReadString();
          v16 = 104;
          goto LABEL_76;
        case 5u:
          v5->_hasRaw_expirationDate = 1;
          v60 = 0;
          v17 = [fromCopy position] + 8;
          if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 = v60;
          v54 = 24;
          goto LABEL_101;
        case 6u:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsEligibleForPrediction = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v28 |= (v60 & 0x7F) << v26;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v13 = v27++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_87;
            }
          }

          v25 = (v28 != 0) & ~[fromCopy hasError];
LABEL_87:
          v51 = 74;
          goto LABEL_90;
        case 7u:
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v5->_hasIsPubliclyIndexable = 1;
          while (1)
          {
            LOBYTE(v60) = 0;
            v37 = [fromCopy position] + 1;
            if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v36 |= (v60 & 0x7F) << v34;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v13 = v35++ >= 9;
            if (v13)
            {
              LOBYTE(v25) = 0;
              goto LABEL_89;
            }
          }

          v25 = (v36 != 0) & ~[fromCopy hasError];
LABEL_89:
          v51 = 76;
LABEL_90:
          *(&v5->super.super.isa + v51) = v25;
          goto LABEL_77;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 112;
          goto LABEL_76;
        case 9u:
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_76;
        case 0xAu:
          v15 = PBReaderReadString();
          v16 = 120;
          goto LABEL_76;
        case 0xBu:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v5->_hasShortcutAvailability = 1;
          break;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 128;
          goto LABEL_76;
        case 0xDu:
          v15 = PBReaderReadString();
          v16 = 136;
          goto LABEL_76;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 144;
          goto LABEL_76;
        case 0xFu:
          v15 = PBReaderReadString();
          v16 = 152;
          goto LABEL_76;
        case 0x10u:
          v15 = PBReaderReadString();
          v16 = 160;
          goto LABEL_76;
        case 0x11u:
          v15 = PBReaderReadString();
          v16 = 168;
          goto LABEL_76;
        case 0x12u:
          v15 = PBReaderReadString();
          v16 = 176;
          goto LABEL_76;
        case 0x13u:
          v15 = PBReaderReadString();
          v16 = 184;
          goto LABEL_76;
        case 0x14u:
          v5->_hasRaw_calendarUserActivityDate = 1;
          v60 = 0;
          v49 = [fromCopy position] + 8;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 8, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 = v60;
          v54 = 48;
          goto LABEL_101;
        case 0x15u:
          v15 = PBReaderReadString();
          v16 = 192;
LABEL_76:
          v47 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_77;
        case 0x16u:
          v5->_hasRaw_calendarUserActivityEndDate = 1;
          v60 = 0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v53 = v60;
          v54 = 64;
LABEL_101:
          *(&v5->super.super.isa + v54) = v53;
          goto LABEL_77;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_103;
          }

          goto LABEL_77;
      }

      while (1)
      {
        LOBYTE(v60) = 0;
        v43 = [fromCopy position] + 1;
        if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v60 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v42 |= (v60 & 0x7F) << v40;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v40 += 7;
        v13 = v41++ >= 9;
        if (v13)
        {
          v46 = 0;
          goto LABEL_94;
        }
      }

      v46 = [fromCopy hasError] ? 0 : v42;
LABEL_94:
      v5->_shortcutAvailability = v46;
LABEL_77:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_103:
    v57 = 0;
  }

  else
  {
LABEL_104:
    v57 = v5;
  }

  return v57;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMAppActivity *)self bundleID];
  activityType = [(BMAppActivity *)self activityType];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity beginningOfActivity](self, "beginningOfActivity")}];
  contentDescription = [(BMAppActivity *)self contentDescription];
  expirationDate = [(BMAppActivity *)self expirationDate];
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isEligibleForPrediction](self, "isEligibleForPrediction")}];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAppActivity isPubliclyIndexable](self, "isPubliclyIndexable")}];
  itemIdentifier = [(BMAppActivity *)self itemIdentifier];
  itemRelatedContentURL = [(BMAppActivity *)self itemRelatedContentURL];
  itemRelatedUniqueIdentifier = [(BMAppActivity *)self itemRelatedUniqueIdentifier];
  v20 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppActivity shortcutAvailability](self, "shortcutAvailability")}];
  suggestedInvocationPhrase = [(BMAppActivity *)self suggestedInvocationPhrase];
  title = [(BMAppActivity *)self title];
  userActivityRequiredString = [(BMAppActivity *)self userActivityRequiredString];
  userActivityUUID = [(BMAppActivity *)self userActivityUUID];
  sourceID = [(BMAppActivity *)self sourceID];
  sourceBundleID = [(BMAppActivity *)self sourceBundleID];
  sourceItemID = [(BMAppActivity *)self sourceItemID];
  sourceGroupID = [(BMAppActivity *)self sourceGroupID];
  calendarUserActivityDate = [(BMAppActivity *)self calendarUserActivityDate];
  calendarUserActivityExternalID = [(BMAppActivity *)self calendarUserActivityExternalID];
  calendarUserActivityEndDate = [(BMAppActivity *)self calendarUserActivityEndDate];
  v18 = [v17 initWithFormat:@"BMAppActivity with bundleID: %@, activityType: %@, beginningOfActivity: %@, contentDescription: %@, expirationDate: %@, isEligibleForPrediction: %@, isPubliclyIndexable: %@, itemIdentifier: %@, itemRelatedContentURL: %@, itemRelatedUniqueIdentifier: %@, shortcutAvailability: %@, suggestedInvocationPhrase: %@, title: %@, userActivityRequiredString: %@, userActivityUUID: %@, sourceID: %@, sourceBundleID: %@, sourceItemID: %@, sourceGroupID: %@, calendarUserActivityDate: %@, calendarUserActivityExternalID: %@, calendarUserActivityEndDate: %@", bundleID, activityType, v16, contentDescription, expirationDate, v24, v23, itemIdentifier, itemRelatedContentURL, itemRelatedUniqueIdentifier, v20, suggestedInvocationPhrase, title, userActivityRequiredString, userActivityUUID, sourceID, sourceBundleID, sourceItemID, sourceGroupID, calendarUserActivityDate, calendarUserActivityExternalID, calendarUserActivityEndDate];

  return v18;
}

- (BMAppActivity)initWithBundleID:(id)d activityType:(id)type beginningOfActivity:(id)activity contentDescription:(id)description expirationDate:(id)date isEligibleForPrediction:(id)prediction isPubliclyIndexable:(id)indexable itemIdentifier:(id)self0 itemRelatedContentURL:(id)self1 itemRelatedUniqueIdentifier:(id)self2 shortcutAvailability:(id)self3 suggestedInvocationPhrase:(id)self4 title:(id)self5 userActivityRequiredString:(id)self6 userActivityUUID:(id)self7 sourceID:(id)self8 sourceBundleID:(id)self9 sourceItemID:(id)itemID sourceGroupID:(id)groupID calendarUserActivityDate:(id)activityDate calendarUserActivityExternalID:(id)externalID calendarUserActivityEndDate:(id)endDate
{
  dCopy = d;
  typeCopy = type;
  typeCopy2 = type;
  activityCopy = activity;
  descriptionCopy = description;
  descriptionCopy2 = description;
  dateCopy = date;
  predictionCopy = prediction;
  indexableCopy = indexable;
  identifierCopy = identifier;
  lCopy = l;
  uniqueIdentifierCopy = uniqueIdentifier;
  availabilityCopy = availability;
  phraseCopy = phrase;
  titleCopy = title;
  stringCopy = string;
  iDCopy = iD;
  sourceIDCopy = sourceID;
  bundleIDCopy = bundleID;
  itemIDCopy = itemID;
  groupIDCopy = groupID;
  activityDateCopy = activityDate;
  externalIDCopy = externalID;
  endDateCopy = endDate;
  v63.receiver = self;
  v63.super_class = BMAppActivity;
  v35 = [(BMEventBase *)&v63 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v35->_bundleID, d);
    objc_storeStrong(&v35->_activityType, typeCopy);
    if (activityCopy)
    {
      v35->_hasBeginningOfActivity = 1;
      v35->_beginningOfActivity = [activityCopy BOOLValue];
    }

    else
    {
      v35->_hasBeginningOfActivity = 0;
      v35->_beginningOfActivity = 0;
    }

    objc_storeStrong(&v35->_contentDescription, descriptionCopy);
    if (dateCopy)
    {
      v35->_hasRaw_expirationDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v35->_hasRaw_expirationDate = 0;
      v36 = -1.0;
    }

    v35->_raw_expirationDate = v36;
    if (predictionCopy)
    {
      v35->_hasIsEligibleForPrediction = 1;
      v35->_isEligibleForPrediction = [predictionCopy BOOLValue];
    }

    else
    {
      v35->_hasIsEligibleForPrediction = 0;
      v35->_isEligibleForPrediction = 0;
    }

    if (indexableCopy)
    {
      v35->_hasIsPubliclyIndexable = 1;
      v35->_isPubliclyIndexable = [indexableCopy BOOLValue];
    }

    else
    {
      v35->_hasIsPubliclyIndexable = 0;
      v35->_isPubliclyIndexable = 0;
    }

    objc_storeStrong(&v35->_itemIdentifier, identifier);
    if (lCopy)
    {
      absoluteString = [lCopy absoluteString];
    }

    else
    {
      absoluteString = 0;
    }

    raw_itemRelatedContentURL = v35->_raw_itemRelatedContentURL;
    v35->_raw_itemRelatedContentURL = absoluteString;

    objc_storeStrong(&v35->_itemRelatedUniqueIdentifier, uniqueIdentifier);
    if (availabilityCopy)
    {
      v35->_hasShortcutAvailability = 1;
      intValue = [availabilityCopy intValue];
    }

    else
    {
      v35->_hasShortcutAvailability = 0;
      intValue = -1;
    }

    v35->_shortcutAvailability = intValue;
    objc_storeStrong(&v35->_suggestedInvocationPhrase, phrase);
    objc_storeStrong(&v35->_title, title);
    objc_storeStrong(&v35->_userActivityRequiredString, string);
    objc_storeStrong(&v35->_userActivityUUID, iD);
    objc_storeStrong(&v35->_sourceID, sourceID);
    objc_storeStrong(&v35->_sourceBundleID, bundleID);
    objc_storeStrong(&v35->_sourceItemID, itemID);
    objc_storeStrong(&v35->_sourceGroupID, groupID);
    if (activityDateCopy)
    {
      v35->_hasRaw_calendarUserActivityDate = 1;
      [activityDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v35->_hasRaw_calendarUserActivityDate = 0;
      v40 = -1.0;
    }

    v35->_raw_calendarUserActivityDate = v40;
    objc_storeStrong(&v35->_calendarUserActivityExternalID, externalID);
    if (endDateCopy)
    {
      v35->_hasRaw_calendarUserActivityEndDate = 1;
      [endDateCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v35->_hasRaw_calendarUserActivityEndDate = 0;
      v41 = -1.0;
    }

    v35->_raw_calendarUserActivityEndDate = v41;
  }

  return v35;
}

+ (id)protoFields
{
  v26[22] = *MEMORY[0x1E69E9840];
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v26[0] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activityType" number:2 type:13 subMessageClass:0];
  v26[1] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"beginningOfActivity" number:3 type:12 subMessageClass:0];
  v26[2] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentDescription" number:4 type:13 subMessageClass:0];
  v26[3] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"expirationDate" number:5 type:0 subMessageClass:0];
  v26[4] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isEligibleForPrediction" number:6 type:12 subMessageClass:0];
  v26[5] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPubliclyIndexable" number:7 type:12 subMessageClass:0];
  v26[6] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemIdentifier" number:8 type:13 subMessageClass:0];
  v26[7] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedContentURL" number:9 type:13 subMessageClass:0];
  v26[8] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemRelatedUniqueIdentifier" number:10 type:13 subMessageClass:0];
  v26[9] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shortcutAvailability" number:11 type:2 subMessageClass:0];
  v26[10] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedInvocationPhrase" number:12 type:13 subMessageClass:0];
  v26[11] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"title" number:13 type:13 subMessageClass:0];
  v26[12] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityRequiredString" number:14 type:13 subMessageClass:0];
  v26[13] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userActivityUUID" number:15 type:13 subMessageClass:0];
  v26[14] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceID" number:16 type:13 subMessageClass:0];
  v26[15] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:17 type:13 subMessageClass:0];
  v26[16] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceItemID" number:18 type:13 subMessageClass:0];
  v26[17] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceGroupID" number:19 type:13 subMessageClass:0];
  v26[18] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityDate" number:20 type:0 subMessageClass:0];
  v26[19] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityExternalID" number:21 type:13 subMessageClass:0];
  v26[20] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calendarUserActivityEndDate" number:22 type:0 subMessageClass:0];
  v26[21] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:22];

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

    v8 = [[BMAppActivity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[20] = 0;
    }
  }

  return v4;
}

@end