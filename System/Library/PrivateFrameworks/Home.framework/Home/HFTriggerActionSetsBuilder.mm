@interface HFTriggerActionSetsBuilder
- (BOOL)areActionsAffectedByEndEvents;
- (BOOL)hasActions;
- (BOOL)isShortcutOwned;
- (HFSetDiff)namedActionSetsDiff;
- (HFTriggerActionSetsBuilder)initWithActionSets:(id)sets inHome:(id)home filterEmptyActionSets:(BOOL)actionSets;
- (NSArray)allActionBuilders;
- (NSArray)allActionSets;
- (NSArray)anonymousActionBuilder;
- (NSArray)namedActionSets;
- (WFHomeWorkflow)homeWorkflow;
- (id)_generateSummaryInformation;
- (id)_generateSummaryInformationForShortcutOwnedTrigger;
- (id)_generateSummaryInformationForStandardTrigger;
- (id)_removeDuplicateActionSets:(id)sets;
- (id)_uniqueServiceGroupForServices:(id)services;
- (id)compareToObject:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createActionSetsForShortcuts;
- (id)mediaAccessoriesForPlaybackAction:(id)action;
- (void)_generateMatterRepresentables:(id)representables;
- (void)_generateStandaloneServices:(id)services andMediaAccessories:(id)accessories;
- (void)_removeAllNamedActionsSets;
- (void)addActionSetBuilder:(id)builder;
- (void)addActionSetIfNotPresent:(id)present;
- (void)addAnonymousActionBuilder:(id)builder;
- (void)convertToHomeWorkflowActionSet:(id)set;
- (void)convertToHomeWorkflowActionSetIfNeeded;
- (void)defaultActionsForShortcut;
- (void)removeActionSetBuilder:(id)builder;
- (void)removeActionSetIfPresent:(id)present;
- (void)removeAllActionsAndActionSets;
- (void)removeAnonymousActionBuilder:(id)builder;
- (void)resetActionSetBuilders;
- (void)resetAllActionSets;
- (void)setFromTriggerActionSetsBuilder:(id)builder;
- (void)setHomeWorkflow:(id)workflow;
- (void)updateActionSetBuilder:(id)builder;
- (void)updateActionSetsInTriggerBuilder:(id)builder;
- (void)updateAnonymousActionBuilder:(id)builder;
- (void)updateFromTriggerActionSetsBuilder:(id)builder;
@end

@implementation HFTriggerActionSetsBuilder

- (id)_generateSummaryInformation
{
  if ([(HFTriggerActionSetsBuilder *)self isShortcutOwned])
  {
    [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForShortcutOwnedTrigger];
  }

  else
  {
    [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForStandardTrigger];
  }
  v3 = ;

  return v3;
}

- (id)_generateSummaryInformationForShortcutOwnedTrigger
{
  homeWorkflow = [(HFTriggerActionSetsBuilder *)self homeWorkflow];
  if (homeWorkflow)
  {
    v4 = [HFTriggerActionsSetsUISummary alloc];
    summaryString = [homeWorkflow summaryString];
    summaryIconDescriptors = [homeWorkflow summaryIconDescriptors];
    _generateSummaryInformationForStandardTrigger = [(HFTriggerActionsSetsUISummary *)v4 initWithSummaryText:summaryString summaryIconDescriptors:summaryIconDescriptors];
  }

  else
  {
    _generateSummaryInformationForStandardTrigger = [(HFTriggerActionSetsBuilder *)self _generateSummaryInformationForStandardTrigger];
  }

  return _generateSummaryInformationForStandardTrigger;
}

- (id)_generateSummaryInformationForStandardTrigger
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(HFTriggerActionsSetsUISummary);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v5 = [namedActionSets countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v63;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v63 != v7)
        {
          objc_enumerationMutation(namedActionSets);
        }

        v9 = *(*(&v62 + 1) + 8 * i);
        name = [v9 name];
        [(HFTriggerActionsSetsUISummary *)v3 addSceneNamed:name];

        actionSet = [v9 actionSet];
        hf_iconDescriptor = [actionSet hf_iconDescriptor];

        if (hf_iconDescriptor)
        {
          [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:hf_iconDescriptor];
        }
      }

      v6 = [namedActionSets countByEnumeratingWithState:&v62 objects:v69 count:16];
    }

    while (v6);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(HFTriggerActionSetsBuilder *)self _generateStandaloneServices:v13 andMediaAccessories:v14];
  v15 = [(HFTriggerActionSetsBuilder *)self _uniqueServiceGroupForServices:v13];
  v16 = v15;
  if (v15)
  {
    name2 = [v15 name];
    [(HFTriggerActionsSetsUISummary *)v3 setUniqueServiceGroupName:name2];
  }

  v49 = v16;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v18 = v13;
  v19 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v59;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v59 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v58 + 1) + 8 * j);
        name3 = [v23 name];
        [(HFTriggerActionsSetsUISummary *)v3 addServiceNamed:name3];

        hf_iconDescriptor2 = [v23 hf_iconDescriptor];
        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:hf_iconDescriptor2];
      }

      v20 = [v18 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v20);
  }

  v48 = v18;

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = v14;
  v27 = [v26 countByEnumeratingWithState:&v54 objects:v67 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v55;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v54 + 1) + 8 * k);
        hf_serviceNameComponents = [v31 hf_serviceNameComponents];
        composedString = [hf_serviceNameComponents composedString];
        [(HFTriggerActionsSetsUISummary *)v3 addMediaAccessoryNamed:composedString];

        v34 = [HFMediaHelper mediaIconDescriptorForMediaContainer:v31];
        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v34];
      }

      v28 = [v26 countByEnumeratingWithState:&v54 objects:v67 count:16];
    }

    while (v28);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [(HFTriggerActionSetsBuilder *)self _generateMatterRepresentables:v35];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v50 objects:v66 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v51;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v50 + 1) + 8 * m);
        hf_serviceNameComponents2 = [v41 hf_serviceNameComponents];
        serviceName = [hf_serviceNameComponents2 serviceName];
        [(HFTriggerActionsSetsUISummary *)v3 addMatterRepresentableNamed:serviceName];

        v44 = [HFImageIconDescriptor alloc];
        hf_iconIdentifier = [v41 hf_iconIdentifier];
        v46 = [(HFImageIconDescriptor *)v44 initWithImageIdentifier:hf_iconIdentifier];

        [(HFTriggerActionsSetsUISummary *)v3 addIconDescriptor:v46];
      }

      v38 = [v36 countByEnumeratingWithState:&v50 objects:v66 count:16];
    }

    while (v38);
  }

  return v3;
}

- (void)_generateStandaloneServices:(id)services andMediaAccessories:(id)accessories
{
  v30 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  accessoriesCopy = accessories;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];

  v9 = [actions countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(actions);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        getOrCreateAction = [v13 getOrCreateAction];
        if (getOrCreateAction)
        {
          objc_opt_class();
          v15 = getOrCreateAction;
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (v17)
          {
            characteristic = [v17 characteristic];
            action = objc_msgSend_service(characteristic);

            if (!action)
            {
              characteristic2 = [v17 characteristic];
              NSLog(&cfstr_UnexpectedlyGo.isa, v17, characteristic2);
            }

            [servicesCopy na_safeAddObject:action];
          }

          else
          {
            objc_opt_class();
            action = [v13 action];
            if (objc_opt_isKindOfClass())
            {
              v21 = action;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;

            if (v22)
            {
              v23 = [(HFTriggerActionSetsBuilder *)self mediaAccessoriesForPlaybackAction:v22];
              [accessoriesCopy unionSet:v23];
            }

            else
            {
              action = 0;
            }
          }
        }
      }

      v10 = [actions countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }
}

- (void)_generateMatterRepresentables:(id)representables
{
  v22 = *MEMORY[0x277D85DE8];
  representablesCopy = representables;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  actions = [anonymousActionSetBuilder actions];

  v7 = [actions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(actions);
        }

        getOrCreateAction = [*(*(&v17 + 1) + 8 * i) getOrCreateAction];
        if (getOrCreateAction)
        {
          objc_opt_class();
          v12 = getOrCreateAction;
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            representedAccessory = [v14 representedAccessory];
            if (representedAccessory)
            {
              v16 = [[HFMatterAccessoryRepresentable alloc] initWithAccessory:representedAccessory];
              [representablesCopy na_safeAddObject:v16];
            }

            else
            {
              NSLog(&cfstr_UnexpectedlyGo_0.isa, v14);
            }
          }
        }
      }

      v8 = [actions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)_uniqueServiceGroupForServices:(id)services
{
  v24 = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v6 = objc_msgSend_home(anonymousActionSetBuilder);
  serviceGroups = [v6 serviceGroups];

  v8 = [serviceGroups countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(serviceGroups);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 hf_isSupported])
        {
          v14 = objc_alloc(MEMORY[0x277CBEB98]);
          services = [v13 services];
          v16 = [v14 initWithArray:services];

          if ([v16 intersectsSet:servicesCopy])
          {
            if (v10 || ![v16 isEqualToSet:servicesCopy])
            {

              v17 = 0;
              goto LABEL_18;
            }

            v10 = v13;
          }
        }
      }

      v9 = [serviceGroups countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  v10 = v10;
  v17 = v10;
LABEL_18:

  return v17;
}

- (id)mediaAccessoriesForPlaybackAction:(id)action
{
  mediaProfiles = [action mediaProfiles];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke;
  v7[3] = &unk_277DF7DD0;
  v7[4] = self;
  v5 = [mediaProfiles na_map:v7];

  return v5;
}

void *__68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) anonymousActionSetBuilder];
  v5 = objc_msgSend_home(v4);
  v6 = [v5 mediaSystems];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_2;
  v12[3] = &unk_277DF7250;
  v13 = v3;
  v7 = v3;
  v8 = [v6 na_firstObjectPassingTest:v12];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v9;
}

uint64_t __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 accessories];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_3;
  v6[3] = &unk_277DF3888;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __68__HFTriggerActionSetsBuilder_UI__mediaAccessoriesForPlaybackAction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 hf_mediaRouteIdentifier];
  v5 = [*(a1 + 32) hf_mediaRouteIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (void)updateActionSetsInTriggerBuilder:(id)builder
{
  builderCopy = builder;
  namedActionSetsDiff = [(HFTriggerActionSetsBuilder *)self namedActionSetsDiff];
  toSet = [namedActionSetsDiff toSet];
  allObjects = [toSet allObjects];
  v10 = [allObjects na_map:&__block_literal_global_81];

  [builderCopy setActionSets:v10];
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  triggerOwnedActionSet = [builderCopy triggerOwnedActionSet];

  [anonymousActionSetBuilder updateActionsInBuilder:triggerOwnedActionSet];
}

- (HFTriggerActionSetsBuilder)initWithActionSets:(id)sets inHome:(id)home filterEmptyActionSets:(BOOL)actionSets
{
  actionSetsCopy = actionSets;
  v40 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  homeCopy = home;
  v38.receiver = self;
  v38.super_class = HFTriggerActionSetsBuilder;
  v10 = [(HFTriggerActionSetsBuilder *)&v38 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_home, home);
    v12 = [(HFTriggerActionSetsBuilder *)v11 _removeDuplicateActionSets:setsCopy];
    if (actionSetsCopy)
    {
      v13 = [(HFTriggerActionSetsBuilder *)v11 _removeEmptyActionSets:v12];

      v12 = v13;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        hf_shortcutAction = [*(*(&v34 + 1) + 8 * v18) hf_shortcutAction];
        [(HFTriggerActionSetsBuilder *)v11 setShortcutAction:hf_shortcutAction];

        shortcutAction = [(HFTriggerActionSetsBuilder *)v11 shortcutAction];

        if (shortcutAction)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v16)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __78__HFTriggerActionSetsBuilder_initWithActionSets_inHome_filterEmptyActionSets___block_invoke;
    v32[3] = &unk_277DFA398;
    v21 = homeCopy;
    v33 = v21;
    v22 = [v14 na_map:v32];
    v23 = [v22 mutableCopy];

    v24 = [v14 na_firstObjectPassingTest:&__block_literal_global_88];
    v25 = [HFMutableSetDiff alloc];
    v26 = [MEMORY[0x277CBEB98] setWithArray:v23];
    v27 = [(HFMutableSetDiff *)v25 initWithFromSet:v26];
    [(HFTriggerActionSetsBuilder *)v11 setActionSetBuilders:v27];

    v28 = [HFTriggerAnonymousActionSetBuilder alloc];
    if (v24)
    {
      v29 = [(HFTriggerAnonymousActionSetBuilder *)v28 initWithExistingObject:v24 inHome:v21];
    }

    else
    {
      v29 = [(HFItemBuilder *)v28 initWithHome:v21];
    }

    v30 = v29;
    [(HFTriggerActionSetsBuilder *)v11 setAnonymousActionSetBuilder:v29];
  }

  return v11;
}

HFActionSetBuilder *__78__HFTriggerActionSetsBuilder_initWithActionSets_inHome_filterEmptyActionSets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isAnonymous])
  {
    v4 = 0;
  }

  else
  {
    v4 = [[HFActionSetBuilder alloc] initWithExistingObject:v3 inHome:*(a1 + 32)];
  }

  return v4;
}

- (id)_removeDuplicateActionSets:(id)sets
{
  v32 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  v4 = [MEMORY[0x277CBEB58] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = setsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        uniqueIdentifier = [*(*(&v26 + 1) + 8 * i) uniqueIdentifier];
        [v4 addObject:uniqueIdentifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * j);
        uniqueIdentifier2 = [v17 uniqueIdentifier];
        v19 = [v4 containsObject:uniqueIdentifier2];

        if (v19)
        {
          uniqueIdentifier3 = [v17 uniqueIdentifier];
          [v4 removeObject:uniqueIdentifier3];

          [array addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v14);
  }

  return array;
}

BOOL __53__HFTriggerActionSetsBuilder__removeEmptyActionSets___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setFromTriggerActionSetsBuilder:(id)builder
{
  builderCopy = builder;
  v5 = [HFMutableSetDiff alloc];
  namedActionSetsDiff = [builderCopy namedActionSetsDiff];
  toSet = [namedActionSetsDiff toSet];
  v8 = [(HFMutableSetDiff *)v5 initWithFromSet:toSet];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v8];

  v9 = [HFTriggerAnonymousActionSetBuilder alloc];
  v10 = objc_msgSend_home(self);
  v11 = [(HFItemBuilder *)v9 initWithHome:v10];
  [(HFTriggerActionSetsBuilder *)self setAnonymousActionSetBuilder:v11];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  anonymousActionSetBuilder2 = [builderCopy anonymousActionSetBuilder];

  actionBuilders = [anonymousActionSetBuilder2 actionBuilders];
  [anonymousActionSetBuilder updateActionBuildersDiff:actionBuilders];
}

- (void)updateFromTriggerActionSetsBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [builderCopy actionSetBuilders];
  v6 = [actionSetBuilders mutableCopy];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v6];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  anonymousActionSetBuilder2 = [builderCopy anonymousActionSetBuilder];
  actionBuilders = [anonymousActionSetBuilder2 actionBuilders];
  [anonymousActionSetBuilder updateActionBuildersDiff:actionBuilders];

  shortcutAction = [builderCopy shortcutAction];

  [(HFTriggerActionSetsBuilder *)self setShortcutAction:shortcutAction];
}

- (HFSetDiff)namedActionSetsDiff
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v3 = [actionSetBuilders copy];

  return v3;
}

- (BOOL)isShortcutOwned
{
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  if ([anonymousActionSetBuilder actionSetType] == 1)
  {
    v4 = 1;
  }

  else
  {
    shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v4 = shortcutAction != 0;
  }

  return v4;
}

- (WFHomeWorkflow)homeWorkflow
{
  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
  shortcut = [shortcutAction shortcut];

  return shortcut;
}

- (void)setHomeWorkflow:(id)workflow
{
  workflowCopy = workflow;
  if (workflowCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CD1DF8]) initWithShortcut:workflowCopy];
    [(HFTriggerActionSetsBuilder *)self setShortcutAction:v4];
  }

  else
  {
    [(HFTriggerActionSetsBuilder *)self setShortcutAction:0];
  }
}

- (BOOL)hasActions
{
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  if ([namedActionSets count])
  {
    v4 = 1;
  }

  else
  {
    anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    actions = [anonymousActionSetBuilder actions];
    if ([actions count])
    {
      v4 = 1;
    }

    else
    {
      shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
      v4 = shortcutAction != 0;
    }
  }

  return v4;
}

- (NSArray)namedActionSets
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  toSet = [actionSetBuilders toSet];
  allObjects = [toSet allObjects];

  return allObjects;
}

- (NSArray)anonymousActionBuilder
{
  v10[1] = *MEMORY[0x277D85DE8];
  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];

  if (shortcutAction)
  {
    shortcutAction2 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v5 = objc_msgSend_home(self);
    anonymousActionSetBuilder = [HFActionBuilder actionBuilderForAction:shortcutAction2 inHome:v5];

    v10[0] = anonymousActionSetBuilder;
    actions = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    actions = [anonymousActionSetBuilder actions];
  }

  v8 = actions;

  return v8;
}

- (void)addActionSetBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders addObject:builderCopy];
}

- (void)updateActionSetBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders updateObject:builderCopy];
}

- (void)removeActionSetBuilder:(id)builder
{
  builderCopy = builder;
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders deleteObject:builderCopy];
}

- (void)addAnonymousActionBuilder:(id)builder
{
  builderCopy = builder;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder addAction:builderCopy];
}

- (void)updateAnonymousActionBuilder:(id)builder
{
  builderCopy = builder;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder updateAction:builderCopy];
}

- (void)removeAnonymousActionBuilder:(id)builder
{
  builderCopy = builder;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder removeAction:builderCopy];
}

- (void)removeAllActionsAndActionSets
{
  v16 = *MEMORY[0x277D85DE8];
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [namedActionSets copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HFTriggerActionSetsBuilder *)self removeActionSetBuilder:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  [anonymousActionSetBuilder removeAllActions];
}

- (BOOL)areActionsAffectedByEndEvents
{
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v5 = [namedActionSets arrayByAddingObject:anonymousActionSetBuilder];

  LOBYTE(anonymousActionSetBuilder) = [v5 na_any:&__block_literal_global_14_4];
  return anonymousActionSetBuilder;
}

- (void)resetAllActionSets
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB98] set];
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  toSet = [actionSetBuilders toSet];
  v6 = [HFSetDiff diffFromSet:v3 toSet:toSet];
  v7 = [v6 mutableCopy];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v7];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v9 = [HFTriggerAnonymousActionSetBuilder alloc];
  v10 = objc_msgSend_home(self);
  v11 = [(HFItemBuilder *)v9 initWithHome:v10];
  [(HFTriggerActionSetsBuilder *)self setAnonymousActionSetBuilder:v11];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  actions = [anonymousActionSetBuilder actions];
  v13 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(actions);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        anonymousActionSetBuilder2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
        copyForCreatingNewAction = [v17 copyForCreatingNewAction];
        [anonymousActionSetBuilder2 addAction:copyForCreatingNewAction];

        ++v16;
      }

      while (v14 != v16);
      v14 = [actions countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }
}

- (void)resetActionSetBuilders
{
  v3 = [HFMutableSetDiff alloc];
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  toSet = [actionSetBuilders toSet];
  v5 = [(HFMutableSetDiff *)v3 initWithFromSet:toSet];
  [(HFTriggerActionSetsBuilder *)self setActionSetBuilders:v5];
}

- (void)addActionSetIfNotPresent:(id)present
{
  presentCopy = present;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HFTriggerActionSetsBuilder_addActionSetIfNotPresent___block_invoke;
  v11[3] = &unk_277DFA3C0;
  v6 = presentCopy;
  v12 = v6;
  v7 = [namedActionSets na_any:v11];

  if (v6 && (v7 & 1) == 0)
  {
    v8 = [HFActionSetBuilder alloc];
    v9 = objc_msgSend_home(self);
    v10 = [(HFActionSetBuilder *)v8 initWithExistingObject:v6 inHome:v9];

    [(HFTriggerActionSetsBuilder *)self addActionSetBuilder:v10];
  }
}

uint64_t __55__HFTriggerActionSetsBuilder_addActionSetIfNotPresent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (void)removeActionSetIfPresent:(id)present
{
  presentCopy = present;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __55__HFTriggerActionSetsBuilder_removeActionSetIfPresent___block_invoke;
  v11 = &unk_277DFA3C0;
  v6 = presentCopy;
  v12 = v6;
  v7 = [namedActionSets na_firstObjectPassingTest:&v8];

  if (v7)
  {
    [(HFTriggerActionSetsBuilder *)self removeActionSetBuilder:v7];
  }

  else
  {
    NSLog(&cfstr_CouldNotFindEx.isa, v6, v8, v9, v10, v11);
  }
}

uint64_t __55__HFTriggerActionSetsBuilder_removeActionSetIfPresent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [*(a1 + 32) uniqueIdentifier];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)createActionSetsForShortcuts
{
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v4 = [namedActionSets na_map:&__block_literal_global_20_5];
  v5 = [v4 mutableCopy];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  LODWORD(v4) = [anonymousActionSetBuilder hasActions];

  if (v4)
  {
    anonymousActionSetBuilder2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    shortcutsComponentActionSet = [anonymousActionSetBuilder2 shortcutsComponentActionSet];
    [v5 na_safeAddObject:shortcutsComponentActionSet];
  }

  return v5;
}

- (NSArray)allActionSets
{
  v3 = MEMORY[0x277CBEB18];
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v5 = [namedActionSets na_map:&__block_literal_global_22_4];
  v6 = [v3 arrayWithArray:v5];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  LODWORD(v5) = [anonymousActionSetBuilder hasActions];

  if (v5)
  {
    anonymousActionSetBuilder2 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    actionSet = [anonymousActionSetBuilder2 actionSet];

    if (actionSet)
    {
      anonymousActionSetBuilder3 = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
      v11 = [anonymousActionSetBuilder3 copy];

      [v11 setActionSet:0];
      anonymousActionSetBuilder2 = v11;
    }

    getOrCreateActionSet = [anonymousActionSetBuilder2 getOrCreateActionSet];
    [v6 addObject:getOrCreateActionSet];
  }

  return v6;
}

- (NSArray)allActionBuilders
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  anonymousActionBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionBuilder];
  v5 = [v3 initWithArray:anonymousActionBuilder];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
  v7 = [namedActionSets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(namedActionSets);
        }

        actions = [*(*(&v13 + 1) + 8 * i) actions];
        [v5 addObjectsFromArray:actions];
      }

      v8 = [namedActionSets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)convertToHomeWorkflowActionSet:(id)set
{
  [(HFTriggerActionSetsBuilder *)self setHomeWorkflow:set];

  [(HFTriggerActionSetsBuilder *)self convertToHomeWorkflowActionSetIfNeeded];
}

- (void)convertToHomeWorkflowActionSetIfNeeded
{
  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];

  if (shortcutAction)
  {
    shortcutAction2 = [(HFTriggerActionSetsBuilder *)self shortcutAction];
    v5 = objc_msgSend_home(self);
    v7 = [HFActionBuilder actionBuilderForAction:shortcutAction2 inHome:v5];

    anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
    [anonymousActionSetBuilder addAction:v7 actionSetType:1];

    [(HFTriggerActionSetsBuilder *)self _removeAllNamedActionsSets];
  }
}

- (void)_removeAllNamedActionsSets
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  [actionSetBuilders deleteAllObjects];
}

- (void)defaultActionsForShortcut
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  actionBuilders = [anonymousActionSetBuilder actionBuilders];
  toSet = [actionBuilders toSet];

  v5 = [toSet countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(toSet);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        objc_opt_class();
        v10 = v9;
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          [v12 defaultActionIfMediaActionInvalid];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [toSet countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  actionSetBuilders = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  fromSet = [actionSetBuilders fromSet];
  allObjects = [fromSet allObjects];
  v8 = [allObjects na_map:&__block_literal_global_26_0];

  v9 = [objc_opt_class() allocWithZone:zone];
  v10 = objc_msgSend_home(self);
  v11 = [v9 initWithActionSets:v8 inHome:v10];

  actionSetBuilders2 = [(HFTriggerActionSetsBuilder *)self actionSetBuilders];
  v13 = [actionSetBuilders2 mutableCopyWithZone:zone];
  [v11 setActionSetBuilders:v13];

  anonymousActionSetBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionSetBuilder];
  v15 = [anonymousActionSetBuilder copyWithZone:zone];
  [v11 setAnonymousActionSetBuilder:v15];

  shortcutAction = [(HFTriggerActionSetsBuilder *)self shortcutAction];
  [v11 setShortcutAction:shortcutAction];

  return v11;
}

- (id)compareToObject:(id)object
{
  objectCopy = object;
  v5 = [[HFComparisonResult alloc] initWithObjectA:self objectB:objectCopy];
  if (![(HFComparisonResult *)v5 containsCriticalDifference])
  {
    namedActionSets = [(HFTriggerActionSetsBuilder *)self namedActionSets];
    namedActionSets2 = [objectCopy namedActionSets];
    v8 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actionSets" objectsA:namedActionSets objectsB:namedActionSets2];
    [(HFComparisonResult *)v5 add:v8];

    anonymousActionBuilder = [(HFTriggerActionSetsBuilder *)self anonymousActionBuilder];
    anonymousActionBuilder2 = [objectCopy anonymousActionBuilder];
    v11 = [HFContainedObjectListDifference containedObjectDifferenceWithKey:@"actions" objectsA:anonymousActionBuilder objectsB:anonymousActionBuilder2];
    [(HFComparisonResult *)v5 add:v11];
  }

  return v5;
}

@end