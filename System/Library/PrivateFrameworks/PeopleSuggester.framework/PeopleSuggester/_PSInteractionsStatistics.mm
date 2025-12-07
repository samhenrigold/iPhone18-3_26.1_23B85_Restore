@interface _PSInteractionsStatistics
- (BOOL)containsConversationId:(id)id;
- (BOOL)isUsingDefaultValue:(id)value forConversationId:(id)id;
- (NSDictionary)features;
- (NSDictionary)properties;
- (_PSInteractionsStatistics)initWithConfig:(id)config;
- (id)descriptionRedacted:(BOOL)redacted;
- (id)nonNilFeaturesForConversationId:(id)id;
- (id)privacyMitigatedFeatureValueFromName:(id)name forConversationId:(id)id;
- (id)privatizedConversationId:(id)id;
- (id)valueForFeature:(id)feature forConversationId:(id)id;
- (id)valueForProperty:(id)property forConversationId:(id)id;
- (id)valueOrDefaultValueForFeature:(id)feature forConversationId:(id)id;
- (void)_updatePropertiesFromRecord:(id)record forConversationId:(id)id;
- (void)addConversationId:(id)id;
- (void)aggregateSumForArguments:(id)arguments;
- (void)computeAppsSharedFromForConversationId:(id)id interactionRecord:(id)record;
- (void)computeContentBasedFeaturesForPersonIdsDetectedInPhoto:(id)photo sceneCategoriesDetectedInPhoto:(id)inPhoto;
- (void)computeDynamicFeatureWithOperatorName:(void *)name forArguments:;
- (void)computeDynamicFeatures;
- (void)computeHasEverSharePlayedWithConversationId:(id)id interactionRecord:(id)record;
- (void)computeIsFirstPartyAppForConversationId:(id)id interactionRecord:(id)record;
- (void)computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:(id)photo;
- (void)computeNumberOfAppsSharedFromWithConversation;
- (void)computeNumberOfEngagedSuggestionsFromCurrentAppWithConversationForConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfEngagedSuggestionsOfDetectedPeopleForPeopleDetectedInPhoto:(id)photo;
- (void)computeNumberOfEngagedSuggestionsOfPeopleInPhoto;
- (void)computeNumberOfEngagedSuggestionsOfTopDomainURLWithConversationForConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfEngagedSuggestionsToTargetApp;
- (void)computeNumberOfEngagedSuggestionsWithConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfFacesSharedWithConversation;
- (void)computeNumberOfIncomingInteractionsWithConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfOutgoingInteractionsWithConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfRecentOutgoingInteractionsWithConversationForConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfSharesFromCurrentAppWithConversationForConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfSharesOfDetectedPeopleForPeopleDetectedInPhoto:(id)photo;
- (void)computeNumberOfSharesOfDetectedScenesInPhotoForSceneCategoriesDetectedInPhoto:(id)photo;
- (void)computeNumberOfSharesOfPeopleInPhoto;
- (void)computeNumberOfSharesOfScenesInPhoto;
- (void)computeNumberOfSharesOfTopDomainURLWithConversationForConversationId:(id)id interactionRecord:(id)record;
- (void)computeNumberOfSharesToTargetApp;
- (void)computeNumberOfSharesWithConversationId:(id)id interactionRecord:(id)record;
- (void)computePhotoFeaturesForConversationId:(id)id interactionRecord:(id)record;
- (void)computeScenesBasedFeaturesForConversationId:(id)id interactionRecord:(id)record;
- (void)computeStatisticsWithInteractionStore:(id)store;
- (void)computeTimeSinceLastIncomingInteractionForConversationId:(id)id interactionRecord:(id)record;
- (void)computeTimeSinceLastOutgoingInteractionForConversationId:(id)id interactionRecord:(id)record;
- (void)computeTimeSinceLastPhoneCallWithConversationId:(id)id interactionRecord:(id)record;
- (void)computeTimeSinceLastPhotoShareWithConversationId:(id)id interactionRecord:(id)record;
- (void)computeTimeSinceLastShareWithConversation:(id)conversation interactionRecord:(id)record;
- (void)computeTimeSinceLastUIEngagementForConversationId:(id)id interactionRecord:(id)record;
- (void)copyFeatureForArguments:(id)arguments;
- (void)dispatchComputationForBatchFeature:(void *)result;
- (void)dispatchComputationForContentFeature:(void *)feature personIdsDetectedInPhoto:(void *)photo sceneCategoriesDetectedInPhoto:;
- (void)dispatchComputationForIncrementalFeature:(void *)feature conversationId:(void *)id interactionRecord:;
- (void)divideWithDivisorForArguments:(id)arguments;
- (void)exponentialWithMultiplierForArguments:(id)arguments;
- (void)imputeFeatureForArguments:(id)arguments;
- (void)incrementValueForFeature:(id)feature andConversationId:(id)id;
- (void)initFeature:(id)feature withValue:(id)value;
- (void)laplaceProbabilityWithAlphaForArguments:(id)arguments;
- (void)logWithBaseForArguments:(id)arguments;
- (void)multiplyWithKeyForArguments:(id)arguments;
- (void)mutliplyWithScalarForArguments:(id)arguments;
- (void)powerWithExponentForArguments:(id)arguments;
- (void)processInteractionRecord:(id)record;
- (void)reciprocalWithOffsetForArguments:(id)arguments;
- (void)removeConversationIds:(id)ids;
- (void)removeFeature:(id)feature andConversation:(id)conversation;
- (void)renameFeatureForArguments:(id)arguments;
- (void)savePastSharedPhotoDetectedPersonIds:(id)ids forConversationId:(id)id forSyntheticInteraction:(BOOL)interaction;
- (void)setValue:(id)value forFeature:(id)feature andConversationId:(id)id;
- (void)setValue:(id)value forProperty:(id)property andConversationId:(id)id;
- (void)sumWithAddendForArguments:(id)arguments;
- (void)sumWithKeyForArguments:(id)arguments;
@end

@implementation _PSInteractionsStatistics

- (void)computeAppsSharedFromForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 13)
  {
    appsSharedFromByConversationId = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
    v8 = [appsSharedFromByConversationId objectForKeyedSubscript:idCopy];

    if (!v8)
    {
      v9 = objc_opt_new();
      appsSharedFromByConversationId2 = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
      [appsSharedFromByConversationId2 setObject:v9 forKeyedSubscript:idCopy];
    }

    appsSharedFromByConversationId3 = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
    v12 = [appsSharedFromByConversationId3 objectForKeyedSubscript:idCopy];
    bundleId = [recordCopy bundleId];
    [v12 addObject:bundleId];
  }
}

- (void)computeIsFirstPartyAppForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  v5 = [(_PSInteractionsStatistics *)self valueForProperty:@"ConversationBundleId" forConversationId:idCopy];
  v6 = [(_PSInteractionsStatistics *)self valueForFeature:@"isFirstPartyApp" forConversationId:idCopy];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v5 hasPrefix:@"com.apple."];
    v10 = [MEMORY[0x1E696AD98] numberWithBool:v9];
    [(_PSInteractionsStatistics *)self setValue:v10 forFeature:@"isFirstPartyApp" andConversationId:idCopy];
  }
}

- (void)computeNumberOfSharesFromCurrentAppWithConversationForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 13)
  {
    bundleId = [recordCopy bundleId];
    config = [(_PSInteractionsStatistics *)self config];
    sourceBundleId = [config sourceBundleId];
    v10 = [bundleId isEqualToString:sourceBundleId];

    if (v10)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfSharesFromCurrentAppWithConversation" andConversationId:idCopy];
    }
  }
}

- (void)computeNumberOfEngagedSuggestionsFromCurrentAppWithConversationForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 20)
  {
    bundleId = [recordCopy bundleId];
    config = [(_PSInteractionsStatistics *)self config];
    sourceBundleId = [config sourceBundleId];
    v10 = [bundleId isEqualToString:sourceBundleId];

    if (v10)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfEngagedSuggestionsFromCurrentAppWithConversation" andConversationId:idCopy];
    }
  }
}

- (void)computeNumberOfSharesOfTopDomainURLWithConversationForConversationId:(id)id interactionRecord:(id)record
{
  v28 = *MEMORY[0x1E69E9840];
  idCopy = id;
  recordCopy = record;
  config = [(_PSInteractionsStatistics *)self config];
  topDomainURL = [config topDomainURL];
  if (topDomainURL)
  {
    v9 = topDomainURL;
    mechanism = [recordCopy mechanism];

    if (mechanism == 13)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = recordCopy;
      obj = [recordCopy attachments];
      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(obj);
            }

            contentURL = [*(*(&v23 + 1) + 8 * v14) contentURL];
            host = [contentURL host];
            config2 = [(_PSInteractionsStatistics *)self config];
            topDomainURL2 = [config2 topDomainURL];
            v19 = [host isEqualToString:topDomainURL2];

            if (v19)
            {
              [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfSharesOfTopDomainURLWithConversation" andConversationId:idCopy];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      recordCopy = v20;
    }
  }

  else
  {
  }
}

- (void)computeNumberOfEngagedSuggestionsOfTopDomainURLWithConversationForConversationId:(id)id interactionRecord:(id)record
{
  v28 = *MEMORY[0x1E69E9840];
  idCopy = id;
  recordCopy = record;
  config = [(_PSInteractionsStatistics *)self config];
  topDomainURL = [config topDomainURL];
  if (topDomainURL)
  {
    v9 = topDomainURL;
    mechanism = [recordCopy mechanism];

    if (mechanism == 20)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v20 = recordCopy;
      obj = [recordCopy attachments];
      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(obj);
            }

            contentURL = [*(*(&v23 + 1) + 8 * v14) contentURL];
            host = [contentURL host];
            config2 = [(_PSInteractionsStatistics *)self config];
            topDomainURL2 = [config2 topDomainURL];
            v19 = [host isEqualToString:topDomainURL2];

            if (v19)
            {
              [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfEngagedSuggestionsOfTopDomainURLWithConversation" andConversationId:idCopy];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      recordCopy = v20;
    }
  }

  else
  {
  }
}

- (void)computeNumberOfSharesWithConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  if ([record mechanism] == 13)
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfSharesWithConversation" andConversationId:idCopy];
  }
}

- (void)computeNumberOfEngagedSuggestionsWithConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  if ([record mechanism] == 20)
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfEngagedSuggestionsWithConversation" andConversationId:idCopy];
  }
}

- (void)computeNumberOfOutgoingInteractionsWithConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy direction] == 1 && objc_msgSend(recordCopy, "mechanism") != 20)
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfOutgoingInteractionsWithConversation" andConversationId:idCopy];
  }
}

- (void)computeNumberOfIncomingInteractionsWithConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  if (![record direction])
  {
    [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfIncomingInteractionsWithConversation" andConversationId:idCopy];
  }
}

- (void)computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy direction] == 1)
  {
    if (computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___pasOnceToken2 != -1)
    {
      [_PSInteractionsStatistics(StaticFeatures) computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:interactionRecord:];
    }

    v7 = computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId_interactionRecord___pasExprOnceResult;
    v8 = objc_autoreleasePoolPush();
    v9 = MEMORY[0x1E695DF00];
    [recordCopy startDate];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    objc_autoreleasePoolPop(v8);
    LODWORD(v8) = [v7 isDateInWeekend:v10];

    config = [(_PSInteractionsStatistics *)self config];
    isWeekendShare = [config isWeekendShare];

    if (v8 == isWeekendShare)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfInteractionsDuringTimePeriodWithConversation" andConversationId:idCopy];
    }
  }
}

- (void)computeNumberOfRecentOutgoingInteractionsWithConversationForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy direction] == 1)
  {
    config = [(_PSInteractionsStatistics *)self config];
    [config anchorTimeStamp];
    v9 = v8;
    [recordCopy startDate];
    v11 = v9 - v10;

    if (v11 <= 900.0)
    {
      [(_PSInteractionsStatistics *)self incrementValueForFeature:@"numberOfRecentOutgoingInteractionsWithConversation" andConversationId:idCopy];
    }
  }
}

- (void)computeTimeSinceLastOutgoingInteractionForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy direction] == 1 && objc_msgSend(recordCopy, "mechanism") != 20)
  {
    config = [(_PSInteractionsStatistics *)self config];
    [config anchorTimeStamp];
    v9 = v8;
    [recordCopy startDate];
    v11 = v9 - v10;

    v12 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastOutgoingInteraction" forConversationId:idCopy];
    v13 = v12;
    if (!v12 || ([v12 doubleValue], v11 < v14))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [(_PSInteractionsStatistics *)self setValue:v15 forFeature:@"timeSinceLastOutgoingInteraction" andConversationId:idCopy];
    }
  }
}

- (void)computeTimeSinceLastUIEngagementForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 20)
  {
    config = [(_PSInteractionsStatistics *)self config];
    [config anchorTimeStamp];
    v9 = v8;
    [recordCopy startDate];
    v11 = v9 - v10;

    v12 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastUIEngagement" forConversationId:idCopy];
    v13 = v12;
    if (!v12 || ([v12 doubleValue], v11 < v14))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [(_PSInteractionsStatistics *)self setValue:v15 forFeature:@"timeSinceLastUIEngagement" andConversationId:idCopy];
    }
  }
}

- (void)computeTimeSinceLastPhoneCallWithConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  v7 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F2D8BFB8];
  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(recordCopy, "mechanism")}];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    [recordCopy endDate];
    v11 = v10;
    [recordCopy startDate];
    v13 = v12;
    v14 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastPhoneCallWithConversation" forConversationId:idCopy];

    v15 = v11 - v13;
    if (!v14 && v15 > 5.0)
    {
      config = [(_PSInteractionsStatistics *)self config];
      [config anchorTimeStamp];
      v19 = v18;
      [recordCopy endDate];
      v21 = v19 - v20;

      v22 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
      [(_PSInteractionsStatistics *)self setValue:v22 forFeature:@"timeSinceLastPhoneCallWithConversation" andConversationId:idCopy];
    }
  }
}

- (void)computeTimeSinceLastIncomingInteractionForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if (![recordCopy direction])
  {
    v7 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastIncomingInteraction" forConversationId:idCopy];

    if (!v7)
    {
      config = [(_PSInteractionsStatistics *)self config];
      [config anchorTimeStamp];
      v10 = v9;
      [recordCopy startDate];
      v12 = v10 - v11;

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      [(_PSInteractionsStatistics *)self setValue:v13 forFeature:@"timeSinceLastIncomingInteraction" andConversationId:idCopy];
    }
  }
}

- (void)computeTimeSinceLastPhotoShareWithConversationId:(id)id interactionRecord:(id)record
{
  v27 = *MEMORY[0x1E69E9840];
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 20)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    attachments = [recordCopy attachments];
    v9 = [attachments countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(attachments);
          }

          photoLocalIdentifier = [*(*(&v22 + 1) + 8 * i) photoLocalIdentifier];

          if (photoLocalIdentifier)
          {

            config = [(_PSInteractionsStatistics *)self config];
            [config anchorTimeStamp];
            v16 = v15;
            [recordCopy startDate];
            v18 = v16 - v17;

            v19 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastPhotoShareWithConversation" forConversationId:idCopy];
            attachments = v19;
            if (!v19 || ([v19 doubleValue], v18 < v20))
            {
              v21 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
              [(_PSInteractionsStatistics *)self setValue:v21 forFeature:@"timeSinceLastPhotoShareWithConversation" andConversationId:idCopy];
            }

            goto LABEL_14;
          }
        }

        v10 = [attachments countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

- (void)computeTimeSinceLastShareWithConversation:(id)conversation interactionRecord:(id)record
{
  conversationCopy = conversation;
  recordCopy = record;
  if ([recordCopy mechanism] == 13)
  {
    config = [(_PSInteractionsStatistics *)self config];
    [config anchorTimeStamp];
    v9 = v8;
    [recordCopy startDate];
    v11 = v9 - v10;

    v12 = [(_PSInteractionsStatistics *)self valueForFeature:@"timeSinceLastShareWithConversation" forConversationId:conversationCopy];
    v13 = v12;
    if (!v12 || ([v12 doubleValue], v11 < v14))
    {
      v15 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [(_PSInteractionsStatistics *)self setValue:v15 forFeature:@"timeSinceLastShareWithConversation" andConversationId:conversationCopy];
    }
  }
}

- (void)computeHasEverSharePlayedWithConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  v6 = MEMORY[0x1E69978D0];
  recipients = [record recipients];
  allObjects = [recipients allObjects];
  v9 = [v6 generateConversationIdFromInteractionRecipientRecords:allObjects];

  hasSharePlayedWith = [(_PSInteractionsStatistics *)self hasSharePlayedWith];
  LODWORD(recipients) = [hasSharePlayedWith containsObject:v9];

  if (recipients)
  {
    [(_PSInteractionsStatistics *)self setValue:&unk_1F2D8AF20 forFeature:@"hasEverSharePlayedWithConversation" andConversationId:idCopy];
  }
}

- (void)computePhotoFeaturesForConversationId:(id)id interactionRecord:(id)record
{
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 13 || objc_msgSend(recordCopy, "mechanism") == 20)
  {
    attachments = [recordCopy attachments];
    v8 = [attachments _pas_mappedSetWithTransform:&__block_literal_global_29];

    -[_PSInteractionsStatistics savePastSharedPhotoDetectedPersonIds:forConversationId:forSyntheticInteraction:](self, "savePastSharedPhotoDetectedPersonIds:forConversationId:forSyntheticInteraction:", v8, idCopy, [recordCopy mechanism] == 20);
  }
}

- (void)computeScenesBasedFeaturesForConversationId:(id)id interactionRecord:(id)record
{
  v40 = *MEMORY[0x1E69E9840];
  idCopy = id;
  recordCopy = record;
  if ([recordCopy mechanism] == 13)
  {
    attachments = [recordCopy attachments];
    v8 = [attachments _pas_mappedSetWithTransform:&__block_literal_global_31_0];

    v28 = v8;
    if ([v8 count])
    {
      v24 = recordCopy;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      config = [(_PSInteractionsStatistics *)self config];
      sceneCategoryTagMapping = [config sceneCategoryTagMapping];

      obj = sceneCategoryTagMapping;
      v29 = [sceneCategoryTagMapping countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v29)
      {
        v27 = *v35;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v35 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v34 + 1) + 8 * i);
            config2 = [(_PSInteractionsStatistics *)self config];
            v14 = [config2 sceneTagThresholdForSceneCategoryName:v12];

            config3 = [(_PSInteractionsStatistics *)self config];
            sceneCategoryTagMapping2 = [config3 sceneCategoryTagMapping];
            v17 = [sceneCategoryTagMapping2 objectForKeyedSubscript:v12];

            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v18 = v28;
            v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = 0;
              v22 = *v31;
              while (2)
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v31 != v22)
                  {
                    objc_enumerationMutation(v18);
                  }

                  if ([v17 containsObject:*(*(&v30 + 1) + 8 * j)])
                  {
                    if (++v21 >= [v14 intValue])
                    {
                      [(_PSInteractionsStatistics *)self incrementValueForFeature:v12 andConversationId:idCopy];
                      goto LABEL_19;
                    }
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

LABEL_19:
          }

          v29 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v29);
      }

      recordCopy = v24;
    }
  }
}

- (void)computeNumberOfFacesSharedWithConversation
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v16 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = objc_opt_new();
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        personsIdsInPhotosForPastShareInteractions = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastShareInteractions];
        v9 = [personsIdsInPhotosForPastShareInteractions objectForKeyedSubscript:v6];

        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          do
          {
            v13 = 0;
            do
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v7 unionSet:*(*(&v17 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v11);
        }

        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
        [(_PSInteractionsStatistics *)self setValue:v14 forFeature:@"numberOfDifferentFacesSharedWithConversation" andConversationId:v6];

        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v4);
  }
}

- (void)computeNumberOfSharesToTargetApp
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v8];
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v9];

          if (!v10)
          {
            [v3 setObject:&unk_1F2D8AF38 forKeyedSubscript:v9];
          }

          v11 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:@"numberOfSharesWithConversation" forConversationId:v8];
          v12 = MEMORY[0x1E696AD98];
          intValue = [v11 intValue];
          v14 = [v3 objectForKeyedSubscript:v9];
          v15 = [v12 numberWithInt:{objc_msgSend(v14, "intValue") + intValue}];
          [v3 setObject:v15 forKeyedSubscript:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
  v17 = [conversationIds countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(conversationIds);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v21];
        v23 = [v3 objectForKeyedSubscript:v22];

        if (v23)
        {
          v24 = [v3 objectForKeyedSubscript:v22];
          [(_PSInteractionsStatistics *)self setValue:v24 forFeature:@"numberOfTotalSharesToTargetApp" andConversationId:v21];
        }
      }

      v18 = [conversationIds countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }
}

- (void)computeNumberOfEngagedSuggestionsToTargetApp
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v4 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v8];
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v9];

          if (!v10)
          {
            [v3 setObject:&unk_1F2D8AF38 forKeyedSubscript:v9];
          }

          v11 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:@"numberOfEngagedSuggestionsWithConversation" forConversationId:v8];
          v12 = MEMORY[0x1E696AD98];
          intValue = [v11 intValue];
          v14 = [v3 objectForKeyedSubscript:v9];
          v15 = [v12 numberWithInt:{objc_msgSend(v14, "intValue") + intValue}];
          [v3 setObject:v15 forKeyedSubscript:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v5);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
  v17 = [conversationIds countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(conversationIds);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        v22 = [(_PSInteractionsStatistics *)self bundleIdForConversationId:v21];
        if (v22)
        {
          v23 = [v3 objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v3 objectForKeyedSubscript:v22];
            [(_PSInteractionsStatistics *)self setValue:v24 forFeature:@"numberOfEngagedSuggestionsToTargetApp" andConversationId:v21];
          }
        }
      }

      v18 = [conversationIds countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }
}

- (void)computeNumberOfAppsSharedFromWithConversation
{
  appsSharedFromByConversationId = [(_PSInteractionsStatistics *)self appsSharedFromByConversationId];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90___PSInteractionsStatistics_StaticFeatures__computeNumberOfAppsSharedFromWithConversation__block_invoke;
  v4[3] = &unk_1E7C24160;
  v4[4] = self;
  [appsSharedFromByConversationId enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)computeNumberOfSharesOfPeopleInPhoto
{
  selfCopy = self;
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v25 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v25)
  {
    v23 = *v39;
    v24 = selfCopy;
    do
    {
      v3 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v3;
        v4 = *(*(&v38 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v5 = objc_opt_new();
        personsIdsInPhotosForPastShareInteractions = [(_PSInteractionsStatistics *)selfCopy personsIdsInPhotosForPastShareInteractions];
        v26 = v4;
        v7 = [personsIdsInPhotosForPastShareInteractions objectForKeyedSubscript:v4];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v29 = v7;
        v8 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v35;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v35 != v11)
              {
                objc_enumerationMutation(v29);
              }

              v13 = *(*(&v34 + 1) + 8 * i);
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v31;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v31 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v30 + 1) + 8 * j);
                    [v5 addObject:v19];
                    v20 = [v5 countForObject:v19];
                    if (v10 <= v20)
                    {
                      v10 = v20;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
                }

                while (v16);
              }
            }

            v9 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
        selfCopy = v24;
        [(_PSInteractionsStatistics *)v24 setValue:v21 forFeature:@"numberOfSharesOfPeopleInPhotoWithConversation" andConversationId:v26];

        objc_autoreleasePoolPop(context);
        v3 = v28 + 1;
      }

      while (v28 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v25);
  }
}

- (void)computeNumberOfEngagedSuggestionsOfPeopleInPhoto
{
  selfCopy = self;
  v45 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v25 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v25)
  {
    v23 = *v39;
    v24 = selfCopy;
    do
    {
      v3 = 0;
      do
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v3;
        v4 = *(*(&v38 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v5 = objc_opt_new();
        personsIdsInPhotosForPastSyntheticShareInteractions = [(_PSInteractionsStatistics *)selfCopy personsIdsInPhotosForPastSyntheticShareInteractions];
        v26 = v4;
        v7 = [personsIdsInPhotosForPastSyntheticShareInteractions objectForKeyedSubscript:v4];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v29 = v7;
        v8 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v35;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v35 != v11)
              {
                objc_enumerationMutation(v29);
              }

              v13 = *(*(&v34 + 1) + 8 * i);
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v31;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v31 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v30 + 1) + 8 * j);
                    [v5 addObject:v19];
                    v20 = [v5 countForObject:v19];
                    if (v10 <= v20)
                    {
                      v10 = v20;
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
                }

                while (v16);
              }
            }

            v9 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v9);
        }

        else
        {
          v10 = 0;
        }

        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
        selfCopy = v24;
        [(_PSInteractionsStatistics *)v24 setValue:v21 forFeature:@"numberOfEngagedSuggestionsOfPeopleInPhotoWithConversation" andConversationId:v26];

        objc_autoreleasePoolPop(context);
        v3 = v28 + 1;
      }

      while (v28 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v25);
  }
}

- (void)computeNumberOfSharesOfScenesInPhoto
{
  v28 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(_PSInteractionsStatistics *)self conversationIds];
  v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        config = [(_PSInteractionsStatistics *)self config];
        configuredSceneCategoryTagNames = [config configuredSceneCategoryTagNames];

        v7 = [configuredSceneCategoryTagNames countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v7)
        {
          v8 = v7;
          LODWORD(v9) = 0;
          v10 = *v19;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(configuredSceneCategoryTagNames);
              }

              v12 = [(_PSInteractionsStatistics *)self valueForFeature:*(*(&v18 + 1) + 8 * j) forConversationId:v4];
              intValue = [v12 intValue];

              if (v9 <= intValue)
              {
                v9 = intValue;
              }

              else
              {
                v9 = v9;
              }
            }

            v8 = [configuredSceneCategoryTagNames countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v8);
        }

        else
        {
          v9 = 0;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:v9];
        [(_PSInteractionsStatistics *)self setValue:v14 forFeature:@"numberOfSharesOfScenesInPhotoWithConversation" andConversationId:v4];
      }

      v17 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v17);
  }
}

- (void)computeNumberOfSharesOfDetectedPeopleForPeopleDetectedInPhoto:(id)photo
{
  v47 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (photoCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v26)
    {
      v24 = *v41;
      selfCopy = self;
      do
      {
        v5 = 0;
        do
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v5;
          v6 = *(*(&v40 + 1) + 8 * v5);
          context = objc_autoreleasePoolPush();
          v7 = objc_opt_new();
          personsIdsInPhotosForPastShareInteractions = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastShareInteractions];
          v27 = v6;
          v9 = [personsIdsInPhotosForPastShareInteractions objectForKeyedSubscript:v6];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v30 = v9;
          v10 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v31 = *v37;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v37 != v31)
                {
                  objc_enumerationMutation(v30);
                }

                v14 = *(*(&v36 + 1) + 8 * i);
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v15 = v14;
                v16 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v33;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v33 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v32 + 1) + 8 * j);
                      if ([photoCopy containsObject:v20])
                      {
                        [v7 addObject:v20];
                        v21 = [v7 countForObject:v20];
                        if (v12 <= v21)
                        {
                          v12 = v21;
                        }
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
                  }

                  while (v17);
                }
              }

              v11 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          self = selfCopy;
          [(_PSInteractionsStatistics *)selfCopy setValue:v22 forFeature:@"numberOfSharesOfDetectedPeopleWithConversation" andConversationId:v27];

          objc_autoreleasePoolPop(context);
          v5 = v29 + 1;
        }

        while (v29 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v26);
    }
  }
}

- (void)computeNumberOfEngagedSuggestionsOfDetectedPeopleForPeopleDetectedInPhoto:(id)photo
{
  v47 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (photoCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v26)
    {
      v24 = *v41;
      selfCopy = self;
      do
      {
        v5 = 0;
        do
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v5;
          v6 = *(*(&v40 + 1) + 8 * v5);
          context = objc_autoreleasePoolPush();
          v7 = objc_opt_new();
          personsIdsInPhotosForPastSyntheticShareInteractions = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastSyntheticShareInteractions];
          v27 = v6;
          v9 = [personsIdsInPhotosForPastSyntheticShareInteractions objectForKeyedSubscript:v6];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v30 = v9;
          v10 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v31 = *v37;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v37 != v31)
                {
                  objc_enumerationMutation(v30);
                }

                v14 = *(*(&v36 + 1) + 8 * i);
                v32 = 0u;
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v15 = v14;
                v16 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v33;
                  do
                  {
                    for (j = 0; j != v17; ++j)
                    {
                      if (*v33 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v32 + 1) + 8 * j);
                      if ([photoCopy containsObject:v20])
                      {
                        [v7 addObject:v20];
                        v21 = [v7 countForObject:v20];
                        if (v12 <= v21)
                        {
                          v12 = v21;
                        }
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
                  }

                  while (v17);
                }
              }

              v11 = [v30 countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          self = selfCopy;
          [(_PSInteractionsStatistics *)selfCopy setValue:v22 forFeature:@"numberOfEngagedSuggestionsOfDetectedPeopleWithConversation" andConversationId:v27];

          objc_autoreleasePoolPop(context);
          v5 = v29 + 1;
        }

        while (v29 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v26);
    }
  }
}

- (void)computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:(id)photo
{
  v37 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (photoCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v22)
    {
      v20 = *v32;
      selfCopy = self;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v31 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          personsIdsInPhotosForPastShareInteractions = [(_PSInteractionsStatistics *)self personsIdsInPhotosForPastShareInteractions];
          v23 = v6;
          v8 = [personsIdsInPhotosForPastShareInteractions objectForKeyedSubscript:v6];

          v9 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v28;
            v12 = 0.0;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v28 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v14 = *(*(&v27 + 1) + 8 * j);
                v15 = [photoCopy mutableCopy];
                v16 = [photoCopy mutableCopy];
                [v15 intersectSet:v14];
                [v16 unionSet:v14];
                if ([v16 count])
                {
                  v12 = fmax(v12, [v15 count] / objc_msgSend(v16, "count"));
                }

                else
                {
                  v17 = +[_PSLogging rewriteChannel];
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    [(_PSInteractionsStatistics(StaticFeatures) *)&buf computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:v26, v17];
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v10);
          }

          else
          {
            v12 = 0.0;
          }

          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
          self = selfCopy;
          [(_PSInteractionsStatistics *)selfCopy setValue:v18 forFeature:@"maxIoUIoUSharesOfPeopleInPhotoWithConversation" andConversationId:v23];

          objc_autoreleasePoolPop(context);
        }

        v22 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }
  }
}

- (void)computeNumberOfSharesOfDetectedScenesInPhotoForSceneCategoriesDetectedInPhoto:(id)photo
{
  v32 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  if (photoCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v19 = *v27;
      do
      {
        v5 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v26 + 1) + 8 * v5);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          config = [(_PSInteractionsStatistics *)self config];
          configuredSceneCategoryTagNames = [config configuredSceneCategoryTagNames];

          v9 = [configuredSceneCategoryTagNames countByEnumeratingWithState:&v22 objects:v30 count:16];
          v21 = v5;
          if (v9)
          {
            v10 = v9;
            LODWORD(v11) = 0;
            v12 = *v23;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(configuredSceneCategoryTagNames);
                }

                v14 = *(*(&v22 + 1) + 8 * i);
                if (([photoCopy containsObject:v14] & 1) == 0)
                {
                  [(_PSInteractionsStatistics *)self removeFeature:v14 andConversation:v6];
                }

                v15 = [(_PSInteractionsStatistics *)self valueForFeature:v14 forConversationId:v6];
                intValue = [v15 intValue];

                if (v11 <= intValue)
                {
                  v11 = intValue;
                }

                else
                {
                  v11 = v11;
                }
              }

              v10 = [configuredSceneCategoryTagNames countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v10);
          }

          else
          {
            v11 = 0;
          }

          v17 = [MEMORY[0x1E696AD98] numberWithInt:v11];
          [(_PSInteractionsStatistics *)self setValue:v17 forFeature:@"numberOfSharesOfDetectedScenesInPhotoWithConversation" andConversationId:v6];

          v5 = v21 + 1;
        }

        while (v21 + 1 != v20);
        v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }
  }
}

- (void)sumWithKeyForArguments:(id)arguments
{
  v33 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    v24 = argumentsCopy;
    v25 = [argumentsCopy objectAtIndexedSubscript:2];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        v26 = v8;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v11];
          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v11];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [v13 doubleValue];
            v18 = v17;
            [v15 doubleValue];
            [MEMORY[0x1E696AD98] numberWithDouble:v18 + v19];
            v20 = v9;
            v21 = v6;
            v23 = v22 = v5;
            [(_PSInteractionsStatistics *)self setValue:v23 forFeature:v25 andConversationId:v11];

            v5 = v22;
            v6 = v21;
            v9 = v20;
            v8 = v26;
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    argumentsCopy = v24;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)sumWithAddendForArguments:(id)arguments
{
  v28 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v21 = argumentsCopy;
    v22 = [argumentsCopy objectAtIndexedSubscript:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [conversationIds countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(conversationIds);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            v18 = MEMORY[0x1E696AD98];
            [v16 doubleValue];
            v20 = [v18 numberWithDouble:v8 + v19];
            [(_PSInteractionsStatistics *)self setValue:v20 forFeature:v22 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [conversationIds countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    argumentsCopy = v21;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)multiplyWithKeyForArguments:(id)arguments
{
  v33 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    v24 = argumentsCopy;
    v25 = [argumentsCopy objectAtIndexedSubscript:2];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        v10 = 0;
        v26 = v8;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v11];
          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v11];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [v13 doubleValue];
            v18 = v17;
            [v15 doubleValue];
            [MEMORY[0x1E696AD98] numberWithDouble:v18 * v19];
            v20 = v9;
            v21 = v6;
            v23 = v22 = v5;
            [(_PSInteractionsStatistics *)self setValue:v23 forFeature:v25 andConversationId:v11];

            v5 = v22;
            v6 = v21;
            v9 = v20;
            v8 = v26;
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v8);
    }

    argumentsCopy = v24;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)mutliplyWithScalarForArguments:(id)arguments
{
  v28 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v21 = argumentsCopy;
    v22 = [argumentsCopy objectAtIndexedSubscript:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [conversationIds countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(conversationIds);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            v18 = MEMORY[0x1E696AD98];
            [v16 doubleValue];
            v20 = [v18 numberWithDouble:v8 * v19];
            [(_PSInteractionsStatistics *)self setValue:v20 forFeature:v22 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [conversationIds countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    argumentsCopy = v21;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)divideWithDivisorForArguments:(id)arguments
{
  v34 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    v25 = argumentsCopy;
    v26 = [argumentsCopy objectAtIndexedSubscript:2];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        v10 = 0;
        v27 = v8;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v11];
          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:v11];
          v15 = v14;
          if (v13)
          {
            v16 = v14 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [v14 doubleValue];
            if (v17 != 0.0)
            {
              [v13 doubleValue];
              v19 = v18;
              [v15 doubleValue];
              [MEMORY[0x1E696AD98] numberWithDouble:v19 / v20];
              v21 = v9;
              v22 = v6;
              v24 = v23 = v5;
              [(_PSInteractionsStatistics *)self setValue:v24 forFeature:v26 andConversationId:v11];

              v5 = v23;
              v6 = v22;
              v9 = v21;
              v8 = v27;
            }
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v8);
    }

    argumentsCopy = v25;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)exponentialWithMultiplierForArguments:(id)arguments
{
  v27 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v20 = argumentsCopy;
    v9 = [argumentsCopy objectAtIndexedSubscript:2];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            v19 = [MEMORY[0x1E696AD98] numberWithDouble:exp(v8 * v18)];
            [(_PSInteractionsStatistics *)self setValue:v19 forFeature:v9 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    argumentsCopy = v20;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)reciprocalWithOffsetForArguments:(id)arguments
{
  v28 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v21 = argumentsCopy;
    v22 = [argumentsCopy objectAtIndexedSubscript:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [conversationIds countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        v13 = 0;
        do
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(conversationIds);
          }

          v14 = *(*(&v23 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            if (v8 + v18 != 0.0)
            {
              [v17 doubleValue];
              v20 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 / (v8 + v19)];
              [(_PSInteractionsStatistics *)self setValue:v20 forFeature:v22 andConversationId:v14];
            }
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [conversationIds countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    argumentsCopy = v21;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)powerWithExponentForArguments:(id)arguments
{
  v27 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v20 = argumentsCopy;
    v9 = [argumentsCopy objectAtIndexedSubscript:2];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          v16 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v14];
          v17 = v16;
          if (v16)
          {
            [v16 doubleValue];
            v19 = [MEMORY[0x1E696AD98] numberWithDouble:{pow(v18, v8)}];
            [(_PSInteractionsStatistics *)self setValue:v19 forFeature:v9 andConversationId:v14];
          }

          objc_autoreleasePoolPop(v15);
          ++v13;
        }

        while (v11 != v13);
        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    argumentsCopy = v20;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)laplaceProbabilityWithAlphaForArguments:(id)arguments
{
  v42 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v29 = argumentsCopy;
    v31 = [argumentsCopy objectAtIndexedSubscript:2];
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [conversationIds count];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    conversationIds2 = [(_PSInteractionsStatistics *)self conversationIds];
    v12 = [conversationIds2 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(conversationIds2);
          }

          v17 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:*(*(&v36 + 1) + 8 * i)];
          [v17 doubleValue];
          v15 = v15 + v18;
        }

        v13 = [conversationIds2 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v19 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v33;
      v22 = v15 + v8 * v10;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = objc_autoreleasePoolPush();
          v26 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v24];
          [v26 doubleValue];
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:(v8 + v27) / v22];
          [(_PSInteractionsStatistics *)self setValue:v28 forFeature:v31 andConversationId:v24];

          objc_autoreleasePoolPop(v25);
        }

        v20 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    argumentsCopy = v29;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)logWithBaseForArguments:(id)arguments
{
  v27 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 2)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    [v6 doubleValue];
    v8 = v7;

    v20 = argumentsCopy;
    v9 = [argumentsCopy objectAtIndexedSubscript:2];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(_PSInteractionsStatistics *)self conversationIds];
    v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      v13 = log(v8);
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v5 forConversationId:v15];
          [v17 doubleValue];
          v19 = [MEMORY[0x1E696AD98] numberWithDouble:(log(v18) / v13)];
          [(_PSInteractionsStatistics *)self setValue:v19 forFeature:v9 andConversationId:v15];

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v11 != v14);
        v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v11);
    }

    argumentsCopy = v20;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)renameFeatureForArguments:(id)arguments
{
  v19 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 1)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v8 = [conversationIds countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(conversationIds);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [(_PSInteractionsStatistics *)self valueForFeature:v5 forConversationId:v12];
          [(_PSInteractionsStatistics *)self setValue:v13 forFeature:v6 andConversationId:v12];
          [(_PSInteractionsStatistics *)self removeFeature:v5 andConversation:v12];
        }

        v9 = [conversationIds countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)copyFeatureForArguments:(id)arguments
{
  v19 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 1)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v8 = [conversationIds countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(conversationIds);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [(_PSInteractionsStatistics *)self valueForFeature:v5 forConversationId:v12];
          [(_PSInteractionsStatistics *)self setValue:v13 forFeature:v6 andConversationId:v12];
        }

        v9 = [conversationIds countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)aggregateSumForArguments:(id)arguments
{
  v36 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 1)
  {
    v6 = [argumentsCopy objectAtIndexedSubscript:0];
    v25 = argumentsCopy;
    v7 = [argumentsCopy objectAtIndexedSubscript:1];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v9 = [conversationIds countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(conversationIds);
          }

          v14 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v6 forConversationId:*(*(&v30 + 1) + 8 * i)];
          [v14 doubleValue];
          v12 = v12 + v15;
        }

        v10 = [conversationIds countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }

    v24 = v6;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    conversationIds2 = [(_PSInteractionsStatistics *)self conversationIds];
    v17 = [conversationIds2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(conversationIds2);
          }

          v21 = *(*(&v26 + 1) + 8 * j);
          v22 = objc_autoreleasePoolPush();
          v23 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
          [(_PSInteractionsStatistics *)self setValue:v23 forFeature:v7 andConversationId:v21];

          objc_autoreleasePoolPop(v22);
        }

        v18 = [conversationIds2 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    v5 = v24;
    argumentsCopy = v25;
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (void)imputeFeatureForArguments:(id)arguments
{
  v18 = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  if ([argumentsCopy count] > 1)
  {
    v5 = [argumentsCopy objectAtIndexedSubscript:0];
    v6 = [argumentsCopy objectAtIndexedSubscript:1];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v8 = [conversationIds countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(conversationIds);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if ([(_PSInteractionsStatistics *)self isUsingDefaultValue:v5 forConversationId:v12])
          {
            [(_PSInteractionsStatistics *)self setValue:v6 forFeature:v5 andConversationId:v12];
          }
        }

        v9 = [conversationIds countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v5 = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_PSInteractionsStatistics(DynamicFeatures) sumWithKeyForArguments:];
    }
  }
}

- (_PSInteractionsStatistics)initWithConfig:(id)config
{
  configCopy = config;
  v23.receiver = self;
  v23.super_class = _PSInteractionsStatistics;
  v6 = [(_PSInteractionsStatistics *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = objc_opt_new();
    properties = v7->_properties;
    v7->_properties = v8;

    v10 = objc_opt_new();
    features = v7->_features;
    v7->_features = v10;

    v12 = objc_opt_new();
    personsIdsInPhotosForPastShareInteractions = v7->_personsIdsInPhotosForPastShareInteractions;
    v7->_personsIdsInPhotosForPastShareInteractions = v12;

    v14 = objc_opt_new();
    personsIdsInPhotosForPastSyntheticShareInteractions = v7->_personsIdsInPhotosForPastSyntheticShareInteractions;
    v7->_personsIdsInPhotosForPastSyntheticShareInteractions = v14;

    v16 = objc_opt_new();
    mostRecentInteractionTimestampByConversationId = v7->_mostRecentInteractionTimestampByConversationId;
    v7->_mostRecentInteractionTimestampByConversationId = v16;

    v18 = objc_opt_new();
    appsSharedFromByConversationId = v7->_appsSharedFromByConversationId;
    v7->_appsSharedFromByConversationId = v18;

    v20 = objc_opt_new();
    hasSharePlayedWith = v7->_hasSharePlayedWith;
    v7->_hasSharePlayedWith = v20;
  }

  return v7;
}

- (NSDictionary)features
{
  v2 = [(NSMutableDictionary *)self->_features copy];

  return v2;
}

- (NSDictionary)properties
{
  v2 = [(NSMutableDictionary *)self->_properties copy];

  return v2;
}

- (id)descriptionRedacted:(BOOL)redacted
{
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  objc_msgSend(v5, "appendString:", @"_PSInteractionsStatistics(\n");
  features = self->_features;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___PSInteractionsStatistics_descriptionRedacted___block_invoke;
  v10[3] = &unk_1E7C241F0;
  v7 = v5;
  redactedCopy = redacted;
  v11 = v7;
  selfCopy = self;
  [(NSMutableDictionary *)features enumerateKeysAndObjectsUsingBlock:v10];
  [v7 appendString:@""]);
  v8 = v7;

  return v7;
}

- (BOOL)containsConversationId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:id];
  v4 = v3 != 0;

  return v4;
}

- (void)addConversationId:(id)id
{
  idCopy = id;
  v4 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_properties setObject:v5 forKeyedSubscript:idCopy];

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%du", arc4random()];
    v7 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:idCopy];
    [v7 setObject:v6 forKeyedSubscript:@"privatizedConversationIdentifier"];
  }

  v8 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:idCopy];

  if (!v8)
  {
    v9 = objc_opt_new();
    [(NSMutableDictionary *)self->_features setObject:v9 forKeyedSubscript:idCopy];
  }

  v10 = [(NSMutableDictionary *)self->_personsIdsInPhotosForPastShareInteractions objectForKeyedSubscript:idCopy];

  if (!v10)
  {
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_personsIdsInPhotosForPastShareInteractions setObject:v11 forKeyedSubscript:idCopy];
  }

  v12 = [(NSMutableDictionary *)self->_personsIdsInPhotosForPastSyntheticShareInteractions objectForKeyedSubscript:idCopy];

  if (!v12)
  {
    v13 = objc_opt_new();
    [(NSMutableDictionary *)self->_personsIdsInPhotosForPastSyntheticShareInteractions setObject:v13 forKeyedSubscript:idCopy];
  }
}

- (void)removeConversationIds:(id)ids
{
  features = self->_features;
  idsCopy = ids;
  [(NSMutableDictionary *)features removeObjectsForKeys:idsCopy];
  [(NSMutableDictionary *)self->_properties removeObjectsForKeys:idsCopy];
  [(NSMutableDictionary *)self->_personsIdsInPhotosForPastShareInteractions removeObjectsForKeys:idsCopy];
  [(NSMutableDictionary *)self->_personsIdsInPhotosForPastSyntheticShareInteractions removeObjectsForKeys:idsCopy];
  [(NSMutableDictionary *)self->_mostRecentInteractionTimestampByConversationId removeObjectsForKeys:idsCopy];
  [(NSMutableDictionary *)self->_appsSharedFromByConversationId removeObjectsForKeys:idsCopy];
}

- (id)privatizedConversationId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:id];
  v4 = [v3 objectForKeyedSubscript:@"privatizedConversationIdentifier"];

  return v4;
}

- (id)nonNilFeaturesForConversationId:(id)id
{
  v20 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  defaultValues = [(_PSInteractionsStatisticsConfig *)self->_config defaultValues];
  v7 = [defaultValues countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(defaultValues);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:v11 forConversationId:idCopy];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [defaultValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (void)initFeature:(id)feature withValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  valueCopy = value;
  if (valueCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    conversationIds = [(_PSInteractionsStatistics *)self conversationIds];
    v9 = [conversationIds countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(conversationIds);
          }

          [(_PSInteractionsStatistics *)self setValue:valueCopy forFeature:featureCopy andConversationId:*(*(&v13 + 1) + 8 * v12++)];
        }

        while (v10 != v12);
        v10 = [conversationIds countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)setValue:(id)value forFeature:(id)feature andConversationId:(id)id
{
  if (value)
  {
    idCopy = id;
    featureCopy = feature;
    valueCopy = value;
    [(_PSInteractionsStatistics *)self addConversationId:idCopy];
    v11 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:idCopy];

    [v11 setObject:valueCopy forKeyedSubscript:featureCopy];
  }
}

- (void)removeFeature:(id)feature andConversation:(id)conversation
{
  featureCopy = feature;
  conversationCopy = conversation;
  v7 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:conversationCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:conversationCopy];
    [v8 removeObjectForKey:featureCopy];
  }
}

- (id)valueForFeature:(id)feature forConversationId:(id)id
{
  features = self->_features;
  featureCopy = feature;
  v7 = [(NSMutableDictionary *)features objectForKeyedSubscript:id];
  v8 = [v7 objectForKeyedSubscript:featureCopy];

  return v8;
}

- (id)valueOrDefaultValueForFeature:(id)feature forConversationId:(id)id
{
  featureCopy = feature;
  v7 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:id];
  v8 = [v7 objectForKeyedSubscript:featureCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    defaultValues = [(_PSInteractionsStatisticsConfig *)self->_config defaultValues];
    v10 = [defaultValues objectForKeyedSubscript:featureCopy];
  }

  return v10;
}

- (BOOL)isUsingDefaultValue:(id)value forConversationId:(id)id
{
  features = self->_features;
  valueCopy = value;
  v7 = [(NSMutableDictionary *)features objectForKeyedSubscript:id];
  v8 = [v7 objectForKeyedSubscript:valueCopy];

  return v8 == 0;
}

- (void)incrementValueForFeature:(id)feature andConversationId:(id)id
{
  idCopy = id;
  featureCopy = feature;
  [(_PSInteractionsStatistics *)self addConversationId:idCopy];
  v8 = MEMORY[0x1E696AD98];
  v13 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:idCopy];
  v9 = [v13 objectForKeyedSubscript:featureCopy];
  [v9 doubleValue];
  v11 = [v8 numberWithDouble:v10 + 1.0];
  v12 = [(NSMutableDictionary *)self->_features objectForKeyedSubscript:idCopy];

  [v12 setObject:v11 forKeyedSubscript:featureCopy];
}

- (void)setValue:(id)value forProperty:(id)property andConversationId:(id)id
{
  if (value)
  {
    idCopy = id;
    propertyCopy = property;
    valueCopy = value;
    [(_PSInteractionsStatistics *)self addConversationId:idCopy];
    v11 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:idCopy];

    [v11 setObject:valueCopy forKeyedSubscript:propertyCopy];
  }
}

- (id)valueForProperty:(id)property forConversationId:(id)id
{
  properties = self->_properties;
  propertyCopy = property;
  v7 = [(NSMutableDictionary *)properties objectForKeyedSubscript:id];
  v8 = [v7 objectForKeyedSubscript:propertyCopy];

  return v8;
}

- (void)savePastSharedPhotoDetectedPersonIds:(id)ids forConversationId:(id)id forSyntheticInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  idsCopy = ids;
  idCopy = id;
  [(_PSInteractionsStatistics *)self addConversationId:idCopy];
  if ([idsCopy count])
  {
    v9 = 40;
    if (interactionCopy)
    {
      v9 = 48;
    }

    v10 = [*(&self->super.isa + v9) objectForKeyedSubscript:idCopy];
    v11 = [idsCopy copy];
    [v10 addObject:v11];
  }
}

- (void)computeStatisticsWithInteractionStore:(id)store
{
  v46 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  [(_PSInteractionsStatisticsConfig *)self->_config maxComputationTime];
  v8 = [v6 initWithFormat:@"%.2f", v7];
  [v5 setObject:v8 forKeyedSubscript:@"maxComputationTime"];

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[_PSInteractionsStatisticsConfig fetchLimit](self->_config, "fetchLimit")];
  [v5 setObject:v9 forKeyedSubscript:@"fetchLimit"];

  v10 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEFAULT, "Processing sharing interactions", buf, 2u);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke;
  v41[3] = &unk_1E7C24218;
  v11 = v5;
  v42 = v11;
  v12 = MEMORY[0x1B8C8C060](v41);
  sharingInteractionPredicate = [(_PSInteractionsStatisticsConfig *)self->_config sharingInteractionPredicate];
  fetchLimit = [(_PSInteractionsStatisticsConfig *)self->_config fetchLimit];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_2;
  v40[3] = &unk_1E7C24240;
  v40[4] = self;
  v32 = v12;
  [storeCopy iterInteractionRecordsWithPredicate:sharingInteractionPredicate fetchLimit:fetchLimit sortAscending:0 updateTelemetry:v12 withBlock:v40];

  v15 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_DEFAULT, "Processing communication interactions", buf, 2u);
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_81;
  v38[3] = &unk_1E7C24218;
  v30 = v11;
  v39 = v30;
  v16 = MEMORY[0x1B8C8C060](v38);
  communicationInteractionPredicate = [(_PSInteractionsStatisticsConfig *)self->_config communicationInteractionPredicate];
  fetchLimit2 = [(_PSInteractionsStatisticsConfig *)self->_config fetchLimit];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __67___PSInteractionsStatistics_computeStatisticsWithInteractionStore___block_invoke_2_85;
  v37[3] = &unk_1E7C24240;
  v37[4] = self;
  v31 = v16;
  [storeCopy iterInteractionRecordsWithPredicate:communicationInteractionPredicate fetchLimit:fetchLimit2 sortAscending:0 updateTelemetry:v16 withBlock:v37];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  staticFeatures = [(_PSInteractionsStatisticsConfig *)self->_config staticFeatures];
  v20 = [staticFeatures countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(staticFeatures);
        }

        v24 = *(*(&v33 + 1) + 8 * i);
        v25 = PSStaticFeatureFromString(v24);
        if (v25)
        {
          [(_PSInteractionsStatistics *)self dispatchComputationForBatchFeature:v25];
        }

        else
        {
          v26 = +[_PSLogging rewriteChannel];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v44 = v24;
            _os_log_error_impl(&dword_1B5ED1000, v26, OS_LOG_TYPE_ERROR, "Attempted to compute invalid batch statName %@", buf, 0xCu);
          }
        }
      }

      v21 = [staticFeatures countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v21);
  }

  v27 = +[_PSLogging rewriteChannel];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [_PSInteractionsStatistics computeStatisticsWithInteractionStore:v27];
  }

  queryStats = self->_queryStats;
  self->_queryStats = v30;
  v29 = v30;
}

- (void)processInteractionRecord:(id)record
{
  v27 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  targetBundleId = [recordCopy targetBundleId];
  v6 = [targetBundleId isEqual:@"com.apple.telephonyutilities.callservicesd"];

  if (v6)
  {
    v7 = MEMORY[0x1E69978D0];
    recipients = [recordCopy recipients];
    allObjects = [recipients allObjects];
    v10 = [v7 generateConversationIdFromInteractionRecipientRecords:allObjects];

    if (v10)
    {
      [(NSMutableSet *)self->_hasSharePlayedWith addObject:v10];
    }
  }

  conversationId = [recordCopy conversationId];
  if (conversationId)
  {
    [(_PSInteractionsStatistics *)self addConversationId:conversationId];
    [(_PSInteractionsStatistics *)self _updatePropertiesFromRecord:recordCopy forConversationId:conversationId];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    staticFeatures = [(_PSInteractionsStatisticsConfig *)self->_config staticFeatures];
    v13 = [staticFeatures countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(staticFeatures);
          }

          v17 = *(*(&v20 + 1) + 8 * i);
          v18 = PSStaticFeatureFromString(v17);
          if (v18)
          {
            [(_PSInteractionsStatistics *)self dispatchComputationForIncrementalFeature:v18 conversationId:conversationId interactionRecord:recordCopy];
          }

          else
          {
            v19 = +[_PSLogging rewriteChannel];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v17;
              _os_log_error_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_ERROR, "Attempted to compute invalid incremental statName %@", buf, 0xCu);
            }
          }
        }

        v14 = [staticFeatures countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v14);
    }
  }

  else
  {
    staticFeatures = +[_PSLogging rewriteChannel];
    if (os_log_type_enabled(staticFeatures, OS_LOG_TYPE_DEBUG))
    {
      [(_PSInteractionsStatistics *)recordCopy processInteractionRecord:staticFeatures];
    }
  }
}

- (void)_updatePropertiesFromRecord:(id)record forConversationId:(id)id
{
  recordCopy = record;
  idCopy = id;
  v7 = [(NSMutableDictionary *)self->_mostRecentInteractionTimestampByConversationId objectForKeyedSubscript:idCopy];
  [v7 doubleValue];
  v9 = v8;
  [recordCopy startDate];
  if (v9 <= v10)
  {
    v11 = [(_PSInteractionsStatisticsConfig *)self->_config appBundleIdForRecord:recordCopy];
    if (v11)
    {
      [(_PSInteractionsStatistics *)self setValue:v11 forProperty:@"ConversationBundleId" andConversationId:idCopy];
    }

    contentURL = [recordCopy contentURL];

    if (contentURL)
    {
      contentURL2 = [recordCopy contentURL];
      [(_PSInteractionsStatistics *)self setValue:contentURL2 forProperty:@"ConversationINImageURL" andConversationId:idCopy];
    }

    groupName = [recordCopy groupName];

    if (groupName)
    {
      groupName2 = [recordCopy groupName];
      [(_PSInteractionsStatistics *)self setValue:groupName2 forProperty:@"ConversationGroupName" andConversationId:idCopy];
    }

    if ([recordCopy direction] == 1)
    {
      v16 = MEMORY[0x1E69978D0];
      recipients = [recordCopy recipients];
      allObjects = [recipients allObjects];
      v19 = [v16 generateConversationIdFromInteractionRecipientRecords:allObjects];

      [(_PSInteractionsStatistics *)self setValue:v19 forProperty:@"RecipientListConversationId" andConversationId:idCopy];
    }

    v20 = MEMORY[0x1E696AD98];
    [recordCopy startDate];
    v21 = [v20 numberWithDouble:?];
    [(NSMutableDictionary *)self->_mostRecentInteractionTimestampByConversationId setObject:v21 forKeyedSubscript:idCopy];
  }
}

- (void)computeContentBasedFeaturesForPersonIdsDetectedInPhoto:(id)photo sceneCategoriesDetectedInPhoto:(id)inPhoto
{
  v23 = *MEMORY[0x1E69E9840];
  photoCopy = photo;
  inPhotoCopy = inPhoto;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  staticFeatures = [(_PSInteractionsStatisticsConfig *)self->_config staticFeatures];
  v9 = [staticFeatures countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(staticFeatures);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = PSStaticFeatureFromString(v13);
        if (v14)
        {
          [(_PSInteractionsStatistics *)self dispatchComputationForContentFeature:v14 personIdsDetectedInPhoto:photoCopy sceneCategoriesDetectedInPhoto:inPhotoCopy];
        }

        else
        {
          v15 = +[_PSLogging rewriteChannel];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v21 = v13;
            _os_log_error_impl(&dword_1B5ED1000, v15, OS_LOG_TYPE_ERROR, "Attempted to compute invalid incremental statName %@", buf, 0xCu);
          }
        }
      }

      v10 = [staticFeatures countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)computeDynamicFeatures
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dynamicFeatureRecipe = [(_PSInteractionsStatisticsConfig *)self->_config dynamicFeatureRecipe];
  v4 = [dynamicFeatureRecipe countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(dynamicFeatureRecipe);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v8 subarrayWithRange:{1, objc_msgSend(v8, "count") - 1}];
        [(_PSInteractionsStatistics *)self computeDynamicFeatureWithOperatorName:v9 forArguments:v10];
      }

      v5 = [dynamicFeatureRecipe countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)privacyMitigatedFeatureValueFromName:(id)name forConversationId:(id)id
{
  nameCopy = name;
  idCopy = id;
  v8 = objc_opt_new();
  v9 = [(_PSInteractionsStatistics *)self valueOrDefaultValueForFeature:nameCopy forConversationId:idCopy];
  [v9 doubleValue];
  v11 = v10;
  v12 = nameCopy;
  if (([v12 isEqualToString:@"timeSinceLastIncomingInteraction"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timeSinceLastOutgoingInteraction") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timeSinceLastPhoneCallWithConversation") & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"timeSinceLastPhotoShareWithConversation") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"timeSinceLastShareWithConversation"))
  {
    v11 = round(v11);
  }

  [v8 setValue:v11];
  [v8 setDefaultValue:{-[_PSInteractionsStatistics isUsingDefaultValue:forConversationId:](self, "isUsingDefaultValue:forConversationId:", v12, idCopy)}];

  return v8;
}

- (void)dispatchComputationForContentFeature:(void *)feature personIdsDetectedInPhoto:(void *)photo sceneCategoriesDetectedInPhoto:
{
  featureCopy = feature;
  photoCopy = photo;
  if (self)
  {
    switch(a2)
    {
      case 28:
        [self computeMaxIoUOfSharesOfPeopleInPhotoForPeopleDetectedInPhoto:featureCopy];
        break;
      case 29:
        [self computeNumberOfEngagedSuggestionsOfDetectedPeopleForPeopleDetectedInPhoto:featureCopy];
        break;
      case 30:
        [self computeNumberOfSharesOfDetectedPeopleForPeopleDetectedInPhoto:featureCopy];
        break;
      case 31:
        [self computeNumberOfSharesOfDetectedScenesInPhotoForSceneCategoriesDetectedInPhoto:photoCopy];
        break;
      default:
        break;
    }
  }
}

- (void)dispatchComputationForBatchFeature:(void *)result
{
  if (result)
  {
    switch(a2)
    {
      case 0x16uLL:
        result = [result computeNumberOfSharesToTargetApp];
        break;
      case 0x17uLL:
        result = [result computeNumberOfEngagedSuggestionsToTargetApp];
        break;
      case 0x18uLL:
        result = [result computeNumberOfEngagedSuggestionsOfPeopleInPhoto];
        break;
      case 0x19uLL:
        result = [result computeNumberOfSharesOfPeopleInPhoto];
        break;
      case 0x1AuLL:
        result = [result computeNumberOfSharesOfScenesInPhoto];
        break;
      case 0x1BuLL:
        result = [result computeNumberOfFacesSharedWithConversation];
        break;
      default:
        return result;
    }
  }

  return result;
}

- (void)dispatchComputationForIncrementalFeature:(void *)feature conversationId:(void *)id interactionRecord:
{
  featureCopy = feature;
  idCopy = id;
  if (self)
  {
    switch(a2)
    {
      case 1:
        [OUTLINED_FUNCTION_0_1() computeNumberOfSharesWithConversationId:? interactionRecord:?];
        break;
      case 2:
        [OUTLINED_FUNCTION_0_1() computeNumberOfSharesFromCurrentAppWithConversationForConversationId:? interactionRecord:?];
        break;
      case 3:
        [OUTLINED_FUNCTION_0_1() computeNumberOfSharesOfTopDomainURLWithConversationForConversationId:? interactionRecord:?];
        break;
      case 4:
        [OUTLINED_FUNCTION_0_1() computeNumberOfOutgoingInteractionsWithConversationId:? interactionRecord:?];
        break;
      case 5:
        [OUTLINED_FUNCTION_0_1() computeNumberOfRecentOutgoingInteractionsWithConversationForConversationId:? interactionRecord:?];
        break;
      case 6:
        [OUTLINED_FUNCTION_0_1() computeNumberOfIncomingInteractionsWithConversationId:? interactionRecord:?];
        break;
      case 7:
        [OUTLINED_FUNCTION_0_1() computeNumberOfInteractionsDuringTimePeriodWithConversationForConversationId:? interactionRecord:?];
        break;
      case 8:
        [OUTLINED_FUNCTION_0_1() computeNumberOfEngagedSuggestionsWithConversationId:? interactionRecord:?];
        break;
      case 9:
        [OUTLINED_FUNCTION_0_1() computeNumberOfEngagedSuggestionsFromCurrentAppWithConversationForConversationId:? interactionRecord:?];
        break;
      case 10:
        [OUTLINED_FUNCTION_0_1() computeNumberOfEngagedSuggestionsOfTopDomainURLWithConversationForConversationId:? interactionRecord:?];
        break;
      case 11:
        [OUTLINED_FUNCTION_0_1() computeAppsSharedFromForConversationId:? interactionRecord:?];
        break;
      case 12:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastIncomingInteractionForConversationId:? interactionRecord:?];
        break;
      case 13:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastOutgoingInteractionForConversationId:? interactionRecord:?];
        break;
      case 14:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastUIEngagementForConversationId:? interactionRecord:?];
        break;
      case 15:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastPhoneCallWithConversationId:? interactionRecord:?];
        break;
      case 16:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastPhotoShareWithConversationId:? interactionRecord:?];
        break;
      case 17:
        [OUTLINED_FUNCTION_0_1() computeTimeSinceLastShareWithConversation:? interactionRecord:?];
        break;
      case 18:
        [OUTLINED_FUNCTION_0_1() computeHasEverSharePlayedWithConversationId:? interactionRecord:?];
        break;
      case 19:
        [OUTLINED_FUNCTION_0_1() computeIsFirstPartyAppForConversationId:? interactionRecord:?];
        break;
      case 20:
        [OUTLINED_FUNCTION_0_1() computePhotoFeaturesForConversationId:? interactionRecord:?];
        break;
      case 21:
        [OUTLINED_FUNCTION_0_1() computeScenesBasedFeaturesForConversationId:? interactionRecord:?];
        break;
      default:
        break;
    }
  }
}

- (void)computeDynamicFeatureWithOperatorName:(void *)name forArguments:
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  nameCopy = name;
  if (self)
  {
    switch(PSDynamicFeatureOperatorFromString(v5))
    {
      case 1uLL:
        [OUTLINED_FUNCTION_1_0() sumWithKeyForArguments:?];
        break;
      case 2uLL:
        [OUTLINED_FUNCTION_1_0() sumWithAddendForArguments:?];
        break;
      case 3uLL:
        [OUTLINED_FUNCTION_1_0() multiplyWithKeyForArguments:?];
        break;
      case 4uLL:
        [OUTLINED_FUNCTION_1_0() mutliplyWithScalarForArguments:?];
        break;
      case 5uLL:
        [OUTLINED_FUNCTION_1_0() divideWithDivisorForArguments:?];
        break;
      case 6uLL:
        [OUTLINED_FUNCTION_1_0() exponentialWithMultiplierForArguments:?];
        break;
      case 7uLL:
        [OUTLINED_FUNCTION_1_0() reciprocalWithOffsetForArguments:?];
        break;
      case 8uLL:
        [OUTLINED_FUNCTION_1_0() powerWithExponentForArguments:?];
        break;
      case 9uLL:
        [OUTLINED_FUNCTION_1_0() laplaceProbabilityWithAlphaForArguments:?];
        break;
      case 0xAuLL:
        [OUTLINED_FUNCTION_1_0() logWithBaseForArguments:?];
        break;
      case 0xBuLL:
        [OUTLINED_FUNCTION_1_0() renameFeatureForArguments:?];
        break;
      case 0xCuLL:
        [OUTLINED_FUNCTION_1_0() copyFeatureForArguments:?];
        break;
      case 0xDuLL:
        [OUTLINED_FUNCTION_1_0() imputeFeatureForArguments:?];
        break;
      case 0xEuLL:
        [OUTLINED_FUNCTION_1_0() aggregateSumForArguments:?];
        break;
      default:
        v7 = +[_PSLogging rewriteChannel];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = 138412290;
          v9 = v5;
          _os_log_error_impl(&dword_1B5ED1000, v7, OS_LOG_TYPE_ERROR, "Attempted to compute unknown operator: %@", &v8, 0xCu);
        }

        break;
    }
  }
}

- (void)processInteractionRecord:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "Skipping interaction with nil conversationId: %{private}@", &v2, 0xCu);
}

@end