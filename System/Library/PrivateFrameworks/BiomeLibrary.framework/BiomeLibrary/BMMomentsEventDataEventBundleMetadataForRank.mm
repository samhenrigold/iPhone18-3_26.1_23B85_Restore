@interface BMMomentsEventDataEventBundleMetadataForRank
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundleMetadataForRank)initWithDailyAggregateCallDuration:(id)duration callDuration:(id)callDuration burstyInteractionCount:(id)count burstyOutgoingInteractionCount:(id)interactionCount multipleInteractionTypes:(id)types contactLocationWork:(id)work isFamilyContact:(id)contact isCoworkerContact:(id)self0 isRepetitiveContact:(id)self1 isGroupConversation:(id)self2 peopleCountWeightedSum:(id)self3 peopleCountWeightedAverage:(id)self4 peopleCountMax:(id)self5 peopleDensityWeightedSum:(id)self6 peopleDensityWeightedAverage:(id)self7 peopleDensityMax:(id)self8 peopleDensityWeightedConfidenceSum:(id)self9 peopleDensityWeightedConfidenceAverage:(id)confidenceAverage mediaTotalPlayTime:(id)time mediaLength:(id)length mediaActionIsRepeat:(id)repeat timeAtHomeDuration:(id)homeDuration photosAtHomeCurationScore:(id)score workoutDuration:(id)workoutDuration motionActivityWalkSpan:(id)span visitDuration:(id)visitDuration poiCategoryInterestingness:(id)interestingness familiarityIndex:(id)duration0 stateOfMindDomains:(id)duration1 stateOfMindLabels:(id)duration2 stateOfMindReflectiveIntervals:(id)duration3 stateOfMindValenceClassifications:(id)duration4 stateOfMindValenceValues:(id)duration5 stateOfMindLoggedIn3pApp:(id)duration6 stateOfMindLoggedInJournalApp:(id)duration7;
- (BMMomentsEventDataEventBundleMetadataForRank)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_stateOfMindDomainsJSONArray;
- (id)_stateOfMindLabelsJSONArray;
- (id)_stateOfMindReflectiveIntervalsJSONArray;
- (id)_stateOfMindValenceClassificationsJSONArray;
- (id)_stateOfMindValenceValuesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundleMetadataForRank

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMomentsEventDataEventBundleMetadataForRank hasDailyAggregateCallDuration](self, "hasDailyAggregateCallDuration") || [v5 hasDailyAggregateCallDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasDailyAggregateCallDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasDailyAggregateCallDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration];
      v7 = v6;
      [v5 dailyAggregateCallDuration];
      if (v7 != v8)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasCallDuration](self, "hasCallDuration") || [v5 hasCallDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasCallDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasCallDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration];
      v10 = v9;
      [v5 callDuration];
      if (v10 != v11)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasBurstyInteractionCount](self, "hasBurstyInteractionCount") || [v5 hasBurstyInteractionCount])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyInteractionCount])
      {
        goto LABEL_173;
      }

      if (![v5 hasBurstyInteractionCount])
      {
        goto LABEL_173;
      }

      burstyInteractionCount = [(BMMomentsEventDataEventBundleMetadataForRank *)self burstyInteractionCount];
      if (burstyInteractionCount != [v5 burstyInteractionCount])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasBurstyOutgoingInteractionCount](self, "hasBurstyOutgoingInteractionCount") || [v5 hasBurstyOutgoingInteractionCount])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyOutgoingInteractionCount])
      {
        goto LABEL_173;
      }

      if (![v5 hasBurstyOutgoingInteractionCount])
      {
        goto LABEL_173;
      }

      burstyOutgoingInteractionCount = [(BMMomentsEventDataEventBundleMetadataForRank *)self burstyOutgoingInteractionCount];
      if (burstyOutgoingInteractionCount != [v5 burstyOutgoingInteractionCount])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMultipleInteractionTypes](self, "hasMultipleInteractionTypes") || [v5 hasMultipleInteractionTypes])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMultipleInteractionTypes])
      {
        goto LABEL_173;
      }

      if (![v5 hasMultipleInteractionTypes])
      {
        goto LABEL_173;
      }

      multipleInteractionTypes = [(BMMomentsEventDataEventBundleMetadataForRank *)self multipleInteractionTypes];
      if (multipleInteractionTypes != [v5 multipleInteractionTypes])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasContactLocationWork](self, "hasContactLocationWork") || [v5 hasContactLocationWork])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasContactLocationWork])
      {
        goto LABEL_173;
      }

      if (![v5 hasContactLocationWork])
      {
        goto LABEL_173;
      }

      contactLocationWork = [(BMMomentsEventDataEventBundleMetadataForRank *)self contactLocationWork];
      if (contactLocationWork != [v5 contactLocationWork])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsFamilyContact](self, "hasIsFamilyContact") || [v5 hasIsFamilyContact])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsFamilyContact])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsFamilyContact])
      {
        goto LABEL_173;
      }

      isFamilyContact = [(BMMomentsEventDataEventBundleMetadataForRank *)self isFamilyContact];
      if (isFamilyContact != [v5 isFamilyContact])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsCoworkerContact](self, "hasIsCoworkerContact") || [v5 hasIsCoworkerContact])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsCoworkerContact])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsCoworkerContact])
      {
        goto LABEL_173;
      }

      isCoworkerContact = [(BMMomentsEventDataEventBundleMetadataForRank *)self isCoworkerContact];
      if (isCoworkerContact != [v5 isCoworkerContact])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsRepetitiveContact](self, "hasIsRepetitiveContact") || [v5 hasIsRepetitiveContact])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsRepetitiveContact])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsRepetitiveContact])
      {
        goto LABEL_173;
      }

      isRepetitiveContact = [(BMMomentsEventDataEventBundleMetadataForRank *)self isRepetitiveContact];
      if (isRepetitiveContact != [v5 isRepetitiveContact])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasIsGroupConversation](self, "hasIsGroupConversation") || [v5 hasIsGroupConversation])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsGroupConversation])
      {
        goto LABEL_173;
      }

      if (![v5 hasIsGroupConversation])
      {
        goto LABEL_173;
      }

      isGroupConversation = [(BMMomentsEventDataEventBundleMetadataForRank *)self isGroupConversation];
      if (isGroupConversation != [v5 isGroupConversation])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleCountWeightedSum](self, "hasPeopleCountWeightedSum") || [v5 hasPeopleCountWeightedSum])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedSum])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleCountWeightedSum])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum];
      v21 = v20;
      [v5 peopleCountWeightedSum];
      if (v21 != v22)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleCountWeightedAverage](self, "hasPeopleCountWeightedAverage") || [v5 hasPeopleCountWeightedAverage])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedAverage])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleCountWeightedAverage])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage];
      v24 = v23;
      [v5 peopleCountWeightedAverage];
      if (v24 != v25)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleCountMax](self, "hasPeopleCountMax") || [v5 hasPeopleCountMax])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountMax])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleCountMax])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax];
      v27 = v26;
      [v5 peopleCountMax];
      if (v27 != v28)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedSum](self, "hasPeopleDensityWeightedSum") || [v5 hasPeopleDensityWeightedSum])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedSum])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedSum])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum];
      v30 = v29;
      [v5 peopleDensityWeightedSum];
      if (v30 != v31)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedAverage](self, "hasPeopleDensityWeightedAverage") || [v5 hasPeopleDensityWeightedAverage])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedAverage])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedAverage])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage];
      v33 = v32;
      [v5 peopleDensityWeightedAverage];
      if (v33 != v34)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityMax](self, "hasPeopleDensityMax") || [v5 hasPeopleDensityMax])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityMax])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityMax])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax];
      v36 = v35;
      [v5 peopleDensityMax];
      if (v36 != v37)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedConfidenceSum](self, "hasPeopleDensityWeightedConfidenceSum") || [v5 hasPeopleDensityWeightedConfidenceSum])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceSum])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedConfidenceSum])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum];
      v39 = v38;
      [v5 peopleDensityWeightedConfidenceSum];
      if (v39 != v40)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPeopleDensityWeightedConfidenceAverage](self, "hasPeopleDensityWeightedConfidenceAverage") || [v5 hasPeopleDensityWeightedConfidenceAverage])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceAverage])
      {
        goto LABEL_173;
      }

      if (![v5 hasPeopleDensityWeightedConfidenceAverage])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage];
      v42 = v41;
      [v5 peopleDensityWeightedConfidenceAverage];
      if (v42 != v43)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMediaTotalPlayTime](self, "hasMediaTotalPlayTime") || [v5 hasMediaTotalPlayTime])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaTotalPlayTime])
      {
        goto LABEL_173;
      }

      if (![v5 hasMediaTotalPlayTime])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime];
      v45 = v44;
      [v5 mediaTotalPlayTime];
      if (v45 != v46)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMediaLength](self, "hasMediaLength") || [v5 hasMediaLength])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaLength])
      {
        goto LABEL_173;
      }

      if (![v5 hasMediaLength])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength];
      v48 = v47;
      [v5 mediaLength];
      if (v48 != v49)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMediaActionIsRepeat](self, "hasMediaActionIsRepeat") || [v5 hasMediaActionIsRepeat])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaActionIsRepeat])
      {
        goto LABEL_173;
      }

      if (![v5 hasMediaActionIsRepeat])
      {
        goto LABEL_173;
      }

      mediaActionIsRepeat = [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaActionIsRepeat];
      if (mediaActionIsRepeat != [v5 mediaActionIsRepeat])
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasTimeAtHomeDuration](self, "hasTimeAtHomeDuration") || [v5 hasTimeAtHomeDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasTimeAtHomeDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasTimeAtHomeDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration];
      v52 = v51;
      [v5 timeAtHomeDuration];
      if (v52 != v53)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPhotosAtHomeCurationScore](self, "hasPhotosAtHomeCurationScore") || [v5 hasPhotosAtHomeCurationScore])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPhotosAtHomeCurationScore])
      {
        goto LABEL_173;
      }

      if (![v5 hasPhotosAtHomeCurationScore])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore];
      v55 = v54;
      [v5 photosAtHomeCurationScore];
      if (v55 != v56)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasWorkoutDuration](self, "hasWorkoutDuration") || [v5 hasWorkoutDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasWorkoutDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasWorkoutDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration];
      v58 = v57;
      [v5 workoutDuration];
      if (v58 != v59)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasMotionActivityWalkSpan](self, "hasMotionActivityWalkSpan") || [v5 hasMotionActivityWalkSpan])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMotionActivityWalkSpan])
      {
        goto LABEL_173;
      }

      if (![v5 hasMotionActivityWalkSpan])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan];
      v61 = v60;
      [v5 motionActivityWalkSpan];
      if (v61 != v62)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasVisitDuration](self, "hasVisitDuration") || [v5 hasVisitDuration])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasVisitDuration])
      {
        goto LABEL_173;
      }

      if (![v5 hasVisitDuration])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration];
      v64 = v63;
      [v5 visitDuration];
      if (v64 != v65)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasPoiCategoryInterestingness](self, "hasPoiCategoryInterestingness") || [v5 hasPoiCategoryInterestingness])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPoiCategoryInterestingness])
      {
        goto LABEL_173;
      }

      if (![v5 hasPoiCategoryInterestingness])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness];
      v67 = v66;
      [v5 poiCategoryInterestingness];
      if (v67 != v68)
      {
        goto LABEL_173;
      }
    }

    if (-[BMMomentsEventDataEventBundleMetadataForRank hasFamiliarityIndex](self, "hasFamiliarityIndex") || [v5 hasFamiliarityIndex])
    {
      if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasFamiliarityIndex])
      {
        goto LABEL_173;
      }

      if (![v5 hasFamiliarityIndex])
      {
        goto LABEL_173;
      }

      [(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex];
      v70 = v69;
      [v5 familiarityIndex];
      if (v70 != v71)
      {
        goto LABEL_173;
      }
    }

    stateOfMindDomains = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
    stateOfMindDomains2 = [v5 stateOfMindDomains];
    v74 = stateOfMindDomains2;
    if (stateOfMindDomains == stateOfMindDomains2)
    {
    }

    else
    {
      stateOfMindDomains3 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
      stateOfMindDomains4 = [v5 stateOfMindDomains];
      v77 = [stateOfMindDomains3 isEqual:stateOfMindDomains4];

      if (!v77)
      {
        goto LABEL_173;
      }
    }

    stateOfMindLabels = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
    stateOfMindLabels2 = [v5 stateOfMindLabels];
    v81 = stateOfMindLabels2;
    if (stateOfMindLabels == stateOfMindLabels2)
    {
    }

    else
    {
      stateOfMindLabels3 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
      stateOfMindLabels4 = [v5 stateOfMindLabels];
      v84 = [stateOfMindLabels3 isEqual:stateOfMindLabels4];

      if (!v84)
      {
        goto LABEL_173;
      }
    }

    stateOfMindReflectiveIntervals = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
    stateOfMindReflectiveIntervals2 = [v5 stateOfMindReflectiveIntervals];
    v87 = stateOfMindReflectiveIntervals2;
    if (stateOfMindReflectiveIntervals == stateOfMindReflectiveIntervals2)
    {
    }

    else
    {
      stateOfMindReflectiveIntervals3 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
      stateOfMindReflectiveIntervals4 = [v5 stateOfMindReflectiveIntervals];
      v90 = [stateOfMindReflectiveIntervals3 isEqual:stateOfMindReflectiveIntervals4];

      if (!v90)
      {
        goto LABEL_173;
      }
    }

    stateOfMindValenceClassifications = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
    stateOfMindValenceClassifications2 = [v5 stateOfMindValenceClassifications];
    v93 = stateOfMindValenceClassifications2;
    if (stateOfMindValenceClassifications == stateOfMindValenceClassifications2)
    {
    }

    else
    {
      stateOfMindValenceClassifications3 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
      stateOfMindValenceClassifications4 = [v5 stateOfMindValenceClassifications];
      v96 = [stateOfMindValenceClassifications3 isEqual:stateOfMindValenceClassifications4];

      if (!v96)
      {
        goto LABEL_173;
      }
    }

    stateOfMindValenceValues = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceValues];
    stateOfMindValenceValues2 = [v5 stateOfMindValenceValues];
    v99 = stateOfMindValenceValues2;
    if (stateOfMindValenceValues == stateOfMindValenceValues2)
    {
    }

    else
    {
      stateOfMindValenceValues3 = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceValues];
      stateOfMindValenceValues4 = [v5 stateOfMindValenceValues];
      v102 = [stateOfMindValenceValues3 isEqual:stateOfMindValenceValues4];

      if (!v102)
      {
        goto LABEL_173;
      }
    }

    if (!-[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedIn3pApp](self, "hasStateOfMindLoggedIn3pApp") && ![v5 hasStateOfMindLoggedIn3pApp] || -[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedIn3pApp](self, "hasStateOfMindLoggedIn3pApp") && objc_msgSend(v5, "hasStateOfMindLoggedIn3pApp") && (v103 = -[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedIn3pApp](self, "stateOfMindLoggedIn3pApp"), v103 == objc_msgSend(v5, "stateOfMindLoggedIn3pApp")))
    {
      if (!-[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedInJournalApp](self, "hasStateOfMindLoggedInJournalApp") && ![v5 hasStateOfMindLoggedInJournalApp])
      {
        LOBYTE(v78) = 1;
        goto LABEL_174;
      }

      if (-[BMMomentsEventDataEventBundleMetadataForRank hasStateOfMindLoggedInJournalApp](self, "hasStateOfMindLoggedInJournalApp") && [v5 hasStateOfMindLoggedInJournalApp])
      {
        stateOfMindLoggedInJournalApp = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLoggedInJournalApp];
        v78 = stateOfMindLoggedInJournalApp ^ [v5 stateOfMindLoggedInJournalApp] ^ 1;
LABEL_174:

        goto LABEL_175;
      }
    }

LABEL_173:
    LOBYTE(v78) = 0;
    goto LABEL_174;
  }

  LOBYTE(v78) = 0;
LABEL_175:

  return v78;
}

- (id)jsonDictionary
{
  v152[35] = *MEMORY[0x1E69E9840];
  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasDailyAggregateCallDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration];
    v4 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self dailyAggregateCallDuration];
    v5 = [v4 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasCallDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration];
    v7 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self callDuration];
    v8 = [v7 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyInteractionCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyInteractionCount](self, "burstyInteractionCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasBurstyOutgoingInteractionCount])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyOutgoingInteractionCount](self, "burstyOutgoingInteractionCount")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasMultipleInteractionTypes])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank multipleInteractionTypes](self, "multipleInteractionTypes")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasContactLocationWork])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank contactLocationWork](self, "contactLocationWork")}];
  }

  else
  {
    v12 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsFamilyContact])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isFamilyContact](self, "isFamilyContact")}];
  }

  else
  {
    v13 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsCoworkerContact])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isCoworkerContact](self, "isCoworkerContact")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsRepetitiveContact])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isRepetitiveContact](self, "isRepetitiveContact")}];
  }

  else
  {
    v149 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasIsGroupConversation])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isGroupConversation](self, "isGroupConversation")}];
  }

  else
  {
    v148 = 0;
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedSum]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum], fabs(v14) == INFINITY))
  {
    v147 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum];
    v15 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedSum];
    v147 = [v15 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountWeightedAverage]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage], fabs(v16) == INFINITY))
  {
    v146 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage];
    v17 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountWeightedAverage];
    v146 = [v17 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleCountMax]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax], fabs(v18) == INFINITY))
  {
    v145 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax];
    v19 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleCountMax];
    v145 = [v19 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedSum]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum], fabs(v20) == INFINITY))
  {
    v144 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum];
    v21 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedSum];
    v144 = [v21 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedAverage]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage], fabs(v22) == INFINITY))
  {
    v143 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage];
    v23 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedAverage];
    v143 = [v23 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityMax]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax], fabs(v24) == INFINITY))
  {
    v142 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax];
    v25 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityMax];
    v142 = [v25 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceSum]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum], fabs(v26) == INFINITY))
  {
    v141 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum];
    v27 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceSum];
    v141 = [v27 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPeopleDensityWeightedConfidenceAverage]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage], fabs(v28) == INFINITY))
  {
    v140 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage];
    v29 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self peopleDensityWeightedConfidenceAverage];
    v140 = [v29 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaTotalPlayTime]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime], fabs(v30) == INFINITY))
  {
    v139 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime];
    v31 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaTotalPlayTime];
    v139 = [v31 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaLength]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength], fabs(v32) == INFINITY))
  {
    v138 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength];
    v33 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self mediaLength];
    v138 = [v33 numberWithDouble:?];
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasMediaActionIsRepeat])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank mediaActionIsRepeat](self, "mediaActionIsRepeat")}];
  }

  else
  {
    v137 = 0;
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasTimeAtHomeDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration], fabs(v34) == INFINITY))
  {
    v136 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration];
    v35 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self timeAtHomeDuration];
    v136 = [v35 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPhotosAtHomeCurationScore]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore], fabs(v36) == INFINITY))
  {
    v135 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore];
    v37 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self photosAtHomeCurationScore];
    v135 = [v37 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasWorkoutDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration], fabs(v38) == INFINITY))
  {
    v134 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration];
    v39 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self workoutDuration];
    v134 = [v39 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasMotionActivityWalkSpan]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan], fabs(v40) == INFINITY))
  {
    v133 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan];
    v41 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self motionActivityWalkSpan];
    v133 = [v41 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasVisitDuration]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration], fabs(v42) == INFINITY))
  {
    v132 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration];
    v43 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self visitDuration];
    v132 = [v43 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasPoiCategoryInterestingness]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness], fabs(v44) == INFINITY))
  {
    v131 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness];
    v45 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self poiCategoryInterestingness];
    v131 = [v45 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleMetadataForRank *)self hasFamiliarityIndex]|| ([(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex], fabs(v46) == INFINITY))
  {
    v130 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex];
    v47 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleMetadataForRank *)self familiarityIndex];
    v130 = [v47 numberWithDouble:?];
  }

  _stateOfMindDomainsJSONArray = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindDomainsJSONArray];
  _stateOfMindLabelsJSONArray = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindLabelsJSONArray];
  _stateOfMindReflectiveIntervalsJSONArray = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindReflectiveIntervalsJSONArray];
  _stateOfMindValenceClassificationsJSONArray = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindValenceClassificationsJSONArray];
  _stateOfMindValenceValuesJSONArray = [(BMMomentsEventDataEventBundleMetadataForRank *)self _stateOfMindValenceValuesJSONArray];
  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasStateOfMindLoggedIn3pApp])
  {
    v124 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedIn3pApp](self, "stateOfMindLoggedIn3pApp")}];
  }

  else
  {
    v124 = 0;
  }

  if ([(BMMomentsEventDataEventBundleMetadataForRank *)self hasStateOfMindLoggedInJournalApp])
  {
    v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedInJournalApp](self, "stateOfMindLoggedInJournalApp")}];
  }

  else
  {
    v48 = 0;
  }

  v151[0] = @"dailyAggregateCallDuration";
  null = v5;
  if (!v5)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null;
  v152[0] = null;
  v151[1] = @"callDuration";
  null2 = v8;
  if (!v8)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null2;
  v152[1] = null2;
  v151[2] = @"burstyInteractionCount";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null3;
  v152[2] = null3;
  v151[3] = @"burstyOutgoingInteractionCount";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null4;
  v152[3] = null4;
  v151[4] = @"multipleInteractionTypes";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null5;
  v152[4] = null5;
  v151[5] = @"contactLocationWork";
  null6 = v12;
  if (!v12)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null6;
  v152[5] = null6;
  v151[6] = @"isFamilyContact";
  null7 = v13;
  if (!v13)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null7;
  v152[6] = null7;
  v151[7] = @"isCoworkerContact";
  null8 = v150;
  if (!v150)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v152[7] = null8;
  v151[8] = @"isRepetitiveContact";
  null9 = v149;
  if (!v149)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = v12;
  v152[8] = null9;
  v151[9] = @"isGroupConversation";
  null10 = v148;
  if (!v148)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = v11;
  v106 = null10;
  v152[9] = null10;
  v151[10] = @"peopleCountWeightedSum";
  null11 = v147;
  if (!v147)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = v8;
  v117 = null11;
  v152[10] = null11;
  v151[11] = @"peopleCountWeightedAverage";
  null12 = v146;
  if (!v146)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = v5;
  v116 = null12;
  v152[11] = null12;
  v151[12] = @"peopleCountMax";
  null13 = v145;
  if (!v145)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null13;
  v152[12] = null13;
  v151[13] = @"peopleDensityWeightedSum";
  null14 = v144;
  if (!v144)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null14;
  v152[13] = null14;
  v151[14] = @"peopleDensityWeightedAverage";
  null15 = v143;
  if (!v143)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null15;
  v152[14] = null15;
  v151[15] = @"peopleDensityMax";
  null16 = v142;
  if (!v142)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null16;
  v152[15] = null16;
  v151[16] = @"peopleDensityWeightedConfidenceSum";
  null17 = v141;
  if (!v141)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null17;
  v152[16] = null17;
  v151[17] = @"peopleDensityWeightedConfidenceAverage";
  null18 = v140;
  if (!v140)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null18;
  v152[17] = null18;
  v151[18] = @"mediaTotalPlayTime";
  null19 = v139;
  if (!v139)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null19;
  v152[18] = null19;
  v151[19] = @"mediaLength";
  null20 = v138;
  if (!v138)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null20;
  v152[19] = null20;
  v151[20] = @"mediaActionIsRepeat";
  null21 = v137;
  if (!v137)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null21;
  v152[20] = null21;
  v151[21] = @"timeAtHomeDuration";
  null22 = v136;
  if (!v136)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null22;
  v152[21] = null22;
  v151[22] = @"photosAtHomeCurationScore";
  null23 = v135;
  if (!v135)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = null23;
  v152[22] = null23;
  v151[23] = @"workoutDuration";
  null24 = v134;
  if (!v134)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null24;
  v152[23] = null24;
  v151[24] = @"motionActivityWalkSpan";
  null25 = v133;
  if (!v133)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null25;
  v152[24] = null25;
  v151[25] = @"visitDuration";
  null26 = v132;
  if (!v132)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null26;
  v152[25] = null26;
  v151[26] = @"poiCategoryInterestingness";
  null27 = v131;
  if (!v131)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = v10;
  v92 = null27;
  v152[26] = null27;
  v151[27] = @"familiarityIndex";
  null28 = v130;
  if (!v130)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = v13;
  v91 = null28;
  v152[27] = null28;
  v151[28] = @"stateOfMindDomains";
  null29 = _stateOfMindDomainsJSONArray;
  if (!_stateOfMindDomainsJSONArray)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = v9;
  v122 = v63;
  v90 = null29;
  v152[28] = null29;
  v151[29] = @"stateOfMindLabels";
  null30 = _stateOfMindLabelsJSONArray;
  if (!_stateOfMindLabelsJSONArray)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = v61;
  v152[29] = null30;
  v151[30] = @"stateOfMindReflectiveIntervals";
  null31 = _stateOfMindReflectiveIntervalsJSONArray;
  if (!_stateOfMindReflectiveIntervalsJSONArray)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = v48;
  v152[30] = null31;
  v151[31] = @"stateOfMindValenceClassifications";
  null32 = _stateOfMindValenceClassificationsJSONArray;
  if (!_stateOfMindValenceClassificationsJSONArray)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v152[31] = null32;
  v151[32] = @"stateOfMindValenceValues";
  null33 = _stateOfMindValenceValuesJSONArray;
  if (!_stateOfMindValenceValuesJSONArray)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v152[32] = null33;
  v151[33] = @"stateOfMindLoggedIn3pApp";
  null34 = v124;
  if (!v124)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v152[33] = null34;
  v151[34] = @"stateOfMindLoggedInJournalApp";
  null35 = v123;
  if (!v123)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v152[34] = null35;
  v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:35];
  if (!v123)
  {
  }

  v88 = v65;
  if (!v124)
  {

    v88 = v65;
  }

  if (!_stateOfMindValenceValuesJSONArray)
  {

    v88 = v65;
  }

  if (!_stateOfMindValenceClassificationsJSONArray)
  {

    v88 = v65;
  }

  if (!_stateOfMindReflectiveIntervalsJSONArray)
  {

    v88 = v65;
  }

  if (!_stateOfMindLabelsJSONArray)
  {

    v88 = v65;
  }

  if (!_stateOfMindDomainsJSONArray)
  {

    v88 = v65;
  }

  if (!v130)
  {

    v88 = v65;
  }

  if (!v131)
  {

    v88 = v65;
  }

  if (!v132)
  {

    v88 = v65;
  }

  if (!v133)
  {

    v88 = v65;
  }

  if (!v134)
  {

    v88 = v65;
  }

  if (!v135)
  {

    v88 = v65;
  }

  if (!v136)
  {

    v88 = v65;
  }

  if (!v137)
  {

    v88 = v65;
  }

  if (!v138)
  {

    v88 = v65;
  }

  if (!v139)
  {

    v88 = v65;
  }

  if (!v140)
  {

    v88 = v65;
  }

  if (!v141)
  {

    v88 = v65;
  }

  if (!v142)
  {

    v88 = v65;
  }

  if (!v143)
  {

    v88 = v65;
  }

  if (!v144)
  {

    v88 = v65;
  }

  if (!v145)
  {
  }

  if (!v146)
  {
  }

  if (!v147)
  {
  }

  if (!v148)
  {
  }

  if (!v149)
  {
  }

  if (v150)
  {
    if (v119)
    {
      goto LABEL_236;
    }
  }

  else
  {

    if (v119)
    {
LABEL_236:
      if (v115)
      {
        goto LABEL_237;
      }

      goto LABEL_247;
    }
  }

  if (v115)
  {
LABEL_237:
    if (v59)
    {
      goto LABEL_238;
    }

    goto LABEL_248;
  }

LABEL_247:

  if (v59)
  {
LABEL_238:
    if (v120)
    {
      goto LABEL_239;
    }

    goto LABEL_249;
  }

LABEL_248:

  if (v120)
  {
LABEL_239:
    if (v121)
    {
      goto LABEL_240;
    }

    goto LABEL_250;
  }

LABEL_249:

  if (v121)
  {
LABEL_240:
    if (v118)
    {
      goto LABEL_241;
    }

LABEL_251:

    if (v122)
    {
      goto LABEL_242;
    }

    goto LABEL_252;
  }

LABEL_250:

  if (!v118)
  {
    goto LABEL_251;
  }

LABEL_241:
  if (v122)
  {
    goto LABEL_242;
  }

LABEL_252:

LABEL_242:

  return v114;
}

- (id)_stateOfMindValenceValuesJSONArray
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  stateOfMindValenceValues = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceValues];
  v5 = [stateOfMindValenceValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(stateOfMindValenceValues);
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

      v6 = [stateOfMindValenceValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_stateOfMindValenceClassificationsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stateOfMindValenceClassifications = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
  v5 = [stateOfMindValenceClassifications countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(stateOfMindValenceClassifications);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [stateOfMindValenceClassifications countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_stateOfMindReflectiveIntervalsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stateOfMindReflectiveIntervals = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
  v5 = [stateOfMindReflectiveIntervals countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(stateOfMindReflectiveIntervals);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [stateOfMindReflectiveIntervals countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_stateOfMindLabelsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stateOfMindLabels = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
  v5 = [stateOfMindLabels countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(stateOfMindLabels);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [stateOfMindLabels countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_stateOfMindDomainsJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  stateOfMindDomains = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
  v5 = [stateOfMindDomains countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(stateOfMindDomains);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [stateOfMindDomains countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMMomentsEventDataEventBundleMetadataForRank)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v544[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"dailyAggregateCallDuration"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"callDuration"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"burstyInteractionCount"];
      v428 = v7;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v6;
        v12 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v6;
        v12 = v10;
LABEL_10:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"burstyOutgoingInteractionCount"];
        v427 = v12;
        v426 = v8;
        v420 = v11;
        errorCopy = error;
        if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v423 = v13;
          v424 = 0;
LABEL_13:
          v14 = [dictionaryCopy objectForKeyedSubscript:@"multipleInteractionTypes"];
          v6 = v11;
          v421 = v9;
          if (!v14)
          {
            v15 = 0;
            v7 = v428;
            goto LABEL_27;
          }

          objc_opt_class();
          v7 = v428;
          if (objc_opt_isKindOfClass())
          {
            v15 = 0;
LABEL_27:
            v16 = [dictionaryCopy objectForKeyedSubscript:@"contactLocationWork"];
            v422 = v16;
            if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v74 = 0;
                  v418 = 0;
                  v56 = v424;
LABEL_408:
                  v59 = v423;
                  goto LABEL_409;
                }

                v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                selfCopy = self;
                v77 = v14;
                v78 = *MEMORY[0x1E698F240];
                v533 = *MEMORY[0x1E696A578];
                v417 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"contactLocationWork"];
                v534 = v417;
                v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v534 forKeys:&v533 count:1];
                v6 = v420;
                v79 = v78;
                v14 = v77;
                self = selfCopy;
                v7 = v428;
                v80 = [v76 initWithDomain:v79 code:2 userInfo:v18];
                v74 = 0;
                v418 = 0;
                *errorCopy = v80;
                v56 = v424;
                goto LABEL_407;
              }

              v416 = v17;
            }

            else
            {
              v416 = 0;
            }

            v18 = [dictionaryCopy objectForKeyedSubscript:@"isFamilyContact"];
            v414 = v15;
            v409 = v10;
            v413 = v18;
            if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v417 = 0;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v417 = v18;
LABEL_33:
              v19 = [dictionaryCopy objectForKeyedSubscript:@"isCoworkerContact"];
              v415 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v21 = 0;
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v20;
LABEL_36:
                v22 = [dictionaryCopy objectForKeyedSubscript:@"isRepetitiveContact"];
                v406 = v21;
                v408 = v22;
                if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v24 = 0;
                  goto LABEL_39;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v23;
LABEL_39:
                  v25 = [dictionaryCopy objectForKeyedSubscript:@"isGroupConversation"];
                  selfCopy2 = self;
                  v403 = v24;
                  v407 = v25;
                  if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v27 = 0;
                    goto LABEL_42;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v27 = v26;
LABEL_42:
                    v28 = [dictionaryCopy objectForKeyedSubscript:@"peopleCountWeightedSum"];
                    v404 = v28;
                    if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v405 = 0;
LABEL_45:
                      v30 = [dictionaryCopy objectForKeyedSubscript:@"peopleCountWeightedAverage"];
                      v402 = v30;
                      if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!errorCopy)
                          {
                            v400 = 0;
                            v418 = 0;
                            v56 = v424;
                            v132 = v404;
                            self = selfCopy2;
                            v74 = v416;
LABEL_402:

                            goto LABEL_403;
                          }

                          v141 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v142 = v14;
                          v143 = *MEMORY[0x1E698F240];
                          v521 = *MEMORY[0x1E696A578];
                          v398 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleCountWeightedAverage"];
                          v522 = v398;
                          v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v522 forKeys:&v521 count:1];
                          v145 = v141;
                          v6 = v420;
                          v146 = v143;
                          v14 = v142;
                          v74 = v416;
                          v399 = v144;
                          v400 = 0;
                          v418 = 0;
                          *errorCopy = [v145 initWithDomain:v146 code:2 userInfo:?];
                          v56 = v424;
                          v132 = v404;
                          goto LABEL_400;
                        }

                        v400 = v31;
                      }

                      else
                      {
                        v400 = 0;
                      }

                      v32 = [dictionaryCopy objectForKeyedSubscript:@"peopleCountMax"];
                      v399 = v32;
                      if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!errorCopy)
                          {
                            v398 = 0;
                            v418 = 0;
                            v56 = v424;
                            v132 = v404;
                            v74 = v416;
LABEL_400:

                            goto LABEL_401;
                          }

                          v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v148 = v14;
                          v149 = *MEMORY[0x1E698F240];
                          v519 = *MEMORY[0x1E696A578];
                          v396 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleCountMax"];
                          v520 = v396;
                          v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v520 forKeys:&v519 count:1];
                          v151 = v147;
                          v6 = v420;
                          v152 = v149;
                          v14 = v148;
                          v153 = v150;
                          v74 = v416;
                          v398 = 0;
                          v418 = 0;
                          *errorCopy = [v151 initWithDomain:v152 code:2 userInfo:v150];
                          v56 = v424;
                          v132 = v404;
                          goto LABEL_399;
                        }

                        v398 = v33;
                      }

                      else
                      {
                        v398 = 0;
                      }

                      v34 = [dictionaryCopy objectForKeyedSubscript:@"peopleDensityWeightedSum"];
                      v401 = v34;
                      v397 = v27;
                      if (!v34)
                      {
                        goto LABEL_94;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = 0;
                        goto LABEL_94;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v34 = v34;
LABEL_94:
                        v98 = [dictionaryCopy objectForKeyedSubscript:@"peopleDensityWeightedAverage"];
                        v396 = v34;
                        if (!v98 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v99 = 0;
                          goto LABEL_97;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v99 = v98;
LABEL_97:
                          v100 = [dictionaryCopy objectForKeyedSubscript:@"peopleDensityMax"];
                          v393 = v99;
                          v394 = v100;
                          if (!v100 || (v101 = v100, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v395 = 0;
                            goto LABEL_100;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v395 = v101;
LABEL_100:
                            v102 = [dictionaryCopy objectForKeyedSubscript:@"peopleDensityWeightedConfidenceSum"];
                            v391 = v102;
                            if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v392 = 0;
                              goto LABEL_103;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v392 = v103;
LABEL_103:
                              v104 = [dictionaryCopy objectForKeyedSubscript:@"peopleDensityWeightedConfidenceAverage"];
                              v390 = v104;
                              if (!v104 || (v105 = v104, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v389 = 0;
                                goto LABEL_106;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v389 = v105;
LABEL_106:
                                v106 = [dictionaryCopy objectForKeyedSubscript:@"mediaTotalPlayTime"];
                                v387 = v106;
                                if (!v106 || (v107 = v106, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v388 = 0;
                                  goto LABEL_109;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v388 = v107;
LABEL_109:
                                  v108 = [dictionaryCopy objectForKeyedSubscript:@"mediaLength"];
                                  v385 = v108;
                                  if (!v108 || (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v386 = 0;
                                    goto LABEL_112;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v386 = v109;
LABEL_112:
                                    v110 = [dictionaryCopy objectForKeyedSubscript:@"mediaActionIsRepeat"];
                                    v383 = v110;
                                    if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v384 = 0;
                                      goto LABEL_115;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v384 = v111;
LABEL_115:
                                      v112 = [dictionaryCopy objectForKeyedSubscript:@"timeAtHomeDuration"];
                                      v381 = v112;
                                      if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v382 = 0;
                                        goto LABEL_118;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v382 = v113;
LABEL_118:
                                        v114 = [dictionaryCopy objectForKeyedSubscript:@"photosAtHomeCurationScore"];
                                        v379 = v114;
                                        if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v380 = 0;
                                          goto LABEL_121;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v380 = v115;
LABEL_121:
                                          v116 = [dictionaryCopy objectForKeyedSubscript:@"workoutDuration"];
                                          v377 = v116;
                                          if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v378 = 0;
LABEL_124:
                                            v118 = [dictionaryCopy objectForKeyedSubscript:@"motionActivityWalkSpan"];
                                            v372 = v118;
                                            if (v118 && (v119 = v118, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (errorCopy)
                                                {
                                                  v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v238 = v14;
                                                  v239 = *MEMORY[0x1E698F240];
                                                  v495 = *MEMORY[0x1E696A578];
                                                  v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"motionActivityWalkSpan"];
                                                  v496 = v240;
                                                  v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v496 forKeys:&v495 count:1];
                                                  v242 = v237;
                                                  v243 = v240;
                                                  v6 = v420;
                                                  v244 = v239;
                                                  v14 = v238;
                                                  v99 = v393;
                                                  v18 = v413;
                                                  v370 = v241;
                                                  v376 = 0;
                                                  v418 = 0;
                                                  *errorCopy = [v242 initWithDomain:v244 code:2 userInfo:?];
                                                  v56 = v424;
                                                  v132 = v404;
                                                  v153 = v401;
                                                  goto LABEL_386;
                                                }

                                                v376 = 0;
                                                v418 = 0;
                                                v56 = v424;
                                                v132 = v404;
                                                v153 = v401;
                                                v18 = v413;
                                                goto LABEL_387;
                                              }

                                              v376 = v119;
                                            }

                                            else
                                            {
                                              v376 = 0;
                                            }

                                            v120 = [dictionaryCopy objectForKeyedSubscript:@"visitDuration"];
                                            v370 = v120;
                                            if (v120 && (v121 = v120, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (!errorCopy)
                                                {
                                                  v243 = 0;
                                                  v418 = 0;
                                                  v56 = v424;
                                                  v132 = v404;
                                                  v153 = v401;
                                                  v18 = v413;
                                                  goto LABEL_386;
                                                }

                                                v245 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v246 = v14;
                                                v247 = *MEMORY[0x1E698F240];
                                                v493 = *MEMORY[0x1E696A578];
                                                v248 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"visitDuration"];
                                                v494 = v248;
                                                v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v494 forKeys:&v493 count:1];
                                                v249 = v245;
                                                v123 = v248;
                                                v6 = v420;
                                                v250 = v247;
                                                v14 = v246;
                                                v99 = v393;
                                                v24 = v403;
                                                v369 = 0;
                                                v418 = 0;
                                                *errorCopy = [v249 initWithDomain:v250 code:2 userInfo:v122];
                                                goto LABEL_273;
                                              }

                                              v369 = v121;
                                            }

                                            else
                                            {
                                              v369 = 0;
                                            }

                                            v122 = [dictionaryCopy objectForKeyedSubscript:@"poiCategoryInterestingness"];
                                            if (!v122 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v123 = 0;
LABEL_133:
                                              v124 = [dictionaryCopy objectForKeyedSubscript:@"familiarityIndex"];
                                              v365 = v122;
                                              v367 = v124;
                                              if (v124 && (v125 = v124, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (errorCopy)
                                                  {
                                                    v257 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v258 = v14;
                                                    v259 = *MEMORY[0x1E698F240];
                                                    v489 = *MEMORY[0x1E696A578];
                                                    v368 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"familiarityIndex"];
                                                    v490 = v368;
                                                    v260 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v490 forKeys:&v489 count:1];
                                                    v261 = v257;
                                                    v6 = v420;
                                                    v262 = v259;
                                                    v14 = v258;
                                                    v99 = v393;
                                                    v24 = v403;
                                                    v364 = v260;
                                                    v366 = 0;
                                                    v418 = 0;
                                                    *errorCopy = [v261 initWithDomain:v262 code:2 userInfo:?];
                                                    v56 = v424;
                                                    v132 = v404;
                                                    v153 = v401;

                                                    goto LABEL_383;
                                                  }

                                                  v366 = 0;
                                                  v418 = 0;
                                                  v56 = v424;
                                                  v132 = v404;
                                                  v153 = v401;
                                                  v24 = v403;
                                                  goto LABEL_384;
                                                }

                                                v361 = v123;
                                                v366 = v125;
                                              }

                                              else
                                              {
                                                v361 = v123;
                                                v366 = 0;
                                              }

                                              v126 = [dictionaryCopy objectForKeyedSubscript:@"stateOfMindDomains"];
                                              null = [MEMORY[0x1E695DFB0] null];
                                              v128 = [v126 isEqual:null];

                                              v24 = v403;
                                              if (v128)
                                              {
                                              }

                                              else if (v126)
                                              {
                                                objc_opt_class();
                                                v368 = v126;
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (!errorCopy)
                                                  {
                                                    v418 = 0;
                                                    v56 = v424;
                                                    v132 = v404;
                                                    v153 = v401;
                                                    v6 = v420;
                                                    v123 = v361;
                                                    goto LABEL_383;
                                                  }

                                                  v276 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v277 = *MEMORY[0x1E698F240];
                                                  v487 = *MEMORY[0x1E696A578];
                                                  v363 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindDomains"];
                                                  v488 = v363;
                                                  obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v488 forKeys:&v487 count:1];
                                                  v418 = 0;
                                                  *errorCopy = [v276 initWithDomain:v277 code:2 userInfo:?];
                                                  v56 = v424;
                                                  v132 = v404;
                                                  v153 = v401;
                                                  v6 = v420;
                                                  goto LABEL_277;
                                                }

                                                v207 = v126;
LABEL_204:
                                                v208 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v207, "count")}];
                                                v446 = 0u;
                                                v447 = 0u;
                                                v448 = 0u;
                                                v449 = 0u;
                                                v209 = v207;
                                                v210 = [v209 countByEnumeratingWithState:&v446 objects:v486 count:16];
                                                v153 = v401;
                                                v368 = v209;
                                                v363 = v208;
                                                if (!v210)
                                                {
                                                  goto LABEL_216;
                                                }

                                                v211 = v210;
                                                v212 = *v447;
                                                v374 = v98;
                                                while (1)
                                                {
                                                  for (i = 0; i != v211; ++i)
                                                  {
                                                    if (*v447 != v212)
                                                    {
                                                      objc_enumerationMutation(v209);
                                                    }

                                                    v214 = *(*(&v446 + 1) + 8 * i);
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v233 = errorCopy;
                                                      if (errorCopy)
                                                      {
                                                        v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v235 = *MEMORY[0x1E698F240];
                                                        v484 = *MEMORY[0x1E696A578];
                                                        v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindDomains"];
                                                        v485 = v373;
                                                        v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v485 forKeys:&v484 count:1];
                                                        v236 = [v234 initWithDomain:v235 code:2 userInfo:?];
                                                        v56 = v424;
                                                        v24 = v403;
                                                        v132 = v404;
LABEL_244:
                                                        v99 = v393;
                                                        v122 = v365;
                                                        v418 = 0;
                                                        *v233 = v236;
                                                        obj = v368;
                                                        v6 = v420;
                                                        v98 = v374;
                                                        goto LABEL_245;
                                                      }

                                                      v418 = 0;
                                                      obj = v209;
                                                      v56 = v424;
                                                      v24 = v403;
                                                      v132 = v404;
LABEL_276:
                                                      v6 = v420;
                                                      v98 = v374;
                                                      v99 = v393;
LABEL_277:
                                                      v122 = v365;
                                                      v123 = v361;
                                                      goto LABEL_382;
                                                    }

                                                    objc_opt_class();
                                                    v215 = v14;
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v216 = v214;
                                                    }

                                                    else
                                                    {
                                                      objc_opt_class();
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        v233 = errorCopy;
                                                        if (errorCopy)
                                                        {
                                                          v263 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v264 = *MEMORY[0x1E698F240];
                                                          v482 = *MEMORY[0x1E696A578];
                                                          v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindDomains"];
                                                          v483 = v373;
                                                          v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v483 forKeys:&v482 count:1];
                                                          v236 = [v263 initWithDomain:v264 code:2 userInfo:?];
                                                          v56 = v424;
                                                          v14 = v215;
                                                          v24 = v403;
                                                          v132 = v404;
                                                          v153 = v401;
                                                          goto LABEL_244;
                                                        }

                                                        v418 = 0;
                                                        obj = v209;
                                                        v56 = v424;
                                                        v24 = v403;
                                                        v132 = v404;
                                                        v153 = v401;
                                                        goto LABEL_276;
                                                      }

                                                      v217 = v214;
                                                      v216 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindDomainFromString(v217)];
                                                    }

                                                    [v208 addObject:v216];
                                                    v14 = v215;
                                                    v153 = v401;
                                                  }

                                                  v211 = [v209 countByEnumeratingWithState:&v446 objects:v486 count:16];
                                                  if (!v211)
                                                  {
LABEL_216:

                                                    v218 = [dictionaryCopy objectForKeyedSubscript:@"stateOfMindLabels"];
                                                    null2 = [MEMORY[0x1E695DFB0] null];
                                                    v220 = [v218 isEqual:null2];

                                                    v99 = v393;
                                                    if (v220)
                                                    {

                                                      v218 = 0;
                                                      v24 = v403;
                                                      v132 = v404;
                                                    }

                                                    else
                                                    {
                                                      v132 = v404;
                                                      if (v218)
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          obj = v218;
                                                          if (!errorCopy)
                                                          {
                                                            v418 = 0;
                                                            v56 = v424;
                                                            v132 = v404;
                                                            v6 = v420;
                                                            v122 = v365;
                                                            v123 = v361;
                                                            v24 = v403;
                                                            goto LABEL_382;
                                                          }

                                                          v299 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v300 = *MEMORY[0x1E698F240];
                                                          v480 = *MEMORY[0x1E696A578];
                                                          v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindLabels"];
                                                          v481 = v373;
                                                          v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v481 forKeys:&v480 count:1];
                                                          v418 = 0;
                                                          *errorCopy = [v299 initWithDomain:v300 code:2 userInfo:?];
                                                          v56 = v424;
                                                          v132 = v404;
                                                          goto LABEL_304;
                                                        }
                                                      }

                                                      v24 = v403;
                                                    }

                                                    v373 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v218, "count")}];
                                                    v442 = 0u;
                                                    v443 = 0u;
                                                    v444 = 0u;
                                                    v445 = 0u;
                                                    obj = v218;
                                                    v265 = [obj countByEnumeratingWithState:&v442 objects:v479 count:16];
                                                    if (!v265)
                                                    {
                                                      goto LABEL_261;
                                                    }

                                                    v266 = v265;
                                                    v419 = *v443;
                                                    v375 = v98;
LABEL_251:
                                                    v267 = 0;
                                                    while (1)
                                                    {
                                                      if (*v443 != v419)
                                                      {
                                                        objc_enumerationMutation(obj);
                                                      }

                                                      v268 = *(*(&v442 + 1) + 8 * v267);
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        break;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v269 = v416;
                                                        v270 = v14;
                                                        v271 = v268;
                                                      }

                                                      else
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          v278 = errorCopy;
                                                          if (errorCopy)
                                                          {
                                                            v284 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v355 = v14;
                                                            v285 = *MEMORY[0x1E698F240];
                                                            v475 = *MEMORY[0x1E696A578];
                                                            v358 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindLabels"];
                                                            v476 = v358;
                                                            v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v476 forKeys:&v475 count:1];
                                                            v282 = v284;
                                                            v283 = v285;
                                                            v14 = v355;
                                                            goto LABEL_281;
                                                          }

                                                          goto LABEL_283;
                                                        }

                                                        v269 = v416;
                                                        v270 = v14;
                                                        v272 = v268;
                                                        v271 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindLabelFromString(v272)];
                                                      }

                                                      v416 = v269;

                                                      [v373 addObject:v271];
                                                      ++v267;
                                                      v14 = v270;
                                                      v132 = v404;
                                                      v153 = v401;
                                                      v98 = v375;
                                                      v99 = v393;
                                                      if (v266 == v267)
                                                      {
                                                        v266 = [obj countByEnumeratingWithState:&v442 objects:v479 count:16];
                                                        if (!v266)
                                                        {
LABEL_261:

                                                          v273 = [dictionaryCopy objectForKeyedSubscript:@"stateOfMindReflectiveIntervals"];
                                                          null3 = [MEMORY[0x1E695DFB0] null];
                                                          v275 = [v273 isEqual:null3];

                                                          if (v275)
                                                          {

                                                            goto LABEL_287;
                                                          }

                                                          if (!v273)
                                                          {
LABEL_287:
                                                            v286 = 0;
                                                            goto LABEL_288;
                                                          }

                                                          objc_opt_class();
                                                          v362 = v273;
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v286 = v273;
LABEL_288:
                                                            v287 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v286, "count")}];
                                                            v438 = 0u;
                                                            v439 = 0u;
                                                            v440 = 0u;
                                                            v441 = 0u;
                                                            v362 = v286;
                                                            v288 = [v362 countByEnumeratingWithState:&v438 objects:v472 count:16];
                                                            v358 = v287;
                                                            if (!v288)
                                                            {
                                                              goto LABEL_300;
                                                            }

                                                            v289 = v288;
                                                            v290 = *v439;
                                                            while (1)
                                                            {
                                                              v291 = 0;
                                                              do
                                                              {
                                                                if (*v439 != v290)
                                                                {
                                                                  objc_enumerationMutation(v362);
                                                                }

                                                                v292 = *(*(&v438 + 1) + 8 * v291);
                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v418 = 0;
                                                                    v359 = v362;
                                                                    v56 = v424;
                                                                    v24 = v403;
                                                                    v132 = v404;
                                                                    v6 = v420;
                                                                    goto LABEL_374;
                                                                  }

                                                                  v301 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v302 = *MEMORY[0x1E698F240];
                                                                  v470 = *MEMORY[0x1E696A578];
                                                                  v360 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindReflectiveIntervals"];
                                                                  v471 = v360;
                                                                  v357 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v471 forKeys:&v470 count:1];
                                                                  v303 = [v301 initWithDomain:v302 code:2 userInfo:?];
                                                                  v56 = v424;
                                                                  v24 = v403;
                                                                  v132 = v404;
LABEL_310:
                                                                  v122 = v365;
                                                                  v418 = 0;
                                                                  *errorCopy = v303;
                                                                  v359 = v362;
                                                                  v6 = v420;
                                                                  goto LABEL_371;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v293 = v14;
                                                                  v294 = v292;
                                                                }

                                                                else
                                                                {
                                                                  objc_opt_class();
                                                                  v293 = v14;
                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                  {
                                                                    if (!errorCopy)
                                                                    {
                                                                      v418 = 0;
                                                                      v359 = v362;
                                                                      v56 = v424;
                                                                      v24 = v403;
                                                                      v132 = v404;
                                                                      v153 = v401;
                                                                      v6 = v420;
                                                                      goto LABEL_373;
                                                                    }

                                                                    v304 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v305 = *MEMORY[0x1E698F240];
                                                                    v468 = *MEMORY[0x1E696A578];
                                                                    v360 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindReflectiveIntervals"];
                                                                    v469 = v360;
                                                                    v357 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v469 forKeys:&v468 count:1];
                                                                    v303 = [v304 initWithDomain:v305 code:2 userInfo:?];
                                                                    v56 = v424;
                                                                    v14 = v293;
                                                                    v24 = v403;
                                                                    v132 = v404;
                                                                    v153 = v401;
                                                                    v99 = v393;
                                                                    goto LABEL_310;
                                                                  }

                                                                  v295 = v292;
                                                                  v294 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindReflectiveIntervalFromString(v295)];
                                                                }

                                                                [v287 addObject:v294];
                                                                ++v291;
                                                                v14 = v293;
                                                                v153 = v401;
                                                                v99 = v393;
                                                              }

                                                              while (v289 != v291);
                                                              v289 = [v362 countByEnumeratingWithState:&v438 objects:v472 count:16];
                                                              if (!v289)
                                                              {
LABEL_300:

                                                                v296 = [dictionaryCopy objectForKeyedSubscript:@"stateOfMindValenceClassifications"];
                                                                null4 = [MEMORY[0x1E695DFB0] null];
                                                                v298 = [v296 isEqual:null4];

                                                                if (v298)
                                                                {

                                                                  v296 = 0;
LABEL_314:
                                                                  v360 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v296, "count")}];
                                                                  v434 = 0u;
                                                                  v435 = 0u;
                                                                  v436 = 0u;
                                                                  v437 = 0u;
                                                                  v306 = v296;
                                                                  v307 = [v306 countByEnumeratingWithState:&v434 objects:v465 count:16];
                                                                  v359 = v306;
                                                                  if (!v307)
                                                                  {
                                                                    goto LABEL_326;
                                                                  }

                                                                  v308 = v307;
                                                                  v309 = *v435;
                                                                  while (1)
                                                                  {
                                                                    for (j = 0; j != v308; ++j)
                                                                    {
                                                                      if (*v435 != v309)
                                                                      {
                                                                        objc_enumerationMutation(v306);
                                                                      }

                                                                      v311 = *(*(&v434 + 1) + 8 * j);
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        if (!errorCopy)
                                                                        {
                                                                          v418 = 0;
                                                                          v357 = v306;
                                                                          v56 = v424;
                                                                          v24 = v403;
                                                                          v132 = v404;
                                                                          v6 = v420;
                                                                          goto LABEL_370;
                                                                        }

                                                                        v320 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v321 = *MEMORY[0x1E698F240];
                                                                        v463 = *MEMORY[0x1E696A578];
                                                                        v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindValenceClassifications"];
                                                                        v464 = v322;
                                                                        v354 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v464 forKeys:&v463 count:1];
                                                                        v323 = [v320 initWithDomain:v321 code:2 userInfo:?];
LABEL_337:
                                                                        v418 = 0;
                                                                        *errorCopy = v323;
                                                                        v357 = v306;
                                                                        v56 = v424;
                                                                        v6 = v420;
                                                                        goto LABEL_378;
                                                                      }

                                                                      objc_opt_class();
                                                                      v312 = v14;
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v313 = v311;
                                                                      }

                                                                      else
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (errorCopy)
                                                                          {
                                                                            v324 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v325 = *MEMORY[0x1E698F240];
                                                                            v461 = *MEMORY[0x1E696A578];
                                                                            v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"stateOfMindValenceClassifications"];
                                                                            v462 = v322;
                                                                            v354 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v462 forKeys:&v461 count:1];
                                                                            v323 = [v324 initWithDomain:v325 code:2 userInfo:?];
                                                                            goto LABEL_337;
                                                                          }

                                                                          v418 = 0;
                                                                          v357 = v306;
                                                                          v6 = v420;
                                                                          v56 = v424;
LABEL_369:
                                                                          v24 = v403;
                                                                          v132 = v404;
                                                                          v153 = v401;
                                                                          goto LABEL_370;
                                                                        }

                                                                        v314 = v311;
                                                                        v313 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataStateOfMindValenceClassificationFromString(v314)];
                                                                      }

                                                                      [v360 addObject:v313];
                                                                      v14 = v312;
                                                                      v153 = v401;
                                                                    }

                                                                    v308 = [v306 countByEnumeratingWithState:&v434 objects:v465 count:16];
                                                                    if (!v308)
                                                                    {
LABEL_326:
                                                                      v356 = v14;

                                                                      v315 = [dictionaryCopy objectForKeyedSubscript:?];
                                                                      null5 = [MEMORY[0x1E695DFB0] null];
                                                                      v317 = [v315 isEqual:null5];

                                                                      if (v317)
                                                                      {

                                                                        v315 = 0;
LABEL_340:
                                                                        v322 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v315, "count")}];
                                                                        v430 = 0u;
                                                                        v431 = 0u;
                                                                        v432 = 0u;
                                                                        v433 = 0u;
                                                                        v326 = v315;
                                                                        v327 = [v326 countByEnumeratingWithState:&v430 objects:v458 count:16];
                                                                        v357 = v326;
                                                                        if (!v327)
                                                                        {
                                                                          goto LABEL_349;
                                                                        }

                                                                        v328 = v327;
                                                                        v329 = *v431;
LABEL_342:
                                                                        v330 = 0;
                                                                        while (1)
                                                                        {
                                                                          if (*v431 != v329)
                                                                          {
                                                                            objc_enumerationMutation(v326);
                                                                          }

                                                                          v331 = *(*(&v430 + 1) + 8 * v330);
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
                                                                              v342 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v343 = *MEMORY[0x1E698F240];
                                                                              v454 = *MEMORY[0x1E696A578];
                                                                              v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stateOfMindValenceValues"];
                                                                              v455 = v333;
                                                                              v335 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v455 forKeys:&v454 count:1];
                                                                              v340 = v342;
                                                                              v341 = v343;
                                                                              goto LABEL_364;
                                                                            }

                                                                            goto LABEL_367;
                                                                          }

                                                                          v332 = v331;
                                                                          [v322 addObject:v332];

                                                                          if (v328 == ++v330)
                                                                          {
                                                                            v328 = [v326 countByEnumeratingWithState:&v430 objects:v458 count:16];
                                                                            if (v328)
                                                                            {
                                                                              goto LABEL_342;
                                                                            }

LABEL_349:

                                                                            v333 = [dictionaryCopy objectForKeyedSubscript:@"stateOfMindLoggedIn3pApp"];
                                                                            if (v333 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                            {
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v354 = v333;
                                                                                goto LABEL_352;
                                                                              }

                                                                              if (errorCopy)
                                                                              {
                                                                                v347 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v348 = *MEMORY[0x1E698F240];
                                                                                v452 = *MEMORY[0x1E696A578];
                                                                                v335 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stateOfMindLoggedIn3pApp"];
                                                                                v453 = v335;
                                                                                v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v453 forKeys:&v452 count:1];
                                                                                v354 = 0;
                                                                                v418 = 0;
                                                                                *errorCopy = [v347 initWithDomain:v348 code:2 userInfo:v334];
                                                                                goto LABEL_356;
                                                                              }

                                                                              v354 = 0;
                                                                              v418 = 0;
                                                                            }

                                                                            else
                                                                            {
                                                                              v354 = 0;
LABEL_352:
                                                                              v334 = [dictionaryCopy objectForKeyedSubscript:@"stateOfMindLoggedInJournalApp"];
                                                                              if (!v334 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v335 = 0;
                                                                                goto LABEL_355;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v335 = v334;
LABEL_355:
                                                                                selfCopy2 = [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy2 initWithDailyAggregateCallDuration:v428 callDuration:v421 burstyInteractionCount:v427 burstyOutgoingInteractionCount:v424 multipleInteractionTypes:v414 contactLocationWork:v416 isFamilyContact:v417 isCoworkerContact:v406 isRepetitiveContact:v403 isGroupConversation:v397 peopleCountWeightedSum:v405 peopleCountWeightedAverage:v400 peopleCountMax:v398 peopleDensityWeightedSum:v396 peopleDensityWeightedAverage:v393 peopleDensityMax:v395 peopleDensityWeightedConfidenceSum:v392 peopleDensityWeightedConfidenceAverage:v389 mediaTotalPlayTime:v388 mediaLength:v386 mediaActionIsRepeat:v384 timeAtHomeDuration:v382 photosAtHomeCurationScore:v380 workoutDuration:v378 motionActivityWalkSpan:v376 visitDuration:v369 poiCategoryInterestingness:v361 familiarityIndex:v366 stateOfMindDomains:v363 stateOfMindLabels:v373 stateOfMindReflectiveIntervals:v287 stateOfMindValenceClassifications:v360 stateOfMindValenceValues:v322 stateOfMindLoggedIn3pApp:v354 stateOfMindLoggedInJournalApp:v335];
                                                                                v418 = selfCopy2;
                                                                              }

                                                                              else
                                                                              {
                                                                                if (errorCopy)
                                                                                {
                                                                                  v349 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v350 = *MEMORY[0x1E698F240];
                                                                                  v450 = *MEMORY[0x1E696A578];
                                                                                  v351 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stateOfMindLoggedInJournalApp"];
                                                                                  v451 = v351;
                                                                                  v352 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v451 forKeys:&v450 count:1];
                                                                                  *errorCopy = [v349 initWithDomain:v350 code:2 userInfo:v352];
                                                                                }

                                                                                v335 = 0;
                                                                                v418 = 0;
                                                                              }

LABEL_356:

LABEL_365:
                                                                            }

LABEL_377:
                                                                            v6 = v420;
                                                                            v56 = v424;
                                                                            v14 = v356;
LABEL_378:
                                                                            v99 = v393;
                                                                            v122 = v365;
                                                                            v123 = v361;

                                                                            v24 = v403;
                                                                            v132 = v404;
                                                                            v153 = v401;
LABEL_379:

LABEL_380:
LABEL_381:

LABEL_382:
LABEL_383:

LABEL_384:
LABEL_385:

                                                                            v18 = v413;
                                                                            v243 = v369;
LABEL_386:

LABEL_387:
                                                                            v74 = v416;
LABEL_388:

                                                                            goto LABEL_389;
                                                                          }
                                                                        }

                                                                        if (errorCopy)
                                                                        {
                                                                          v338 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v339 = *MEMORY[0x1E698F240];
                                                                          v456 = *MEMORY[0x1E696A578];
                                                                          v333 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindValenceValues"];
                                                                          v457 = v333;
                                                                          v335 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v457 forKeys:&v456 count:1];
                                                                          v340 = v338;
                                                                          v341 = v339;
LABEL_364:
                                                                          v418 = 0;
                                                                          *errorCopy = [v340 initWithDomain:v341 code:2 userInfo:v335];
                                                                          v354 = v357;
                                                                          goto LABEL_365;
                                                                        }

LABEL_367:
                                                                        v418 = 0;
                                                                        v354 = v326;
                                                                        goto LABEL_377;
                                                                      }

                                                                      v357 = v315;
                                                                      if (!v315)
                                                                      {
                                                                        goto LABEL_340;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        goto LABEL_340;
                                                                      }

                                                                      if (errorCopy)
                                                                      {
                                                                        v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v345 = *MEMORY[0x1E698F240];
                                                                        v459 = *MEMORY[0x1E696A578];
                                                                        v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindValenceValues"];
                                                                        v460 = v322;
                                                                        v354 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v460 forKeys:&v459 count:1];
                                                                        v418 = 0;
                                                                        *errorCopy = [v344 initWithDomain:v345 code:2 userInfo:?];
                                                                        goto LABEL_377;
                                                                      }

                                                                      v418 = 0;
                                                                      v6 = v420;
                                                                      v56 = v424;
                                                                      v24 = v403;
                                                                      v132 = v404;
                                                                      v153 = v401;
LABEL_370:
                                                                      v99 = v393;
                                                                      v122 = v365;
LABEL_371:
                                                                      v123 = v361;
                                                                      goto LABEL_379;
                                                                    }
                                                                  }
                                                                }

                                                                if (!v296 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v153 = v401;
                                                                  goto LABEL_314;
                                                                }

                                                                v359 = v296;
                                                                v6 = v420;
                                                                if (errorCopy)
                                                                {
                                                                  v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v337 = *MEMORY[0x1E698F240];
                                                                  v466 = *MEMORY[0x1E696A578];
                                                                  v360 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindValenceClassifications"];
                                                                  v467 = v360;
                                                                  v357 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v467 forKeys:&v466 count:1];
                                                                  v418 = 0;
                                                                  *errorCopy = [v336 initWithDomain:v337 code:2 userInfo:?];
                                                                  v56 = v424;
                                                                  goto LABEL_369;
                                                                }

                                                                v418 = 0;
                                                                v56 = v424;
                                                                v24 = v403;
                                                                v132 = v404;
                                                                v153 = v401;
LABEL_373:
                                                                v99 = v393;
LABEL_374:
                                                                v122 = v365;
LABEL_282:
                                                                v123 = v361;
                                                                goto LABEL_380;
                                                              }
                                                            }
                                                          }

                                                          if (errorCopy)
                                                          {
                                                            v318 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v319 = *MEMORY[0x1E698F240];
                                                            v473 = *MEMORY[0x1E696A578];
                                                            v358 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"stateOfMindReflectiveIntervals"];
                                                            v474 = v358;
                                                            v359 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v474 forKeys:&v473 count:1];
                                                            v418 = 0;
                                                            *errorCopy = [v318 initWithDomain:v319 code:2 userInfo:?];
                                                            v56 = v424;
                                                            v6 = v420;
                                                            v122 = v365;
                                                            v123 = v361;
                                                            v24 = v403;
                                                            goto LABEL_380;
                                                          }

                                                          v418 = 0;
                                                          v56 = v424;
LABEL_304:
                                                          v6 = v420;
                                                          v122 = v365;
                                                          v123 = v361;
                                                          v24 = v403;
                                                          goto LABEL_381;
                                                        }

                                                        goto LABEL_251;
                                                      }
                                                    }

                                                    v278 = errorCopy;
                                                    if (errorCopy)
                                                    {
                                                      v279 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v280 = *MEMORY[0x1E698F240];
                                                      v477 = *MEMORY[0x1E696A578];
                                                      v358 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"stateOfMindLabels"];
                                                      v478 = v358;
                                                      v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v478 forKeys:&v477 count:1];
                                                      v282 = v279;
                                                      v283 = v280;
LABEL_281:
                                                      v359 = v281;
                                                      v56 = v424;
                                                      v122 = v365;
                                                      v418 = 0;
                                                      *v278 = [v282 initWithDomain:v283 code:2 userInfo:?];
                                                      v362 = obj;
                                                      v6 = v420;
                                                      v98 = v375;
                                                      goto LABEL_282;
                                                    }

LABEL_283:
                                                    v418 = 0;
                                                    v362 = obj;
                                                    v56 = v424;
                                                    v6 = v420;
                                                    v98 = v375;
                                                    v122 = v365;
LABEL_245:
                                                    v123 = v361;
                                                    goto LABEL_381;
                                                  }
                                                }
                                              }

                                              v207 = 0;
                                              goto LABEL_204;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v123 = v122;
                                              goto LABEL_133;
                                            }

                                            if (errorCopy)
                                            {
                                              v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v252 = v14;
                                              v253 = *MEMORY[0x1E698F240];
                                              v491 = *MEMORY[0x1E696A578];
                                              v366 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"poiCategoryInterestingness"];
                                              v492 = v366;
                                              v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v492 forKeys:&v491 count:1];
                                              v6 = v420;
                                              v255 = v253;
                                              v14 = v252;
                                              v99 = v393;
                                              v367 = v254;
                                              v256 = [v251 initWithDomain:v255 code:2 userInfo:?];
                                              v123 = 0;
                                              v418 = 0;
                                              *errorCopy = v256;
                                              v56 = v424;
                                              v132 = v404;
                                              v153 = v401;
                                              goto LABEL_384;
                                            }

                                            v123 = 0;
                                            v418 = 0;
LABEL_273:
                                            v56 = v424;
                                            v132 = v404;
                                            v153 = v401;
                                            goto LABEL_385;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v378 = v117;
                                            goto LABEL_124;
                                          }

                                          if (errorCopy)
                                          {
                                            v227 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v228 = v14;
                                            v229 = *MEMORY[0x1E698F240];
                                            v497 = *MEMORY[0x1E696A578];
                                            v376 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"workoutDuration"];
                                            v498 = v376;
                                            v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v498 forKeys:&v497 count:1];
                                            v231 = v227;
                                            v6 = v420;
                                            v232 = v229;
                                            v14 = v228;
                                            v99 = v393;
                                            v74 = v416;
                                            v18 = v413;
                                            v372 = v230;
                                            v378 = 0;
                                            v418 = 0;
                                            *errorCopy = [v231 initWithDomain:v232 code:2 userInfo:?];
                                            v56 = v424;
                                            v132 = v404;
                                            v153 = v401;
                                            goto LABEL_388;
                                          }

                                          v378 = 0;
                                          v418 = 0;
                                          v56 = v424;
                                          v132 = v404;
                                          v153 = v401;
                                          v18 = v413;
                                          v74 = v416;
LABEL_389:

                                          goto LABEL_390;
                                        }

                                        if (errorCopy)
                                        {
                                          v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v222 = v14;
                                          v223 = *MEMORY[0x1E698F240];
                                          v499 = *MEMORY[0x1E696A578];
                                          v378 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photosAtHomeCurationScore"];
                                          v500 = v378;
                                          v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v500 forKeys:&v499 count:1];
                                          v225 = v221;
                                          v6 = v420;
                                          v226 = v223;
                                          v14 = v222;
                                          v99 = v393;
                                          v74 = v416;
                                          v18 = v413;
                                          v377 = v224;
                                          v380 = 0;
                                          v418 = 0;
                                          *errorCopy = [v225 initWithDomain:v226 code:2 userInfo:?];
                                          v56 = v424;
                                          v132 = v404;
                                          v153 = v401;
                                          goto LABEL_389;
                                        }

                                        v380 = 0;
                                        v418 = 0;
                                        v56 = v424;
                                        v132 = v404;
                                        v153 = v401;
                                        v18 = v413;
                                        v74 = v416;
LABEL_390:

                                        goto LABEL_391;
                                      }

                                      if (errorCopy)
                                      {
                                        v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v202 = v14;
                                        v203 = *MEMORY[0x1E698F240];
                                        v501 = *MEMORY[0x1E696A578];
                                        v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeAtHomeDuration"];
                                        v502 = v380;
                                        v204 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v502 forKeys:&v501 count:1];
                                        v205 = v201;
                                        v6 = v420;
                                        v206 = v203;
                                        v14 = v202;
                                        v74 = v416;
                                        v18 = v413;
                                        v379 = v204;
                                        v382 = 0;
                                        v418 = 0;
                                        *errorCopy = [v205 initWithDomain:v206 code:2 userInfo:?];
                                        v56 = v424;
                                        v132 = v404;
                                        v153 = v401;
                                        goto LABEL_390;
                                      }

                                      v382 = 0;
                                      v418 = 0;
                                      v56 = v424;
                                      v132 = v404;
                                      v153 = v401;
                                      v18 = v413;
                                      v74 = v416;
LABEL_391:

                                      goto LABEL_392;
                                    }

                                    if (errorCopy)
                                    {
                                      v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v196 = v14;
                                      v197 = *MEMORY[0x1E698F240];
                                      v503 = *MEMORY[0x1E696A578];
                                      v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaActionIsRepeat"];
                                      v504 = v382;
                                      v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v504 forKeys:&v503 count:1];
                                      v199 = v195;
                                      v6 = v420;
                                      v200 = v197;
                                      v14 = v196;
                                      v74 = v416;
                                      v18 = v413;
                                      v381 = v198;
                                      v384 = 0;
                                      v418 = 0;
                                      *errorCopy = [v199 initWithDomain:v200 code:2 userInfo:?];
                                      v56 = v424;
                                      v132 = v404;
                                      v153 = v401;
                                      goto LABEL_391;
                                    }

                                    v384 = 0;
                                    v418 = 0;
                                    v56 = v424;
                                    v132 = v404;
                                    v153 = v401;
                                    v18 = v413;
                                    v74 = v416;
LABEL_392:

                                    goto LABEL_393;
                                  }

                                  if (errorCopy)
                                  {
                                    v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v190 = v14;
                                    v191 = *MEMORY[0x1E698F240];
                                    v505 = *MEMORY[0x1E696A578];
                                    v384 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaLength"];
                                    v506 = v384;
                                    v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v506 forKeys:&v505 count:1];
                                    v193 = v189;
                                    v6 = v420;
                                    v194 = v191;
                                    v14 = v190;
                                    v74 = v416;
                                    v18 = v413;
                                    v383 = v192;
                                    v386 = 0;
                                    v418 = 0;
                                    *errorCopy = [v193 initWithDomain:v194 code:2 userInfo:?];
                                    v56 = v424;
                                    v132 = v404;
                                    v153 = v401;
                                    goto LABEL_392;
                                  }

                                  v386 = 0;
                                  v418 = 0;
                                  v56 = v424;
                                  v132 = v404;
                                  v153 = v401;
                                  v18 = v413;
                                  v74 = v416;
LABEL_393:

                                  goto LABEL_394;
                                }

                                if (errorCopy)
                                {
                                  v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v184 = v14;
                                  v185 = *MEMORY[0x1E698F240];
                                  v507 = *MEMORY[0x1E696A578];
                                  v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaTotalPlayTime"];
                                  v508 = v386;
                                  v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v508 forKeys:&v507 count:1];
                                  v187 = v183;
                                  v6 = v420;
                                  v188 = v185;
                                  v14 = v184;
                                  v74 = v416;
                                  v18 = v413;
                                  v385 = v186;
                                  v388 = 0;
                                  v418 = 0;
                                  *errorCopy = [v187 initWithDomain:v188 code:2 userInfo:?];
                                  v56 = v424;
                                  v132 = v404;
                                  v153 = v401;
                                  goto LABEL_393;
                                }

                                v388 = 0;
                                v418 = 0;
                                v56 = v424;
                                v132 = v404;
                                v153 = v401;
                                v18 = v413;
                                v74 = v416;
LABEL_394:

                                goto LABEL_395;
                              }

                              if (errorCopy)
                              {
                                v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v178 = v14;
                                v179 = *MEMORY[0x1E698F240];
                                v509 = *MEMORY[0x1E696A578];
                                v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedConfidenceAverage"];
                                v510 = v388;
                                v180 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v510 forKeys:&v509 count:1];
                                v181 = v177;
                                v6 = v420;
                                v182 = v179;
                                v14 = v178;
                                v74 = v416;
                                v18 = v413;
                                v387 = v180;
                                v389 = 0;
                                v418 = 0;
                                *errorCopy = [v181 initWithDomain:v182 code:2 userInfo:?];
                                v56 = v424;
                                v132 = v404;
                                v153 = v401;
                                goto LABEL_394;
                              }

                              v389 = 0;
                              v418 = 0;
                              v56 = v424;
                              v132 = v404;
                              v153 = v401;
                              v18 = v413;
                              v74 = v416;
LABEL_395:

                              goto LABEL_396;
                            }

                            if (errorCopy)
                            {
                              v171 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v172 = v14;
                              v173 = *MEMORY[0x1E698F240];
                              v511 = *MEMORY[0x1E696A578];
                              v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedConfidenceSum"];
                              v512 = v389;
                              v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v512 forKeys:&v511 count:1];
                              v175 = v171;
                              v6 = v420;
                              v176 = v173;
                              v14 = v172;
                              v74 = v416;
                              v18 = v413;
                              v390 = v174;
                              v392 = 0;
                              v418 = 0;
                              *errorCopy = [v175 initWithDomain:v176 code:2 userInfo:?];
                              v56 = v424;
                              v132 = v404;
                              v153 = v401;
                              goto LABEL_395;
                            }

                            v392 = 0;
                            v418 = 0;
                            v56 = v424;
                            v132 = v404;
                            v153 = v401;
                            v18 = v413;
                            v74 = v416;
LABEL_396:

                            goto LABEL_397;
                          }

                          if (errorCopy)
                          {
                            v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v166 = v14;
                            v167 = *MEMORY[0x1E698F240];
                            v513 = *MEMORY[0x1E696A578];
                            v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityMax"];
                            v514 = v392;
                            v168 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v514 forKeys:&v513 count:1];
                            v169 = v165;
                            v6 = v420;
                            v170 = v167;
                            v14 = v166;
                            v74 = v416;
                            v18 = v413;
                            v391 = v168;
                            v395 = 0;
                            v418 = 0;
                            *errorCopy = [v169 initWithDomain:v170 code:2 userInfo:?];
                            v56 = v424;
                            v132 = v404;
                            v153 = v401;
                            goto LABEL_396;
                          }

                          v395 = 0;
                          v418 = 0;
                          v56 = v424;
                          v132 = v404;
                          v153 = v401;
                          v18 = v413;
                          v74 = v416;
LABEL_397:

                          goto LABEL_398;
                        }

                        if (errorCopy)
                        {
                          v159 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v160 = v14;
                          v161 = *MEMORY[0x1E698F240];
                          v515 = *MEMORY[0x1E696A578];
                          v395 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedAverage"];
                          v516 = v395;
                          v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v516 forKeys:&v515 count:1];
                          v163 = v159;
                          v6 = v420;
                          v164 = v161;
                          v14 = v160;
                          v74 = v416;
                          v18 = v413;
                          v394 = v162;
                          v99 = 0;
                          v418 = 0;
                          *errorCopy = [v163 initWithDomain:v164 code:2 userInfo:?];
                          v56 = v424;
                          v132 = v404;
                          v153 = v401;
                          goto LABEL_397;
                        }

                        v99 = 0;
                        v418 = 0;
                        v56 = v424;
                        v132 = v404;
                        v153 = v401;
                        v18 = v413;
                        v74 = v416;
LABEL_398:

                        v10 = v409;
                        v27 = v397;
                        goto LABEL_399;
                      }

                      if (errorCopy)
                      {
                        v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v155 = v14;
                        v156 = *MEMORY[0x1E698F240];
                        v517 = *MEMORY[0x1E696A578];
                        v153 = v401;
                        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleDensityWeightedSum"];
                        v518 = v99;
                        v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v518 forKeys:&v517 count:1];
                        v157 = v154;
                        v6 = v420;
                        v158 = v156;
                        v14 = v155;
                        v74 = v416;
                        v18 = v413;
                        v396 = 0;
                        v418 = 0;
                        *errorCopy = [v157 initWithDomain:v158 code:2 userInfo:v98];
                        v56 = v424;
                        v132 = v404;
                        goto LABEL_398;
                      }

                      v396 = 0;
                      v418 = 0;
                      v56 = v424;
                      v132 = v404;
                      v153 = v34;
                      v18 = v413;
                      v74 = v416;
LABEL_399:

                      goto LABEL_400;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v405 = v29;
                      goto LABEL_45;
                    }

                    if (errorCopy)
                    {
                      v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v136 = v14;
                      v137 = *MEMORY[0x1E698F240];
                      v523 = *MEMORY[0x1E696A578];
                      v400 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"peopleCountWeightedSum"];
                      v524 = v400;
                      v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v524 forKeys:&v523 count:1];
                      v139 = v135;
                      v6 = v420;
                      v140 = v137;
                      v14 = v136;
                      v74 = v416;
                      v18 = v413;
                      v402 = v138;
                      v405 = 0;
                      v418 = 0;
                      *errorCopy = [v139 initWithDomain:v140 code:2 userInfo:?];
                      v132 = v404;
                      v56 = v424;
LABEL_401:
                      self = selfCopy2;
                      goto LABEL_402;
                    }

                    v405 = 0;
                    v418 = 0;
                    v56 = v424;
                    v132 = v404;
                    self = selfCopy2;
                    v74 = v416;
LABEL_403:

                    goto LABEL_404;
                  }

                  if (errorCopy)
                  {
                    v129 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v130 = v14;
                    v131 = *MEMORY[0x1E698F240];
                    v525 = *MEMORY[0x1E696A578];
                    v405 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGroupConversation"];
                    v526 = v405;
                    v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v526 forKeys:&v525 count:1];
                    v133 = v129;
                    v10 = v409;
                    v6 = v420;
                    v134 = v131;
                    v14 = v130;
                    v74 = v416;
                    v27 = 0;
                    v418 = 0;
                    *errorCopy = [v133 initWithDomain:v134 code:2 userInfo:v132];
                    v56 = v424;
                    self = selfCopy2;
                    goto LABEL_403;
                  }

                  v27 = 0;
                  v418 = 0;
                  v56 = v424;
                  v74 = v416;
LABEL_404:

                  v21 = v406;
                  goto LABEL_405;
                }

                if (errorCopy)
                {
                  v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v93 = v14;
                  v94 = *MEMORY[0x1E698F240];
                  v527 = *MEMORY[0x1E696A578];
                  v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRepetitiveContact"];
                  v528 = v27;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v528 forKeys:&v527 count:1];
                  v96 = v92;
                  v6 = v420;
                  v97 = v94;
                  v14 = v93;
                  v74 = v416;
                  v407 = v95;
                  v418 = 0;
                  *errorCopy = [v96 initWithDomain:v97 code:2 userInfo:?];
                  v24 = 0;
                  v56 = v424;
                  goto LABEL_404;
                }

                v418 = 0;
                v56 = v424;
                v24 = 0;
                v74 = v416;
LABEL_405:

                goto LABEL_406;
              }

              if (errorCopy)
              {
                v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                v86 = v14;
                v87 = *MEMORY[0x1E698F240];
                v529 = *MEMORY[0x1E696A578];
                v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCoworkerContact"];
                v530 = v88;
                v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v530 forKeys:&v529 count:1];
                v90 = v85;
                v6 = v420;
                v91 = v87;
                v14 = v86;
                v74 = v416;
                v408 = v89;
                v21 = 0;
                v418 = 0;
                *errorCopy = [v90 initWithDomain:v91 code:2 userInfo:?];
                v24 = v88;
                v56 = v424;
                goto LABEL_405;
              }

              v21 = 0;
              v418 = 0;
              v56 = v424;
              v74 = v416;
LABEL_406:

              v15 = v414;
              v7 = v428;
              goto LABEL_407;
            }

            if (errorCopy)
            {
              v81 = objc_alloc(MEMORY[0x1E696ABC0]);
              v82 = *MEMORY[0x1E698F240];
              v531 = *MEMORY[0x1E696A578];
              v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFamilyContact"];
              v532 = v21;
              v83 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v532 forKeys:&v531 count:1];
              v84 = v81;
              v10 = v409;
              v6 = v420;
              v74 = v416;
              v415 = v83;
              v417 = 0;
              v418 = 0;
              *errorCopy = [v84 initWithDomain:v82 code:2 userInfo:?];
              v56 = v424;
              goto LABEL_406;
            }

            v417 = 0;
            v418 = 0;
            v56 = v424;
            v74 = v416;
LABEL_407:

            goto LABEL_408;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
            goto LABEL_27;
          }

          if (error)
          {
            v68 = objc_alloc(MEMORY[0x1E696ABC0]);
            selfCopy3 = self;
            v70 = *MEMORY[0x1E698F240];
            v535 = *MEMORY[0x1E696A578];
            v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"multipleInteractionTypes"];
            v536 = v71;
            v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v536 forKeys:&v535 count:1];
            v73 = v68;
            v59 = v423;
            v74 = v71;
            v6 = v420;
            v75 = v70;
            self = selfCopy3;
            v7 = v428;
            v422 = v72;
            v15 = 0;
            v418 = 0;
            *errorCopy = [v73 initWithDomain:v75 code:2 userInfo:v72];
            v56 = v424;
LABEL_409:

            v9 = v421;
            v38 = v418;
            goto LABEL_410;
          }

          v15 = 0;
          v38 = 0;
          v56 = v424;
          v59 = v423;
LABEL_410:

          v12 = v427;
          v8 = v426;
          goto LABEL_411;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v423 = v13;
          v424 = v13;
          goto LABEL_13;
        }

        if (error)
        {
          v61 = v13;
          v62 = v9;
          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v537 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"burstyOutgoingInteractionCount"];
          v538 = v15;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v538 forKeys:&v537 count:1];
          v66 = v63;
          v9 = v62;
          v6 = v11;
          v59 = v61;
          v7 = v428;
          v67 = v64;
          v14 = v65;
          v56 = 0;
          v38 = 0;
          *errorCopy = [v66 initWithDomain:v67 code:2 userInfo:v65];
          goto LABEL_410;
        }

        v56 = 0;
        v38 = 0;
        v59 = v13;
        v6 = v11;
        v7 = v428;
LABEL_411:

        goto LABEL_412;
      }

      if (error)
      {
        selfCopy4 = self;
        errorCopy2 = error;
        v48 = v9;
        v49 = v6;
        v50 = objc_alloc(MEMORY[0x1E696ABC0]);
        v51 = v8;
        v52 = *MEMORY[0x1E698F240];
        v539 = *MEMORY[0x1E696A578];
        v53 = v7;
        v54 = objc_alloc(MEMORY[0x1E696AEC0]);
        v353 = objc_opt_class();
        v55 = v54;
        v7 = v53;
        v56 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v353, @"burstyInteractionCount"];
        v540 = v56;
        v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
        v6 = v49;
        v58 = v52;
        v8 = v51;
        v9 = v48;
        v59 = v57;
        v60 = [v50 initWithDomain:v58 code:2 userInfo:v57];
        v12 = 0;
        v38 = 0;
        *errorCopy2 = v60;
        self = selfCopy4;
        goto LABEL_411;
      }

      v12 = 0;
      v38 = 0;
LABEL_412:

      goto LABEL_413;
    }

    if (error)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = v6;
      v41 = v7;
      v42 = v40;
      v43 = v39;
      v44 = *MEMORY[0x1E698F240];
      v541 = *MEMORY[0x1E696A578];
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"callDuration"];
      v542 = v12;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v542 forKeys:&v541 count:1];
      v45 = v42;
      v7 = v41;
      v6 = v45;
      v46 = [v43 initWithDomain:v44 code:2 userInfo:v10];
      v9 = 0;
      v38 = 0;
      *error = v46;
      goto LABEL_412;
    }

    v9 = 0;
    v38 = 0;
LABEL_413:

    goto LABEL_414;
  }

  if (error)
  {
    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v36 = *MEMORY[0x1E698F240];
    v543 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"dailyAggregateCallDuration"];
    v544[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v544 forKeys:&v543 count:1];
    v37 = [v35 initWithDomain:v36 code:2 userInfo:v8];
    v7 = 0;
    v38 = 0;
    *error = v37;
    goto LABEL_413;
  }

  v7 = 0;
  v38 = 0;
LABEL_414:

  return v38;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundleMetadataForRank *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasDailyAggregateCallDuration)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasCallDuration)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasBurstyInteractionCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasBurstyOutgoingInteractionCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasMultipleInteractionTypes)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasContactLocationWork)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFamilyContact)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCoworkerContact)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRepetitiveContact)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGroupConversation)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasPeopleCountWeightedSum)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleCountWeightedAverage)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleCountMax)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedSum)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedAverage)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityMax)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedConfidenceSum)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPeopleDensityWeightedConfidenceAverage)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMediaTotalPlayTime)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMediaLength)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMediaActionIsRepeat)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasTimeAtHomeDuration)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPhotosAtHomeCurationScore)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasWorkoutDuration)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasMotionActivityWalkSpan)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasVisitDuration)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasPoiCategoryInterestingness)
  {
    PBDataWriterWriteFloatField();
  }

  if (self->_hasFamiliarityIndex)
  {
    PBDataWriterWriteFloatField();
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = self->_stateOfMindDomains;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v47;
    do
    {
      v9 = 0;
      do
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v46 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = self->_stateOfMindLabels;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    do
    {
      v14 = 0;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v42 + 1) + 8 * v14) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v15 = self->_stateOfMindReflectiveIntervals;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v39;
    do
    {
      v19 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v38 + 1) + 8 * v19) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v17);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v20 = self->_stateOfMindValenceClassifications;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v35;
    do
    {
      v24 = 0;
      do
      {
        if (*v35 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v34 + 1) + 8 * v24) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
    }

    while (v22);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v25 = self->_stateOfMindValenceValues;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v31;
    do
    {
      v29 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v30 + 1) + 8 * v29) doubleValue];
        PBDataWriterWriteDoubleField();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
    }

    while (v27);
  }

  if (self->_hasStateOfMindLoggedIn3pApp)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasStateOfMindLoggedInJournalApp)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v206.receiver = self;
  v206.super_class = BMMomentsEventDataEventBundleMetadataForRank;
  v5 = [(BMEventBase *)&v206 init];
  if (!v5)
  {
LABEL_306:
    v202 = v5;
    goto LABEL_307;
  }

  v205 = objc_opt_new();
  v204 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  while (2)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      goto LABEL_304;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v207) = 0;
      v13 = [fromCopy position] + 1;
      if (v13 >= [fromCopy position] && (v14 = objc_msgSend(fromCopy, "position") + 1, v14 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v12 |= (LOBYTE(v207) & 0x7F) << v10;
      if ((LOBYTE(v207) & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v16 = v11++ >= 9;
      if (v16)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    if ([fromCopy hasError])
    {
      v12 = 0;
    }

LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v12 & 7) == 4)
    {
LABEL_304:
      v191 = [v205 copy];
      stateOfMindDomains = v5->_stateOfMindDomains;
      v5->_stateOfMindDomains = v191;

      v193 = [v204 copy];
      stateOfMindLabels = v5->_stateOfMindLabels;
      v5->_stateOfMindLabels = v193;

      v195 = [v6 copy];
      stateOfMindReflectiveIntervals = v5->_stateOfMindReflectiveIntervals;
      v5->_stateOfMindReflectiveIntervals = v195;

      v197 = [v7 copy];
      stateOfMindValenceClassifications = v5->_stateOfMindValenceClassifications;
      v5->_stateOfMindValenceClassifications = v197;

      v199 = [v8 copy];
      stateOfMindValenceValues = v5->_stateOfMindValenceValues;
      v5->_stateOfMindValenceValues = v199;

      hasError = [fromCopy hasError];
      if (hasError)
      {
        goto LABEL_305;
      }

      goto LABEL_306;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v5->_hasDailyAggregateCallDuration = 1;
        LODWORD(v207) = 0;
        v17 = [fromCopy position] + 4;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 4, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_dailyAggregateCallDuration = *&v207;
        continue;
      case 2u:
        v5->_hasCallDuration = 1;
        LODWORD(v207) = 0;
        v84 = [fromCopy position] + 4;
        if (v84 >= [fromCopy position] && (v85 = objc_msgSend(fromCopy, "position") + 4, v85 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_callDuration = *&v207;
        continue;
      case 3u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        v5->_hasBurstyInteractionCount = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v64 = [fromCopy position] + 1;
          if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v63 |= (LOBYTE(v207) & 0x7F) << v61;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v16 = v62++ >= 9;
          if (v16)
          {
            v67 = 0;
            goto LABEL_227;
          }
        }

        if ([fromCopy hasError])
        {
          v67 = 0;
        }

        else
        {
          v67 = v63;
        }

LABEL_227:
        v5->_burstyInteractionCount = v67;
        continue;
      case 4u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasBurstyOutgoingInteractionCount = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v73 = [fromCopy position] + 1;
          if (v73 >= [fromCopy position] && (v74 = objc_msgSend(fromCopy, "position") + 1, v74 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v72 |= (LOBYTE(v207) & 0x7F) << v70;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v16 = v71++ >= 9;
          if (v16)
          {
            v76 = 0;
            goto LABEL_231;
          }
        }

        if ([fromCopy hasError])
        {
          v76 = 0;
        }

        else
        {
          v76 = v72;
        }

LABEL_231:
        v5->_burstyOutgoingInteractionCount = v76;
        continue;
      case 5u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v5->_hasMultipleInteractionTypes = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v44 = [fromCopy position] + 1;
          if (v44 >= [fromCopy position] && (v45 = objc_msgSend(fromCopy, "position") + 1, v45 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v43 |= (LOBYTE(v207) & 0x7F) << v41;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v16 = v42++ >= 9;
          if (v16)
          {
            LOBYTE(v47) = 0;
            goto LABEL_221;
          }
        }

        v47 = (v43 != 0) & ~[fromCopy hasError];
LABEL_221:
        v5->_multipleInteractionTypes = v47;
        continue;
      case 6u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v5->_hasContactLocationWork = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v106 = [fromCopy position] + 1;
          if (v106 >= [fromCopy position] && (v107 = objc_msgSend(fromCopy, "position") + 1, v107 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v105 |= (LOBYTE(v207) & 0x7F) << v103;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v16 = v104++ >= 9;
          if (v16)
          {
            LOBYTE(v109) = 0;
            goto LABEL_242;
          }
        }

        v109 = (v105 != 0) & ~[fromCopy hasError];
LABEL_242:
        v5->_contactLocationWork = v109;
        continue;
      case 7u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v5->_hasIsFamilyContact = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v117 = [fromCopy position] + 1;
          if (v117 >= [fromCopy position] && (v118 = objc_msgSend(fromCopy, "position") + 1, v118 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v116 |= (LOBYTE(v207) & 0x7F) << v114;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v16 = v115++ >= 9;
          if (v16)
          {
            LOBYTE(v120) = 0;
            goto LABEL_244;
          }
        }

        v120 = (v116 != 0) & ~[fromCopy hasError];
LABEL_244:
        v5->_isFamilyContact = v120;
        continue;
      case 8u:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v5->_hasIsCoworkerContact = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v80 = [fromCopy position] + 1;
          if (v80 >= [fromCopy position] && (v81 = objc_msgSend(fromCopy, "position") + 1, v81 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v79 |= (LOBYTE(v207) & 0x7F) << v77;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v16 = v78++ >= 9;
          if (v16)
          {
            LOBYTE(v83) = 0;
            goto LABEL_233;
          }
        }

        v83 = (v79 != 0) & ~[fromCopy hasError];
LABEL_233:
        v5->_isCoworkerContact = v83;
        continue;
      case 9u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v5->_hasIsRepetitiveContact = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v128 = [fromCopy position] + 1;
          if (v128 >= [fromCopy position] && (v129 = objc_msgSend(fromCopy, "position") + 1, v129 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v127 |= (LOBYTE(v207) & 0x7F) << v125;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v16 = v126++ >= 9;
          if (v16)
          {
            LOBYTE(v131) = 0;
            goto LABEL_246;
          }
        }

        v131 = (v127 != 0) & ~[fromCopy hasError];
LABEL_246:
        v5->_isRepetitiveContact = v131;
        continue;
      case 0xAu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasIsGroupConversation = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 |= (LOBYTE(v207) & 0x7F) << v50;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v16 = v51++ >= 9;
          if (v16)
          {
            LOBYTE(v56) = 0;
            goto LABEL_223;
          }
        }

        v56 = (v52 != 0) & ~[fromCopy hasError];
LABEL_223:
        v5->_isGroupConversation = v56;
        continue;
      case 0xBu:
        v5->_hasPeopleCountWeightedSum = 1;
        LODWORD(v207) = 0;
        v123 = [fromCopy position] + 4;
        if (v123 >= [fromCopy position] && (v124 = objc_msgSend(fromCopy, "position") + 4, v124 <= objc_msgSend(fromCopy, "length")))
        {
          data12 = [fromCopy data];
          [data12 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleCountWeightedSum = *&v207;
        continue;
      case 0xCu:
        v5->_hasPeopleCountWeightedAverage = 1;
        LODWORD(v207) = 0;
        v39 = [fromCopy position] + 4;
        if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 4, v40 <= objc_msgSend(fromCopy, "length")))
        {
          data13 = [fromCopy data];
          [data13 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleCountWeightedAverage = *&v207;
        continue;
      case 0xDu:
        v5->_hasPeopleCountMax = 1;
        LODWORD(v207) = 0;
        v48 = [fromCopy position] + 4;
        if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 4, v49 <= objc_msgSend(fromCopy, "length")))
        {
          data14 = [fromCopy data];
          [data14 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleCountMax = *&v207;
        continue;
      case 0xEu:
        v5->_hasPeopleDensityWeightedSum = 1;
        LODWORD(v207) = 0;
        v112 = [fromCopy position] + 4;
        if (v112 >= [fromCopy position] && (v113 = objc_msgSend(fromCopy, "position") + 4, v113 <= objc_msgSend(fromCopy, "length")))
        {
          data15 = [fromCopy data];
          [data15 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleDensityWeightedSum = *&v207;
        continue;
      case 0xFu:
        v5->_hasPeopleDensityWeightedAverage = 1;
        LODWORD(v207) = 0;
        v30 = [fromCopy position] + 4;
        if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 4, v31 <= objc_msgSend(fromCopy, "length")))
        {
          data16 = [fromCopy data];
          [data16 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleDensityWeightedAverage = *&v207;
        continue;
      case 0x10u:
        v5->_hasPeopleDensityMax = 1;
        LODWORD(v207) = 0;
        v68 = [fromCopy position] + 4;
        if (v68 >= [fromCopy position] && (v69 = objc_msgSend(fromCopy, "position") + 4, v69 <= objc_msgSend(fromCopy, "length")))
        {
          data17 = [fromCopy data];
          [data17 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleDensityMax = *&v207;
        continue;
      case 0x11u:
        v5->_hasPeopleDensityWeightedConfidenceSum = 1;
        LODWORD(v207) = 0;
        v28 = [fromCopy position] + 4;
        if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 4, v29 <= objc_msgSend(fromCopy, "length")))
        {
          data18 = [fromCopy data];
          [data18 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleDensityWeightedConfidenceSum = *&v207;
        continue;
      case 0x12u:
        v5->_hasPeopleDensityWeightedConfidenceAverage = 1;
        LODWORD(v207) = 0;
        v94 = [fromCopy position] + 4;
        if (v94 >= [fromCopy position] && (v95 = objc_msgSend(fromCopy, "position") + 4, v95 <= objc_msgSend(fromCopy, "length")))
        {
          data19 = [fromCopy data];
          [data19 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_peopleDensityWeightedConfidenceAverage = *&v207;
        continue;
      case 0x13u:
        v5->_hasMediaTotalPlayTime = 1;
        LODWORD(v207) = 0;
        v121 = [fromCopy position] + 4;
        if (v121 >= [fromCopy position] && (v122 = objc_msgSend(fromCopy, "position") + 4, v122 <= objc_msgSend(fromCopy, "length")))
        {
          data20 = [fromCopy data];
          [data20 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_mediaTotalPlayTime = *&v207;
        continue;
      case 0x14u:
        v5->_hasMediaLength = 1;
        LODWORD(v207) = 0;
        v144 = [fromCopy position] + 4;
        if (v144 >= [fromCopy position] && (v145 = objc_msgSend(fromCopy, "position") + 4, v145 <= objc_msgSend(fromCopy, "length")))
        {
          data21 = [fromCopy data];
          [data21 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_mediaLength = *&v207;
        continue;
      case 0x15u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v5->_hasMediaActionIsRepeat = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v99 = [fromCopy position] + 1;
          if (v99 >= [fromCopy position] && (v100 = objc_msgSend(fromCopy, "position") + 1, v100 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v98 |= (LOBYTE(v207) & 0x7F) << v96;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v96 += 7;
          v16 = v97++ >= 9;
          if (v16)
          {
            LOBYTE(v102) = 0;
            goto LABEL_240;
          }
        }

        v102 = (v98 != 0) & ~[fromCopy hasError];
LABEL_240:
        v5->_mediaActionIsRepeat = v102;
        continue;
      case 0x16u:
        v5->_hasTimeAtHomeDuration = 1;
        LODWORD(v207) = 0;
        v110 = [fromCopy position] + 4;
        if (v110 >= [fromCopy position] && (v111 = objc_msgSend(fromCopy, "position") + 4, v111 <= objc_msgSend(fromCopy, "length")))
        {
          data23 = [fromCopy data];
          [data23 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_timeAtHomeDuration = *&v207;
        continue;
      case 0x17u:
        v5->_hasPhotosAtHomeCurationScore = 1;
        LODWORD(v207) = 0;
        v142 = [fromCopy position] + 4;
        if (v142 >= [fromCopy position] && (v143 = objc_msgSend(fromCopy, "position") + 4, v143 <= objc_msgSend(fromCopy, "length")))
        {
          data24 = [fromCopy data];
          [data24 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_photosAtHomeCurationScore = *&v207;
        continue;
      case 0x18u:
        v5->_hasWorkoutDuration = 1;
        LODWORD(v207) = 0;
        v146 = [fromCopy position] + 4;
        if (v146 >= [fromCopy position] && (v147 = objc_msgSend(fromCopy, "position") + 4, v147 <= objc_msgSend(fromCopy, "length")))
        {
          data25 = [fromCopy data];
          [data25 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_workoutDuration = *&v207;
        continue;
      case 0x19u:
        v5->_hasMotionActivityWalkSpan = 1;
        LODWORD(v207) = 0;
        v59 = [fromCopy position] + 4;
        if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 4, v60 <= objc_msgSend(fromCopy, "length")))
        {
          data26 = [fromCopy data];
          [data26 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_motionActivityWalkSpan = *&v207;
        continue;
      case 0x1Au:
        v5->_hasVisitDuration = 1;
        LODWORD(v207) = 0;
        v57 = [fromCopy position] + 4;
        if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 4, v58 <= objc_msgSend(fromCopy, "length")))
        {
          data27 = [fromCopy data];
          [data27 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_visitDuration = *&v207;
        continue;
      case 0x1Bu:
        v5->_hasPoiCategoryInterestingness = 1;
        LODWORD(v207) = 0;
        v162 = [fromCopy position] + 4;
        if (v162 >= [fromCopy position] && (v163 = objc_msgSend(fromCopy, "position") + 4, v163 <= objc_msgSend(fromCopy, "length")))
        {
          data28 = [fromCopy data];
          [data28 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_poiCategoryInterestingness = *&v207;
        continue;
      case 0x1Cu:
        v5->_hasFamiliarityIndex = 1;
        LODWORD(v207) = 0;
        v19 = [fromCopy position] + 4;
        if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 4, v20 <= objc_msgSend(fromCopy, "length")))
        {
          data29 = [fromCopy data];
          [data29 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_familiarityIndex = *&v207;
        continue;
      case 0x1Du:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v151 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v152 = [fromCopy position] + 1;
          if (v152 >= [fromCopy position] && (v153 = objc_msgSend(fromCopy, "position") + 1, v153 <= objc_msgSend(fromCopy, "length")))
          {
            data30 = [fromCopy data];
            [data30 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v150 |= (LOBYTE(v207) & 0x7F) << v148;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v93 = v149++ > 8;
          if (v93)
          {
            goto LABEL_254;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v150 > 0x12)
        {
LABEL_254:
          v150 = 0;
        }

        v168 = [v151 numberWithUnsignedInt:v150];
        if (!v168)
        {
          goto LABEL_308;
        }

        v165 = v168;
        v166 = v205;
        goto LABEL_295;
      case 0x1Eu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v158 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v159 = [fromCopy position] + 1;
          if (v159 >= [fromCopy position] && (v160 = objc_msgSend(fromCopy, "position") + 1, v160 <= objc_msgSend(fromCopy, "length")))
          {
            data31 = [fromCopy data];
            [data31 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v157 |= (LOBYTE(v207) & 0x7F) << v155;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v93 = v156++ > 8;
          if (v93)
          {
            goto LABEL_259;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v157 > 0x26)
        {
LABEL_259:
          v157 = 0;
        }

        v169 = [v158 numberWithUnsignedInt:v157];
        if (!v169)
        {
          goto LABEL_308;
        }

        v165 = v169;
        v166 = v204;
        goto LABEL_295;
      case 0x1Fu:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v135 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v136 = [fromCopy position] + 1;
          if (v136 >= [fromCopy position] && (v137 = objc_msgSend(fromCopy, "position") + 1, v137 <= objc_msgSend(fromCopy, "length")))
          {
            data32 = [fromCopy data];
            [data32 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v134 |= (LOBYTE(v207) & 0x7F) << v132;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v93 = v133++ > 8;
          if (v93)
          {
            goto LABEL_249;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v134 > 2)
        {
LABEL_249:
          v134 = 0;
        }

        v167 = [v135 numberWithUnsignedInt:v134];
        if (!v167)
        {
          goto LABEL_308;
        }

        v165 = v167;
        v166 = v6;
        goto LABEL_295;
      case 0x20u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        v89 = MEMORY[0x1E696AD98];
        while (1)
        {
          LOBYTE(v207) = 0;
          v90 = [fromCopy position] + 1;
          if (v90 >= [fromCopy position] && (v91 = objc_msgSend(fromCopy, "position") + 1, v91 <= objc_msgSend(fromCopy, "length")))
          {
            data33 = [fromCopy data];
            [data33 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v88 |= (LOBYTE(v207) & 0x7F) << v86;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v93 = v87++ > 8;
          if (v93)
          {
            goto LABEL_236;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v88 > 7)
        {
LABEL_236:
          v88 = 0;
        }

        v164 = [v89 numberWithUnsignedInt:v88];
        if (v164)
        {
          v165 = v164;
          v166 = v7;
LABEL_295:
          [v166 addObject:v165];

          continue;
        }

LABEL_308:

LABEL_305:
        v202 = 0;
LABEL_307:

        return v202;
      case 0x21u:
        v139 = MEMORY[0x1E696AD98];
        v207 = 0.0;
        v140 = [fromCopy position] + 8;
        if (v140 >= [fromCopy position] && (v141 = objc_msgSend(fromCopy, "position") + 8, v141 <= objc_msgSend(fromCopy, "length")))
        {
          data34 = [fromCopy data];
          [data34 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v186 = [v139 numberWithDouble:v207];
        if (!v186)
        {
          goto LABEL_308;
        }

        v165 = v186;
        v166 = v8;
        goto LABEL_295;
      case 0x22u:
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v5->_hasStateOfMindLoggedIn3pApp = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v35 = [fromCopy position] + 1;
          if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
          {
            data35 = [fromCopy data];
            [data35 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v34 |= (LOBYTE(v207) & 0x7F) << v32;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v16 = v33++ >= 9;
          if (v16)
          {
            LOBYTE(v38) = 0;
            goto LABEL_219;
          }
        }

        v38 = (v34 != 0) & ~[fromCopy hasError];
LABEL_219:
        v5->_stateOfMindLoggedIn3pApp = v38;
        continue;
      case 0x23u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v5->_hasStateOfMindLoggedInJournalApp = 1;
        while (1)
        {
          LOBYTE(v207) = 0;
          v24 = [fromCopy position] + 1;
          if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
          {
            data36 = [fromCopy data];
            [data36 getBytes:&v207 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v23 |= (LOBYTE(v207) & 0x7F) << v21;
          if ((LOBYTE(v207) & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v16 = v22++ >= 9;
          if (v16)
          {
            LOBYTE(v27) = 0;
            goto LABEL_217;
          }
        }

        v27 = (v23 != 0) & ~[fromCopy hasError];
LABEL_217:
        v5->_stateOfMindLoggedInJournalApp = v27;
        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

        goto LABEL_308;
    }
  }
}

- (NSString)description
{
  v109 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 appendString:@"["];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  stateOfMindDomains = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindDomains];
  v5 = [stateOfMindDomains countByEnumeratingWithState:&v101 objects:v108 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v102;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v102 != v7)
        {
          objc_enumerationMutation(stateOfMindDomains);
        }

        v9 = *(*(&v101 + 1) + 8 * i);
        if ([v3 length] != 1)
        {
          [v3 appendString:{@", "}];
        }

        v10 = BMMomentsEventDataStateOfMindDomainAsString([v9 unsignedIntValue]);
        [v3 appendString:v10];
      }

      v6 = [stateOfMindDomains countByEnumeratingWithState:&v101 objects:v108 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"]"];
  v11 = objc_opt_new();
  [v11 appendString:@"["];
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  stateOfMindLabels = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindLabels];
  v13 = [stateOfMindLabels countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v98;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v98 != v15)
        {
          objc_enumerationMutation(stateOfMindLabels);
        }

        v17 = *(*(&v97 + 1) + 8 * j);
        if ([v11 length] != 1)
        {
          [v11 appendString:{@", "}];
        }

        v18 = BMMomentsEventDataStateOfMindLabelAsString([v17 unsignedIntValue]);
        [v11 appendString:v18];
      }

      v14 = [stateOfMindLabels countByEnumeratingWithState:&v97 objects:v107 count:16];
    }

    while (v14);
  }

  [v11 appendString:@"]"];
  v19 = objc_opt_new();
  [v19 appendString:@"["];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  stateOfMindReflectiveIntervals = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindReflectiveIntervals];
  v21 = [stateOfMindReflectiveIntervals countByEnumeratingWithState:&v93 objects:v106 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v94;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v94 != v23)
        {
          objc_enumerationMutation(stateOfMindReflectiveIntervals);
        }

        v25 = *(*(&v93 + 1) + 8 * k);
        if ([v19 length] != 1)
        {
          [v19 appendString:{@", "}];
        }

        v26 = BMMomentsEventDataStateOfMindReflectiveIntervalAsString([v25 unsignedIntValue]);
        [v19 appendString:v26];
      }

      v22 = [stateOfMindReflectiveIntervals countByEnumeratingWithState:&v93 objects:v106 count:16];
    }

    while (v22);
  }

  [v19 appendString:@"]"];
  v27 = objc_opt_new();
  [v27 appendString:@"["];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  selfCopy = self;
  stateOfMindValenceClassifications = [(BMMomentsEventDataEventBundleMetadataForRank *)self stateOfMindValenceClassifications];
  v29 = [stateOfMindValenceClassifications countByEnumeratingWithState:&v89 objects:v105 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v90;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v90 != v31)
        {
          objc_enumerationMutation(stateOfMindValenceClassifications);
        }

        v33 = *(*(&v89 + 1) + 8 * m);
        if ([v27 length] != 1)
        {
          [v27 appendString:{@", "}];
        }

        v34 = BMMomentsEventDataStateOfMindValenceClassificationAsString([v33 unsignedIntValue]);
        [v27 appendString:v34];
      }

      v30 = [stateOfMindValenceClassifications countByEnumeratingWithState:&v89 objects:v105 count:16];
    }

    while (v30);
  }

  [v27 appendString:@"]"];
  v63 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy dailyAggregateCallDuration];
  v87 = [v35 numberWithDouble:?];
  v36 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy callDuration];
  v86 = [v36 numberWithDouble:?];
  v88 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyInteractionCount](selfCopy, "burstyInteractionCount")}];
  v85 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleMetadataForRank burstyOutgoingInteractionCount](selfCopy, "burstyOutgoingInteractionCount")}];
  v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank multipleInteractionTypes](selfCopy, "multipleInteractionTypes")}];
  v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank contactLocationWork](selfCopy, "contactLocationWork")}];
  v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isFamilyContact](selfCopy, "isFamilyContact")}];
  v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isCoworkerContact](selfCopy, "isCoworkerContact")}];
  v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isRepetitiveContact](selfCopy, "isRepetitiveContact")}];
  v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank isGroupConversation](selfCopy, "isGroupConversation")}];
  v37 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleCountWeightedSum];
  v78 = [v37 numberWithDouble:?];
  v38 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleCountWeightedAverage];
  v77 = [v38 numberWithDouble:?];
  v39 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleCountMax];
  v76 = [v39 numberWithDouble:?];
  v40 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleDensityWeightedSum];
  v75 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleDensityWeightedAverage];
  v74 = [v41 numberWithDouble:?];
  v42 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleDensityMax];
  v73 = [v42 numberWithDouble:?];
  v43 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleDensityWeightedConfidenceSum];
  v72 = [v43 numberWithDouble:?];
  v44 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy peopleDensityWeightedConfidenceAverage];
  v71 = [v44 numberWithDouble:?];
  v45 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy mediaTotalPlayTime];
  v70 = [v45 numberWithDouble:?];
  v46 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy mediaLength];
  v69 = [v46 numberWithDouble:?];
  v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank mediaActionIsRepeat](selfCopy, "mediaActionIsRepeat")}];
  v47 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy timeAtHomeDuration];
  v67 = [v47 numberWithDouble:?];
  v48 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy photosAtHomeCurationScore];
  v62 = [v48 numberWithDouble:?];
  v49 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy workoutDuration];
  v61 = [v49 numberWithDouble:?];
  v50 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy motionActivityWalkSpan];
  v60 = [v50 numberWithDouble:?];
  v51 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy visitDuration];
  v59 = [v51 numberWithDouble:?];
  v52 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy poiCategoryInterestingness];
  v66 = [v52 numberWithDouble:?];
  v53 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy familiarityIndex];
  v57 = [v53 numberWithDouble:?];
  stateOfMindValenceValues = [(BMMomentsEventDataEventBundleMetadataForRank *)selfCopy stateOfMindValenceValues];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedIn3pApp](selfCopy, "stateOfMindLoggedIn3pApp")}];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleMetadataForRank stateOfMindLoggedInJournalApp](selfCopy, "stateOfMindLoggedInJournalApp")}];
  v65 = [v63 initWithFormat:@"BMMomentsEventDataEventBundleMetadataForRank with dailyAggregateCallDuration: %@, callDuration: %@, burstyInteractionCount: %@, burstyOutgoingInteractionCount: %@, multipleInteractionTypes: %@, contactLocationWork: %@, isFamilyContact: %@, isCoworkerContact: %@, isRepetitiveContact: %@, isGroupConversation: %@, peopleCountWeightedSum: %@, peopleCountWeightedAverage: %@, peopleCountMax: %@, peopleDensityWeightedSum: %@, peopleDensityWeightedAverage: %@, peopleDensityMax: %@, peopleDensityWeightedConfidenceSum: %@, peopleDensityWeightedConfidenceAverage: %@, mediaTotalPlayTime: %@, mediaLength: %@, mediaActionIsRepeat: %@, timeAtHomeDuration: %@, photosAtHomeCurationScore: %@, workoutDuration: %@, motionActivityWalkSpan: %@, visitDuration: %@, poiCategoryInterestingness: %@, familiarityIndex: %@, stateOfMindDomains: %@, stateOfMindLabels: %@, stateOfMindReflectiveIntervals: %@, stateOfMindValenceClassifications: %@, stateOfMindValenceValues: %@, stateOfMindLoggedIn3pApp: %@, stateOfMindLoggedInJournalApp: %@", v87, v86, v88, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v62, v61, v60, v59, v66, v57, v3, v11, v19, v27, stateOfMindValenceValues, v54, v55];

  return v65;
}

- (BMMomentsEventDataEventBundleMetadataForRank)initWithDailyAggregateCallDuration:(id)duration callDuration:(id)callDuration burstyInteractionCount:(id)count burstyOutgoingInteractionCount:(id)interactionCount multipleInteractionTypes:(id)types contactLocationWork:(id)work isFamilyContact:(id)contact isCoworkerContact:(id)self0 isRepetitiveContact:(id)self1 isGroupConversation:(id)self2 peopleCountWeightedSum:(id)self3 peopleCountWeightedAverage:(id)self4 peopleCountMax:(id)self5 peopleDensityWeightedSum:(id)self6 peopleDensityWeightedAverage:(id)self7 peopleDensityMax:(id)self8 peopleDensityWeightedConfidenceSum:(id)self9 peopleDensityWeightedConfidenceAverage:(id)confidenceAverage mediaTotalPlayTime:(id)time mediaLength:(id)length mediaActionIsRepeat:(id)repeat timeAtHomeDuration:(id)homeDuration photosAtHomeCurationScore:(id)score workoutDuration:(id)workoutDuration motionActivityWalkSpan:(id)span visitDuration:(id)visitDuration poiCategoryInterestingness:(id)interestingness familiarityIndex:(id)duration0 stateOfMindDomains:(id)duration1 stateOfMindLabels:(id)duration2 stateOfMindReflectiveIntervals:(id)duration3 stateOfMindValenceClassifications:(id)duration4 stateOfMindValenceValues:(id)duration5 stateOfMindLoggedIn3pApp:(id)duration6 stateOfMindLoggedInJournalApp:(id)duration7
{
  durationCopy = duration;
  callDurationCopy = callDuration;
  countCopy = count;
  interactionCountCopy = interactionCount;
  typesCopy = types;
  workCopy = work;
  contactCopy = contact;
  coworkerContactCopy = coworkerContact;
  repetitiveContactCopy = repetitiveContact;
  conversationCopy = conversation;
  sumCopy = sum;
  averageCopy = average;
  maxCopy = max;
  weightedSumCopy = weightedSum;
  weightedAverageCopy = weightedAverage;
  densityMaxCopy = densityMax;
  confidenceSumCopy = confidenceSum;
  confidenceAverageCopy = confidenceAverage;
  timeCopy = time;
  lengthCopy = length;
  repeatCopy = repeat;
  homeDurationCopy = homeDuration;
  scoreCopy = score;
  workoutDurationCopy = workoutDuration;
  spanCopy = span;
  visitDurationCopy = visitDuration;
  interestingnessCopy = interestingness;
  indexCopy = index;
  domainsCopy = domains;
  labelsCopy = labels;
  intervalsCopy = intervals;
  classificationsCopy = classifications;
  valuesCopy = values;
  appCopy = app;
  journalAppCopy = journalApp;
  v120.receiver = self;
  v120.super_class = BMMomentsEventDataEventBundleMetadataForRank;
  v51 = [(BMEventBase *)&v120 init];
  if (v51)
  {
    v51->_dataVersion = [objc_opt_class() latestDataVersion];
    if (durationCopy)
    {
      v51->_hasDailyAggregateCallDuration = 1;
      [durationCopy floatValue];
      v53 = v52;
    }

    else
    {
      v51->_hasDailyAggregateCallDuration = 0;
      v53 = -1.0;
    }

    v51->_dailyAggregateCallDuration = v53;
    if (callDurationCopy)
    {
      v51->_hasCallDuration = 1;
      [callDurationCopy floatValue];
      v55 = v54;
    }

    else
    {
      v51->_hasCallDuration = 0;
      v55 = -1.0;
    }

    v51->_callDuration = v55;
    if (countCopy)
    {
      v51->_hasBurstyInteractionCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v51->_hasBurstyInteractionCount = 0;
      intValue = -1;
    }

    v51->_burstyInteractionCount = intValue;
    if (interactionCountCopy)
    {
      v51->_hasBurstyOutgoingInteractionCount = 1;
      intValue2 = [interactionCountCopy intValue];
    }

    else
    {
      v51->_hasBurstyOutgoingInteractionCount = 0;
      intValue2 = -1;
    }

    v51->_burstyOutgoingInteractionCount = intValue2;
    if (typesCopy)
    {
      v51->_hasMultipleInteractionTypes = 1;
      v51->_multipleInteractionTypes = [typesCopy BOOLValue];
    }

    else
    {
      v51->_hasMultipleInteractionTypes = 0;
      v51->_multipleInteractionTypes = 0;
    }

    if (workCopy)
    {
      v51->_hasContactLocationWork = 1;
      v51->_contactLocationWork = [workCopy BOOLValue];
    }

    else
    {
      v51->_hasContactLocationWork = 0;
      v51->_contactLocationWork = 0;
    }

    if (contactCopy)
    {
      v51->_hasIsFamilyContact = 1;
      v51->_isFamilyContact = [contactCopy BOOLValue];
    }

    else
    {
      v51->_hasIsFamilyContact = 0;
      v51->_isFamilyContact = 0;
    }

    if (coworkerContactCopy)
    {
      v51->_hasIsCoworkerContact = 1;
      v51->_isCoworkerContact = [coworkerContactCopy BOOLValue];
    }

    else
    {
      v51->_hasIsCoworkerContact = 0;
      v51->_isCoworkerContact = 0;
    }

    if (repetitiveContactCopy)
    {
      v51->_hasIsRepetitiveContact = 1;
      v51->_isRepetitiveContact = [repetitiveContactCopy BOOLValue];
    }

    else
    {
      v51->_hasIsRepetitiveContact = 0;
      v51->_isRepetitiveContact = 0;
    }

    if (conversationCopy)
    {
      v51->_hasIsGroupConversation = 1;
      v51->_isGroupConversation = [conversationCopy BOOLValue];
    }

    else
    {
      v51->_hasIsGroupConversation = 0;
      v51->_isGroupConversation = 0;
    }

    if (sumCopy)
    {
      v51->_hasPeopleCountWeightedSum = 1;
      [sumCopy floatValue];
      v59 = v58;
    }

    else
    {
      v51->_hasPeopleCountWeightedSum = 0;
      v59 = -1.0;
    }

    v51->_peopleCountWeightedSum = v59;
    if (averageCopy)
    {
      v51->_hasPeopleCountWeightedAverage = 1;
      [averageCopy floatValue];
      v61 = v60;
    }

    else
    {
      v51->_hasPeopleCountWeightedAverage = 0;
      v61 = -1.0;
    }

    v51->_peopleCountWeightedAverage = v61;
    if (maxCopy)
    {
      v51->_hasPeopleCountMax = 1;
      [maxCopy floatValue];
      v63 = v62;
    }

    else
    {
      v51->_hasPeopleCountMax = 0;
      v63 = -1.0;
    }

    v51->_peopleCountMax = v63;
    if (weightedSumCopy)
    {
      v51->_hasPeopleDensityWeightedSum = 1;
      [weightedSumCopy floatValue];
      v65 = v64;
    }

    else
    {
      v51->_hasPeopleDensityWeightedSum = 0;
      v65 = -1.0;
    }

    v51->_peopleDensityWeightedSum = v65;
    if (weightedAverageCopy)
    {
      v51->_hasPeopleDensityWeightedAverage = 1;
      [weightedAverageCopy floatValue];
      v67 = v66;
    }

    else
    {
      v51->_hasPeopleDensityWeightedAverage = 0;
      v67 = -1.0;
    }

    v51->_peopleDensityWeightedAverage = v67;
    if (densityMaxCopy)
    {
      v51->_hasPeopleDensityMax = 1;
      [densityMaxCopy floatValue];
      v69 = v68;
    }

    else
    {
      v51->_hasPeopleDensityMax = 0;
      v69 = -1.0;
    }

    v51->_peopleDensityMax = v69;
    if (confidenceSumCopy)
    {
      v51->_hasPeopleDensityWeightedConfidenceSum = 1;
      [confidenceSumCopy floatValue];
      v71 = v70;
    }

    else
    {
      v51->_hasPeopleDensityWeightedConfidenceSum = 0;
      v71 = -1.0;
    }

    v51->_peopleDensityWeightedConfidenceSum = v71;
    if (confidenceAverageCopy)
    {
      v51->_hasPeopleDensityWeightedConfidenceAverage = 1;
      [confidenceAverageCopy floatValue];
      v73 = v72;
    }

    else
    {
      v51->_hasPeopleDensityWeightedConfidenceAverage = 0;
      v73 = -1.0;
    }

    v51->_peopleDensityWeightedConfidenceAverage = v73;
    if (timeCopy)
    {
      v51->_hasMediaTotalPlayTime = 1;
      [timeCopy floatValue];
      v75 = v74;
    }

    else
    {
      v51->_hasMediaTotalPlayTime = 0;
      v75 = -1.0;
    }

    v51->_mediaTotalPlayTime = v75;
    if (lengthCopy)
    {
      v51->_hasMediaLength = 1;
      [lengthCopy floatValue];
      v77 = v76;
    }

    else
    {
      v51->_hasMediaLength = 0;
      v77 = -1.0;
    }

    v51->_mediaLength = v77;
    if (repeatCopy)
    {
      v51->_hasMediaActionIsRepeat = 1;
      v51->_mediaActionIsRepeat = [repeatCopy BOOLValue];
    }

    else
    {
      v51->_hasMediaActionIsRepeat = 0;
      v51->_mediaActionIsRepeat = 0;
    }

    if (homeDurationCopy)
    {
      v51->_hasTimeAtHomeDuration = 1;
      [homeDurationCopy floatValue];
      v79 = v78;
    }

    else
    {
      v51->_hasTimeAtHomeDuration = 0;
      v79 = -1.0;
    }

    v51->_timeAtHomeDuration = v79;
    if (scoreCopy)
    {
      v51->_hasPhotosAtHomeCurationScore = 1;
      [scoreCopy floatValue];
      v81 = v80;
    }

    else
    {
      v51->_hasPhotosAtHomeCurationScore = 0;
      v81 = -1.0;
    }

    v51->_photosAtHomeCurationScore = v81;
    if (workoutDurationCopy)
    {
      v51->_hasWorkoutDuration = 1;
      [workoutDurationCopy floatValue];
      v83 = v82;
    }

    else
    {
      v51->_hasWorkoutDuration = 0;
      v83 = -1.0;
    }

    v51->_workoutDuration = v83;
    if (spanCopy)
    {
      v51->_hasMotionActivityWalkSpan = 1;
      [spanCopy floatValue];
      v85 = v84;
    }

    else
    {
      v51->_hasMotionActivityWalkSpan = 0;
      v85 = -1.0;
    }

    v51->_motionActivityWalkSpan = v85;
    if (visitDurationCopy)
    {
      v51->_hasVisitDuration = 1;
      [visitDurationCopy floatValue];
      v87 = v86;
    }

    else
    {
      v51->_hasVisitDuration = 0;
      v87 = -1.0;
    }

    v51->_visitDuration = v87;
    if (interestingnessCopy)
    {
      v51->_hasPoiCategoryInterestingness = 1;
      [interestingnessCopy floatValue];
      v89 = v88;
    }

    else
    {
      v51->_hasPoiCategoryInterestingness = 0;
      v89 = -1.0;
    }

    v51->_poiCategoryInterestingness = v89;
    if (indexCopy)
    {
      v51->_hasFamiliarityIndex = 1;
      [indexCopy floatValue];
      v91 = v90;
    }

    else
    {
      v51->_hasFamiliarityIndex = 0;
      v91 = -1.0;
    }

    v51->_familiarityIndex = v91;
    objc_storeStrong(&v51->_stateOfMindDomains, domains);
    objc_storeStrong(&v51->_stateOfMindLabels, labels);
    objc_storeStrong(&v51->_stateOfMindReflectiveIntervals, intervals);
    objc_storeStrong(&v51->_stateOfMindValenceClassifications, classifications);
    objc_storeStrong(&v51->_stateOfMindValenceValues, values);
    if (appCopy)
    {
      v51->_hasStateOfMindLoggedIn3pApp = 1;
      v51->_stateOfMindLoggedIn3pApp = [appCopy BOOLValue];
    }

    else
    {
      v51->_hasStateOfMindLoggedIn3pApp = 0;
      v51->_stateOfMindLoggedIn3pApp = 0;
    }

    if (journalAppCopy)
    {
      v51->_hasStateOfMindLoggedInJournalApp = 1;
      v51->_stateOfMindLoggedInJournalApp = [journalAppCopy BOOLValue];
    }

    else
    {
      v51->_hasStateOfMindLoggedInJournalApp = 0;
      v51->_stateOfMindLoggedInJournalApp = 0;
    }
  }

  return v51;
}

+ (id)protoFields
{
  v39[35] = *MEMORY[0x1E69E9840];
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dailyAggregateCallDuration" number:1 type:1 subMessageClass:0];
  v39[0] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"callDuration" number:2 type:1 subMessageClass:0];
  v39[1] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"burstyInteractionCount" number:3 type:2 subMessageClass:0];
  v39[2] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"burstyOutgoingInteractionCount" number:4 type:2 subMessageClass:0];
  v39[3] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"multipleInteractionTypes" number:5 type:12 subMessageClass:0];
  v39[4] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contactLocationWork" number:6 type:12 subMessageClass:0];
  v39[5] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFamilyContact" number:7 type:12 subMessageClass:0];
  v39[6] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCoworkerContact" number:8 type:12 subMessageClass:0];
  v39[7] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRepetitiveContact" number:9 type:12 subMessageClass:0];
  v39[8] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupConversation" number:10 type:12 subMessageClass:0];
  v39[9] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleCountWeightedSum" number:11 type:1 subMessageClass:0];
  v39[10] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleCountWeightedAverage" number:12 type:1 subMessageClass:0];
  v39[11] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleCountMax" number:13 type:1 subMessageClass:0];
  v39[12] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedSum" number:14 type:1 subMessageClass:0];
  v39[13] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedAverage" number:15 type:1 subMessageClass:0];
  v39[14] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityMax" number:16 type:1 subMessageClass:0];
  v39[15] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedConfidenceSum" number:17 type:1 subMessageClass:0];
  v39[16] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"peopleDensityWeightedConfidenceAverage" number:18 type:1 subMessageClass:0];
  v39[17] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaTotalPlayTime" number:19 type:1 subMessageClass:0];
  v39[18] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaLength" number:20 type:1 subMessageClass:0];
  v39[19] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaActionIsRepeat" number:21 type:12 subMessageClass:0];
  v39[20] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeAtHomeDuration" number:22 type:1 subMessageClass:0];
  v39[21] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photosAtHomeCurationScore" number:23 type:1 subMessageClass:0];
  v39[22] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"workoutDuration" number:24 type:1 subMessageClass:0];
  v39[23] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"motionActivityWalkSpan" number:25 type:1 subMessageClass:0];
  v39[24] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"visitDuration" number:26 type:1 subMessageClass:0];
  v39[25] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"poiCategoryInterestingness" number:27 type:1 subMessageClass:0];
  v39[26] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"familiarityIndex" number:28 type:1 subMessageClass:0];
  v39[27] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindDomains" number:29 type:4 subMessageClass:0];
  v39[28] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindLabels" number:30 type:4 subMessageClass:0];
  v39[29] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindReflectiveIntervals" number:31 type:4 subMessageClass:0];
  v39[30] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindValenceClassifications" number:32 type:4 subMessageClass:0];
  v39[31] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindValenceValues" number:33 type:0 subMessageClass:0];
  v39[32] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindLoggedIn3pApp" number:34 type:12 subMessageClass:0];
  v39[33] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stateOfMindLoggedInJournalApp" number:35 type:12 subMessageClass:0];
  v39[34] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:35];

  return v13;
}

+ (id)columns
{
  v39[35] = *MEMORY[0x1E69E9840];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dailyAggregateCallDuration" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:1 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"callDuration" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"burstyInteractionCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"burstyOutgoingInteractionCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"multipleInteractionTypes" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contactLocationWork" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFamilyContact" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCoworkerContact" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRepetitiveContact" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupConversation" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleCountWeightedSum" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:1 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleCountWeightedAverage" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:1 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleCountMax" dataType:1 requestOnly:0 fieldNumber:13 protoDataType:1 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedSum" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:1 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedAverage" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:1 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityMax" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:1 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedConfidenceSum" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:1 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"peopleDensityWeightedConfidenceAverage" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:1 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaTotalPlayTime" dataType:1 requestOnly:0 fieldNumber:19 protoDataType:1 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaLength" dataType:1 requestOnly:0 fieldNumber:20 protoDataType:1 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaActionIsRepeat" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeAtHomeDuration" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:1 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photosAtHomeCurationScore" dataType:1 requestOnly:0 fieldNumber:23 protoDataType:1 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"workoutDuration" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:1 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"motionActivityWalkSpan" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:1 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"visitDuration" dataType:1 requestOnly:0 fieldNumber:26 protoDataType:1 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"poiCategoryInterestingness" dataType:1 requestOnly:0 fieldNumber:27 protoDataType:1 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"familiarityIndex" dataType:1 requestOnly:0 fieldNumber:28 protoDataType:1 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindDomains_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3321];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindLabels_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3323];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindReflectiveIntervals_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3325];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindValenceClassifications_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3327];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"stateOfMindValenceValues_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3329];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateOfMindLoggedIn3pApp" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stateOfMindLoggedInJournalApp" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:12 convertedType:0];
  v39[0] = v38;
  v39[1] = v37;
  v39[2] = v36;
  v39[3] = v35;
  v39[4] = v34;
  v39[5] = v33;
  v39[6] = v32;
  v39[7] = v31;
  v39[8] = v30;
  v39[9] = v29;
  v39[10] = v28;
  v39[11] = v27;
  v39[12] = v26;
  v39[13] = v25;
  v39[14] = v24;
  v39[15] = v23;
  v39[16] = v22;
  v39[17] = v21;
  v39[18] = v20;
  v39[19] = v18;
  v39[20] = v17;
  v39[21] = v16;
  v39[22] = v15;
  v39[23] = v14;
  v39[24] = v19;
  v39[25] = v2;
  v39[26] = v3;
  v39[27] = v4;
  v39[28] = v13;
  v39[29] = v12;
  v39[30] = v5;
  v39[31] = v6;
  v39[32] = v7;
  v39[33] = v11;
  v39[34] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:35];

  return v10;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _stateOfMindValenceValuesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _stateOfMindValenceClassificationsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _stateOfMindReflectiveIntervalsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _stateOfMindLabelsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __55__BMMomentsEventDataEventBundleMetadataForRank_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _stateOfMindDomainsJSONArray];
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

    v8 = [[BMMomentsEventDataEventBundleMetadataForRank alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[14] = 0;
    }
  }

  return v4;
}

@end