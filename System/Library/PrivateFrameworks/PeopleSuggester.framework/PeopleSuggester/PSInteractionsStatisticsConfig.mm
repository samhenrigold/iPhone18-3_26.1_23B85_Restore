@interface PSInteractionsStatisticsConfig
@end

@implementation PSInteractionsStatisticsConfig

void __49___PSInteractionsStatisticsConfig_setAnchorDate___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v2 = _MergedGlobals;
  _MergedGlobals = v1;

  objc_autoreleasePoolPop(v0);
}

void __78___PSInteractionsStatisticsConfig_detectedSceneCategoryNamesFromSceneNetTags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (!v7)
  {
    v7 = &unk_1F2D8B088;
  }

  v9 = [v7 intValue];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a1 + 40);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if ([v6 containsObject:{*(*(&v16 + 1) + 8 * i), v16}])
        {
          if (++v13 >= v9)
          {
            [*(a1 + 48) addObject:v5];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }
}

void __92___PSInteractionsStatisticsConfig_DefaultConfig__initFallbackConfigWithBundleId_anchorDate___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"numberOfEngagedSuggestionsWithConversation";
  v3[1] = @"numberOfSharesWithConversation";
  v3[2] = @"numberOfOutgoingInteractionsWithConversation";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult;
  initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __92___PSInteractionsStatisticsConfig_DefaultConfig__initFallbackConfigWithBundleId_anchorDate___block_invoke_2()
{
  v3[4] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"numberOfSharesWithConversation";
  v3[1] = @"numberOfEngagedSuggestionsWithConversation";
  v3[2] = @"numberOfOutgoingInteractionsWithConversation";
  v3[3] = @"timeSinceLastOutgoingInteraction";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v2 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_11;
  initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_11 = v1;

  objc_autoreleasePoolPop(v0);
}

void __92___PSInteractionsStatisticsConfig_DefaultConfig__initFallbackConfigWithBundleId_anchorDate___block_invoke_3()
{
  v4[4] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"timeSinceLastOutgoingInteraction";
  v3[1] = @"numberOfEngagedSuggestionsWithConversation";
  v4[0] = &unk_1F2D8C7C8;
  v4[1] = &unk_1F2D8B7C0;
  v3[2] = @"numberOfSharesWithConversation";
  v3[3] = @"numberOfOutgoingInteractionsWithConversation";
  v4[2] = &unk_1F2D8B7C0;
  v4[3] = &unk_1F2D8B7C0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_14;
  initFallbackConfigWithBundleId_anchorDate___pasExprOnceResult_14 = v1;

  objc_autoreleasePoolPop(v0);
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"logJointProbabilityScore";
  v3[1] = @"numberOfEngagedSuggestionsWithConversation";
  v3[2] = @"numberOfSharesWithConversation";
  v3[3] = @"numberOfOutgoingInteractionsWithConversation";
  v3[4] = @"timeSinceLastOutgoingInteraction";
  v3[5] = @"timeSinceLastIncomingInteraction";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v2 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_2()
{
  v3[31] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"photoFeaturesForConversationId";
  v3[1] = @"scenesBasedFeatures";
  v3[2] = @"isFirstPartyApp";
  v3[3] = @"hasEverSharePlayedWithConversation";
  v3[4] = @"numberOfSharesWithConversation";
  v3[5] = @"numberOfSharesFromCurrentAppWithConversation";
  v3[6] = @"numberOfSharesOfTopDomainURLWithConversation";
  v3[7] = @"numberOfOutgoingInteractionsWithConversation";
  v3[8] = @"numberOfIncomingInteractionsWithConversation";
  v3[9] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  v3[10] = @"numberOfRecentOutgoingInteractionsWithConversation";
  v3[11] = @"numberOfAppsSharedFromWithConversation";
  v3[12] = @"numberOfEngagedSuggestionsWithConversation";
  v3[13] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v3[14] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v3[15] = @"timeSinceLastOutgoingInteraction";
  v3[16] = @"timeSinceLastUIEngagement";
  v3[17] = @"timeSinceLastPhoneCallWithConversation";
  v3[18] = @"timeSinceLastIncomingInteraction";
  v3[19] = @"timeSinceLastPhotoShareWithConversation";
  v3[20] = @"timeSinceLastShareWithConversation";
  v3[21] = @"numberOfTotalSharesToTargetApp";
  v3[22] = @"numberOfEngagedSuggestionsToTargetApp";
  v3[23] = @"numberOfDifferentFacesSharedWithConversation";
  v3[24] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  v3[25] = @"numberOfSharesOfScenesInPhotoWithConversation";
  v3[26] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  v3[27] = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v3[28] = @"numberOfSharesOfDetectedPeopleWithConversation";
  v3[29] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v3[30] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:31];
  v2 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_40;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_40 = v1;

  objc_autoreleasePoolPop(v0);
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_3()
{
  v4[36] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v3[0] = @"timeSinceLastOutgoingInteraction";
  v3[1] = @"timeSinceLastUIEngagement";
  v4[0] = &unk_1F2D8C7C8;
  v4[1] = &unk_1F2D8C7C8;
  v3[2] = @"timeSinceLastPhoneCallWithConversation";
  v3[3] = @"timeSinceLastIncomingInteraction";
  v4[2] = &unk_1F2D8C7C8;
  v4[3] = &unk_1F2D8C7C8;
  v3[4] = @"timeSinceLastPhotoShareWithConversation";
  v3[5] = @"timeSinceLastShareWithConversation";
  v4[4] = &unk_1F2D8C7C8;
  v4[5] = &unk_1F2D8C7C8;
  v3[6] = @"numberOfTotalSharesToTargetApp";
  v3[7] = @"numberOfSharesWithConversation";
  v4[6] = &unk_1F2D8B7C0;
  v4[7] = &unk_1F2D8B7C0;
  v3[8] = @"numberOfSharesFromCurrentAppWithConversation";
  v3[9] = @"numberOfSharesOfTopDomainURLWithConversation";
  v4[8] = &unk_1F2D8B7C0;
  v4[9] = &unk_1F2D8B7C0;
  v3[10] = @"numberOfSharesOfDetectedPeopleWithConversation";
  v3[11] = @"numberOfSharesOfPeopleInPhotoWithConversation";
  v4[10] = &unk_1F2D8B7C0;
  v4[11] = &unk_1F2D8B7C0;
  v3[12] = @"numberOfSharesOfDetectedScenesInPhotoWithConversation";
  v3[13] = @"numberOfSharesOfScenesInPhotoWithConversation";
  v4[12] = &unk_1F2D8B7C0;
  v4[13] = &unk_1F2D8B7C0;
  v3[14] = @"numberOfIncomingInteractionsWithConversation";
  v3[15] = @"numberOfOutgoingInteractionsWithConversation";
  v4[14] = &unk_1F2D8B7C0;
  v4[15] = &unk_1F2D8B7C0;
  v3[16] = @"numberOfRecentOutgoingInteractionsWithConversation";
  v3[17] = @"numberOfInteractionsDuringTimePeriodWithConversation";
  v4[16] = &unk_1F2D8B7C0;
  v4[17] = &unk_1F2D8B7C0;
  v3[18] = @"hasEverSharePlayedWithConversation";
  v3[19] = @"numberOfEngagedSuggestionsWithConversation";
  v4[18] = &unk_1F2D8B7C0;
  v4[19] = &unk_1F2D8B7C0;
  v3[20] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v3[21] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v4[20] = &unk_1F2D8B7C0;
  v4[21] = &unk_1F2D8B7C0;
  v3[22] = @"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation";
  v3[23] = @"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation";
  v4[22] = &unk_1F2D8B7C0;
  v4[23] = &unk_1F2D8B7C0;
  v3[24] = @"numberOfEngagedSuggestionsToTargetApp";
  v3[25] = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v4[24] = &unk_1F2D8B7C0;
  v4[25] = &unk_1F2D8B7C0;
  v3[26] = @"numberOfDifferentFacesSharedWithConversation";
  v3[27] = @"numberOfAppsSharedFromWithConversation";
  v4[26] = &unk_1F2D8B7C0;
  v4[27] = &unk_1F2D8B7C0;
  v3[28] = @"featureCountFor_food";
  v3[29] = @"featureCountFor_pet";
  v4[28] = &unk_1F2D8B7C0;
  v4[29] = &unk_1F2D8B7C0;
  v3[30] = @"featureCountFor_sport";
  v3[31] = @"featureCountFor_music";
  v4[30] = &unk_1F2D8B7C0;
  v4[31] = &unk_1F2D8B7C0;
  v3[32] = @"conditioned_featureCountFor_food";
  v3[33] = @"conditioned_featureCountFor_pet";
  v4[32] = &unk_1F2D8B7C0;
  v4[33] = &unk_1F2D8B7C0;
  v3[34] = @"conditioned_featureCountFor_sport";
  v3[35] = @"conditioned_featureCountFor_music";
  v4[34] = &unk_1F2D8B7C0;
  v4[35] = &unk_1F2D8B7C0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:36];
  v2 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_43;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_43 = v1;

  objc_autoreleasePoolPop(v0);
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_4()
{
  v31[14] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v30[0] = @"laplaceProbability:withAlpha:";
  v30[1] = @"numberOfOutgoingInteractionsWithConversation";
  v30[2] = &unk_1F2D8B7D8;
  v30[3] = @"pCk";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v31[0] = v15;
  v29[0] = @"log:withBase:";
  v29[1] = @"pCk";
  v29[2] = &unk_1F2D8B7F0;
  v29[3] = @"logJointProbabilityScore";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  v31[1] = v14;
  v28[0] = @"laplaceProbability:withAlpha:";
  v28[1] = @"numberOfEngagedSuggestionsFromCurrentAppWithConversation";
  v28[2] = &unk_1F2D8C7D8;
  v28[3] = @"pSource|Ck";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v31[2] = v13;
  v27[0] = @"log:withBase:";
  v27[1] = @"pSource|Ck";
  v27[2] = &unk_1F2D8B7F0;
  v27[3] = @"pSource|Ck";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v31[3] = v12;
  v26[0] = @"sum:with:";
  v26[1] = @"logJointProbabilityScore";
  v26[2] = @"pSource|Ck";
  v26[3] = @"logJointProbabilityScore";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v31[4] = v11;
  v25[0] = @"laplaceProbability:withAlpha:";
  v25[1] = @"numberOfEngagedSuggestionsOfTopDomainURLWithConversation";
  v25[2] = &unk_1F2D8C7E8;
  v25[3] = @"pTopLevelDomain|Ck";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  v31[5] = v10;
  v24[0] = @"log:withBase:";
  v24[1] = @"pTopLevelDomain|Ck";
  v24[2] = &unk_1F2D8B7F0;
  v24[3] = @"pTopLevelDomain|Ck";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v31[6] = v9;
  v23[0] = @"sum:with:";
  v23[1] = @"logJointProbabilityScore";
  v23[2] = @"pTopLevelDomain|Ck";
  v23[3] = @"logJointProbabilityScore";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  v31[7] = v0;
  v22[0] = @"laplaceProbability:withAlpha:";
  v22[1] = @"maxIoUIoUSharesOfPeopleInPhotoWithConversation";
  v22[2] = &unk_1F2D8C7E8;
  v22[3] = @"pPASS|Ck";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
  v31[8] = v1;
  v21[0] = @"log:withBase:";
  v21[1] = @"pPASS|Ck";
  v21[2] = &unk_1F2D8B7F0;
  v21[3] = @"pPASS|Ck";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  v31[9] = v2;
  v20[0] = @"sum:with:";
  v20[1] = @"logJointProbabilityScore";
  v20[2] = @"pPASS|Ck";
  v20[3] = @"logJointProbabilityScore";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v31[10] = v3;
  v19[0] = @"laplaceProbability:withAlpha:";
  v19[1] = @"numberOfRecentOutgoingInteractionsWithConversation";
  v19[2] = &unk_1F2D8C7F8;
  v19[3] = @"pRecentInteractions|Ck";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v31[11] = v4;
  v18[0] = @"log:withBase:";
  v18[1] = @"pRecentInteractions|Ck";
  v18[2] = &unk_1F2D8B7F0;
  v18[3] = @"pRecentInteractions|Ck";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  v31[12] = v5;
  v17[0] = @"sum:with:";
  v17[1] = @"logJointProbabilityScore";
  v17[2] = @"pRecentInteractions|Ck";
  v17[3] = @"logJointProbabilityScore";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v31[13] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:14];
  v8 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_70;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_70 = v7;

  objc_autoreleasePoolPop(context);
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_84()
{
  v12[4] = *MEMORY[0x1E69E9840];
  v0 = objc_autoreleasePoolPush();
  v11[0] = @"featureCountFor_food";
  v1 = objc_autoreleasePoolPush();
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Cooking", @"12031", @"Culinary Art", @"12221", @"Dinner", @"12398", @"Fast Food", @"12841", @"Fish as Food", @"12944", @"Food", @"15", @"Fried Food", @"13179", @"Lunch", @"14599", @"Meal", @"14798", @"Menu", @"14852", @"Poultry", @"1037", @"Restaurant", @"32", @"Seafood", @"1175", @"Soup", @"1252", @"Wine", @"1501", 0}];
  objc_autoreleasePoolPop(v1);
  v12[0] = v2;
  v11[1] = @"featureCountFor_music";
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Brass Music", @"253", @"Concert", @"12", @"Dancing", @"462", @"Digital Piano", @"12384", @"Electrophone", @"12669", @"Flute", @"571", @"Guitar", @"648", @"Headphones", @"670", @"Music", @"898", @"Music Venue", @"15119", @"Musical", @"15124", @"Musical Ensemble", @"15122", @"Musical Instrument", @"899", @"Musical Keyboard", @"15123", @"Orchestra", @"927", @"Percussion Instrument", @"15635", @"Piano", @"985", @"Singer", @"1213", @"Singing", @"16904", @"String Instrument", @"1307", @"Ukulele", @"1436", @"Woodwind", @"1510", 0}];
  objc_autoreleasePoolPop(v3);
  v12[1] = v4;
  v11[2] = @"featureCountFor_pet";
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Beagle", @"186", @"Canine", @"297", @"Cat", @"114", @"Dog", @"493", @"Dog Walking", @"12456", @"Feline", @"545", @"Hound", @"698", @"Spaniel", @"1256", 0}];
  objc_autoreleasePoolPop(v5);
  v12[2] = v6;
  v11[3] = @"featureCountFor_sport";
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"Aerobatics", @"10058", @"Air Sports", @"10100", @"Athletics", @"1770", @"Auto Racing", @"10433", @"Ball", @"159", @"Basketball", @"178", @"Bodybuilding", @"10950", @"Cheerleading", @"343", @"Contact Sport", @"12017", @"Cycling", @"454", @"Dancesport", @"12291", @"Equestrian Sport", @"12735", @"Extreme Sport", @"12795", @"Figure Skating", @"12906", @"Frisbee", @"588", @"Golf", @"624", @"Gym", @"13568", @"Hockey", @"683", @"Motor Sport", @"889", @"Nascar", @"906", @"Racing", @"16134", @"Racquet", @"1067", @"Roller Sport", @"16406", @"Soccer", @"1245", @"Sport", @"1269", @"Sport Climbing", @"17197", @"Sports Equipment", @"1270", @"Sports Uniform", @"17209", @"Sports Venue", @"17199", @"Sportscar", @"1271", @"Sportswear"}];
  objc_autoreleasePoolPop(v7);
  v12[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v10 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_83;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_83 = v9;

  objc_autoreleasePoolPop(v0);
}

void __91___PSInteractionsStatisticsConfig_DefaultConfig__initDefaultConfigWithBundleId_anchorDate___block_invoke_2_581()
{
  v0 = objc_autoreleasePoolPush();
  v1 = initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_580;
  initDefaultConfigWithBundleId_anchorDate___pasExprOnceResult_580 = &unk_1F2D8C848;

  objc_autoreleasePoolPop(v0);
}

@end