@interface RETrainingSimulationCoordinator
- (id)_engineWithName:(id)name;
- (id)_init;
- (id)_unavailableEngineWithNameError:(id)error;
- (void)_accesssEngineWithName:(id)name completion:(id)completion;
- (void)availableRelevanceEngines:(id)engines;
- (void)dealloc;
- (void)elementAction:(id)action didFinishTask:(BOOL)task;
- (void)elementAction:(id)action wantsViewControllerDisplayed:(id)displayed;
- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion;
- (void)fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion;
- (void)gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion;
- (void)relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion;
- (void)relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion;
- (void)relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion;
- (void)relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion;
@end

@implementation RETrainingSimulationCoordinator

- (id)_init
{
  v11.receiver = self;
  v11.super_class = RETrainingSimulationCoordinator;
  _init = [(RESingleton *)&v11 _init];
  if (_init)
  {
    if (_fetchedInternalBuildOnceToken_1 != -1)
    {
      [RETrainingSimulationCoordinator _init];
    }

    if (_isInternalDevice_1 == 1)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v4 = *(_init + 2);
      *(_init + 2) = dictionary;

      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v6 = *(_init + 3);
      *(_init + 3) = strongToStrongObjectsMapTable;

      v7 = +[RETrainingSimulationServer sharedServer];
      v8 = *(_init + 1);
      *(_init + 1) = v7;

      [*(_init + 1) addObserver:_init];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:_init selector:sel__relevanceEnginesDidChange name:@"RERelevanceEngineDebuggerAvailableEnginesDidChange" object:0];
    }
  }

  return _init;
}

uint64_t __40__RETrainingSimulationCoordinator__init__block_invoke(uint64_t a1, uint64_t a2)
{
  result = _REGetIsInternalBuild(a1, a2);
  _isInternalDevice_1 = result;
  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"RERelevanceEngineDebuggerAvailableEnginesDidChange" object:0];

  v4.receiver = self;
  v4.super_class = RETrainingSimulationCoordinator;
  [(RETrainingSimulationCoordinator *)&v4 dealloc];
}

- (id)_engineWithName:(id)name
{
  nameCopy = name;
  v4 = +[(RESingleton *)RERelevanceEngineDebugger];
  v5 = [v4 engineWithName:nameCopy];

  return v5;
}

- (void)_accesssEngineWithName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__RETrainingSimulationCoordinator__accesssEngineWithName_completion___block_invoke;
    block[3] = &unk_2785F99C8;
    block[4] = self;
    v9 = nameCopy;
    v10 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __69__RETrainingSimulationCoordinator__accesssEngineWithName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _engineWithName:*(a1 + 40)];
  v3 = [v2 configuration];
  v4 = [v3 observerQueue];

  if (v4)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __69__RETrainingSimulationCoordinator__accesssEngineWithName_completion___block_invoke_2;
    v5[3] = &unk_2785FA150;
    v7 = *(a1 + 48);
    v6 = v2;
    dispatch_async(v4, v5);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)_unavailableEngineWithNameError:(id)error
{
  error = [MEMORY[0x277CCACA8] stringWithFormat:@"No Relevance engine with name %@ found", error];
  v4 = RECreateErrorWithCodeAndMessage(1, error);

  return v4;
}

- (void)relevanceEngine:(id)engine createElementFromDescription:(id)description completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v10 = [description mutableCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke;
  v14[3] = &unk_2785FC098;
  v15 = v10;
  selfCopy = self;
  v17 = engineCopy;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = engineCopy;
  v13 = v10;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v12 completion:v14];
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = [*(a1 + 40) _unavailableEngineWithNameError:*(a1 + 48)];
LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"section"];
  [*(a1 + 32) removeObjectForKey:@"section"];
  v5 = [v3 elementFromDictionary:*(a1 + 32)];
  if (!v5)
  {
    v6 = RECreateErrorWithCode(2);

    goto LABEL_8;
  }

  v6 = v5;
  v7 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [*(*(a1 + 40) + 16) setObject:v8 forKeyedSubscript:*(a1 + 48)];
  }

  v9 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];
  [v9 addObject:v6];

  [v3 addElement:v6 section:v4];
  v10 = [v3 subsystemQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_2;
  block[3] = &unk_2785FC070;
  v13 = v3;
  v11 = *(a1 + 56);
  v14 = 0;
  v15 = v11;
  dispatch_async(v10, block);

LABEL_9:
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_2(id *a1)
{
  v2 = [a1[4] subsystemQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_3;
  v3[3] = &unk_2785FA150;
  v5 = a1[6];
  v4 = a1[5];
  dispatch_async(v2, v3);
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_4;
  v2[3] = &unk_2785FA150;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_4(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __91__RETrainingSimulationCoordinator_relevanceEngine_createElementFromDescription_completion___block_invoke_5;
  v2[3] = &unk_2785FA150;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)relevanceEngine:(id)engine performCommand:(id)command withOptions:(id)options completion:(id)completion
{
  engineCopy = engine;
  commandCopy = command;
  optionsCopy = options;
  completionCopy = completion;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke;
  v18[3] = &unk_2785FC0C0;
  v19 = commandCopy;
  selfCopy = self;
  v21 = engineCopy;
  v22 = optionsCopy;
  v23 = completionCopy;
  v14 = completionCopy;
  v15 = optionsCopy;
  v16 = engineCopy;
  v17 = commandCopy;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v16 completion:v18];
}

void __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) isEqualToString:@"sysdiagnose"];
    if (v4)
    {
      if (_fetchedInternalBuildOnceToken_1 != -1)
      {
        __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_cold_1();
      }

      if (_isInternalDevice_1 == 1 && (REProcessIsRelevanced(v4, v5) & 1) != 0)
      {
        goto LABEL_31;
      }
    }

    if ([*(a1 + 32) isEqualToString:@"begin"])
    {
      if (([*(a1 + 40) isActivelyTraining] & 1) == 0)
      {
        [*(a1 + 40) setIsActivelyTraining:1];
        v6 = [MEMORY[0x277CCAB98] defaultCenter];
        [v6 postNotificationName:@"RETrainingSimulationCoordinatorDidBeginTraining" object:*(a1 + 40)];
      }

      [v3 pauseForSimulation];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"end"])
    {
      v8 = +[(RESingleton *)RELocationPredictor];
      [v8 _setOverrideLocation:-1 forEngine:*(a1 + 48)];

      v9 = +[(RESingleton *)REDailyRoutinePredictor];
      [v9 _setOverrideRoutineType:0];

      if ([*(a1 + 40) isActivelyTraining])
      {
        [*(a1 + 40) setIsActivelyTraining:0];
        v10 = [MEMORY[0x277CCAB98] defaultCenter];
        [v10 postNotificationName:@"RETrainingSimulationCoordinatorDidEndTraining" object:*(a1 + 40)];
      }

      [v3 resumeFromSimulation];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"reset"])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = [*(*(a1 + 40) + 16) objectForKeyedSubscript:*(a1 + 48)];
      v12 = v11;
      v13 = MEMORY[0x277CBEBF8];
      if (v11)
      {
        v13 = v11;
      }

      v14 = v13;

      v15 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v35;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v35 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [v3 removeElement:*(*(&v34 + 1) + 8 * i)];
          }

          v16 = [v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v16);
      }

      [*(*(a1 + 40) + 16) setObject:0 forKeyedSubscript:*(a1 + 48)];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"clear"])
    {
      [v3 trainPendingEventsWithCompletion:0];
      v19 = [v3 modelManager];
      [v19 performModelClearWithCompletion:&__block_literal_global_48];

LABEL_31:
      v7 = 0;
      goto LABEL_32;
    }

    if ([*(a1 + 32) isEqualToString:@"train"])
    {
      [v3 trainPendingEventsWithCompletion:0];
      goto LABEL_31;
    }

    if ([*(a1 + 32) isEqualToString:@"set_core_routine"])
    {
      v7 = [*(a1 + 56) objectForKeyedSubscript:@"core_routine"];
      v20 = RELocationPredictorUserLocationFromString(v7);
      v21 = +[(RESingleton *)RELocationPredictor];
      [v21 _setOverrideLocation:v20 forEngine:*(a1 + 48)];

      v22 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_4;
      block[3] = &unk_2785FA040;
      v33 = *(a1 + 64);
      dispatch_after(v22, MEMORY[0x277D85CD0], block);
      v23 = v33;
LABEL_38:

      goto LABEL_33;
    }

    if ([*(a1 + 32) isEqualToString:@"set_routine_type"])
    {
      v7 = [*(a1 + 56) objectForKeyedSubscript:@"routine_type"];
      v24 = REDailyRoutineTypeFromString(v7);
      v25 = +[(RESingleton *)REDailyRoutinePredictor];
      [v25 _setOverrideRoutineType:v24];

      v26 = dispatch_time(0, 1000000000);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_5;
      v30[3] = &unk_2785FA040;
      v31 = *(a1 + 64);
      dispatch_after(v26, MEMORY[0x277D85CD0], v30);
      v23 = v31;
      goto LABEL_38;
    }

    v27 = [v3 trainingManager];
    v28 = [v27 currentTrainingContext];

    if (v28)
    {
      if ([v28 performSimulationCommand:*(a1 + 32) withOptions:*(a1 + 56)])
      {
        v7 = 0;
LABEL_45:

        goto LABEL_32;
      }

      v29 = 100;
    }

    else
    {
      v29 = 3;
    }

    v7 = RECreateErrorWithCode(v29);
    goto LABEL_45;
  }

  v7 = [*(a1 + 40) _unavailableEngineWithNameError:*(a1 + 48)];
LABEL_32:
  (*(*(a1 + 64) + 16))();
LABEL_33:
}

uint64_t __89__RETrainingSimulationCoordinator_relevanceEngine_performCommand_withOptions_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = _REGetIsInternalBuild(a1, a2);
  _isInternalDevice_1 = result;
  return result;
}

- (void)availableRelevanceEngines:(id)engines
{
  v17 = *MEMORY[0x277D85DE8];
  enginesCopy = engines;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[(RESingleton *)RERelevanceEngineDebugger];
  availableEngines = [v5 availableEngines];

  v7 = [availableEngines countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(availableEngines);
        }

        name = [*(*(&v12 + 1) + 8 * v10) name];
        [array addObject:name];

        ++v10;
      }

      while (v8 != v10);
      v8 = [availableEngines countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  enginesCopy[2](enginesCopy, array, 0);
}

- (void)fetchAllElementIdentifiersInRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__RETrainingSimulationCoordinator_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785FC0E8;
  v10[4] = self;
  v11 = engineCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = engineCopy;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v9 completion:v10];
}

void __90__RETrainingSimulationCoordinator_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    if ([v9 numberOfElementsInSection:@"defaultSectionIdentifier"])
    {
      v4 = 0;
      do
      {
        v5 = [[RESectionPath alloc] initWithSectionName:@"defaultSectionIdentifier" element:v4];
        v6 = [v9 elementAtPath:v5];

        if (v6)
        {
          v7 = [v6 identifier];
          [v3 addObject:v7];
        }

        ++v4;
      }

      while (v4 < [v9 numberOfElementsInSection:@"defaultSectionIdentifier"]);
    }

    v8 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) _unavailableEngineWithNameError:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAllElementsInRelevanceEngine:(id)engine completion:(id)completion
{
  engineCopy = engine;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__RETrainingSimulationCoordinator_fetchAllElementsInRelevanceEngine_completion___block_invoke;
  v10[3] = &unk_2785FC0E8;
  v10[4] = self;
  v11 = engineCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = engineCopy;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v9 completion:v10];
}

void __80__RETrainingSimulationCoordinator_fetchAllElementsInRelevanceEngine_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  if (v13)
  {
    if ([v13 numberOfElementsInSection:@"defaultSectionIdentifier"])
    {
      v4 = 0;
      do
      {
        v5 = [[RESectionPath alloc] initWithSectionName:@"defaultSectionIdentifier" element:v4];
        v6 = [v13 elementAtPath:v5];
        if (v6)
        {
          v7 = [v13 dictionaryFromElement:v6];
          v8 = [v7 mutableCopy];

          v9 = [v13 predictionForElementAtPath:v5];
          v10 = MEMORY[0x277CCABB0];
          [v9 probability];
          v11 = [v10 numberWithFloat:?];
          [v8 setObject:v11 forKeyedSubscript:@"probability"];

          [v3 addObject:v8];
        }

        ++v4;
      }

      while (v4 < [v13 numberOfElementsInSection:@"defaultSectionIdentifier"]);
      v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [*(a1 + 32) _unavailableEngineWithNameError:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)gatherDiagnosticLogsForRelevanceEngine:(id)engine completion:(id)completion
{
  completionCopy = completion;
  v7 = [(RETrainingSimulationCoordinator *)self _engineWithName:engine];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__RETrainingSimulationCoordinator_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke;
    v9[3] = &unk_2785FC110;
    v10 = completionCopy;
    [v7 storeDiagnosticLogsToFile:v9];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RETrainingSimulationCoordinatorErrorDomain" code:1 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v8);
  }
}

void __85__RETrainingSimulationCoordinator_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a2];
  v6 = 0;
  v4 = [v3 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v6];
  v5 = v6;
  (*(*(a1 + 32) + 16))();
}

- (void)relevanceEngine:(id)engine runActionOfElementWithDescription1:(id)description1 completion:(id)completion
{
  engineCopy = engine;
  description1Copy = description1;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke;
  v14[3] = &unk_2785FC188;
  v15 = description1Copy;
  selfCopy = self;
  v17 = engineCopy;
  v18 = completionCopy;
  v11 = engineCopy;
  v12 = completionCopy;
  v13 = description1Copy;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:v11 completion:v14];
}

void __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v7 = [*(a1 + 40) _unavailableEngineWithNameError:*(a1 + 48)];
    goto LABEL_8;
  }

  if (![v3 numberOfElementsInSection:@"defaultSectionIdentifier"])
  {
LABEL_6:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find element with description %@", *(a1 + 32)];
    v7 = RECreateErrorWithCodeAndMessage(4, v9);

LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

  v5 = 0;
  while (1)
  {
    v6 = [[RESectionPath alloc] initWithSectionName:@"defaultSectionIdentifier" element:v5];
    v7 = [v4 elementAtPath:v6];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v22[0] = @"REContentDescription1TextKey";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_2;
    v15[3] = &unk_2785FC138;
    v16 = *(a1 + 32);
    v17 = &v18;
    REEnumerateContentAttributesOfElement(v8, v7, v15);
    if (*(v19 + 24) == 1)
    {
      break;
    }

    _Block_object_dispose(&v18, 8);
    if (++v5 >= [v4 numberOfElementsInSection:@"defaultSectionIdentifier"])
    {
      goto LABEL_6;
    }
  }

  v10 = [v7 action];
  v11 = *(*(a1 + 40) + 24);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_3;
  v13[3] = &unk_2785FC160;
  v14 = *(a1 + 56);
  v12 = MEMORY[0x22AABC5E0](v13);
  [v11 setObject:v12 forKey:v10];

  [v10 setForceExecution:1];
  [v10 setDelegate:*(a1 + 40)];
  [v10 _performWithContext:MEMORY[0x277CBEC10]];

  _Block_object_dispose(&v18, 8);
LABEL_9:
}

void *__97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __97__RETrainingSimulationCoordinator_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = RECreateErrorWithCode(101);
  }

  v4 = v3;
  (*(*(a1 + 32) + 16))();
}

- (void)relevanceEngine:(id)engine encodedObjectAtPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke;
  v12[3] = &unk_2785FC1B0;
  v13 = pathCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = pathCopy;
  [(RETrainingSimulationCoordinator *)self _accesssEngineWithName:engine completion:v12];
}

void __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) mutableCopy];
  if (v3)
  {
    v12 = [(REExportedValueEncoder *)[REJSONExportedValueEncoder alloc] initWithOptions:0];
    v5 = [REExportedValue exportedValueForObject:v3];
    while ([v4 count])
    {
      if ([v5 type] == 2 && objc_msgSend(v5, "propertyCount") == 1)
      {
        v14 = 0;
        v15 = &v14;
        v16 = 0x3032000000;
        v17 = __Block_byref_object_copy__13;
        v18 = __Block_byref_object_dispose__13;
        v19 = 0;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke_81;
        v13[3] = &unk_2785F9DF0;
        v13[4] = &v14;
        [v5 enumerateValuesUsingBlock:v13];
        v6 = v15[5];
        if (v6)
        {
          v7 = v6;

          v5 = v7;
        }

        _Block_object_dispose(&v14, 8);

        if (v6)
        {
          continue;
        }
      }

      v8 = [v4 firstObject];
      [v4 removeObjectAtIndex:0];
      v9 = [v5 exportedValueForKey:v8];

      v5 = v9;
    }

    v10 = [(REExportedValueEncoder *)v12 dataFromExportedValue:v5];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];
  }

  else
  {
    v11 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t __82__RETrainingSimulationCoordinator_relevanceEngine_encodedObjectAtPath_completion___block_invoke_81(uint64_t a1)
{
  v2 = [REExportedValue exportedValueForObject:?];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)elementAction:(id)action didFinishTask:(BOOL)task
{
  actionCopy = action;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RETrainingSimulationCoordinator_elementAction_didFinishTask___block_invoke;
  block[3] = &unk_2785FB3A8;
  block[4] = self;
  v9 = actionCopy;
  taskCopy = task;
  v7 = actionCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __63__RETrainingSimulationCoordinator_elementAction_didFinishTask___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 48));
    v2 = v3;
  }
}

- (void)elementAction:(id)action wantsViewControllerDisplayed:(id)displayed
{
  actionCopy = action;
  displayedCopy = displayed;
  if (UIKitLibraryCore(0))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = getUIWindowClass_softClass;
    v15 = getUIWindowClass_softClass;
    if (!getUIWindowClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getUIWindowClass_block_invoke;
      v11[3] = &unk_2785F9BC0;
      v11[4] = &v12;
      __getUIWindowClass_block_invoke(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    keyWindow = [v7 keyWindow];
    rootViewController = [keyWindow rootViewController];
    [rootViewController presentViewController:displayedCopy animated:0 completion:0];
  }
}

@end