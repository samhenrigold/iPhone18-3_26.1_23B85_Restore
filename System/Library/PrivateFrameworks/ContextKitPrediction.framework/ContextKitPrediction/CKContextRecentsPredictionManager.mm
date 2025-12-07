@interface CKContextRecentsPredictionManager
- (CKContextRecentsPredictionManager)init;
- (CKContextRecentsPredictionManagerDelegate)delegate;
- (id)_localizedStringForKey:(id)key;
- (id)_modeForModeIdentifier:(id)identifier withConfigurations:(id)configurations;
- (id)_oftenUsedStringForMode:(id)mode;
- (id)_recentlyUsedStringForMode:(id)mode;
- (id)_recentsEligibleForDonationMatchingMode:(id)mode fromRecents:(id)recents uuidsToCounts:(id)counts;
- (id)_retrieveModeConfigurations;
- (id)_userFacingReasonStringForRecentWithNumberOfInstances:(unint64_t)instances mode:(id)mode;
- (id)eligiblePredictionsMatchingMode:(id)mode forRecents:(id)recents uuidsToCounts:(id)counts;
- (int64_t)_suggestionConfidenceForRecent:(id)recent withCount:(unint64_t)count;
- (void)_clearSuggestions;
- (void)_createClientModelIfNecessary;
- (void)_createDoNotDisturbServiceIfNecessary;
- (void)_handleModeChangeToModeWithUUIDString:(id)string forCache:(id)cache;
- (void)_retrieveModeConfigurations;
- (void)_updateBlendingLayerWithSuggestions:(id)suggestions;
- (void)dealloc;
- (void)didInitiatePruningMaintenanceTaskForCache:(id)cache existingRecentsUUIDs:(id)ds;
- (void)modeDidChangeToModeWithUUIDString:(id)string forCache:(id)cache;
- (void)retrievePredictionsForMode:(id)mode withReply:(id)reply;
- (void)startContributingPredictions;
- (void)stopContributingPredictions;
@end

@implementation CKContextRecentsPredictionManager

- (CKContextRecentsPredictionManager)init
{
  v8.receiver = self;
  v8.super_class = CKContextRecentsPredictionManager;
  v2 = [(CKContextRecentsPredictionManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28578A970];
    v4 = kBundleIdentifiersToNotSuggest;
    kBundleIdentifiersToNotSuggest = v3;

    v5 = dispatch_queue_create("CKContextRecentsPredictionManager reporting queue", 0);
    suggestionReportingQueue = v2->_suggestionReportingQueue;
    v2->_suggestionReportingQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  [(CKContextRecentsPredictionManager *)self stopContributingPredictions];
  v3.receiver = self;
  v3.super_class = CKContextRecentsPredictionManager;
  [(CKContextRecentsPredictionManager *)&v3 dealloc];
}

- (void)startContributingPredictions
{
  recentsCache = self->_recentsCache;
  if (!recentsCache)
  {
    v4 = [[CKContextRecentsCache alloc] initWithCacheConfiguration:1];
    v5 = self->_recentsCache;
    self->_recentsCache = v4;

    recentsCache = self->_recentsCache;
  }

  [(CKContextRecentsCache *)recentsCache setDelegate:self];

  [(CKContextRecentsPredictionManager *)self _clearSuggestions];
}

- (void)stopContributingPredictions
{
  [(CKContextRecentsCache *)self->_recentsCache setDelegate:0];

  [(CKContextRecentsPredictionManager *)self _clearSuggestions];
}

- (void)_createClientModelIfNecessary
{
  if (!self->_clientModel)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getATXProactiveSuggestionClientModelClass_softClass;
    v11 = getATXProactiveSuggestionClientModelClass_softClass;
    if (!getATXProactiveSuggestionClientModelClass_softClass)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __getATXProactiveSuggestionClientModelClass_block_invoke;
      v7[3] = &unk_278E06DB8;
      v7[4] = &v8;
      __getATXProactiveSuggestionClientModelClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithClientModelId:@"ck_universal_recents" requestDelegate:0];
    clientModel = self->_clientModel;
    self->_clientModel = v5;
  }
}

- (void)didInitiatePruningMaintenanceTaskForCache:(id)cache existingRecentsUUIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 didInitiatePruningMaintenanceTaskForManager:self existingRecentsUUIDs:dsCopy];
  }
}

- (void)_clearSuggestions
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [CKContextRecentsPredictionManager _clearSuggestions];
  }

  [(CKContextRecentsPredictionManager *)self _createClientModelIfNecessary];
  [(ATXProactiveSuggestionClientModel *)self->_clientModel updateSuggestions:0];
}

- (void)modeDidChangeToModeWithUUIDString:(id)string forCache:(id)cache
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  cacheCopy = cache;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = stringCopy;
    _os_log_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Mode did change to mode with identifier: %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  suggestionsContributionBlock = selfCopy->_suggestionsContributionBlock;
  if (suggestionsContributionBlock)
  {
    dispatch_block_cancel(suggestionsContributionBlock);
    v10 = selfCopy->_suggestionsContributionBlock;
    selfCopy->_suggestionsContributionBlock = 0;

    suggestionDonationTransaction = selfCopy->_suggestionDonationTransaction;
    selfCopy->_suggestionDonationTransaction = 0;
  }

  objc_initWeak(buf, selfCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__CKContextRecentsPredictionManager_modeDidChangeToModeWithUUIDString_forCache___block_invoke;
  block[3] = &unk_278E06CD0;
  objc_copyWeak(&v21, buf);
  v12 = stringCopy;
  v19 = v12;
  v13 = cacheCopy;
  v20 = v13;
  v14 = dispatch_block_create(0, block);
  v15 = selfCopy->_suggestionsContributionBlock;
  selfCopy->_suggestionsContributionBlock = v14;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Scheduling predictions contribution", v17, 2u);
  }

  v16 = dispatch_time(0, 10000000000);
  dispatch_after(v16, selfCopy->_suggestionReportingQueue, selfCopy->_suggestionsContributionBlock);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  objc_sync_exit(selfCopy);
}

void __80__CKContextRecentsPredictionManager_modeDidChangeToModeWithUUIDString_forCache___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = os_transaction_create();
    v5 = v3[6];
    v3[6] = v4;

    [v3 _handleModeChangeToModeWithUUIDString:*(a1 + 32) forCache:*(a1 + 40)];
    v6 = v3[2];
    v3[2] = 0;

    objc_sync_exit(v3);
    WeakRetained = v7;
  }
}

- (void)_handleModeChangeToModeWithUUIDString:(id)string forCache:(id)cache
{
  v16 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  cacheCopy = cache;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = stringCopy;
    _os_log_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Handling mode change to mode: %@", buf, 0xCu);
  }

  [(CKContextRecentsPredictionManager *)self _clearSuggestions];
  if ([stringCopy length])
  {
    objc_initWeak(buf, self);
    recentsCache = self->_recentsCache;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __84__CKContextRecentsPredictionManager__handleModeChangeToModeWithUUIDString_forCache___block_invoke;
    v10[3] = &unk_278E06CF8;
    objc_copyWeak(&v13, buf);
    v11 = stringCopy;
    selfCopy = self;
    [(CKContextRecentsCache *)recentsCache retrieveRecentsForPredictionWithReply:v10];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    suggestionDonationTransaction = self->_suggestionDonationTransaction;
    self->_suggestionDonationTransaction = 0;
  }
}

void __84__CKContextRecentsPredictionManager__handleModeChangeToModeWithUUIDString_forCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v85 = *MEMORY[0x277D85DE8];
  v57 = a2;
  v65 = a3;
  v61 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v57 count] && objc_msgSend(v65, "count"))
    {
      v64 = WeakRetained;
      v56 = [WeakRetained _recentsEligibleForDonationMatchingMode:*(a1 + 32) fromRecents:v57 uuidsToCounts:v65];
      if ([v56 count])
      {
        [WeakRetained _createClientModelIfNecessary];
        v60 = [WeakRetained _retrieveModeConfigurations];
        v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v56;
        v63 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
        if (v63)
        {
          v62 = *v72;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v72 != v62)
              {
                objc_enumerationMutation(obj);
              }

              v7 = *(*(&v71 + 1) + 8 * i);
              context = objc_autoreleasePoolPush();
              v8 = objc_alloc(MEMORY[0x277CCAE58]);
              v9 = [v7 userActivityData];
              v70 = [v8 _initWithUserActivityData:v9];

              v80 = 0;
              v81 = &v80;
              v82 = 0x2050000000;
              v10 = getATXProactiveSuggestionClientModelSpecificationClass_softClass;
              v83 = getATXProactiveSuggestionClientModelSpecificationClass_softClass;
              if (!getATXProactiveSuggestionClientModelSpecificationClass_softClass)
              {
                *buf = MEMORY[0x277D85DD0];
                v76 = 3221225472;
                v77 = __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke;
                v78 = &unk_278E06DB8;
                v79 = &v80;
                __getATXProactiveSuggestionClientModelSpecificationClass_block_invoke(buf);
                v10 = v81[3];
              }

              v11 = v10;
              _Block_object_dispose(&v80, 8);
              v69 = [[v10 alloc] initWithClientModelId:@"ck_universal_recents" clientModelVersion:@"1.0"];
              v12 = [v7 title];
              if ([v12 length])
              {
                v13 = [v7 uuid];
                v14 = [v65 objectForKeyedSubscript:v13];
                v15 = [v14 unsignedIntValue];

                v16 = [v7 modeIdentifier];
                v67 = [v64 _modeForModeIdentifier:v16 withConfigurations:v60];

                v17 = [v64 _userFacingReasonStringForRecentWithNumberOfInstances:v15 mode:v67];
                v66 = [v7 associatedBundleId];
                v80 = 0;
                v81 = &v80;
                v82 = 0x2050000000;
                v18 = getATXActionClass_softClass;
                v83 = getATXActionClass_softClass;
                if (!getATXActionClass_softClass)
                {
                  *buf = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __getATXActionClass_block_invoke;
                  v78 = &unk_278E06DB8;
                  v79 = &v80;
                  __getATXActionClass_block_invoke(buf);
                  v18 = v81[3];
                }

                v19 = v18;
                _Block_object_dispose(&v80, 8);
                v20 = [v18 alloc];
                v21 = objc_alloc(MEMORY[0x277CCAD78]);
                v22 = [v7 uuid];
                v23 = [v21 initWithUUIDString:v22];
                LOBYTE(v55) = 0;
                v24 = [v20 initWithNSUserActivity:v70 actionUUID:v23 bundleId:v66 contentAttributeSet:0 itemIdentifier:0 heuristic:@"ck_universal_recents_mode" heuristicMetadata:0 criteria:0 isFutureMedia:v55 title:v12 subtitle:v17];

                v80 = 0;
                v81 = &v80;
                v82 = 0x2050000000;
                v25 = getATXProactiveSuggestionExecutableSpecificationClass_softClass;
                v83 = getATXProactiveSuggestionExecutableSpecificationClass_softClass;
                if (!getATXProactiveSuggestionExecutableSpecificationClass_softClass)
                {
                  *buf = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke;
                  v78 = &unk_278E06DB8;
                  v79 = &v80;
                  __getATXProactiveSuggestionExecutableSpecificationClass_block_invoke(buf);
                  v25 = v81[3];
                }

                v26 = v25;
                _Block_object_dispose(&v80, 8);
                v27 = [v25 alloc];
                v28 = MEMORY[0x277CCACA8];
                v29 = [v7 title];
                v30 = [v28 stringWithFormat:@"Recent with title: %@", v29];
                v31 = [v7 uuid];
                v32 = [v27 initWithExecutableObject:v24 executableDescription:v30 executableIdentifier:v31 suggestionExecutableType:2];

                v80 = 0;
                v81 = &v80;
                v82 = 0x2050000000;
                v33 = getATXProactiveSuggestionUISpecificationClass_softClass;
                v83 = getATXProactiveSuggestionUISpecificationClass_softClass;
                if (!getATXProactiveSuggestionUISpecificationClass_softClass)
                {
                  *buf = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __getATXProactiveSuggestionUISpecificationClass_block_invoke;
                  v78 = &unk_278E06DB8;
                  v79 = &v80;
                  __getATXProactiveSuggestionUISpecificationClass_block_invoke(buf);
                  v33 = v81[3];
                }

                v34 = v33;
                _Block_object_dispose(&v80, 8);
                v35 = [v33 alloc];
                v80 = 0;
                v81 = &v80;
                v82 = 0x2050000000;
                v36 = getATXProactiveSuggestionLayoutConfigClass_softClass;
                v83 = getATXProactiveSuggestionLayoutConfigClass_softClass;
                if (!getATXProactiveSuggestionLayoutConfigClass_softClass)
                {
                  *buf = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __getATXProactiveSuggestionLayoutConfigClass_block_invoke;
                  v78 = &unk_278E06DB8;
                  v79 = &v80;
                  __getATXProactiveSuggestionLayoutConfigClass_block_invoke(buf);
                  v36 = v81[3];
                }

                v37 = v36;
                _Block_object_dispose(&v80, 8);
                v38 = [v36 layoutConfigurationsForLayoutOptions:40];
                LOWORD(v54) = 256;
                v39 = [v35 initWithTitle:v12 subtitle:v17 predictionReason:v17 preferredLayoutConfigs:v38 allowedOnLockscreen:1 allowedOnHomeScreen:1 allowedOnSpotlight:v54 shouldClearOnEngagement:?];

                v40 = *(v61 + 40);
                v41 = [v7 uuid];
                v42 = [v65 objectForKeyedSubscript:v41];
                v43 = [v40 _suggestionConfidenceForRecent:v7 withCount:{objc_msgSend(v42, "unsignedIntegerValue")}];

                v80 = 0;
                v81 = &v80;
                v82 = 0x2050000000;
                v44 = getATXProactiveSuggestionScoreSpecificationClass_softClass;
                v83 = getATXProactiveSuggestionScoreSpecificationClass_softClass;
                if (!getATXProactiveSuggestionScoreSpecificationClass_softClass)
                {
                  *buf = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __getATXProactiveSuggestionScoreSpecificationClass_block_invoke;
                  v78 = &unk_278E06DB8;
                  v79 = &v80;
                  __getATXProactiveSuggestionScoreSpecificationClass_block_invoke(buf);
                  v44 = v81[3];
                }

                v45 = v44;
                _Block_object_dispose(&v80, 8);
                v46 = [[v44 alloc] initWithRawScore:v43 suggestedConfidenceCategory:1.0];
                v80 = 0;
                v81 = &v80;
                v82 = 0x2050000000;
                v47 = getATXProactiveSuggestionClass_softClass;
                v83 = getATXProactiveSuggestionClass_softClass;
                if (!getATXProactiveSuggestionClass_softClass)
                {
                  *buf = MEMORY[0x277D85DD0];
                  v76 = 3221225472;
                  v77 = __getATXProactiveSuggestionClass_block_invoke;
                  v78 = &unk_278E06DB8;
                  v79 = &v80;
                  __getATXProactiveSuggestionClass_block_invoke(buf);
                  v47 = v81[3];
                }

                v48 = v47;
                _Block_object_dispose(&v80, 8);
                v49 = [[v47 alloc] initWithClientModelSpecification:v69 executableSpecification:v32 uiSpecification:v39 scoreSpecification:v46];
                if (v49)
                {
                  [v58 addObject:v49];
                }
              }

              objc_autoreleasePoolPop(context);
            }

            v63 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
          }

          while (v63);
        }

        if ([v58 count])
        {
          [v64 _updateBlendingLayerWithSuggestions:v58];
          v50 = v64;
        }

        else
        {
          v50 = v64;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "There were no new suggestions for ATX", buf, 2u);
          }
        }

        v53 = v50[6];
        v50[6] = 0;

        v52 = v60;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          __84__CKContextRecentsPredictionManager__handleModeChangeToModeWithUUIDString_forCache___block_invoke_cold_1();
        }

        v52 = WeakRetained[6];
        WeakRetained[6] = 0;
      }

      WeakRetained = v64;
    }

    else
    {
      v51 = WeakRetained[6];
      WeakRetained[6] = 0;
    }
  }
}

- (void)_updateBlendingLayerWithSuggestions:(id)suggestions
{
  clientModel = self->_clientModel;
  suggestionsCopy = suggestions;
  v6 = [suggestionsCopy count];
  if (v6 >= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [suggestionsCopy subarrayWithRange:{0, v7}];

  [(ATXProactiveSuggestionClientModel *)clientModel updateSuggestions:v8 completionHandler:&__block_literal_global];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__CKContextRecentsPredictionManager__updateBlendingLayerWithSuggestions___block_invoke_51;
  v12[3] = &unk_278E06D40;
  objc_copyWeak(&v13, &location);
  v9 = dispatch_block_create(0, v12);
  suggestionsClearingBlock = self->_suggestionsClearingBlock;
  self->_suggestionsClearingBlock = v9;

  v11 = dispatch_time(0, 300000000000);
  dispatch_after(v11, self->_suggestionReportingQueue, self->_suggestionsClearingBlock);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __73__CKContextRecentsPredictionManager__updateBlendingLayerWithSuggestions___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((v4 || (a2 & 1) == 0) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __73__CKContextRecentsPredictionManager__updateBlendingLayerWithSuggestions___block_invoke_cold_1();
  }
}

void __73__CKContextRecentsPredictionManager__updateBlendingLayerWithSuggestions___block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _clearSuggestions];
    v2 = v3[3];
    v3[3] = 0;

    WeakRetained = v3;
  }
}

- (id)_userFacingReasonStringForRecentWithNumberOfInstances:(unint64_t)instances mode:(id)mode
{
  modeCopy = mode;
  name = [modeCopy name];
  v8 = [name length];

  if (v8)
  {
    if (instances > 4)
    {
      [(CKContextRecentsPredictionManager *)self _oftenUsedStringForMode:modeCopy];
    }

    else
    {
      [(CKContextRecentsPredictionManager *)self _recentlyUsedStringForMode:modeCopy];
    }
    v9 = ;
  }

  else
  {
    if (instances > 4)
    {
      v10 = @"Often used during this Focus";
    }

    else
    {
      v10 = @"Recently used during this Focus";
    }

    v9 = [(CKContextRecentsPredictionManager *)self _localizedStringForKey:v10];
  }

  v11 = v9;

  return v11;
}

- (id)_oftenUsedStringForMode:(id)mode
{
  modeCopy = mode;
  semanticType = [modeCopy semanticType];
  if (semanticType <= 3)
  {
    if (semanticType <= 0)
    {
      if (semanticType == -1)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = [(CKContextRecentsPredictionManager *)self _localizedStringForKey:@"Often used during %@ Focus"];
        name = [modeCopy name];
        v3 = [v8 stringWithFormat:v9, name];

        goto LABEL_25;
      }

      if (semanticType)
      {
        goto LABEL_25;
      }

      v7 = @"Often used during Do Not Disturb";
    }

    else if (semanticType == 1)
    {
      v7 = @"Often used during Sleep Focus";
    }

    else if (semanticType == 2)
    {
      v7 = @"Often used during Driving Focus";
    }

    else
    {
      v7 = @"Often used during Fitness Focus";
    }
  }

  else if (semanticType > 6)
  {
    switch(semanticType)
    {
      case 7:
        v7 = @"Often used during Gaming Focus";
        break;
      case 8:
        v7 = @"Often used during Mindfulness Focus";
        break;
      case 9:
        v7 = @"Often used during Reduce Interruptions Focus";
        break;
      default:
        goto LABEL_25;
    }
  }

  else if (semanticType == 4)
  {
    v7 = @"Often used during Work Focus";
  }

  else if (semanticType == 5)
  {
    v7 = @"Often used during Personal Focus";
  }

  else
  {
    v7 = @"Often used during Reading Focus";
  }

  v3 = [(CKContextRecentsPredictionManager *)self _localizedStringForKey:v7];
LABEL_25:

  return v3;
}

- (id)_recentlyUsedStringForMode:(id)mode
{
  modeCopy = mode;
  semanticType = [modeCopy semanticType];
  if (semanticType <= 3)
  {
    if (semanticType <= 0)
    {
      if (semanticType == -1)
      {
        v8 = MEMORY[0x277CCACA8];
        v9 = [(CKContextRecentsPredictionManager *)self _localizedStringForKey:@"Recently used during %@ Focus"];
        name = [modeCopy name];
        v3 = [v8 stringWithFormat:v9, name];

        goto LABEL_25;
      }

      if (semanticType)
      {
        goto LABEL_25;
      }

      v7 = @"Recently used during Do Not Disturb";
    }

    else if (semanticType == 1)
    {
      v7 = @"Recently used during Sleep Focus";
    }

    else if (semanticType == 2)
    {
      v7 = @"Recently used during Driving Focus";
    }

    else
    {
      v7 = @"Recently used during Fitness Focus";
    }
  }

  else if (semanticType > 6)
  {
    switch(semanticType)
    {
      case 7:
        v7 = @"Recently used during Gaming Focus";
        break;
      case 8:
        v7 = @"Recently used during Mindfulness Focus";
        break;
      case 9:
        v7 = @"Recently used during Reduce Interruptions Focus";
        break;
      default:
        goto LABEL_25;
    }
  }

  else if (semanticType == 4)
  {
    v7 = @"Recently used during Work Focus";
  }

  else if (semanticType == 5)
  {
    v7 = @"Recently used during Personal Focus";
  }

  else
  {
    v7 = @"Recently used during Reading Focus";
  }

  v3 = [(CKContextRecentsPredictionManager *)self _localizedStringForKey:v7];
LABEL_25:

  return v3;
}

- (int64_t)_suggestionConfidenceForRecent:(id)recent withCount:(unint64_t)count
{
  recentCopy = recent;
  if (count < 0xB)
  {
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (count < 6)
    {
      if (v7)
      {
        [CKContextRecentsPredictionManager _suggestionConfidenceForRecent:recentCopy withCount:?];
      }

      v6 = 2;
    }

    else
    {
      if (v7)
      {
        [CKContextRecentsPredictionManager _suggestionConfidenceForRecent:recentCopy withCount:?];
      }

      v6 = 3;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [CKContextRecentsPredictionManager _suggestionConfidenceForRecent:recentCopy withCount:?];
    }

    v6 = 4;
  }

  return v6;
}

- (id)eligiblePredictionsMatchingMode:(id)mode forRecents:(id)recents uuidsToCounts:(id)counts
{
  modeCopy = mode;
  recentsCopy = recents;
  countsCopy = counts;
  if ([recentsCopy count])
  {
    v11 = [(CKContextRecentsPredictionManager *)self _recentsEligibleForDonationMatchingMode:modeCopy fromRecents:recentsCopy uuidsToCounts:countsCopy];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

- (void)retrievePredictionsForMode:(id)mode withReply:(id)reply
{
  modeCopy = mode;
  replyCopy = reply;
  if (replyCopy)
  {
    if ([modeCopy length])
    {
      v8 = modeCopy;
      if ([v8 isEqualToString:@"Custom"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"Unknown") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"Default") & 1) == 0 && ((objc_msgSend(v8, "isEqualToString:", @"Home") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Working") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Exercising") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Driving") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Bedtime") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Gaming") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Reading") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Traveling") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Learning") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Streaming") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ScreenSharing") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ScreenRecording") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"AirPlayMirroring") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"Mindfulness") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"ReduceInterruptions")))
      {

        objc_initWeak(&location, self);
        recentsCache = self->_recentsCache;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __74__CKContextRecentsPredictionManager_retrievePredictionsForMode_withReply___block_invoke;
        v10[3] = &unk_278E06D68;
        objc_copyWeak(&v13, &location);
        v12 = replyCopy;
        v11 = v8;
        [(CKContextRecentsCache *)recentsCache retrieveRecentsForPredictionWithReply:v10];

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
        goto LABEL_8;
      }
    }

    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEBF8]);
  }

LABEL_8:
}

void __74__CKContextRecentsPredictionManager_retrievePredictionsForMode_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && [v9 count] && objc_msgSend(v5, "count"))
  {
    v7 = *(a1 + 40);
    v8 = [WeakRetained _recentsEligibleForDonationMatchingMode:*(a1 + 32) fromRecents:v9 uuidsToCounts:v5];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_recentsEligibleForDonationMatchingMode:(id)mode fromRecents:(id)recents uuidsToCounts:(id)counts
{
  v78 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  recentsCopy = recents;
  countsCopy = counts;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v71 = modeCopy;
    _os_log_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "🔮 Finding recents eligible prediction for mode: %@", buf, 0xCu);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v10 = recentsCopy;
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v77 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        modeIdentifier = [v15 modeIdentifier];
        v17 = [modeIdentifier isEqualToString:modeCopy];

        if (v17)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v66 objects:v77 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v54 = v10;
    firstObject = [v9 firstObject];
    v19 = MEMORY[0x277CBEAA8];
    v53 = firstObject;
    [firstObject absoluteTimestamp];
    v57 = [v19 dateWithTimeIntervalSinceReferenceDate:?];
    v55 = v9;
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [v9 reverseObjectEnumerator];
    v20 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
    if (!v20)
    {
      goto LABEL_56;
    }

    v21 = v20;
    v22 = MEMORY[0x277D86220];
    v23 = *v63;
    while (1)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v63 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v62 + 1) + 8 * j);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          associatedBundleId = [v25 associatedBundleId];
          v27 = MEMORY[0x277CBEAA8];
          [v25 absoluteTimestamp];
          v28 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
          *buf = 138412802;
          v71 = modeCopy;
          v72 = 2112;
          v73 = associatedBundleId;
          v74 = 2112;
          v75 = v28;
          _os_log_impl(&dword_244167000, v22, OS_LOG_TYPE_INFO, "Considering recent for mode: %@ from bundle: %@, date: %@", buf, 0x20u);
        }

        uuid = [v25 uuid];
        v30 = [countsCopy objectForKeyedSubscript:uuid];
        unsignedIntValue = [v30 unsignedIntValue];
        v32 = unsignedIntValue;

        if (unsignedIntValue - 33 > 0xFFFFFFDF)
        {
          v33 = objc_alloc(MEMORY[0x277CCAE58]);
          userActivityData = [v25 userActivityData];
          v35 = [v33 _initWithUserActivityData:userActivityData];

          if (v35)
          {
            isEligibleForPrediction = [v35 isEligibleForPrediction];
            isEligibleForPublicIndexing = [v35 isEligibleForPublicIndexing];
            if (isEligibleForPrediction & 1) != 0 || (isEligibleForPublicIndexing)
            {
              if (((isEligibleForPrediction ^ 1) & isEligibleForPublicIndexing) != 1 || v32 > 4)
              {
                expirationDate = [v35 expirationDate];
                date = [MEMORY[0x277CBEAA8] date];
                if (expirationDate && ([expirationDate earlierDate:date], v43 = objc_claimAutoreleasedReturnValue(), v43, v43 == expirationDate))
                {
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_244167000, v22, OS_LOG_TYPE_INFO, "--- rejecting because past expiration date", buf, 2u);
                  }
                }

                else
                {
                  associatedBundleId2 = [v25 associatedBundleId];
                  if ([associatedBundleId2 length] && !objc_msgSend(kBundleIdentifiersToNotSuggest, "containsObject:", associatedBundleId2))
                  {
                    v58 = MEMORY[0x277CBEAA8];
                    [v25 absoluteTimestamp];
                    v59 = [v58 dateWithTimeIntervalSinceReferenceDate:?];
                    [v59 timeIntervalSinceDate:v57];
                    v47 = fabs(v46);
                    v48 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
                    if (v47 <= 1800.0)
                    {
                      if (v48)
                      {
                        *buf = 0;
                        _os_log_impl(&dword_244167000, v22, OS_LOG_TYPE_INFO, "--- accepting as valid candidate", buf, 2u);
                      }

                      [v56 addObject:v25];
                    }

                    else if (v48)
                    {
                      *buf = 0;
                      _os_log_impl(&dword_244167000, v22, OS_LOG_TYPE_INFO, "--- rejecting because too old", buf, 2u);
                    }
                  }

                  else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_244167000, v22, OS_LOG_TYPE_INFO, "--- rejecting because bundle identifier is not allowed", buf, 2u);
                  }
                }
              }

              else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                v38 = v22;
                v39 = "--- rejecting publicly indexable prediction due to insufficient count";
LABEL_41:
                _os_log_impl(&dword_244167000, v38, OS_LOG_TYPE_INFO, v39, buf, 2u);
              }
            }

            else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v38 = v22;
              v39 = "--- rejecting because ineligible for predictions or public indexing";
              goto LABEL_41;
            }
          }

          continue;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v71 = unsignedIntValue;
          _os_log_impl(&dword_244167000, v22, OS_LOG_TYPE_INFO, "--- rejecting due to occurence count: %lu", buf, 0xCu);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (!v21)
      {
LABEL_56:

        v49 = [v56 count];
        if (v49 >= 2)
        {
          v50 = 2;
        }

        else
        {
          v50 = v49;
        }

        v51 = [v56 subarrayWithRange:{0, v50}];

        v10 = v54;
        v9 = v55;
        goto LABEL_61;
      }
    }
  }

  v51 = MEMORY[0x277CBEBF8];
LABEL_61:

  return v51;
}

- (id)_localizedStringForKey:(id)key
{
  v3 = MEMORY[0x277CCA8D8];
  keyCopy = key;
  v5 = [v3 bundleWithPath:@"/System/Library/PrivateFrameworks/ContextKitPrediction.framework"];
  v6 = [v5 localizedStringForKey:keyCopy value:keyCopy table:0];

  return v6;
}

- (void)_createDoNotDisturbServiceIfNecessary
{
  if (!self->_dndService)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getDNDModeConfigurationServiceClass_softClass;
    v11 = getDNDModeConfigurationServiceClass_softClass;
    if (!getDNDModeConfigurationServiceClass_softClass)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __getDNDModeConfigurationServiceClass_block_invoke;
      v7[3] = &unk_278E06DB8;
      v7[4] = &v8;
      __getDNDModeConfigurationServiceClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [v3 serviceForClientIdentifier:@"com.apple.contextkit.ContextPredictionClient"];
    dndService = self->_dndService;
    self->_dndService = v5;

    if (!self->_dndService && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [CKContextRecentsPredictionManager _createDoNotDisturbServiceIfNecessary];
    }
  }
}

- (id)_retrieveModeConfigurations
{
  [(CKContextRecentsPredictionManager *)self _createDoNotDisturbServiceIfNecessary];
  dndService = self->_dndService;
  v10 = 0;
  v4 = [(DNDModeConfigurationService *)dndService modeConfigurationsReturningError:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [CKContextRecentsPredictionManager _retrieveModeConfigurations];
    }

    v8 = 0;
  }

  return v8;
}

- (id)_modeForModeIdentifier:(id)identifier withConfigurations:(id)configurations
{
  identifierCopy = identifier;
  configurationsCopy = configurations;
  if ([identifierCopy length] && (objc_msgSend(configurationsCopy, "allKeys"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __79__CKContextRecentsPredictionManager__modeForModeIdentifier_withConfigurations___block_invoke;
    v14 = &unk_278E06D90;
    v15 = identifierCopy;
    v16 = &v17;
    [configurationsCopy enumerateKeysAndObjectsUsingBlock:&v11];
    mode = [v18[5] mode];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    mode = 0;
  }

  return mode;
}

void __79__CKContextRecentsPredictionManager__modeForModeIdentifier_withConfigurations___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [v11 mode];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

- (CKContextRecentsPredictionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __73__CKContextRecentsPredictionManager__updateBlendingLayerWithSuggestions___block_invoke_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error updating suggestions to ATX: %@", v0, 0xCu);
}

- (void)_suggestionConfidenceForRecent:(void *)a1 withCount:.cold.1(void *a1)
{
  v1 = [a1 uuid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_suggestionConfidenceForRecent:(void *)a1 withCount:.cold.2(void *a1)
{
  v1 = [a1 uuid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_suggestionConfidenceForRecent:(void *)a1 withCount:.cold.3(void *a1)
{
  v1 = [a1 uuid];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_retrieveModeConfigurations
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_244167000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Could not obtain mode configurations: %{public}@", v0, 0xCu);
}

@end