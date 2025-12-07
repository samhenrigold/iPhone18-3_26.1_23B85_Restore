@interface WFHomeAccessoryAction
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (HMHome)home;
- (NSArray)actionSets;
- (NSArray)shortcutsDictionaryRepresentations;
- (NSString)homeIdentifier;
- (id)homeName;
- (id)localizedSummaryText;
- (id)parameterStateForKey:(id)key fallingBackToDefaultValue:(BOOL)value;
- (void)dealloc;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)initializeParameters;
- (void)localizedParameterSummaryWithCompletion:(id)completion;
- (void)performHomeAccessoryAction;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasAddedToWorkflowByUser:(id)user;
@end

@implementation WFHomeAccessoryAction

- (void)homeManagerDidUpdateHomes:(id)homes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WFHomeAccessoryAction_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)localizedSummaryText
{
  home = [(WFHomeAccessoryAction *)self home];
  if (home)
  {
    v4 = objc_alloc(getHFTriggerActionSetsBuilderClass_35823());
    actionSets = [(WFHomeAccessoryAction *)self actionSets];
    v6 = [v4 initWithActionSets:actionSets inHome:home];
  }

  else
  {
    v6 = 0;
  }

  actionSetsSummary = [v6 actionSetsSummary];
  summaryText = [actionSetsSummary summaryText];

  if ([summaryText length])
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = WFLocalizedString(@"Set %@");
    localizedName = [v9 stringWithFormat:v10, summaryText];
  }

  else
  {
    localizedName = [(WFAction *)self localizedName];
  }

  return localizedName;
}

- (void)localizedParameterSummaryWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[WFHomeManager sharedManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__WFHomeAccessoryAction_localizedParameterSummaryWithCompletion___block_invoke;
  v7[3] = &unk_1E837E1F8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 ensureHomesAreLoadedWithCompletionHandler:v7];
}

void __65__WFHomeAccessoryAction_localizedParameterSummaryWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) localizedSummaryText];
  (*(v1 + 16))(v1, v2);
}

- (id)homeName
{
  home = [(WFHomeAccessoryAction *)self home];
  name = [home name];

  return name;
}

- (void)performHomeAccessoryAction
{
  v24 = *MEMORY[0x1E69E9840];
  v11 = [(WFAction *)self parameterStateForKey:@"WFHomeTriggerActionSets"];
  home = [v11 home];
  actionSets = [v11 actionSets];
  v4 = dispatch_group_create();
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__35843;
  v21[4] = __Block_byref_object_dispose__35844;
  v22 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = actionSets;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        dispatch_group_enter(v4);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __51__WFHomeAccessoryAction_performHomeAccessoryAction__block_invoke;
        v14[3] = &unk_1E8378A38;
        v16 = v21;
        v15 = v4;
        [home executeActionSet:v8 completionHandler:v14];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v9 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__WFHomeAccessoryAction_performHomeAccessoryAction__block_invoke_2;
  block[3] = &unk_1E837F898;
  block[4] = self;
  block[5] = v21;
  dispatch_group_notify(v4, v9, block);

  _Block_object_dispose(v21, 8);
}

void __51__WFHomeAccessoryAction_performHomeAccessoryAction__block_invoke(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  v5 = getHMErrorDomain();
  if (objc_msgSend_isEqualToString_(v4))
  {
    v6 = [v3 code];

    if (v6 == 25)
    {
      v7 = MEMORY[0x1E696ABC0];
      v15[0] = *MEMORY[0x1E696A588];
      v8 = WFLocalizedString(@"Scene or Accessory Not Found");
      v16[0] = v8;
      v15[1] = *MEMORY[0x1E696A578];
      v9 = WFLocalizedString(@"Please make sure the selected Home scene or accessory is available in your home.");
      v16[1] = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v11 = [v7 errorWithDomain:@"WFActionErrorDomain" code:5 userInfo:v10];

      v3 = v11;
    }
  }

  else
  {
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v3;
  v14 = v3;

  dispatch_group_leave(*(a1 + 32));
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v4 = +[WFHomeManager sharedManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke;
  v5[3] = &unk_1E837FA70;
  v5[4] = self;
  [v4 ensureHomesAreLoadedWithCompletionHandler:v5];
}

void __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) actionSets];
  v3 = [*(a1 + 32) workflow];
  v4 = [v3 environment];

  v5 = [*(a1 + 32) userInterface];
  v6 = [v5 userInterfaceType];
  if (v6 == *MEMORY[0x1E6997160])
  {
    v9 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) userInterface];
    v8 = [v7 userInterfaceType];
    v9 = v8 != *MEMORY[0x1E6997168];
  }

  if (v4 == 1 || v9)
  {
LABEL_32:
    [*(a1 + 32) performHomeAccessoryAction];
    goto LABEL_33;
  }

  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v2;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:buf count:16];
  if (!v11)
  {
LABEL_14:

LABEL_31:
    goto LABEL_32;
  }

  v12 = v11;
  v13 = *v45;
LABEL_8:
  v14 = 0;
  while (1)
  {
    if (*v45 != v13)
    {
      objc_enumerationMutation(v10);
    }

    if ([*(*(&v44 + 1) + 8 * v14) requiresDeviceUnlock])
    {
      break;
    }

    if (v12 == ++v14)
    {
      v12 = [v10 countByEnumeratingWithState:&v44 objects:buf count:16];
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  v15 = VCIsDeviceLocked();
  v16 = [*(a1 + 32) progress];
  v17 = [v16 userInfo];
  v18 = [v17 objectForKeyedSubscript:@"WFActionDidResume"];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    goto LABEL_32;
  }

  v20 = [*(a1 + 32) runningDelegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [*(a1 + 32) runningDelegate];
    v10 = [v22 currentRunningContextForAction:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  v23 = [v10 rootWorkflowIdentifier];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v26 = [*(a1 + 32) workflow];
    v25 = [v26 workflowID];
  }

  v27 = +[WFDatabaseProxy defaultDatabase];
  v28 = [v27 configuredTriggersForWorkflowID:v25 error:0];

  v29 = [v28 firstObject];
  v30 = v29;
  if (v29)
  {
    if (![v29 shouldPrompt])
    {
      v31 = [v30 trigger];
      LOBYTE(v15) = v15 | [objc_opt_class() isUserInitiated] ^ 1;
    }

    if (v15)
    {
      goto LABEL_26;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_26:
  v32 = objc_opt_new();
  [v32 setPreferredStyle:1];
  v33 = [v30 trigger];
  v34 = [v33 localizedDescriptionWithConfigurationSummary];
  [v32 setTitle:v34];

  v35 = MEMORY[0x1E696AEC0];
  v36 = WFLocalizedStringWithKey(@"TapToRunAction", @"Tap to run “%@”");
  v37 = [*(a1 + 32) localizedSummaryText];
  v38 = [v35 stringWithFormat:v36, v37];
  [v32 setMessage:v38];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke_2;
  v43[3] = &unk_1E837FA70;
  v43[4] = *(a1 + 32);
  [v32 setSuccessHandler:v43];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke_3;
  v42[3] = &unk_1E837FA70;
  v42[4] = *(a1 + 32);
  [v32 setCancellationHandler:v42];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke_4;
  v41[3] = &unk_1E837FA70;
  v41[4] = *(a1 + 32);
  [v32 setFailureHandler:v41];
  v39 = getWFTriggersLogObject();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v49 = "[WFHomeAccessoryAction runAsynchronouslyWithInput:]_block_invoke";
    _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_INFO, "%s Presenting secure accessory confirmation dialog and suspending (if the display is off)", buf, 0xCu);
  }

  v40 = [*(a1 + 32) userInterface];
  [v40 presentAlert:v32];

LABEL_33:
}

void __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] userCancelledError];
  [v1 finishRunningWithError:v2];
}

void __52__WFHomeAccessoryAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 deviceLockedError];
  [v1 finishRunningWithError:v2];
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  stateCopy = state;
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy))
  {
    v8 = stateCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    value = [v11 value];

    if (value)
    {
      v13 = [WFHFTriggerActionSetsBuilderParameterState alloc];
      v14 = [(WFHFTriggerActionSetsBuilderParameterState *)v13 initWithActionSets:MEMORY[0x1E695E0F0] homeIdentifier:value];
      v10 = [(WFHomeAccessoryAction *)self setParameterState:v14 forKey:@"WFHomeTriggerActionSets"];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFHomeAccessoryAction;
    v10 = [(WFAction *)&v16 setParameterState:stateCopy forKey:keyCopy];
  }

  return v10;
}

- (id)parameterStateForKey:(id)key fallingBackToDefaultValue:(BOOL)value
{
  valueCopy = value;
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy))
  {
    homeIdentifier = [(WFHomeAccessoryAction *)self homeIdentifier];
    if (homeIdentifier)
    {
      v8 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:homeIdentifier];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = WFHomeAccessoryAction;
    v8 = [(WFAction *)&v10 parameterStateForKey:keyCopy fallingBackToDefaultValue:valueCopy];
  }

  return v8;
}

- (NSArray)shortcutsDictionaryRepresentations
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHomeTriggerActionSets"];
  serializedActionSets = [v2 serializedActionSets];

  return serializedActionSets;
}

- (NSString)homeIdentifier
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHomeTriggerActionSets"];
  homeIdentifier = [v2 homeIdentifier];

  return homeIdentifier;
}

- (NSArray)actionSets
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self parameterStateForKey:@"WFHomeTriggerActionSets"];
  v4 = getWFHomeLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      actionSets = [v3 actionSets];
      v20 = 136315394;
      v21 = "[WFHomeAccessoryAction actionSets]";
      v22 = 2112;
      v23 = actionSets;
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s Retrieved action sets from parameter state: %@", &v20, 0x16u);
    }

    actionSets2 = [v3 actionSets];
  }

  else
  {
    if (v5)
    {
      v20 = 136315138;
      v21 = "[WFHomeAccessoryAction actionSets]";
      _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEBUG, "%s No WFHFTriggerActionSetsBuilderParameterState falling back to old run scene", &v20, 0xCu);
    }

    v8 = [(WFAction *)self supplementalParameterValueForKey:@"WFHomeName" ofClass:objc_opt_class()];
    v9 = [(WFAction *)self supplementalParameterValueForKey:@"WFHomeSceneName" ofClass:objc_opt_class()];
    v10 = v9;
    actionSets2 = 0;
    if (v8 && v9)
    {
      v11 = +[WFHomeManager sharedManager];
      v12 = [v11 homeNamed:v8];

      if (v12)
      {
        v13 = +[WFHomeManager sharedManager];
        v14 = [v13 sceneNamed:v10 inHome:v12];

        if (v14 && (v24[0] = v14, [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          actionSets2 = v15;
          v16 = [WFHFTriggerActionSetsBuilderParameterState alloc];
          v17 = WFSerializableHomeIdentifier(v12);
          v18 = [(WFHFTriggerActionSetsBuilderParameterState *)v16 initWithActionSets:actionSets2 homeIdentifier:v17];
          [(WFHomeAccessoryAction *)self setParameterState:v18 forKey:@"WFHomeTriggerActionSets"];
        }

        else
        {
          [(WFHomeAccessoryAction *)self setParameterState:0 forKey:@"WFHomeTriggerActionSets"];
          actionSets2 = 0;
        }

        [(WFAction *)self setSupplementalParameterValue:0 forKey:@"WFHomeName"];
        [(WFAction *)self setSupplementalParameterValue:0 forKey:@"WFHomeSceneName"];
      }

      else
      {
        actionSets2 = 0;
      }
    }
  }

  return actionSets2;
}

- (HMHome)home
{
  v2 = [(WFAction *)self parameterStateForKey:@"WFHomeTriggerActionSets"];
  home = [v2 home];

  return home;
}

- (void)wasAddedToWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v7.receiver = self;
  v7.super_class = WFHomeAccessoryAction;
  [(WFAction *)&v7 wasAddedToWorkflow:workflowCopy];
  v5 = [(WFAction *)self parameterForKey:@"WFHome"];
  v6 = [workflowCopy environment] == 2 || objc_msgSend(workflowCopy, "environment") == 1;
  [v5 setHidden:v6];
}

- (void)wasAddedToWorkflowByUser:(id)user
{
  userCopy = user;
  home = [(WFHomeAccessoryAction *)self home];

  if (!home)
  {
    v6 = +[WFHomeManager sharedManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__WFHomeAccessoryAction_wasAddedToWorkflowByUser___block_invoke;
    v8[3] = &unk_1E837FA70;
    v8[4] = self;
    [v6 ensureHomesAreLoadedWithCompletionHandler:v8];
  }

  v7.receiver = self;
  v7.super_class = WFHomeAccessoryAction;
  [(WFAction *)&v7 wasAddedToWorkflowByUser:userCopy];
}

void __50__WFHomeAccessoryAction_wasAddedToWorkflowByUser___block_invoke(uint64_t a1)
{
  v2 = +[WFHomeManager sharedManager];
  v6 = [v2 primaryHome];

  if (v6)
  {
    v3 = [WFHFTriggerActionSetsBuilderParameterState alloc];
    v4 = WFSerializableHomeIdentifier(v6);
    v5 = [(WFHFTriggerActionSetsBuilderParameterState *)v3 initWithActionSets:MEMORY[0x1E695E0F0] homeIdentifier:v4];

    [*(a1 + 32) setParameterState:v5 forKey:@"WFHomeTriggerActionSets"];
  }
}

- (void)dealloc
{
  v3 = +[WFHomeManager sharedManager];
  [v3 removeEventObserver:self];

  v4.receiver = self;
  v4.super_class = WFHomeAccessoryAction;
  [(WFHomeAccessoryAction *)&v4 dealloc];
}

- (void)initializeParameters
{
  v4.receiver = self;
  v4.super_class = WFHomeAccessoryAction;
  [(WFAction *)&v4 initializeParameters];
  v3 = +[WFHomeManager sharedManager];
  [v3 addEventObserver:self];
}

@end