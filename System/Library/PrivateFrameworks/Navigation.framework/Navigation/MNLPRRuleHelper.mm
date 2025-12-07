@interface MNLPRRuleHelper
- (id)workQueue;
- (void)_findResourceNamesForRegions:(id)regions forceUpdate:(BOOL)update asyncCompletion:(id)completion;
- (void)_loadRules:(id)rules asyncCompletion:(id)completion;
- (void)fetchRulesForWaypoints:(id)waypoints forceUpdateManifest:(BOOL)manifest forceUpdateRules:(BOOL)rules completionQueue:(id)queue completion:(id)completion;
- (void)prefetchRulesForWaypoints:(id)waypoints;
@end

@implementation MNLPRRuleHelper

- (void)_loadRules:(id)rules asyncCompletion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    selfCopy = self;
    v23 = completionCopy;
    v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(rulesCopy, "count")}];
    array = [MEMORY[0x1E695DF70] array];
    v9 = dispatch_group_create();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = rulesCopy;
    v10 = rulesCopy;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          dispatch_group_enter(v9);
          pathExtension = [v15 pathExtension];
          lowercaseString = [pathExtension lowercaseString];

          if ([lowercaseString isEqualToString:@"cms-lpr"])
          {
            mEMORY[0x1E69A2468] = [MEMORY[0x1E69A2468] sharedManager];
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __46__MNLPRRuleHelper__loadRules_asyncCompletion___block_invoke;
            v31[3] = &unk_1E842F420;
            v32 = v26;
            v33 = array;
            v34 = v9;
            [mEMORY[0x1E69A2468] dataForSignedResourceWithName:v15 fallbackBundle:0 fallbackNameHandler:0 resultHandler:v31];
          }

          else
          {
            dispatch_group_leave(v9);
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v12);
    }

    workQueue = [(MNLPRRuleHelper *)selfCopy workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__MNLPRRuleHelper__loadRules_asyncCompletion___block_invoke_2;
    block[3] = &unk_1E842F448;
    v28 = array;
    v8 = v23;
    v29 = v26;
    v30 = v23;
    v20 = v26;
    v21 = array;
    dispatch_group_notify(v9, workQueue, block);

    rulesCopy = v24;
  }
}

void __46__MNLPRRuleHelper__loadRules_asyncCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [objc_alloc(MEMORY[0x1E69A1E38]) initWithData:v7];
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }

  else if (v5)
  {
    [*(a1 + 40) addObject:v5];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __46__MNLPRRuleHelper__loadRules_asyncCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 48);
  if (v2)
  {
    v7 = [*(a1 + 32) firstObject];
    (*(v3 + 16))(v3, 0, v7);
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, v4, 0);
  }
}

- (void)_findResourceNamesForRegions:(id)regions forceUpdate:(BOOL)update asyncCompletion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  v9 = MEMORY[0x1E69A2478];
  regionsCopy = regions;
  modernManager = [v9 modernManager];
  activeTileGroup = [modernManager activeTileGroup];

  v13 = [activeTileGroup regionalResourcesForMapRegions:regionsCopy resourceFilter:&__block_literal_global_11991 attributionFilter:0];

  mEMORY[0x1E69A2488] = [MEMORY[0x1E69A2488] sharedRequester];
  workQueue = [(MNLPRRuleHelper *)self workQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__MNLPRRuleHelper__findResourceNamesForRegions_forceUpdate_asyncCompletion___block_invoke_2;
  v17[3] = &unk_1E842F3F8;
  v18 = completionCopy;
  v16 = completionCopy;
  [mEMORY[0x1E69A2488] fetchResources:v13 force:updateCopy manifestConfiguration:0 auditToken:0 queue:workQueue handler:v17];
}

uint64_t __76__MNLPRRuleHelper__findResourceNamesForRegions_forceUpdate_asyncCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76__MNLPRRuleHelper__findResourceNamesForRegions_forceUpdate_asyncCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 filters];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 scenariosCount])
        {
          v9 = 0;
          while ([v8 scenarioAtIndex:v9] == 4)
          {
            if (++v9 >= [v8 scenariosCount])
            {
              goto LABEL_10;
            }
          }

          v11 = 0;
          goto LABEL_14;
        }

LABEL_10:
        ;
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = [v2 filename];
  v3 = [v10 pathExtension];

  v11 = [v3 isEqualToString:@"cms-lpr"];
LABEL_14:

  return v11;
}

- (void)fetchRulesForWaypoints:(id)waypoints forceUpdateManifest:(BOOL)manifest forceUpdateRules:(BOOL)rules completionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (completionCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke;
    aBlock[3] = &unk_1E842F338;
    v24 = queueCopy;
    selfCopy = self;
    v26 = completionCopy;
    waypointsCopy = waypoints;
    v15 = _Block_copy(aBlock);
    v16 = _regionsFromLatLngs(waypointsCopy);

    if ([v16 count])
    {
      workQueue = [(MNLPRRuleHelper *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_3;
      block[3] = &unk_1E842F3B0;
      manifestCopy = manifest;
      v20 = v15;
      block[4] = self;
      v19 = v16;
      rulesCopy = rules;
      dispatch_async(workQueue, block);
    }

    else
    {
      (*(v15 + 2))(v15, 0, 0);
    }
  }
}

void __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  global_queue = v7;
  if (!v7)
  {
    global_queue = geo_get_global_queue();
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_2;
  v12[3] = &unk_1E842FF40;
  v13 = v5;
  v14 = v6;
  v9 = a1[6];
  v15 = a1[5];
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(global_queue, v12);
  if (!v7)
  {
  }
}

void __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [MEMORY[0x1E69A2478] modernManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_4;
    v10[3] = &unk_1E842F388;
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v12 = v3;
    v10[4] = v4;
    v11 = v5;
    v13 = *(a1 + 57);
    [v2 updateManifest:1 completionHandler:v10];
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 57);
    v9 = *(a1 + 48);

    [v6 _findResourceNamesForRegions:v7 forceUpdate:v8 asyncCompletion:v9];
  }
}

void __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) workQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_5;
    v6[3] = &unk_1E842F360;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    v9 = *(a1 + 56);
    v8 = *(a1 + 48);
    dispatch_async(v4, v6);
  }
}

uint64_t __106__MNLPRRuleHelper_fetchRulesForWaypoints_forceUpdateManifest_forceUpdateRules_completionQueue_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 40) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v6 _loadRules:v5 asyncCompletion:v7];
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    return v3();
  }
}

- (void)prefetchRulesForWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  v5 = +[MNVirtualGarageManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MNLPRRuleHelper_prefetchRulesForWaypoints___block_invoke;
  v7[3] = &unk_1E842F310;
  v7[4] = self;
  v8 = waypointsCopy;
  v6 = waypointsCopy;
  [v5 updatedVehicleStateWithHandler:v7];
}

void __45__MNLPRRuleHelper_prefetchRulesForWaypoints___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 licensePlate];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [*(a1 + 32) workQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__MNLPRRuleHelper_prefetchRulesForWaypoints___block_invoke_2;
    v8[3] = &unk_1E8430D50;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    dispatch_async(v5, v8);
  }
}

void __45__MNLPRRuleHelper_prefetchRulesForWaypoints___block_invoke_2(uint64_t a1)
{
  v2 = _regionsFromLatLngs(*(a1 + 32));
  [*(a1 + 40) _findResourceNamesForRegions:v2 forceUpdate:0 asyncCompletion:0];
}

- (id)workQueue
{
  global_queue = geo_get_global_queue();

  return global_queue;
}

@end