@interface BMCandidate
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMCandidate)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMCandidate)initWithPrivatizedIdentifier:(id)identifier feedbackDeprecated:(int)deprecated privatizedTransportBundleId:(id)id timeSinceLastOutgoingInteraction:(id)interaction timeSinceOutgoingInteractionNumber10:(id)number10 timeSinceLastIncomingInteraction:(id)incomingInteraction deprecatedField1:(id)field1 deprecatedField2:(id)self0 deprecatedField3:(id)self1 numberOfSharesWithConversation:(id)self2 numberOfSharesFromCurrentAppWithConversation:(id)self3 numberOfSharesOfTopDomainURLWithConversation:(id)self4 numberOfSharesOfDetectedPeopleWithConversation:(id)self5 numberOfSharesOfPeopleInPhotoWithConversation:(id)self6 numberOfOutgoingInteractionsWithConversation:(id)self7 numberOfIncomingInteractionsWithConversation:(id)self8 numberOfInteractionsDuringTimePeriodWithConversation:(id)self9 numberOfEngagedSuggestionsWithConversation:(id)suggestionsWithConversation numberOfEngagedSuggestionsFromCurrentAppWithConversation:(id)appWithConversation numberOfEngagedSuggestionsOfTopDomainURLWithConversation:(id)rLWithConversation numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:(id)detectedPeopleWithConversation numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:(id)inPhotoWithConversation hasEverSharePlayedWithConversation:(id)playedWithConversation suggestedRank:(id)rank coreMLModelScore:(id)score foundInChunk:(id)chunk updatedInChunk:(id)inChunk numberOfSharesOfPeopleInPhotoIoUWithConversation:(id)identifier0 numberOfSharesOfPetsWithConversation:(id)identifier1 numberOfSharesOfPetsInCurrentPhotoWithConversation:(id)identifier2 numberOfSharesOfScenesInPhotoWithConversation:(id)identifier3 numberOfSharesOfDetectedScenesInPhotoWithConversation:(id)identifier4 numberOfTopicsSharedWithConversation:(id)identifier5 numberOfAppsSharedFromWithConversation:(id)identifier6 timeSinceLastPhotoShareWithConversation:(id)identifier7 hasSharedSensitiveContentWIthConversation:(id)identifier8 isInPhoneCallWithConversation:(id)identifier9 numberOfSharesFromAlbumPhotoBelongsToWithConversation:(id)deprecated0 isFirstPartyApp:(id)deprecated1 numberOfTimesSharedToTargetAppWithConversation:(id)deprecated2 timeSinceLastShareWithConversation:(id)deprecated3 timeSinceLastPhoneCallWithConversation:(id)deprecated4 numberOfDifferentFacesSharedWithConversation:(id)deprecated5 numberOfTotalSharesToTargetApp:(id)deprecated6;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMCandidate

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    privatizedIdentifier = [(BMCandidate *)self privatizedIdentifier];
    privatizedIdentifier2 = [v5 privatizedIdentifier];
    v8 = privatizedIdentifier2;
    if (privatizedIdentifier == privatizedIdentifier2)
    {
    }

    else
    {
      privatizedIdentifier3 = [(BMCandidate *)self privatizedIdentifier];
      privatizedIdentifier4 = [v5 privatizedIdentifier];
      v11 = [privatizedIdentifier3 isEqual:privatizedIdentifier4];

      if (!v11)
      {
        goto LABEL_179;
      }
    }

    feedbackDeprecated = [(BMCandidate *)self feedbackDeprecated];
    if (feedbackDeprecated == [v5 feedbackDeprecated])
    {
      privatizedTransportBundleId = [(BMCandidate *)self privatizedTransportBundleId];
      privatizedTransportBundleId2 = [v5 privatizedTransportBundleId];
      v16 = privatizedTransportBundleId2;
      if (privatizedTransportBundleId == privatizedTransportBundleId2)
      {
      }

      else
      {
        privatizedTransportBundleId3 = [(BMCandidate *)self privatizedTransportBundleId];
        privatizedTransportBundleId4 = [v5 privatizedTransportBundleId];
        v19 = [privatizedTransportBundleId3 isEqual:privatizedTransportBundleId4];

        if (!v19)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastOutgoingInteraction = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
      timeSinceLastOutgoingInteraction2 = [v5 timeSinceLastOutgoingInteraction];
      v22 = timeSinceLastOutgoingInteraction2;
      if (timeSinceLastOutgoingInteraction == timeSinceLastOutgoingInteraction2)
      {
      }

      else
      {
        timeSinceLastOutgoingInteraction3 = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
        timeSinceLastOutgoingInteraction4 = [v5 timeSinceLastOutgoingInteraction];
        v25 = [timeSinceLastOutgoingInteraction3 isEqual:timeSinceLastOutgoingInteraction4];

        if (!v25)
        {
          goto LABEL_179;
        }
      }

      timeSinceOutgoingInteractionNumber10 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
      timeSinceOutgoingInteractionNumber102 = [v5 timeSinceOutgoingInteractionNumber10];
      v28 = timeSinceOutgoingInteractionNumber102;
      if (timeSinceOutgoingInteractionNumber10 == timeSinceOutgoingInteractionNumber102)
      {
      }

      else
      {
        timeSinceOutgoingInteractionNumber103 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
        timeSinceOutgoingInteractionNumber104 = [v5 timeSinceOutgoingInteractionNumber10];
        v31 = [timeSinceOutgoingInteractionNumber103 isEqual:timeSinceOutgoingInteractionNumber104];

        if (!v31)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastIncomingInteraction = [(BMCandidate *)self timeSinceLastIncomingInteraction];
      timeSinceLastIncomingInteraction2 = [v5 timeSinceLastIncomingInteraction];
      v34 = timeSinceLastIncomingInteraction2;
      if (timeSinceLastIncomingInteraction == timeSinceLastIncomingInteraction2)
      {
      }

      else
      {
        timeSinceLastIncomingInteraction3 = [(BMCandidate *)self timeSinceLastIncomingInteraction];
        timeSinceLastIncomingInteraction4 = [v5 timeSinceLastIncomingInteraction];
        v37 = [timeSinceLastIncomingInteraction3 isEqual:timeSinceLastIncomingInteraction4];

        if (!v37)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasDeprecatedField1](self, "hasDeprecatedField1") || [v5 hasDeprecatedField1])
      {
        if (![(BMCandidate *)self hasDeprecatedField1])
        {
          goto LABEL_179;
        }

        if (![v5 hasDeprecatedField1])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self deprecatedField1];
        v39 = v38;
        [v5 deprecatedField1];
        if (v39 != v40)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasDeprecatedField2](self, "hasDeprecatedField2") || [v5 hasDeprecatedField2])
      {
        if (![(BMCandidate *)self hasDeprecatedField2])
        {
          goto LABEL_179;
        }

        if (![v5 hasDeprecatedField2])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self deprecatedField2];
        v42 = v41;
        [v5 deprecatedField2];
        if (v42 != v43)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasDeprecatedField3](self, "hasDeprecatedField3") || [v5 hasDeprecatedField3])
      {
        if (![(BMCandidate *)self hasDeprecatedField3])
        {
          goto LABEL_179;
        }

        if (![v5 hasDeprecatedField3])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self deprecatedField3];
        v45 = v44;
        [v5 deprecatedField3];
        if (v45 != v46)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesWithConversation = [(BMCandidate *)self numberOfSharesWithConversation];
      numberOfSharesWithConversation2 = [v5 numberOfSharesWithConversation];
      v49 = numberOfSharesWithConversation2;
      if (numberOfSharesWithConversation == numberOfSharesWithConversation2)
      {
      }

      else
      {
        numberOfSharesWithConversation3 = [(BMCandidate *)self numberOfSharesWithConversation];
        numberOfSharesWithConversation4 = [v5 numberOfSharesWithConversation];
        v52 = [numberOfSharesWithConversation3 isEqual:numberOfSharesWithConversation4];

        if (!v52)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesFromCurrentAppWithConversation = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
      numberOfSharesFromCurrentAppWithConversation2 = [v5 numberOfSharesFromCurrentAppWithConversation];
      v55 = numberOfSharesFromCurrentAppWithConversation2;
      if (numberOfSharesFromCurrentAppWithConversation == numberOfSharesFromCurrentAppWithConversation2)
      {
      }

      else
      {
        numberOfSharesFromCurrentAppWithConversation3 = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
        numberOfSharesFromCurrentAppWithConversation4 = [v5 numberOfSharesFromCurrentAppWithConversation];
        v58 = [numberOfSharesFromCurrentAppWithConversation3 isEqual:numberOfSharesFromCurrentAppWithConversation4];

        if (!v58)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
      numberOfSharesOfTopDomainURLWithConversation2 = [v5 numberOfSharesOfTopDomainURLWithConversation];
      v61 = numberOfSharesOfTopDomainURLWithConversation2;
      if (numberOfSharesOfTopDomainURLWithConversation == numberOfSharesOfTopDomainURLWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfTopDomainURLWithConversation3 = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
        numberOfSharesOfTopDomainURLWithConversation4 = [v5 numberOfSharesOfTopDomainURLWithConversation];
        v64 = [numberOfSharesOfTopDomainURLWithConversation3 isEqual:numberOfSharesOfTopDomainURLWithConversation4];

        if (!v64)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
      numberOfSharesOfDetectedPeopleWithConversation2 = [v5 numberOfSharesOfDetectedPeopleWithConversation];
      v67 = numberOfSharesOfDetectedPeopleWithConversation2;
      if (numberOfSharesOfDetectedPeopleWithConversation == numberOfSharesOfDetectedPeopleWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfDetectedPeopleWithConversation3 = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
        numberOfSharesOfDetectedPeopleWithConversation4 = [v5 numberOfSharesOfDetectedPeopleWithConversation];
        v70 = [numberOfSharesOfDetectedPeopleWithConversation3 isEqual:numberOfSharesOfDetectedPeopleWithConversation4];

        if (!v70)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
      numberOfSharesOfPeopleInPhotoWithConversation2 = [v5 numberOfSharesOfPeopleInPhotoWithConversation];
      v73 = numberOfSharesOfPeopleInPhotoWithConversation2;
      if (numberOfSharesOfPeopleInPhotoWithConversation == numberOfSharesOfPeopleInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPeopleInPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
        numberOfSharesOfPeopleInPhotoWithConversation4 = [v5 numberOfSharesOfPeopleInPhotoWithConversation];
        v76 = [numberOfSharesOfPeopleInPhotoWithConversation3 isEqual:numberOfSharesOfPeopleInPhotoWithConversation4];

        if (!v76)
        {
          goto LABEL_179;
        }
      }

      numberOfOutgoingInteractionsWithConversation = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
      numberOfOutgoingInteractionsWithConversation2 = [v5 numberOfOutgoingInteractionsWithConversation];
      v79 = numberOfOutgoingInteractionsWithConversation2;
      if (numberOfOutgoingInteractionsWithConversation == numberOfOutgoingInteractionsWithConversation2)
      {
      }

      else
      {
        numberOfOutgoingInteractionsWithConversation3 = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
        numberOfOutgoingInteractionsWithConversation4 = [v5 numberOfOutgoingInteractionsWithConversation];
        v82 = [numberOfOutgoingInteractionsWithConversation3 isEqual:numberOfOutgoingInteractionsWithConversation4];

        if (!v82)
        {
          goto LABEL_179;
        }
      }

      numberOfIncomingInteractionsWithConversation = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
      numberOfIncomingInteractionsWithConversation2 = [v5 numberOfIncomingInteractionsWithConversation];
      v85 = numberOfIncomingInteractionsWithConversation2;
      if (numberOfIncomingInteractionsWithConversation == numberOfIncomingInteractionsWithConversation2)
      {
      }

      else
      {
        numberOfIncomingInteractionsWithConversation3 = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
        numberOfIncomingInteractionsWithConversation4 = [v5 numberOfIncomingInteractionsWithConversation];
        v88 = [numberOfIncomingInteractionsWithConversation3 isEqual:numberOfIncomingInteractionsWithConversation4];

        if (!v88)
        {
          goto LABEL_179;
        }
      }

      numberOfInteractionsDuringTimePeriodWithConversation = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
      numberOfInteractionsDuringTimePeriodWithConversation2 = [v5 numberOfInteractionsDuringTimePeriodWithConversation];
      v91 = numberOfInteractionsDuringTimePeriodWithConversation2;
      if (numberOfInteractionsDuringTimePeriodWithConversation == numberOfInteractionsDuringTimePeriodWithConversation2)
      {
      }

      else
      {
        numberOfInteractionsDuringTimePeriodWithConversation3 = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
        numberOfInteractionsDuringTimePeriodWithConversation4 = [v5 numberOfInteractionsDuringTimePeriodWithConversation];
        v94 = [numberOfInteractionsDuringTimePeriodWithConversation3 isEqual:numberOfInteractionsDuringTimePeriodWithConversation4];

        if (!v94)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
      numberOfEngagedSuggestionsWithConversation2 = [v5 numberOfEngagedSuggestionsWithConversation];
      v97 = numberOfEngagedSuggestionsWithConversation2;
      if (numberOfEngagedSuggestionsWithConversation == numberOfEngagedSuggestionsWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
        numberOfEngagedSuggestionsWithConversation4 = [v5 numberOfEngagedSuggestionsWithConversation];
        v100 = [numberOfEngagedSuggestionsWithConversation3 isEqual:numberOfEngagedSuggestionsWithConversation4];

        if (!v100)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsFromCurrentAppWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
      numberOfEngagedSuggestionsFromCurrentAppWithConversation2 = [v5 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
      v103 = numberOfEngagedSuggestionsFromCurrentAppWithConversation2;
      if (numberOfEngagedSuggestionsFromCurrentAppWithConversation == numberOfEngagedSuggestionsFromCurrentAppWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsFromCurrentAppWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
        numberOfEngagedSuggestionsFromCurrentAppWithConversation4 = [v5 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
        v106 = [numberOfEngagedSuggestionsFromCurrentAppWithConversation3 isEqual:numberOfEngagedSuggestionsFromCurrentAppWithConversation4];

        if (!v106)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
      numberOfEngagedSuggestionsOfTopDomainURLWithConversation2 = [v5 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
      v109 = numberOfEngagedSuggestionsOfTopDomainURLWithConversation2;
      if (numberOfEngagedSuggestionsOfTopDomainURLWithConversation == numberOfEngagedSuggestionsOfTopDomainURLWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsOfTopDomainURLWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
        numberOfEngagedSuggestionsOfTopDomainURLWithConversation4 = [v5 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
        v112 = [numberOfEngagedSuggestionsOfTopDomainURLWithConversation3 isEqual:numberOfEngagedSuggestionsOfTopDomainURLWithConversation4];

        if (!v112)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
      numberOfEngagedSuggestionsOfDetectedPeopleWithConversation2 = [v5 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
      v115 = numberOfEngagedSuggestionsOfDetectedPeopleWithConversation2;
      if (numberOfEngagedSuggestionsOfDetectedPeopleWithConversation == numberOfEngagedSuggestionsOfDetectedPeopleWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsOfDetectedPeopleWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
        numberOfEngagedSuggestionsOfDetectedPeopleWithConversation4 = [v5 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
        v118 = [numberOfEngagedSuggestionsOfDetectedPeopleWithConversation3 isEqual:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation4];

        if (!v118)
        {
          goto LABEL_179;
        }
      }

      numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
      numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation2 = [v5 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
      v121 = numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation2;
      if (numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation == numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation3 = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
        numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation4 = [v5 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
        v124 = [numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation3 isEqual:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation4];

        if (!v124)
        {
          goto LABEL_179;
        }
      }

      hasEverSharePlayedWithConversation = [(BMCandidate *)self hasEverSharePlayedWithConversation];
      hasEverSharePlayedWithConversation2 = [v5 hasEverSharePlayedWithConversation];
      v127 = hasEverSharePlayedWithConversation2;
      if (hasEverSharePlayedWithConversation == hasEverSharePlayedWithConversation2)
      {
      }

      else
      {
        hasEverSharePlayedWithConversation3 = [(BMCandidate *)self hasEverSharePlayedWithConversation];
        hasEverSharePlayedWithConversation4 = [v5 hasEverSharePlayedWithConversation];
        v130 = [hasEverSharePlayedWithConversation3 isEqual:hasEverSharePlayedWithConversation4];

        if (!v130)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasSuggestedRank](self, "hasSuggestedRank") || [v5 hasSuggestedRank])
      {
        if (![(BMCandidate *)self hasSuggestedRank])
        {
          goto LABEL_179;
        }

        if (![v5 hasSuggestedRank])
        {
          goto LABEL_179;
        }

        suggestedRank = [(BMCandidate *)self suggestedRank];
        if (suggestedRank != [v5 suggestedRank])
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasCoreMLModelScore](self, "hasCoreMLModelScore") || [v5 hasCoreMLModelScore])
      {
        if (![(BMCandidate *)self hasCoreMLModelScore])
        {
          goto LABEL_179;
        }

        if (![v5 hasCoreMLModelScore])
        {
          goto LABEL_179;
        }

        [(BMCandidate *)self coreMLModelScore];
        v133 = v132;
        [v5 coreMLModelScore];
        if (v133 != v134)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasFoundInChunk](self, "hasFoundInChunk") || [v5 hasFoundInChunk])
      {
        if (![(BMCandidate *)self hasFoundInChunk])
        {
          goto LABEL_179;
        }

        if (![v5 hasFoundInChunk])
        {
          goto LABEL_179;
        }

        foundInChunk = [(BMCandidate *)self foundInChunk];
        if (foundInChunk != [v5 foundInChunk])
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasUpdatedInChunk](self, "hasUpdatedInChunk") || [v5 hasUpdatedInChunk])
      {
        if (![(BMCandidate *)self hasUpdatedInChunk])
        {
          goto LABEL_179;
        }

        if (![v5 hasUpdatedInChunk])
        {
          goto LABEL_179;
        }

        updatedInChunk = [(BMCandidate *)self updatedInChunk];
        if (updatedInChunk != [v5 updatedInChunk])
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPeopleInPhotoIoUWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
      numberOfSharesOfPeopleInPhotoIoUWithConversation2 = [v5 numberOfSharesOfPeopleInPhotoIoUWithConversation];
      v139 = numberOfSharesOfPeopleInPhotoIoUWithConversation2;
      if (numberOfSharesOfPeopleInPhotoIoUWithConversation == numberOfSharesOfPeopleInPhotoIoUWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPeopleInPhotoIoUWithConversation3 = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
        numberOfSharesOfPeopleInPhotoIoUWithConversation4 = [v5 numberOfSharesOfPeopleInPhotoIoUWithConversation];
        v142 = [numberOfSharesOfPeopleInPhotoIoUWithConversation3 isEqual:numberOfSharesOfPeopleInPhotoIoUWithConversation4];

        if (!v142)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPetsWithConversation = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
      numberOfSharesOfPetsWithConversation2 = [v5 numberOfSharesOfPetsWithConversation];
      v145 = numberOfSharesOfPetsWithConversation2;
      if (numberOfSharesOfPetsWithConversation == numberOfSharesOfPetsWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPetsWithConversation3 = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
        numberOfSharesOfPetsWithConversation4 = [v5 numberOfSharesOfPetsWithConversation];
        v148 = [numberOfSharesOfPetsWithConversation3 isEqual:numberOfSharesOfPetsWithConversation4];

        if (!v148)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfPetsInCurrentPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
      numberOfSharesOfPetsInCurrentPhotoWithConversation2 = [v5 numberOfSharesOfPetsInCurrentPhotoWithConversation];
      v151 = numberOfSharesOfPetsInCurrentPhotoWithConversation2;
      if (numberOfSharesOfPetsInCurrentPhotoWithConversation == numberOfSharesOfPetsInCurrentPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfPetsInCurrentPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
        numberOfSharesOfPetsInCurrentPhotoWithConversation4 = [v5 numberOfSharesOfPetsInCurrentPhotoWithConversation];
        v154 = [numberOfSharesOfPetsInCurrentPhotoWithConversation3 isEqual:numberOfSharesOfPetsInCurrentPhotoWithConversation4];

        if (!v154)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
      numberOfSharesOfScenesInPhotoWithConversation2 = [v5 numberOfSharesOfScenesInPhotoWithConversation];
      v157 = numberOfSharesOfScenesInPhotoWithConversation2;
      if (numberOfSharesOfScenesInPhotoWithConversation == numberOfSharesOfScenesInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfScenesInPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
        numberOfSharesOfScenesInPhotoWithConversation4 = [v5 numberOfSharesOfScenesInPhotoWithConversation];
        v160 = [numberOfSharesOfScenesInPhotoWithConversation3 isEqual:numberOfSharesOfScenesInPhotoWithConversation4];

        if (!v160)
        {
          goto LABEL_179;
        }
      }

      numberOfSharesOfDetectedScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
      numberOfSharesOfDetectedScenesInPhotoWithConversation2 = [v5 numberOfSharesOfDetectedScenesInPhotoWithConversation];
      v163 = numberOfSharesOfDetectedScenesInPhotoWithConversation2;
      if (numberOfSharesOfDetectedScenesInPhotoWithConversation == numberOfSharesOfDetectedScenesInPhotoWithConversation2)
      {
      }

      else
      {
        numberOfSharesOfDetectedScenesInPhotoWithConversation3 = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
        numberOfSharesOfDetectedScenesInPhotoWithConversation4 = [v5 numberOfSharesOfDetectedScenesInPhotoWithConversation];
        v166 = [numberOfSharesOfDetectedScenesInPhotoWithConversation3 isEqual:numberOfSharesOfDetectedScenesInPhotoWithConversation4];

        if (!v166)
        {
          goto LABEL_179;
        }
      }

      numberOfTopicsSharedWithConversation = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
      numberOfTopicsSharedWithConversation2 = [v5 numberOfTopicsSharedWithConversation];
      v169 = numberOfTopicsSharedWithConversation2;
      if (numberOfTopicsSharedWithConversation == numberOfTopicsSharedWithConversation2)
      {
      }

      else
      {
        numberOfTopicsSharedWithConversation3 = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
        numberOfTopicsSharedWithConversation4 = [v5 numberOfTopicsSharedWithConversation];
        v172 = [numberOfTopicsSharedWithConversation3 isEqual:numberOfTopicsSharedWithConversation4];

        if (!v172)
        {
          goto LABEL_179;
        }
      }

      numberOfAppsSharedFromWithConversation = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
      numberOfAppsSharedFromWithConversation2 = [v5 numberOfAppsSharedFromWithConversation];
      v175 = numberOfAppsSharedFromWithConversation2;
      if (numberOfAppsSharedFromWithConversation == numberOfAppsSharedFromWithConversation2)
      {
      }

      else
      {
        numberOfAppsSharedFromWithConversation3 = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
        numberOfAppsSharedFromWithConversation4 = [v5 numberOfAppsSharedFromWithConversation];
        v178 = [numberOfAppsSharedFromWithConversation3 isEqual:numberOfAppsSharedFromWithConversation4];

        if (!v178)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastPhotoShareWithConversation = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
      timeSinceLastPhotoShareWithConversation2 = [v5 timeSinceLastPhotoShareWithConversation];
      v181 = timeSinceLastPhotoShareWithConversation2;
      if (timeSinceLastPhotoShareWithConversation == timeSinceLastPhotoShareWithConversation2)
      {
      }

      else
      {
        timeSinceLastPhotoShareWithConversation3 = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
        timeSinceLastPhotoShareWithConversation4 = [v5 timeSinceLastPhotoShareWithConversation];
        v184 = [timeSinceLastPhotoShareWithConversation3 isEqual:timeSinceLastPhotoShareWithConversation4];

        if (!v184)
        {
          goto LABEL_179;
        }
      }

      hasSharedSensitiveContentWIthConversation = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
      hasSharedSensitiveContentWIthConversation2 = [v5 hasSharedSensitiveContentWIthConversation];
      v187 = hasSharedSensitiveContentWIthConversation2;
      if (hasSharedSensitiveContentWIthConversation == hasSharedSensitiveContentWIthConversation2)
      {
      }

      else
      {
        hasSharedSensitiveContentWIthConversation3 = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
        hasSharedSensitiveContentWIthConversation4 = [v5 hasSharedSensitiveContentWIthConversation];
        v190 = [hasSharedSensitiveContentWIthConversation3 isEqual:hasSharedSensitiveContentWIthConversation4];

        if (!v190)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasIsInPhoneCallWithConversation](self, "hasIsInPhoneCallWithConversation") || [v5 hasIsInPhoneCallWithConversation])
      {
        if (![(BMCandidate *)self hasIsInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }

        if (![v5 hasIsInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }

        isInPhoneCallWithConversation = [(BMCandidate *)self isInPhoneCallWithConversation];
        if (isInPhoneCallWithConversation != [v5 isInPhoneCallWithConversation])
        {
          goto LABEL_179;
        }
      }

      numberOfSharesFromAlbumPhotoBelongsToWithConversation = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
      numberOfSharesFromAlbumPhotoBelongsToWithConversation2 = [v5 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
      v194 = numberOfSharesFromAlbumPhotoBelongsToWithConversation2;
      if (numberOfSharesFromAlbumPhotoBelongsToWithConversation == numberOfSharesFromAlbumPhotoBelongsToWithConversation2)
      {
      }

      else
      {
        numberOfSharesFromAlbumPhotoBelongsToWithConversation3 = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
        numberOfSharesFromAlbumPhotoBelongsToWithConversation4 = [v5 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
        v197 = [numberOfSharesFromAlbumPhotoBelongsToWithConversation3 isEqual:numberOfSharesFromAlbumPhotoBelongsToWithConversation4];

        if (!v197)
        {
          goto LABEL_179;
        }
      }

      if (-[BMCandidate hasIsFirstPartyApp](self, "hasIsFirstPartyApp") || [v5 hasIsFirstPartyApp])
      {
        if (![(BMCandidate *)self hasIsFirstPartyApp])
        {
          goto LABEL_179;
        }

        if (![v5 hasIsFirstPartyApp])
        {
          goto LABEL_179;
        }

        isFirstPartyApp = [(BMCandidate *)self isFirstPartyApp];
        if (isFirstPartyApp != [v5 isFirstPartyApp])
        {
          goto LABEL_179;
        }
      }

      numberOfTimesSharedToTargetAppWithConversation = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
      numberOfTimesSharedToTargetAppWithConversation2 = [v5 numberOfTimesSharedToTargetAppWithConversation];
      v201 = numberOfTimesSharedToTargetAppWithConversation2;
      if (numberOfTimesSharedToTargetAppWithConversation == numberOfTimesSharedToTargetAppWithConversation2)
      {
      }

      else
      {
        numberOfTimesSharedToTargetAppWithConversation3 = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
        numberOfTimesSharedToTargetAppWithConversation4 = [v5 numberOfTimesSharedToTargetAppWithConversation];
        v204 = [numberOfTimesSharedToTargetAppWithConversation3 isEqual:numberOfTimesSharedToTargetAppWithConversation4];

        if (!v204)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastShareWithConversation = [(BMCandidate *)self timeSinceLastShareWithConversation];
      timeSinceLastShareWithConversation2 = [v5 timeSinceLastShareWithConversation];
      v207 = timeSinceLastShareWithConversation2;
      if (timeSinceLastShareWithConversation == timeSinceLastShareWithConversation2)
      {
      }

      else
      {
        timeSinceLastShareWithConversation3 = [(BMCandidate *)self timeSinceLastShareWithConversation];
        timeSinceLastShareWithConversation4 = [v5 timeSinceLastShareWithConversation];
        v210 = [timeSinceLastShareWithConversation3 isEqual:timeSinceLastShareWithConversation4];

        if (!v210)
        {
          goto LABEL_179;
        }
      }

      timeSinceLastPhoneCallWithConversation = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
      timeSinceLastPhoneCallWithConversation2 = [v5 timeSinceLastPhoneCallWithConversation];
      v213 = timeSinceLastPhoneCallWithConversation2;
      if (timeSinceLastPhoneCallWithConversation == timeSinceLastPhoneCallWithConversation2)
      {
      }

      else
      {
        timeSinceLastPhoneCallWithConversation3 = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
        timeSinceLastPhoneCallWithConversation4 = [v5 timeSinceLastPhoneCallWithConversation];
        v216 = [timeSinceLastPhoneCallWithConversation3 isEqual:timeSinceLastPhoneCallWithConversation4];

        if (!v216)
        {
          goto LABEL_179;
        }
      }

      numberOfDifferentFacesSharedWithConversation = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
      numberOfDifferentFacesSharedWithConversation2 = [v5 numberOfDifferentFacesSharedWithConversation];
      v219 = numberOfDifferentFacesSharedWithConversation2;
      if (numberOfDifferentFacesSharedWithConversation == numberOfDifferentFacesSharedWithConversation2)
      {
      }

      else
      {
        numberOfDifferentFacesSharedWithConversation3 = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
        numberOfDifferentFacesSharedWithConversation4 = [v5 numberOfDifferentFacesSharedWithConversation];
        v222 = [numberOfDifferentFacesSharedWithConversation3 isEqual:numberOfDifferentFacesSharedWithConversation4];

        if (!v222)
        {
          goto LABEL_179;
        }
      }

      numberOfTotalSharesToTargetApp = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
      numberOfTotalSharesToTargetApp2 = [v5 numberOfTotalSharesToTargetApp];
      if (numberOfTotalSharesToTargetApp == numberOfTotalSharesToTargetApp2)
      {
        v12 = 1;
      }

      else
      {
        numberOfTotalSharesToTargetApp3 = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
        numberOfTotalSharesToTargetApp4 = [v5 numberOfTotalSharesToTargetApp];
        v12 = [numberOfTotalSharesToTargetApp3 isEqual:numberOfTotalSharesToTargetApp4];
      }

      goto LABEL_180;
    }

LABEL_179:
    v12 = 0;
LABEL_180:

    goto LABEL_181;
  }

  v12 = 0;
LABEL_181:

  return v12;
}

- (id)jsonDictionary
{
  v184[44] = *MEMORY[0x1E69E9840];
  privatizedIdentifier = [(BMCandidate *)self privatizedIdentifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate feedbackDeprecated](self, "feedbackDeprecated")}];
  privatizedTransportBundleId = [(BMCandidate *)self privatizedTransportBundleId];
  timeSinceLastOutgoingInteraction = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
  jsonDictionary = [timeSinceLastOutgoingInteraction jsonDictionary];

  timeSinceOutgoingInteractionNumber10 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
  jsonDictionary2 = [timeSinceOutgoingInteractionNumber10 jsonDictionary];

  timeSinceLastIncomingInteraction = [(BMCandidate *)self timeSinceLastIncomingInteraction];
  jsonDictionary3 = [timeSinceLastIncomingInteraction jsonDictionary];

  if (![(BMCandidate *)self hasDeprecatedField1]|| ([(BMCandidate *)self deprecatedField1], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMCandidate *)self deprecatedField1];
    v12 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self deprecatedField1];
    v13 = [v12 numberWithDouble:?];
  }

  if (![(BMCandidate *)self hasDeprecatedField2]|| ([(BMCandidate *)self deprecatedField2], fabs(v14) == INFINITY))
  {
    v182 = 0;
  }

  else
  {
    [(BMCandidate *)self deprecatedField2];
    v15 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self deprecatedField2];
    v182 = [v15 numberWithDouble:?];
  }

  if (![(BMCandidate *)self hasDeprecatedField3]|| ([(BMCandidate *)self deprecatedField3], fabs(v16) == INFINITY))
  {
    v181 = 0;
  }

  else
  {
    [(BMCandidate *)self deprecatedField3];
    v17 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self deprecatedField3];
    v181 = [v17 numberWithDouble:?];
  }

  numberOfSharesWithConversation = [(BMCandidate *)self numberOfSharesWithConversation];
  jsonDictionary4 = [numberOfSharesWithConversation jsonDictionary];

  numberOfSharesFromCurrentAppWithConversation = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
  jsonDictionary5 = [numberOfSharesFromCurrentAppWithConversation jsonDictionary];

  numberOfSharesOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
  jsonDictionary6 = [numberOfSharesOfTopDomainURLWithConversation jsonDictionary];

  numberOfSharesOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
  jsonDictionary7 = [numberOfSharesOfDetectedPeopleWithConversation jsonDictionary];

  numberOfSharesOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
  jsonDictionary8 = [numberOfSharesOfPeopleInPhotoWithConversation jsonDictionary];

  numberOfOutgoingInteractionsWithConversation = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
  jsonDictionary9 = [numberOfOutgoingInteractionsWithConversation jsonDictionary];

  numberOfIncomingInteractionsWithConversation = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
  jsonDictionary10 = [numberOfIncomingInteractionsWithConversation jsonDictionary];

  numberOfInteractionsDuringTimePeriodWithConversation = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
  jsonDictionary11 = [numberOfInteractionsDuringTimePeriodWithConversation jsonDictionary];

  numberOfEngagedSuggestionsWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
  jsonDictionary12 = [numberOfEngagedSuggestionsWithConversation jsonDictionary];

  numberOfEngagedSuggestionsFromCurrentAppWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  jsonDictionary13 = [numberOfEngagedSuggestionsFromCurrentAppWithConversation jsonDictionary];

  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  jsonDictionary14 = [numberOfEngagedSuggestionsOfTopDomainURLWithConversation jsonDictionary];

  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  jsonDictionary15 = [numberOfEngagedSuggestionsOfDetectedPeopleWithConversation jsonDictionary];

  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  jsonDictionary16 = [numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation jsonDictionary];

  hasEverSharePlayedWithConversation = [(BMCandidate *)self hasEverSharePlayedWithConversation];
  jsonDictionary17 = [hasEverSharePlayedWithConversation jsonDictionary];

  if ([(BMCandidate *)self hasSuggestedRank])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate suggestedRank](self, "suggestedRank")}];
  }

  else
  {
    v166 = 0;
  }

  if (![(BMCandidate *)self hasCoreMLModelScore]|| ([(BMCandidate *)self coreMLModelScore], fabs(v32) == INFINITY))
  {
    v165 = 0;
  }

  else
  {
    [(BMCandidate *)self coreMLModelScore];
    v33 = MEMORY[0x1E696AD98];
    [(BMCandidate *)self coreMLModelScore];
    v165 = [v33 numberWithDouble:?];
  }

  if ([(BMCandidate *)self hasFoundInChunk])
  {
    v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate foundInChunk](self, "foundInChunk")}];
  }

  else
  {
    v164 = 0;
  }

  if ([(BMCandidate *)self hasUpdatedInChunk])
  {
    v163 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate updatedInChunk](self, "updatedInChunk")}];
  }

  else
  {
    v163 = 0;
  }

  numberOfSharesOfPeopleInPhotoIoUWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
  jsonDictionary18 = [numberOfSharesOfPeopleInPhotoIoUWithConversation jsonDictionary];

  numberOfSharesOfPetsWithConversation = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
  jsonDictionary19 = [numberOfSharesOfPetsWithConversation jsonDictionary];

  numberOfSharesOfPetsInCurrentPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
  jsonDictionary20 = [numberOfSharesOfPetsInCurrentPhotoWithConversation jsonDictionary];

  numberOfSharesOfScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
  jsonDictionary21 = [numberOfSharesOfScenesInPhotoWithConversation jsonDictionary];

  numberOfSharesOfDetectedScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
  jsonDictionary22 = [numberOfSharesOfDetectedScenesInPhotoWithConversation jsonDictionary];

  numberOfTopicsSharedWithConversation = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
  jsonDictionary23 = [numberOfTopicsSharedWithConversation jsonDictionary];

  numberOfAppsSharedFromWithConversation = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
  jsonDictionary24 = [numberOfAppsSharedFromWithConversation jsonDictionary];

  timeSinceLastPhotoShareWithConversation = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
  jsonDictionary25 = [timeSinceLastPhotoShareWithConversation jsonDictionary];

  hasSharedSensitiveContentWIthConversation = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
  jsonDictionary26 = [hasSharedSensitiveContentWIthConversation jsonDictionary];

  if ([(BMCandidate *)self hasIsInPhoneCallWithConversation])
  {
    v153 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isInPhoneCallWithConversation](self, "isInPhoneCallWithConversation")}];
  }

  else
  {
    v153 = 0;
  }

  numberOfSharesFromAlbumPhotoBelongsToWithConversation = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  jsonDictionary27 = [numberOfSharesFromAlbumPhotoBelongsToWithConversation jsonDictionary];

  if ([(BMCandidate *)self hasIsFirstPartyApp])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isFirstPartyApp](self, "isFirstPartyApp")}];
  }

  else
  {
    v151 = 0;
  }

  numberOfTimesSharedToTargetAppWithConversation = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
  jsonDictionary28 = [numberOfTimesSharedToTargetAppWithConversation jsonDictionary];

  timeSinceLastShareWithConversation = [(BMCandidate *)self timeSinceLastShareWithConversation];
  jsonDictionary29 = [timeSinceLastShareWithConversation jsonDictionary];

  timeSinceLastPhoneCallWithConversation = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
  jsonDictionary30 = [timeSinceLastPhoneCallWithConversation jsonDictionary];

  numberOfDifferentFacesSharedWithConversation = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
  jsonDictionary31 = [numberOfDifferentFacesSharedWithConversation jsonDictionary];

  numberOfTotalSharesToTargetApp = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
  jsonDictionary32 = [numberOfTotalSharesToTargetApp jsonDictionary];

  v183[0] = @"privatizedIdentifier";
  null = privatizedIdentifier;
  if (!privatizedIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v139 = null;
  v184[0] = null;
  v183[1] = @"feedbackDeprecated";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = null2;
  v184[1] = null2;
  v183[2] = @"privatizedTransportBundleId";
  null3 = privatizedTransportBundleId;
  if (!privatizedTransportBundleId)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = null3;
  v184[2] = null3;
  v183[3] = @"timeSinceLastOutgoingInteraction";
  null4 = jsonDictionary;
  if (!jsonDictionary)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v136 = null4;
  v184[3] = null4;
  v183[4] = @"timeSinceOutgoingInteractionNumber10";
  null5 = jsonDictionary2;
  v55 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = jsonDictionary;
  v135 = null5;
  v184[4] = null5;
  v183[5] = @"timeSinceLastIncomingInteraction";
  null6 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = privatizedIdentifier;
  v134 = null6;
  v184[5] = null6;
  v183[6] = @"deprecatedField1";
  null7 = v13;
  if (!v13)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = v4;
  v133 = null7;
  v184[6] = null7;
  v183[7] = @"deprecatedField2";
  null8 = v182;
  if (!v182)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v184[7] = null8;
  v183[8] = @"deprecatedField3";
  null9 = v181;
  if (!v181)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v184[8] = null9;
  v183[9] = @"numberOfSharesWithConversation";
  null10 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = null10;
  v184[9] = null10;
  v183[10] = @"numberOfSharesFromCurrentAppWithConversation";
  null11 = jsonDictionary5;
  if (!jsonDictionary5)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = null11;
  v184[10] = null11;
  v183[11] = @"numberOfSharesOfTopDomainURLWithConversation";
  null12 = jsonDictionary6;
  if (!jsonDictionary6)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null12;
  v184[11] = null12;
  v183[12] = @"numberOfSharesOfDetectedPeopleWithConversation";
  null13 = jsonDictionary7;
  if (!jsonDictionary7)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = null13;
  v184[12] = null13;
  v183[13] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  null14 = jsonDictionary8;
  if (!jsonDictionary8)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = null14;
  v184[13] = null14;
  v183[14] = @"numberOfOutgoingInteractionsWithConversation";
  null15 = jsonDictionary9;
  if (!jsonDictionary9)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = null15;
  v184[14] = null15;
  v183[15] = @"numberOfIncomingInteractionsWithConversation";
  null16 = jsonDictionary10;
  if (!jsonDictionary10)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = null16;
  v184[15] = null16;
  v183[16] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  null17 = jsonDictionary11;
  if (!jsonDictionary11)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = null17;
  v184[16] = null17;
  v183[17] = @"numberOfEngagedSuggestionsWithConversation";
  null18 = jsonDictionary12;
  if (!jsonDictionary12)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = null18;
  v184[17] = null18;
  v183[18] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  null19 = jsonDictionary13;
  if (!jsonDictionary13)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = null19;
  v184[18] = null19;
  v183[19] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  null20 = jsonDictionary14;
  if (!jsonDictionary14)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = null20;
  v184[19] = null20;
  v183[20] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  null21 = jsonDictionary15;
  if (!jsonDictionary15)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = null21;
  v184[20] = null21;
  v183[21] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  null22 = jsonDictionary16;
  if (!jsonDictionary16)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = null22;
  v184[21] = null22;
  v183[22] = @"hasEverSharePlayedWithConversation";
  null23 = jsonDictionary17;
  if (!jsonDictionary17)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = null23;
  v184[22] = null23;
  v183[23] = @"suggestedRank";
  null24 = v166;
  if (!v166)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = null24;
  v184[23] = null24;
  v183[24] = @"coreMLModelScore";
  null25 = v165;
  if (!v165)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = null25;
  v184[24] = null25;
  v183[25] = @"foundInChunk";
  null26 = v164;
  if (!v164)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null26;
  v184[25] = null26;
  v183[26] = @"updatedInChunk";
  null27 = v163;
  if (!v163)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null27;
  v184[26] = null27;
  v183[27] = @"numberOfSharesOfPeopleInPhotoIoUWithConversation";
  null28 = jsonDictionary18;
  if (!jsonDictionary18)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null28;
  v184[27] = null28;
  v183[28] = @"numberOfSharesOfPetsWithConversation";
  null29 = jsonDictionary19;
  if (!jsonDictionary19)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null29;
  v184[28] = null29;
  v183[29] = @"numberOfSharesOfPetsInCurrentPhotoWithConversation";
  null30 = jsonDictionary20;
  if (!jsonDictionary20)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null30;
  v184[29] = null30;
  v183[30] = @"numberOfSharesOfScenesInPhotoWithConversation";
  null31 = jsonDictionary21;
  if (!jsonDictionary21)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null31;
  v184[30] = null31;
  v183[31] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  null32 = jsonDictionary22;
  if (!jsonDictionary22)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null32;
  v184[31] = null32;
  v183[32] = @"numberOfTopicsSharedWithConversation";
  null33 = jsonDictionary23;
  if (!jsonDictionary23)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null33;
  v184[32] = null33;
  v183[33] = @"numberOfAppsSharedFromWithConversation";
  null34 = jsonDictionary24;
  if (!jsonDictionary24)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null34;
  v184[33] = null34;
  v183[34] = @"timeSinceLastPhotoShareWithConversation";
  null35 = jsonDictionary25;
  if (!jsonDictionary25)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null35;
  v184[34] = null35;
  v183[35] = @"hasSharedSensitiveContentWIthConversation";
  null36 = jsonDictionary26;
  if (!jsonDictionary26)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v144 = privatizedTransportBundleId;
  v107 = null36;
  v184[35] = null36;
  v183[36] = @"isInPhoneCallWithConversation";
  null37 = v153;
  if (!v153)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null37;
  v184[36] = null37;
  v183[37] = @"numberOfSharesFromAlbumPhotoBelongsToWithConversation";
  null38 = jsonDictionary27;
  if (!jsonDictionary27)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = null8;
  v105 = null38;
  v184[37] = null38;
  v183[38] = @"isFirstPartyApp";
  null39 = v151;
  if (!v151)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = jsonDictionary32;
  v103 = null39;
  v184[38] = null39;
  v183[39] = @"numberOfTimesSharedToTargetAppWithConversation";
  null40 = jsonDictionary28;
  if (!jsonDictionary28)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = v55;
  v143 = v13;
  v184[39] = null40;
  v183[40] = @"timeSinceLastShareWithConversation";
  null41 = jsonDictionary29;
  if (!jsonDictionary29)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v58;
  v184[40] = null41;
  v183[41] = @"timeSinceLastPhoneCallWithConversation";
  null42 = jsonDictionary30;
  if (!jsonDictionary30)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v60;
  v184[41] = null42;
  v183[42] = @"numberOfDifferentFacesSharedWithConversation";
  null43 = jsonDictionary31;
  if (!jsonDictionary31)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v184[42] = null43;
  v183[43] = @"numberOfTotalSharesToTargetApp";
  null44 = v145;
  if (!v145)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v184[43] = null44;
  v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v184 forKeys:v183 count:{44, v103}];
  if (!v145)
  {
  }

  v101 = v66;
  if (!jsonDictionary31)
  {

    v101 = v66;
  }

  if (!jsonDictionary30)
  {

    v101 = v66;
  }

  if (!jsonDictionary29)
  {

    v101 = v66;
  }

  if (!jsonDictionary28)
  {

    v101 = v66;
  }

  if (!v151)
  {

    v101 = v66;
  }

  if (!jsonDictionary27)
  {

    v101 = v66;
  }

  if (!v153)
  {

    v101 = v66;
  }

  if (!jsonDictionary26)
  {

    v101 = v66;
  }

  if (!jsonDictionary25)
  {

    v101 = v66;
  }

  if (!jsonDictionary24)
  {

    v101 = v66;
  }

  if (!jsonDictionary23)
  {

    v101 = v66;
  }

  if (!jsonDictionary22)
  {

    v101 = v66;
  }

  if (!jsonDictionary21)
  {

    v101 = v66;
  }

  if (!jsonDictionary20)
  {

    v101 = v66;
  }

  if (!jsonDictionary19)
  {

    v101 = v66;
  }

  if (!jsonDictionary18)
  {

    v101 = v66;
  }

  if (!v163)
  {

    v101 = v66;
  }

  if (!v164)
  {

    v101 = v66;
  }

  if (!v165)
  {

    v101 = v66;
  }

  if (!v166)
  {

    v101 = v66;
  }

  if (!jsonDictionary17)
  {

    v101 = v66;
  }

  if (!jsonDictionary16)
  {

    v101 = v66;
  }

  if (!jsonDictionary15)
  {

    v101 = v66;
  }

  if (!jsonDictionary14)
  {

    v101 = v66;
  }

  if (!jsonDictionary13)
  {

    v101 = v66;
  }

  if (!jsonDictionary12)
  {

    v101 = v66;
  }

  if (!jsonDictionary11)
  {

    v101 = v66;
  }

  if (!jsonDictionary10)
  {

    v101 = v66;
  }

  if (!jsonDictionary9)
  {

    v101 = v66;
  }

  if (!jsonDictionary8)
  {

    v101 = v66;
  }

  if (!jsonDictionary7)
  {

    v101 = v66;
  }

  if (!jsonDictionary6)
  {
  }

  if (!jsonDictionary5)
  {
  }

  if (!jsonDictionary4)
  {
  }

  if (!v181)
  {
  }

  if (v182)
  {
    if (v143)
    {
      goto LABEL_194;
    }
  }

  else
  {

    if (v143)
    {
LABEL_194:
      if (jsonDictionary3)
      {
        goto LABEL_195;
      }

      goto LABEL_205;
    }
  }

  if (jsonDictionary3)
  {
LABEL_195:
    if (v142)
    {
      goto LABEL_196;
    }

    goto LABEL_206;
  }

LABEL_205:

  if (v142)
  {
LABEL_196:
    if (v56)
    {
      goto LABEL_197;
    }

    goto LABEL_207;
  }

LABEL_206:

  if (v56)
  {
LABEL_197:
    if (v144)
    {
      goto LABEL_198;
    }

    goto LABEL_208;
  }

LABEL_207:

  if (v144)
  {
LABEL_198:
    if (v98)
    {
      goto LABEL_199;
    }

LABEL_209:

    if (v96)
    {
      goto LABEL_200;
    }

    goto LABEL_210;
  }

LABEL_208:

  if (!v98)
  {
    goto LABEL_209;
  }

LABEL_199:
  if (v96)
  {
    goto LABEL_200;
  }

LABEL_210:

LABEL_200:

  return v140;
}

- (BMCandidate)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v638[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"privatizedIdentifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v518 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v518 = v7;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"feedbackDeprecated"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
LABEL_15:

LABEL_16:
      v17 = [dictionaryCopy objectForKeyedSubscript:@"privatizedTransportBundleId"];
      v515 = v17;
      v517 = v8;
      if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v514 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v514 = v17;
LABEL_19:
        v18 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastOutgoingInteraction"];
        if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v512 = 0;
LABEL_22:
          v19 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceOutgoingInteractionNumber10"];
          selfCopy = self;
          if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v468 = v9;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v14 = v518;
                v40 = v514;
LABEL_552:

                v34 = v18;
                v35 = v512;
                goto LABEL_553;
              }

              v493 = objc_alloc(MEMORY[0x1E696ABC0]);
              v491 = *MEMORY[0x1E698F240];
              v629 = *MEMORY[0x1E696A578];
              errorCopy = error;
              v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceOutgoingInteractionNumber10"];
              v630 = v52;
              v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v630 forKeys:&v629 count:1];
              error = 0;
              *errorCopy = [v493 initWithDomain:v491 code:2 userInfo:v53];
              v54 = v52;
              v21 = v53;
              v14 = v518;
              v40 = v514;
              v20 = v54;
              goto LABEL_551;
            }

            v21 = v19;
            v37 = [BMFeatureDouble alloc];
            v549 = 0;
            v38 = [(BMFeatureDouble *)v37 initWithJSONDictionary:v21 error:&v549];
            v39 = v549;
            if (v39)
            {
              v40 = v514;
              if (error)
              {
                v39 = v39;
                *error = v39;
              }

              error = 0;
              v14 = v518;
              v20 = v38;
              v9 = v468;
              goto LABEL_551;
            }

            v20 = v38;
            v9 = v468;
          }

          else
          {
            v20 = 0;
          }

          v21 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastIncomingInteraction"];
          v510 = v7;
          if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v22 = 0;
            goto LABEL_28;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v45 = v21;
            v46 = [BMFeatureDouble alloc];
            v548 = 0;
            v22 = [(BMFeatureDouble *)v46 initWithJSONDictionary:v45 error:&v548];
            v47 = v548;
            if (v47)
            {
              v490 = v45;
              v40 = v514;
              v14 = v518;
              if (error)
              {
                v47 = v47;
                *error = v47;
              }

              p_isa = 0;
              v48 = v22;
              v7 = v510;
              goto LABEL_550;
            }

LABEL_28:
            v23 = [dictionaryCopy objectForKeyedSubscript:@"deprecatedField1"];
            v464 = v23;
            if (v23 && (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!error)
                {
                  v490 = 0;
                  p_isa = 0;
                  v40 = v514;
                  v48 = v22;
                  v7 = v510;
LABEL_549:

                  v14 = v518;
                  goto LABEL_550;
                }

                v496 = objc_alloc(MEMORY[0x1E696ABC0]);
                v445 = v21;
                v457 = v19;
                v121 = v20;
                v122 = v18;
                v123 = v22;
                v124 = *MEMORY[0x1E698F240];
                v625 = *MEMORY[0x1E696A578];
                errorCopy2 = error;
                v119 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deprecatedField1"];
                v626 = v119;
                v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v626 forKeys:&v625 count:1];
                v127 = v124;
                v48 = v123;
                v18 = v122;
                v20 = v121;
                v19 = v457;
                v21 = v445;
                v463 = v126;
                v490 = 0;
                p_isa = 0;
                *errorCopy2 = [v496 initWithDomain:v127 code:2 userInfo:?];
                v40 = v514;
                goto LABEL_197;
              }

              v490 = v24;
            }

            else
            {
              v490 = 0;
            }

            v25 = [dictionaryCopy objectForKeyedSubscript:@"deprecatedField2"];
            v461 = v20;
            v463 = v25;
            if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v27 = v21;
              v28 = v19;
              v29 = v18;
              v459 = 0;
              goto LABEL_34;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = v21;
              v28 = v19;
              v29 = v18;
              v459 = v26;
LABEL_34:
              v30 = [dictionaryCopy objectForKeyedSubscript:@"deprecatedField3"];
              v460 = v22;
              v462 = v30;
              errorCopy3 = error;
              if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v454 = 0;
LABEL_37:
                v32 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesWithConversation"];
                v18 = v29;
                v467 = v9;
                v453 = v29;
                if (!v32)
                {
                  v450 = 0;
                  v451 = 0;
                  v19 = v28;
                  goto LABEL_71;
                }

                objc_opt_class();
                v19 = v28;
                if (objc_opt_isKindOfClass())
                {
                  v450 = v32;
                  v451 = 0;
LABEL_71:
                  v21 = v27;
                  v48 = v22;
                  v7 = v510;
                  goto LABEL_72;
                }

                v456 = v28;
                v495 = dictionaryCopy;
                objc_opt_class();
                v21 = v27;
                if (objc_opt_isKindOfClass())
                {
                  v115 = v32;
                  v116 = [BMFeatureDouble alloc];
                  v547 = 0;
                  v117 = [(BMFeatureDouble *)v116 initWithJSONDictionary:v115 error:&v547];
                  v118 = v547;
                  if (v118)
                  {
                    v40 = v514;
                    v119 = v459;
                    if (errorCopy3)
                    {
                      v118 = v118;
                      *errorCopy3 = v118;
                    }

                    p_isa = 0;
                    v7 = v510;
                    v19 = v456;
                    v48 = v460;
                    v120 = v117;
                    v18 = v453;
                    goto LABEL_545;
                  }

                  v450 = v32;

                  v7 = v510;
                  v19 = v456;
                  v48 = v460;
                  v451 = v117;
                  v18 = v453;
LABEL_72:
                  v58 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesFromCurrentAppWithConversation"];
                  v452 = v58;
                  if (v58 && (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v446 = v21;
                    v458 = v19;
                    v497 = dictionaryCopy;
                    v128 = v9;
                    v129 = v7;
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy3)
                      {
                        p_isa = 0;
                        v9 = v128;
                        v40 = v514;
                        v18 = v453;
                        v19 = v458;
                        v48 = v460;
                        v119 = v459;
LABEL_544:

                        v115 = v450;
                        v120 = v451;
                        goto LABEL_545;
                      }

                      v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v166 = *MEMORY[0x1E698F240];
                      v617 = *MEMORY[0x1E696A578];
                      v132 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesFromCurrentAppWithConversation"];
                      v618 = v132;
                      v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v618 forKeys:&v617 count:1];
                      p_isa = 0;
                      *errorCopy3 = [v165 initWithDomain:v166 code:2 userInfo:v167];
                      v7 = v129;
                      v60 = v167;
                      v40 = v514;
                      v18 = v453;
                      v19 = v458;
                      v21 = v446;
                      v48 = v460;
                      v119 = v459;
                      goto LABEL_543;
                    }

                    v130 = v59;
                    v131 = [BMFeatureDouble alloc];
                    v546 = 0;
                    v132 = [(BMFeatureDouble *)v131 initWithJSONDictionary:v130 error:&v546];
                    v133 = v546;
                    if (v133)
                    {
                      v134 = v130;
                      v40 = v514;
                      v119 = v459;
                      if (errorCopy3)
                      {
                        v133 = v133;
                        *errorCopy3 = v133;
                      }

                      p_isa = 0;
                      v18 = v453;
                      dictionaryCopy = v497;
                      v19 = v458;
                      v60 = v134;
                      v48 = v460;
                      goto LABEL_543;
                    }

                    v443 = v132;

                    v18 = v453;
                    dictionaryCopy = v497;
                    v19 = v458;
                    v48 = v460;
                  }

                  else
                  {
                    v443 = 0;
                  }

                  v60 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfTopDomainURLWithConversation"];
                  if (!v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v61 = 0;
LABEL_78:
                    v62 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfDetectedPeopleWithConversation"];
                    if (!v62 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v455 = v19;
                      v439 = 0;
LABEL_81:
                      v63 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPeopleInPhotoWithConversation"];
                      v440 = v63;
                      if (!v63 || (v64 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v436 = 0;
LABEL_84:
                        v65 = [dictionaryCopy objectForKeyedSubscript:@"numberOfOutgoingInteractionsWithConversation"];
                        v437 = v65;
                        if (!v65 || (v66 = v65, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v433 = 0;
LABEL_87:
                          v67 = [dictionaryCopy objectForKeyedSubscript:@"numberOfIncomingInteractionsWithConversation"];
                          v434 = v67;
                          if (!v67 || (v68 = v67, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v430 = 0;
LABEL_90:
                            v69 = [dictionaryCopy objectForKeyedSubscript:@"numberOfInteractionsDuringTimePeriodWithConversation"];
                            v431 = v69;
                            if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v425 = 0;
                              goto LABEL_93;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v192 = v70;
                              v193 = [BMFeatureDouble alloc];
                              v540 = 0;
                              v194 = [(BMFeatureDouble *)v193 initWithJSONDictionary:v192 error:&v540];
                              v195 = v540;
                              v425 = v194;
                              if (v195)
                              {
                                v426 = v192;
                                v40 = v514;
                                v119 = v459;
                                if (errorCopy3)
                                {
                                  v195 = v195;
                                  *errorCopy3 = v195;
                                }

                                p_isa = 0;
                                v132 = v443;
LABEL_283:
                                v19 = v455;
                                goto LABEL_537;
                              }

LABEL_93:
                              v71 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsWithConversation"];
                              v426 = v71;
                              if (!v71 || (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v422 = 0;
LABEL_96:
                                v73 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
                                v423 = v73;
                                if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v418 = 0;
                                  goto LABEL_99;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v205 = v74;
                                  v206 = [BMFeatureDouble alloc];
                                  v538 = 0;
                                  v207 = [(BMFeatureDouble *)v206 initWithJSONDictionary:v205 error:&v538];
                                  v208 = v538;
                                  v418 = v207;
                                  if (v208)
                                  {
                                    v419 = v205;
                                    v40 = v514;
                                    v119 = v459;
                                    if (errorCopy3)
                                    {
                                      v208 = v208;
                                      *errorCopy3 = v208;
                                    }

                                    p_isa = 0;
                                    v132 = v443;
LABEL_298:
                                    v19 = v455;
                                    goto LABEL_535;
                                  }

LABEL_99:
                                  v75 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
                                  v419 = v75;
                                  if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v415 = 0;
LABEL_102:
                                    v77 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
                                    v416 = v77;
                                    if (!v77 || (v78 = v77, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v412 = 0;
LABEL_105:
                                      v79 = [dictionaryCopy objectForKeyedSubscript:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
                                      v19 = v455;
                                      v413 = v79;
                                      if (!v79 || (v80 = v79, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v410 = 0;
LABEL_108:
                                        v81 = [dictionaryCopy objectForKeyedSubscript:@"hasEverSharePlayedWithConversation"];
                                        v411 = v81;
                                        if (!v81 || (v82 = v81, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v409 = 0;
                                          goto LABEL_111;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v236 = v82;
                                          v237 = [BMFeatureDouble alloc];
                                          v534 = 0;
                                          v409 = [(BMFeatureDouble *)v237 initWithJSONDictionary:v236 error:&v534];
                                          v238 = v534;
                                          if (v238)
                                          {
                                            v407 = v236;
                                            v40 = v514;
                                            v119 = v459;
                                            if (errorCopy3)
                                            {
                                              v238 = v238;
                                              *errorCopy3 = v238;
                                            }

                                            p_isa = 0;
                                            v132 = v443;
                                            v239 = v407;
                                            goto LABEL_531;
                                          }

LABEL_111:
                                          v83 = [dictionaryCopy objectForKeyedSubscript:@"suggestedRank"];
                                          v408 = v83;
                                          if (v83 && (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (!errorCopy3)
                                              {
                                                v239 = 0;
                                                p_isa = 0;
                                                v40 = v514;
                                                v119 = v459;
                                                v132 = v443;
LABEL_530:

                                                goto LABEL_531;
                                              }

                                              v256 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v257 = *MEMORY[0x1E698F240];
                                              v591 = *MEMORY[0x1E696A578];
                                              v405 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"suggestedRank"];
                                              v592 = v405;
                                              v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v592 forKeys:&v591 count:1];
                                              v259 = [v256 initWithDomain:v257 code:2 userInfo:v258];
                                              v239 = 0;
                                              p_isa = 0;
                                              *errorCopy3 = v259;
                                              v260 = v258;
                                              v40 = v514;
                                              v119 = v459;
                                              v132 = v443;
                                              goto LABEL_529;
                                            }

                                            v406 = v84;
                                          }

                                          else
                                          {
                                            v406 = 0;
                                          }

                                          v85 = [dictionaryCopy objectForKeyedSubscript:@"coreMLModelScore"];
                                          v404 = v85;
                                          if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v405 = 0;
                                            goto LABEL_117;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v405 = v86;
LABEL_117:
                                            v87 = [dictionaryCopy objectForKeyedSubscript:@"foundInChunk"];
                                            v403 = v87;
                                            if (!v87 || (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v402 = 0;
                                              goto LABEL_120;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v402 = v88;
LABEL_120:
                                              v89 = [dictionaryCopy objectForKeyedSubscript:@"updatedInChunk"];
                                              v401 = v89;
                                              if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v400 = 0;
                                                goto LABEL_123;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v400 = v90;
LABEL_123:
                                                v91 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
                                                v398 = v91;
                                                if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v399 = 0;
LABEL_126:
                                                  v93 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPetsWithConversation"];
                                                  v428 = v60;
                                                  v421 = v61;
                                                  v429 = v62;
                                                  v396 = v93;
                                                  if (v93 && (v94 = v93, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                  {
                                                    objc_opt_class();
                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                    {
                                                      v449 = v21;
                                                      v278 = dictionaryCopy;
                                                      if (!errorCopy3)
                                                      {
                                                        p_isa = 0;
                                                        v40 = v514;
                                                        v119 = v459;
                                                        v132 = v443;
LABEL_524:

                                                        v253 = v398;
                                                        goto LABEL_525;
                                                      }

                                                      v279 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v280 = *MEMORY[0x1E698F240];
                                                      v581 = *MEMORY[0x1E696A578];
                                                      v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPetsWithConversation"];
                                                      v582 = v397;
                                                      v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v582 forKeys:&v581 count:1];
                                                      p_isa = 0;
                                                      *errorCopy3 = [v279 initWithDomain:v280 code:2 userInfo:v95];
                                                      goto LABEL_413;
                                                    }

                                                    v262 = v94;
                                                    v263 = [BMFeatureDouble alloc];
                                                    v532 = 0;
                                                    v264 = v262;
                                                    v397 = [(BMFeatureDouble *)v263 initWithJSONDictionary:v262 error:&v532];
                                                    v265 = v532;
                                                    if (v265)
                                                    {
                                                      if (errorCopy3)
                                                      {
                                                        v265 = v265;
                                                        *errorCopy3 = v265;
                                                      }

                                                      p_isa = 0;
                                                      v40 = v514;
                                                      v119 = v459;
                                                      v132 = v443;
                                                      v95 = v264;
                                                      goto LABEL_523;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v397 = 0;
                                                  }

                                                  v95 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
                                                  if (!v95 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v394 = 0;
LABEL_132:
                                                    v96 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfScenesInPhotoWithConversation"];
                                                    v391 = v95;
                                                    v395 = v96;
                                                    if (!v96 || (v97 = v96, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v392 = 0;
LABEL_135:
                                                      v98 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
                                                      v393 = v98;
                                                      if (!v98 || (v99 = v98, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v390 = 0;
                                                        goto LABEL_138;
                                                      }

                                                      v281 = dictionaryCopy;
                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v282 = v99;
                                                        v283 = [BMFeatureDouble alloc];
                                                        v529 = 0;
                                                        v494 = v282;
                                                        v390 = [(BMFeatureDouble *)v283 initWithJSONDictionary:v282 error:&v529];
                                                        v284 = v529;
                                                        if (v284)
                                                        {
                                                          if (errorCopy3)
                                                          {
                                                            v284 = v284;
                                                            *errorCopy3 = v284;
                                                          }

                                                          p_isa = 0;
                                                          v40 = v514;
                                                          dictionaryCopy = v281;
                                                          goto LABEL_447;
                                                        }

                                                        dictionaryCopy = v281;
LABEL_138:
                                                        [dictionaryCopy objectForKeyedSubscript:@"numberOfTopicsSharedWithConversation"];
                                                        v494 = v444 = v21;
                                                        if (v494)
                                                        {
                                                          v100 = v436;
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            v101 = dictionaryCopy;
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v102 = v494;
                                                              v103 = [BMFeatureDouble alloc];
                                                              v528 = 0;
                                                              v389 = v102;
                                                              v388 = [(BMFeatureDouble *)v103 initWithJSONDictionary:v102 error:&v528];
                                                              v104 = v528;
                                                              if (v104)
                                                              {
                                                                if (errorCopy3)
                                                                {
                                                                  v104 = v104;
                                                                  *errorCopy3 = v104;
                                                                }

                                                                goto LABEL_423;
                                                              }

                                                              dictionaryCopy = v101;
                                                              v100 = v436;
LABEL_354:
                                                              [dictionaryCopy objectForKeyedSubscript:@"numberOfAppsSharedFromWithConversation"];
                                                              v389 = v436 = v100;
                                                              if (!v389 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v386 = 0;
                                                                v287 = v439;
                                                                v288 = v433;
                                                                v289 = v430;
                                                                v290 = v415;
                                                                v291 = v422;
                                                                v292 = v418;
                                                                goto LABEL_357;
                                                              }

                                                              v101 = dictionaryCopy;
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v302 = v389;
                                                                v303 = [BMFeatureDouble alloc];
                                                                v527 = 0;
                                                                v387 = v302;
                                                                v386 = [(BMFeatureDouble *)v303 initWithJSONDictionary:v302 error:&v527];
                                                                v304 = v527;
                                                                if (!v304)
                                                                {

                                                                  dictionaryCopy = v101;
                                                                  v287 = v439;
                                                                  v288 = v433;
                                                                  v289 = v430;
                                                                  v291 = v422;
                                                                  v292 = v418;
                                                                  v290 = v415;
LABEL_357:
                                                                  v415 = v290;
                                                                  v418 = v292;
                                                                  v422 = v291;
                                                                  v430 = v289;
                                                                  v433 = v288;
                                                                  v439 = v287;
                                                                  v387 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastPhotoShareWithConversation"];
                                                                  if (v387)
                                                                  {
                                                                    v293 = v467;
                                                                    v294 = v518;
                                                                    objc_opt_class();
                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                    {
                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v295 = v387;
                                                                        v296 = [BMFeatureDouble alloc];
                                                                        v526 = 0;
                                                                        v297 = v295;
                                                                        v385 = [(BMFeatureDouble *)v296 initWithJSONDictionary:v295 error:&v526];
                                                                        v298 = v526;
                                                                        if (v298)
                                                                        {
                                                                          if (errorCopy3)
                                                                          {
                                                                            v298 = v298;
                                                                            *errorCopy3 = v298;
                                                                          }

                                                                          goto LABEL_442;
                                                                        }

LABEL_379:
                                                                        v307 = [dictionaryCopy objectForKeyedSubscript:@"hasSharedSensitiveContentWIthConversation"];
                                                                        v518 = v294;
                                                                        if (v307 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          v297 = v307;
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!errorCopy3)
                                                                            {
LABEL_442:
                                                                              p_isa = 0;
                                                                              goto LABEL_516;
                                                                            }

                                                                            v328 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v329 = *MEMORY[0x1E698F240];
                                                                            v567 = *MEMORY[0x1E696A578];
                                                                            v320 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"hasSharedSensitiveContentWIthConversation"];
                                                                            v568 = v320;
                                                                            v317 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v568 forKeys:&v567 count:1];
                                                                            p_isa = 0;
                                                                            *errorCopy3 = [v328 initWithDomain:v329 code:2 userInfo:v317];
LABEL_515:

                                                                            goto LABEL_516;
                                                                          }

                                                                          v317 = v307;
                                                                          v318 = [BMFeatureDouble alloc];
                                                                          v525 = 0;
                                                                          v383 = [(BMFeatureDouble *)v318 initWithJSONDictionary:v317 error:&v525];
                                                                          v319 = v525;
                                                                          if (v319)
                                                                          {
                                                                            if (errorCopy3)
                                                                            {
                                                                              v319 = v319;
                                                                              *errorCopy3 = v319;
                                                                            }

                                                                            p_isa = 0;
                                                                            v320 = v383;
                                                                            goto LABEL_515;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v297 = v307;
                                                                          v383 = 0;
                                                                        }

                                                                        v308 = dictionaryCopy;
                                                                        v384 = [dictionaryCopy objectForKeyedSubscript:@"isInPhoneCallWithConversation"];
                                                                        if (v384 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!errorCopy3)
                                                                            {
                                                                              v382 = 0;
                                                                              p_isa = 0;
LABEL_514:

                                                                              dictionaryCopy = v308;
                                                                              v317 = v382;
                                                                              v320 = v383;
                                                                              goto LABEL_515;
                                                                            }

                                                                            v333 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v334 = *MEMORY[0x1E698F240];
                                                                            v565 = *MEMORY[0x1E696A578];
                                                                            v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInPhoneCallWithConversation"];
                                                                            v566 = v325;
                                                                            v380 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v566 forKeys:&v565 count:1];
                                                                            v382 = 0;
                                                                            p_isa = 0;
                                                                            *errorCopy3 = [v333 initWithDomain:v334 code:2 userInfo:?];

                                                                            goto LABEL_513;
                                                                          }

                                                                          v382 = v384;
                                                                        }

                                                                        else
                                                                        {
                                                                          v382 = 0;
                                                                        }

                                                                        v381 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
                                                                        if (!v381 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v379 = 0;
LABEL_388:
                                                                          v309 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPartyApp"];
                                                                          if (v309 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!errorCopy3)
                                                                              {
                                                                                v378 = 0;
                                                                                p_isa = 0;
LABEL_511:

                                                                                v325 = v381;
                                                                                goto LABEL_512;
                                                                              }

                                                                              v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v342 = *MEMORY[0x1E698F240];
                                                                              v561 = *MEMORY[0x1E696A578];
                                                                              v330 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFirstPartyApp"];
                                                                              v562 = v330;
                                                                              v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v562 forKeys:&v561 count:1];
                                                                              v378 = 0;
                                                                              p_isa = 0;
                                                                              *errorCopy3 = [v341 initWithDomain:v342 code:2 userInfo:?];
                                                                              goto LABEL_509;
                                                                            }

                                                                            v378 = v309;
                                                                          }

                                                                          else
                                                                          {
                                                                            v378 = 0;
                                                                          }

                                                                          v310 = [dictionaryCopy objectForKeyedSubscript:@"numberOfTimesSharedToTargetAppWithConversation"];
                                                                          if (v310 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!errorCopy3)
                                                                              {
                                                                                p_isa = 0;
LABEL_510:

                                                                                goto LABEL_511;
                                                                              }

                                                                              v484 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v346 = *MEMORY[0x1E698F240];
                                                                              v559 = *MEMORY[0x1E696A578];
                                                                              v376 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTimesSharedToTargetAppWithConversation"];
                                                                              v560 = v376;
                                                                              v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v560 forKeys:&v559 count:1];
                                                                              *errorCopy3 = [v484 initWithDomain:v346 code:2 userInfo:v347];

                                                                              p_isa = 0;
                                                                              goto LABEL_508;
                                                                            }

                                                                            v330 = v310;
                                                                            v331 = [BMFeatureDouble alloc];
                                                                            v523 = 0;
                                                                            v376 = [(BMFeatureDouble *)v331 initWithJSONDictionary:v330 error:&v523];
                                                                            v332 = v523;
                                                                            if (v332)
                                                                            {
                                                                              if (errorCopy3)
                                                                              {
                                                                                v332 = v332;
                                                                                *errorCopy3 = v332;
                                                                              }

                                                                              p_isa = 0;
                                                                              goto LABEL_509;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v376 = 0;
                                                                          }

                                                                          v377 = [v308 objectForKeyedSubscript:@"timeSinceLastShareWithConversation"];
                                                                          if (v377 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (!errorCopy3)
                                                                              {
                                                                                p_isa = 0;
                                                                                goto LABEL_507;
                                                                              }

                                                                              v351 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v485 = *MEMORY[0x1E698F240];
                                                                              v557 = *MEMORY[0x1E696A578];
                                                                              v375 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastShareWithConversation"];
                                                                              v558 = v375;
                                                                              v352 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v558 forKeys:&v557 count:1];
                                                                              v353 = v351;
                                                                              v311 = v352;
                                                                              v354 = [v353 initWithDomain:v485 code:2 userInfo:?];
                                                                              p_isa = 0;
                                                                              *errorCopy3 = v354;
LABEL_506:

LABEL_507:
LABEL_508:
                                                                              v330 = v310;
LABEL_509:

                                                                              v310 = v330;
                                                                              goto LABEL_510;
                                                                            }

                                                                            v338 = v377;
                                                                            v339 = [BMFeatureDouble alloc];
                                                                            v522 = 0;
                                                                            v311 = v338;
                                                                            v375 = [(BMFeatureDouble *)v339 initWithJSONDictionary:v338 error:&v522];
                                                                            v340 = v522;
                                                                            if (v340)
                                                                            {
                                                                              if (errorCopy3)
                                                                              {
                                                                                v340 = v340;
                                                                                *errorCopy3 = v340;
                                                                              }

LABEL_493:
                                                                              p_isa = 0;
                                                                              goto LABEL_506;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v375 = 0;
                                                                          }

                                                                          v311 = [v308 objectForKeyedSubscript:@"timeSinceLastPhoneCallWithConversation"];
                                                                          if (!v311 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v374 = 0;
                                                                            goto LABEL_400;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v343 = v311;
                                                                            v344 = [BMFeatureDouble alloc];
                                                                            v521 = 0;
                                                                            v312 = v343;
                                                                            v374 = [(BMFeatureDouble *)v344 initWithJSONDictionary:v343 error:&v521];
                                                                            v345 = v521;
                                                                            if (v345)
                                                                            {
                                                                              if (errorCopy3)
                                                                              {
                                                                                v345 = v345;
                                                                                *errorCopy3 = v345;
                                                                              }

LABEL_497:
                                                                              p_isa = 0;
                                                                              goto LABEL_505;
                                                                            }

LABEL_400:
                                                                            v312 = [v308 objectForKeyedSubscript:@"numberOfDifferentFacesSharedWithConversation"];
                                                                            if (!v312 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v372 = 0;
                                                                              goto LABEL_403;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v348 = v312;
                                                                              v349 = [BMFeatureDouble alloc];
                                                                              v520 = 0;
                                                                              v313 = v348;
                                                                              v372 = [(BMFeatureDouble *)v349 initWithJSONDictionary:v348 error:&v520];
                                                                              v350 = v520;
                                                                              if (v350)
                                                                              {
                                                                                if (errorCopy3)
                                                                                {
                                                                                  v350 = v350;
                                                                                  *errorCopy3 = v350;
                                                                                }

                                                                                goto LABEL_558;
                                                                              }

LABEL_403:
                                                                              v313 = [v308 objectForKeyedSubscript:@"numberOfTotalSharesToTargetApp"];
                                                                              if (!v313 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v314 = 0;
LABEL_406:
                                                                                selfCopy =  -[BMCandidate initWithPrivatizedIdentifier:feedbackDeprecated:privatizedTransportBundleId:timeSinceLastOutgoingInteraction:timeSinceOutgoingInteractionNumber10:timeSinceLastIncomingInteraction:deprecatedField1:deprecatedField2:deprecatedField3:numberOfSharesWithConversation:numberOfSharesFromCurrentAppWithConversation:numberOfSharesOfTopDomainURLWithConversation:numberOfSharesOfDetectedPeopleWithConversation:numberOfSharesOfPeopleInPhotoWithConversation:numberOfOutgoingInteractionsWithConversation:numberOfIncomingInteractionsWithConversation:numberOfInteractionsDuringTimePeriodWithConversation:numberOfEngagedSuggestionsWithConversation:numberOfEngagedSuggestionsFromCurrentAppWithConversation:numberOfEngagedSuggestionsOfTopDomainURLWithConversation:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:hasEverSharePlayedWithConversation:suggestedRank:coreMLModelScore:foundInChunk:updatedInChunk:numberOfSharesOfPeopleInPhotoIoUWithConversation:numberOfSharesOfPetsWithConversation:numberOfSharesOfPetsInCurrentPhotoWithConversation:numberOfSharesOfScenesInPhotoWithConversation:numberOfSharesOfDetectedScenesInPhotoWithConversation:numberOfTopicsSharedWithConversation:numberOfAppsSharedFromWithConversation:timeSinceLastPhotoShareWithConversation:hasSharedSensitiveContentWIthConversation:isInPhoneCallWithConversation:numberOfSharesFromAlbumPhotoBelongsToWithConversation:isFirstPartyApp:numberOfTimesSharedToTargetAppWithConversation:timeSinceLastShareWithConversation:timeSinceLastPhoneCallWithConversation:numberOfDifferentFacesSharedWithConversation:numberOfTotalSharesToTargetApp:]( selfCopy,  "initWithPrivatizedIdentifier:feedbackDeprecated:privatizedTransportBundleId:timeSinceLastOutgoingInteraction:timeSinceOutgoingInteractionNumber10:timeSinceLastIncomingInteraction:deprecatedField1:deprecatedField2:deprecatedField3:numberOfSharesWithConversation:numberOfSharesFromCurrentAppWithConversation:numberOfSharesOfTopDomainURLWithConversation:numberOfSharesOfDetectedPeopleWithConversation:numberOfSharesOfPeopleInPhotoWithConversation:numberOfOutgoingInteractionsWithConversation:numberOfIncomingInteractionsWithConversation:numberOfInteractionsDuringTimePeriodWithConversation:numberOfEngagedSuggestionsWithConversation:numberOfEngagedSuggestionsFromCurrentAppWithConversation:numberOfEngagedSuggestionsOfTopDomainURLWithConversation:numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:hasEverSharePlayedWithConversation:suggestedRank:coreMLModelScore:foundInChunk:updatedInChunk:numberOfSharesOfPeopleInPhotoIoUWithConversation:numberOfSharesOfPetsWithConversation:numberOfSharesOfPetsInCurrentPhotoWithConversation:numberOfSharesOfScenesInPhotoWithConversation:numberOfSharesOfDetectedScenesInPhotoWithConversation:numberOfTopicsSharedWithConversation:numberOfAppsSharedFromWithConversation:timeSinceLastPhotoShareWithConversation:hasSharedSensitiveContentWIthConversation:isInPhoneCallWithConversation:numberOfSharesFromAlbumPhotoBelongsToWithConversation:isFirstPartyApp:numberOfTimesSharedToTargetAppWithConversation:timeSinceLastShareWithConversation:timeSinceLastPhoneCallWithConversation:numberOfDifferentFacesSharedWithConversation:numberOfTotalSharesToTargetApp:",  v294,  [v293 intValue],  v514,  v512,  v461,  v460,  v490,  v459,  v454,  v451,  v443,  v421,  v439,  v436,  v433,  v430,  v425,  v422,  v418,  v415,  v412,  v410,  v409,  v406,  v405,  v402,  v400,  v399,  v397,  v394,  v392,  v390,  v388,  v386,  v385,  v383,  v382,  v379,  v378,  v376,  v375,  v374,  v372,  v314);
                                                                                p_isa = &selfCopy->super.super.isa;
LABEL_503:

                                                                                goto LABEL_504;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v355 = v313;
                                                                                v356 = [BMFeatureDouble alloc];
                                                                                v519 = 0;
                                                                                v486 = v355;
                                                                                v314 = [(BMFeatureDouble *)v356 initWithJSONDictionary:v355 error:&v519];
                                                                                v357 = v519;
                                                                                if (!v357)
                                                                                {

                                                                                  goto LABEL_406;
                                                                                }

                                                                                if (errorCopy3)
                                                                                {
                                                                                  v357 = v357;
                                                                                  *errorCopy3 = v357;
                                                                                }

                                                                                v358 = v486;
LABEL_502:

                                                                                p_isa = 0;
                                                                                goto LABEL_503;
                                                                              }

                                                                              if (errorCopy3)
                                                                              {
                                                                                v489 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v371 = *MEMORY[0x1E698F240];
                                                                                v551 = *MEMORY[0x1E696A578];
                                                                                v314 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTotalSharesToTargetApp"];
                                                                                v552 = v314;
                                                                                v369 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v552 forKeys:&v551 count:1];
                                                                                *errorCopy3 = [v489 initWithDomain:v371 code:2 userInfo:v369];
                                                                                v358 = v369;
                                                                                goto LABEL_502;
                                                                              }

LABEL_558:
                                                                              p_isa = 0;
                                                                              goto LABEL_504;
                                                                            }

                                                                            if (errorCopy3)
                                                                            {
                                                                              v488 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v370 = *MEMORY[0x1E698F240];
                                                                              v553 = *MEMORY[0x1E696A578];
                                                                              v372 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfDifferentFacesSharedWithConversation"];
                                                                              v554 = v372;
                                                                              v313 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v554 forKeys:&v553 count:1];
                                                                              v360 = [v488 initWithDomain:v370 code:2 userInfo:?];
                                                                              p_isa = 0;
                                                                              *errorCopy3 = v360;
LABEL_504:

                                                                              goto LABEL_505;
                                                                            }

                                                                            goto LABEL_497;
                                                                          }

                                                                          if (errorCopy3)
                                                                          {
                                                                            v487 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v373 = *MEMORY[0x1E698F240];
                                                                            v555 = *MEMORY[0x1E696A578];
                                                                            v374 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastPhoneCallWithConversation"];
                                                                            v556 = v374;
                                                                            v312 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v556 forKeys:&v555 count:1];
                                                                            v359 = [v487 initWithDomain:v373 code:2 userInfo:?];
                                                                            p_isa = 0;
                                                                            *errorCopy3 = v359;
LABEL_505:

                                                                            goto LABEL_506;
                                                                          }

                                                                          goto LABEL_493;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v325 = v381;
                                                                          v326 = [BMFeatureDouble alloc];
                                                                          v524 = 0;
                                                                          v379 = [(BMFeatureDouble *)v326 initWithJSONDictionary:v325 error:&v524];
                                                                          v327 = v524;
                                                                          if (!v327)
                                                                          {

                                                                            goto LABEL_388;
                                                                          }

                                                                          if (errorCopy3)
                                                                          {
                                                                            v327 = v327;
                                                                            *errorCopy3 = v327;
                                                                          }

LABEL_458:
                                                                          p_isa = 0;
LABEL_512:

                                                                          goto LABEL_513;
                                                                        }

                                                                        if (errorCopy3)
                                                                        {
                                                                          v335 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v336 = *MEMORY[0x1E698F240];
                                                                          v563 = *MEMORY[0x1E696A578];
                                                                          v325 = v381;
                                                                          v379 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesFromAlbumPhotoBelongsToWithConversation"];
                                                                          v564 = v379;
                                                                          v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
                                                                          *errorCopy3 = [v335 initWithDomain:v336 code:2 userInfo:v337];

                                                                          goto LABEL_458;
                                                                        }

                                                                        p_isa = 0;
                                                                        v325 = v381;
LABEL_513:

                                                                        goto LABEL_514;
                                                                      }

                                                                      if (errorCopy3)
                                                                      {
                                                                        v323 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v324 = *MEMORY[0x1E698F240];
                                                                        v569 = *MEMORY[0x1E696A578];
                                                                        v385 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastPhotoShareWithConversation"];
                                                                        v570 = v385;
                                                                        v297 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v570 forKeys:&v569 count:1];
                                                                        p_isa = 0;
                                                                        *errorCopy3 = [v323 initWithDomain:v324 code:2 userInfo:?];
LABEL_516:
                                                                        v40 = v514;
                                                                        v21 = v444;
                                                                        v119 = v459;
                                                                        v132 = v443;
                                                                        v60 = v428;
                                                                        v61 = v421;
                                                                        v62 = v429;

                                                                        goto LABEL_517;
                                                                      }

                                                                      p_isa = 0;
                                                                      v40 = v514;
LABEL_422:
                                                                      v21 = v444;
                                                                      v119 = v459;
                                                                      v132 = v443;
                                                                      v60 = v428;
LABEL_517:

                                                                      goto LABEL_518;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v293 = v467;
                                                                    v294 = v518;
                                                                  }

                                                                  v385 = 0;
                                                                  goto LABEL_379;
                                                                }

                                                                if (errorCopy3)
                                                                {
                                                                  v304 = v304;
                                                                  *errorCopy3 = v304;
                                                                }

                                                                p_isa = 0;
                                                              }

                                                              else
                                                              {
                                                                if (!errorCopy3)
                                                                {
LABEL_423:
                                                                  p_isa = 0;
                                                                  goto LABEL_424;
                                                                }

                                                                v321 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v322 = *MEMORY[0x1E698F240];
                                                                v571 = *MEMORY[0x1E696A578];
                                                                v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfAppsSharedFromWithConversation"];
                                                                v572 = v386;
                                                                v387 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v572 forKeys:&v571 count:1];
                                                                p_isa = 0;
                                                                *errorCopy3 = [v321 initWithDomain:v322 code:2 userInfo:?];
                                                              }

                                                              v40 = v514;
                                                              dictionaryCopy = v101;
                                                              goto LABEL_422;
                                                            }

                                                            if (errorCopy3)
                                                            {
                                                              v315 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v316 = *MEMORY[0x1E698F240];
                                                              v573 = *MEMORY[0x1E696A578];
                                                              v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfTopicsSharedWithConversation"];
                                                              v574 = v388;
                                                              v389 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
                                                              p_isa = 0;
                                                              *errorCopy3 = [v315 initWithDomain:v316 code:2 userInfo:?];
LABEL_424:
                                                              v40 = v514;
                                                              dictionaryCopy = v101;
                                                              v119 = v459;
                                                              v132 = v443;
LABEL_518:

                                                              goto LABEL_519;
                                                            }

                                                            p_isa = 0;
                                                            v40 = v514;
LABEL_447:
                                                            v119 = v459;
                                                            v132 = v443;
LABEL_519:
                                                            v95 = v391;
                                                            goto LABEL_520;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v100 = v436;
                                                        }

                                                        v388 = 0;
                                                        goto LABEL_354;
                                                      }

                                                      if (errorCopy3)
                                                      {
                                                        v305 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v306 = *MEMORY[0x1E698F240];
                                                        v575 = *MEMORY[0x1E696A578];
                                                        v390 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfDetectedScenesInPhotoWithConversation"];
                                                        v576 = v390;
                                                        v494 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v576 forKeys:&v575 count:1];
                                                        p_isa = 0;
                                                        *errorCopy3 = [v305 initWithDomain:v306 code:2 userInfo:?];
                                                        v40 = v514;
                                                        dictionaryCopy = v281;
                                                        v119 = v459;
                                                        v132 = v443;
LABEL_520:

                                                        goto LABEL_521;
                                                      }

                                                      p_isa = 0;
                                                      v40 = v514;
LABEL_439:
                                                      v119 = v459;
                                                      v132 = v443;
LABEL_521:

                                                      goto LABEL_522;
                                                    }

                                                    v449 = v21;
                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v275 = v97;
                                                      v276 = [BMFeatureDouble alloc];
                                                      v530 = 0;
                                                      v392 = [(BMFeatureDouble *)v276 initWithJSONDictionary:v275 error:&v530];
                                                      v277 = v530;
                                                      if (v277)
                                                      {
                                                        v393 = v275;
                                                        if (errorCopy3)
                                                        {
                                                          v277 = v277;
                                                          *errorCopy3 = v277;
                                                        }

                                                        p_isa = 0;
                                                        v40 = v514;
                                                        v119 = v459;
                                                        v132 = v443;
                                                        goto LABEL_521;
                                                      }

                                                      goto LABEL_135;
                                                    }

                                                    v509 = dictionaryCopy;
                                                    if (errorCopy3)
                                                    {
                                                      v299 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v300 = *MEMORY[0x1E698F240];
                                                      v577 = *MEMORY[0x1E696A578];
                                                      v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfScenesInPhotoWithConversation"];
                                                      v578 = v392;
                                                      v393 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v578 forKeys:&v577 count:1];
                                                      p_isa = 0;
                                                      *errorCopy3 = [v299 initWithDomain:v300 code:2 userInfo:?];
                                                      v40 = v514;
                                                      dictionaryCopy = v509;
                                                      goto LABEL_439;
                                                    }

                                                    p_isa = 0;
                                                    v40 = v514;
LABEL_427:
                                                    v21 = v449;
                                                    v119 = v459;
                                                    v132 = v443;
LABEL_522:

                                                    goto LABEL_523;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v268 = v95;
                                                    v269 = [BMFeatureDouble alloc];
                                                    v531 = 0;
                                                    v395 = v268;
                                                    v394 = [(BMFeatureDouble *)v269 initWithJSONDictionary:v268 error:&v531];
                                                    v270 = v531;
                                                    if (v270)
                                                    {
                                                      if (errorCopy3)
                                                      {
                                                        v270 = v270;
                                                        *errorCopy3 = v270;
                                                      }

                                                      p_isa = 0;
                                                      v40 = v514;
                                                      v119 = v459;
                                                      v132 = v443;
                                                      goto LABEL_522;
                                                    }

                                                    goto LABEL_132;
                                                  }

                                                  v449 = v21;
                                                  v278 = dictionaryCopy;
                                                  if (errorCopy3)
                                                  {
                                                    v285 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v286 = *MEMORY[0x1E698F240];
                                                    v579 = *MEMORY[0x1E696A578];
                                                    v394 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPetsInCurrentPhotoWithConversation"];
                                                    v580 = v394;
                                                    v395 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v580 forKeys:&v579 count:1];
                                                    p_isa = 0;
                                                    *errorCopy3 = [v285 initWithDomain:v286 code:2 userInfo:?];
                                                    v40 = v514;
                                                    dictionaryCopy = v278;
                                                    goto LABEL_427;
                                                  }

                                                  p_isa = 0;
LABEL_413:
                                                  v40 = v514;
                                                  dictionaryCopy = v278;
                                                  v21 = v449;
                                                  v119 = v459;
                                                  v132 = v443;
LABEL_523:

                                                  goto LABEL_524;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v253 = v92;
                                                  v254 = [BMFeatureDouble alloc];
                                                  v533 = 0;
                                                  v399 = [(BMFeatureDouble *)v254 initWithJSONDictionary:v253 error:&v533];
                                                  v255 = v533;
                                                  if (!v255)
                                                  {

                                                    goto LABEL_126;
                                                  }

                                                  v119 = v459;
                                                  if (errorCopy3)
                                                  {
                                                    v255 = v255;
                                                    *errorCopy3 = v255;
                                                  }

                                                  p_isa = 0;
                                                  v40 = v514;
LABEL_332:
                                                  v132 = v443;
LABEL_525:

                                                  v301 = v253;
                                                  goto LABEL_526;
                                                }

                                                if (!errorCopy3)
                                                {
                                                  p_isa = 0;
                                                  v40 = v514;
                                                  v119 = v459;
                                                  v132 = v443;
                                                  v301 = v398;
LABEL_526:
                                                  v239 = v406;

                                                  goto LABEL_527;
                                                }

                                                v271 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v483 = *MEMORY[0x1E698F240];
                                                v583 = *MEMORY[0x1E696A578];
                                                v508 = dictionaryCopy;
                                                v272 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v253 = v398;
                                                v368 = objc_opt_class();
                                                v273 = v272;
                                                dictionaryCopy = v508;
                                                v399 = [v273 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v368, @"numberOfSharesOfPeopleInPhotoIoUWithConversation"];
                                                v584 = v399;
                                                v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v584 forKeys:&v583 count:1];
                                                *errorCopy3 = [v271 initWithDomain:v483 code:2 userInfo:v274];

                                                p_isa = 0;
LABEL_331:
                                                v40 = v514;
                                                v119 = v459;
                                                goto LABEL_332;
                                              }

                                              if (errorCopy3)
                                              {
                                                v267 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v507 = *MEMORY[0x1E698F240];
                                                v585 = *MEMORY[0x1E696A578];
                                                v253 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"updatedInChunk"];
                                                v586 = v253;
                                                v399 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v586 forKeys:&v585 count:1];
                                                v400 = 0;
                                                p_isa = 0;
                                                *errorCopy3 = [v267 initWithDomain:v507 code:2 userInfo:?];
                                                goto LABEL_331;
                                              }

                                              v400 = 0;
                                              p_isa = 0;
                                              v40 = v514;
                                              v119 = v459;
                                              v132 = v443;
                                              v239 = v406;
LABEL_527:

                                              goto LABEL_528;
                                            }

                                            if (errorCopy3)
                                            {
                                              v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v506 = *MEMORY[0x1E698F240];
                                              v587 = *MEMORY[0x1E696A578];
                                              v239 = v406;
                                              v400 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"foundInChunk"];
                                              v588 = v400;
                                              v401 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v588 forKeys:&v587 count:1];
                                              v402 = 0;
                                              p_isa = 0;
                                              *errorCopy3 = [v266 initWithDomain:v506 code:2 userInfo:?];
                                              v40 = v514;
                                              v119 = v459;
                                              v132 = v443;
                                              goto LABEL_527;
                                            }

                                            v402 = 0;
                                            p_isa = 0;
                                            v40 = v514;
                                            v119 = v459;
                                            v132 = v443;
                                            v239 = v406;
LABEL_528:

                                            v260 = v404;
                                            goto LABEL_529;
                                          }

                                          if (errorCopy3)
                                          {
                                            v261 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v505 = *MEMORY[0x1E698F240];
                                            v589 = *MEMORY[0x1E696A578];
                                            v239 = v406;
                                            v402 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"coreMLModelScore"];
                                            v590 = v402;
                                            v403 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v590 forKeys:&v589 count:1];
                                            v405 = 0;
                                            p_isa = 0;
                                            *errorCopy3 = [v261 initWithDomain:v505 code:2 userInfo:?];
                                            v40 = v514;
                                            v119 = v459;
                                            v132 = v443;
                                            goto LABEL_528;
                                          }

                                          v405 = 0;
                                          p_isa = 0;
                                          v40 = v514;
                                          v119 = v459;
                                          v132 = v443;
                                          v260 = v404;
                                          v239 = v406;
LABEL_529:

                                          goto LABEL_530;
                                        }

                                        if (errorCopy3)
                                        {
                                          v249 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v482 = *MEMORY[0x1E698F240];
                                          v593 = *MEMORY[0x1E696A578];
                                          v504 = dictionaryCopy;
                                          v250 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v367 = objc_opt_class();
                                          v251 = v250;
                                          dictionaryCopy = v504;
                                          v409 = [v251 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v367, @"hasEverSharePlayedWithConversation"];
                                          v594 = v409;
                                          v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v594 forKeys:&v593 count:1];
                                          v252 = [v249 initWithDomain:v482 code:2 userInfo:v239];
                                          p_isa = 0;
                                          *errorCopy3 = v252;
                                          v40 = v514;
                                          v119 = v459;
                                          v132 = v443;
LABEL_531:

                                          v19 = v455;
                                          goto LABEL_532;
                                        }

                                        p_isa = 0;
LABEL_335:
                                        v40 = v514;
                                        v119 = v459;
                                        v132 = v443;
LABEL_532:

                                        goto LABEL_533;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v228 = v80;
                                        v229 = [BMFeatureDouble alloc];
                                        v535 = 0;
                                        v410 = [(BMFeatureDouble *)v229 initWithJSONDictionary:v228 error:&v535];
                                        v230 = v535;
                                        if (v230)
                                        {
                                          v411 = v228;
                                          v40 = v514;
                                          v119 = v459;
                                          if (errorCopy3)
                                          {
                                            v230 = v230;
                                            *errorCopy3 = v230;
                                          }

                                          p_isa = 0;
                                          v132 = v443;
                                          goto LABEL_532;
                                        }

                                        goto LABEL_108;
                                      }

                                      if (errorCopy3)
                                      {
                                        v245 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v481 = *MEMORY[0x1E698F240];
                                        v595 = *MEMORY[0x1E696A578];
                                        v503 = dictionaryCopy;
                                        v246 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v366 = objc_opt_class();
                                        v247 = v246;
                                        v19 = v455;
                                        dictionaryCopy = v503;
                                        v410 = [v247 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v366, @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation"];
                                        v596 = v410;
                                        v411 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v596 forKeys:&v595 count:1];
                                        v248 = [v245 initWithDomain:v481 code:2 userInfo:?];
                                        p_isa = 0;
                                        *errorCopy3 = v248;
                                        goto LABEL_335;
                                      }

                                      p_isa = 0;
LABEL_321:
                                      v40 = v514;
                                      v119 = v459;
                                      v132 = v443;
LABEL_533:

                                      goto LABEL_534;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v220 = v78;
                                      v221 = [BMFeatureDouble alloc];
                                      v536 = 0;
                                      v412 = [(BMFeatureDouble *)v221 initWithJSONDictionary:v220 error:&v536];
                                      v222 = v536;
                                      if (v222)
                                      {
                                        v413 = v220;
                                        v40 = v514;
                                        v119 = v459;
                                        if (errorCopy3)
                                        {
                                          v222 = v222;
                                          *errorCopy3 = v222;
                                        }

                                        p_isa = 0;
                                        v132 = v443;
                                        v19 = v455;
                                        goto LABEL_533;
                                      }

                                      goto LABEL_105;
                                    }

                                    if (errorCopy3)
                                    {
                                      v480 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v414 = *MEMORY[0x1E698F240];
                                      v597 = *MEMORY[0x1E696A578];
                                      v502 = dictionaryCopy;
                                      v240 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v365 = objc_opt_class();
                                      v241 = v240;
                                      v19 = v455;
                                      dictionaryCopy = v502;
                                      v412 = [v241 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v365, @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation"];
                                      v598 = v412;
                                      v242 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v598 forKeys:&v597 count:1];
                                      v243 = v414;
                                      v413 = v242;
                                      v244 = [v480 initWithDomain:v243 code:2 userInfo:?];
                                      p_isa = 0;
                                      *errorCopy3 = v244;
                                      goto LABEL_321;
                                    }

                                    p_isa = 0;
                                    v40 = v514;
                                    v119 = v459;
                                    v132 = v443;
                                    v19 = v455;
LABEL_534:

                                    goto LABEL_535;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v212 = v76;
                                    v213 = [BMFeatureDouble alloc];
                                    v537 = 0;
                                    v415 = [(BMFeatureDouble *)v213 initWithJSONDictionary:v212 error:&v537];
                                    v214 = v537;
                                    if (v214)
                                    {
                                      v416 = v212;
                                      v40 = v514;
                                      v119 = v459;
                                      v19 = v455;
                                      if (errorCopy3)
                                      {
                                        v214 = v214;
                                        *errorCopy3 = v214;
                                      }

                                      p_isa = 0;
                                      v132 = v443;
                                      goto LABEL_534;
                                    }

                                    goto LABEL_102;
                                  }

                                  if (errorCopy3)
                                  {
                                    v479 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v417 = *MEMORY[0x1E698F240];
                                    v599 = *MEMORY[0x1E696A578];
                                    v501 = dictionaryCopy;
                                    v231 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v364 = objc_opt_class();
                                    v232 = v231;
                                    v19 = v455;
                                    dictionaryCopy = v501;
                                    v415 = [v232 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v364, @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation"];
                                    v600 = v415;
                                    v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v600 forKeys:&v599 count:1];
                                    v234 = v417;
                                    v416 = v233;
                                    v235 = [v479 initWithDomain:v234 code:2 userInfo:?];
                                    p_isa = 0;
                                    *errorCopy3 = v235;
                                    v40 = v514;
                                    v119 = v459;
                                    v132 = v443;
                                    goto LABEL_534;
                                  }

                                  p_isa = 0;
                                  v40 = v514;
                                  v119 = v459;
                                  v132 = v443;
                                  goto LABEL_298;
                                }

                                if (errorCopy3)
                                {
                                  v478 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v420 = *MEMORY[0x1E698F240];
                                  v601 = *MEMORY[0x1E696A578];
                                  v500 = dictionaryCopy;
                                  v223 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v363 = objc_opt_class();
                                  v224 = v223;
                                  v19 = v455;
                                  dictionaryCopy = v500;
                                  v418 = [v224 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v363, @"numberOfEngagedSuggestionsFromCurrentAppWithConversation"];
                                  v602 = v418;
                                  v225 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v602 forKeys:&v601 count:1];
                                  v226 = v420;
                                  v419 = v225;
                                  v227 = [v478 initWithDomain:v226 code:2 userInfo:?];
                                  p_isa = 0;
                                  *errorCopy3 = v227;
                                  v40 = v514;
                                  v119 = v459;
                                  v132 = v443;
LABEL_535:

                                  goto LABEL_536;
                                }

                                p_isa = 0;
                                v40 = v514;
                                v119 = v459;
                                v132 = v443;
                                v19 = v455;
LABEL_536:

                                goto LABEL_537;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v199 = v72;
                                v200 = [BMFeatureDouble alloc];
                                v539 = 0;
                                v422 = [(BMFeatureDouble *)v200 initWithJSONDictionary:v199 error:&v539];
                                v201 = v539;
                                if (v201)
                                {
                                  v423 = v199;
                                  v40 = v514;
                                  v119 = v459;
                                  v19 = v455;
                                  if (errorCopy3)
                                  {
                                    v201 = v201;
                                    *errorCopy3 = v201;
                                  }

                                  p_isa = 0;
                                  v132 = v443;
                                  goto LABEL_536;
                                }

                                goto LABEL_96;
                              }

                              if (errorCopy3)
                              {
                                v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v424 = *MEMORY[0x1E698F240];
                                v603 = *MEMORY[0x1E696A578];
                                v499 = dictionaryCopy;
                                v215 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v362 = objc_opt_class();
                                v216 = v215;
                                v19 = v455;
                                dictionaryCopy = v499;
                                v422 = [v216 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v362, @"numberOfEngagedSuggestionsWithConversation"];
                                v604 = v422;
                                v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v604 forKeys:&v603 count:1];
                                v218 = v424;
                                v423 = v217;
                                v219 = [v477 initWithDomain:v218 code:2 userInfo:?];
                                p_isa = 0;
                                *errorCopy3 = v219;
                                v40 = v514;
                                v119 = v459;
                                v132 = v443;
                                goto LABEL_536;
                              }

                              p_isa = 0;
                              v40 = v514;
                              v119 = v459;
                              v132 = v443;
                              goto LABEL_283;
                            }

                            if (errorCopy3)
                            {
                              v476 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v427 = *MEMORY[0x1E698F240];
                              v605 = *MEMORY[0x1E696A578];
                              v19 = v455;
                              v425 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfInteractionsDuringTimePeriodWithConversation"];
                              v606 = v425;
                              v209 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v606 forKeys:&v605 count:1];
                              v210 = v427;
                              v426 = v209;
                              v211 = [v476 initWithDomain:v210 code:2 userInfo:?];
                              p_isa = 0;
                              *errorCopy3 = v211;
                              v40 = v514;
                              v119 = v459;
                              v132 = v443;
LABEL_537:

                              goto LABEL_538;
                            }

                            p_isa = 0;
                            v40 = v514;
                            v119 = v459;
                            v132 = v443;
                            v19 = v455;
LABEL_538:

                            goto LABEL_539;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v186 = v68;
                            v187 = [BMFeatureDouble alloc];
                            v541 = 0;
                            v430 = [(BMFeatureDouble *)v187 initWithJSONDictionary:v186 error:&v541];
                            v188 = v541;
                            if (v188)
                            {
                              v431 = v186;
                              v40 = v514;
                              v119 = v459;
                              v19 = v455;
                              if (errorCopy3)
                              {
                                v188 = v188;
                                *errorCopy3 = v188;
                              }

                              p_isa = 0;
                              v132 = v443;
                              goto LABEL_538;
                            }

                            goto LABEL_90;
                          }

                          if (errorCopy3)
                          {
                            v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v432 = *MEMORY[0x1E698F240];
                            v607 = *MEMORY[0x1E696A578];
                            v19 = v455;
                            v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfIncomingInteractionsWithConversation"];
                            v608 = v430;
                            v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v608 forKeys:&v607 count:1];
                            v203 = v432;
                            v431 = v202;
                            v204 = [v475 initWithDomain:v203 code:2 userInfo:?];
                            p_isa = 0;
                            *errorCopy3 = v204;
                            v40 = v514;
                            v119 = v459;
                            v132 = v443;
                            goto LABEL_538;
                          }

                          p_isa = 0;
                          v40 = v514;
                          v119 = v459;
                          v132 = v443;
                          v19 = v455;
LABEL_539:

                          goto LABEL_540;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v172 = v66;
                          v173 = [BMFeatureDouble alloc];
                          v542 = 0;
                          v433 = [(BMFeatureDouble *)v173 initWithJSONDictionary:v172 error:&v542];
                          v174 = v542;
                          if (v174)
                          {
                            v434 = v172;
                            v40 = v514;
                            v119 = v459;
                            if (errorCopy3)
                            {
                              v174 = v174;
                              *errorCopy3 = v174;
                            }

                            p_isa = 0;
                            v19 = v455;
                            v132 = v443;
                            goto LABEL_539;
                          }

                          goto LABEL_87;
                        }

                        if (errorCopy3)
                        {
                          v474 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v435 = *MEMORY[0x1E698F240];
                          v609 = *MEMORY[0x1E696A578];
                          v433 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfOutgoingInteractionsWithConversation"];
                          v610 = v433;
                          v196 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v610 forKeys:&v609 count:1];
                          v197 = v435;
                          v434 = v196;
                          v198 = [v474 initWithDomain:v197 code:2 userInfo:?];
                          p_isa = 0;
                          *errorCopy3 = v198;
                          v40 = v514;
                          v19 = v455;
                          v119 = v459;
                          v132 = v443;
                          goto LABEL_539;
                        }

                        p_isa = 0;
                        v40 = v514;
                        v19 = v455;
LABEL_255:
                        v119 = v459;
                        v132 = v443;
LABEL_540:

                        goto LABEL_541;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v168 = v64;
                        v169 = [BMFeatureDouble alloc];
                        v543 = 0;
                        v436 = [(BMFeatureDouble *)v169 initWithJSONDictionary:v168 error:&v543];
                        v170 = v543;
                        if (v170)
                        {
                          v437 = v168;
                          v40 = v514;
                          v119 = v459;
                          v19 = v455;
                          if (errorCopy3)
                          {
                            v170 = v170;
                            *errorCopy3 = v170;
                          }

                          p_isa = 0;
                          v132 = v443;
                          goto LABEL_540;
                        }

                        goto LABEL_84;
                      }

                      if (errorCopy3)
                      {
                        v473 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v438 = *MEMORY[0x1E698F240];
                        v611 = *MEMORY[0x1E696A578];
                        v19 = v455;
                        v436 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfPeopleInPhotoWithConversation"];
                        v612 = v436;
                        v189 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v612 forKeys:&v611 count:1];
                        v190 = v438;
                        v437 = v189;
                        v191 = [v473 initWithDomain:v190 code:2 userInfo:?];
                        p_isa = 0;
                        *errorCopy3 = v191;
                        v40 = v514;
                        goto LABEL_255;
                      }

                      p_isa = 0;
                      v40 = v514;
                      v119 = v459;
                      v132 = v443;
                      v19 = v455;
LABEL_541:

                      goto LABEL_542;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v161 = v62;
                      v162 = [BMFeatureDouble alloc];
                      v544 = 0;
                      v163 = [(BMFeatureDouble *)v162 initWithJSONDictionary:v161 error:&v544];
                      v164 = v544;
                      v439 = v163;
                      if (v164)
                      {
                        v440 = v161;
                        v40 = v514;
                        v119 = v459;
                        if (errorCopy3)
                        {
                          v164 = v164;
                          *errorCopy3 = v164;
                        }

                        p_isa = 0;
                        v132 = v443;
                        goto LABEL_541;
                      }

                      v455 = v19;

                      goto LABEL_81;
                    }

                    if (errorCopy3)
                    {
                      v472 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v442 = *MEMORY[0x1E698F240];
                      v613 = *MEMORY[0x1E696A578];
                      v175 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v176 = v61;
                      v177 = v62;
                      v178 = v176;
                      v179 = v175;
                      v180 = objc_opt_class();
                      v181 = v178;
                      v62 = v177;
                      v61 = v181;
                      v439 = [v179 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v180, @"numberOfSharesOfDetectedPeopleWithConversation"];
                      v614 = v439;
                      v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v614 forKeys:&v613 count:1];
                      v183 = v442;
                      v440 = v182;
                      v184 = [v472 initWithDomain:v183 code:2 userInfo:?];
                      p_isa = 0;
                      *errorCopy3 = v184;
                      v40 = v514;
                      v119 = v459;
                      v132 = v443;
                      goto LABEL_541;
                    }

                    p_isa = 0;
LABEL_236:
                    v40 = v514;
                    v119 = v459;
                    v132 = v443;
LABEL_542:

                    v18 = v453;
                    v48 = v460;
                    v7 = v510;
                    goto LABEL_543;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v151 = v60;
                    v152 = [BMFeatureDouble alloc];
                    v545 = 0;
                    v153 = [(BMFeatureDouble *)v152 initWithJSONDictionary:v151 error:&v545];
                    v154 = v545;
                    if (v154)
                    {
                      v448 = v21;
                      v155 = v19;
                      v156 = v151;
                      v61 = v153;
                      v40 = v514;
                      v119 = v459;
                      if (errorCopy3)
                      {
                        v154 = v154;
                        *errorCopy3 = v154;
                      }

                      p_isa = 0;
                      v132 = v443;
                      v62 = v156;
                      v19 = v155;
                      v21 = v448;
                      goto LABEL_542;
                    }

                    v61 = v153;
                    goto LABEL_78;
                  }

                  if (errorCopy3)
                  {
                    v471 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v441 = *MEMORY[0x1E698F240];
                    v615 = *MEMORY[0x1E696A578];
                    v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesOfTopDomainURLWithConversation"];
                    v616 = v61;
                    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v616 forKeys:&v615 count:1];
                    v171 = [v471 initWithDomain:v441 code:2 userInfo:v62];
                    p_isa = 0;
                    *errorCopy3 = v171;
                    goto LABEL_236;
                  }

                  p_isa = 0;
                  v40 = v514;
                  v119 = v459;
                  v132 = v443;
LABEL_543:

                  v9 = v467;
                  goto LABEL_544;
                }

                if (!errorCopy3)
                {
                  p_isa = 0;
                  v7 = v510;
                  v40 = v514;
                  v18 = v453;
                  v19 = v456;
                  v119 = v459;
                  v142 = v454;
                  v185 = v32;
                  v48 = v460;
LABEL_546:

                  goto LABEL_547;
                }

                v157 = objc_alloc(MEMORY[0x1E696ABC0]);
                v158 = *MEMORY[0x1E698F240];
                v619 = *MEMORY[0x1E696A578];
                v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"numberOfSharesWithConversation"];
                v620 = v159;
                v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v620 forKeys:&v619 count:1];
                *errorCopy3 = [v157 initWithDomain:v158 code:2 userInfo:v160];

                v120 = v159;
                p_isa = 0;
                v115 = v32;
                v7 = v510;
                v40 = v514;
                v18 = v453;
                dictionaryCopy = v495;
                v19 = v456;
                v48 = v460;
                v119 = v459;
LABEL_545:

                v185 = v115;
                v142 = v454;
                goto LABEL_546;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v454 = v31;
                goto LABEL_37;
              }

              if (error)
              {
                v143 = objc_alloc(MEMORY[0x1E696ABC0]);
                v144 = v27;
                errorCopy4 = error;
                v146 = *MEMORY[0x1E698F240];
                v621 = *MEMORY[0x1E696A578];
                v115 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deprecatedField3"];
                v622 = v115;
                v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v622 forKeys:&v621 count:1];
                v148 = v146;
                v149 = v144;
                v150 = [v143 initWithDomain:v148 code:2 userInfo:v147];
                v120 = v147;
                v454 = 0;
                p_isa = 0;
                *errorCopy4 = v150;
                v40 = v514;
                v119 = v459;
                v18 = v29;
                v19 = v28;
                v21 = v149;
                v48 = v460;
                v7 = v510;
                goto LABEL_545;
              }

              p_isa = 0;
              v40 = v514;
              v119 = v459;
              v18 = v29;
              v19 = v28;
              v21 = v27;
              v142 = 0;
              v48 = v22;
LABEL_204:
              v7 = v510;
LABEL_547:

              v20 = v461;
              goto LABEL_548;
            }

            if (error)
            {
              v498 = objc_alloc(MEMORY[0x1E696ABC0]);
              v447 = v21;
              v135 = v18;
              v136 = v22;
              v137 = *MEMORY[0x1E698F240];
              v623 = *MEMORY[0x1E696A578];
              errorCopy5 = error;
              v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"deprecatedField2"];
              v624 = v139;
              v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v624 forKeys:&v623 count:1];
              v141 = v137;
              v48 = v136;
              v18 = v135;
              v142 = v139;
              v21 = v447;
              v462 = v140;
              v119 = 0;
              p_isa = 0;
              *errorCopy5 = [v498 initWithDomain:v141 code:2 userInfo:?];
              v40 = v514;
              goto LABEL_204;
            }

            v119 = 0;
            p_isa = 0;
            v40 = v514;
            v48 = v22;
LABEL_197:
            v7 = v510;
LABEL_548:

            goto LABEL_549;
          }

          if (error)
          {
            v492 = objc_alloc(MEMORY[0x1E696ABC0]);
            v470 = *MEMORY[0x1E698F240];
            v627 = *MEMORY[0x1E696A578];
            v105 = objc_alloc(MEMORY[0x1E696AEC0]);
            v106 = v19;
            v107 = v9;
            v108 = v106;
            errorCopy6 = error;
            v109 = v105;
            v110 = objc_opt_class();
            v14 = v518;
            v111 = v108;
            v9 = v107;
            v19 = v111;
            v48 = [v109 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v110, @"timeSinceLastIncomingInteraction"];
            v628 = v48;
            v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v628 forKeys:&v627 count:1];
            v113 = v492;
            v490 = v112;
            v114 = [v113 initWithDomain:v470 code:2 userInfo:?];
            p_isa = 0;
            *errorCopy6 = v114;
            v40 = v514;
LABEL_550:

            error = p_isa;
            goto LABEL_551;
          }

          v40 = v514;
          v14 = v518;
LABEL_551:

          self = selfCopy;
          goto LABEL_552;
        }

        v33 = v18;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = v18;
          v550 = 0;
          v35 = [[BMFeatureDouble alloc] initWithJSONDictionary:v34 error:&v550];
          v36 = v550;
          if (!v36)
          {

            v512 = v35;
            v18 = v33;
            goto LABEL_22;
          }

          if (error)
          {
            v36 = v36;
            *error = v36;
          }

          error = 0;
        }

        else
        {
          if (!error)
          {
            v14 = v518;
            v40 = v514;
LABEL_554:

            v8 = v517;
            goto LABEL_555;
          }

          v513 = objc_alloc(MEMORY[0x1E696ABC0]);
          v49 = *MEMORY[0x1E698F240];
          v631 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"timeSinceLastOutgoingInteraction"];
          v632 = v35;
          v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v632 forKeys:&v631 count:1];
          *error = [v513 initWithDomain:v49 code:2 userInfo:v50];

          error = 0;
          v34 = v33;
        }

        v14 = v518;
        v40 = v514;
LABEL_553:

        v33 = v34;
        v17 = v515;
        goto LABEL_554;
      }

      if (error)
      {
        v41 = objc_alloc(MEMORY[0x1E696ABC0]);
        v42 = *MEMORY[0x1E698F240];
        v633 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privatizedTransportBundleId"];
        v634 = v34;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v634 forKeys:&v633 count:1];
        v44 = v41;
        v35 = v43;
        v40 = 0;
        *error = [v44 initWithDomain:v42 code:2 userInfo:v43];
        error = 0;
        v14 = v518;
        goto LABEL_553;
      }

      v40 = 0;
      v14 = v518;
LABEL_555:

      goto LABEL_556;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v8;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:BMFeedbackTypeFromString(v15)];

      v9 = v16;
      goto LABEL_15;
    }

    if (error)
    {
      v55 = objc_alloc(MEMORY[0x1E696ABC0]);
      v516 = *MEMORY[0x1E698F240];
      v635 = *MEMORY[0x1E696A578];
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"feedbackDeprecated"];
      v636 = v40;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v636 forKeys:&v635 count:1];
      v57 = v55;
      v17 = v56;
      *error = [v57 initWithDomain:v516 code:2 userInfo:v56];
      error = 0;
      v14 = v518;
      v9 = 0;
      goto LABEL_555;
    }

    v14 = v518;
    v9 = 0;
LABEL_556:

    goto LABEL_557;
  }

  if (error)
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy2 = self;
    v12 = *MEMORY[0x1E698F240];
    v637 = *MEMORY[0x1E696A578];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"privatizedIdentifier"];
    v638[0] = v9;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v638 forKeys:&v637 count:1];
    v13 = v12;
    self = selfCopy2;
    v14 = 0;
    *error = [v10 initWithDomain:v13 code:2 userInfo:v8];
    error = 0;
    goto LABEL_556;
  }

  v14 = 0;
LABEL_557:

  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMCandidate *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_privatizedIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  PBDataWriterWriteUint32Field();
  if (self->_privatizedTransportBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_timeSinceLastOutgoingInteraction)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastOutgoingInteraction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceOutgoingInteractionNumber10)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceOutgoingInteractionNumber10 writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastIncomingInteraction)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastIncomingInteraction writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasDeprecatedField1)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDeprecatedField2)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasDeprecatedField3)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_numberOfSharesWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesFromCurrentAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesFromCurrentAppWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfTopDomainURLWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfTopDomainURLWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfDetectedPeopleWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfDetectedPeopleWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPeopleInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfOutgoingInteractionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfOutgoingInteractionsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfIncomingInteractionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfIncomingInteractionsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfInteractionsDuringTimePeriodWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfInteractionsDuringTimePeriodWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsFromCurrentAppWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasEverSharePlayedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_hasEverSharePlayedWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasSuggestedRank)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasCoreMLModelScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasFoundInChunk)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUpdatedInChunk)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_numberOfSharesOfPeopleInPhotoIoUWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPeopleInPhotoIoUWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPetsWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPetsWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfPetsInCurrentPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfPetsInCurrentPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfScenesInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfScenesInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfSharesOfDetectedScenesInPhotoWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesOfDetectedScenesInPhotoWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfTopicsSharedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTopicsSharedWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfAppsSharedFromWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfAppsSharedFromWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastPhotoShareWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastPhotoShareWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasSharedSensitiveContentWIthConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_hasSharedSensitiveContentWIthConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsInPhoneCallWithConversation)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfSharesFromAlbumPhotoBelongsToWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsFirstPartyApp)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_numberOfTimesSharedToTargetAppWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTimesSharedToTargetAppWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastShareWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastShareWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_timeSinceLastPhoneCallWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_timeSinceLastPhoneCallWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfDifferentFacesSharedWithConversation)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfDifferentFacesSharedWithConversation writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_numberOfTotalSharesToTargetApp)
  {
    PBDataWriterPlaceMark();
    [(BMFeatureDouble *)self->_numberOfTotalSharesToTargetApp writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v80.receiver = self;
  v80.super_class = BMCandidate;
  v5 = [(BMEventBase *)&v80 init];
  if (!v5)
  {
    goto LABEL_226;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_224;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v81) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v81 & 0x7F) << v7;
        if ((v81 & 0x80) == 0)
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
        goto LABEL_224;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 100)
      {
        switch(v15)
        {
          case 101:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 64;
            goto LABEL_188;
          case 102:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 72;
            goto LABEL_188;
          case 103:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 80;
            goto LABEL_188;
          case 104:
            v5->_hasDeprecatedField1 = 1;
            v81 = 0;
            v43 = [fromCopy position] + 8;
            if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 8, v44 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 328;
            goto LABEL_223;
          case 105:
            v5->_hasDeprecatedField2 = 1;
            v81 = 0;
            v41 = [fromCopy position] + 8;
            if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 8, v42 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 336;
            goto LABEL_223;
          case 106:
            v5->_hasDeprecatedField3 = 1;
            v81 = 0;
            v52 = [fromCopy position] + 8;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 8, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 344;
            goto LABEL_223;
          case 107:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 88;
            goto LABEL_188;
          case 108:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 96;
            goto LABEL_188;
          case 109:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 104;
            goto LABEL_188;
          case 110:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 112;
            goto LABEL_188;
          case 111:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 120;
            goto LABEL_188;
          case 112:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 128;
            goto LABEL_188;
          case 113:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 136;
            goto LABEL_188;
          case 114:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 144;
            goto LABEL_188;
          case 115:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 152;
            goto LABEL_188;
          case 116:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 160;
            goto LABEL_188;
          case 117:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 168;
            goto LABEL_188;
          case 118:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 176;
            goto LABEL_188;
          case 119:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 184;
            goto LABEL_188;
          case 120:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 192;
            goto LABEL_188;
          case 121:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v5->_hasSuggestedRank = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v48 = [fromCopy position] + 1;
              if (v48 >= [fromCopy position] && (v49 = objc_msgSend(fromCopy, "position") + 1, v49 <= objc_msgSend(fromCopy, "length")))
              {
                data5 = [fromCopy data];
                [data5 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v47 |= (v81 & 0x7F) << v45;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v13 = v46++ >= 9;
              if (v13)
              {
                v51 = 0;
                goto LABEL_205;
              }
            }

            if ([fromCopy hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v47;
            }

LABEL_205:
            v71 = 32;
            goto LABEL_214;
          case 122:
            v5->_hasCoreMLModelScore = 1;
            v81 = 0;
            v54 = [fromCopy position] + 8;
            if (v54 >= [fromCopy position] && (v55 = objc_msgSend(fromCopy, "position") + 8, v55 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            v73 = v81;
            v74 = 200;
LABEL_223:
            *(&v5->super.super.isa + v74) = v73;
            goto LABEL_189;
          case 123:
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v5->_hasFoundInChunk = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v59 = [fromCopy position] + 1;
              if (v59 >= [fromCopy position] && (v60 = objc_msgSend(fromCopy, "position") + 1, v60 <= objc_msgSend(fromCopy, "length")))
              {
                data7 = [fromCopy data];
                [data7 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v58 |= (v81 & 0x7F) << v56;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              v13 = v57++ >= 9;
              if (v13)
              {
                v51 = 0;
                goto LABEL_209;
              }
            }

            if ([fromCopy hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v58;
            }

LABEL_209:
            v71 = 36;
            goto LABEL_214;
          case 124:
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v5->_hasUpdatedInChunk = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v65 = [fromCopy position] + 1;
              if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 1, v66 <= objc_msgSend(fromCopy, "length")))
              {
                data8 = [fromCopy data];
                [data8 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v64 |= (v81 & 0x7F) << v62;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              v13 = v63++ >= 9;
              if (v13)
              {
                v51 = 0;
                goto LABEL_213;
              }
            }

            if ([fromCopy hasError])
            {
              v51 = 0;
            }

            else
            {
              v51 = v64;
            }

LABEL_213:
            v71 = 40;
LABEL_214:
            *(&v5->super.super.isa + v71) = v51;
            goto LABEL_189;
          case 125:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 208;
            goto LABEL_188;
          case 126:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 216;
            goto LABEL_188;
          case 127:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 224;
            goto LABEL_188;
          case 128:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 232;
            goto LABEL_188;
          case 129:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 240;
            goto LABEL_188;
          case 130:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 248;
            goto LABEL_188;
          case 131:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 256;
            goto LABEL_188;
          case 132:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 264;
            goto LABEL_188;
          case 133:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 272;
            goto LABEL_188;
          case 134:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v5->_hasIsInPhoneCallWithConversation = 1;
            while (1)
            {
              LOBYTE(v81) = 0;
              v37 = [fromCopy position] + 1;
              if (v37 >= [fromCopy position] && (v38 = objc_msgSend(fromCopy, "position") + 1, v38 <= objc_msgSend(fromCopy, "length")))
              {
                data9 = [fromCopy data];
                [data9 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v36 |= (v81 & 0x7F) << v34;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v13 = v35++ >= 9;
              if (v13)
              {
                LOBYTE(v26) = 0;
                goto LABEL_200;
              }
            }

            v26 = (v36 != 0) & ~[fromCopy hasError];
LABEL_200:
            v70 = 20;
            goto LABEL_201;
          case 135:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 280;
            goto LABEL_188;
          case 136:
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v5->_hasIsFirstPartyApp = 1;
            break;
          case 137:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 288;
            goto LABEL_188;
          case 138:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 296;
            goto LABEL_188;
          case 139:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 304;
            goto LABEL_188;
          case 140:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 312;
            goto LABEL_188;
          case 141:
            v81 = 0;
            v82 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_225;
            }

            v16 = [[BMFeatureDouble alloc] initByReadFrom:fromCopy];
            if (!v16)
            {
              goto LABEL_225;
            }

            v17 = 320;
LABEL_188:
            v68 = *(&v5->super.super.isa + v17);
            *(&v5->super.super.isa + v17) = v16;

            PBReaderRecallMark();
            goto LABEL_189;
          default:
            goto LABEL_191;
        }

        while (1)
        {
          LOBYTE(v81) = 0;
          v23 = [fromCopy position] + 1;
          if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v22 |= (v81 & 0x7F) << v20;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            LOBYTE(v26) = 0;
            goto LABEL_194;
          }
        }

        v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_194:
        v70 = 22;
LABEL_201:
        *(&v5->super.super.isa + v70) = v26;
        goto LABEL_189;
      }

      if (v15 == 1)
      {
        break;
      }

      if (v15 == 2)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        while (1)
        {
          LOBYTE(v81) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v81 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (v81 & 0x7F) << v27;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          if (v28++ > 8)
          {
            goto LABEL_197;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v29 > 4)
        {
LABEL_197:
          LODWORD(v29) = 0;
        }

        v5->_feedbackDeprecated = v29;
        goto LABEL_189;
      }

      if (v15 == 3)
      {
        v18 = PBReaderReadString();
        v19 = 56;
LABEL_73:
        v40 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        goto LABEL_189;
      }

LABEL_191:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_225;
      }

LABEL_189:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_224;
      }
    }

    v18 = PBReaderReadString();
    v19 = 48;
    goto LABEL_73;
  }

LABEL_224:
  if ([fromCopy hasError])
  {
LABEL_225:
    v78 = 0;
  }

  else
  {
LABEL_226:
    v78 = v5;
  }

  return v78;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  privatizedIdentifier = [(BMCandidate *)self privatizedIdentifier];
  v52 = BMFeedbackTypeAsString([(BMCandidate *)self feedbackDeprecated]);
  privatizedTransportBundleId = [(BMCandidate *)self privatizedTransportBundleId];
  timeSinceLastOutgoingInteraction = [(BMCandidate *)self timeSinceLastOutgoingInteraction];
  timeSinceOutgoingInteractionNumber10 = [(BMCandidate *)self timeSinceOutgoingInteractionNumber10];
  timeSinceLastIncomingInteraction = [(BMCandidate *)self timeSinceLastIncomingInteraction];
  v3 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField1];
  v47 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField2];
  v46 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self deprecatedField3];
  v45 = [v5 numberWithDouble:?];
  numberOfSharesWithConversation = [(BMCandidate *)self numberOfSharesWithConversation];
  numberOfSharesFromCurrentAppWithConversation = [(BMCandidate *)self numberOfSharesFromCurrentAppWithConversation];
  numberOfSharesOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfSharesOfTopDomainURLWithConversation];
  numberOfSharesOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedPeopleWithConversation];
  numberOfSharesOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoWithConversation];
  numberOfOutgoingInteractionsWithConversation = [(BMCandidate *)self numberOfOutgoingInteractionsWithConversation];
  numberOfIncomingInteractionsWithConversation = [(BMCandidate *)self numberOfIncomingInteractionsWithConversation];
  numberOfInteractionsDuringTimePeriodWithConversation = [(BMCandidate *)self numberOfInteractionsDuringTimePeriodWithConversation];
  numberOfEngagedSuggestionsWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsWithConversation];
  numberOfEngagedSuggestionsFromCurrentAppWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  numberOfEngagedSuggestionsOfTopDomainURLWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  numberOfEngagedSuggestionsOfDetectedPeopleWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation = [(BMCandidate *)self numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  hasEverSharePlayedWithConversation = [(BMCandidate *)self hasEverSharePlayedWithConversation];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate suggestedRank](self, "suggestedRank")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMCandidate *)self coreMLModelScore];
  v31 = [v6 numberWithDouble:?];
  v30 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate foundInChunk](self, "foundInChunk")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMCandidate updatedInChunk](self, "updatedInChunk")}];
  numberOfSharesOfPeopleInPhotoIoUWithConversation = [(BMCandidate *)self numberOfSharesOfPeopleInPhotoIoUWithConversation];
  numberOfSharesOfPetsWithConversation = [(BMCandidate *)self numberOfSharesOfPetsWithConversation];
  numberOfSharesOfPetsInCurrentPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfPetsInCurrentPhotoWithConversation];
  numberOfSharesOfScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfScenesInPhotoWithConversation];
  numberOfSharesOfDetectedScenesInPhotoWithConversation = [(BMCandidate *)self numberOfSharesOfDetectedScenesInPhotoWithConversation];
  numberOfTopicsSharedWithConversation = [(BMCandidate *)self numberOfTopicsSharedWithConversation];
  numberOfAppsSharedFromWithConversation = [(BMCandidate *)self numberOfAppsSharedFromWithConversation];
  timeSinceLastPhotoShareWithConversation = [(BMCandidate *)self timeSinceLastPhotoShareWithConversation];
  hasSharedSensitiveContentWIthConversation = [(BMCandidate *)self hasSharedSensitiveContentWIthConversation];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isInPhoneCallWithConversation](self, "isInPhoneCallWithConversation")}];
  numberOfSharesFromAlbumPhotoBelongsToWithConversation = [(BMCandidate *)self numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMCandidate isFirstPartyApp](self, "isFirstPartyApp")}];
  numberOfTimesSharedToTargetAppWithConversation = [(BMCandidate *)self numberOfTimesSharedToTargetAppWithConversation];
  timeSinceLastShareWithConversation = [(BMCandidate *)self timeSinceLastShareWithConversation];
  timeSinceLastPhoneCallWithConversation = [(BMCandidate *)self timeSinceLastPhoneCallWithConversation];
  numberOfDifferentFacesSharedWithConversation = [(BMCandidate *)self numberOfDifferentFacesSharedWithConversation];
  numberOfTotalSharesToTargetApp = [(BMCandidate *)self numberOfTotalSharesToTargetApp];
  v21 = [v20 initWithFormat:@"BMCandidate with privatizedIdentifier: %@, feedbackDeprecated: %@, privatizedTransportBundleId: %@, timeSinceLastOutgoingInteraction: %@, timeSinceOutgoingInteractionNumber10: %@, timeSinceLastIncomingInteraction: %@, deprecatedField1: %@, deprecatedField2: %@, deprecatedField3: %@, numberOfSharesWithConversation: %@, numberOfSharesFromCurrentAppWithConversation: %@, numberOfSharesOfTopDomainURLWithConversation: %@, numberOfSharesOfDetectedPeopleWithConversation: %@, numberOfSharesOfPeopleInPhotoWithConversation: %@, numberOfOutgoingInteractionsWithConversation: %@, numberOfIncomingInteractionsWithConversation: %@, numberOfInteractionsDuringTimePeriodWithConversation: %@, numberOfEngagedSuggestionsWithConversation: %@, numberOfEngagedSuggestionsFromCurrentAppWithConversation: %@, numberOfEngagedSuggestionsOfTopDomainURLWithConversation: %@, numberOfEngagedSuggestionsOfDetectedPeopleWithConversation: %@, numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation: %@, hasEverSharePlayedWithConversation: %@, suggestedRank: %@, coreMLModelScore: %@, foundInChunk: %@, updatedInChunk: %@, numberOfSharesOfPeopleInPhotoIoUWithConversation: %@, numberOfSharesOfPetsWithConversation: %@, numberOfSharesOfPetsInCurrentPhotoWithConversation: %@, numberOfSharesOfScenesInPhotoWithConversation: %@, numberOfSharesOfDetectedScenesInPhotoWithConversation: %@, numberOfTopicsSharedWithConversation: %@, numberOfAppsSharedFromWithConversation: %@, timeSinceLastPhotoShareWithConversation: %@, hasSharedSensitiveContentWIthConversation: %@, isInPhoneCallWithConversation: %@, numberOfSharesFromAlbumPhotoBelongsToWithConversation: %@, isFirstPartyApp: %@, numberOfTimesSharedToTargetAppWithConversation: %@, timeSinceLastShareWithConversation: %@, timeSinceLastPhoneCallWithConversation: %@, numberOfDifferentFacesSharedWithConversation: %@, numberOfTotalSharesToTargetApp: %@", privatizedIdentifier, v52, privatizedTransportBundleId, timeSinceLastOutgoingInteraction, timeSinceOutgoingInteractionNumber10, timeSinceLastIncomingInteraction, v47, v46, v45, numberOfSharesWithConversation, numberOfSharesFromCurrentAppWithConversation, numberOfSharesOfTopDomainURLWithConversation, numberOfSharesOfDetectedPeopleWithConversation, numberOfSharesOfPeopleInPhotoWithConversation, numberOfOutgoingInteractionsWithConversation, numberOfIncomingInteractionsWithConversation, numberOfInteractionsDuringTimePeriodWithConversation, numberOfEngagedSuggestionsWithConversation, numberOfEngagedSuggestionsFromCurrentAppWithConversation, numberOfEngagedSuggestionsOfTopDomainURLWithConversation, numberOfEngagedSuggestionsOfDetectedPeopleWithConversation, numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation, hasEverSharePlayedWithConversation, v18, v31, v30, v29, numberOfSharesOfPeopleInPhotoIoUWithConversation, numberOfSharesOfPetsWithConversation, numberOfSharesOfPetsInCurrentPhotoWithConversation, numberOfSharesOfScenesInPhotoWithConversation, numberOfSharesOfDetectedScenesInPhotoWithConversation, numberOfTopicsSharedWithConversation, numberOfAppsSharedFromWithConversation, timeSinceLastPhotoShareWithConversation, hasSharedSensitiveContentWIthConversation, v16, numberOfSharesFromAlbumPhotoBelongsToWithConversation, v9, numberOfTimesSharedToTargetAppWithConversation, timeSinceLastShareWithConversation, timeSinceLastPhoneCallWithConversation, numberOfDifferentFacesSharedWithConversation, numberOfTotalSharesToTargetApp];

  return v21;
}

- (BMCandidate)initWithPrivatizedIdentifier:(id)identifier feedbackDeprecated:(int)deprecated privatizedTransportBundleId:(id)id timeSinceLastOutgoingInteraction:(id)interaction timeSinceOutgoingInteractionNumber10:(id)number10 timeSinceLastIncomingInteraction:(id)incomingInteraction deprecatedField1:(id)field1 deprecatedField2:(id)self0 deprecatedField3:(id)self1 numberOfSharesWithConversation:(id)self2 numberOfSharesFromCurrentAppWithConversation:(id)self3 numberOfSharesOfTopDomainURLWithConversation:(id)self4 numberOfSharesOfDetectedPeopleWithConversation:(id)self5 numberOfSharesOfPeopleInPhotoWithConversation:(id)self6 numberOfOutgoingInteractionsWithConversation:(id)self7 numberOfIncomingInteractionsWithConversation:(id)self8 numberOfInteractionsDuringTimePeriodWithConversation:(id)self9 numberOfEngagedSuggestionsWithConversation:(id)suggestionsWithConversation numberOfEngagedSuggestionsFromCurrentAppWithConversation:(id)appWithConversation numberOfEngagedSuggestionsOfTopDomainURLWithConversation:(id)rLWithConversation numberOfEngagedSuggestionsOfDetectedPeopleWithConversation:(id)detectedPeopleWithConversation numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation:(id)inPhotoWithConversation hasEverSharePlayedWithConversation:(id)playedWithConversation suggestedRank:(id)rank coreMLModelScore:(id)score foundInChunk:(id)chunk updatedInChunk:(id)inChunk numberOfSharesOfPeopleInPhotoIoUWithConversation:(id)identifier0 numberOfSharesOfPetsWithConversation:(id)identifier1 numberOfSharesOfPetsInCurrentPhotoWithConversation:(id)identifier2 numberOfSharesOfScenesInPhotoWithConversation:(id)identifier3 numberOfSharesOfDetectedScenesInPhotoWithConversation:(id)identifier4 numberOfTopicsSharedWithConversation:(id)identifier5 numberOfAppsSharedFromWithConversation:(id)identifier6 timeSinceLastPhotoShareWithConversation:(id)identifier7 hasSharedSensitiveContentWIthConversation:(id)identifier8 isInPhoneCallWithConversation:(id)identifier9 numberOfSharesFromAlbumPhotoBelongsToWithConversation:(id)deprecated0 isFirstPartyApp:(id)deprecated1 numberOfTimesSharedToTargetAppWithConversation:(id)deprecated2 timeSinceLastShareWithConversation:(id)deprecated3 timeSinceLastPhoneCallWithConversation:(id)deprecated4 numberOfDifferentFacesSharedWithConversation:(id)deprecated5 numberOfTotalSharesToTargetApp:(id)deprecated6
{
  identifierCopy = identifier;
  idCopy = id;
  idCopy2 = id;
  interactionCopy = interaction;
  interactionCopy2 = interaction;
  number10Copy = number10;
  number10Copy2 = number10;
  incomingInteractionCopy = incomingInteraction;
  incomingInteractionCopy2 = incomingInteraction;
  field1Copy = field1;
  field2Copy = field2;
  field3Copy = field3;
  conversationCopy = conversation;
  withConversationCopy = withConversation;
  lWithConversationCopy = lWithConversation;
  peopleWithConversationCopy = peopleWithConversation;
  photoWithConversationCopy = photoWithConversation;
  interactionsWithConversationCopy = interactionsWithConversation;
  incomingInteractionsWithConversationCopy = incomingInteractionsWithConversation;
  periodWithConversationCopy = periodWithConversation;
  suggestionsWithConversationCopy = suggestionsWithConversation;
  appWithConversationCopy = appWithConversation;
  rLWithConversationCopy = rLWithConversation;
  detectedPeopleWithConversationCopy = detectedPeopleWithConversation;
  inPhotoWithConversationCopy = inPhotoWithConversation;
  playedWithConversationCopy = playedWithConversation;
  rankCopy = rank;
  scoreCopy = score;
  chunkCopy = chunk;
  inChunkCopy = inChunk;
  uWithConversationCopy = uWithConversation;
  petsWithConversationCopy = petsWithConversation;
  currentPhotoWithConversationCopy = currentPhotoWithConversation;
  scenesInPhotoWithConversationCopy = scenesInPhotoWithConversation;
  detectedScenesInPhotoWithConversationCopy = detectedScenesInPhotoWithConversation;
  sharedWithConversationCopy = sharedWithConversation;
  fromWithConversationCopy = fromWithConversation;
  shareWithConversationCopy = shareWithConversation;
  ithConversationCopy = ithConversation;
  callWithConversationCopy = callWithConversation;
  toWithConversationCopy = toWithConversation;
  appCopy = app;
  targetAppWithConversationCopy = targetAppWithConversation;
  lastShareWithConversationCopy = lastShareWithConversation;
  phoneCallWithConversationCopy = phoneCallWithConversation;
  facesSharedWithConversationCopy = facesSharedWithConversation;
  v58 = inChunkCopy;
  v59 = callWithConversationCopy;
  targetAppCopy = targetApp;
  v111.receiver = self;
  v111.super_class = BMCandidate;
  v60 = [(BMEventBase *)&v111 init];
  if (v60)
  {
    v60->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v60->_privatizedIdentifier, identifier);
    v60->_feedbackDeprecated = deprecated;
    objc_storeStrong(&v60->_privatizedTransportBundleId, idCopy);
    objc_storeStrong(&v60->_timeSinceLastOutgoingInteraction, interactionCopy);
    objc_storeStrong(&v60->_timeSinceOutgoingInteractionNumber10, number10Copy);
    objc_storeStrong(&v60->_timeSinceLastIncomingInteraction, incomingInteractionCopy);
    if (field1Copy)
    {
      v60->_hasDeprecatedField1 = 1;
      [field1Copy doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField1 = 0;
      v61 = -1.0;
    }

    v60->_deprecatedField1 = v61;
    if (field2Copy)
    {
      v60->_hasDeprecatedField2 = 1;
      [field2Copy doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField2 = 0;
      v62 = -1.0;
    }

    v60->_deprecatedField2 = v62;
    if (field3Copy)
    {
      v60->_hasDeprecatedField3 = 1;
      [field3Copy doubleValue];
    }

    else
    {
      v60->_hasDeprecatedField3 = 0;
      v63 = -1.0;
    }

    v60->_deprecatedField3 = v63;
    objc_storeStrong(&v60->_numberOfSharesWithConversation, conversation);
    objc_storeStrong(&v60->_numberOfSharesFromCurrentAppWithConversation, withConversation);
    objc_storeStrong(&v60->_numberOfSharesOfTopDomainURLWithConversation, lWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfDetectedPeopleWithConversation, peopleWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfPeopleInPhotoWithConversation, photoWithConversation);
    objc_storeStrong(&v60->_numberOfOutgoingInteractionsWithConversation, interactionsWithConversation);
    objc_storeStrong(&v60->_numberOfIncomingInteractionsWithConversation, incomingInteractionsWithConversation);
    objc_storeStrong(&v60->_numberOfInteractionsDuringTimePeriodWithConversation, periodWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsWithConversation, suggestionsWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsFromCurrentAppWithConversation, appWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfTopDomainURLWithConversation, rLWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfDetectedPeopleWithConversation, detectedPeopleWithConversation);
    objc_storeStrong(&v60->_numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation, inPhotoWithConversation);
    objc_storeStrong(&v60->_hasEverSharePlayedWithConversation, playedWithConversation);
    if (rankCopy)
    {
      v60->_hasSuggestedRank = 1;
      intValue = [rankCopy intValue];
    }

    else
    {
      v60->_hasSuggestedRank = 0;
      intValue = -1;
    }

    v60->_suggestedRank = intValue;
    if (scoreCopy)
    {
      v60->_hasCoreMLModelScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v60->_hasCoreMLModelScore = 0;
      v65 = -1.0;
    }

    v60->_coreMLModelScore = v65;
    if (chunkCopy)
    {
      v60->_hasFoundInChunk = 1;
      intValue2 = [chunkCopy intValue];
    }

    else
    {
      v60->_hasFoundInChunk = 0;
      intValue2 = -1;
    }

    v60->_foundInChunk = intValue2;
    if (v58)
    {
      v60->_hasUpdatedInChunk = 1;
      intValue3 = [v58 intValue];
    }

    else
    {
      v60->_hasUpdatedInChunk = 0;
      intValue3 = -1;
    }

    v60->_updatedInChunk = intValue3;
    objc_storeStrong(&v60->_numberOfSharesOfPeopleInPhotoIoUWithConversation, uWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfPetsWithConversation, petsWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfPetsInCurrentPhotoWithConversation, currentPhotoWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfScenesInPhotoWithConversation, scenesInPhotoWithConversation);
    objc_storeStrong(&v60->_numberOfSharesOfDetectedScenesInPhotoWithConversation, detectedScenesInPhotoWithConversation);
    objc_storeStrong(&v60->_numberOfTopicsSharedWithConversation, sharedWithConversation);
    objc_storeStrong(&v60->_numberOfAppsSharedFromWithConversation, fromWithConversation);
    objc_storeStrong(&v60->_timeSinceLastPhotoShareWithConversation, shareWithConversation);
    objc_storeStrong(&v60->_hasSharedSensitiveContentWIthConversation, ithConversation);
    if (v59)
    {
      v60->_hasIsInPhoneCallWithConversation = 1;
      v60->_isInPhoneCallWithConversation = [v59 BOOLValue];
    }

    else
    {
      v60->_hasIsInPhoneCallWithConversation = 0;
      v60->_isInPhoneCallWithConversation = 0;
    }

    objc_storeStrong(&v60->_numberOfSharesFromAlbumPhotoBelongsToWithConversation, toWithConversation);
    if (appCopy)
    {
      v60->_hasIsFirstPartyApp = 1;
      v60->_isFirstPartyApp = [appCopy BOOLValue];
    }

    else
    {
      v60->_hasIsFirstPartyApp = 0;
      v60->_isFirstPartyApp = 0;
    }

    objc_storeStrong(&v60->_numberOfTimesSharedToTargetAppWithConversation, targetAppWithConversation);
    objc_storeStrong(&v60->_timeSinceLastShareWithConversation, lastShareWithConversation);
    objc_storeStrong(&v60->_timeSinceLastPhoneCallWithConversation, phoneCallWithConversation);
    objc_storeStrong(&v60->_numberOfDifferentFacesSharedWithConversation, facesSharedWithConversation);
    objc_storeStrong(&v60->_numberOfTotalSharesToTargetApp, targetApp);
  }

  return v60;
}

+ (id)protoFields
{
  v48[44] = *MEMORY[0x1E69E9840];
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedIdentifier" number:1 type:13 subMessageClass:0];
  v48[0] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"feedbackDeprecated" number:2 type:4 subMessageClass:0];
  v48[1] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"privatizedTransportBundleId" number:3 type:13 subMessageClass:0];
  v48[2] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastOutgoingInteraction" number:101 type:14 subMessageClass:objc_opt_class()];
  v48[3] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceOutgoingInteractionNumber10" number:102 type:14 subMessageClass:objc_opt_class()];
  v48[4] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastIncomingInteraction" number:103 type:14 subMessageClass:objc_opt_class()];
  v48[5] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deprecatedField1" number:104 type:0 subMessageClass:0];
  v48[6] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deprecatedField2" number:105 type:0 subMessageClass:0];
  v48[7] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deprecatedField3" number:106 type:0 subMessageClass:0];
  v48[8] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesWithConversation" number:107 type:14 subMessageClass:objc_opt_class()];
  v48[9] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesFromCurrentAppWithConversation" number:108 type:14 subMessageClass:objc_opt_class()];
  v48[10] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfTopDomainURLWithConversation" number:109 type:14 subMessageClass:objc_opt_class()];
  v48[11] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfDetectedPeopleWithConversation" number:110 type:14 subMessageClass:objc_opt_class()];
  v48[12] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPeopleInPhotoWithConversation" number:111 type:14 subMessageClass:objc_opt_class()];
  v48[13] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfOutgoingInteractionsWithConversation" number:112 type:14 subMessageClass:objc_opt_class()];
  v48[14] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfIncomingInteractionsWithConversation" number:113 type:14 subMessageClass:objc_opt_class()];
  v48[15] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfInteractionsDuringTimePeriodWithConversation" number:114 type:14 subMessageClass:objc_opt_class()];
  v48[16] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsWithConversation" number:115 type:14 subMessageClass:objc_opt_class()];
  v48[17] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation" number:116 type:14 subMessageClass:objc_opt_class()];
  v48[18] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation" number:117 type:14 subMessageClass:objc_opt_class()];
  v48[19] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation" number:118 type:14 subMessageClass:objc_opt_class()];
  v48[20] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation" number:119 type:14 subMessageClass:objc_opt_class()];
  v48[21] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverSharePlayedWithConversation" number:120 type:14 subMessageClass:objc_opt_class()];
  v48[22] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedRank" number:121 type:2 subMessageClass:0];
  v48[23] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"coreMLModelScore" number:122 type:0 subMessageClass:0];
  v48[24] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"foundInChunk" number:123 type:2 subMessageClass:0];
  v48[25] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updatedInChunk" number:124 type:2 subMessageClass:0];
  v48[26] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPeopleInPhotoIoUWithConversation" number:125 type:14 subMessageClass:objc_opt_class()];
  v48[27] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPetsWithConversation" number:126 type:14 subMessageClass:objc_opt_class()];
  v48[28] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfPetsInCurrentPhotoWithConversation" number:127 type:14 subMessageClass:objc_opt_class()];
  v48[29] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfScenesInPhotoWithConversation" number:128 type:14 subMessageClass:objc_opt_class()];
  v48[30] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesOfDetectedScenesInPhotoWithConversation" number:129 type:14 subMessageClass:objc_opt_class()];
  v48[31] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTopicsSharedWithConversation" number:130 type:14 subMessageClass:objc_opt_class()];
  v48[32] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfAppsSharedFromWithConversation" number:131 type:14 subMessageClass:objc_opt_class()];
  v48[33] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastPhotoShareWithConversation" number:132 type:14 subMessageClass:objc_opt_class()];
  v48[34] = v13;
  v12 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasSharedSensitiveContentWIthConversation" number:133 type:14 subMessageClass:objc_opt_class()];
  v48[35] = v12;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInPhoneCallWithConversation" number:134 type:12 subMessageClass:0];
  v48[36] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation" number:135 type:14 subMessageClass:objc_opt_class()];
  v48[37] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFirstPartyApp" number:136 type:12 subMessageClass:0];
  v48[38] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTimesSharedToTargetAppWithConversation" number:137 type:14 subMessageClass:objc_opt_class()];
  v48[39] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastShareWithConversation" number:138 type:14 subMessageClass:objc_opt_class()];
  v48[40] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSinceLastPhoneCallWithConversation" number:139 type:14 subMessageClass:objc_opt_class()];
  v48[41] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfDifferentFacesSharedWithConversation" number:140 type:14 subMessageClass:objc_opt_class()];
  v48[42] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTotalSharesToTargetApp" number:141 type:14 subMessageClass:objc_opt_class()];
  v48[43] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:44];

  return v10;
}

+ (id)columns
{
  v48[44] = *MEMORY[0x1E69E9840];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedIdentifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"feedbackDeprecated" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"privatizedTransportBundleId" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastOutgoingInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_895_86735];
  v43 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceOutgoingInteractionNumber10_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_897_86737];
  v42 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastIncomingInteraction_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_899];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deprecatedField1" dataType:1 requestOnly:0 fieldNumber:104 protoDataType:0 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deprecatedField2" dataType:1 requestOnly:0 fieldNumber:105 protoDataType:0 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deprecatedField3" dataType:1 requestOnly:0 fieldNumber:106 protoDataType:0 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_901];
  v37 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesFromCurrentAppWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_903];
  v36 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfTopDomainURLWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_905];
  v35 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfDetectedPeopleWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_907];
  v34 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPeopleInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_909];
  v33 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfOutgoingInteractionsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_911];
  v32 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfIncomingInteractionsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_913];
  v31 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfInteractionsDuringTimePeriodWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_915];
  v30 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_917_86748];
  v29 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_919_86749];
  v28 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_921_86750];
  v27 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_923];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_925];
  v25 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"hasEverSharePlayedWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_927];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedRank" dataType:0 requestOnly:0 fieldNumber:121 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"coreMLModelScore" dataType:1 requestOnly:0 fieldNumber:122 protoDataType:0 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"foundInChunk" dataType:0 requestOnly:0 fieldNumber:123 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updatedInChunk" dataType:0 requestOnly:0 fieldNumber:124 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPeopleInPhotoIoUWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_929];
  v19 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPetsWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_931];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfPetsInCurrentPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_933];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfScenesInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_935];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesOfDetectedScenesInPhotoWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_937];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfTopicsSharedWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_939];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfAppsSharedFromWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_941];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastPhotoShareWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_943];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"hasSharedSensitiveContentWIthConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_945];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInPhoneCallWithConversation" dataType:0 requestOnly:0 fieldNumber:134 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfSharesFromAlbumPhotoBelongsToWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_947];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFirstPartyApp" dataType:0 requestOnly:0 fieldNumber:136 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfTimesSharedToTargetAppWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_949];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastShareWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_951];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"timeSinceLastPhoneCallWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_953];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfDifferentFacesSharedWithConversation_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_955];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"numberOfTotalSharesToTargetApp_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_957];
  v48[0] = v47;
  v48[1] = v46;
  v48[2] = v45;
  v48[3] = v44;
  v48[4] = v43;
  v48[5] = v42;
  v48[6] = v41;
  v48[7] = v40;
  v48[8] = v39;
  v48[9] = v38;
  v48[10] = v37;
  v48[11] = v36;
  v48[12] = v35;
  v48[13] = v34;
  v48[14] = v33;
  v48[15] = v32;
  v48[16] = v31;
  v48[17] = v30;
  v48[18] = v29;
  v48[19] = v28;
  v48[20] = v27;
  v48[21] = v26;
  v48[22] = v25;
  v48[23] = v24;
  v48[24] = v23;
  v48[25] = v22;
  v48[26] = v21;
  v48[27] = v20;
  v48[28] = v19;
  v48[29] = v18;
  v48[30] = v17;
  v48[31] = v16;
  v48[32] = v15;
  v48[33] = v14;
  v48[34] = v2;
  v48[35] = v3;
  v48[36] = v4;
  v48[37] = v5;
  v48[38] = v13;
  v48[39] = v6;
  v48[40] = v7;
  v48[41] = v8;
  v48[42] = v12;
  v48[43] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:44];

  return v11;
}

id __22__BMCandidate_columns__block_invoke_32(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfTotalSharesToTargetApp];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_31(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfDifferentFacesSharedWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_30(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceLastPhoneCallWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceLastShareWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_28(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfTimesSharedToTargetAppWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_27(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesFromAlbumPhotoBelongsToWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_26(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 hasSharedSensitiveContentWIthConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_25(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceLastPhotoShareWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_24(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfAppsSharedFromWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_23(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfTopicsSharedWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_22(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfDetectedScenesInPhotoWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_21(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfScenesInPhotoWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_20(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfPetsInCurrentPhotoWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_19(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfPetsWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_18(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfPeopleInPhotoIoUWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_17(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 hasEverSharePlayedWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_16(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_15(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfEngagedSuggestionsOfDetectedPeopleWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_14(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfEngagedSuggestionsOfTopDomainURLWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfEngagedSuggestionsFromCurrentAppWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_12(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfEngagedSuggestionsWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_11(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfInteractionsDuringTimePeriodWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfIncomingInteractionsWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfOutgoingInteractionsWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfPeopleInPhotoWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfDetectedPeopleWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesOfTopDomainURLWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesFromCurrentAppWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 numberOfSharesWithConversation];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceLastIncomingInteraction];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceOutgoingInteractionNumber10];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __22__BMCandidate_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 timeSinceLastOutgoingInteraction];
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

    v8 = [[BMCandidate alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end