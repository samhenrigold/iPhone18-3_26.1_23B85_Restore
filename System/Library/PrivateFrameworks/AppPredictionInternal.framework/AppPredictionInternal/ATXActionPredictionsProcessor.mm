@interface ATXActionPredictionsProcessor
+ (BOOL)actionPredictionsContainsAlarmAction:(id)action;
+ (BOOL)isBlockedEmailAddressContainedInAddresses:(id)addresses;
+ (BOOL)isBlockedPhoneNumberContainedInNumbers:(id)numbers;
+ (BOOL)scoredActionsAreDuplicatesWithScoredAction1:(id)action1 scoredAction2:(id)action2;
+ (BOOL)validTimeToSuggestAlarmForAlarmComponents:(id)components currentDate:(id)date;
+ (id)_contactIdentifiersReferencedByAction:(id)action;
+ (id)hourAndMinuteComponentsFromDateComponents:(id)components;
+ (id)indicesOfNonDuplicateScoredActions:(id)actions;
+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state;
+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state enabledAlarms:(id)alarms disabledAlarms:(id)disabledAlarms currentDate:(id)date;
+ (id)removeDuplicateActionPredictions:(id)predictions;
+ (id)removeDuplicateTVActionPredictions:(id)predictions;
+ (id)removeMissingOrBlockedRecipientPredictions:(id)predictions;
+ (id)userAlarms;
+ (void)addEligibleCreateAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date enabledAlarms:(id)alarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations;
+ (void)addEligibleToggleAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date disabledAlarms:(id)alarms enabledAlarms:(id)enabledAlarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations;
@end

@implementation ATXActionPredictionsProcessor

+ (id)removeMissingOrBlockedRecipientPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__80;
  v15[4] = __Block_byref_object_dispose__80;
  v16 = 0;
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke;
  v11[3] = &unk_27859F818;
  selfCopy = self;
  v6 = v5;
  v12 = v6;
  v13 = v15;
  [predictionsCopy enumerateObjectsUsingBlock:v11];
  v7 = [v6 count];
  if (v7 == [predictionsCopy count])
  {
    v8 = predictionsCopy;
  }

  else
  {
    v8 = [predictionsCopy objectsAtIndexes:v6];
  }

  v9 = v8;

  _Block_object_dispose(v15, 8);

  return v9;
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v76[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 scoredAction];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 48);
    v10 = [v7 predictedItem];
    v11 = [v9 _contactIdentifiersReferencedByAction:v10];

    if ([v11 count])
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v12 = objc_opt_new();
        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = v12;
      }

      v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
      v16 = [v15 allObjects];

      v17 = [MEMORY[0x277CBDA58] predicateForContactsWithIdentifiers:v16];
      v18 = *(*(*(a1 + 40) + 8) + 40);
      v19 = *MEMORY[0x277CBCFC0];
      v76[0] = *MEMORY[0x277CBD098];
      v76[1] = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
      v72 = 0;
      v21 = [v18 unifiedContactsMatchingPredicate:v17 keysToFetch:v20 error:&v72];
      v57 = v72;

      if (v21)
      {
        v23 = [v21 count];
        v24 = [v16 count];
        if (v23 >= v24)
        {
          v51 = v17;
          v52 = a1;
          v53 = v16;
          v54 = v8;
          v49 = a3;
          v55 = v6;
          v56 = v5;
          v28 = v21;
          v29 = objc_opt_new();
          v30 = objc_opt_new();
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v50 = v28;
          obj = v28;
          v31 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
          if (v31)
          {
            v32 = v31;
            v59 = *v69;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v69 != v59)
                {
                  objc_enumerationMutation(obj);
                }

                v34 = *(*(&v68 + 1) + 8 * i);
                v64 = 0u;
                v65 = 0u;
                v66 = 0u;
                v67 = 0u;
                v35 = [v34 phoneNumbers];
                v36 = [v35 countByEnumeratingWithState:&v64 objects:v74 count:16];
                if (v36)
                {
                  v37 = v36;
                  v38 = *v65;
                  do
                  {
                    for (j = 0; j != v37; ++j)
                    {
                      if (*v65 != v38)
                      {
                        objc_enumerationMutation(v35);
                      }

                      v40 = [*(*(&v64 + 1) + 8 * j) value];
                      [v29 addObject:v40];
                    }

                    v37 = [v35 countByEnumeratingWithState:&v64 objects:v74 count:16];
                  }

                  while (v37);
                }

                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                v41 = [v34 emailAddresses];
                v42 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
                if (v42)
                {
                  v43 = v42;
                  v44 = *v61;
                  do
                  {
                    for (k = 0; k != v43; ++k)
                    {
                      if (*v61 != v44)
                      {
                        objc_enumerationMutation(v41);
                      }

                      v46 = [*(*(&v60 + 1) + 8 * k) value];
                      [v30 addObject:v46];
                    }

                    v43 = [v41 countByEnumeratingWithState:&v60 objects:v73 count:16];
                  }

                  while (v43);
                }
              }

              v32 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
            }

            while (v32);
          }

          v47 = [*(v52 + 48) isBlockedPhoneNumberContainedInNumbers:v29];
          v26 = v57;
          if ((v47 & 1) != 0 || (v47 = [*(v52 + 48) isBlockedEmailAddressContainedInAddresses:v30], v47))
          {
            v48 = __atxlog_handle_action_prediction(v47);
            v6 = v55;
            v5 = v56;
            v8 = v54;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_1(v56);
            }
          }

          else
          {
            [*(v52 + 32) addIndex:v49];
            v6 = v55;
            v5 = v56;
            v8 = v54;
          }

          v16 = v53;
          v21 = v50;
          v17 = v51;
        }

        else
        {
          v25 = __atxlog_handle_action_prediction(v24);
          v26 = v57;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_2(v5);
          }
        }
      }

      else
      {
        v27 = __atxlog_handle_action_prediction(v22);
        v26 = v57;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_3();
        }

        [*(a1 + 32) addIndex:a3];
      }
    }

    else
    {
      [*(a1 + 32) addIndex:a3];
      v16 = v11;
    }
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)_contactIdentifiersReferencedByAction:(id)action
{
  v14[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  intent = [actionCopy intent];

  if (!intent)
  {
    v7 = 0;
    goto LABEL_12;
  }

  intent2 = [actionCopy intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recipients = [intent2 recipients];
LABEL_9:
    v8 = recipients;
    v7 = contactIdentifiersFromINPersons(recipients);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    recipients = [intent2 contacts];
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v8 = intent2;
  payee = [v8 payee];
  contactIdentifier = [payee contactIdentifier];
  if (contactIdentifier)
  {
    payee2 = [v8 payee];
    contactIdentifier2 = [payee2 contactIdentifier];
    v14[0] = contactIdentifier2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  else
  {
    v7 = 0;
  }

LABEL_10:
LABEL_11:

LABEL_12:

  return v7;
}

+ (BOOL)isBlockedEmailAddressContainedInAddresses:(id)addresses
{
  v29 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  addressesCopy = addresses;
  v4 = [addressesCopy countByEnumeratingWithState:&v15 objects:v28 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(addressesCopy);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2020000000;
        v8 = getCMFItemCreateWithEmailAddressSymbolLoc_ptr;
        v27 = getCMFItemCreateWithEmailAddressSymbolLoc_ptr;
        if (!getCMFItemCreateWithEmailAddressSymbolLoc_ptr)
        {
          v19 = MEMORY[0x277D85DD0];
          v20 = 3221225472;
          v21 = __getCMFItemCreateWithEmailAddressSymbolLoc_block_invoke;
          v22 = &unk_2785967D8;
          v23 = &v24;
          v9 = CommunicationsFilterLibrary();
          v10 = dlsym(v9, "CMFItemCreateWithEmailAddress");
          *(v23[1] + 24) = v10;
          getCMFItemCreateWithEmailAddressSymbolLoc_ptr = *(v23[1] + 24);
          v8 = v25[3];
        }

        _Block_object_dispose(&v24, 8);
        if (!v8)
        {
          +[ATXActionPredictionsProcessor isBlockedEmailAddressContainedInAddresses:];
        }

        v11 = v8(v7);
        v12 = v11;
        if (v11)
        {
          v13 = atx_CMFBlockListIsItemBlocked(v11) == 0;
          CFRelease(v12);
          if (!v13)
          {
            LOBYTE(v4) = 1;
            goto LABEL_15;
          }
        }
      }

      v4 = [addressesCopy countByEnumeratingWithState:&v15 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v4;
}

+ (BOOL)isBlockedPhoneNumberContainedInNumbers:(id)numbers
{
  v34 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  numbersCopy = numbers;
  v4 = [numbersCopy countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(numbersCopy);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = MEMORY[0x277CFBE78];
        stringValue = [v7 stringValue];
        v10 = [v8 countryCodeForNumber:stringValue];

        stringValue2 = [v7 stringValue];
        v12 = CFPhoneNumberCreate();

        if (!v12)
        {
          goto LABEL_14;
        }

        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v13 = getCMFItemCreateWithPhoneNumberSymbolLoc_ptr;
        v32 = getCMFItemCreateWithPhoneNumberSymbolLoc_ptr;
        if (!getCMFItemCreateWithPhoneNumberSymbolLoc_ptr)
        {
          v24 = MEMORY[0x277D85DD0];
          v25 = 3221225472;
          v26 = __getCMFItemCreateWithPhoneNumberSymbolLoc_block_invoke;
          v27 = &unk_2785967D8;
          v28 = &v29;
          v14 = CommunicationsFilterLibrary();
          v15 = dlsym(v14, "CMFItemCreateWithPhoneNumber");
          *(v28[1] + 24) = v15;
          getCMFItemCreateWithPhoneNumberSymbolLoc_ptr = *(v28[1] + 24);
          v13 = v30[3];
        }

        _Block_object_dispose(&v29, 8);
        if (!v13)
        {
          +[ATXActionPredictionsProcessor isBlockedPhoneNumberContainedInNumbers:];
        }

        v16 = v13(v12);
        v17 = v16;
        if (!v16)
        {
          CFRelease(v12);
LABEL_14:

          continue;
        }

        v18 = atx_CMFBlockListIsItemBlocked(v16) == 0;
        CFRelease(v17);
        CFRelease(v12);

        if (!v18)
        {
          LOBYTE(v4) = 1;
          goto LABEL_17;
        }
      }

      v4 = [numbersCopy countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v4);
  }

LABEL_17:

  return v4;
}

+ (id)removeDuplicateTVActionPredictions:(id)predictions
{
  v32 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  context = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.tv" actionType:@"INPlayMediaIntent"];
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        actionKey = [v11 actionKey];
        v13 = [actionKey isEqualToString:v4];

        if (v13)
        {
          scoredAction = [v11 scoredAction];
          predictedItem = [scoredAction predictedItem];
          intent = [predictedItem intent];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            proxiedBundleIdentifier = [intent proxiedBundleIdentifier];
            if (proxiedBundleIdentifier)
            {
              [v5 addObject:proxiedBundleIdentifier];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = v6;
  v19 = v18;
  if ([v5 count])
  {
    v20 = MEMORY[0x277CCAC30];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __68__ATXActionPredictionsProcessor_removeDuplicateTVActionPredictions___block_invoke;
    v24[3] = &unk_27859F840;
    v25 = v5;
    v26 = v4;
    v21 = [v20 predicateWithBlock:v24];
    v19 = [v18 filteredArrayUsingPredicate:v21];
  }

  objc_autoreleasePoolPop(context);

  return v19;
}

uint64_t __68__ATXActionPredictionsProcessor_removeDuplicateTVActionPredictions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 scoredAction];
  v6 = [v5 predictedItem];
  v7 = [v6 bundleId];
  if ([v4 containsObject:v7])
  {
    v8 = [v3 actionKey];
    v9 = [v8 isEqualToString:*(a1 + 40)];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)removeDuplicateActionPredictions:(id)predictions
{
  predictionsCopy = predictions;
  v5 = [predictionsCopy _pas_mappedArrayWithTransform:&__block_literal_global_181];
  v6 = [self indicesOfNonDuplicateScoredActions:v5];
  v7 = [predictionsCopy objectsAtIndexes:v6];

  return v7;
}

+ (id)indicesOfNonDuplicateScoredActions:(id)actions
{
  actionsCopy = actions;
  v5 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(actionsCopy, "count")}];
  if (![actionsCopy count])
  {
    goto LABEL_18;
  }

  v6 = 0;
  do
  {
    v7 = [actionsCopy objectAtIndexedSubscript:v6];
    if (([v5 containsIndex:v6] & 1) == 0)
    {
      v9 = v6 + 1;
      goto LABEL_17;
    }

    v8 = objc_opt_new();
    v9 = v6 + 1;
    if (v6 + 1 >= [actionsCopy count])
    {
      goto LABEL_14;
    }

    v10 = v6 + 1;
    while (1)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [actionsCopy objectAtIndexedSubscript:v10];
      if (![v5 containsIndex:v10] || !objc_msgSend(self, "scoredActionsAreDuplicatesWithScoredAction1:scoredAction2:", v7, v12))
      {
        goto LABEL_10;
      }

      [v7 score];
      v14 = v13;
      [v12 score];
      if (v14 < v15)
      {
        break;
      }

      [v8 addIndex:v10];
LABEL_10:

      objc_autoreleasePoolPop(v11);
      if (++v10 >= [actionsCopy count])
      {
        goto LABEL_14;
      }
    }

    [v5 removeIndex:v6];

    objc_autoreleasePoolPop(v11);
LABEL_14:
    if ([v5 containsIndex:v6])
    {
      [v5 removeIndexes:v8];
    }

LABEL_17:
    v6 = v9;
  }

  while (v9 < [actionsCopy count]);
LABEL_18:

  return v5;
}

+ (BOOL)scoredActionsAreDuplicatesWithScoredAction1:(id)action1 scoredAction2:(id)action2
{
  action1Copy = action1;
  action2Copy = action2;
  predictedItem = [action1Copy predictedItem];
  predictedItem2 = [action2Copy predictedItem];
  if ([_ATXActionUtils isTitleEquivalenceBetweenAction:predictedItem other:predictedItem2])
  {
    v9 = 1;
  }

  else
  {
    predictedItem3 = [action1Copy predictedItem];
    predictedItem4 = [action2Copy predictedItem];
    if ([_ATXActionUtils isContainmentBetweenAction:predictedItem3 other:predictedItem4])
    {
      v9 = 1;
    }

    else
    {
      predictedItem5 = [action1Copy predictedItem];
      predictedItem6 = [action2Copy predictedItem];
      v9 = [_ATXActionUtils isCallIntentEquivalenceBetweenAction:predictedItem5 other:predictedItem6];
    }
  }

  return v9;
}

+ (BOOL)actionPredictionsContainsAlarmAction:(id)action
{
  v24 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v4 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTToggleAlarmIntent"];
  v5 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTCreateAlarmIntent"];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = actionCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        scoredAction = [*(*(&v19 + 1) + 8 * i) scoredAction];
        predictedItem = [scoredAction predictedItem];
        actionKey = [predictedItem actionKey];

        v14 = [actionKey isEqualToString:v4];
        if ((v14 & 1) != 0 || (v14 = [actionKey isEqualToString:v5], v14))
        {
          v16 = __atxlog_handle_action_prediction(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *v18 = 0;
            _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "Found alarm action in alarm prediction candidates.", v18, 2u);
          }

          v15 = 1;
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v15 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_15:

  return v15;
}

+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([ATXActionPredictionsProcessor actionPredictionsContainsAlarmAction:stateCopy])
  {
    userAlarms = [self userAlarms];
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = userAlarms;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = objc_opt_new();
          [v14 setHour:{objc_msgSend(v13, "hour", v25)}];
          [v14 setMinute:{objc_msgSend(v13, "minute")}];
          if ([v13 isEnabled])
          {
            v15 = v6;
          }

          else
          {
            v15 = v7;
          }

          [v15 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v10);
    }

    v17 = __atxlog_handle_action_prediction(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 count];
      v19 = [v7 count];
      *buf = 134218240;
      v30 = v18;
      v31 = 2048;
      v32 = v19;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "Found %lu enabled alarms and %lu disabled alarms.", buf, 0x16u);
    }

    v21 = __atxlog_handle_action_prediction(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Enabled alarms: %@", buf, 0xCu);
    }

    v22 = objc_opt_new();
    v23 = [ATXActionPredictionsProcessor removeAlarmActionsInconsistentWithAlarmAppState:stateCopy enabledAlarms:v6 disabledAlarms:v7 currentDate:v22];
  }

  else
  {
    v23 = stateCopy;
  }

  return v23;
}

+ (id)userAlarms
{
  v2 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__80;
  v27 = __Block_byref_object_dispose__80;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__80;
  v21 = __Block_byref_object_dispose__80;
  v22 = 0;
  mEMORY[0x277CE89F0] = [MEMORY[0x277CE89F0] sharedAlarmManager];
  v4 = [mEMORY[0x277CE89F0] alarmsIncludingSleepAlarm:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__ATXActionPredictionsProcessor_userAlarms__block_invoke;
  v13[3] = &unk_27859E3B0;
  v15 = &v23;
  v16 = &v17;
  v5 = v2;
  v14 = v5;
  v6 = [v4 addCompletionBlock:v13];

  v7 = [MEMORY[0x277D425A0] waitForSemaphore:v5 timeoutSeconds:0 onAcquire:&__block_literal_global_51_0 onTimeout:5.0];
  if (v18[5])
  {
    v8 = __atxlog_handle_action_prediction(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[ATXActionPredictionsProcessor userAlarms];
    }
  }

  v9 = v24[5];
  if (!v9)
  {
    v10 = __atxlog_handle_action_prediction(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[ATXActionPredictionsProcessor userAlarms];
    }

    v9 = v24[5];
  }

  v11 = v9;

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v11;
}

void __43__ATXActionPredictionsProcessor_userAlarms__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __43__ATXActionPredictionsProcessor_userAlarms__block_invoke_2(uint64_t a1)
{
  v1 = __atxlog_handle_action_prediction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __43__ATXActionPredictionsProcessor_userAlarms__block_invoke_2_cold_1();
  }
}

+ (id)removeAlarmActionsInconsistentWithAlarmAppState:(id)state enabledAlarms:(id)alarms disabledAlarms:(id)disabledAlarms currentDate:(id)date
{
  stateCopy = state;
  alarmsCopy = alarms;
  disabledAlarmsCopy = disabledAlarms;
  dateCopy = date;
  v13 = objc_opt_new();
  v14 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTToggleAlarmIntent"];
  v15 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.mobiletimer" actionType:@"MTCreateAlarmIntent"];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __122__ATXActionPredictionsProcessor_removeAlarmActionsInconsistentWithAlarmAppState_enabledAlarms_disabledAlarms_currentDate___block_invoke;
  v29 = &unk_27859F888;
  v30 = v14;
  v16 = v13;
  v31 = v16;
  v32 = dateCopy;
  v33 = disabledAlarmsCopy;
  v34 = alarmsCopy;
  v35 = v15;
  v17 = v15;
  v18 = alarmsCopy;
  v19 = disabledAlarmsCopy;
  v20 = dateCopy;
  v21 = v14;
  [stateCopy enumerateObjectsUsingBlock:&v26];
  v22 = [v16 count];
  if (v22 == [stateCopy count])
  {
    v23 = stateCopy;
  }

  else
  {
    v23 = [stateCopy objectsAtIndexes:v16];
  }

  v24 = v23;

  return v24;
}

void __122__ATXActionPredictionsProcessor_removeAlarmActionsInconsistentWithAlarmAppState_enabledAlarms_disabledAlarms_currentDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v14 scoredAction];
  v7 = [v6 predictedItem];

  v8 = [v7 actionKey];
  v9 = [v7 intent];
  v10 = [v9 atx_nonNilParametersByName];

  v11 = MEMORY[0x277CBEB98];
  v12 = [v10 allKeys];
  v13 = [v11 setWithArray:v12];

  if ([v8 isEqualToString:*(a1 + 32)])
  {
    [ATXActionPredictionsProcessor addEligibleToggleAlarmIndexesToAcceptedIndexes:*(a1 + 40) currentDate:*(a1 + 48) disabledAlarms:*(a1 + 56) enabledAlarms:*(a1 + 64) idx:a3 params:v13 parameterCombinations:v10];
  }

  else if ([v8 isEqualToString:*(a1 + 72)])
  {
    [ATXActionPredictionsProcessor addEligibleCreateAlarmIndexesToAcceptedIndexes:*(a1 + 40) currentDate:*(a1 + 48) enabledAlarms:*(a1 + 64) idx:a3 params:v13 parameterCombinations:v10];
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }

  objc_autoreleasePoolPop(v5);
}

+ (void)addEligibleToggleAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date disabledAlarms:(id)alarms enabledAlarms:(id)enabledAlarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations
{
  indexesCopy = indexes;
  dateCopy = date;
  alarmsCopy = alarms;
  enabledAlarmsCopy = enabledAlarms;
  paramsCopy = params;
  combinationsCopy = combinations;
  if ([paramsCopy containsObject:@"state"])
  {
    if ([paramsCopy containsObject:@"alarm"])
    {
      v20 = [combinationsCopy objectForKeyedSubscript:@"alarm"];
      v21 = [v20 valueForKey:@"dateComponents"];

      if (v21)
      {
        v22 = [combinationsCopy objectForKeyedSubscript:@"state"];
        intValue = [v22 intValue];

        v24 = [combinationsCopy objectForKeyedSubscript:@"alarm"];
        v25 = [v24 valueForKey:@"dateComponents"];

        v26 = [ATXActionPredictionsProcessor hourAndMinuteComponentsFromDateComponents:v25];
        v27 = v26;
        if (intValue == 1 && (v26 = [enabledAlarmsCopy containsObject:v26], (v26 & 1) == 0) && (v26 = objc_msgSend(alarmsCopy, "containsObject:", v27), v26) && (v26 = +[ATXActionPredictionsProcessor validTimeToSuggestAlarmForAlarmComponents:currentDate:](ATXActionPredictionsProcessor, "validTimeToSuggestAlarmForAlarmComponents:currentDate:", v27, dateCopy), v26))
        {
          [indexesCopy addIndex:idx];
        }

        else
        {
          v28 = __atxlog_handle_action_prediction(v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *v29 = 0;
            _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "Suppressing MTToggleAlarmIntent because it is not toggling on an alarm that is disabled or the alarm time is over 12 hours away.", v29, 2u);
          }
        }
      }
    }
  }
}

+ (void)addEligibleCreateAlarmIndexesToAcceptedIndexes:(id)indexes currentDate:(id)date enabledAlarms:(id)alarms idx:(unint64_t)idx params:(id)params parameterCombinations:(id)combinations
{
  indexesCopy = indexes;
  dateCopy = date;
  alarmsCopy = alarms;
  combinationsCopy = combinations;
  if ([params containsObject:@"dateComponents"])
  {
    v17 = [combinationsCopy objectForKeyedSubscript:@"dateComponents"];
    v18 = [ATXActionPredictionsProcessor hourAndMinuteComponentsFromDateComponents:v17];
    v19 = [alarmsCopy containsObject:v18];
    if ((v19 & 1) != 0 || (v19 = [ATXActionPredictionsProcessor validTimeToSuggestAlarmForAlarmComponents:v18 currentDate:dateCopy], !v19))
    {
      v20 = __atxlog_handle_action_prediction(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "Suppressing MTCreateAlarmIntent because there already exists an enabled alarm for the same time or the alarm time is over 12 hours away.", v21, 2u);
      }
    }

    else
    {
      [indexesCopy addIndex:idx];
    }
  }
}

+ (id)hourAndMinuteComponentsFromDateComponents:(id)components
{
  componentsCopy = components;
  v4 = objc_opt_new();
  [v4 setHour:{objc_msgSend(componentsCopy, "hour")}];
  minute = [componentsCopy minute];

  [v4 setMinute:minute];

  return v4;
}

+ (BOOL)validTimeToSuggestAlarmForAlarmComponents:(id)components currentDate:(id)date
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  componentsCopy = components;
  currentCalendar = [v5 currentCalendar];
  v9 = [currentCalendar components:96 fromDate:dateCopy];

  v10 = [currentCalendar dateFromComponents:v9];
  v11 = [currentCalendar dateFromComponents:componentsCopy];

  [v11 timeIntervalSinceDate:v10];
  if (v12 <= 0.0)
  {
    v12 = v12 + 86400.0;
  }

  v13 = v12 <= 43200.0;

  return v13;
}

uint64_t __67__ATXActionPredictionsProcessor_removeActionsMatchingARegexFilter___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 scoredAction];
  v3 = [v2 predictedItem];

  v4 = [MEMORY[0x277CEB648] sharedInstance];
  v5 = [v4 shouldFilterOutAction:v3];

  return v5 ^ 1u;
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_1(void *a1)
{
  v1 = [a1 scoredAction];
  v2 = [v1 predictedItem];
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v3, v4, "Suppressing predicted action %@ due to blocked contact referenced by intent.", v5, v6, v7, v8, v9, DWORD2(v9));
}

void __76__ATXActionPredictionsProcessor_removeMissingOrBlockedRecipientPredictions___block_invoke_cold_2(void *a1)
{
  v1 = [a1 scoredAction];
  v2 = [v1 predictedItem];
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v3, v4, "Suppressing predicted action %@ due to missing contact referenced by intent.", v5, v6, v7, v8, v9, DWORD2(v9));
}

+ (void)isBlockedEmailAddressContainedInAddresses:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMFItemRef atx_CMFItemCreateWithEmailAddress(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionPredictionsProcessor.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)isBlockedPhoneNumberContainedInNumbers:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CMFItemRef atx_CMFItemCreateWithPhoneNumber(CFPhoneNumberRef)"];
  [v0 handleFailureInFunction:v1 file:@"ATXActionPredictionsProcessor.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

@end