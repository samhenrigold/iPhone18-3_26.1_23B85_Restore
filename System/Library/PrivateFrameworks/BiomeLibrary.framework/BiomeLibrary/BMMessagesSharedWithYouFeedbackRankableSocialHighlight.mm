@interface BMMessagesSharedWithYouFeedbackRankableSocialHighlight
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(int)type syndicationSecondsSinceReferenceDate:(id)date sourceBundleID:(id)d applicationIdentifiers:(id)identifiers resourceURL:(id)l sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationSecondsSinceReferenceDate:(id)self4 groupPhotoPathDigest:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)id rankingSecondsSinceReferenceDate:(id)sinceReferenceDate resolvedUrl:(id)url clientVariant:(id)variant;
- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_applicationIdentifiersJSONArray;
- (id)_calculatedFeaturesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMessagesSharedWithYouFeedbackRankableSocialHighlight

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    highlightIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
    highlightIdentifier2 = [v5 highlightIdentifier];
    v8 = highlightIdentifier2;
    if (highlightIdentifier == highlightIdentifier2)
    {
    }

    else
    {
      highlightIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
      highlightIdentifier4 = [v5 highlightIdentifier];
      v11 = [highlightIdentifier3 isEqual:highlightIdentifier4];

      if (!v11)
      {
        goto LABEL_93;
      }
    }

    highlightType = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightType];
    if (highlightType != [v5 highlightType])
    {
      goto LABEL_93;
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasSyndicationSecondsSinceReferenceDate](self, "hasSyndicationSecondsSinceReferenceDate") || [v5 hasSyndicationSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasSyndicationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      if (![v5 hasSyndicationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
      v15 = v14;
      [v5 syndicationSecondsSinceReferenceDate];
      if (v15 != v16)
      {
        goto LABEL_93;
      }
    }

    sourceBundleID = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    v19 = sourceBundleID2;
    if (sourceBundleID == sourceBundleID2)
    {
    }

    else
    {
      sourceBundleID3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
      sourceBundleID4 = [v5 sourceBundleID];
      v22 = [sourceBundleID3 isEqual:sourceBundleID4];

      if (!v22)
      {
        goto LABEL_93;
      }
    }

    applicationIdentifiers = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
    applicationIdentifiers2 = [v5 applicationIdentifiers];
    v25 = applicationIdentifiers2;
    if (applicationIdentifiers == applicationIdentifiers2)
    {
    }

    else
    {
      applicationIdentifiers3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
      applicationIdentifiers4 = [v5 applicationIdentifiers];
      v28 = [applicationIdentifiers3 isEqual:applicationIdentifiers4];

      if (!v28)
      {
        goto LABEL_93;
      }
    }

    resourceURL = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
    resourceURL2 = [v5 resourceURL];
    v31 = resourceURL2;
    if (resourceURL == resourceURL2)
    {
    }

    else
    {
      resourceURL3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
      resourceURL4 = [v5 resourceURL];
      v34 = [resourceURL3 isEqual:resourceURL4];

      if (!v34)
      {
        goto LABEL_93;
      }
    }

    sender = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
    sender2 = [v5 sender];
    v37 = sender2;
    if (sender == sender2)
    {
    }

    else
    {
      sender3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
      sender4 = [v5 sender];
      v40 = [sender3 isEqual:sender4];

      if (!v40)
      {
        goto LABEL_93;
      }
    }

    domainIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
    domainIdentifier2 = [v5 domainIdentifier];
    v43 = domainIdentifier2;
    if (domainIdentifier == domainIdentifier2)
    {
    }

    else
    {
      domainIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
      domainIdentifier4 = [v5 domainIdentifier];
      v46 = [domainIdentifier3 isEqual:domainIdentifier4];

      if (!v46)
      {
        goto LABEL_93;
      }
    }

    batchIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
    batchIdentifier2 = [v5 batchIdentifier];
    v49 = batchIdentifier2;
    if (batchIdentifier == batchIdentifier2)
    {
    }

    else
    {
      batchIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
      batchIdentifier4 = [v5 batchIdentifier];
      v52 = [batchIdentifier3 isEqual:batchIdentifier4];

      if (!v52)
      {
        goto LABEL_93;
      }
    }

    calculatedFeatures = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
    calculatedFeatures2 = [v5 calculatedFeatures];
    v55 = calculatedFeatures2;
    if (calculatedFeatures == calculatedFeatures2)
    {
    }

    else
    {
      calculatedFeatures3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
      calculatedFeatures4 = [v5 calculatedFeatures];
      v58 = [calculatedFeatures3 isEqual:calculatedFeatures4];

      if (!v58)
      {
        goto LABEL_93;
      }
    }

    clientIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
    clientIdentifier2 = [v5 clientIdentifier];
    v61 = clientIdentifier2;
    if (clientIdentifier == clientIdentifier2)
    {
    }

    else
    {
      clientIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
      clientIdentifier4 = [v5 clientIdentifier];
      v64 = [clientIdentifier3 isEqual:clientIdentifier4];

      if (!v64)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasContentCreationSecondsSinceReferenceDate](self, "hasContentCreationSecondsSinceReferenceDate") || [v5 hasContentCreationSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasContentCreationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      if (![v5 hasContentCreationSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
      v66 = v65;
      [v5 contentCreationSecondsSinceReferenceDate];
      if (v66 != v67)
      {
        goto LABEL_93;
      }
    }

    groupPhotoPathDigest = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
    groupPhotoPathDigest2 = [v5 groupPhotoPathDigest];
    v70 = groupPhotoPathDigest2;
    if (groupPhotoPathDigest == groupPhotoPathDigest2)
    {
    }

    else
    {
      groupPhotoPathDigest3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
      groupPhotoPathDigest4 = [v5 groupPhotoPathDigest];
      v73 = [groupPhotoPathDigest3 isEqual:groupPhotoPathDigest4];

      if (!v73)
      {
        goto LABEL_93;
      }
    }

    displayName = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
    displayName2 = [v5 displayName];
    v76 = displayName2;
    if (displayName == displayName2)
    {
    }

    else
    {
      displayName3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
      displayName4 = [v5 displayName];
      v79 = [displayName3 isEqual:displayName4];

      if (!v79)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasIsPrimary](self, "hasIsPrimary") || [v5 hasIsPrimary])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsPrimary])
      {
        goto LABEL_93;
      }

      if (![v5 hasIsPrimary])
      {
        goto LABEL_93;
      }

      isPrimary = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self isPrimary];
      if (isPrimary != [v5 isPrimary])
      {
        goto LABEL_93;
      }
    }

    attributionIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
    attributionIdentifier2 = [v5 attributionIdentifier];
    v83 = attributionIdentifier2;
    if (attributionIdentifier == attributionIdentifier2)
    {
    }

    else
    {
      attributionIdentifier3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
      attributionIdentifier4 = [v5 attributionIdentifier];
      v86 = [attributionIdentifier3 isEqual:attributionIdentifier4];

      if (!v86)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasRank](self, "hasRank") || [v5 hasRank])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRank])
      {
        goto LABEL_93;
      }

      if (![v5 hasRank])
      {
        goto LABEL_93;
      }

      rank = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rank];
      if (rank != [v5 rank])
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasScore](self, "hasScore") || [v5 hasScore])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasScore])
      {
        goto LABEL_93;
      }

      if (![v5 hasScore])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
      v89 = v88;
      [v5 score];
      if (v89 != v90)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasIsConversationAutoDonating](self, "hasIsConversationAutoDonating") || [v5 hasIsConversationAutoDonating])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsConversationAutoDonating])
      {
        goto LABEL_93;
      }

      if (![v5 hasIsConversationAutoDonating])
      {
        goto LABEL_93;
      }

      isConversationAutoDonating = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self isConversationAutoDonating];
      if (isConversationAutoDonating != [v5 isConversationAutoDonating])
      {
        goto LABEL_93;
      }
    }

    originatingDeviceId = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
    originatingDeviceId2 = [v5 originatingDeviceId];
    v94 = originatingDeviceId2;
    if (originatingDeviceId == originatingDeviceId2)
    {
    }

    else
    {
      originatingDeviceId3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
      originatingDeviceId4 = [v5 originatingDeviceId];
      v97 = [originatingDeviceId3 isEqual:originatingDeviceId4];

      if (!v97)
      {
        goto LABEL_93;
      }
    }

    if (-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight hasRankingSecondsSinceReferenceDate](self, "hasRankingSecondsSinceReferenceDate") || [v5 hasRankingSecondsSinceReferenceDate])
    {
      if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRankingSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      if (![v5 hasRankingSecondsSinceReferenceDate])
      {
        goto LABEL_93;
      }

      [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
      v99 = v98;
      [v5 rankingSecondsSinceReferenceDate];
      if (v99 != v100)
      {
        goto LABEL_93;
      }
    }

    resolvedUrl = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
    resolvedUrl2 = [v5 resolvedUrl];
    v103 = resolvedUrl2;
    if (resolvedUrl == resolvedUrl2)
    {
    }

    else
    {
      resolvedUrl3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
      resolvedUrl4 = [v5 resolvedUrl];
      v106 = [resolvedUrl3 isEqual:resolvedUrl4];

      if (!v106)
      {
LABEL_93:
        v12 = 0;
LABEL_94:

        goto LABEL_95;
      }
    }

    clientVariant = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
    clientVariant2 = [v5 clientVariant];
    if (clientVariant == clientVariant2)
    {
      v12 = 1;
    }

    else
    {
      clientVariant3 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
      clientVariant4 = [v5 clientVariant];
      v12 = [clientVariant3 isEqual:clientVariant4];
    }

    goto LABEL_94;
  }

  v12 = 0;
LABEL_95:

  return v12;
}

- (id)jsonDictionary
{
  v85[23] = *MEMORY[0x1E69E9840];
  highlightIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight highlightType](self, "highlightType")}];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasSyndicationSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
    v6 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
    v7 = [v6 numberWithDouble:?];
  }

  sourceBundleID = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
  _applicationIdentifiersJSONArray = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self _applicationIdentifiersJSONArray];
  resourceURL = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
  sender = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
  jsonDictionary = [sender jsonDictionary];

  domainIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
  batchIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
  _calculatedFeaturesJSONArray = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self _calculatedFeaturesJSONArray];
  clientIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasContentCreationSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate], fabs(v13) == INFINITY))
  {
    v79 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
    v14 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
    v79 = [v14 numberWithDouble:?];
  }

  groupPhotoPathDigest = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
  displayName = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
  if ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsPrimary])
  {
    v76 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isPrimary](self, "isPrimary")}];
  }

  else
  {
    v76 = 0;
  }

  attributionIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
  if ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRank])
  {
    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight rank](self, "rank")}];
  }

  else
  {
    v74 = 0;
  }

  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasScore]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score], fabs(v15) == INFINITY))
  {
    v73 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
    v16 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
    v73 = [v16 numberWithDouble:?];
  }

  if ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasIsConversationAutoDonating])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isConversationAutoDonating](self, "isConversationAutoDonating")}];
  }

  else
  {
    v72 = 0;
  }

  originatingDeviceId = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
  if (![(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self hasRankingSecondsSinceReferenceDate]|| ([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate], fabs(v17) == INFINITY))
  {
    v70 = 0;
  }

  else
  {
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
    v18 = MEMORY[0x1E696AD98];
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
    v70 = [v18 numberWithDouble:?];
  }

  resolvedUrl = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
  clientVariant = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
  v84[0] = @"highlightIdentifier";
  null = highlightIdentifier;
  if (!highlightIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null;
  v85[0] = null;
  v84[1] = @"highlightType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null2;
  v85[1] = null2;
  v84[2] = @"syndicationSecondsSinceReferenceDate";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = null3;
  v85[2] = null3;
  v84[3] = @"sourceBundleID";
  null4 = sourceBundleID;
  if (!sourceBundleID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null4;
  v85[3] = null4;
  v84[4] = @"applicationIdentifiers";
  null5 = _applicationIdentifiersJSONArray;
  if (!_applicationIdentifiersJSONArray)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null5;
  v85[4] = null5;
  v84[5] = @"resourceURL";
  null6 = resourceURL;
  if (!resourceURL)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = null6;
  v85[5] = null6;
  v84[6] = @"sender";
  null7 = jsonDictionary;
  if (!jsonDictionary)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null7;
  v85[6] = null7;
  v84[7] = @"domainIdentifier";
  null8 = domainIdentifier;
  if (!domainIdentifier)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v85[7] = null8;
  v84[8] = @"batchIdentifier";
  null9 = batchIdentifier;
  if (!batchIdentifier)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v85[8] = null9;
  v84[9] = @"calculatedFeatures";
  null10 = _calculatedFeaturesJSONArray;
  if (!_calculatedFeaturesJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null10;
  v85[9] = null10;
  v84[10] = @"clientIdentifier";
  null11 = clientIdentifier;
  if (!clientIdentifier)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null11;
  v85[10] = null11;
  v84[11] = @"contentCreationSecondsSinceReferenceDate";
  null12 = v79;
  if (!v79)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null12;
  v85[11] = null12;
  v84[12] = @"groupPhotoPathDigest";
  null13 = groupPhotoPathDigest;
  if (!groupPhotoPathDigest)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = sourceBundleID;
  v85[12] = null13;
  v84[13] = @"displayName";
  null14 = displayName;
  v34 = null13;
  if (!displayName)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = jsonDictionary;
  v59 = null14;
  v85[13] = null14;
  v84[14] = @"isPrimary";
  null15 = v76;
  if (!v76)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = resourceURL;
  v46 = null15;
  v85[14] = null15;
  v84[15] = @"attributionIdentifier";
  null16 = attributionIdentifier;
  if (!attributionIdentifier)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = v7;
  v85[15] = null16;
  v84[16] = @"rank";
  null17 = v74;
  if (!v74)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = _applicationIdentifiersJSONArray;
  v68 = highlightIdentifier;
  v85[16] = null17;
  v84[17] = @"score";
  null18 = v73;
  if (!v73)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v4;
  v85[17] = null18;
  v84[18] = @"isConversationAutoDonating";
  null19 = v72;
  if (!v72)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null8;
  v85[18] = null19;
  v84[19] = @"originatingDeviceId";
  null20 = originatingDeviceId;
  if (!originatingDeviceId)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null9;
  v85[19] = null20;
  v84[20] = @"rankingSecondsSinceReferenceDate";
  null21 = v70;
  if (!v70)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v34;
  v85[20] = null21;
  v84[21] = @"resolvedUrl";
  null22 = resolvedUrl;
  if (!resolvedUrl)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v85[21] = null22;
  v84[22] = @"clientVariant";
  null23 = clientVariant;
  if (!clientVariant)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v85[22] = null23;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:{23, v46}];
  if (!clientVariant)
  {
  }

  if (!resolvedUrl)
  {
  }

  if (!v70)
  {
  }

  if (!originatingDeviceId)
  {
  }

  if (!v72)
  {
  }

  if (!v73)
  {
  }

  if (!v74)
  {
  }

  if (!attributionIdentifier)
  {
  }

  if (!v76)
  {
  }

  if (!displayName)
  {
  }

  if (!groupPhotoPathDigest)
  {
  }

  if (!v79)
  {
  }

  if (!clientIdentifier)
  {
  }

  if (!_calculatedFeaturesJSONArray)
  {
  }

  if (!batchIdentifier)
  {
  }

  if (domainIdentifier)
  {
    if (v63)
    {
      goto LABEL_104;
    }
  }

  else
  {

    if (v63)
    {
LABEL_104:
      if (v64)
      {
        goto LABEL_105;
      }

      goto LABEL_115;
    }
  }

  if (v64)
  {
LABEL_105:
    if (v65)
    {
      goto LABEL_106;
    }

    goto LABEL_116;
  }

LABEL_115:

  if (v65)
  {
LABEL_106:
    if (v66)
    {
      goto LABEL_107;
    }

    goto LABEL_117;
  }

LABEL_116:

  if (v66)
  {
LABEL_107:
    if (v67)
    {
      goto LABEL_108;
    }

    goto LABEL_118;
  }

LABEL_117:

  if (v67)
  {
LABEL_108:
    if (v39)
    {
      goto LABEL_109;
    }

LABEL_119:

    if (v68)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_118:

  if (!v39)
  {
    goto LABEL_119;
  }

LABEL_109:
  if (v68)
  {
    goto LABEL_110;
  }

LABEL_120:

LABEL_110:

  return v58;
}

- (id)_calculatedFeaturesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  calculatedFeatures = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
  v5 = [calculatedFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(calculatedFeatures);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [calculatedFeatures countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_applicationIdentifiersJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  applicationIdentifiers = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
  v5 = [applicationIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(applicationIdentifiers);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [applicationIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v315[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"highlightIdentifier"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v10 = objc_alloc(MEMORY[0x1E696ABC0]);
        v11 = *MEMORY[0x1E698F240];
        v314 = *MEMORY[0x1E696A578];
        v12 = dictionaryCopy;
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v180 = objc_opt_class();
        v14 = v13;
        dictionaryCopy = v12;
        v15 = [v14 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v180, @"highlightIdentifier"];
        v315[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v315 forKeys:&v314 count:1];
        v17 = v11;
        v9 = v16;
        v8 = 0;
        v18 = 0;
        *error = [v10 initWithDomain:v17 code:2 userInfo:v16];
        goto LABEL_227;
      }

      v8 = 0;
      v18 = 0;
      goto LABEL_228;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"highlightType"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v242 = v9;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v66 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = v9;
          v68 = *MEMORY[0x1E698F240];
          v312 = *MEMORY[0x1E696A578];
          v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"highlightType"];
          v313 = v244;
          v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
          v70 = v68;
          v9 = v67;
          v71 = [v66 initWithDomain:v70 code:2 userInfo:v69];
          v15 = 0;
          v18 = 0;
          *error = v71;
          v20 = v69;
          goto LABEL_226;
        }

        v15 = 0;
        v18 = 0;
        goto LABEL_227;
      }

      v19 = v9;
      v242 = [MEMORY[0x1E696AD98] numberWithInt:BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeFromString(v19)];
    }
  }

  else
  {
    v242 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"syndicationSecondsSinceReferenceDate"];
  errorCopy = error;
  if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v9;
        v53 = *MEMORY[0x1E698F240];
        v310 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"syndicationSecondsSinceReferenceDate"];
        v311 = v54;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
        v56 = v51;
        v30 = v54;
        v57 = v53;
        v9 = v52;
        v245 = v55;
        v244 = 0;
        v18 = 0;
        v15 = v242;
        *error = [v56 initWithDomain:v57 code:2 userInfo:?];
        goto LABEL_225;
      }

      v244 = 0;
      v18 = 0;
      v15 = v242;
      goto LABEL_226;
    }

    v244 = v20;
  }

  else
  {
    v244 = 0;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"sourceBundleID"];
  v240 = v9;
  v245 = v21;
  if (!v21)
  {
    v23 = v8;
    goto LABEL_24;
  }

  v22 = v21;
  v23 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_24:
    v24 = dictionaryCopy;
    v25 = v20;
    v26 = 0;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy)
    {
      v248 = objc_alloc(MEMORY[0x1E696ABC0]);
      v58 = *MEMORY[0x1E698F240];
      v308 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sourceBundleID"];
      v309 = v27;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
      v60 = v248;
      v61 = v58;
      v9 = v240;
      v249 = v59;
      v30 = 0;
      v18 = 0;
      *errorCopy = [v60 initWithDomain:v61 code:2 userInfo:?];
      v15 = v242;

      goto LABEL_224;
    }

    v18 = 0;
    v15 = v242;
    v30 = 0;
    goto LABEL_225;
  }

  v24 = dictionaryCopy;
  v25 = v20;
  v26 = v22;
LABEL_25:
  v27 = [v24 objectForKeyedSubscript:@"applicationIdentifiers"];
  null = [MEMORY[0x1E695DFB0] null];
  v29 = [v27 isEqual:null];

  v241 = v23;
  v238 = v24;
  v239 = v25;
  v236 = v7;
  v237 = v26;
  if (v29)
  {

    v27 = 0;
  }

  else if (v27)
  {
    v30 = v26;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v62 = objc_alloc(MEMORY[0x1E696ABC0]);
        v63 = *MEMORY[0x1E698F240];
        v306 = *MEMORY[0x1E696A578];
        v247 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"applicationIdentifiers"];
        v307 = v247;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
        v64 = v62;
        v30 = v26;
        v65 = [v64 initWithDomain:v63 code:2 userInfo:v50];
        v18 = 0;
        *errorCopy = v65;
        v15 = v242;
        v20 = v25;
        dictionaryCopy = v24;
        v8 = v23;
        goto LABEL_222;
      }

      v18 = 0;
      v15 = v242;
      v20 = v25;
      dictionaryCopy = v24;
      v8 = v23;
      v9 = v240;
      goto LABEL_224;
    }
  }

  v247 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v27, "count")}];
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v27 = v27;
  v31 = [v27 countByEnumeratingWithState:&v256 objects:v305 count:16];
  v32 = v245;
  if (v31)
  {
    v33 = v31;
    v34 = *v257;
    do
    {
      v35 = v32;
      for (i = 0; i != v33; ++i)
      {
        if (*v257 != v34)
        {
          objc_enumerationMutation(v27);
        }

        v37 = *(*(&v256 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = errorCopy;
          if (errorCopy)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v303 = *MEMORY[0x1E696A578];
            v235 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"applicationIdentifiers"];
            v304 = v235;
            v44 = MEMORY[0x1E695DF20];
            v45 = &v304;
            v46 = &v303;
LABEL_47:
            v47 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
            v48 = v42;
            v49 = v47;
            v8 = v241;
            v15 = v242;
            v18 = 0;
            *v41 = [v48 initWithDomain:v43 code:2 userInfo:?];
            v50 = v27;
            dictionaryCopy = v238;
            v20 = v239;
            goto LABEL_219;
          }

LABEL_50:
          v18 = 0;
          v50 = v27;
          dictionaryCopy = v24;
          v20 = v239;
          v7 = v236;
          v30 = v237;
          v8 = v241;
          v15 = v242;
          goto LABEL_222;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v41 = errorCopy;
          if (errorCopy)
          {
            v42 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v301 = *MEMORY[0x1E696A578];
            v235 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"applicationIdentifiers"];
            v302 = v235;
            v44 = MEMORY[0x1E695DF20];
            v45 = &v302;
            v46 = &v301;
            goto LABEL_47;
          }

          goto LABEL_50;
        }

        v38 = v37;
        [v247 addObject:v38];
      }

      v33 = [v27 countByEnumeratingWithState:&v256 objects:v305 count:16];
      v32 = v35;
    }

    while (v33);
  }

  dictionaryCopy = v24;
  v39 = [v24 objectForKeyedSubscript:@"resourceURL"];
  v231 = v27;
  v235 = v39;
  if (v39)
  {
    v40 = v39;
    objc_opt_class();
    v20 = v239;
    if (objc_opt_isKindOfClass())
    {
      v230 = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v73 = v40;
      v7 = v236;
      if ((isKindOfClass & 1) == 0)
      {
        if (errorCopy)
        {
          v91 = objc_alloc(MEMORY[0x1E696ABC0]);
          v92 = *MEMORY[0x1E698F240];
          v299 = *MEMORY[0x1E696A578];
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resourceURL"];
          v300 = v83;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
          v20 = v239;
          v93 = [v91 initWithDomain:v92 code:2 userInfo:v74];
          v50 = 0;
          v18 = 0;
          *errorCopy = v93;
          v8 = v241;
          v15 = v242;
          goto LABEL_218;
        }

        v50 = 0;
        v18 = 0;
        v15 = v242;
        v30 = v237;
        v20 = v239;
        v8 = v241;
        goto LABEL_221;
      }

      v230 = v73;
      v20 = v239;
    }
  }

  else
  {
    v230 = 0;
    v20 = v239;
  }

  v74 = [v24 objectForKeyedSubscript:@"sender"];
  v75 = v241;
  if (v74)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v228 = v74;
      v74 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy)
        {
          v232 = objc_alloc(MEMORY[0x1E696ABC0]);
          v94 = *MEMORY[0x1E698F240];
          v297 = *MEMORY[0x1E696A578];
          v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"sender"];
          v298 = v95;
          v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v298 forKeys:&v297 count:1];
          v20 = v239;
          *errorCopy = [v232 initWithDomain:v94 code:2 userInfo:v96];

          v18 = 0;
          v83 = v74;
          v74 = v95;
          v8 = v241;
          v15 = v242;
          v50 = v230;
          goto LABEL_218;
        }

        v18 = 0;
        v15 = v242;
        v50 = v230;
        v7 = v236;
        v49 = v74;
        v8 = v241;
        goto LABEL_220;
      }

      v83 = v74;
      v84 = [BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact alloc];
      v255 = 0;
      v85 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact *)v84 initWithJSONDictionary:v83 error:&v255];
      v86 = v255;
      if (v86)
      {
        v15 = v242;
        if (errorCopy)
        {
          v86 = v86;
          *errorCopy = v86;
        }

        v18 = 0;
        v8 = v241;
        v50 = v230;
        v74 = v85;
        goto LABEL_218;
      }

      v228 = v74;

      v75 = v241;
      v74 = v85;
    }
  }

  else
  {
    v228 = 0;
  }

  v76 = [v24 objectForKeyedSubscript:@"domainIdentifier"];
  v229 = v76;
  if (v76 && (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v88 = v20;
    v8 = v75;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v98 = *MEMORY[0x1E698F240];
        v295 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainIdentifier"];
        v296 = v99;
        v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v296 forKeys:&v295 count:1];
        v89 = v239;
        v101 = [v97 initWithDomain:v98 code:2 userInfo:v100];
        v102 = 0;
        v18 = 0;
        *errorCopy = v101;
        v15 = v242;
        v103 = v100;
        v104 = v99;
        v78 = v103;
        v50 = v230;
        dictionaryCopy = v238;
        goto LABEL_216;
      }

      v102 = 0;
      v18 = 0;
      v15 = v242;
      v50 = v230;
      v89 = v88;
      dictionaryCopy = v238;
      goto LABEL_217;
    }

    v226 = v77;
    dictionaryCopy = v238;
  }

  else
  {
    v226 = 0;
  }

  v78 = [dictionaryCopy objectForKeyedSubscript:@"batchIdentifier"];
  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v89 = v20;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v120 = *MEMORY[0x1E698F240];
        v293 = *MEMORY[0x1E696A578];
        v227 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"batchIdentifier"];
        v294 = v227;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v294 forKeys:&v293 count:1];
        v234 = v89 = v239;
        v121 = [v119 initWithDomain:v120 code:2 userInfo:?];
        v104 = 0;
        v18 = 0;
        v15 = v242;
        *errorCopy = v121;
        v50 = v230;
        v102 = v226;

        goto LABEL_215;
      }

      v104 = 0;
      v18 = 0;
      v15 = v242;
      v50 = v230;
      v102 = v226;
      goto LABEL_216;
    }

    v90 = v78;
    v79 = v74;
    v215 = v90;
    v224 = v90;
  }

  else
  {
    v215 = v78;
    v224 = 0;
    v79 = v74;
  }

  v80 = [dictionaryCopy objectForKeyedSubscript:@"calculatedFeatures"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v82 = [v80 isEqual:null2];

  if (v82)
  {
    v225 = v79;
  }

  else
  {
    if (v80)
    {
      objc_opt_class();
      v227 = v80;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v74 = v79;
        if (!errorCopy)
        {
          v89 = v20;
          v18 = 0;
          v15 = v242;
          v50 = v230;
          v102 = v226;
          v78 = v215;
          v104 = v224;
          goto LABEL_215;
        }

        v89 = v20;
        v129 = objc_alloc(MEMORY[0x1E696ABC0]);
        v130 = *MEMORY[0x1E698F240];
        v291 = *MEMORY[0x1E696A578];
        v233 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"calculatedFeatures"];
        v292 = v233;
        v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v292 forKeys:&v291 count:1];
        v18 = 0;
        *errorCopy = [v129 initWithDomain:v130 code:2 userInfo:v131];
        v15 = v242;
        v107 = v131;
        v50 = v230;
LABEL_127:
        v78 = v215;
        goto LABEL_213;
      }

      v225 = v79;
      v87 = v80;
      goto LABEL_97;
    }

    v225 = v79;
  }

  v87 = 0;
LABEL_97:
  v233 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v87, "count")}];
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  v254 = 0u;
  v105 = v87;
  v106 = [v105 countByEnumeratingWithState:&v251 objects:v290 count:16];
  v107 = v105;
  v108 = v237;
  v227 = v105;
  if (!v106)
  {
    goto LABEL_107;
  }

  v109 = v106;
  v110 = *v252;
  while (2)
  {
    for (j = 0; j != v109; ++j)
    {
      if (*v252 != v110)
      {
        objc_enumerationMutation(v105);
      }

      v112 = *(*(&v251 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v122 = errorCopy;
        if (errorCopy)
        {
          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v124 = *MEMORY[0x1E698F240];
          v288 = *MEMORY[0x1E696A578];
          v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"calculatedFeatures"];
          v289 = v113;
          v125 = MEMORY[0x1E695DF20];
          v126 = &v289;
          v127 = &v288;
LABEL_119:
          v214 = [v125 dictionaryWithObjects:v126 forKeys:v127 count:1];
          v18 = 0;
          *v122 = [v123 initWithDomain:v124 code:2 userInfo:?];
LABEL_123:
          dictionaryCopy = v238;
          v128 = v239;
          v15 = v242;
          v50 = v230;
          v74 = v225;
          v78 = v215;
          goto LABEL_211;
        }

        goto LABEL_126;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v122 = errorCopy;
        if (errorCopy)
        {
          v123 = objc_alloc(MEMORY[0x1E696ABC0]);
          v124 = *MEMORY[0x1E698F240];
          v286 = *MEMORY[0x1E696A578];
          v113 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"calculatedFeatures"];
          v287 = v113;
          v125 = MEMORY[0x1E695DF20];
          v126 = &v287;
          v127 = &v286;
          goto LABEL_119;
        }

LABEL_126:
        v18 = 0;
        dictionaryCopy = v238;
        v89 = v239;
        v15 = v242;
        v50 = v230;
        v74 = v225;
        goto LABEL_127;
      }

      v113 = v112;
      v114 = [BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature alloc];
      v250 = 0;
      v115 = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature *)v114 initWithJSONDictionary:v113 error:&v250];
      v116 = v250;
      if (v116)
      {
        if (errorCopy)
        {
          v116 = v116;
          *errorCopy = v116;
        }

        v214 = v116;

        v18 = 0;
        goto LABEL_123;
      }

      [v233 addObject:v115];
    }

    v109 = [v105 countByEnumeratingWithState:&v251 objects:v290 count:16];
    v108 = v237;
    if (v109)
    {
      continue;
    }

    break;
  }

LABEL_107:

  dictionaryCopy = v238;
  v113 = [v238 objectForKeyedSubscript:@"clientIdentifier"];
  if (!v113 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v107 = 0;
    goto LABEL_110;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v107 = errorCopy;
    if (errorCopy)
    {
      v148 = objc_alloc(MEMORY[0x1E696ABC0]);
      v149 = *MEMORY[0x1E698F240];
      v284 = *MEMORY[0x1E696A578];
      v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
      v285 = v214;
      v213 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v285 forKeys:&v284 count:1];
      v18 = 0;
      *errorCopy = [v148 initWithDomain:v149 code:2 userInfo:?];
      v107 = 0;
      goto LABEL_237;
    }

    v18 = 0;
    v15 = v242;
    v128 = v239;
    v50 = v230;
    v74 = v225;
    v78 = v215;
    goto LABEL_212;
  }

  v107 = v113;
  v108 = v237;
LABEL_110:
  v117 = [v238 objectForKeyedSubscript:@"contentCreationSecondsSinceReferenceDate"];
  v213 = v117;
  if (!v117)
  {
LABEL_135:
    v214 = v117;
    v132 = [v238 objectForKeyedSubscript:@"groupPhotoPathDigest"];
    v206 = v107;
    v210 = v132;
    if (v132)
    {
      v133 = v132;
      objc_opt_class();
      v128 = v239;
      v78 = v215;
      if (objc_opt_isKindOfClass())
      {
        v211 = 0;
      }

      else
      {
        v134 = v239;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v211 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v128 = v239;
            v74 = v225;
            v107 = v206;
            goto LABEL_209;
          }

          v212 = objc_alloc(MEMORY[0x1E696ABC0]);
          v208 = *MEMORY[0x1E698F240];
          v280 = *MEMORY[0x1E696A578];
          v209 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"groupPhotoPathDigest"];
          v281 = v209;
          v153 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
          v154 = v208;
          v207 = v153;
          v155 = [v212 initWithDomain:v154 code:2 userInfo:?];
          v211 = 0;
          v18 = 0;
          *errorCopy = v155;
          goto LABEL_248;
        }

        v211 = v133;
        v128 = v239;
        v107 = v206;
      }
    }

    else
    {
      v211 = 0;
      v128 = v239;
      v78 = v215;
    }

    v135 = [v238 objectForKeyedSubscript:@"displayName"];
    v207 = v135;
    if (!v135 || (v136 = v135, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v209 = 0;
LABEL_145:
      v137 = [v238 objectForKeyedSubscript:@"isPrimary"];
      v203 = v137;
      if (v137 && (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v204 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            goto LABEL_207;
          }

          v217 = objc_alloc(MEMORY[0x1E696ABC0]);
          v205 = *MEMORY[0x1E698F240];
          v276 = *MEMORY[0x1E696A578];
          dictionaryCopy = v238;
          v74 = v225;
          v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isPrimary"];
          v277 = v202;
          v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
          v157 = [v217 initWithDomain:v205 code:2 userInfo:?];
          v204 = 0;
          v18 = 0;
          *errorCopy = v157;
          v15 = v242;
          v50 = v230;
          goto LABEL_206;
        }

        v204 = v138;
      }

      else
      {
        v204 = 0;
      }

      v139 = [v238 objectForKeyedSubscript:@"attributionIdentifier"];
      v201 = v139;
      if (v139 && (v140 = v139, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v202 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            v107 = v206;
            goto LABEL_206;
          }

          v218 = objc_alloc(MEMORY[0x1E696ABC0]);
          v166 = *MEMORY[0x1E698F240];
          v274 = *MEMORY[0x1E696A578];
          v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"attributionIdentifier"];
          v275 = v199;
          v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
          v202 = 0;
          v18 = 0;
          *errorCopy = [v218 initWithDomain:v166 code:2 userInfo:?];
          v15 = v242;
          v50 = v230;
          v74 = v225;
          v107 = v206;
LABEL_205:

LABEL_206:
          goto LABEL_207;
        }

        v202 = v140;
        v107 = v206;
      }

      else
      {
        v202 = 0;
      }

      v141 = [v238 objectForKeyedSubscript:@"rank"];
      v198 = v141;
      if (v141 && (v142 = v141, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v199 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            goto LABEL_205;
          }

          v219 = objc_alloc(MEMORY[0x1E696ABC0]);
          v200 = *MEMORY[0x1E698F240];
          v272 = *MEMORY[0x1E696A578];
          dictionaryCopy = v238;
          v74 = v225;
          v196 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rank"];
          v273 = v196;
          v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
          v167 = [v219 initWithDomain:v200 code:2 userInfo:?];
          v199 = 0;
          v18 = 0;
          *errorCopy = v167;
          v15 = v242;
          v50 = v230;
          goto LABEL_204;
        }

        v199 = v142;
      }

      else
      {
        v199 = 0;
      }

      v143 = [v238 objectForKeyedSubscript:@"score"];
      v195 = v143;
      if (v143 && (v144 = v143, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v196 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            goto LABEL_204;
          }

          v220 = objc_alloc(MEMORY[0x1E696ABC0]);
          v197 = *MEMORY[0x1E698F240];
          v270 = *MEMORY[0x1E696A578];
          dictionaryCopy = v238;
          v74 = v225;
          v193 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
          v271 = v193;
          v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
          v168 = [v220 initWithDomain:v197 code:2 userInfo:?];
          v196 = 0;
          v18 = 0;
          *errorCopy = v168;
          v15 = v242;
          v50 = v230;
LABEL_203:

LABEL_204:
          goto LABEL_205;
        }

        v196 = v144;
      }

      else
      {
        v196 = 0;
      }

      v145 = [v238 objectForKeyedSubscript:@"isConversationAutoDonating"];
      v192 = v145;
      if (v145 && (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v193 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            goto LABEL_203;
          }

          v221 = objc_alloc(MEMORY[0x1E696ABC0]);
          v194 = *MEMORY[0x1E698F240];
          v268 = *MEMORY[0x1E696A578];
          dictionaryCopy = v238;
          v74 = v225;
          v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isConversationAutoDonating"];
          v269 = v189;
          v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
          v169 = [v221 initWithDomain:v194 code:2 userInfo:?];
          v193 = 0;
          v18 = 0;
          *errorCopy = v169;
          v15 = v242;
          v50 = v230;
          goto LABEL_202;
        }

        v193 = v146;
      }

      else
      {
        v193 = 0;
      }

      v147 = [v238 objectForKeyedSubscript:@"originatingDeviceId"];
      v190 = v147;
      if (v147)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v147 = 0;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!errorCopy)
            {
              v189 = 0;
              v18 = 0;
              v15 = v242;
              v50 = v230;
              v74 = v225;
              v107 = v206;
              goto LABEL_202;
            }

            v222 = objc_alloc(MEMORY[0x1E696ABC0]);
            v170 = *MEMORY[0x1E698F240];
            v266 = *MEMORY[0x1E696A578];
            v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"originatingDeviceId"];
            v267 = v191;
            v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
            v189 = 0;
            v18 = 0;
            *errorCopy = [v222 initWithDomain:v170 code:2 userInfo:?];
            v15 = v242;
            v50 = v230;
            v74 = v225;
            v107 = v206;
LABEL_201:

LABEL_202:
            goto LABEL_203;
          }

          v147 = v147;
          v107 = v206;
        }
      }

      v158 = [v238 objectForKeyedSubscript:@"rankingSecondsSinceReferenceDate"];
      v189 = v147;
      v187 = v158;
      if (v158 && (v159 = v158, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v191 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            goto LABEL_201;
          }

          v171 = objc_alloc(MEMORY[0x1E696ABC0]);
          v223 = *MEMORY[0x1E698F240];
          v264 = *MEMORY[0x1E696A578];
          dictionaryCopy = v238;
          v74 = v225;
          v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rankingSecondsSinceReferenceDate"];
          v265 = v188;
          v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
          v172 = [v171 initWithDomain:v223 code:2 userInfo:?];
          v191 = 0;
          v18 = 0;
          *errorCopy = v172;
          v15 = v242;
          v50 = v230;
          goto LABEL_200;
        }

        v191 = v159;
      }

      else
      {
        v191 = 0;
      }

      v160 = [v238 objectForKeyedSubscript:@"resolvedUrl"];
      v186 = v160;
      if (v160 && (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!errorCopy)
          {
            v188 = 0;
            v18 = 0;
            v15 = v242;
            v50 = v230;
            v74 = v225;
            v107 = v206;
            goto LABEL_200;
          }

          v173 = objc_alloc(MEMORY[0x1E696ABC0]);
          v174 = *MEMORY[0x1E698F240];
          v262 = *MEMORY[0x1E696A578];
          v183 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"resolvedUrl"];
          v263 = v183;
          v185 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
          v175 = [v173 initWithDomain:v174 code:2 userInfo:?];
          v188 = 0;
          v18 = 0;
          *errorCopy = v175;
          v15 = v242;
          v50 = v230;
          v74 = v225;
          v107 = v206;
          goto LABEL_199;
        }

        v188 = v161;
        v107 = v206;
      }

      else
      {
        v188 = 0;
      }

      v162 = [v238 objectForKeyedSubscript:@"clientVariant"];
      v185 = v162;
      if (v162 && (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v15 = v242;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            v184 = objc_alloc(MEMORY[0x1E696ABC0]);
            v176 = *MEMORY[0x1E698F240];
            v260 = *MEMORY[0x1E696A578];
            v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientVariant"];
            v261 = v177;
            v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
            v179 = v176;
            v15 = v242;
            *errorCopy = [v184 initWithDomain:v179 code:2 userInfo:v178];
          }

          v183 = 0;
          v18 = 0;
          v50 = v230;
          v74 = v225;
          goto LABEL_199;
        }

        v164 = v163;
      }

      else
      {
        v164 = 0;
        v15 = v242;
      }

      v182 = v164;
      v183 = v164;
      v181 = v147;
      v74 = v225;
      v50 = v230;
      v18 = -[BMMessagesSharedWithYouFeedbackRankableSocialHighlight initWithHighlightIdentifier:highlightType:syndicationSecondsSinceReferenceDate:sourceBundleID:applicationIdentifiers:resourceURL:sender:domainIdentifier:batchIdentifier:calculatedFeatures:clientIdentifier:contentCreationSecondsSinceReferenceDate:groupPhotoPathDigest:displayName:isPrimary:attributionIdentifier:rank:score:isConversationAutoDonating:originatingDeviceId:rankingSecondsSinceReferenceDate:resolvedUrl:clientVariant:](selfCopy, "initWithHighlightIdentifier:highlightType:syndicationSecondsSinceReferenceDate:sourceBundleID:applicationIdentifiers:resourceURL:sender:domainIdentifier:batchIdentifier:calculatedFeatures:clientIdentifier:contentCreationSecondsSinceReferenceDate:groupPhotoPathDigest:displayName:isPrimary:attributionIdentifier:rank:score:isConversationAutoDonating:originatingDeviceId:rankingSecondsSinceReferenceDate:resolvedUrl:clientVariant:", v241, [v15 intValue], v244, v108, v247, v230, v225, v226, v224, v233, v107, v214, v211, v209, v204, v202, v199, v196, v193, v181, v191, v188, v182);
      selfCopy = v18;
LABEL_199:

LABEL_200:
      goto LABEL_201;
    }

    v134 = v128;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v209 = v136;
      v107 = v206;
      goto LABEL_145;
    }

    if (errorCopy)
    {
      v216 = objc_alloc(MEMORY[0x1E696ABC0]);
      v156 = *MEMORY[0x1E698F240];
      v278 = *MEMORY[0x1E696A578];
      v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"displayName"];
      v279 = v204;
      v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
      v209 = 0;
      v18 = 0;
      *errorCopy = [v216 initWithDomain:v156 code:2 userInfo:?];
      v15 = v242;
      v50 = v230;
      v74 = v225;
      v107 = v206;
LABEL_207:

LABEL_208:
LABEL_209:

      goto LABEL_210;
    }

    v209 = 0;
    v18 = 0;
LABEL_248:
    v15 = v242;
    v50 = v230;
    v128 = v134;
    v74 = v225;
    v107 = v206;
    goto LABEL_208;
  }

  v118 = v117;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v117 = 0;
    goto LABEL_135;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v117 = v118;
    goto LABEL_135;
  }

  if (errorCopy)
  {
    v150 = objc_alloc(MEMORY[0x1E696ABC0]);
    v151 = *MEMORY[0x1E698F240];
    v282 = *MEMORY[0x1E696A578];
    v211 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contentCreationSecondsSinceReferenceDate"];
    v283 = v211;
    v210 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
    v152 = [v150 initWithDomain:v151 code:2 userInfo:?];
    v214 = 0;
    v18 = 0;
    v15 = v242;
    *errorCopy = v152;
    v128 = v239;
    v50 = v230;
    v74 = v225;
    v78 = v215;
    goto LABEL_209;
  }

  v214 = 0;
  v18 = 0;
LABEL_237:
  v15 = v242;
  v128 = v239;
  v50 = v230;
  v74 = v225;
  v78 = v215;
LABEL_210:

LABEL_211:
LABEL_212:
  v89 = v128;

LABEL_213:
  v102 = v226;
  v104 = v224;

LABEL_215:
LABEL_216:

  v8 = v241;
LABEL_217:

  v83 = v228;
  v20 = v89;
LABEL_218:

  v49 = v83;
  v27 = v231;
LABEL_219:
  v7 = v236;
LABEL_220:

  v30 = v237;
LABEL_221:

LABEL_222:
  v9 = v240;

LABEL_224:
LABEL_225:

LABEL_226:
LABEL_227:

LABEL_228:
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_highlightIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasSyndicationSecondsSinceReferenceDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_sourceBundleID)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_applicationIdentifiers;
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

  if (self->_resourceURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sender)
  {
    v20 = 0;
    PBDataWriterPlaceMark();
    [(BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact *)self->_sender writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_domainIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_batchIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_calculatedFeatures;
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

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasContentCreationSecondsSinceReferenceDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_groupPhotoPathDigest)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsPrimary)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_attributionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRank)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsConversationAutoDonating)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_originatingDeviceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRankingSecondsSinceReferenceDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_resolvedUrl)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_clientVariant)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v75.receiver = self;
  v75.super_class = BMMessagesSharedWithYouFeedbackRankableSocialHighlight;
  v5 = [(BMEventBase *)&v75 init];
  if (!v5)
  {
    goto LABEL_116;
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
        LOBYTE(v76) = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v76 & 0x7F) << v9;
        if ((v76 & 0x80) == 0)
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

      switch((v16 >> 3))
      {
        case 1u:
          v17 = PBReaderReadString();
          v18 = 40;
          goto LABEL_88;
        case 2u:
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            LOBYTE(v76) = 0;
            v43 = [fromCopy position] + 1;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v42 |= (v76 & 0x7F) << v40;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            if (v41++ > 8)
            {
              goto LABEL_99;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v42 > 2)
          {
LABEL_99:
            LODWORD(v42) = 0;
          }

          v5->_highlightType = v42;
          goto LABEL_113;
        case 3u:
          v5->_hasSyndicationSecondsSinceReferenceDate = 1;
          v76 = 0;
          v38 = [fromCopy position] + 8;
          if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 8, v39 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 48;
          goto LABEL_112;
        case 4u:
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_88;
        case 5u:
          v35 = PBReaderReadString();
          if (!v35)
          {
            goto LABEL_118;
          }

          v36 = v35;
          [v6 addObject:v35];
          goto LABEL_47;
        case 6u:
          v17 = PBReaderReadString();
          v18 = 72;
          goto LABEL_88;
        case 7u:
          v76 = 0;
          v77 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_118;
          }

          v51 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlightContact alloc] initByReadFrom:fromCopy];
          if (!v51)
          {
            goto LABEL_118;
          }

          sender = v5->_sender;
          v5->_sender = v51;

          PBReaderRecallMark();
          goto LABEL_113;
        case 8u:
          v17 = PBReaderReadString();
          v18 = 88;
          goto LABEL_88;
        case 9u:
          v17 = PBReaderReadString();
          v18 = 96;
          goto LABEL_88;
        case 0xAu:
          v76 = 0;
          v77 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_118;
          }

          v37 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlightFeature alloc] initByReadFrom:fromCopy];
          if (!v37)
          {
            goto LABEL_118;
          }

          v36 = v37;
          [v7 addObject:v37];
          PBReaderRecallMark();
LABEL_47:

          goto LABEL_113;
        case 0xBu:
          v17 = PBReaderReadString();
          v18 = 112;
          goto LABEL_88;
        case 0xCu:
          v5->_hasContentCreationSecondsSinceReferenceDate = 1;
          v76 = 0;
          v33 = [fromCopy position] + 8;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 8, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 120;
          goto LABEL_112;
        case 0xDu:
          v17 = PBReaderReadString();
          v18 = 128;
          goto LABEL_88;
        case 0xEu:
          v17 = PBReaderReadString();
          v18 = 136;
          goto LABEL_88;
        case 0xFu:
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsPrimary = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v28 |= (v76 & 0x7F) << v26;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v15 = v27++ >= 9;
            if (v15)
            {
              LOBYTE(v32) = 0;
              goto LABEL_96;
            }
          }

          v32 = (v28 != 0) & ~[fromCopy hasError];
LABEL_96:
          v60 = 18;
          goto LABEL_103;
        case 0x10u:
          v17 = PBReaderReadString();
          v18 = 144;
          goto LABEL_88;
        case 0x11u:
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasRank = 1;
          while (1)
          {
            LOBYTE(v76) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (v76 & 0x7F) << v19;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v15 = v20++ >= 9;
            if (v15)
            {
              v25 = 0;
              goto LABEL_94;
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

LABEL_94:
          v5->_rank = v25;
          goto LABEL_113;
        case 0x12u:
          v5->_hasScore = 1;
          v76 = 0;
          v47 = [fromCopy position] + 8;
          if (v47 >= [fromCopy position] && (v48 = objc_msgSend(fromCopy, "position") + 8, v48 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 152;
          goto LABEL_112;
        case 0x13u:
          v53 = 0;
          v54 = 0;
          v55 = 0;
          v5->_hasIsConversationAutoDonating = 1;
          break;
        case 0x14u:
          v17 = PBReaderReadString();
          v18 = 160;
          goto LABEL_88;
        case 0x15u:
          v5->_hasRankingSecondsSinceReferenceDate = 1;
          v76 = 0;
          v49 = [fromCopy position] + 8;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 8, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v62 = v76;
          v63 = 168;
LABEL_112:
          *(&v5->super.super.isa + v63) = v62;
          goto LABEL_113;
        case 0x16u:
          v17 = PBReaderReadString();
          v18 = 176;
          goto LABEL_88;
        case 0x17u:
          v17 = PBReaderReadString();
          v18 = 184;
LABEL_88:
          v59 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_113;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_113;
          }

LABEL_118:

          goto LABEL_115;
      }

      while (1)
      {
        LOBYTE(v76) = 0;
        v56 = [fromCopy position] + 1;
        if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
        {
          data9 = [fromCopy data];
          [data9 getBytes:&v76 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v55 |= (v76 & 0x7F) << v53;
        if ((v76 & 0x80) == 0)
        {
          break;
        }

        v53 += 7;
        v15 = v54++ >= 9;
        if (v15)
        {
          LOBYTE(v32) = 0;
          goto LABEL_102;
        }
      }

      v32 = (v55 != 0) & ~[fromCopy hasError];
LABEL_102:
      v60 = 22;
LABEL_103:
      *(&v5->super.super.isa + v60) = v32;
LABEL_113:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v68 = [v6 copy];
  applicationIdentifiers = v5->_applicationIdentifiers;
  v5->_applicationIdentifiers = v68;

  v70 = [v7 copy];
  calculatedFeatures = v5->_calculatedFeatures;
  v5->_calculatedFeatures = v70;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_115:
    v73 = 0;
  }

  else
  {
LABEL_116:
    v73 = v5;
  }

  return v73;
}

- (NSString)description
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  highlightIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightIdentifier];
  v32 = BMMessagesSharedWithYouFeedbackRankableSocialHighlightTypeAsString([(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self highlightType]);
  v3 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self syndicationSecondsSinceReferenceDate];
  v29 = [v3 numberWithDouble:?];
  sourceBundleID = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sourceBundleID];
  applicationIdentifiers = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self applicationIdentifiers];
  resourceURL = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resourceURL];
  sender = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self sender];
  domainIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self domainIdentifier];
  batchIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self batchIdentifier];
  calculatedFeatures = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self calculatedFeatures];
  clientIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientIdentifier];
  v4 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self contentCreationSecondsSinceReferenceDate];
  v17 = [v4 numberWithDouble:?];
  groupPhotoPathDigest = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self groupPhotoPathDigest];
  displayName = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self displayName];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isPrimary](self, "isPrimary")}];
  attributionIdentifier = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self attributionIdentifier];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight rank](self, "rank")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self score];
  v6 = [v5 numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMessagesSharedWithYouFeedbackRankableSocialHighlight isConversationAutoDonating](self, "isConversationAutoDonating")}];
  originatingDeviceId = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self originatingDeviceId];
  v9 = MEMORY[0x1E696AD98];
  [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self rankingSecondsSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  resolvedUrl = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self resolvedUrl];
  clientVariant = [(BMMessagesSharedWithYouFeedbackRankableSocialHighlight *)self clientVariant];
  v22 = [v21 initWithFormat:@"BMMessagesSharedWithYouFeedbackRankableSocialHighlight with highlightIdentifier: %@, highlightType: %@, syndicationSecondsSinceReferenceDate: %@, sourceBundleID: %@, applicationIdentifiers: %@, resourceURL: %@, sender: %@, domainIdentifier: %@, batchIdentifier: %@, calculatedFeatures: %@, clientIdentifier: %@, contentCreationSecondsSinceReferenceDate: %@, groupPhotoPathDigest: %@, displayName: %@, isPrimary: %@, attributionIdentifier: %@, rank: %@, score: %@, isConversationAutoDonating: %@, originatingDeviceId: %@, rankingSecondsSinceReferenceDate: %@, resolvedUrl: %@, clientVariant: %@", highlightIdentifier, v32, v29, sourceBundleID, applicationIdentifiers, resourceURL, sender, domainIdentifier, batchIdentifier, calculatedFeatures, clientIdentifier, v17, groupPhotoPathDigest, displayName, v16, attributionIdentifier, v14, v6, v7, originatingDeviceId, v10, resolvedUrl, clientVariant];

  return v22;
}

- (BMMessagesSharedWithYouFeedbackRankableSocialHighlight)initWithHighlightIdentifier:(id)identifier highlightType:(int)type syndicationSecondsSinceReferenceDate:(id)date sourceBundleID:(id)d applicationIdentifiers:(id)identifiers resourceURL:(id)l sender:(id)sender domainIdentifier:(id)self0 batchIdentifier:(id)self1 calculatedFeatures:(id)self2 clientIdentifier:(id)self3 contentCreationSecondsSinceReferenceDate:(id)self4 groupPhotoPathDigest:(id)self5 displayName:(id)self6 isPrimary:(id)self7 attributionIdentifier:(id)self8 rank:(id)self9 score:(id)score isConversationAutoDonating:(id)donating originatingDeviceId:(id)id rankingSecondsSinceReferenceDate:(id)sinceReferenceDate resolvedUrl:(id)url clientVariant:(id)variant
{
  identifierCopy = identifier;
  dateCopy = date;
  dCopy = d;
  dCopy2 = d;
  identifiersCopy = identifiers;
  identifiersCopy2 = identifiers;
  lCopy = l;
  lCopy2 = l;
  senderCopy = sender;
  domainIdentifierCopy = domainIdentifier;
  batchIdentifierCopy = batchIdentifier;
  featuresCopy = features;
  clientIdentifierCopy = clientIdentifier;
  referenceDateCopy = referenceDate;
  digestCopy = digest;
  nameCopy = name;
  primaryCopy = primary;
  attributionIdentifierCopy = attributionIdentifier;
  rankCopy = rank;
  scoreCopy = score;
  donatingCopy = donating;
  idCopy = id;
  sinceReferenceDateCopy = sinceReferenceDate;
  urlCopy = url;
  variantCopy = variant;
  v64.receiver = self;
  v64.super_class = BMMessagesSharedWithYouFeedbackRankableSocialHighlight;
  v36 = [(BMEventBase *)&v64 init];
  if (v36)
  {
    v36->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v36->_highlightIdentifier, identifier);
    v36->_highlightType = type;
    if (dateCopy)
    {
      v36->_hasSyndicationSecondsSinceReferenceDate = 1;
      [dateCopy doubleValue];
    }

    else
    {
      dateCopy = 0;
      v36->_hasSyndicationSecondsSinceReferenceDate = 0;
      v37 = -1.0;
    }

    v36->_syndicationSecondsSinceReferenceDate = v37;
    objc_storeStrong(&v36->_sourceBundleID, dCopy);
    objc_storeStrong(&v36->_applicationIdentifiers, identifiersCopy);
    objc_storeStrong(&v36->_resourceURL, lCopy);
    objc_storeStrong(&v36->_sender, sender);
    objc_storeStrong(&v36->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v36->_batchIdentifier, batchIdentifier);
    objc_storeStrong(&v36->_calculatedFeatures, features);
    objc_storeStrong(&v36->_clientIdentifier, clientIdentifier);
    if (referenceDateCopy)
    {
      v36->_hasContentCreationSecondsSinceReferenceDate = 1;
      [referenceDateCopy doubleValue];
    }

    else
    {
      v36->_hasContentCreationSecondsSinceReferenceDate = 0;
      v38 = -1.0;
    }

    v36->_contentCreationSecondsSinceReferenceDate = v38;
    objc_storeStrong(&v36->_groupPhotoPathDigest, digest);
    objc_storeStrong(&v36->_displayName, name);
    if (primaryCopy)
    {
      v36->_hasIsPrimary = 1;
      v36->_isPrimary = [primaryCopy BOOLValue];
    }

    else
    {
      v36->_hasIsPrimary = 0;
      v36->_isPrimary = 0;
    }

    objc_storeStrong(&v36->_attributionIdentifier, attributionIdentifier);
    if (rankCopy)
    {
      v36->_hasRank = 1;
      unsignedIntValue = [rankCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v36->_hasRank = 0;
    }

    v36->_rank = unsignedIntValue;
    if (scoreCopy)
    {
      v36->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v36->_hasScore = 0;
      v40 = -1.0;
    }

    v36->_score = v40;
    if (donatingCopy)
    {
      v36->_hasIsConversationAutoDonating = 1;
      v36->_isConversationAutoDonating = [donatingCopy BOOLValue];
    }

    else
    {
      v36->_hasIsConversationAutoDonating = 0;
      v36->_isConversationAutoDonating = 0;
    }

    objc_storeStrong(&v36->_originatingDeviceId, id);
    if (sinceReferenceDateCopy)
    {
      v36->_hasRankingSecondsSinceReferenceDate = 1;
      [sinceReferenceDateCopy doubleValue];
    }

    else
    {
      v36->_hasRankingSecondsSinceReferenceDate = 0;
      v41 = -1.0;
    }

    v36->_rankingSecondsSinceReferenceDate = v41;
    objc_storeStrong(&v36->_resolvedUrl, url);
    objc_storeStrong(&v36->_clientVariant, variant);
  }

  return v36;
}

+ (id)protoFields
{
  v27[23] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightIdentifier" number:1 type:13 subMessageClass:0];
  v27[0] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightType" number:2 type:4 subMessageClass:0];
  v27[1] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"syndicationSecondsSinceReferenceDate" number:3 type:0 subMessageClass:0];
  v27[2] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceBundleID" number:4 type:13 subMessageClass:0];
  v27[3] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"applicationIdentifiers" number:5 type:13 subMessageClass:0];
  v27[4] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resourceURL" number:6 type:13 subMessageClass:0];
  v27[5] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sender" number:7 type:14 subMessageClass:objc_opt_class()];
  v27[6] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainIdentifier" number:8 type:13 subMessageClass:0];
  v27[7] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"batchIdentifier" number:9 type:13 subMessageClass:0];
  v27[8] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"calculatedFeatures" number:10 type:14 subMessageClass:objc_opt_class()];
  v27[9] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:11 type:13 subMessageClass:0];
  v27[10] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentCreationSecondsSinceReferenceDate" number:12 type:0 subMessageClass:0];
  v27[11] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"groupPhotoPathDigest" number:13 type:13 subMessageClass:0];
  v27[12] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"displayName" number:14 type:13 subMessageClass:0];
  v27[13] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPrimary" number:15 type:12 subMessageClass:0];
  v27[14] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attributionIdentifier" number:16 type:13 subMessageClass:0];
  v27[15] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rank" number:17 type:4 subMessageClass:0];
  v27[16] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:18 type:0 subMessageClass:0];
  v27[17] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isConversationAutoDonating" number:19 type:12 subMessageClass:0];
  v27[18] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"originatingDeviceId" number:20 type:13 subMessageClass:0];
  v27[19] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rankingSecondsSinceReferenceDate" number:21 type:0 subMessageClass:0];
  v27[20] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"resolvedUrl" number:22 type:13 subMessageClass:0];
  v27[21] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientVariant" number:23 type:13 subMessageClass:0];
  v27[22] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:23];

  return v11;
}

+ (id)columns
{
  v27[23] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"syndicationSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceBundleID" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"applicationIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_309];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resourceURL" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"sender_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_311];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainIdentifier" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"batchIdentifier" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"calculatedFeatures_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_313_82917];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentCreationSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"groupPhotoPathDigest" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"displayName" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPrimary" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attributionIdentifier" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rank" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:0 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isConversationAutoDonating" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"originatingDeviceId" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rankingSecondsSinceReferenceDate" dataType:1 requestOnly:0 fieldNumber:21 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"resolvedUrl" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientVariant" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v27[0] = v26;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v23;
  v27[4] = v22;
  v27[5] = v21;
  v27[6] = v20;
  v27[7] = v19;
  v27[8] = v18;
  v27[9] = v17;
  v27[10] = v16;
  v27[11] = v15;
  v27[12] = v14;
  v27[13] = v2;
  v27[14] = v3;
  v27[15] = v4;
  v27[16] = v13;
  v27[17] = v5;
  v27[18] = v12;
  v27[19] = v6;
  v27[20] = v11;
  v27[21] = v7;
  v27[22] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:23];

  return v10;
}

id __65__BMMessagesSharedWithYouFeedbackRankableSocialHighlight_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _calculatedFeaturesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __65__BMMessagesSharedWithYouFeedbackRankableSocialHighlight_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 sender];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __65__BMMessagesSharedWithYouFeedbackRankableSocialHighlight_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _applicationIdentifiersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 4)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMMessagesSharedWithYouFeedbackRankableSocialHighlight alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[7] = 4;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end