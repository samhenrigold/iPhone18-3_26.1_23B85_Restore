@interface PGPhotosChallengeMetricEvent
+ (BOOL)_isHighPrecisionCityscapeAsset:(id)asset;
+ (BOOL)_isHighPrecisionLandscapeAsset:(id)asset;
+ (id)_isVIPStringForResult:(BOOL)result;
+ (id)_passedFilteringStringForResult:(BOOL)result;
+ (id)_passedHighPrecisionStringForResult:(BOOL)result;
+ (id)allMetricEventsWithGraphManager:(id)manager;
+ (id)meaningLabelFromMeaningQuestionMetricType:(unsigned __int16)type;
+ (id)personActivityMeaningLabelFromMeaningQuestionMetricType:(unsigned __int16)type;
+ (id)questionEntityTypesFromQuestionMetricType:(unsigned __int16)type;
+ (id)relationshipLabelFromRelationshipQuestionMetricType:(unsigned __int16)type;
+ (id)stringFromQuestionMetricType:(unsigned __int16)type;
+ (unint64_t)algorithmVersionFromQuestionMetricType:(unsigned __int16)type withEventLabelingConfiguration:(id)configuration;
+ (unint64_t)meaningInferenceAlgorithmForQuestionMetricType:(unsigned __int16)type withEventLabelingConfiguration:(id)configuration;
+ (unsigned)questionTypeFromQuestionMetricType:(unsigned __int16)type;
+ (unsigned)wallpaperSuggestionSubtypeForQuestionMetricType:(unsigned __int16)type;
- (BOOL)_relationshipInferenceResultForPersonNode:(id)node questionMetricType:(unsigned __int16)type useGraphInference:(BOOL)inference;
- (BOOL)_relationshipTagInferenceResultForPersonNode:(id)node questionMetricType:(unsigned __int16)type;
- (BOOL)_relatonshipInferenceResultForPersonNode:(id)node questionMetricType:(unsigned __int16)type;
- (PGPhotosChallengeMetricEvent)initWithWorkingContext:(id)context questionMetricType:(unsigned __int16)type metricEventFetchHelper:(id)helper;
- (id)_ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:(id)ds;
- (id)_businessInferenceResultsForBusinessIdByAssetIds:(id)ids;
- (id)_currentPetInferenceResultsForPetUUIDs:(id)ds;
- (id)_featuredPhotoInferenceResultsForAnswerDateByAssetIds:(id)ids questionMetricType:(unsigned __int16)type;
- (id)_fetchPersonFromAsset:(id)asset detectionType:(signed __int16)type;
- (id)_frequentLocationInferenceResultsForLocationByAssetIds:(id)ids locationType:(id)type;
- (id)_getInferredReasonFromMatchedConditions:(id)conditions withFallbackReason:(id)reason;
- (id)_groundTruthByAssetIdentifiersFromQuestions:(id)questions;
- (id)_groundTruthByPersonUUIDFromQuestions:(id)questions;
- (id)_groundTruthForAgeCategoryFromQuestions:(id)questions;
- (id)_groundTruthForBusinessFromQuestions:(id)questions;
- (id)_groundTruthForCurrentPetInferenceFromQuestions:(id)questions;
- (id)_groundTruthForFeaturedPhotoFromQuestions:(id)questions;
- (id)_groundTruthForFrequentLocationFromQuestions:(id)questions;
- (id)_groundTruthForHolidayFromQuestions:(id)questions;
- (id)_groundTruthForMusicQualityQuestions:(id)questions;
- (id)_groundTruthForNamingFromQuestions:(id)questions;
- (id)_groundTruthForPublicEventFromQuestions:(id)questions;
- (id)_groundTruthForStoryPromptSuggestionsQuestions:(id)questions;
- (id)_groundTruthForTitlingQuestions:(id)questions questionType:(unsigned __int16)type;
- (id)_groundTruthForTripTitlingQuestions:(id)questions;
- (id)_holidayInferenceResultByEntityIdentifierForHolidayQuestions:(id)questions;
- (id)_inferredReasonForLocationRepresentativeAssets:(id)assets;
- (id)_inferredResultsForEntityIdentifiers:(id)identifiers withDefaultBoolValue:(BOOL)value;
- (id)_inferredResultsForLocationRepresentativeAssets:(id)assets;
- (id)_locationRepresentativeAssetFromQuestion:(id)question;
- (id)_locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)questions;
- (id)_meaningInferenceResultsForMeaningLabel:(id)label assetIds:(id)ids;
- (id)_meaningInferenceResultsForMeaningLabel:(id)label momentUUIDs:(id)ds isEventLabelingMetricEvent:(BOOL)event;
- (id)_meaningLabelsOfMomentNode:(id)node forMeaningLabel:(id)label isEventLabelingMetricEvent:(BOOL)event;
- (id)_namingInferenceResultsForContactIdentifierByPersonUUIDs:(id)ds;
- (id)_personActivityMeaningInferenceResultsForPersonActivityMeaningLabel:(id)label assetIds:(id)ids;
- (id)_publicEventInferenceResultsForPublicEventIdByAssetIds:(id)ids;
- (id)_reasonByAssetEntityIdentifierForHolidayQuestions:(id)questions;
- (id)_reasonResultByAssetEntityIdentifierForMusicQualityQuestions:(id)questions;
- (id)_reasonResultByAssetEntityIdentifierForStoryPromptSuggestionsQuestions:(id)questions;
- (id)_reasonResultByAssetEntityIdentifierForTitlingQuestions:(id)questions questionType:(unsigned __int16)type;
- (id)_reasonResultByAssetSyndicationIdentifierForQuestions:(id)questions;
- (id)_reasonResultsForPublicEventQuestions:(id)questions;
- (id)_reasonResultsForQuestions:(id)questions inferenceResults:(id)results inferenceReasons:(id)reasons;
- (id)_relationshipInferenceResultsForQuestionMetricType:(unsigned __int16)type personUUIDs:(id)ds useGraphInference:(BOOL)inference;
- (id)_syndicatedAssetFromQuestion:(id)question;
- (id)_syndicatedAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)questions;
- (id)_syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:(id)identifiers;
- (id)_tripTitlingReasonResultByAssetEntityIdentifierForQuestions:(id)questions;
- (id)_vipPersonIdentifiersWithCurationContext:(id)context;
- (id)_vipPetIdentifiersWithCurationContext:(id)context;
- (id)groundTruthByMomentUUIDFromExhaustiveMomentLabelingQuestions:(id)questions meaningLabel:(id)label withMetricsCache:(id)cache;
- (id)memoryCategorySubCategoryByQuestionMetricType;
- (id)payload;
- (id)payloadForVerification;
- (id)preparePayloadForPrecisionRecallEval:(id)eval withEvaluations:(id)evaluations;
- (unint64_t)_relationshipTagFromQuestionMetricType:(unsigned __int16)type;
- (void)_deleteOutdatedPetQuestionsWithValidPetUUIDs:(id)ds;
- (void)_gatherDeferredSuggestionInferencesForQuestions:(id)questions momentUUIDS:(id)s inferenceResults:(id)results reasonResultByAssetIdentifier:(id)identifier progressBlock:(id)block;
- (void)_gatherMetricsForAgeCategoryQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForBusinessQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForCameraLibrarySwitchQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForExhaustiveMomentLabelingQuestions:(id)questions questionMetricType:(unsigned __int16)type isEventLabelingMetricEvent:(BOOL)event progressBlock:(id)block;
- (void)_gatherMetricsForExternalAssetRelevanceQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForFeaturedPhotoQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForFrequentLocationQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForHighlightTitlingQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForHolidayQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForLocationRepresentativeAssetQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForMeaningQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForMemoryMusicQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForMemoryQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForNamingQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForPersonActivityMeaningQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherMetricsForPetKnowledgeQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForPetQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForPublicEventQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForRelationshipQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block useGraphInference:(BOOL)inference;
- (void)_gatherMetricsForSharedLibraryAssetsQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForSharedLibraryStartQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForStoryPromptSuggestionsQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForSyndicatedAssetsQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForTripKeyQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForTripTitlingQuestions:(id)questions progressBlock:(id)block;
- (void)_gatherMetricsForWallpaperQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block;
- (void)_gatherNearLiveSuggestionInferencesForQuestions:(id)questions inferenceResults:(id)results reasonResultByAssetIdentifier:(id)identifier progressBlock:(id)block;
- (void)gatherMetricsWithProgressBlock:(id)block;
@end

@implementation PGPhotosChallengeMetricEvent

- (id)preparePayloadForPrecisionRecallEval:(id)eval withEvaluations:(id)evaluations
{
  v28 = *MEMORY[0x277D85DE8];
  evalCopy = eval;
  evaluationsCopy = evaluations;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [evaluationsCopy evaluationByReason];
  v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        evaluationByReason = [evaluationsCopy evaluationByReason];
        v13 = [evaluationByReason objectForKeyedSubscript:v11];

        payload = [evalCopy payload];
        v15 = [payload mutableCopy];

        [v15 setObject:v11 forKeyedSubscript:@"questionInfo"];
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "falseNegatives")}];
        [v15 setObject:v16 forKeyedSubscript:@"falseNegativeCount"];

        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "falsePositives")}];
        [v15 setObject:v17 forKeyedSubscript:@"falsePositiveCount"];

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "trueNegatives")}];
        [v15 setObject:v18 forKeyedSubscript:@"trueNegativeCount"];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "truePositives")}];
        [v15 setObject:v19 forKeyedSubscript:@"truePositiveCount"];

        [v6 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)memoryCategorySubCategoryByQuestionMetricType
{
  v5[73] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284484938;
  v4[1] = &unk_284484980;
  v5[0] = &unk_284486858;
  v5[1] = &unk_284486870;
  v4[2] = &unk_2844849C8;
  v4[3] = &unk_2844849E0;
  v5[2] = &unk_284486888;
  v5[3] = &unk_2844868A0;
  v4[4] = &unk_284484A10;
  v4[5] = &unk_284484A58;
  v5[4] = &unk_2844868B8;
  v5[5] = &unk_2844868D0;
  v4[6] = &unk_284484A88;
  v4[7] = &unk_284484AA0;
  v5[6] = &unk_2844868E8;
  v5[7] = &unk_284486900;
  v4[8] = &unk_284484AD0;
  v4[9] = &unk_284484B00;
  v5[8] = &unk_284486918;
  v5[9] = &unk_284486930;
  v4[10] = &unk_284484B30;
  v4[11] = &unk_284484B48;
  v5[10] = &unk_284486948;
  v5[11] = &unk_284486960;
  v4[12] = &unk_284484B78;
  v4[13] = &unk_284484BA8;
  v5[12] = &unk_284486978;
  v5[13] = &unk_284486990;
  v4[14] = &unk_284484BC0;
  v4[15] = &unk_284484BF0;
  v5[14] = &unk_2844869A8;
  v5[15] = &unk_2844869C0;
  v4[16] = &unk_284484C08;
  v4[17] = &unk_284484C38;
  v5[16] = &unk_2844869D8;
  v5[17] = &unk_2844869F0;
  v4[18] = &unk_284484C50;
  v4[19] = &unk_284484C80;
  v5[18] = &unk_284486A08;
  v5[19] = &unk_284486A20;
  v4[20] = &unk_284484CB0;
  v4[21] = &unk_284484CC8;
  v5[20] = &unk_284486A38;
  v5[21] = &unk_284486A50;
  v4[22] = &unk_284484CE0;
  v4[23] = &unk_284484D10;
  v5[22] = &unk_284486A68;
  v5[23] = &unk_284486A80;
  v4[24] = &unk_284484D40;
  v4[25] = &unk_284484D58;
  v5[24] = &unk_284486A98;
  v5[25] = &unk_284486AB0;
  v4[26] = &unk_284484D88;
  v4[27] = &unk_284484DB8;
  v5[26] = &unk_284486AC8;
  v5[27] = &unk_284486AE0;
  v4[28] = &unk_284484DD0;
  v4[29] = &unk_284484DE8;
  v5[28] = &unk_284486AF8;
  v5[29] = &unk_284486B10;
  v4[30] = &unk_284484E18;
  v4[31] = &unk_284484E48;
  v5[30] = &unk_284486B28;
  v5[31] = &unk_284486B40;
  v4[32] = &unk_284484E60;
  v4[33] = &unk_284484E78;
  v5[32] = &unk_284486B58;
  v5[33] = &unk_284486B70;
  v4[34] = &unk_284484E90;
  v4[35] = &unk_284484EA8;
  v5[34] = &unk_284486B88;
  v5[35] = &unk_284486BA0;
  v4[36] = &unk_284484ED8;
  v4[37] = &unk_284484EF0;
  v5[36] = &unk_284486BB8;
  v5[37] = &unk_284486BD0;
  v4[38] = &unk_284484F08;
  v4[39] = &unk_284484F38;
  v5[38] = &unk_284486BE8;
  v5[39] = &unk_284486C00;
  v4[40] = &unk_284484F68;
  v4[41] = &unk_284484F98;
  v5[40] = &unk_284486C18;
  v5[41] = &unk_284486C30;
  v4[42] = &unk_284484FC8;
  v4[43] = &unk_284485010;
  v5[42] = &unk_284486C48;
  v5[43] = &unk_284486C60;
  v4[44] = &unk_284485040;
  v4[45] = &unk_284485058;
  v5[44] = &unk_284486C78;
  v5[45] = &unk_284486C90;
  v4[46] = &unk_284485070;
  v4[47] = &unk_284485088;
  v5[46] = &unk_284486CA8;
  v5[47] = &unk_284486CC0;
  v4[48] = &unk_2844850A0;
  v4[49] = &unk_2844850B8;
  v5[48] = &unk_284486CD8;
  v5[49] = &unk_284486CF0;
  v4[50] = &unk_2844850D0;
  v4[51] = &unk_2844850E8;
  v5[50] = &unk_284486D08;
  v5[51] = &unk_284486D20;
  v4[52] = &unk_284485100;
  v4[53] = &unk_284485118;
  v5[52] = &unk_284486D38;
  v5[53] = &unk_284486D50;
  v4[54] = &unk_284485130;
  v4[55] = &unk_284485148;
  v5[54] = &unk_284486D68;
  v5[55] = &unk_284486D80;
  v4[56] = &unk_284485160;
  v4[57] = &unk_284485178;
  v5[56] = &unk_284486D98;
  v5[57] = &unk_284486DB0;
  v4[58] = &unk_284485190;
  v4[59] = &unk_2844851A8;
  v5[58] = &unk_284486DC8;
  v5[59] = &unk_284486DE0;
  v4[60] = &unk_2844851C0;
  v4[61] = &unk_2844851D8;
  v5[60] = &unk_284486DF8;
  v5[61] = &unk_284486E10;
  v4[62] = &unk_2844851F0;
  v4[63] = &unk_284485208;
  v5[62] = &unk_284486E28;
  v5[63] = &unk_284486E40;
  v4[64] = &unk_284485220;
  v5[64] = &unk_284486E58;
  v4[65] = &unk_284485238;
  v5[65] = &unk_284486E70;
  v4[66] = &unk_284485250;
  v5[66] = &unk_284486E88;
  v4[67] = &unk_284485280;
  v5[67] = &unk_284486EA0;
  v4[68] = &unk_284485298;
  v5[68] = &unk_284486EB8;
  v4[69] = &unk_2844852B0;
  v5[69] = &unk_284486ED0;
  v4[70] = &unk_2844852C8;
  v5[70] = &unk_284486EE8;
  v4[71] = &unk_2844852E0;
  v5[71] = &unk_284486F00;
  v4[72] = &unk_2844852F8;
  v5[72] = &unk_284486F18;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:73];

  return v2;
}

- (id)_reasonResultByAssetEntityIdentifierForStoryPromptSuggestionsQuestions:(id)questions
{
  v46 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = questionsCopy;
  v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v39)
  {
    v37 = *v42;
    v36 = *MEMORY[0x277D3C9C0];
    v35 = *MEMORY[0x277D3C9B8];
    v4 = *MEMORY[0x277D3C9C8];
    v33 = *MEMORY[0x277D3C9D0];
    v32 = *MEMORY[0x277D3C9D8];
    v31 = *MEMORY[0x277D3C8B8];
    v34 = *MEMORY[0x277D3C9C8];
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v42 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        additionalInfo = [v6 additionalInfo];
        v8 = [additionalInfo objectForKeyedSubscript:v36];
        v9 = [additionalInfo objectForKeyedSubscript:v35];
        integerValue = [v9 integerValue];

        v10 = [additionalInfo objectForKeyedSubscript:v4];
        if (v10)
        {
          v11 = [additionalInfo objectForKeyedSubscript:v4];
          integerValue2 = [v11 integerValue];

          v13 = integerValue2;
        }

        else
        {
          v13 = 0xFFFFFFFFLL;
        }

        v14 = [additionalInfo objectForKeyedSubscript:v33];
        v15 = v14;
        v16 = @"no prompt text";
        if (v14)
        {
          v16 = v14;
        }

        v17 = v16;

        v18 = [additionalInfo objectForKeyedSubscript:v32];
        v19 = v18;
        v20 = @"unknown";
        if (v18)
        {
          v20 = v18;
        }

        v21 = v20;

        additionalInfo2 = [v6 additionalInfo];
        v23 = [additionalInfo2 objectForKeyedSubscript:v31];
        v24 = v23;
        v25 = @"<none>";
        if (v23)
        {
          v25 = v23;
        }

        v26 = v25;

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[source:%@]-[isValidated:%@]-[DislikeReason:%@]-[AssetCount:%d]-[MCAvailable:%d]-[PromptText:%@]", v21, v8, v26, integerValue, v13, v17];

        entityIdentifier = [v6 entityIdentifier];
        [v38 setObject:v27 forKeyedSubscript:entityIdentifier];

        v4 = v34;
      }

      v39 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v39);
  }

  return v38;
}

- (id)_groundTruthForStoryPromptSuggestionsQuestions:(id)questions
{
  v22 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = questionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = MEMORY[0x277CBEC28];
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 state] == 2)
        {
          v13 = v10;
        }

        else
        {
          v13 = v9;
        }

        v14 = v13;
        entityIdentifier = [v12 entityIdentifier];
        [dictionary setObject:v14 forKeyedSubscript:entityIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (void)_gatherMetricsForStoryPromptSuggestionsQuestions:(id)questions progressBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (Current = CFAbsoluteTimeGetCurrent(), Current < 0.01))
  {
    v10 = 0;
    goto LABEL_4;
  }

  v23 = 0;
  v7[2](v7, &v23, 0.0);
  v10 = v23;
  if (v23 != 1)
  {
    v8 = Current;
LABEL_4:
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __95__PGPhotosChallengeMetricEvent__gatherMetricsForStoryPromptSuggestionsQuestions_progressBlock___block_invoke;
    v21 = &unk_27888A7E0;
    v12 = v11;
    v22 = v12;
    [questionsCopy enumerateObjectsUsingBlock:&v18];
    v13 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForStoryPromptSuggestionsQuestions:v12, v18, v19, v20, v21];
    allKeys = [v13 allKeys];
    v15 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:allKeys withDefaultBoolValue:1];

    v16 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetEntityIdentifierForStoryPromptSuggestionsQuestions:v12];
    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"storyPromptSuggestions" category:@"storyPromptSuggestions"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v13 inferenceResults:v15 reasonResultByAssetIdentifier:v16];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v23 = 0;
        v7[2](v7, &v23, 1.0);
        if (v10 | v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v25 = 3139;
            v26 = 2080;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v25 = 3123;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_10:
}

void __95__PGPhotosChallengeMetricEvent__gatherMetricsForStoryPromptSuggestionsQuestions_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 30)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_gatherMetricsForExternalAssetRelevanceQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v28 = v7;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [MEMORY[0x277CBEB38] dictionary];
    v30 = v29 = questionsCopy;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = questionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      v14 = *MEMORY[0x277D3C8E8];
      v15 = MEMORY[0x277CBEC28];
      v16 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          if ([v18 type] == 29)
          {
            entityIdentifier = [v18 entityIdentifier];
            if ([v18 state] == 2)
            {
              v20 = v16;
            }

            else
            {
              v20 = v15;
            }

            [dictionary setObject:v20 forKeyedSubscript:entityIdentifier];
            additionalInfo = [v18 additionalInfo];
            v22 = [additionalInfo objectForKeyedSubscript:v14];

            [v30 setObject:v22 forKeyedSubscript:entityIdentifier];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }

    v7 = v28;
    if (v28)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v24 = &unk_22F784000;
      if (Current - v8 >= 0.01)
      {
        v36 = 0;
        v28[2](v28, &v36, 0.9);
        if (v36)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v39 = 3112;
            v40 = 2080;
            v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          questionsCopy = v29;
LABEL_32:

          goto LABEL_33;
        }

        v8 = Current;
      }
    }

    else
    {
      v24 = &unk_22F784000;
    }

    v25 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"externalAssetRelevance" category:@"externalAssetRelevance"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v25];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:dictionary andInferenceResults:v30];

    questionsCopy = v29;
    if (v28)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= v24[76])
      {
        v36 = 0;
        v28[2](v28, &v36, 1.0);
        if (v36)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v39 = 3116;
            v40 = 2080;
            v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_32;
  }

  v36 = 0;
  v7[2](v7, &v36, 0.0);
  if (v36 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v39 = 3096;
    v40 = 2080;
    v41 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:
}

- (id)_locationRepresentativeAssetFromQuestion:(id)question
{
  questionCopy = question;
  metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
  assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
  entityIdentifier = [questionCopy entityIdentifier];

  v8 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

  return v8;
}

- (id)_locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)questions
{
  v20 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = questionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(PGPhotosChallengeMetricEvent *)self _locationRepresentativeAssetFromQuestion:v11, v15];
        if (v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v5];

  return v13;
}

- (id)_inferredResultsForLocationRepresentativeAssets:(id)assets
{
  v25 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        iconicScoreProperties = [v10 iconicScoreProperties];
        [iconicScoreProperties iconicScore];
        v13 = v12;

        curationModel = [v10 curationModel];
        iconicScoreModel = [curationModel iconicScoreModel];

        [iconicScoreModel minimumMeaningfulIconicScore];
        v17 = [MEMORY[0x277CCABB0] numberWithBool:v13 >= v16];
        uuid = [v10 uuid];
        [v4 setObject:v17 forKeyedSubscript:uuid];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_inferredReasonForLocationRepresentativeAssets:(id)assets
{
  v46 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = assetsCopy;
  v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v40)
  {
    v5 = 0;
    v39 = *v42;
    v38 = *MEMORY[0x277D3C8A8];
    v36 = v4;
    while (1)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        iconicScoreProperties = [v7 iconicScoreProperties];
        [iconicScoreProperties iconicScore];
        v11 = v10;

        curationModel = [v7 curationModel];
        iconicScoreModel = [curationModel iconicScoreModel];

        [iconicScoreModel highIconicScore];
        v15 = v14;
        [iconicScoreModel mediumIconicScore];
        v17 = v16;
        [iconicScoreModel minimumMeaningfulIconicScore];
        v19 = v18;
        v20 = MEMORY[0x277CD97E8];
        location = [v7 location];
        [location coordinate];
        v23 = v22;
        location2 = [v7 location];
        [location2 coordinate];
        v25 = [v20 poiGeoHashWithGeoHashSize:v38 latitude:v23 longitude:?];

        if (v11 > v15)
        {
          v26 = MEMORY[0x277CCACA8];
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
          [v26 stringWithFormat:@"iconicScore>%@", v27];
          v28 = LABEL_8:;
          goto LABEL_15;
        }

        if (v11 <= v17)
        {
          if (v11 <= v19)
          {
            v29 = MEMORY[0x277CCACA8];
            v27 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
            [v29 stringWithFormat:@"iconicScore<%@", v27];
            goto LABEL_8;
          }

          v30 = MEMORY[0x277CCACA8];
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
          v31 = MEMORY[0x277CCABB0];
          v32 = v17;
        }

        else
        {
          v30 = MEMORY[0x277CCACA8];
          v27 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
          v31 = MEMORY[0x277CCABB0];
          v32 = v15;
        }

        v33 = [v31 numberWithDouble:v32];
        v28 = [v30 stringWithFormat:@"iconicScore:%@-%@", v27, v33];

        v5 = v33;
        v4 = v36;
LABEL_15:

        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v25, v28];

        uuid = [v7 uuid];
        [v4 setObject:v5 forKeyedSubscript:uuid];

        objc_autoreleasePoolPop(v8);
      }

      v40 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v40)
      {

        break;
      }
    }
  }

  return v4;
}

- (id)_reasonResultsForQuestions:(id)questions inferenceResults:(id)results inferenceReasons:(id)reasons
{
  v40 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  resultsCopy = results;
  reasonsCopy = reasons;
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = questionsCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v31 = *v36;
    v30 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        entityIdentifier = [v11 entityIdentifier];
        if ([v11 state] == 2)
        {
          v13 = @"YES";
        }

        else
        {
          v13 = @"NO";
        }

        v14 = v13;
        additionalInfo = [v11 additionalInfo];
        v16 = [additionalInfo objectForKeyedSubscript:v30];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = @"None";
        }

        v19 = v18;

        v20 = [resultsCopy objectForKeyedSubscript:entityIdentifier];
        if ([v20 isEqual:&unk_284484920])
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        v22 = v21;

        v23 = [reasonsCopy objectForKeyedSubscript:entityIdentifier];
        v24 = v23;
        if (v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = @"None";
        }

        v26 = v25;

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v14, v19, v22, v26];

        [v33 setObject:v27 forKeyedSubscript:entityIdentifier];
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  return v33;
}

- (void)_gatherMetricsForLocationRepresentativeAssetQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  v28 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v8 = _Block_copy(block);
  if (!v8)
  {
    v12 = [(PGPhotosChallengeMetricEvent *)self _locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:questionsCopy];
    v10 = 0.0;
    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0.0;
  if (Current < 0.01)
  {
LABEL_8:
    v12 = [(PGPhotosChallengeMetricEvent *)self _locationRepresentativeAssetsGroundTruthByAssetIdentifiersFromQuestions:questionsCopy];
    v13 = CFAbsoluteTimeGetCurrent();
    if (v13 - v10 >= 0.01)
    {
      v23 = 0;
      v8[2](v8, &v23, 0.3);
      if (v23)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v25 = 3007;
          v26 = 2080;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_33;
      }

      v10 = v13;
    }

LABEL_13:
    metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
    allValues = [assetByAssetIdentifier allValues];

    [(CLSCurationSession *)self->_curationSession prepareAssets:allValues];
    v17 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForLocationRepresentativeAssets:allValues];
    if (v8)
    {
      v18 = CFAbsoluteTimeGetCurrent();
      if (v18 - v10 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 0.6);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v25 = 3012;
            v26 = 2080;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }

        v10 = v18;
      }
    }

    v19 = [(PGPhotosChallengeMetricEvent *)self _inferredReasonForLocationRepresentativeAssets:allValues];
    v20 = [(PGPhotosChallengeMetricEvent *)self _reasonResultsForQuestions:questionsCopy inferenceResults:v17 inferenceReasons:v19];
    if (v8)
    {
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v10 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 0.9);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v25 = 3016;
            v26 = 2080;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_31:

LABEL_32:
LABEL_33:

          goto LABEL_34;
        }

        v10 = v21;
      }
    }

    v22 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"locationRepresentativeAssets" category:@"locationRepresentativeAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v22 evaluateWithGroundTruthResults:v12 inferenceResults:v17 reasonResultByAssetIdentifier:v20];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v22];
    if (v8)
    {
      if (CFAbsoluteTimeGetCurrent() - v10 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 1.0);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v25 = 3021;
            v26 = 2080;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_31;
  }

  v11 = Current;
  v23 = 0;
  v8[2](v8, &v23, 0.0);
  if (v23 != 1)
  {
    v10 = v11;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v25 = 3005;
    v26 = 2080;
    v27 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_34:
}

- (id)_fetchPersonFromAsset:(id)asset detectionType:(signed __int16)type
{
  typeCopy = type;
  v20[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v9 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
  v20[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [librarySpecificFetchOptions setIncludedDetectionTypes:v10];

  v11 = [MEMORY[0x277CD9938] fetchPersonsInAsset:assetCopy options:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];

  if (!firstObject)
  {
    v13 = +[PGLogging sharedLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      uuid = [assetCopy uuid];
      v17[0] = 67109378;
      v17[1] = typeCopy;
      v18 = 2112;
      v19 = uuid;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Cannot find PHPerson with detectionType %d in asset %@", v17, 0x12u);
    }
  }

  return firstObject;
}

- (id)_vipPetIdentifiersWithCurationContext:(id)context
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [PGGraphPetIdentityProcessor fetchInterestingEligiblePetsForWallpaperWithWorkingContext:self->_workingContext curationContext:context];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        localIdentifier = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v4 addObject:localIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_vipPersonIdentifiersWithCurationContext:(id)context
{
  contextCopy = context;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__70470;
  v19 = __Block_byref_object_dispose__70471;
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  primaryOrientation = [MEMORY[0x277D3C810] primaryOrientation];
  workingContext = self->_workingContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke;
  v10[3] = &unk_27888A7B8;
  v14 = primaryOrientation;
  v7 = contextCopy;
  v11 = v7;
  selfCopy = self;
  v13 = &v15;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [[PGPeopleWallpaperSuggesterFilteringContext alloc] initForPeopleInOrientation:a1[7]];
  v5 = [PGPeopleWallpaperSuggesterPersonImportanceAnalyzer alloc];
  v6 = [v3 graph];

  v7 = a1[4];
  v8 = [*(a1[5] + 8) loggingConnection];
  v9 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v5 initWithGraph:v6 curationContext:v7 loggingConnection:v8];

  [v4 normalizedDeviationForVeryImportantPersons];
  [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v9 setNormalizedDeviationForVeryImportantPersons:?];
  [v4 normalizedDeviationForImportantPersons];
  [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v9 setNormalizedDeviationForImportantPersons:?];
  -[PGPeopleWallpaperSuggesterPersonImportanceAnalyzer setFavoritePersonsAreVIPs:](v9, "setFavoritePersonsAreVIPs:", [v4 favoritePersonsAreVIPs]);
  v10 = [(PGPeopleWallpaperSuggesterPersonImportanceAnalyzer *)v9 personInformationsWithProgress:&__block_literal_global_70474];
  v11 = [v4 minimumPersonImportance];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke_3;
  v12[3] = &unk_27888A790;
  v12[4] = a1[6];
  v12[5] = v11;
  [v10 enumerateObjectsUsingBlock:v12];
}

void __73__PGPhotosChallengeMetricEvent__vipPersonIdentifiersWithCurationContext___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 importance] >= *(a1 + 40) && objc_msgSend(v7, "importance") != 3)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v7 personLocalIdentifier];
    [v3 addObject:v4];

    v5 = *(*(*(a1 + 32) + 8) + 40);
    v6 = [v7 dupedPersonLocalIdentifiers];
    [v5 unionSet:v6];
  }
}

- (void)_gatherMetricsForWallpaperQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  typeCopy = type;
  v110 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  blockCopy = block;
  v9 = _Block_copy(blockCopy);
  if (!v9)
  {
    v11 = 0.0;
    if (![questionsCopy count])
    {
      goto LABEL_77;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v11 = 0.0;
  if (Current >= 0.01)
  {
    v12 = Current;
    v103 = 0;
    v9[2](v9, &v103, 0.0);
    if (v103 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v107 = 2815;
        v108 = 2080;
        v109 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
        v13 = MEMORY[0x277D86220];
LABEL_29:
        _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_77;
      }

      goto LABEL_77;
    }

    v11 = v12;
  }

  if ([questionsCopy count])
  {
LABEL_10:
    v84 = v9;
    v82 = blockCopy;
    v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v83 = questionsCopy;
    v14 = questionsCopy;
    v15 = [v14 countByEnumeratingWithState:&v99 objects:v105 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v100;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v100 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v99 + 1) + 8 * i);
          additionalInfo = [v19 additionalInfo];
          v21 = [additionalInfo objectForKeyedSubscript:@"suggestionSubtype"];
          integerValue = [v21 integerValue];

          if ([objc_opt_class() wallpaperSuggestionSubtypeForQuestionMetricType:typeCopy] == integerValue)
          {
            [v97 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v99 objects:v105 count:16];
      }

      while (v16);
    }

    v23 = v97;
    v24 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v97];
    v9 = v84;
    if (v84)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      if (v25 - v11 >= 0.01)
      {
        v103 = 0;
        v84[2](v84, &v103, 0.5);
        if (v103)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v107 = 2832;
            v108 = 2080;
            v109 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          blockCopy = v82;
          goto LABEL_76;
        }

        v11 = v25;
      }
    }

    v80 = v24;
    v91 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    curationContext = [(PGPhotosChallengeMetricEvent *)self curationContext];
    v86 = [(PGPhotosChallengeMetricEvent *)self _vipPersonIdentifiersWithCurationContext:curationContext];

    curationContext2 = [(PGPhotosChallengeMetricEvent *)self curationContext];
    v85 = [(PGPhotosChallengeMetricEvent *)self _vipPetIdentifiersWithCurationContext:curationContext2];

    v81 = photoLibrary;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v30 = +[PGCurationManager assetPropertySetsForCuration];
    [librarySpecificFetchOptions setFetchPropertySets:v30];

    if ([v97 count])
    {
      v31 = 0;
      v89 = *MEMORY[0x277D3C8B8];
      v88 = librarySpecificFetchOptions;
      while (1)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = [v23 objectAtIndexedSubscript:v31];
        additionalInfo2 = [v33 additionalInfo];
        v35 = [additionalInfo2 objectForKeyedSubscript:@"suggestionSubtype"];
        integerValue2 = [v35 integerValue];

        entityIdentifier = [v33 entityIdentifier];
        v38 = MEMORY[0x277CD97A8];
        v104 = entityIdentifier;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
        v40 = [v38 fetchAssetsWithUUIDs:v39 options:librarySpecificFetchOptions];

        if ([v40 count])
        {
          break;
        }

LABEL_61:

        objc_autoreleasePoolPop(v32);
        if (++v31 >= [v23 count])
        {
          goto LABEL_62;
        }
      }

      v41 = MEMORY[0x277CD97A8];
      curationContext3 = [(PGPhotosChallengeMetricEvent *)self curationContext];
      v95 = v40;
      v43 = [v41 clsAllAssetsFromFetchResult:v40 prefetchOptions:31 curationContext:curationContext3];
      firstObject = [v43 firstObject];

      primaryOrientation = [MEMORY[0x277D3C810] primaryOrientation];
      v45 = integerValue2;
      if (integerValue2 <= 0x28Du)
      {
        if (integerValue2 == 652)
        {
          v56 = [(PGPhotosChallengeMetricEvent *)self _fetchPersonFromAsset:firstObject detectionType:1];
          v23 = v97;
          v40 = v95;
          if (v56)
          {
            v57 = v56;
            v93 = entityIdentifier;
            v94 = v32;
            curationContext4 = [(PGPhotosChallengeMetricEvent *)self curationContext];
            v47 = [PGPeopleWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:curationContext4 orientation:primaryOrientation reason:0];

            v48 = v57;
            localIdentifier = [v57 localIdentifier];
            v50 = [v86 containsObject:localIdentifier];

            goto LABEL_47;
          }

LABEL_60:

          goto LABEL_61;
        }

        if (integerValue2 == 653)
        {
          [(PGPhotosChallengeMetricEvent *)self _fetchPersonFromAsset:firstObject detectionType:2];
          v23 = v97;
          v87 = v40 = v95;
          if (v87)
          {
            v93 = entityIdentifier;
            v94 = v32;
            curationContext5 = [(PGPhotosChallengeMetricEvent *)self curationContext];
            v47 = [PGPetWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:curationContext5 orientation:primaryOrientation reason:0];

            v48 = v87;
            localIdentifier2 = [v87 localIdentifier];
            v50 = [v85 containsObject:localIdentifier2];

LABEL_47:
            v92 = v50 & v47;
            v60 = MEMORY[0x277CCACA8];
            v61 = [objc_opt_class() _passedFilteringStringForResult:v47];
            v62 = [objc_opt_class() _isVIPStringForResult:v50];
            loggingConnection = [v60 stringWithFormat:@"%@|%@", v61, v62];

LABEL_50:
            if ([v33 state] == 2)
            {
              v66 = @"YES";
            }

            else
            {
              v66 = @"NO";
            }

            v67 = v66;
            additionalInfo3 = [v33 additionalInfo];
            v69 = [additionalInfo3 objectForKeyedSubscript:v89];
            v70 = v69;
            v71 = @"None";
            if (v69)
            {
              v71 = v69;
            }

            v72 = v71;

            if (v92)
            {
              v73 = @"YES";
            }

            else
            {
              v73 = @"NO";
            }

            v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v67, v72, v73, loggingConnection];

            v75 = [MEMORY[0x277CCABB0] numberWithBool:v92];
            entityIdentifier = v93;
            [v91 setObject:v75 forKeyedSubscript:v93];

            [v90 setObject:v74 forKeyedSubscript:v93];
            v23 = v97;
            librarySpecificFetchOptions = v88;
            v32 = v94;
LABEL_59:
            v40 = v95;

            goto LABEL_60;
          }

          goto LABEL_60;
        }

LABEL_42:
        v54 = +[PGLogging sharedLogging];
        loggingConnection = [v54 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          uuid = [v33 uuid];
          *buf = 67109378;
          v107 = v45;
          v108 = 2112;
          v109 = uuid;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported Wallpaper Subtype %d for question %@", buf, 0x12u);
        }

        v23 = v97;
        goto LABEL_59;
      }

      if (integerValue2 == 654)
      {
        v93 = entityIdentifier;
        v94 = v32;
        curationContext6 = [(PGPhotosChallengeMetricEvent *)self curationContext];
        v52 = [PGLandscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:curationContext6 orientation:primaryOrientation reason:0];

        v53 = [objc_opt_class() _isHighPrecisionLandscapeAsset:firstObject];
      }

      else
      {
        if (integerValue2 != 655)
        {
          goto LABEL_42;
        }

        v93 = entityIdentifier;
        v94 = v32;
        curationContext7 = [(PGPhotosChallengeMetricEvent *)self curationContext];
        v52 = [PGCityscapeWallpaperSuggester passesFilteringWithAsset:firstObject curationContext:curationContext7 orientation:primaryOrientation reason:0];

        v53 = [objc_opt_class() _isHighPrecisionCityscapeAsset:firstObject];
      }

      v64 = v53;
      v92 = v52 & v53;
      v65 = MEMORY[0x277CCACA8];
      v48 = [objc_opt_class() _passedFilteringStringForResult:v52];
      v61 = [objc_opt_class() _passedHighPrecisionStringForResult:v64];
      loggingConnection = [v65 stringWithFormat:@"%@|%@", v48, v61];
      goto LABEL_50;
    }

LABEL_62:
    v9 = v84;
    if (v84)
    {
      v77 = CFAbsoluteTimeGetCurrent();
      v24 = v80;
      if (v77 - v11 >= 0.01)
      {
        v103 = 0;
        v84[2](v84, &v103, 0.9);
        if (v103)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v107 = 2906;
            v108 = 2080;
            v109 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_75:
          blockCopy = v82;
          questionsCopy = v83;

LABEL_76:
          goto LABEL_77;
        }

        v11 = v77;
      }
    }

    else
    {
      v24 = v80;
    }

    v78 = [objc_opt_class() stringFromQuestionMetricType:typeCopy];
    v79 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"wallpaper" category:v78];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v79 evaluateWithGroundTruthResults:v24 inferenceResults:v91 reasonResultByAssetIdentifier:v90];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v79];
    if (v84)
    {
      if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
      {
        v103 = 0;
        v84[2](v84, &v103, 1.0);
        if (v103)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v107 = 2914;
            v108 = 2080;
            v109 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_75;
  }

  if (CFAbsoluteTimeGetCurrent() - v11 >= 0.01)
  {
    v103 = 0;
    v9[2](v9, &v103, 1.0);
    if (v103)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v107 = 2818;
        v108 = 2080;
        v109 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
        v13 = MEMORY[0x277D86220];
        goto LABEL_29;
      }
    }
  }

LABEL_77:
}

- (void)_gatherMetricsForCameraLibrarySwitchQuestions:(id)questions progressBlock:(id)block
{
  v88 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:questionsCopy];
    if (![v10 count])
    {
      v13 = +[PGLogging sharedLogging];
      loggingConnection = [v13 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v59 = [v10 count];
        *buf = 67109120;
        v85 = v59;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Camera library switch: ground truth, %d is empty", buf, 8u);
      }

      v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"cameraLibrarySwitch" category:@"sharedLibraryAssets"];
      [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:MEMORY[0x277CBEC10] reasonResultByAssetIdentifier:MEMORY[0x277CBEC10]];
      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (v7)
      {
        if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
        {
          v81 = 0;
          v7[2](v7, &v81, 1.0);
          if (v81)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v85 = 2729;
              v86 = 2080;
              v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_79;
    }

    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v81 = 0;
        v7[2](v7, &v81, 0.2);
        if (v81)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v85 = 2733;
            v86 = 2080;
            v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v12 = MEMORY[0x277D86220];
LABEL_45:
            _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_79;
          }

          goto LABEL_79;
        }

        v8 = Current;
      }
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v16 = questionsCopy;
    v17 = [v16 countByEnumeratingWithState:&v77 objects:v83 count:16];
    selfCopy = self;
    v61 = v7;
    v62 = v10;
    v63 = questionsCopy;
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v78;
      v21 = @"libraryScopeUUID";
      v71 = v16;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v78 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v77 + 1) + 8 * i);
          additionalInfo = [v23 additionalInfo];
          v25 = [additionalInfo objectForKeyedSubscript:v21];

          if (!v25)
          {
            additionalInfo2 = [v23 additionalInfo];
            v27 = [additionalInfo2 objectForKeyedSubscript:@"previousCameraLibrarySwitchState"];
            if ([v27 isEqualToString:@"auto on"])
            {

LABEL_39:
              v69 = 0;
              v16 = v71;
              loggingConnection2 = v71;
              v10 = v62;
              questionsCopy = v63;
              v7 = v61;
              goto LABEL_40;
            }

            v28 = v20;
            v29 = v21;
            additionalInfo3 = [v23 additionalInfo];
            v31 = [additionalInfo3 objectForKeyedSubscript:@"currentCameraLibrarySwitchState"];
            v32 = [v31 isEqualToString:@"auto on"];

            if (v32)
            {
              goto LABEL_39;
            }

            v19 = 1;
            v16 = v71;
            v21 = v29;
            v20 = v28;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v77 objects:v83 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      if ((v19 & 1) == 0)
      {
        v69 = 1;
        v10 = v62;
        questionsCopy = v63;
        v7 = v61;
        if (!v61)
        {
          goto LABEL_47;
        }

        goto LABEL_41;
      }

      v33 = +[PGLogging sharedLogging];
      loggingConnection2 = [v33 loggingConnection];

      v7 = v61;
      v10 = v62;
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Excluding questions without library scope from Camera library switch challenge evaluation", buf, 2u);
      }

      v69 = 1;
      questionsCopy = v63;
    }

    else
    {
      v69 = 1;
      loggingConnection2 = v16;
    }

LABEL_40:

    if (!v7)
    {
      goto LABEL_47;
    }

LABEL_41:
    v35 = CFAbsoluteTimeGetCurrent();
    if (v35 - v8 >= 0.01)
    {
      v81 = 0;
      v7[2](v7, &v81, 0.3);
      if (v81)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v85 = 2759;
          v86 = 2080;
          v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v12 = MEMORY[0x277D86220];
          goto LABEL_45;
        }

LABEL_79:

        goto LABEL_80;
      }

      v8 = v35;
    }

LABEL_47:
    v67 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v16;
    v70 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v70)
    {
      v68 = *v74;
      v65 = *MEMORY[0x277D3C8B8];
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v74 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v73 + 1) + 8 * j);
          additionalInfo4 = [v37 additionalInfo];
          v39 = additionalInfo4;
          if (!v69 || ([additionalInfo4 objectForKeyedSubscript:@"libraryScopeUUID"], v40 = objc_claimAutoreleasedReturnValue(), v40, v40))
          {
            state = [v37 state];
            v42 = @"NO";
            if (state == 2)
            {
              v42 = @"YES";
            }

            v43 = v42;
            v44 = [v39 objectForKeyedSubscript:v65];
            v45 = v44;
            v46 = @"None";
            if (v44)
            {
              v46 = v44;
            }

            v47 = v46;

            v48 = [v39 objectForKeyedSubscript:@"previousCameraLibrarySwitchState"];
            v49 = [v39 objectForKeyedSubscript:@"currentCameraLibrarySwitchState"];
            if (([v49 isEqualToString:@"auto on"] & 1) != 0 || objc_msgSend(v49, "isEqualToString:", @"user on"))
            {
              v50 = 1;
              v51 = @"YES";
            }

            else
            {
              v50 = 0;
              v51 = @"NO";
            }

            [MEMORY[0x277CCACA8] stringWithFormat:@"%@ to %@", v48, v49];
            v52 = v72 = v48;
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v43, v47, v51, v52];

            entityIdentifier = [v37 entityIdentifier];
            [v66 setObject:v53 forKeyedSubscript:entityIdentifier];
            v55 = [MEMORY[0x277CCABB0] numberWithBool:v50];
            [v67 setObject:v55 forKeyedSubscript:entityIdentifier];
          }
        }

        v70 = [obj countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v70);
    }

    v7 = v61;
    if (v61)
    {
      v56 = CFAbsoluteTimeGetCurrent();
      v10 = v62;
      questionsCopy = v63;
      v57 = selfCopy;
      if (v56 - v8 >= 0.01)
      {
        v81 = 0;
        v61[2](v61, &v81, 0.9);
        if (v81)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v85 = 2786;
            v86 = 2080;
            v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_78:

          goto LABEL_79;
        }

        v8 = v56;
      }
    }

    else
    {
      v10 = v62;
      questionsCopy = v63;
      v57 = selfCopy;
    }

    v58 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"cameraLibrarySwitch" category:@"sharedLibraryAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v58 evaluateWithGroundTruthResults:v10 inferenceResults:v67 reasonResultByAssetIdentifier:v66];
    [(PGPhotosChallengeMetricEvent *)v57 setEvaluation:v58];
    if (v61)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v81 = 0;
        v61[2](v61, &v81, 1.0);
        if (v81)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v85 = 2791;
            v86 = 2080;
            v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_78;
  }

  v81 = 0;
  v7[2](v7, &v81, 0.0);
  if (v81 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v85 = 2719;
    v86 = 2080;
    v87 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_80:
}

- (void)_gatherMetricsForSharedLibraryStartQuestions:(id)questions progressBlock:(id)block
{
  *&v35[5] = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = 0.0;
    if (Current >= 0.01)
    {
      v10 = Current;
      v33 = 0;
      v7[2](v7, &v33, 0.0);
      if (v33 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v35[0] = 2671;
          LOWORD(v35[1]) = 2080;
          *(&v35[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v11 = MEMORY[0x277D86220];
LABEL_30:
          _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_56;
        }

        goto LABEL_56;
      }

      v9 = v10;
    }

    if (![questionsCopy count])
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v33 = 0;
        v7[2](v7, &v33, 1.0);
        if (v33)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v35[0] = 2674;
            LOWORD(v35[1]) = 2080;
            *(&v35[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_30;
          }
        }
      }

      goto LABEL_56;
    }
  }

  else
  {
    v9 = 0.0;
    if (![questionsCopy count])
    {
      goto LABEL_56;
    }
  }

  if ([questionsCopy count] < 2)
  {
    metricsCache = self->_metricsCache;
    v32 = 0;
    v15 = [(PGPhotosChallengeMetricEventFetchHelper *)metricsCache suggestsToStartSharedLibraryWithError:&v32];
    v16 = v32;
    if (v16)
    {
      v17 = +[PGLogging sharedLogging];
      loggingConnection = [v17 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v35 = v16;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error getting startSharedLibrarySuggestion: %@", buf, 0xCu);
      }

      if (v7)
      {
        if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
        {
          v33 = 0;
          v7[2](v7, &v33, 1.0);
          if (v33)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v35[0] = 2688;
              LOWORD(v35[1]) = 2080;
              *(&v35[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }
    }

    else
    {
      firstObject = [questionsCopy firstObject];
      state = [firstObject state];
      v21 = 1;
      v22 = state == 2;
      if (state == 3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
      }

      v23 = 1;
      v24 = state == 2;
      if (state == 3)
      {
        v24 = 0;
      }

      else
      {
        v23 = 0;
      }

      v25 = !v15;
      v26 = v15 && v24;
      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

      if (v25)
      {
        v28 = v21;
      }

      else
      {
        v28 = 0;
      }

      v29 = v25 && v22;
      v30 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"sharedLibraryStart" category:@"sharedLibraryStart" truePositives:v26 falsePositives:v27 falseNegatives:v29 trueNegatives:v28];
      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v30];

      if (v7)
      {
        if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
        {
          v33 = 0;
          v7[2](v7, &v33, 1.0);
          if (v33)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v35[0] = 2713;
              LOWORD(v35[1]) = 2080;
              *(&v35[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }
    }
  }

  else
  {
    v12 = +[PGLogging sharedLogging];
    loggingConnection2 = [v12 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      v31 = [questionsCopy count];
      *buf = 67109120;
      v35[0] = v31;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Expected 1 shared library start question, found %d", buf, 8u);
    }

    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v33 = 0;
        v7[2](v7, &v33, 1.0);
        if (v33)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v35[0] = 2680;
            LOWORD(v35[1]) = 2080;
            *(&v35[1] + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v11 = MEMORY[0x277D86220];
            goto LABEL_30;
          }
        }
      }
    }
  }

LABEL_56:
}

- (id)_getInferredReasonFromMatchedConditions:(id)conditions withFallbackReason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  reasonCopy = reason;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [conditionsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  v8 = reasonCopy;
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v8 = reasonCopy;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(conditionsCopy);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 criteria])
        {
          v13 = PLLibraryScopeConditionStringFromCriteria();
          [v12 type];
          v14 = PLLibraryScopeConditionStringFromType();
          v15 = [v13 stringByAppendingFormat:@" %@", v14];
          v16 = v15;
          if (v8 == reasonCopy)
          {
            v17 = v15;
          }

          else
          {
            v17 = [v8 stringByAppendingFormat:@" | %@", v15];
          }

          v18 = v17;

          v8 = v18;
        }
      }

      v9 = [conditionsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v8;
}

- (void)_gatherNearLiveSuggestionInferencesForQuestions:(id)questions inferenceResults:(id)results reasonResultByAssetIdentifier:(id)identifier progressBlock:(id)block
{
  v65 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  resultsCopy = results;
  identifierCopy = identifier;
  blockCopy = block;
  v11 = 0.0;
  v40 = _Block_copy(blockCopy);
  if (!v40 || (v12 = CFAbsoluteTimeGetCurrent(), v12 < 0.01))
  {
LABEL_7:
    *buf = 0;
    *&v61 = buf;
    *(&v61 + 1) = 0x3032000000;
    v62 = __Block_byref_object_copy__70470;
    v63 = __Block_byref_object_dispose__70471;
    v64 = 0;
    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    managedObjectContext = [photoLibrary managedObjectContext];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke;
    v53[3] = &unk_27888A700;
    v53[4] = self;
    v53[5] = buf;
    [managedObjectContext performBlockAndWait:v53];
    selfCopy = self;

    metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];

    v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = questionsCopy;
    v18 = [v17 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v18)
    {
      v19 = *v50;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v50 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v49 + 1) + 8 * i);
          entityIdentifier = [v21 entityIdentifier];
          v23 = [resultsCopy objectForKeyedSubscript:entityIdentifier];
          bOOLValue = [v23 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {
            entityIdentifier2 = [v21 entityIdentifier];
            v26 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier2];
            objectID = [v26 objectID];

            [v42 addObject:objectID];
            [v16 setObject:v21 forKeyedSubscript:objectID];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v49 objects:v59 count:16];
      }

      while (v18);
    }

    if (v40)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v11 >= 0.01)
      {
        v48 = 0;
        v40[2](v40, &v48, 0.4);
        if (v48)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_30:

            _Block_object_dispose(buf, 8);
            goto LABEL_31;
          }

          *v55 = 67109378;
          v56 = 2614;
          v57 = 2080;
          v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v29 = MEMORY[0x277D86220];
LABEL_29:
          _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v55, 0x12u);
          goto LABEL_30;
        }

        v11 = Current;
      }
    }

    if ([v42 count])
    {
      v30 = MEMORY[0x277CCA920];
      v31 = PLManagedAssetPredicateToFetchAssetsToEvaluateSuggestionsForLibraryScope();
      v54[0] = v31;
      blockCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"(%K & %d) != 0", @"libraryScopeShareState", 2, blockCopy];
      v54[1] = blockCopy;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:2];
      v34 = [v30 orPredicateWithSubpredicates:v33];

      v35 = *(v61 + 40);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_610;
      v43[3] = &unk_27888A728;
      v44 = v16;
      v45 = selfCopy;
      v46 = resultsCopy;
      v47 = identifierCopy;
      [v35 evaluateAssetObjectIDs:v42 simulate:1 predicateToFetchAssetsToEvaluate:v34 withResultEnumerationBlock:v43];
    }

    if (!v40)
    {
      goto LABEL_30;
    }

    if (CFAbsoluteTimeGetCurrent() - v11 < 0.01)
    {
      goto LABEL_30;
    }

    v48 = 0;
    v40[2](v40, &v48, 1.0);
    if (!v48 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *v55 = 67109378;
    v56 = 2642;
    v57 = 2080;
    v58 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v29 = MEMORY[0x277D86220];
    goto LABEL_29;
  }

  v55[0] = 0;
  v40[2](v40, v55, 0.0);
  if (v55[0] != 1)
  {
    v11 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 2592;
    LOWORD(v61) = 2080;
    *(&v61 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_31:
}

void __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D3ACA0];
  v3 = [*(*(a1 + 32) + 8) photoLibrary];
  v4 = [v3 managedObjectContext];
  v8 = [v2 activeLibraryScopeInManagedObjectContext:v4];

  v5 = [objc_alloc(MEMORY[0x277D3ACB0]) initWithLibraryScope:v8];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __141__PGPhotosChallengeMetricEvent__gatherNearLiveSuggestionInferencesForQuestions_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_610(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = a4;
  v6 = [a1[4] objectForKeyedSubscript:a2];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 entityIdentifier];
    v9 = [v7 state];
    v10 = @"NO";
    if (v9 == 2)
    {
      v10 = @"YES";
    }

    v11 = v10;
    v12 = [v7 additionalInfo];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277D3C8B8]];
    v14 = v13;
    v15 = @"None";
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [a1[5] _getInferredReasonFromMatchedConditions:v19 withFallbackReason:@"Near-live"];
    [a1[6] setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v11, v16, @"YES", v17];

    [a1[7] setObject:v18 forKeyedSubscript:v8];
  }
}

- (void)_gatherDeferredSuggestionInferencesForQuestions:(id)questions momentUUIDS:(id)s inferenceResults:(id)results reasonResultByAssetIdentifier:(id)identifier progressBlock:(id)block
{
  v92 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  sCopy = s;
  resultsCopy = results;
  identifierCopy = identifier;
  blockCopy = block;
  v11 = 0.0;
  v58 = _Block_copy(blockCopy);
  if (!v58 || (v12 = CFAbsoluteTimeGetCurrent(), v12 < 0.01))
  {
LABEL_7:
    photoLibrary = [(PGManagerWorkingContext *)self->_workingContext photoLibrary];
    v57 = [PGSharedLibrarySuggestionsProcessor libraryScopeToUseWithPhotoLibrary:photoLibrary];

    if (!v57)
    {
      loggingConnection = [(PGManagerWorkingContext *)self->_workingContext loggingConnection];
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[PGSharedLibrarySuggestionsProcessor] Cannot instanciate without a valid library scope", buf, 2u);
      }

      goto LABEL_47;
    }

    v14 = [[PGSharedLibrarySuggestionsProcessor alloc] initWithWorkingContext:self->_workingContext libraryScope:v57];
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    *buf = 0;
    *&v90 = buf;
    *(&v90 + 1) = 0x2020000000;
    v91 = 0;
    workingContext = self->_workingContext;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke;
    v76[3] = &unk_27888A6D8;
    v18 = v14;
    v77 = v18;
    v82 = buf;
    v78 = sCopy;
    selfCopy = self;
    v66 = v16;
    v80 = v66;
    v65 = v15;
    v81 = v65;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v76];
    p_super = &v18->super;
    if (v58)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v11 >= 0.01)
      {
        v75 = 0;
        v58[2](v58, &v75, 0.8);
        if (v75)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_46:

            _Block_object_dispose(buf, 8);
            loggingConnection = p_super;
LABEL_47:

            goto LABEL_48;
          }

          *v85 = 67109378;
          v86 = 2545;
          v87 = 2080;
          v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v20 = MEMORY[0x277D86220];
LABEL_45:
          _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v85, 0x12u);
          goto LABEL_46;
        }

        v11 = Current;
      }
    }

    if (*(v90 + 24) != 1)
    {
LABEL_40:
      if (!v58)
      {
        goto LABEL_46;
      }

      if (CFAbsoluteTimeGetCurrent() - v11 < 0.01)
      {
        goto LABEL_46;
      }

      v75 = 0;
      v58[2](v58, &v75, 1.0);
      if (!v75 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_46;
      }

      *v85 = 67109378;
      v86 = 2586;
      v87 = 2080;
      v88 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v20 = MEMORY[0x277D86220];
      goto LABEL_45;
    }

    metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    momentUUIDByAssetIdentifier = [metricsCache momentUUIDByAssetIdentifier];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = questionsCopy;
    v23 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (!v23)
    {
      goto LABEL_39;
    }

    v62 = *MEMORY[0x277D3C8B8];
    v63 = *v72;
LABEL_19:
    v24 = 0;
    v67 = v23;
    while (1)
    {
      if (*v72 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v25 = *(*(&v71 + 1) + 8 * v24);
      context = objc_autoreleasePoolPush();
      entityIdentifier = [v25 entityIdentifier];
      v27 = [momentUUIDByAssetIdentifier objectForKeyedSubscript:entityIdentifier];
      state = [v25 state];
      v29 = @"NO";
      if (state == 2)
      {
        v29 = @"YES";
      }

      v30 = v29;
      additionalInfo = [v25 additionalInfo];
      v32 = [additionalInfo objectForKeyedSubscript:v62];
      v33 = v32;
      v34 = @"None";
      if (v32)
      {
        v34 = v32;
      }

      v35 = v34;

      v36 = [v66 objectForKeyedSubscript:v27];
      v37 = v36;
      v38 = @"None";
      if (v36)
      {
        v38 = v36;
      }

      v39 = v38;

      if (![v65 containsObject:v27])
      {
        break;
      }

      metricsCache2 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
      assetByAssetIdentifier = [metricsCache2 assetByAssetIdentifier];
      v42 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

      if (v42)
      {
        curationSession = self->_curationSession;
        v83 = v42;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
        [(CLSCurationSession *)curationSession prepareAssets:v44];

        curationContext = [(PGPhotosChallengeMetricEvent *)self curationContext];
        v70 = 0;
        v46 = [PGSharedLibrarySuggestionsProcessor shouldIncludeAsset:v42 curationContext:curationContext rejectionReason:&v70];
        v47 = v70;

        if (v47)
        {
          v48 = v47;

          v39 = v48;
        }

        goto LABEL_34;
      }

LABEL_37:

      objc_autoreleasePoolPop(context);
      if (v67 == ++v24)
      {
        v23 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (!v23)
        {
LABEL_39:

          goto LABEL_40;
        }

        goto LABEL_19;
      }
    }

    v46 = 0;
LABEL_34:
    v49 = [MEMORY[0x277CCABB0] numberWithBool:v46];
    [resultsCopy setObject:v49 forKeyedSubscript:entityIdentifier];

    v50 = @"NO";
    if (v46)
    {
      v50 = @"YES";
    }

    v51 = v50;
    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v30, v35, v51, v39];
    [identifierCopy setObject:v52 forKeyedSubscript:entityIdentifier];

    goto LABEL_37;
  }

  v85[0] = 0;
  v58[2](v58, v85, 0.0);
  if (v85[0] != 1)
  {
    v11 = v12;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 2489;
    LOWORD(v90) = 2080;
    *(&v90 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_48:
}

void __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) evaluatorWithGraph:v3];
  if (v4)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v31 = [PGGraphMomentNodeCollection momentNodesForUUIDs:*(a1 + 40) inGraph:v3];
    v5 = [v31 temporarySet];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_593;
    v42[3] = &unk_27888A6B0;
    v6 = *(a1 + 56);
    v42[4] = *(a1 + 48);
    v43 = v6;
    v32 = v4;
    v7 = [v4 evaluateObjects:v5 withResultEnumerationBlock:v42];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(a1 + 64);
          v14 = [*(*(&v38 + 1) + 8 * i) UUID];
          [v13 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v10);
    }

    v30 = [PGGraphHighlightTypeNodeCollection tripTypeNodesInGraph:v3];
    v15 = [v30 highlightGroupNodes];
    v33 = v3;
    v16 = [(MAElementCollection *)[PGGraphMomentNodeCollection alloc] initWithSet:v8 graph:v3];
    v17 = [(PGGraphMomentNodeCollection *)v16 highlightNodes];
    v18 = [v17 highlightGroupNodes];

    v29 = v15;
    v19 = [v15 collectionByIntersecting:v18];
    v20 = [v19 momentNodes];
    v21 = [v20 uuids];

    [*(a1 + 64) unionSet:v21];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(a1 + 56) setObject:@"Trip with Participant" forKeyedSubscript:*(*(&v34 + 1) + 8 * j)];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v24);
    }

    v4 = v32;
    v3 = v33;
    v27 = v31;
  }

  else
  {
    v28 = +[PGLogging sharedLogging];
    v27 = [v28 loggingConnection];

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_DEFAULT, "Shared library inference: evaluator is nil", buf, 2u);
    }
  }
}

void __153__PGPhotosChallengeMetricEvent__gatherDeferredSuggestionInferencesForQuestions_momentUUIDS_inferenceResults_reasonResultByAssetIdentifier_progressBlock___block_invoke_593(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v6 = [*(a1 + 32) _getInferredReasonFromMatchedConditions:a4 withFallbackReason:0];
  if ([v6 length])
  {
    v7 = *(a1 + 40);
    v8 = [v13 UUID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v6 stringByAppendingFormat:@"|%@", v9];

      v6 = v10;
    }

    v11 = *(a1 + 40);
    v12 = [v13 UUID];
    [v11 setObject:v6 forKeyedSubscript:v12];
  }
}

- (void)_gatherMetricsForSharedLibraryAssetsQuestions:(id)questions progressBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v9 = 0.0;
  if (!v8 || (v10 = CFAbsoluteTimeGetCurrent(), v10 < 0.01))
  {
LABEL_7:
    v42 = v8;
    v39 = blockCopy;
    v41 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:questionsCopy];
    selfCopy = self;
    metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    momentUUIDByAssetIdentifier = [metricsCache momentUUIDByAssetIdentifier];

    v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v40 = questionsCopy;
    v13 = questionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v45;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v45 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v44 + 1) + 8 * i);
          entityIdentifier = [v18 entityIdentifier];
          v20 = [momentUUIDByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

          if (v20)
          {
            [v43 addObject:v20];
          }

          else
          {
            v21 = +[PGLogging sharedLogging];
            loggingConnection = [v21 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              entityIdentifier2 = [v18 entityIdentifier];
              *buf = 138412290;
              *v51 = entityIdentifier2;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Shared library: Failed to find moment UUID for asset uuid: %@", buf, 0xCu);
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v15);
    }

    v24 = v41;
    if (![v41 count] || !objc_msgSend(v43, "count"))
    {
      v27 = +[PGLogging sharedLogging];
      loggingConnection2 = [v27 loggingConnection];

      blockCopy = v39;
      questionsCopy = v40;
      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        v35 = [v41 count];
        v36 = [v43 count];
        *buf = 67109376;
        *v51 = v35;
        *&v51[4] = 1024;
        *&v51[6] = v36;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Shared library: ground truth, %d, or moment UUIDs, %d, is empty", buf, 0xEu);
      }

      v29 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"sharedLibraryAssets" category:@"sharedLibraryAssets"];
      [(PGAssetsWithReasonPrecisionRecallEvaluation *)v29 evaluateWithGroundTruthResults:v41 inferenceResults:MEMORY[0x277CBEC10] reasonResultByAssetIdentifier:MEMORY[0x277CBEC10]];
      [(PGPhotosChallengeMetricEvent *)selfCopy setEvaluation:v29];
      v8 = v42;
      if (v42)
      {
        if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
        {
          v48 = 0;
          v42[2](v42, &v48, 1.0);
          if (v48)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v51 = 2455;
              *&v51[4] = 2080;
              *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }
          }
        }
      }

      goto LABEL_58;
    }

    blockCopy = v39;
    questionsCopy = v40;
    v8 = v42;
    if (v42)
    {
      Current = CFAbsoluteTimeGetCurrent();
      p_isa = &selfCopy->super.super.isa;
      if (Current - v9 >= 0.01)
      {
        v48 = 0;
        v42[2](v42, &v48, 0.3);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v51 = 2459;
            *&v51[4] = 2080;
            *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_58;
        }

        v9 = Current;
      }
    }

    else
    {
      p_isa = &selfCopy->super.super.isa;
    }

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = v42;
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [p_isa _gatherDeferredSuggestionInferencesForQuestions:v13 momentUUIDS:v43 inferenceResults:v30 reasonResultByAssetIdentifier:v31 progressBlock:v39];
    if (v42)
    {
      v32 = CFAbsoluteTimeGetCurrent();
      if (v32 - v9 >= 0.01)
      {
        v48 = 0;
        v42[2](v42, &v48, 0.6);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v51 = 2467;
            *&v51[4] = 2080;
            *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
LABEL_47:
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_57;
          }

          goto LABEL_57;
        }

        v9 = v32;
      }

      [p_isa _gatherNearLiveSuggestionInferencesForQuestions:v13 inferenceResults:v30 reasonResultByAssetIdentifier:v31 progressBlock:v39];
      v34 = CFAbsoluteTimeGetCurrent();
      if (v34 - v9 >= 0.01)
      {
        v48 = 0;
        v42[2](v42, &v48, 0.9);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v51 = 2471;
            *&v51[4] = 2080;
            *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
            goto LABEL_47;
          }

LABEL_57:

          v24 = v41;
LABEL_58:

          goto LABEL_59;
        }

        v9 = v34;
      }
    }

    else
    {
      [p_isa _gatherNearLiveSuggestionInferencesForQuestions:v13 inferenceResults:v30 reasonResultByAssetIdentifier:v31 progressBlock:v39];
    }

    v37 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"sharedLibraryAssets" category:@"sharedLibraryAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v37 evaluateWithGroundTruthResults:v41 inferenceResults:v30 reasonResultByAssetIdentifier:v31];
    [p_isa setEvaluation:v37];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [p_isa[2] setResultsByAssetIdentifier:v31];
    }

    v8 = v42;
    if (v42)
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v48 = 0;
        v42[2](v42, &v48, 1.0);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v51 = 2483;
            *&v51[4] = 2080;
            *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_57;
  }

  v48 = 0;
  v8[2](v8, &v48, 0.0);
  if (v48 != 1)
  {
    v9 = v10;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v51 = 2430;
    *&v51[4] = 2080;
    *&v51[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_59:
}

- (id)_inferredResultsForEntityIdentifiers:(id)identifiers withDefaultBoolValue:(BOOL)value
{
  valueCopy = value;
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCABB0] numberWithBool:{valueCopy, v15}];
        [v6 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)payloadForVerification
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [objc_opt_class() stringFromQuestionMetricType:self->_questionMetricType];
  v18 = [v4 substringToIndex:1];
  lowercaseString = [v18 lowercaseString];
  v6 = [v4 stringByReplacingCharactersInRange:0 withString:{1, lowercaseString}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_algorithmVersion];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@AlgorithmVersion", v6];
  [dictionary setObject:v7 forKeyedSubscript:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falseNegatives](self->_evaluation, "falseNegatives")}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumFalseNegatives", v6];
  [dictionary setObject:v9 forKeyedSubscript:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falsePositives](self->_evaluation, "falsePositives")}];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumFalsePositives", v6];
  [dictionary setObject:v11 forKeyedSubscript:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation trueNegatives](self->_evaluation, "trueNegatives")}];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumTrueNegatives", v6];
  [dictionary setObject:v13 forKeyedSubscript:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation truePositives](self->_evaluation, "truePositives")}];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NumTruePositives", v6];
  [dictionary setObject:v15 forKeyedSubscript:v16];

  return dictionary;
}

- (id)payload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_graphSchemaVersion];
  [dictionary setObject:v4 forKeyedSubscript:@"graphSchemaVersion"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_questionVersion];
  [dictionary setObject:v5 forKeyedSubscript:@"questionVersion"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_algorithmVersion];
  [dictionary setObject:v6 forKeyedSubscript:@"algorithmVersion"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_photosModelVersion];
  [dictionary setObject:v7 forKeyedSubscript:@"photosModelVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_questionVersion];
  [dictionary setObject:v8 forKeyedSubscript:@"questionVersion"];

  [dictionary setObject:self->_questionTypeString forKeyedSubscript:@"questionType"];
  [dictionary setObject:self->_photoLibrarySize forKeyedSubscript:@"photosLibrarySize"];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falseNegatives](self->_evaluation, "falseNegatives")}];
  [dictionary setObject:v9 forKeyedSubscript:@"falseNegativeCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation falsePositives](self->_evaluation, "falsePositives")}];
  [dictionary setObject:v10 forKeyedSubscript:@"falsePositiveCount"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation trueNegatives](self->_evaluation, "trueNegatives")}];
  [dictionary setObject:v11 forKeyedSubscript:@"trueNegativeCount"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PGPrecisionRecallEvaluation truePositives](self->_evaluation, "truePositives")}];
  [dictionary setObject:v12 forKeyedSubscript:@"truePositiveCount"];

  return dictionary;
}

- (id)_groundTruthByPersonUUIDFromQuestions:(id)questions
{
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__PGPhotosChallengeMetricEvent__groundTruthByPersonUUIDFromQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = questionsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = questionsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __70__PGPhotosChallengeMetricEvent__groundTruthByPersonUUIDFromQuestions___block_invoke(id *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [a1[4] metricsCache];
  v5 = [v4 activePersonUUIDByPersonUUID];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = a1[5];
  v35 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v35)
  {
    v34 = *v37;
    v30 = *MEMORY[0x277D3C9B0];
    v29 = *MEMORY[0x277D3C8B8];
    v28 = *MEMORY[0x277D3C8C0];
    v31 = v5;
    v32 = v3;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        v8 = [v7 entityIdentifier];
        v9 = MEMORY[0x277CD9938];
        v10 = [v5 objectForKeyedSubscript:v8];
        v11 = [v9 localIdentifierWithUUID:v10];

        v12 = [v3 personNodeForPersonLocalIdentifier:v11];
        if (v12)
        {
          v13 = [v7 state];
          v14 = MEMORY[0x277CBEC28];
          if (v13 == 2)
          {
            v14 = MEMORY[0x277CBEC38];
          }

          v15 = v14;
          if ([v7 type] == 5)
          {
            v16 = a1;
            v17 = [v7 additionalInfo];
            v18 = [v17 objectForKeyedSubscript:v30];
            v19 = [v18 isEqualToString:@"CHILD"];

            if (v19)
            {
              v20 = [v7 additionalInfo];
              v21 = [v20 objectForKeyedSubscript:v29];

              v22 = [v7 state];
              v23 = MEMORY[0x277CBEC28];
              a1 = v16;
              if (v22 == 2)
              {
                v24 = [v21 isEqualToString:v28];
                v23 = MEMORY[0x277CBEC28];
                if (v24)
                {
                  v23 = MEMORY[0x277CBEC38];
                }
              }

              v25 = v23;

              v15 = v25;
              v3 = v32;
            }

            else
            {
              v3 = v32;
              a1 = v16;
            }

            v5 = v31;
          }

          [a1[6] setObject:v15 forKeyedSubscript:v8];
        }

        else
        {
          v26 = +[PGLogging sharedLogging];
          v15 = [v26 loggingConnection];

          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v27 = [v7 entityIdentifier];
            *buf = 138412290;
            v41 = v27;
            _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Failed to find person node for entity identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v35);
  }
}

- (id)_groundTruthByAssetIdentifiersFromQuestions:(id)questions
{
  v37 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = questionsCopy;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    *&v7 = 138412290;
    v26 = v7;
    v27 = *v31;
    selfCopy = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        entityIdentifier = [v11 entityIdentifier];
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
        v15 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];
        if (v15)
        {

LABEL_9:
          if ([v11 state] == 2)
          {
            v21 = MEMORY[0x277CBEC38];
          }

          else
          {
            v21 = MEMORY[0x277CBEC28];
          }

          [dictionary setObject:v21 forKeyedSubscript:entityIdentifier];
          goto LABEL_13;
        }

        [(PGPhotosChallengeMetricEvent *)self metricsCache];
        v17 = v16 = dictionary;
        [v17 assetByAssetSyndicationIdentifier];
        v19 = v18 = v8;
        v20 = [v19 objectForKeyedSubscript:entityIdentifier];

        v8 = v18;
        dictionary = v16;
        v9 = v27;
        self = selfCopy;

        if (v20)
        {
          goto LABEL_9;
        }

        v22 = +[PGLogging sharedLogging];
        loggingConnection = [v22 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = v26;
          v35 = entityIdentifier;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      v8 = v24;
    }

    while (v24);
  }

  return dictionary;
}

- (id)groundTruthByMomentUUIDFromExhaustiveMomentLabelingQuestions:(id)questions meaningLabel:(id)label withMetricsCache:(id)cache
{
  v39 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  labelCopy = label;
  cacheCopy = cache;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = questionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v33;
    v31 = *MEMORY[0x277D3C8B8];
    *&v11 = 138412290;
    v28 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        if ([v15 state] == 2)
        {
          entityIdentifier = [v15 entityIdentifier];
          momentUUIDsForExhaustiveMomentLabelingQuestion = [cacheCopy momentUUIDsForExhaustiveMomentLabelingQuestion];
          v18 = [momentUUIDsForExhaustiveMomentLabelingQuestion containsObject:entityIdentifier];

          if (v18)
          {
            additionalInfo = [v15 additionalInfo];
            loggingConnection = [additionalInfo objectForKeyedSubscript:v31];

            v21 = MEMORY[0x277CBEB98];
            v22 = [loggingConnection componentsSeparatedByString:@", "];
            v23 = [v21 setWithArray:v22];

            if ([v23 count])
            {
              v24 = [v23 containsObject:labelCopy];
              v25 = [MEMORY[0x277CCABB0] numberWithBool:v24];
              [dictionary setObject:v25 forKeyedSubscript:entityIdentifier];
            }
          }

          else
          {
            v26 = +[PGLogging sharedLogging];
            loggingConnection = [v26 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = v28;
              v37 = entityIdentifier;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find moment with uuid in the photoLibrary: '%@'", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v12);
  }

  return dictionary;
}

- (id)_reasonResultByAssetEntityIdentifierForTitlingQuestions:(id)questions questionType:(unsigned __int16)type
{
  typeCopy = type;
  v29 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = questionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ([v12 type] == typeCopy)
        {
          state = [v12 state];
          v14 = @"NO";
          if (state == 2)
          {
            v14 = @"YES";
          }

          v15 = v14;
          additionalInfo = [v12 additionalInfo];
          v17 = [additionalInfo objectForKeyedSubscript:v10];

          if (v17)
          {
            additionalInfo2 = [v12 additionalInfo];
            v19 = [additionalInfo2 objectForKeyedSubscript:v10];
          }

          else
          {
            v19 = @"SAME";
          }

          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[New->%@]-[Legacy->%@]", v15, v19];
          entityIdentifier = [v12 entityIdentifier];
          [v23 setObject:v20 forKeyedSubscript:entityIdentifier];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v23;
}

- (id)_groundTruthForTitlingQuestions:(id)questions questionType:(unsigned __int16)type
{
  typeCopy = type;
  v25 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = questionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 type] == typeCopy)
        {
          entityIdentifier = [v11 entityIdentifier];
          metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
          dayHighlightAssetIdentifiers = [metricsCache dayHighlightAssetIdentifiers];
          v15 = [dayHighlightAssetIdentifiers containsObject:entityIdentifier];

          if (v15)
          {
            if ([v11 state] == 2)
            {
              v16 = MEMORY[0x277CBEC38];
            }

            else
            {
              v16 = MEMORY[0x277CBEC28];
            }

            [dictionary setObject:v16 forKeyedSubscript:entityIdentifier];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)_gatherMetricsForHighlightTitlingQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForTitlingQuestions:questionsCopy questionType:28];
    allKeys = [v10 allKeys];
    v12 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:allKeys withDefaultBoolValue:1];

    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetEntityIdentifierForTitlingQuestions:questionsCopy questionType:28];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2243;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }
    }

    v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"highlightTitling" category:@"dayHighlightTitling"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    if (v7)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2247;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v17 = MEMORY[0x277D86220];
LABEL_24:
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v8 = v16;
      }

      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_25;
      }

      v18 = 0;
      v7[2](v7, &v18, 1.0);
      if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 67109378;
      v20 = 2250;
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v17 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
    goto LABEL_25;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 2237;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (id)_tripTitlingReasonResultByAssetEntityIdentifierForQuestions:(id)questions
{
  v28 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = questionsCopy;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = *MEMORY[0x277D3CA00];
    v9 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([v11 type] == 26 && v8 <= objc_msgSend(v11, "questionVersion"))
        {
          state = [v11 state];
          v13 = @"NO";
          if (state == 2)
          {
            v13 = @"YES";
          }

          v14 = v13;
          additionalInfo = [v11 additionalInfo];
          v16 = [additionalInfo objectForKeyedSubscript:v9];

          if (v16)
          {
            additionalInfo2 = [v11 additionalInfo];
            v18 = [additionalInfo2 objectForKeyedSubscript:v9];
          }

          else
          {
            v18 = @"SAME";
          }

          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[New->%@]-[Legacy->%@]", v14, v18];
          entityIdentifier = [v11 entityIdentifier];
          [v22 setObject:v19 forKeyedSubscript:entityIdentifier];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  return v22;
}

- (id)_groundTruthForTripTitlingQuestions:(id)questions
{
  v21 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = questionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x277CBEC28];
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == 26)
        {
          entityIdentifier = [v12 entityIdentifier];
          if ([v12 state] == 2)
          {
            v14 = v10;
          }

          else
          {
            v14 = v9;
          }

          [dictionary setObject:v14 forKeyedSubscript:entityIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (void)_gatherMetricsForTripTitlingQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForTripTitlingQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    v12 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:allKeys withDefaultBoolValue:1];

    v13 = [(PGPhotosChallengeMetricEvent *)self _tripTitlingReasonResultByAssetEntityIdentifierForQuestions:questionsCopy];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2188;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }
    }

    v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"tripTitling" category:@"tripTitling"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    if (v7)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2192;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v17 = MEMORY[0x277D86220];
LABEL_24:
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v8 = v16;
      }

      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_25;
      }

      v18 = 0;
      v7[2](v7, &v18, 1.0);
      if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 67109378;
      v20 = 2195;
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v17 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
    goto LABEL_25;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 2181;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (id)_syndicatedAssetFromQuestion:(id)question
{
  v24 = *MEMORY[0x277D85DE8];
  questionCopy = question;
  metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
  assetByAssetSyndicationIdentifier = [metricsCache assetByAssetSyndicationIdentifier];
  entityIdentifier = [questionCopy entityIdentifier];
  v8 = [assetByAssetSyndicationIdentifier objectForKeyedSubscript:entityIdentifier];

  if (!v8)
  {
    v16 = +[PGLogging sharedLogging];
    loggingConnection = [v16 loggingConnection];

    if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    entityIdentifier2 = [questionCopy entityIdentifier];
    v22 = 138412290;
    v23 = entityIdentifier2;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find asset with syndication uuid: '%@'", &v22, 0xCu);
LABEL_7:

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  curationProperties = [v8 curationProperties];
  loggingConnection = [curationProperties syndicationIdentifier];

  if (!loggingConnection)
  {
    v17 = +[PGLogging sharedLogging];
    loggingConnection2 = [v17 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      uuid = [v8 uuid];
      v22 = 138412290;
      v23 = uuid;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Syndication identifier is nil for asset %@", &v22, 0xCu);
    }

    loggingConnection = 0;
    goto LABEL_13;
  }

  mediaAnalysisProperties = [v8 mediaAnalysisProperties];
  syndicationProcessingVersion = [mediaAnalysisProperties syndicationProcessingVersion];

  if (syndicationProcessingVersion != *MEMORY[0x277CD9B40] && syndicationProcessingVersion != *MEMORY[0x277CD9B48])
  {
    v13 = +[PGLogging sharedLogging];
    entityIdentifier2 = [v13 loggingConnection];

    if (os_log_type_enabled(entityIdentifier2, OS_LOG_TYPE_INFO))
    {
      uuid2 = [v8 uuid];
      v22 = 138412290;
      v23 = uuid2;
      _os_log_impl(&dword_22F0FC000, entityIdentifier2, OS_LOG_TYPE_INFO, "Syndicated asset not yet inferred: %@", &v22, 0xCu);
    }

    goto LABEL_7;
  }

  v19 = v8;
LABEL_14:

  return v19;
}

- (id)_reasonResultByAssetSyndicationIdentifierForQuestions:(id)questions
{
  v62 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = questionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        v11 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetFromQuestion:v10];
        v12 = v11;
        if (v11)
        {
          mediaAnalysisProperties = [v11 mediaAnalysisProperties];
          syndicationProcessingValue = [mediaAnalysisProperties syndicationProcessingValue];

          if ((syndicationProcessingValue & 0x1000) == 0)
          {
            [v51 setObject:v12 forKeyedSubscript:v10];
            if ((syndicationProcessingValue & 0x6EF0) == 0)
            {
              localIdentifier = [v12 localIdentifier];
              [v46 setObject:v12 forKeyedSubscript:localIdentifier];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v7);
  }

  allValues = [v46 allValues];
  curationSession = [(PGPhotosChallengeMetricEvent *)self curationSession];
  [curationSession prepareAssets:allValues];

  v45 = allValues;
  [MEMORY[0x277CD97A8] prefetchScenesOnAssets:allValues];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v18 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v18)
  {
    v19 = v18;
    v50 = *v53;
    v48 = *MEMORY[0x277D3C8B8];
    v20 = *MEMORY[0x277D3ADB0];
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v53 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v52 + 1) + 8 * j);
        v23 = [v51 objectForKeyedSubscript:v22];
        v24 = v23;
        if (v23)
        {
          mediaAnalysisProperties2 = [v23 mediaAnalysisProperties];
          syndicationProcessingValue2 = [mediaAnalysisProperties2 syndicationProcessingValue];

          if ([v22 state] == 2)
          {
            v27 = @"YES";
          }

          else
          {
            v27 = @"NO";
          }

          v28 = v27;
          additionalInfo = [v22 additionalInfo];
          v30 = [additionalInfo objectForKeyedSubscript:v48];
          v31 = v30;
          v32 = @"None";
          if (v30)
          {
            v32 = v30;
          }

          v33 = v32;

          v34 = syndicationProcessingValue2 & 0x7EF0;
          if ((syndicationProcessingValue2 & 0x7EF0) != 0)
          {
            v35 = @"YES";
          }

          else
          {
            v35 = @"NO";
          }

          v36 = v35;
          v37 = PHAssetMediaAnalysisSyndicationProcessingValueDescription();
          if (!v34)
          {
            curationModel = [v24 curationModel];
            v39 = @"Meme/Document/Screenshot";
            if ([curationModel isMemeWithAsset:v24] & 1) != 0 || (v39 = @"NSFW", (objc_msgSend(curationModel, "isVeryPreciselyIVSNSFWExplicitWithAsset:", v24)) || (objc_msgSend(v24, "curationScore"), v39 = @"Low curation score", v40 < v20))
            {

              v37 = v39;
            }
          }

          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@->%@]-[%@->%@]", v28, v33, v36, v37];
          curationProperties = [v24 curationProperties];
          syndicationIdentifier = [curationProperties syndicationIdentifier];

          [v49 setObject:v41 forKeyedSubscript:syndicationIdentifier];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v19);
  }

  return v49;
}

- (id)_syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:(id)identifiers
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetSyndicationIdentifier = [metricsCache assetByAssetSyndicationIdentifier];
        v13 = [assetByAssetSyndicationIdentifier objectForKeyedSubscript:v10];

        mediaAnalysisProperties = [v13 mediaAnalysisProperties];
        v15 = ([mediaAnalysisProperties syndicationProcessingValue] & 0x7EF0) != 0;

        v16 = [MEMORY[0x277CCABB0] numberWithBool:v15];
        [v5 setObject:v16 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)_syndicatedAssetsGroundTruthByAssetIdentifiersFromQuestions:(id)questions
{
  v20 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = questionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetFromQuestion:v11, v15];
        if (v12)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByAssetIdentifiersFromQuestions:v5];

  return v13;
}

- (void)_gatherMetricsForSyndicatedAssetsQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetsGroundTruthByAssetIdentifiersFromQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.3);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2059;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:allKeys];
      v15 = CFAbsoluteTimeGetCurrent();
      if (v15 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.6);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2062;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_31;
        }

        v8 = v15;
      }

      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetSyndicationIdentifierForQuestions:questionsCopy];
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2065;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_30:

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v8 = v16;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _syndicatedAssetsInferenceResultsForAssetSyndicationIdentifiers:allKeys];
      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetSyndicationIdentifierForQuestions:questionsCopy];
    }

    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"syndicatedAssets" category:@"syndicatedAssets"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v10 inferenceResults:v13 reasonResultByAssetIdentifier:v14];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 1.0);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 2070;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 2055;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:
}

- (id)_featuredPhotoInferenceResultsForAnswerDateByAssetIds:(id)ids questionMetricType:(unsigned __int16)type
{
  typeCopy = type;
  v48 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v34 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v11 = [PGLongTailSuggester alloc];
  metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
  featuredPhotosSuggestionSession = [metricsCache featuredPhotosSuggestionSession];
  v29 = [(PGAbstractSuggester *)v11 initWithSession:featuredPhotosSuggestionSession];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = idsCopy;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v14)
  {
    v32 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        allKeys = [v16 allKeys];
        firstObject = [allKeys firstObject];

        v20 = [v16 objectForKeyedSubscript:firstObject];
        metricsCache2 = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetIdentifier = [metricsCache2 assetByAssetIdentifier];
        v23 = [assetByAssetIdentifier objectForKeyedSubscript:firstObject];

        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __105__PGPhotosChallengeMetricEvent__featuredPhotoInferenceResultsForAnswerDateByAssetIds_questionMetricType___block_invoke;
        v35[3] = &unk_27888A688;
        v35[4] = self;
        v38 = &v39;
        v24 = v23;
        v36 = v24;
        v25 = v20;
        v37 = v25;
        [v34 enumerateObjectsUsingBlock:v35];
        if (typeCopy != 119)
        {
          v26 = *(v40 + 24);
LABEL_10:
          v27 = [MEMORY[0x277CCABB0] numberWithBool:v26 & 1];
          [dictionary setObject:v27 forKeyedSubscript:v16];

          goto LABEL_11;
        }

        v26 = [(PGLongTailSuggester *)v29 canGenerateSuggestionWithAsset:v24 onDate:v25];
        if (v26 & 1 | ((v40[3] & 1) == 0))
        {
          goto LABEL_10;
        }

LABEL_11:

        _Block_object_dispose(&v39, 8);
        objc_autoreleasePoolPop(v17);
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v14);
  }

  return dictionary;
}

void __105__PGPhotosChallengeMetricEvent__featuredPhotoInferenceResultsForAnswerDateByAssetIds_questionMetricType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) metricsCache];
  v7 = [v6 featuredPhotosSuggestionSession];
  v9 = [a2 suggesterWithSession:v7];

  *(*(*(a1 + 56) + 8) + 24) = [v9 canGenerateSuggestionWithAsset:*(a1 + 40) onDate:*(a1 + 48)];
  v8 = *(*(a1 + 56) + 8);
  if (*(v8 + 24) == 1)
  {
    *(v8 + 24) = 1;
    *a3 = 1;
  }
}

- (id)_groundTruthForFeaturedPhotoFromQuestions:(id)questions
{
  v35 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = questionsCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    v9 = *MEMORY[0x277D3C8F0];
    *&v6 = 138412290;
    v23 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        entityIdentifier = [v11 entityIdentifier];
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
        v15 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

        if (v15)
        {
          additionalInfo = [v11 additionalInfo];
          loggingConnection2 = [additionalInfo objectForKeyedSubscript:v9];

          if (loggingConnection2)
          {
            v30 = entityIdentifier;
            v31 = loggingConnection2;
            loggingConnection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
            if ([v11 state] == 2)
            {
              v19 = MEMORY[0x277CBEC38];
            }

            else
            {
              v19 = MEMORY[0x277CBEC28];
            }

            [dictionary setObject:v19 forKeyedSubscript:loggingConnection];
          }

          else
          {
            v21 = +[PGLogging sharedLogging];
            loggingConnection = [v21 loggingConnection];

            if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Featured photo question doesn't have the date when it was answered", buf, 2u);
            }
          }
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          loggingConnection2 = [v20 loggingConnection];

          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v33 = entityIdentifier;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (void)_gatherMetricsForFeaturedPhotoQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  typeCopy = type;
  v25 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v9 = _Block_copy(block);
  v10 = 0.0;
  if (!v9 || (v11 = CFAbsoluteTimeGetCurrent(), v11 < 0.01))
  {
LABEL_7:
    v12 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForFeaturedPhotoFromQuestions:questionsCopy];
    allKeys = [v12 allKeys];
    if (v9)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v10 >= 0.01)
      {
        v20 = 0;
        v9[2](v9, &v20, 0.5);
        if (v20)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v22 = 1970;
            v23 = 2080;
            v24 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v10 = Current;
      }

      v15 = [(PGPhotosChallengeMetricEvent *)self _featuredPhotoInferenceResultsForAnswerDateByAssetIds:allKeys questionMetricType:typeCopy];
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v10 >= 0.01)
      {
        v20 = 0;
        v9[2](v9, &v20, 0.9);
        if (v20)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v22 = 1973;
          v23 = 2080;
          v24 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v17 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v10 = v16;
      }
    }

    else
    {
      v15 = [(PGPhotosChallengeMetricEvent *)self _featuredPhotoInferenceResultsForAnswerDateByAssetIds:allKeys questionMetricType:typeCopy];
    }

    v18 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"featuredPhoto" category:@"featuredPhoto"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v18];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:v12 andInferenceResults:v15];

    if (!v9)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v10 < 0.01)
    {
      goto LABEL_25;
    }

    v20 = 0;
    v9[2](v9, &v20, 1.0);
    if (!v20 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v22 = 1977;
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v17 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v20 = 0;
  v9[2](v9, &v20, 0.0);
  if (v20 != 1)
  {
    v10 = v11;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v22 = 1966;
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (id)_reasonResultByAssetEntityIdentifierForMusicQualityQuestions:(id)questions
{
  v38 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = questionsCopy;
  v4 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    v7 = *MEMORY[0x277D3C8B8];
    v29 = *MEMORY[0x277D3C970];
    v8 = *MEMORY[0x277D3C968];
    v30 = *MEMORY[0x277D3C8B8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        if ([v10 type] == 15)
        {
          state = [v10 state];
          v12 = @"NO";
          if (state == 2)
          {
            v12 = @"YES";
          }

          v13 = v12;
          additionalInfo = [v10 additionalInfo];
          v15 = [additionalInfo objectForKeyedSubscript:v7];

          if (v15)
          {
            additionalInfo2 = [v10 additionalInfo];
            v17 = [additionalInfo2 objectForKeyedSubscript:v7];
          }

          else
          {
            v17 = @"NA";
          }

          additionalInfo3 = [v10 additionalInfo];
          v19 = [additionalInfo3 objectForKeyedSubscript:v29];

          if (v19)
          {
            additionalInfo4 = [v10 additionalInfo];
            v21 = [additionalInfo4 objectForKeyedSubscript:v29];
          }

          else
          {
            v21 = @"0";
          }

          additionalInfo5 = [v10 additionalInfo];
          v23 = [additionalInfo5 objectForKeyedSubscript:v8];

          if (v23)
          {
            additionalInfo6 = [v10 additionalInfo];
            v25 = [additionalInfo6 objectForKeyedSubscript:v8];
          }

          else
          {
            v25 = @"Unknown";
          }

          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"[LikedSong:%@:%@->%@]-[Reason->%@]", v25, v21, v13, v17];
          entityIdentifier = [v10 entityIdentifier];
          [v31 setObject:v26 forKeyedSubscript:entityIdentifier];

          v7 = v30;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v5);
  }

  return v31;
}

- (id)_groundTruthForMusicQualityQuestions:(id)questions
{
  v21 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = questionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x277CBEC28];
    v10 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 type] == 15)
        {
          entityIdentifier = [v12 entityIdentifier];
          if ([v12 state] == 2)
          {
            v14 = v10;
          }

          else
          {
            v14 = v9;
          }

          [dictionary setObject:v14 forKeyedSubscript:entityIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (void)_gatherMetricsForMemoryMusicQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForMusicQualityQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    v12 = [(PGPhotosChallengeMetricEvent *)self _inferredResultsForEntityIdentifiers:allKeys withDefaultBoolValue:1];

    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonResultByAssetEntityIdentifierForMusicQualityQuestions:questionsCopy];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1906;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }
    }

    v15 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"memoryMusicQuality" category:@"memoryMusicQuality"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v15 evaluateWithGroundTruthResults:v10 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    if (v7)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1910;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v17 = MEMORY[0x277D86220];
LABEL_24:
            _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_25:

LABEL_26:
          goto LABEL_27;
        }

        v8 = v16;
      }

      [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
      if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
      {
        goto LABEL_25;
      }

      v18 = 0;
      v7[2](v7, &v18, 1.0);
      if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_25;
      }

      *buf = 67109378;
      v20 = 1913;
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
      v17 = MEMORY[0x277D86220];
      goto LABEL_24;
    }

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v15];
    goto LABEL_25;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 1900;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (void)_gatherMetricsForMemoryQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  typeCopy = type;
  v58 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v8 = _Block_copy(block);
  v9 = 0.0;
  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v54 = 0;
      v8[2](v8, &v54, 0.0);
      if (v54 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v57 = 1836;
          *&v57[4] = 2080;
          *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v11 = MEMORY[0x277D86220];
LABEL_48:
          _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      v9 = Current;
    }
  }

  v12 = [questionsCopy count];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v41 = questionsCopy;
  obj = questionsCopy;
  v13 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v13)
  {
    v15 = v13;
    v45 = 0;
    v46 = 0;
    v16 = 1.0 / v12;
    v49 = *v51;
    v17 = 0.0;
    *&v14 = 67109120;
    v40 = v14;
    v18 = typeCopy;
    selfCopy = self;
    while (2)
    {
      v19 = 0;
      v44 = v15;
      do
      {
        if (*v51 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v50 + 1) + 8 * v19);
        v17 = v16 + v17;
        if (v8)
        {
          v21 = CFAbsoluteTimeGetCurrent();
          if (v21 - v9 >= 0.01)
          {
            v54 = 0;
            v8[2](v8, &v54, v17);
            if (v54)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v57 = 1845;
                *&v57[4] = 2080;
                *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              questionsCopy = v41;
              goto LABEL_49;
            }

            v9 = v21;
          }
        }

        entityIdentifier = [v20 entityIdentifier];
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        memoryByMemoryIdentifier = [metricsCache memoryByMemoryIdentifier];
        v25 = [memoryByMemoryIdentifier objectForKeyedSubscript:entityIdentifier];

        if (v25)
        {
          if (v18 == 116)
          {
            if ([v20 state] == 2)
            {
              ++v45;
            }

            else
            {
              ++v46;
            }
          }

          else
          {
            v28 = v8;
            category = [v25 category];
            subcategory = [v25 subcategory];
            memoryCategorySubCategoryByQuestionMetricType = [(PGPhotosChallengeMetricEvent *)self memoryCategorySubCategoryByQuestionMetricType];
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v18];
            v32 = [memoryCategorySubCategoryByQuestionMetricType objectForKeyedSubscript:v31];

            if (!v32)
            {
              v33 = +[PGLogging sharedLogging];
              loggingConnection = [v33 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = v40;
                *v57 = v18;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "QuestionMetricType %d has no MemoryCategory/SubCategory pairs", buf, 8u);
              }
            }

            firstObject = [v32 firstObject];
            unsignedIntegerValue = [firstObject unsignedIntegerValue];

            lastObject = [v32 lastObject];
            unsignedIntegerValue2 = [lastObject unsignedIntegerValue];

            if (category == unsignedIntegerValue)
            {
              v8 = v28;
              v15 = v44;
              if (subcategory == unsignedIntegerValue2)
              {
                v18 = typeCopy;
                if ([v20 state] == 2)
                {
                  ++v45;
                }

                else
                {
                  ++v46;
                }
              }

              else
              {
                v18 = typeCopy;
              }
            }

            else
            {
              v8 = v28;
              v18 = typeCopy;
              v15 = v44;
            }

            self = selfCopy;
          }
        }

        else
        {
          v26 = +[PGLogging sharedLogging];
          loggingConnection2 = [v26 loggingConnection];

          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v57 = entityIdentifier;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "No memory found for uuid %@ when collecting metrics for memory quality question.", buf, 0xCu);
          }
        }

        ++v19;
      }

      while (v15 != v19);
      v15 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v39 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"memoryQuality" category:@"memoryQuality" truePositives:v45 falsePositives:v46 falseNegatives:0 trueNegatives:0];
  [(PGPhotosChallengeMetricEvent *)self setEvaluation:v39];

  questionsCopy = v41;
  if (v8)
  {
    if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
    {
      v54 = 0;
      v8[2](v8, &v54, 1.0);
      if (v54)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v57 = 1893;
          *&v57[4] = 2080;
          *&v57[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v11 = MEMORY[0x277D86220];
          goto LABEL_48;
        }
      }
    }
  }

LABEL_49:
}

- (void)_gatherMetricsForPetKnowledgeQuestions:(id)questions progressBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v29 = 0;
      v7[2](v7, &v29, 0.0);
      if (v29 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v32 = 1808;
          v33 = 2080;
          v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
LABEL_32:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      v8 = Current;
    }
  }

  selfCopy = self;
  v11 = [questionsCopy count];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = questionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 1.0 / v11;
    v18 = *v26;
    v19 = 0.0;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        v19 = v17 + v19;
        if (v7)
        {
          v22 = CFAbsoluteTimeGetCurrent();
          if (v22 - v8 >= 0.01)
          {
            v29 = 0;
            v7[2](v7, &v29, v19);
            if (v29)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v32 = 1817;
                v33 = 2080;
                v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_33;
            }

            v8 = v22;
          }
        }

        if ([v21 state] == 2)
        {
          ++v16;
        }

        else if ([v21 state] == 3)
        {
          ++v15;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v23 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"petKnowledge" category:@"petKnowledge" truePositives:v16 falsePositives:v15 falseNegatives:0 trueNegatives:0];
  [(PGPhotosChallengeMetricEvent *)selfCopy setEvaluation:v23];

  if (v7)
  {
    if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
    {
      v29 = 0;
      v7[2](v7, &v29, 0.0);
      if (v29)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v32 = 1829;
          v33 = 2080;
          v34 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_32;
        }
      }
    }
  }

LABEL_33:
}

- (void)_deleteOutdatedPetQuestionsWithValidPetUUIDs:(id)ds
{
  v23[3] = *MEMORY[0x277D85DE8];
  workingContext = self->_workingContext;
  dsCopy = ds;
  photoLibrary = [(PGManagerWorkingContext *)workingContext photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"type", 13];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"displayType", 6];
  dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"entityIdentifier", dsCopy];

  v10 = MEMORY[0x277CCA920];
  v23[0] = v7;
  v23[1] = v8;
  v23[2] = dsCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [librarySpecificFetchOptions setPredicate:v12];

  v13 = [MEMORY[0x277CD9970] fetchQuestionsWithOptions:librarySpecificFetchOptions validQuestionsOnly:0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PGPhotosChallengeMetricEvent__deleteOutdatedPetQuestionsWithValidPetUUIDs___block_invoke;
  v19[3] = &unk_27888A660;
  v14 = v13;
  v20 = v14;
  v18 = 0;
  [photoLibrary performChangesAndWait:v19 error:&v18];
  v15 = v18;
  if (v15)
  {
    v16 = +[PGLogging sharedLogging];
    loggingConnection = [v16 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v15;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error deleting outdated pet questions: %@", buf, 0xCu);
    }
  }
}

- (id)_currentPetInferenceResultsForPetUUIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke;
  v12[3] = &unk_27888A638;
  v13 = dsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = dsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = [v15 graph];
  v18 = [v16 meNode];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__70470;
  v28 = __Block_byref_object_dispose__70471;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v16];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke_2;
  v23[3] = &unk_27888A610;
  v23[4] = &v24;
  [v3 enumerateNodesUsingBlock:v23];
  v14 = v3;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = [MEMORY[0x277CD9938] localIdentifierWithUUID:v7];
        v9 = [v25[5] objectForKeyedSubscript:v8];
        v10 = [v9 collection];
        v11 = [v10 ownerNodes];
        v12 = [v11 containsNode:v18];

        v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
        [*(a1 + 40) setObject:v13 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v30 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v24, 8);
}

void __71__PGPhotosChallengeMetricEvent__currentPetInferenceResultsForPetUUIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v4 = [v3 localIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (id)_groundTruthForCurrentPetInferenceFromQuestions:(id)questions
{
  v27 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = questionsCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = *MEMORY[0x277D3C8B8];
    v9 = *MEMORY[0x277D3C980];
    v10 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        additionalInfo = [v12 additionalInfo];
        v14 = [additionalInfo objectForKeyedSubscript:v8];

        state = [v12 state];
        v16 = v10;
        if (state == 2)
        {
          v17 = [v14 isEqualToString:v9];
          v16 = MEMORY[0x277CBEC38];
          if (!v17)
          {
            v16 = v10;
          }
        }

        v18 = v16;
        entityIdentifier = [v12 entityIdentifier];
        [v4 setObject:v18 forKeyedSubscript:entityIdentifier];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)_gatherMetricsForPetQuestions:(id)questions progressBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v9 = 0.0;
  if (!v8 || (v10 = CFAbsoluteTimeGetCurrent(), v10 < 0.01))
  {
LABEL_7:
    buf = 0;
    *&v37 = &buf;
    *(&v37 + 1) = 0x3032000000;
    v38 = __Block_byref_object_copy__70470;
    v39 = __Block_byref_object_dispose__70471;
    v40 = MEMORY[0x277CBEBF8];
    workingContext = self->_workingContext;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke;
    v31[3] = &unk_27888A5C0;
    v31[4] = &buf;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v31];
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__70470;
    v29 = __Block_byref_object_dispose__70471;
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = *(v37 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke_2;
    v24[3] = &unk_27888A5E8;
    v24[4] = &v25;
    [v12 enumerateObjectsUsingBlock:v24];
    v13 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"entityIdentifier", v26[5]];
    v14 = [questionsCopy filteredArrayUsingPredicate:v13];

    [(PGPhotosChallengeMetricEvent *)self _deleteOutdatedPetQuestionsWithValidPetUUIDs:v26[5]];
    v15 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForCurrentPetInferenceFromQuestions:v14];
    if (v8)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v9 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 0.5);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v32 = 67109378;
            v33 = 1728;
            v34 = 2080;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v32, 0x12u);
          }

          goto LABEL_26;
        }

        v9 = Current;
      }
    }

    allKeys = [v15 allKeys];
    v18 = [(PGPhotosChallengeMetricEvent *)self _currentPetInferenceResultsForPetUUIDs:allKeys];

    if (v8)
    {
      v19 = CFAbsoluteTimeGetCurrent();
      if (v19 - v9 >= 0.01)
      {
        v23 = 0;
        v8[2](v8, &v23, 0.9);
        if (v23)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            _Block_object_dispose(&v25, 8);

            _Block_object_dispose(&buf, 8);
            goto LABEL_27;
          }

          v32 = 67109378;
          v33 = 1731;
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v20 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v32, 0x12u);
          goto LABEL_25;
        }

        v9 = v19;
      }
    }

    v21 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"pet" category:@"pet"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v21];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:v15 andInferenceResults:v18];

    if (!v8)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v9 < 0.01)
    {
      goto LABEL_25;
    }

    v23 = 0;
    v8[2](v8, &v23, 1.0);
    if (!v23 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    v32 = 67109378;
    v33 = 1735;
    v34 = 2080;
    v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v20 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  LOBYTE(v25) = 0;
  (v8)[2](v8, &v25, 0.0);
  if (v25 != 1)
  {
    v9 = v10;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x6AD04000202;
    LOWORD(v37) = 2080;
    *(&v37 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_27:
}

void __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v8 = [a2 graph];
  v3 = [(PGGraphNodeCollection *)PGGraphPetNodeCollection nodesInGraph:v8];
  v4 = [v3 localIdentifiers];
  v5 = [v4 allObjects];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __76__PGPhotosChallengeMetricEvent__gatherMetricsForPetQuestions_progressBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:a2];
  [v2 addObject:v3];
}

- (id)_ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __88__PGPhotosChallengeMetricEvent__ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = dsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = dsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __88__PGPhotosChallengeMetricEvent__ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = [a2 graph];
  v3 = [*(a1 + 32) metricsCache];
  v25 = [v3 activePersonUUIDByPersonUUID];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = a1;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    *&v5 = 138412290;
    v22 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 allKeys];
        v11 = [v10 firstObject];

        v12 = [v9 objectForKeyedSubscript:v11];
        v13 = [v12 unsignedIntegerValue];
        v14 = MEMORY[0x277CD9938];
        v15 = [v25 objectForKeyedSubscript:v11];
        v16 = [v14 localIdentifierWithUUID:v15];

        v17 = [v26 personNodeForPersonLocalIdentifier:v16];
        v18 = v17;
        if (v17)
        {
          v19 = [v17 ageCategory] == v13;
          v20 = [MEMORY[0x277CCABB0] numberWithBool:v19];
          [*(v24 + 48) setObject:v20 forKeyedSubscript:v9];
        }

        else
        {
          v21 = +[PGLogging sharedLogging];
          v20 = [v21 loggingConnection];

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v32 = v16;
            _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "Failed to find person node for person local identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }
}

- (id)_groundTruthForAgeCategoryFromQuestions:(id)questions
{
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__PGPhotosChallengeMetricEvent__groundTruthForAgeCategoryFromQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = questionsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = questionsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __72__PGPhotosChallengeMetricEvent__groundTruthForAgeCategoryFromQuestions___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = [a2 graph];
  v3 = [*(a1 + 32) metricsCache];
  v4 = [v3 activePersonUUIDByPersonUUID];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = a1;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 entityIdentifier];
        v12 = MEMORY[0x277CD9938];
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v12 localIdentifierWithUUID:v13];

        v15 = [v24 personNodeForPersonLocalIdentifier:v14];
        if (v15)
        {
          v16 = [v10 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:@"ageCategory"];

          v29 = v11;
          v30 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          if ([v10 state] == 2)
          {
            v19 = MEMORY[0x277CBEC38];
          }

          else
          {
            v19 = MEMORY[0x277CBEC28];
          }

          [*(v23 + 48) setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v32 = v11;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find person node for uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)_gatherMetricsForAgeCategoryQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForAgeCategoryFromQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1640;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:allKeys];
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v20 = 1643;
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v15 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v8 = v14;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _ageCategoryInferenceResultsForAgeCategoryByPersonUUIDs:allKeys];
    }

    v16 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"ageCategory" category:@"ageCategory"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v16];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:v10 andInferenceResults:v13];

    if (!v7)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
    {
      goto LABEL_25;
    }

    v18 = 0;
    v7[2](v7, &v18, 1.0);
    if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v20 = 1647;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v15 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 1636;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (id)_namingInferenceResultsForContactIdentifierByPersonUUIDs:(id)ds
{
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = dsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = dsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke(id *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v22 = [v19 graph];
  v2 = [a1[4] metricsCache];
  v3 = [v2 activePersonUUIDByPersonUUID];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = a1[5];
  v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v4)
  {
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = MEMORY[0x277CD9938];
          v12 = [v3 objectForKeyedSubscript:v9];
          v13 = [v11 localIdentifierWithUUID:v12];

          v14 = [v22 personNodeForPersonLocalIdentifier:v13];
          if (v14)
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v31 = 0x2020000000;
            v32 = 0;
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke_430;
            v23[3] = &unk_27888A598;
            p_buf = &buf;
            v24 = v10;
            [v14 enumerateContactSuggestionsSortedByConfidenceMatchingQuery:1 usingBlock:v23];
            v15 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
            [a1[6] setObject:v15 forKeyedSubscript:v7];

            _Block_object_dispose(&buf, 8);
          }

          else
          {
            v17 = +[PGLogging sharedLogging];
            v18 = [v17 loggingConnection];

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v9;
              _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Failed to find person node for person uuid: '%@'", &buf, 0xCu);
            }
          }
        }

        else
        {
          v16 = +[PGLogging sharedLogging];
          v13 = [v16 loggingConnection];

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_ERROR, "Contact identifier for person: %@ is nil", &buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v4);
  }
}

void __89__PGPhotosChallengeMetricEvent__namingInferenceResultsForContactIdentifierByPersonUUIDs___block_invoke_430(uint64_t a1, void *a2)
{
  v3 = [a2 contactIdentifier];
  *(*(*(a1 + 40) + 8) + 24) |= [v3 isEqualToString:*(a1 + 32)];
}

- (id)_groundTruthForNamingFromQuestions:(id)questions
{
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__PGPhotosChallengeMetricEvent__groundTruthForNamingFromQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = questionsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = questionsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __67__PGPhotosChallengeMetricEvent__groundTruthForNamingFromQuestions___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = [a2 graph];
  v3 = [*(a1 + 32) metricsCache];
  v4 = [v3 activePersonUUIDByPersonUUID];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = a1;
  obj = *(a1 + 40);
  v5 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 138412290;
    v21 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 entityIdentifier];
        v12 = MEMORY[0x277CD9938];
        v13 = [v4 objectForKeyedSubscript:v11];
        v14 = [v12 localIdentifierWithUUID:v13];

        v15 = [v24 personNodeForPersonLocalIdentifier:v14];
        if (v15)
        {
          v16 = [v10 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:@"contactIdentifier"];

          v29 = v11;
          v30 = v17;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          if ([v10 state] == 2)
          {
            v19 = MEMORY[0x277CBEC38];
          }

          else
          {
            v19 = MEMORY[0x277CBEC28];
          }

          [*(v23 + 48) setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            goto LABEL_14;
          }

          v18 = [v10 entityIdentifier];
          *buf = v21;
          v32 = v18;
          _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "Failed to find person node for entity identifier: '%@'", buf, 0xCu);
        }

LABEL_14:
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)_gatherMetricsForNamingQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForNamingFromQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1562;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _namingInferenceResultsForContactIdentifierByPersonUUIDs:allKeys];
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v20 = 1565;
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v15 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v8 = v14;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _namingInferenceResultsForContactIdentifierByPersonUUIDs:allKeys];
    }

    v16 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"naming" category:@"naming"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v16];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:v10 andInferenceResults:v13];

    if (!v7)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
    {
      goto LABEL_25;
    }

    v18 = 0;
    v7[2](v7, &v18, 1.0);
    if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v20 = 1569;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v15 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 1558;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (id)_frequentLocationInferenceResultsForLocationByAssetIds:(id)ids locationType:(id)type
{
  idsCopy = ids;
  typeCopy = type;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__70470;
  v19 = __Block_byref_object_dispose__70471;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke;
  v12[3] = &unk_27888A570;
  v9 = idsCopy;
  v13 = v9;
  v14 = &v15;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = [v14 graph];
  v3 = [(PGGraphNodeCollection *)PGGraphFrequentLocationNodeCollection nodesInGraph:v15];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        [v10 coordinate];
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v21 = 0;
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_2;
        v17[3] = &unk_27888A548;
        v17[5] = v11;
        v17[6] = v12;
        v17[4] = &v18;
        [v3 enumerateIdentifiersAsCollectionsWithBlock:v17];
        v13 = [MEMORY[0x277CCABB0] numberWithBool:*(v19 + 24)];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:v7];

        _Block_object_dispose(&v18, 8);
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }
}

void __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 addressNodes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_3;
  v5[3] = &unk_27888A520;
  v6 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v4 enumerateNodesUsingBlock:v5];
}

void __100__PGPhotosChallengeMetricEvent__frequentLocationInferenceResultsForLocationByAssetIds_locationType___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 coordinate];
  CLLocationCoordinate2DGetDistanceFrom();
  if (v5 < *MEMORY[0x277D3B200])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_groundTruthForFrequentLocationFromQuestions:(id)questions
{
  v50 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = questionsCopy;
  v4 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v42;
    v8 = *MEMORY[0x277D3C8B8];
    v37 = *MEMORY[0x277D3C908];
    v35 = *MEMORY[0x277D3C928];
    v36 = *MEMORY[0x277D3C910];
    v34 = *MEMORY[0x277D3C938];
    *&v5 = 138412290;
    v33 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        if ([v10 state] == 2)
        {
          additionalInfo = [v10 additionalInfo];
          v12 = [additionalInfo objectForKeyedSubscript:v8];

          if (v12)
          {
            entityIdentifier = [v10 entityIdentifier];
            metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
            assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
            v16 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

            if (v16)
            {
              additionalInfo2 = [v10 additionalInfo];
              loggingConnection = [additionalInfo2 objectForKeyedSubscript:v8];

              additionalInfo3 = [v10 additionalInfo];
              v20 = [additionalInfo3 objectForKeyedSubscript:v37];

              additionalInfo4 = [v10 additionalInfo];
              v22 = [additionalInfo4 objectForKeyedSubscript:v36];

              v23 = objc_alloc(MEMORY[0x277CE41F8]);
              [v20 doubleValue];
              v25 = v24;
              [v22 doubleValue];
              v27 = [v23 initWithLatitude:v25 longitude:v26];
              v45 = entityIdentifier;
              v46 = v27;
              v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              if (([loggingConnection isEqualToString:v35]& 1) != 0 || (v29 = [loggingConnection isEqualToString:v34], v30 = MEMORY[0x277CBEC28], v29))
              {
                v30 = MEMORY[0x277CBEC38];
              }

              [dictionary setObject:v30 forKeyedSubscript:v28];
            }

            else
            {
              v31 = +[PGLogging sharedLogging];
              loggingConnection = [v31 loggingConnection];

              if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
              {
                *buf = v33;
                v48 = entityIdentifier;
                _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
              }
            }
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (void)_gatherMetricsForFrequentLocationQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  v27 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v8 = _Block_copy(block);
  if (!v8)
  {
    v10 = 0.0;
    goto LABEL_14;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = 0.0;
  if (Current >= 0.01)
  {
    v11 = Current;
    v22 = 0;
    v8[2](v8, &v22, 0.0);
    if (v22 == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v24 = 1463;
        v25 = 2080;
        v26 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
        v12 = MEMORY[0x277D86220];
LABEL_12:
        _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v10 = v11;
  }

  v13 = CFAbsoluteTimeGetCurrent();
  if (v13 - v10 < 0.01)
  {
LABEL_14:
    v14 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForFrequentLocationFromQuestions:questionsCopy];
    allKeys = [v14 allKeys];
    if (v8)
    {
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v10 >= 0.01)
      {
        v22 = 0;
        v8[2](v8, &v22, 0.5);
        if (v22)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v24 = 1471;
            v25 = 2080;
            v26 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_33;
        }

        v10 = v16;
      }

      v17 = [(PGPhotosChallengeMetricEvent *)self _frequentLocationInferenceResultsForLocationByAssetIds:allKeys locationType:0];
      v18 = CFAbsoluteTimeGetCurrent();
      if (v18 - v10 >= 0.01)
      {
        v22 = 0;
        v8[2](v8, &v22, 0.9);
        if (v22)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_32:

LABEL_33:
            goto LABEL_34;
          }

          *buf = 67109378;
          v24 = 1474;
          v25 = 2080;
          v26 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v19 = MEMORY[0x277D86220];
LABEL_31:
          _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_32;
        }

        v10 = v18;
      }
    }

    else
    {
      v17 = [(PGPhotosChallengeMetricEvent *)self _frequentLocationInferenceResultsForLocationByAssetIds:allKeys locationType:0];
    }

    v20 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"frequentlocation" category:@"locationType"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v20];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:v14 andInferenceResults:v17];

    if (!v8)
    {
      goto LABEL_32;
    }

    if (CFAbsoluteTimeGetCurrent() - v10 < 0.01)
    {
      goto LABEL_32;
    }

    v22 = 0;
    v8[2](v8, &v22, 1.0);
    if (!v22 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 67109378;
    v24 = 1478;
    v25 = 2080;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v19 = MEMORY[0x277D86220];
    goto LABEL_31;
  }

  v22 = 0;
  v8[2](v8, &v22, 0.1);
  if (!v22)
  {
    v10 = v13;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v24 = 1467;
    v25 = 2080;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v12 = MEMORY[0x277D86220];
    goto LABEL_12;
  }

LABEL_34:
}

- (id)_reasonByAssetEntityIdentifierForHolidayQuestions:(id)questions
{
  v25 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = questionsCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = *MEMORY[0x277D3C940];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        additionalInfo = [v10 additionalInfo];
        v12 = [additionalInfo objectForKeyedSubscript:v8];
        v13 = v12;
        v14 = @"<missing holiday name>";
        if (v12)
        {
          v14 = v12;
        }

        v15 = v14;

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[holidayName:%@]", v15];

        entityIdentifier = [v10 entityIdentifier];
        [v4 setObject:v16 forKeyedSubscript:entityIdentifier];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_holidayInferenceResultByEntityIdentifierForHolidayQuestions:(id)questions
{
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__PGPhotosChallengeMetricEvent__holidayInferenceResultByEntityIdentifierForHolidayQuestions___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = questionsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = questionsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __93__PGPhotosChallengeMetricEvent__holidayInferenceResultByEntityIdentifierForHolidayQuestions___block_invoke(id *a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [a1[4] metricsCache];
  v5 = [v4 momentUUIDByAssetIdentifier];

  v36 = v5;
  v33 = [v5 allValues];
  v34 = v3;
  v35 = [PGGraphMomentNodeCollection momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:"momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:inGraph:" inGraph:?];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = a1[5];
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v39 = *MEMORY[0x277D3C940];
    do
    {
      v10 = 0;
      v37 = v8;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        v12 = [v11 entityIdentifier];
        v13 = [a1[4] metricsCache];
        v14 = [v13 assetByAssetIdentifier];
        v15 = [v14 objectForKeyedSubscript:v12];

        if (v15)
        {
          v16 = [v11 additionalInfo];
          v17 = [v16 objectForKeyedSubscript:v39];

          if (v17)
          {
            v18 = [v36 objectForKeyedSubscript:v12];
            v19 = [v35 objectForKeyedSubscript:v18];
            if ([v19 count])
            {
              v20 = [v19 celebratedHolidayNodes];
              v21 = [v20 holidayNames];
              v38 = v12;
              v22 = v19;
              v23 = v18;
              v24 = v9;
              v25 = a1;
              v26 = v6;
              v27 = [v21 containsObject:v17];

              v28 = v27;
              v6 = v26;
              a1 = v25;
              v9 = v24;
              v18 = v23;
              v19 = v22;
              v12 = v38;
              v29 = [MEMORY[0x277CCABB0] numberWithBool:v28];
              [a1[6] setObject:v29 forKeyedSubscript:v38];
            }

            else
            {
              v32 = +[PGLogging sharedLogging];
              v29 = [v32 loggingConnection];

              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v45 = v12;
                _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", buf, 0xCu);
              }
            }

            v8 = v37;
          }

          else
          {
            v31 = +[PGLogging sharedLogging];
            v18 = [v31 loggingConnection];

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v45 = v12;
              _os_log_error_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_ERROR, "Holiday Name for asset: %@ is NULL", buf, 0xCu);
            }
          }
        }

        else
        {
          v30 = +[PGLogging sharedLogging];
          v17 = [v30 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v45 = v12;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find question with uuid: '%@'", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v8);
  }
}

- (id)_groundTruthForHolidayFromQuestions:(id)questions
{
  v29 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = questionsCopy;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 138412290;
    v20 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        entityIdentifier = [v11 entityIdentifier];
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
        v15 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

        if (v15)
        {
          if ([v11 state] == 2)
          {
            v16 = MEMORY[0x277CBEC38];
          }

          else
          {
            v16 = MEMORY[0x277CBEC28];
          }

          [dictionary setObject:v16 forKeyedSubscript:entityIdentifier];
        }

        else
        {
          v17 = +[PGLogging sharedLogging];
          loggingConnection = [v17 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v20;
            v27 = entityIdentifier;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)_gatherMetricsForHolidayQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  if (!v7)
  {
    v11 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForHolidayFromQuestions:questionsCopy];
    v12 = [(PGPhotosChallengeMetricEvent *)self _holidayInferenceResultByEntityIdentifierForHolidayQuestions:questionsCopy];
    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonByAssetEntityIdentifierForHolidayQuestions:questionsCopy];
    v9 = 0.0;
    goto LABEL_23;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v9 = 0.0;
  if (Current < 0.01)
  {
LABEL_8:
    v11 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForHolidayFromQuestions:questionsCopy];
    v14 = CFAbsoluteTimeGetCurrent();
    if (v14 - v9 >= 0.01)
    {
      v18 = 0;
      v7[2](v7, &v18, 0.5);
      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v20 = 1370;
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_31;
      }

      v9 = v14;
    }

    v12 = [(PGPhotosChallengeMetricEvent *)self _holidayInferenceResultByEntityIdentifierForHolidayQuestions:questionsCopy];
    v15 = CFAbsoluteTimeGetCurrent();
    if (v15 - v9 >= 0.01)
    {
      v18 = 0;
      v7[2](v7, &v18, 0.8);
      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v20 = 1373;
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_30;
      }

      v9 = v15;
    }

    v13 = [(PGPhotosChallengeMetricEvent *)self _reasonByAssetEntityIdentifierForHolidayQuestions:questionsCopy];
    v16 = CFAbsoluteTimeGetCurrent();
    if (v16 - v9 >= 0.01)
    {
      v18 = 0;
      v7[2](v7, &v18, 0.9);
      if (v18)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v20 = 1376;
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_29:

LABEL_30:
LABEL_31:

        goto LABEL_32;
      }

      v9 = v16;
    }

LABEL_23:
    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"holiday" category:@"holiday"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v11 inferenceResults:v12 reasonResultByAssetIdentifier:v13];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v9 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 1.0);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1381;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_29;
  }

  v10 = Current;
  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v9 = v10;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 1367;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_32:
}

- (void)_gatherMetricsForTripKeyQuestions:(id)questions progressBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (v7)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v38 = 0;
      v7[2](v7, &v38, 0.0);
      if (v38 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v41 = 1337;
          v42 = 2080;
          v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
LABEL_33:
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      v8 = Current;
    }
  }

  v11 = [questionsCopy count];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = questionsCopy;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v31 = 0;
    v32 = 0;
    v14 = 1.0 / v11;
    v15 = *v35;
    v30 = questionsCopy;
    v16 = 0.0;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        v16 = v14 + v16;
        if (v7)
        {
          v19 = CFAbsoluteTimeGetCurrent();
          if (v19 - v8 >= 0.01)
          {
            buf[0] = 0;
            v7[2](v7, buf, v16);
            if (buf[0])
            {
              v26 = 1;
              v8 = v19;
              goto LABEL_26;
            }

            v8 = v19;
          }
        }

        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        tripKeyAssetIdentifiers = [metricsCache tripKeyAssetIdentifiers];
        entityIdentifier = [v18 entityIdentifier];
        v23 = [tripKeyAssetIdentifiers containsObject:entityIdentifier];

        if (v23)
        {
          if ([v18 state] == 2)
          {
            ++v31;
          }

          else
          {
            state = [v18 state];
            v25 = v32;
            if (state == 3)
            {
              v25 = v32 + 1;
            }

            v32 = v25;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_26:
    questionsCopy = v30;
    v28 = v31;
    v27 = v32;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v26 = 0;
  }

  v29 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"tripKeyAsset" category:@"tripKeyAsset" truePositives:v28 falsePositives:v27 falseNegatives:0 trueNegatives:0];
  [(PGPhotosChallengeMetricEvent *)self setEvaluation:v29];

  if (v7)
  {
    if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
    {
      v38 = 0;
      v7[2](v7, &v38, 1.0);
      if (v38 | v26)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v41 = 1360;
          v42 = 2080;
          v43 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v10 = MEMORY[0x277D86220];
          goto LABEL_33;
        }
      }
    }
  }

LABEL_34:
}

- (id)_reasonResultsForPublicEventQuestions:(id)questions
{
  v35 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = questionsCopy;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v25 = *v27;
    v24 = *MEMORY[0x277D3C998];
    v6 = *MEMORY[0x277D3C9A0];
    v7 = *MEMORY[0x277D3C988];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * i);
        additionalInfo = [v9 additionalInfo];
        v11 = [additionalInfo objectForKeyedSubscript:v24];
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v6;
        }

        v14 = v13;

        entityIdentifier = [v9 entityIdentifier];
        additionalInfo2 = [v9 additionalInfo];
        v17 = [additionalInfo2 objectForKeyedSubscript:v7];

        if (v17)
        {
          v30 = entityIdentifier;
          v31 = v17;
          loggingConnection = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"[publicEventSource:%@]", v14];
          [v23 setObject:v19 forKeyedSubscript:loggingConnection];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          loggingConnection = [v20 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = entityIdentifier;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unexpected missing public event identifier for question with entity identifier %@", buf, 0xCu);
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v5);
  }

  return v23;
}

- (id)_publicEventInferenceResultsForPublicEventIdByAssetIds:(id)ids
{
  idsCopy = ids;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = idsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = idsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v20 = [v18 graph];
  v2 = [a1[4] metricsCache];
  v23 = [v2 momentUUIDByAssetIdentifier];

  v19 = [v23 allValues];
  v3 = [PGGraphMomentNodeCollection momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:v19 inGraph:v20];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1[5];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v4)
  {
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [v23 objectForKeyedSubscript:v9];
          v12 = [v3 objectForKeyedSubscript:v11];
          if ([v12 count])
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v32 = 0x2020000000;
            v33 = 0;
            v13 = [v12 publicEventNodes];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke_396;
            v24[3] = &unk_27888A4F8;
            v25 = v10;
            p_buf = &buf;
            [v13 enumerateNodesUsingBlock:v24];

            v14 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
            [a1[6] setObject:v14 forKeyedSubscript:v7];

            _Block_object_dispose(&buf, 8);
          }

          else
          {
            v16 = +[PGLogging sharedLogging];
            v17 = [v16 loggingConnection];

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v9;
              _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", &buf, 0xCu);
            }
          }
        }

        else
        {
          v15 = +[PGLogging sharedLogging];
          v11 = [v15 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Public Event Identifier for asset: %@ is NULL", &buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v4);
  }
}

void *__87__PGPhotosChallengeMetricEvent__publicEventInferenceResultsForPublicEventIdByAssetIds___block_invoke_396(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 muid];
  result = [*(a1 + 32) unsignedIntegerValue];
  if (v5 == result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (id)_groundTruthForPublicEventFromQuestions:(id)questions
{
  v35 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = questionsCopy;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v27;
    *&v6 = 138412290;
    v23 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        entityIdentifier = [v10 entityIdentifier];
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
        v14 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

        if (v14)
        {
          v15 = MEMORY[0x277CCABB0];
          additionalInfo = [v10 additionalInfo];
          v17 = [additionalInfo objectForKeyedSubscript:@"publicEventMUID"];
          loggingConnection = [v15 numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue")}];

          v30 = entityIdentifier;
          v31 = loggingConnection;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          if ([v10 state] == 2)
          {
            v20 = MEMORY[0x277CBEC38];
          }

          else
          {
            v20 = MEMORY[0x277CBEC28];
          }

          [dictionary setObject:v20 forKeyedSubscript:v19];
        }

        else
        {
          v21 = +[PGLogging sharedLogging];
          loggingConnection = [v21 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v23;
            v33 = entityIdentifier;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (void)_gatherMetricsForPublicEventQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForPublicEventFromQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1238;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_32;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _publicEventInferenceResultsForPublicEventIdByAssetIds:allKeys];
      v15 = CFAbsoluteTimeGetCurrent();
      if (v15 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.6);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1241;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_31;
        }

        v8 = v15;
      }

      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultsForPublicEventQuestions:questionsCopy];
      v16 = CFAbsoluteTimeGetCurrent();
      if (v16 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.7);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1244;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_30:

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v8 = v16;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _publicEventInferenceResultsForPublicEventIdByAssetIds:allKeys];
      v14 = [(PGPhotosChallengeMetricEvent *)self _reasonResultsForPublicEventQuestions:questionsCopy];
    }

    v17 = [[PGAssetsWithReasonPrecisionRecallEvaluation alloc] initWithIdentifier:@"publicEvent" category:@"publicEvent"];
    [(PGAssetsWithReasonPrecisionRecallEvaluation *)v17 evaluateWithGroundTruthResults:v10 inferenceResults:v13 reasonResultByAssetIdentifier:v14];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v17];
    if (v7)
    {
      if (CFAbsoluteTimeGetCurrent() - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 1.0);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1250;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

    goto LABEL_30;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 1234;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:
}

- (id)_businessInferenceResultsForBusinessIdByAssetIds:(id)ids
{
  idsCopy = ids;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke;
  v12[3] = &unk_27888A4D0;
  v12[4] = self;
  v13 = idsCopy;
  v7 = dictionary;
  v14 = v7;
  v8 = idsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke(id *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v18 = a2;
  v20 = [v18 graph];
  v2 = [a1[4] metricsCache];
  v23 = [v2 momentUUIDByAssetIdentifier];

  v19 = [v23 allValues];
  v3 = [PGGraphMomentNodeCollection momentNodeAsCollectionByMomentUUIDForArrayOfMomentUUIDs:v19 inGraph:v20];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1[5];
  v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v4)
  {
    v5 = *v28;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v8 = [v7 allKeys];
        v9 = [v8 firstObject];

        v10 = [v7 objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = [v23 objectForKeyedSubscript:v9];
          v12 = [v3 objectForKeyedSubscript:v11];
          if ([v12 count])
          {
            *&buf = 0;
            *(&buf + 1) = &buf;
            v32 = 0x2020000000;
            v33 = 0;
            v13 = [v12 businessNodes];
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke_387;
            v24[3] = &unk_27888A4A8;
            v25 = v10;
            p_buf = &buf;
            [v13 enumerateNodesUsingBlock:v24];

            v14 = [MEMORY[0x277CCABB0] numberWithBool:*(*(&buf + 1) + 24)];
            [a1[6] setObject:v14 forKeyedSubscript:v7];

            _Block_object_dispose(&buf, 8);
          }

          else
          {
            v16 = +[PGLogging sharedLogging];
            v17 = [v16 loggingConnection];

            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v9;
              _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", &buf, 0xCu);
            }
          }
        }

        else
        {
          v15 = +[PGLogging sharedLogging];
          v11 = [v15 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Business Identifier for asset: %@ is NULL", &buf, 0xCu);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v4);
  }
}

void __81__PGPhotosChallengeMetricEvent__businessInferenceResultsForBusinessIdByAssetIds___block_invoke_387(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 UUID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)_groundTruthForBusinessFromQuestions:(id)questions
{
  v33 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = questionsCopy;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        entityIdentifier = [v11 entityIdentifier];
        metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
        assetByAssetIdentifier = [metricsCache assetByAssetIdentifier];
        v15 = [assetByAssetIdentifier objectForKeyedSubscript:entityIdentifier];

        if (v15)
        {
          additionalInfo = [v11 additionalInfo];
          loggingConnection = [additionalInfo objectForKeyedSubscript:@"businessUUID"];

          v28 = entityIdentifier;
          v29 = loggingConnection;
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          if ([v11 state] == 2)
          {
            v19 = MEMORY[0x277CBEC38];
          }

          else
          {
            v19 = MEMORY[0x277CBEC28];
          }

          [dictionary setObject:v19 forKeyedSubscript:v18];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          loggingConnection = [v20 loggingConnection];

          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v31 = entityIdentifier;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to find asset with uuid: '%@'", buf, 0xCu);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  return dictionary;
}

- (void)_gatherMetricsForBusinessQuestions:(id)questions progressBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v7 = _Block_copy(block);
  v8 = 0.0;
  if (!v7 || (v9 = CFAbsoluteTimeGetCurrent(), v9 < 0.01))
  {
LABEL_7:
    v10 = [(PGPhotosChallengeMetricEvent *)self _groundTruthForBusinessFromQuestions:questionsCopy];
    allKeys = [v10 allKeys];
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.5);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 1160;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_26;
        }

        v8 = Current;
      }

      v13 = [(PGPhotosChallengeMetricEvent *)self _businessInferenceResultsForBusinessIdByAssetIds:allKeys];
      v14 = CFAbsoluteTimeGetCurrent();
      if (v14 - v8 >= 0.01)
      {
        v18 = 0;
        v7[2](v7, &v18, 0.9);
        if (v18)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }

          *buf = 67109378;
          v20 = 1163;
          v21 = 2080;
          v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v15 = MEMORY[0x277D86220];
LABEL_24:
          _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_25;
        }

        v8 = v14;
      }
    }

    else
    {
      v13 = [(PGPhotosChallengeMetricEvent *)self _businessInferenceResultsForBusinessIdByAssetIds:allKeys];
    }

    v16 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"business" category:@"business"];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v16];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:v10 andInferenceResults:v13];

    if (!v7)
    {
      goto LABEL_25;
    }

    if (CFAbsoluteTimeGetCurrent() - v8 < 0.01)
    {
      goto LABEL_25;
    }

    v18 = 0;
    v7[2](v7, &v18, 1.0);
    if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    *buf = 67109378;
    v20 = 1167;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v15 = MEMORY[0x277D86220];
    goto LABEL_24;
  }

  v18 = 0;
  v7[2](v7, &v18, 0.0);
  if (v18 != 1)
  {
    v8 = v9;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v20 = 1156;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_27:
}

- (id)_relationshipInferenceResultsForQuestionMetricType:(unsigned __int16)type personUUIDs:(id)ds useGraphInference:(BOOL)inference
{
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__PGPhotosChallengeMetricEvent__relationshipInferenceResultsForQuestionMetricType_personUUIDs_useGraphInference___block_invoke;
  v16[3] = &unk_27888A480;
  v16[4] = self;
  v17 = dsCopy;
  typeCopy = type;
  inferenceCopy = inference;
  v11 = dictionary;
  v18 = v11;
  v12 = dsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v18;
  v14 = v11;

  return v11;
}

void __113__PGPhotosChallengeMetricEvent__relationshipInferenceResultsForQuestionMetricType_personUUIDs_useGraphInference___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) metricsCache];
  v5 = [v4 activePersonUUIDByPersonUUID];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = a1;
  obj = *(a1 + 40);
  v25 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v25)
  {
    v7 = *v27;
    v8 = 0x277CD9000uLL;
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        v11 = *(v8 + 2360);
        v12 = [v5 objectForKeyedSubscript:{v10, v22}];
        v13 = [v11 localIdentifierWithUUID:v12];

        v14 = [v3 personNodeForPersonLocalIdentifier:v13];
        if (v14)
        {
          v15 = [*(v24 + 32) _relationshipInferenceResultForPersonNode:v14 questionMetricType:*(v24 + 56) useGraphInference:*(v24 + 58)];
          v16 = [MEMORY[0x277CCABB0] numberWithBool:v15];
          [*(v24 + 48) setObject:v16 forKeyedSubscript:v10];
        }

        else
        {
          v17 = v8;
          v18 = v7;
          v19 = v5;
          v20 = v3;
          v21 = +[PGLogging sharedLogging];
          v16 = [v21 loggingConnection];

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v22;
            v31 = v10;
            _os_log_error_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_ERROR, "Failed to find person node for person with UUID: '%@'", buf, 0xCu);
          }

          v3 = v20;
          v5 = v19;
          v7 = v18;
          v8 = v17;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v25);
  }
}

- (BOOL)_relatonshipInferenceResultForPersonNode:(id)node questionMetricType:(unsigned __int16)type
{
  typeCopy = type;
  nodeCopy = node;
  v6 = nodeCopy;
  switch(typeCopy)
  {
    case 'N':
      isInferredMemberOfMyFamily = [nodeCopy isInferredMemberOfMyFamily];
      goto LABEL_16;
    case 'O':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredFriend];
      goto LABEL_16;
    case 'P':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredCoworker];
      goto LABEL_16;
    case 'Q':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredPartner];
      goto LABEL_16;
    case 'R':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredParent];
      goto LABEL_16;
    case 'S':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredSibling];
      goto LABEL_16;
    case 'T':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredChild];
      goto LABEL_16;
    case 'U':
      graph = [nodeCopy graph];
      meNodeWithFallbackInferredMeNode = [graph meNodeWithFallbackInferredMeNode];
      v10 = [v6 isEqualToNode:meNodeWithFallbackInferredMeNode];

      break;
    case 'V':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredMother];
      goto LABEL_16;
    case 'W':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredFather];
      goto LABEL_16;
    case 'X':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredSon];
      goto LABEL_16;
    case 'Y':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredDaughter];
      goto LABEL_16;
    case 'Z':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredBrother];
      goto LABEL_16;
    case '[':
      isInferredMemberOfMyFamily = [nodeCopy isMyInferredSister];
LABEL_16:
      v10 = isInferredMemberOfMyFamily;
      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

- (BOOL)_relationshipTagInferenceResultForPersonNode:(id)node questionMetricType:(unsigned __int16)type
{
  typeCopy = type;
  nodeCopy = node;
  v7 = [(PGPhotosChallengeMetricEvent *)self _relationshipTagFromQuestionMetricType:typeCopy];
  if (v7)
  {
    v8 = [nodeCopy isTaggedWithRelationship:v7 withConfidence:0.5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_relationshipInferenceResultForPersonNode:(id)node questionMetricType:(unsigned __int16)type useGraphInference:(BOOL)inference
{
  if (inference)
  {
    return [(PGPhotosChallengeMetricEvent *)self _relatonshipInferenceResultForPersonNode:node questionMetricType:type];
  }

  else
  {
    return [(PGPhotosChallengeMetricEvent *)self _relationshipTagInferenceResultForPersonNode:node questionMetricType:type];
  }
}

- (unint64_t)_relationshipTagFromQuestionMetricType:(unsigned __int16)type
{
  if ((type - 93) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_22F78CEE8[(type - 93)];
  }
}

- (void)_gatherMetricsForRelationshipQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block useGraphInference:(BOOL)inference
{
  inferenceCopy = inference;
  typeCopy = type;
  v77 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  blockCopy = block;
  v7 = 0.0;
  v45 = _Block_copy(blockCopy);
  if (!v45 || (v8 = CFAbsoluteTimeGetCurrent(), v8 < 0.01))
  {
LABEL_7:
    v47 = [objc_opt_class() relationshipLabelFromRelationshipQuestionMetricType:typeCopy];
    if (!v47)
    {
      v19 = +[PGLogging sharedLogging];
      oslog = [v19 loggingConnection];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_ERROR, "Unhandled Relationship Type: %d", &buf, 8u);
      }

      goto LABEL_62;
    }

    oslog = [MEMORY[0x277CBEB18] array];
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = questionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v76 count:16];
    if (v10)
    {
      v11 = *v64;
      v12 = *MEMORY[0x277D3C9B0];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
          additionalInfo = [v14 additionalInfo];
          v16 = [additionalInfo objectForKeyedSubscript:v12];
          v17 = [v16 isEqualToString:v47];

          if (v17)
          {
            if ([v14 entityType] == 4)
            {
              v18 = [v14 state] == 3;
              goto LABEL_22;
            }

            [oslog addObject:v14];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v63 objects:v76 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_22:

    if (v45)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v7 >= 0.01)
      {
        LOBYTE(v57) = 0;
        v45[2](v45, &v57, 0.1);
        if (v57)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            buf = 0x3D704000202;
            LOWORD(v72) = 2080;
            *(&v72 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
          }

          goto LABEL_62;
        }

        v7 = Current;
      }
    }

    buf = 0;
    *&v72 = &buf;
    *(&v72 + 1) = 0x3032000000;
    v73 = __Block_byref_object_copy__70470;
    v74 = __Block_byref_object_dispose__70471;
    v75 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__70470;
    v61 = __Block_byref_object_dispose__70471;
    v62 = 0;
    if (v18)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      workingContext = self->_workingContext;
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke;
      v49[3] = &unk_27888A458;
      v24 = v21;
      v50 = v24;
      selfCopy = self;
      v55 = typeCopy;
      v56 = inferenceCopy;
      v25 = v22;
      v52 = v25;
      p_buf = &buf;
      v54 = &v57;
      [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v49];
      if (v45 && (v26 = CFAbsoluteTimeGetCurrent(), v26 - v7 >= 0.01))
      {
        v48 = 0;
        (v45)[2](v45, &v48, 0.5);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v67 = 67109378;
            v68 = 1008;
            v69 = 2080;
            v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v67, 0x12u);
          }

          v28 = 0;
          v27 = 1;
        }

        else
        {
          v27 = 0;
          v28 = 1;
        }
      }

      else
      {
        v27 = 0;
        v28 = 1;
        v26 = v7;
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    v29 = [(PGPhotosChallengeMetricEvent *)self _groundTruthByPersonUUIDFromQuestions:oslog];
    v30 = *(v72 + 40);
    *(v72 + 40) = v29;

    allKeys = [*(v72 + 40) allKeys];
    if (v45)
    {
      v32 = CFAbsoluteTimeGetCurrent();
      if (v32 - v7 >= 0.01)
      {
        v48 = 0;
        (v45)[2](v45, &v48, 0.5);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v67 = 67109378;
            v68 = 1013;
            v69 = 2080;
            v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
LABEL_59:
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v67, 0x12u);
            goto LABEL_60;
          }

          goto LABEL_60;
        }

        v7 = v32;
      }
    }

    v34 = [(PGPhotosChallengeMetricEvent *)self _relationshipInferenceResultsForQuestionMetricType:typeCopy personUUIDs:allKeys useGraphInference:inferenceCopy];
    v35 = v58[5];
    v58[5] = v34;

    if (v45)
    {
      v36 = CFAbsoluteTimeGetCurrent();
      if (v36 - v7 >= 0.01)
      {
        v48 = 0;
        (v45)[2](v45, &v48, 0.9);
        if (v48)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v67 = 67109378;
            v68 = 1017;
            v69 = 2080;
            v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            v33 = MEMORY[0x277D86220];
            goto LABEL_59;
          }

LABEL_60:

LABEL_61:
          _Block_object_dispose(&v57, 8);

          _Block_object_dispose(&buf, 8);
LABEL_62:

          goto LABEL_63;
        }

        v7 = v36;
      }
    }

    v27 = 0;
    v26 = v7;
LABEL_52:
    v37 = @"relationshipTag";
    if (inferenceCopy)
    {
      v37 = @"relationship";
    }

    allKeys = v37;
    v38 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:allKeys category:v47];
    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v38];

    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:*(v72 + 40) andInferenceResults:v58[5]];

    if (!v45)
    {
      goto LABEL_60;
    }

    if (CFAbsoluteTimeGetCurrent() - v26 < 0.01)
    {
      goto LABEL_60;
    }

    v48 = 0;
    (v45)[2](v45, &v48, 1.0);
    if (!(v48 | v27) || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_60;
    }

    v67 = 67109378;
    v68 = 1023;
    v69 = 2080;
    v70 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v33 = MEMORY[0x277D86220];
    goto LABEL_59;
  }

  LOBYTE(v57) = 0;
  v45[2](v45, &v57, 0.0);
  if (v57 != 1)
  {
    v7 = v8;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 0x3C004000202;
    LOWORD(v72) = 2080;
    *(&v72 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_63:
}

void __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 graph];
  v4 = [PGGraphPersonNodeCollection personNodesExcludingMeInGraph:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke_2;
  v8[3] = &unk_27888A430;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 72);
  v13 = *(a1 + 74);
  v11 = v7;
  [v4 enumerateNodesUsingBlock:v8];
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 48));
}

void __122__PGPhotosChallengeMetricEvent__gatherMetricsForRelationshipQuestions_questionMetricType_progressBlock_useGraphInference___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CD9938];
  v9 = v3;
  v5 = [v3 localIdentifier];
  v6 = [v4 uuidFromLocalIdentifier:v5];

  if (v6)
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v6];
    v7 = [*(a1 + 40) _relationshipInferenceResultForPersonNode:v9 questionMetricType:*(a1 + 56) useGraphInference:*(a1 + 58)];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    [*(a1 + 48) setObject:v8 forKeyedSubscript:v6];
  }
}

- (id)_personActivityMeaningInferenceResultsForPersonActivityMeaningLabel:(id)label assetIds:(id)ids
{
  labelCopy = label;
  idsCopy = ids;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__PGPhotosChallengeMetricEvent__personActivityMeaningInferenceResultsForPersonActivityMeaningLabel_assetIds___block_invoke;
  v16[3] = &unk_27888A408;
  v16[4] = self;
  v17 = idsCopy;
  v18 = labelCopy;
  v10 = dictionary;
  v19 = v10;
  v11 = labelCopy;
  v12 = idsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __109__PGPhotosChallengeMetricEvent__personActivityMeaningInferenceResultsForPersonActivityMeaningLabel_assetIds___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) metricsCache];
  v5 = [v4 momentUUIDByAssetIdentifier];

  v28 = v5;
  v6 = [v5 allValues];
  v24 = v3;
  v7 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v6 inGraph:v3];

  v23 = v7;
  [v7 momentNodeByMomentUUID];
  v27 = v26 = a1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v28 objectForKeyedSubscript:v12];
        v14 = [v27 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 collection];
          v17 = +[PGGraphMomentNode personActivityMeaningOfMoment];
          v18 = [(MANodeCollection *)PGGraphPersonActivityMeaningNodeCollection nodesRelatedToNodes:v16 withRelation:v17];
          v19 = [v18 personActivityMeaningLabels];

          v20 = [v19 containsObject:*(v26 + 48)];
          v21 = [MEMORY[0x277CCABB0] numberWithBool:v20];
          [*(v26 + 56) setObject:v21 forKeyedSubscript:v12];
        }

        else
        {
          v22 = +[PGLogging sharedLogging];
          v19 = [v22 loggingConnection];

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v12;
            _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v9);
  }
}

- (void)_gatherMetricsForPersonActivityMeaningQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  typeCopy = type;
  v48 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v9 = _Block_copy(block);
  v10 = 0.0;
  if (!v9 || (v11 = CFAbsoluteTimeGetCurrent(), v11 < 0.01))
  {
LABEL_7:
    v12 = [objc_opt_class() personActivityMeaningLabelFromMeaningQuestionMetricType:typeCopy];
    if (!v12)
    {
      v24 = +[PGLogging sharedLogging];
      loggingConnection = [v24 loggingConnection];

      log = loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v45 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unhandled Person Activity Meaning Type: %d", buf, 8u);
      }

      goto LABEL_47;
    }

    selfCopy = self;
    v35 = v9;
    [MEMORY[0x277CBEB18] array];
    log = v36 = questionsCopy;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = questionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          additionalInfo = [v18 additionalInfo];
          v20 = [additionalInfo objectForKeyedSubscript:@"personActivityMeaningLabel"];
          v21 = [v20 isEqualToString:v12];

          if (v21)
          {
            [log addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v15);
    }

    v9 = v35;
    if (v35)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v23 = selfCopy;
      if (Current - v10 >= 0.01)
      {
        v42 = 0;
        v35[2](v35, &v42, 0.1);
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 912;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          questionsCopy = v36;
          goto LABEL_47;
        }

        v10 = Current;
      }
    }

    else
    {
      v23 = selfCopy;
    }

    v26 = [(PGPhotosChallengeMetricEvent *)v23 _groundTruthByAssetIdentifiersFromQuestions:log];
    allKeys = [v26 allKeys];
    if (v35)
    {
      v28 = CFAbsoluteTimeGetCurrent();
      questionsCopy = v36;
      if (v28 - v10 >= 0.01)
      {
        v42 = 0;
        v35[2](v35, &v42, 0.5);
        if (v42)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v45 = 916;
            v46 = 2080;
            v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_46;
        }

        v10 = v28;
      }

      v29 = [(PGPhotosChallengeMetricEvent *)v23 _personActivityMeaningInferenceResultsForPersonActivityMeaningLabel:v12 assetIds:allKeys];
      v30 = CFAbsoluteTimeGetCurrent();
      if (v30 - v10 >= 0.01)
      {
        v42 = 0;
        v35[2](v35, &v42, 0.9);
        if (v42)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_45:

LABEL_46:
LABEL_47:

            goto LABEL_48;
          }

          *buf = 67109378;
          v45 = 919;
          v46 = 2080;
          v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v31 = MEMORY[0x277D86220];
LABEL_44:
          _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_45;
        }

        v10 = v30;
      }
    }

    else
    {
      v29 = [(PGPhotosChallengeMetricEvent *)v23 _personActivityMeaningInferenceResultsForPersonActivityMeaningLabel:v12 assetIds:allKeys];
      questionsCopy = v36;
    }

    v32 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"personActivityMeaning" category:v12];
    [(PGPhotosChallengeMetricEvent *)v23 setEvaluation:v32];

    evaluation = [(PGPhotosChallengeMetricEvent *)v23 evaluation];
    [evaluation evaluateWithGroundTruthResults:v26 andInferenceResults:v29];

    if (!v35)
    {
      goto LABEL_45;
    }

    if (CFAbsoluteTimeGetCurrent() - v10 < 0.01)
    {
      goto LABEL_45;
    }

    v42 = 0;
    v35[2](v35, &v42, 1.0);
    if (!v42 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    *buf = 67109378;
    v45 = 923;
    v46 = 2080;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v31 = MEMORY[0x277D86220];
    goto LABEL_44;
  }

  v42 = 0;
  v9[2](v9, &v42, 0.0);
  if (v42 != 1)
  {
    v10 = v11;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v45 = 895;
    v46 = 2080;
    v47 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_48:
}

- (id)_meaningInferenceResultsForMeaningLabel:(id)label assetIds:(id)ids
{
  labelCopy = label;
  idsCopy = ids;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  workingContext = self->_workingContext;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_assetIds___block_invoke;
  v16[3] = &unk_27888A408;
  v16[4] = self;
  v17 = idsCopy;
  v18 = labelCopy;
  v10 = dictionary;
  v19 = v10;
  v11 = labelCopy;
  v12 = idsCopy;
  [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
  v13 = v19;
  v14 = v10;

  return v10;
}

void __81__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_assetIds___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = [*(a1 + 32) metricsCache];
  v5 = [v4 momentUUIDByAssetIdentifier];

  v24 = v5;
  v6 = [v5 allValues];
  v22 = v3;
  v7 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:v6 inGraph:v3];

  v21 = v7;
  v8 = [v7 momentNodeByMomentUUID];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 40);
  v9 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v24 objectForKeyedSubscript:v13];
        v15 = [v8 objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 meaningLabelsIncludingParents];
          v18 = [v17 containsObject:*(a1 + 48)];
          v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
          [*(a1 + 56) setObject:v19 forKeyedSubscript:v13];
        }

        else
        {
          v20 = +[PGLogging sharedLogging];
          v17 = [v20 loggingConnection];

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v30 = v13;
            _os_log_error_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_ERROR, "Failed to find moment node for asset with local identifier: '%@'", buf, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v10);
  }
}

- (void)_gatherMetricsForMeaningQuestions:(id)questions questionMetricType:(unsigned __int16)type progressBlock:(id)block
{
  typeCopy = type;
  v49 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v9 = _Block_copy(block);
  v10 = 0.0;
  if (!v9 || (v11 = CFAbsoluteTimeGetCurrent(), v11 < 0.01))
  {
LABEL_7:
    v12 = [objc_opt_class() meaningLabelFromMeaningQuestionMetricType:typeCopy];
    if (!v12)
    {
      v25 = +[PGLogging sharedLogging];
      loggingConnection = [v25 loggingConnection];

      log = loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v46 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unhandled Meaning Type: %d", buf, 8u);
      }

      goto LABEL_47;
    }

    selfCopy = self;
    v36 = v9;
    [MEMORY[0x277CBEB18] array];
    log = v37 = questionsCopy;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = questionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      v17 = *MEMORY[0x277D3C948];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          additionalInfo = [v19 additionalInfo];
          v21 = [additionalInfo objectForKeyedSubscript:v17];
          v22 = [v21 isEqualToString:v12];

          if (v22)
          {
            [log addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v15);
    }

    v9 = v36;
    if (v36)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v24 = selfCopy;
      if (Current - v10 >= 0.01)
      {
        v43 = 0;
        v36[2](v36, &v43, 0.1);
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 849;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          questionsCopy = v37;
          goto LABEL_47;
        }

        v10 = Current;
      }
    }

    else
    {
      v24 = selfCopy;
    }

    v27 = [(PGPhotosChallengeMetricEvent *)v24 _groundTruthByAssetIdentifiersFromQuestions:log];
    allKeys = [v27 allKeys];
    if (v36)
    {
      v29 = CFAbsoluteTimeGetCurrent();
      questionsCopy = v37;
      if (v29 - v10 >= 0.01)
      {
        v43 = 0;
        v36[2](v36, &v43, 0.5);
        if (v43)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v46 = 853;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_46;
        }

        v10 = v29;
      }

      v30 = [(PGPhotosChallengeMetricEvent *)v24 _meaningInferenceResultsForMeaningLabel:v12 assetIds:allKeys];
      v31 = CFAbsoluteTimeGetCurrent();
      if (v31 - v10 >= 0.01)
      {
        v43 = 0;
        v36[2](v36, &v43, 0.9);
        if (v43)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_45:

LABEL_46:
LABEL_47:

            goto LABEL_48;
          }

          *buf = 67109378;
          v46 = 856;
          v47 = 2080;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v32 = MEMORY[0x277D86220];
LABEL_44:
          _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_45;
        }

        v10 = v31;
      }
    }

    else
    {
      v30 = [(PGPhotosChallengeMetricEvent *)v24 _meaningInferenceResultsForMeaningLabel:v12 assetIds:allKeys];
      questionsCopy = v37;
    }

    v33 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:@"meaning" category:v12];
    [(PGPhotosChallengeMetricEvent *)v24 setEvaluation:v33];

    evaluation = [(PGPhotosChallengeMetricEvent *)v24 evaluation];
    [evaluation evaluateWithGroundTruthResults:v27 andInferenceResults:v30];

    if (!v36)
    {
      goto LABEL_45;
    }

    if (CFAbsoluteTimeGetCurrent() - v10 < 0.01)
    {
      goto LABEL_45;
    }

    v43 = 0;
    v36[2](v36, &v43, 1.0);
    if (!v43 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_45;
    }

    *buf = 67109378;
    v46 = 860;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v32 = MEMORY[0x277D86220];
    goto LABEL_44;
  }

  v43 = 0;
  v9[2](v9, &v43, 0.0);
  if (v43 != 1)
  {
    v10 = v11;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v46 = 832;
    v47 = 2080;
    v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_48:
}

- (id)_meaningLabelsOfMomentNode:(id)node forMeaningLabel:(id)label isEventLabelingMetricEvent:(BOOL)event
{
  eventCopy = event;
  nodeCopy = node;
  labelCopy = label;
  if (!eventCopy)
  {
    if (!+[PGEventLabelingConfiguration isEventLabelingEnabled](PGEventLabelingConfiguration, "isEventLabelingEnabled") || !+[PGEventLabelingConfiguration usePrimaryMeaningDomainForEventLabelingMeanings])
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([(PGEventLabelingConfiguration *)self->_eventLabelingConfiguration useEventLabelingToInferWithMeaningLabel:labelCopy])
  {
    if (+[PGEventLabelingConfiguration usePrimaryMeaningDomainForEventLabelingMeanings])
    {
LABEL_8:
      meaningLabelsIncludingParents = [nodeCopy meaningLabelsIncludingParents];
      goto LABEL_9;
    }

LABEL_7:
    meaningLabelsIncludingParents = [nodeCopy alternativeMeaningLabelsIncludingParents];
LABEL_9:
    v11 = meaningLabelsIncludingParents;
    goto LABEL_11;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)_meaningInferenceResultsForMeaningLabel:(id)label momentUUIDs:(id)ds isEventLabelingMetricEvent:(BOOL)event
{
  eventCopy = event;
  labelCopy = label;
  dsCopy = ds;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (!eventCopy || +[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    workingContext = self->_workingContext;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __111__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_momentUUIDs_isEventLabelingMetricEvent___block_invoke;
    v16[3] = &unk_27888A3E0;
    v17 = dsCopy;
    selfCopy = self;
    v19 = labelCopy;
    v21 = eventCopy;
    v12 = dictionary;
    v20 = v12;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v16];
    v13 = v20;
    v14 = v12;
  }

  return dictionary;
}

void __111__PGPhotosChallengeMetricEvent__meaningInferenceResultsForMeaningLabel_momentUUIDs_isEventLabelingMetricEvent___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v16 = [v17 graph];
  v15 = [PGGraphMomentNodeCollection momentNodesForArrayOfUUIDs:*(a1 + 32) inGraph:?];
  v3 = [v15 momentNodeByMomentUUID];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [v3 objectForKeyedSubscript:v8];
        if (v10)
        {
          v11 = [*(a1 + 40) _meaningLabelsOfMomentNode:v10 forMeaningLabel:*(a1 + 48) isEventLabelingMetricEvent:*(a1 + 64)];
          v12 = [v11 containsObject:*(a1 + 48)];
          if ([*(a1 + 48) isEqualToString:PGExhaustiveMomentLabellingNoneOfTheseAnswerString])
          {
            v12 = [v11 count]== 0;
          }

          v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
          [*(a1 + 56) setObject:v13 forKeyedSubscript:v8];
        }

        else
        {
          v14 = +[PGLogging sharedLogging];
          v11 = [v14 loggingConnection];

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v24 = v8;
            _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "Failed to find moment node for moment with uuid: '%@'", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)_gatherMetricsForExhaustiveMomentLabelingQuestions:(id)questions questionMetricType:(unsigned __int16)type isEventLabelingMetricEvent:(BOOL)event progressBlock:(id)block
{
  eventCopy = event;
  typeCopy = type;
  v32 = *MEMORY[0x277D85DE8];
  questionsCopy = questions;
  v11 = _Block_copy(block);
  v12 = 0.0;
  if (!v11 || (v13 = CFAbsoluteTimeGetCurrent(), v13 < 0.01))
  {
LABEL_7:
    v14 = [objc_opt_class() meaningLabelFromMeaningQuestionMetricType:typeCopy];
    if (!v14)
    {
      v19 = +[PGLogging sharedLogging];
      loggingConnection = [v19 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v29 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unhandled Meaning Type: %d", buf, 8u);
      }

      goto LABEL_32;
    }

    metricsCache = [(PGPhotosChallengeMetricEvent *)self metricsCache];
    loggingConnection = [(PGPhotosChallengeMetricEvent *)self groundTruthByMomentUUIDFromExhaustiveMomentLabelingQuestions:questionsCopy meaningLabel:v14 withMetricsCache:metricsCache];

    allKeys = [loggingConnection allKeys];
    if (v11)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v12 >= 0.01)
      {
        v27 = 0;
        v11[2](v11, &v27, 0.5);
        if (v27)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v29 = 739;
            v30 = 2080;
            v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_31;
        }

        v12 = Current;
      }

      v20 = [(PGPhotosChallengeMetricEvent *)self _meaningInferenceResultsForMeaningLabel:v14 momentUUIDs:allKeys isEventLabelingMetricEvent:eventCopy];
      v21 = CFAbsoluteTimeGetCurrent();
      if (v21 - v12 >= 0.01)
      {
        v27 = 0;
        v11[2](v11, &v27, 0.9);
        if (v27)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
LABEL_30:

LABEL_31:
LABEL_32:

            goto LABEL_33;
          }

          *buf = 67109378;
          v29 = 742;
          v30 = 2080;
          v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
          v22 = MEMORY[0x277D86220];
LABEL_29:
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          goto LABEL_30;
        }

        v12 = v21;
      }
    }

    else
    {
      v20 = [(PGPhotosChallengeMetricEvent *)self _meaningInferenceResultsForMeaningLabel:v14 momentUUIDs:allKeys isEventLabelingMetricEvent:eventCopy];
    }

    v23 = @"exhaustiveMomentLabeling";
    if (eventCopy)
    {
      v23 = @"exhaustiveMomentLabelingForEventLabeling";
    }

    v24 = v23;
    v25 = [[PGPrecisionRecallEvaluation alloc] initWithIdentifier:v24 category:v14];

    [(PGPhotosChallengeMetricEvent *)self setEvaluation:v25];
    evaluation = [(PGPhotosChallengeMetricEvent *)self evaluation];
    [evaluation evaluateWithGroundTruthResults:loggingConnection andInferenceResults:v20];

    if (!v11)
    {
      goto LABEL_30;
    }

    if (CFAbsoluteTimeGetCurrent() - v12 < 0.01)
    {
      goto LABEL_30;
    }

    v27 = 0;
    v11[2](v11, &v27, 1.0);
    if (!v27 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_30;
    }

    *buf = 67109378;
    v29 = 747;
    v30 = 2080;
    v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    v22 = MEMORY[0x277D86220];
    goto LABEL_29;
  }

  v27 = 0;
  v11[2](v11, &v27, 0.0);
  if (v27 != 1)
  {
    v12 = v13;
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v29 = 729;
    v30 = 2080;
    v31 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Metrics/MetricEvents/PGPhotosChallengeMetricEvent.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_33:
}

- (void)gatherMetricsWithProgressBlock:(id)block
{
  blockCopy = block;
  v4 = [(PGPhotosChallengeMetricEventFetchHelper *)self->_metricsCache questionsForQuestionMetricType:self->_questionMetricType];
  if ([v4 count])
  {
    switch(self->_questionMetricType)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
        [PGPhotosChallengeMetricEvent _gatherMetricsForMeaningQuestions:"_gatherMetricsForMeaningQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x32u:
      case 0x33u:
        selfCopy2 = self;
        v6 = v4;
        goto LABEL_6;
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x3Cu:
      case 0x3Du:
      case 0x3Eu:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
        selfCopy2 = self;
        v6 = v4;
LABEL_6:
        [PGPhotosChallengeMetricEvent _gatherMetricsForExhaustiveMomentLabelingQuestions:selfCopy2 questionMetricType:"_gatherMetricsForExhaustiveMomentLabelingQuestions:questionMetricType:isEventLabelingMetricEvent:progressBlock:" isEventLabelingMetricEvent:v6 progressBlock:?];
        break;
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0x5Bu:
      case 0x5Cu:
        selfCopy4 = self;
        v8 = v4;
        goto LABEL_10;
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
        selfCopy4 = self;
        v8 = v4;
LABEL_10:
        [PGPhotosChallengeMetricEvent _gatherMetricsForRelationshipQuestions:selfCopy4 questionMetricType:"_gatherMetricsForRelationshipQuestions:questionMetricType:progressBlock:useGraphInference:" progressBlock:v8 useGraphInference:?];
        break;
      case 0x6Bu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForBusinessQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x6Cu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForPublicEventQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x6Du:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForTripKeyQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x6Eu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForHolidayQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x6Fu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForFrequentLocationQuestions:v4 questionMetricType:111 progressBlock:blockCopy];
        break;
      case 0x70u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForNamingQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x71u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForAgeCategoryQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x72u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForPetQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x73u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForPetKnowledgeQuestions:v4 progressBlock:blockCopy];
        break;
      case 0x74u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA0u:
      case 0xA1u:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xA8u:
      case 0xA9u:
      case 0xAAu:
      case 0xABu:
      case 0xACu:
      case 0xADu:
      case 0xAEu:
      case 0xAFu:
      case 0xB0u:
      case 0xB1u:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB6u:
      case 0xB7u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBBu:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
        [PGPhotosChallengeMetricEvent _gatherMetricsForMemoryQuestions:"_gatherMetricsForMemoryQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0x75u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForMemoryMusicQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xC4u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForSyndicatedAssetsQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xC5u:
      case 0xC6u:
      case 0xC7u:
      case 0xC8u:
      case 0xC9u:
      case 0xCAu:
        [PGPhotosChallengeMetricEvent _gatherMetricsForPersonActivityMeaningQuestions:"_gatherMetricsForPersonActivityMeaningQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0xCBu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForSharedLibraryAssetsQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xCCu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForSharedLibraryStartQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xCDu:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForCameraLibrarySwitchQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xCEu:
      case 0xCFu:
      case 0xD0u:
      case 0xD1u:
        [PGPhotosChallengeMetricEvent _gatherMetricsForWallpaperQuestions:"_gatherMetricsForWallpaperQuestions:questionMetricType:progressBlock:" questionMetricType:v4 progressBlock:?];
        break;
      case 0xD2u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForTripTitlingQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xD3u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForHighlightTitlingQuestions:v4 progressBlock:blockCopy];
        break;
      case 0xD4u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForLocationRepresentativeAssetQuestions:v4 questionMetricType:212 progressBlock:blockCopy];
        break;
      case 0xD5u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForExternalAssetRelevanceQuestions:v4 questionMetricType:213 progressBlock:blockCopy];
        break;
      case 0xD6u:
        [(PGPhotosChallengeMetricEvent *)self _gatherMetricsForStoryPromptSuggestionsQuestions:v4 progressBlock:blockCopy];
        break;
      default:
        break;
    }
  }
}

- (PGPhotosChallengeMetricEvent)initWithWorkingContext:(id)context questionMetricType:(unsigned __int16)type metricEventFetchHelper:(id)helper
{
  typeCopy = type;
  contextCopy = context;
  helperCopy = helper;
  v28.receiver = self;
  v28.super_class = PGPhotosChallengeMetricEvent;
  v11 = [(PGPhotosChallengeMetricEvent *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_workingContext, context);
    workingContext = v12->_workingContext;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __97__PGPhotosChallengeMetricEvent_initWithWorkingContext_questionMetricType_metricEventFetchHelper___block_invoke;
    v26[3] = &unk_27888A3B8;
    v14 = v12;
    v27 = v14;
    [(PGManagerWorkingContext *)workingContext performSynchronousConcurrentGraphReadUsingBlock:v26];
    v15 = objc_alloc_init(PGEventLabelingConfiguration);
    eventLabelingConfiguration = v14->_eventLabelingConfiguration;
    v14->_eventLabelingConfiguration = v15;

    v17 = objc_alloc_init(MEMORY[0x277D3C7A0]);
    curationSession = v14->_curationSession;
    v14->_curationSession = v17;

    v19 = objc_alloc(MEMORY[0x277D3C790]);
    photoLibrary = [(PGManagerWorkingContext *)v12->_workingContext photoLibrary];
    v21 = [v19 initWithPhotoLibrary:photoLibrary curationSession:v14->_curationSession];
    curationContext = v14->_curationContext;
    v14->_curationContext = v21;

    v23 = [PGPhotosChallengeMetricEvent stringFromQuestionMetricType:typeCopy];
    questionTypeString = v14->_questionTypeString;
    v14->_questionTypeString = v23;

    v14->_questionMetricType = typeCopy;
    objc_storeStrong(&v14->_metricsCache, helper);
    v14->_graphSchemaVersion = 701;
    v14->_questionVersion = 10;
    v14->_algorithmVersion = [objc_opt_class() algorithmVersionFromQuestionMetricType:typeCopy withEventLabelingConfiguration:v14->_eventLabelingConfiguration];
  }

  return v12;
}

void __97__PGPhotosChallengeMetricEvent_initWithWorkingContext_questionMetricType_metricEventFetchHelper___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 graph];
  v3 = +[PGCuratedLibraryIntelligenceMetricEvent librarySizeRangeDescriptionForLibrarySizeRange:](PGCuratedLibraryIntelligenceMetricEvent, "librarySizeRangeDescriptionForLibrarySizeRange:", [v6 librarySizeRange]);
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  *(v4 + 72) = v3;
}

+ (id)stringFromQuestionMetricType:(unsigned __int16)type
{
  if (type > 0xD7u)
  {
    return 0;
  }

  else
  {
    return off_27888ABB8[type];
  }
}

+ (id)questionEntityTypesFromQuestionMetricType:(unsigned __int16)type
{
  typeCopy = type;
  v11 = *MEMORY[0x277D85DE8];
  result = &unk_284486F30;
  switch(type)
  {
    case 0u:
    case 0xD7u:
      v5 = +[PGLogging sharedLogging];
      loggingConnection = [v5 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        v9 = 67109120;
        v10 = typeCopy;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "Unhandled MetricType %d", &v9, 8u);
      }

      result = &unk_284487068;
      break;
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x6Bu:
    case 0x6Cu:
    case 0x6Eu:
    case 0x6Fu:
    case 0x76u:
    case 0x77u:
    case 0xC5u:
    case 0xC6u:
    case 0xC7u:
    case 0xC8u:
    case 0xC9u:
    case 0xCAu:
    case 0xCEu:
    case 0xCFu:
    case 0xD0u:
    case 0xD1u:
    case 0xD4u:
      return result;
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x36u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
      result = &unk_284486F48;
      break;
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x61u:
    case 0x62u:
    case 0x63u:
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x67u:
    case 0x68u:
    case 0x69u:
    case 0x6Au:
      result = &unk_284486F60;
      break;
    case 0x6Du:
    case 0xD2u:
      result = &unk_284486F90;
      break;
    case 0x70u:
    case 0x71u:
    case 0x72u:
      result = &unk_284486F78;
      break;
    case 0x73u:
      result = &unk_284486FA8;
      break;
    case 0x74u:
    case 0x75u:
    case 0x78u:
    case 0x79u:
    case 0x7Au:
    case 0x7Bu:
    case 0x7Cu:
    case 0x7Du:
    case 0x7Eu:
    case 0x7Fu:
    case 0x80u:
    case 0x81u:
    case 0x82u:
    case 0x83u:
    case 0x84u:
    case 0x85u:
    case 0x86u:
    case 0x87u:
    case 0x88u:
    case 0x89u:
    case 0x8Au:
    case 0x8Bu:
    case 0x8Cu:
    case 0x8Du:
    case 0x8Eu:
    case 0x8Fu:
    case 0x90u:
    case 0x91u:
    case 0x92u:
    case 0x93u:
    case 0x94u:
    case 0x95u:
    case 0x96u:
    case 0x97u:
    case 0x98u:
    case 0x99u:
    case 0x9Au:
    case 0x9Bu:
    case 0x9Cu:
    case 0x9Du:
    case 0x9Eu:
    case 0x9Fu:
    case 0xA0u:
    case 0xA1u:
    case 0xA2u:
    case 0xA3u:
    case 0xA4u:
    case 0xA5u:
    case 0xA6u:
    case 0xA7u:
    case 0xA8u:
    case 0xA9u:
    case 0xAAu:
    case 0xABu:
    case 0xACu:
    case 0xADu:
    case 0xAEu:
    case 0xAFu:
    case 0xB0u:
    case 0xB1u:
    case 0xB2u:
    case 0xB3u:
    case 0xB4u:
    case 0xB5u:
    case 0xB6u:
    case 0xB7u:
    case 0xB8u:
    case 0xB9u:
    case 0xBAu:
    case 0xBBu:
    case 0xBCu:
    case 0xBDu:
    case 0xBEu:
    case 0xBFu:
    case 0xC0u:
    case 0xC1u:
    case 0xC2u:
    case 0xC3u:
      result = &unk_284486FC0;
      break;
    case 0xC4u:
    case 0xD5u:
      result = &unk_284486FD8;
      break;
    case 0xCBu:
      result = &unk_284486FF0;
      break;
    case 0xCCu:
      result = &unk_284487008;
      break;
    case 0xCDu:
      result = &unk_284487020;
      break;
    case 0xD3u:
      result = &unk_284487038;
      break;
    case 0xD6u:
      result = &unk_284487050;
      break;
    default:
      v7 = +[PGLogging sharedLogging];
      loggingConnection2 = [v7 loggingConnection];

      if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
      {
        v9 = 67109120;
        v10 = typeCopy;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "Unexpected MetricType %d", &v9, 8u);
      }

      result = &unk_284487080;
      break;
  }

  return result;
}

+ (unsigned)questionTypeFromQuestionMetricType:(unsigned __int16)type
{
  if ((type - 1) > 0xD5)
  {
    return 0;
  }

  else
  {
    return word_22F78CF50[(type - 1)];
  }
}

+ (unint64_t)algorithmVersionFromQuestionMetricType:(unsigned __int16)type withEventLabelingConfiguration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  v6 = configurationCopy;
  switch(typeCopy)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 210:
      modelVersion = 5;
      break;
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
      modelVersion = [configurationCopy modelVersion];
      break;
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
      modelVersion = 4;
      break;
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 108:
    case 109:
    case 112:
    case 113:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
      modelVersion = 1;
      break;
    case 107:
      if (_os_feature_enabled_impl())
      {
        modelVersion = 2;
      }

      else
      {
        modelVersion = 1;
      }

      break;
    case 110:
    case 111:
    case 205:
    case 212:
      modelVersion = 2;
      break;
    case 114:
    case 115:
      modelVersion = 201;
      break;
    case 196:
      v8 = MEMORY[0x277CD9B40];
      goto LABEL_10;
    case 213:
      v8 = MEMORY[0x277D3C830];
LABEL_10:
      modelVersion = *v8;
      break;
    default:
      modelVersion = 0;
      break;
  }

  return modelVersion;
}

+ (id)relationshipLabelFromRelationshipQuestionMetricType:(unsigned __int16)type
{
  if ((type - 78) > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27888AAD0[(type - 78)];
  }

  return v4;
}

+ (id)personActivityMeaningLabelFromMeaningQuestionMetricType:(unsigned __int16)type
{
  if ((type - 197) > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27888AAA0[(type - 197)];
  }

  return v4;
}

+ (id)meaningLabelFromMeaningQuestionMetricType:(unsigned __int16)type
{
  if ((type - 1) > 0x4C)
  {
    v4 = 0;
  }

  else
  {
    v4 = *off_27888A838[(type - 1)];
  }

  return v4;
}

+ (BOOL)_isHighPrecisionCityscapeAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy sceneClassifications];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (curationModel)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != curationModel; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481598)
        {
          curationModel = [assetCopy curationModel];
          cityNatureModel = [curationModel cityNatureModel];

          cityNode = [cityNatureModel cityNode];
          LOBYTE(curationModel) = [cityNode passesHighPrecisionWithSignal:v8];

          goto LABEL_11;
        }
      }

      curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (curationModel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return curationModel;
}

+ (BOOL)_isHighPrecisionLandscapeAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy sceneClassifications];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v15 = 0u;
  curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (curationModel)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != curationModel; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 extendedSceneIdentifier] == 2147481597)
        {
          curationModel = [assetCopy curationModel];
          cityNatureModel = [curationModel cityNatureModel];

          natureNode = [cityNatureModel natureNode];
          LOBYTE(curationModel) = [natureNode passesHighPrecisionWithSignal:v8];

          goto LABEL_11;
        }
      }

      curationModel = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (curationModel)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return curationModel;
}

+ (id)_isVIPStringForResult:(BOOL)result
{
  if (result)
  {
    return @"IsVIP";
  }

  else
  {
    return @"NotVIP";
  }
}

+ (id)_passedFilteringStringForResult:(BOOL)result
{
  if (result)
  {
    return @"PassedFiltering";
  }

  else
  {
    return @"FailedFiltering";
  }
}

+ (id)_passedHighPrecisionStringForResult:(BOOL)result
{
  if (result)
  {
    return @"PassedHighPrecision";
  }

  else
  {
    return @"FailedHighPrecision";
  }
}

+ (unsigned)wallpaperSuggestionSubtypeForQuestionMetricType:(unsigned __int16)type
{
  if (((type - 206) & 0xFFFC) != 0)
  {
    return 0;
  }

  else
  {
    return type + 446;
  }
}

+ (unint64_t)meaningInferenceAlgorithmForQuestionMetricType:(unsigned __int16)type withEventLabelingConfiguration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  if (+[PGEventLabelingConfiguration isEventLabelingEnabled])
  {
    v6 = [objc_opt_class() meaningLabelFromMeaningQuestionMetricType:typeCopy];
    if ([configurationCopy useEventLabelingToInferWithMeaningLabel:v6])
    {
      v7 = 3;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)allMetricEventsWithGraphManager:(id)manager
{
  managerCopy = manager;
  array = [MEMORY[0x277CBEB18] array];
  v5 = [[PGPhotosChallengeMetricEventFetchHelper alloc] initWithGraphManager:managerCopy];
  v6 = 1;
  v7 = off_27887B000;
  v8 = off_27887B000;
  do
  {
    switch(v6)
    {
      case 108:
      case 110:
      case 117:
      case -60:
      case -50:
      case -49:
      case -48:
      case -47:
      case -46:
      case -45:
      case -44:
      case -42:
        v9 = PGPhotosChallengePrecisionRecallByReasonMetricEvent;
        goto LABEL_4;
      case -53:
        workingContext = [managerCopy workingContext];
        v14 = v7[501];
        photoLibrary = [workingContext photoLibrary];
        LODWORD(v14) = [(__objc2_class *)v14 isSharedLibraryQuestionsEnabledForPhotoLibrary:photoLibrary];

        if (v14)
        {
          v16 = [(PGPhotosChallengeMetricEvent *)[PGPhotosChallengePrecisionRecallByReasonMetricEvent alloc] initWithWorkingContext:workingContext questionMetricType:v6 metricEventFetchHelper:v5];
          [array addObject:v16];
          v17 = [objc_alloc(v8[499]) initWithWorkingContext:workingContext questionMetricType:v6 metricEventFetchHelper:v5];
          [(PGPhotosChallengeMetricEvent *)v16 setSubMetricEvent:v17];
          [array addObject:v17];
        }

        v7 = off_27887B000;
        break;
      case -51:
        v18 = v7;
        workingContext = [managerCopy workingContext];
        photoLibrary2 = [workingContext photoLibrary];
        v20 = [PGCameraLibrarySwitchQuestionFactory isSharedLibraryQuestionsEnabledForPhotoLibrary:photoLibrary2];

        if (v20)
        {
          v21 = [(PGPhotosChallengeMetricEvent *)[PGPhotosChallengePrecisionRecallByReasonMetricEvent alloc] initWithWorkingContext:workingContext questionMetricType:v6 metricEventFetchHelper:v5];
          [array addObject:v21];
        }

        v7 = v18;
        v8 = off_27887B000;
        break;
      default:
        v9 = PGPhotosChallengeMetricEvent;
LABEL_4:
        v10 = [v9 alloc];
        workingContext2 = [managerCopy workingContext];
        workingContext = [v10 initWithWorkingContext:workingContext2 questionMetricType:v6 metricEventFetchHelper:v5];

        [array addObject:workingContext];
        break;
    }

    v13 = v6++;
  }

  while (v13 < 0xD6);

  return array;
}

@end