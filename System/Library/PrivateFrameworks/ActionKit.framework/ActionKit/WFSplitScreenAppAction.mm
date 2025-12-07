@interface WFSplitScreenAppAction
- (OS_dispatch_queue)queue;
- (id)disabledOnPlatforms;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFSplitScreenAppAction

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFSplitScreenAppAction;
  disabledOnPlatforms = [(WFSplitScreenAppAction *)&v5 disabledOnPlatforms];
  v3 = [disabledOnPlatforms arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  v54[4] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = [(WFSplitScreenAppAction *)self parameterValueForKey:@"WFPrimaryAppIdentifier" ofClass:objc_opt_class()];
  bundleIdentifier = [v4 bundleIdentifier];
  if (!bundleIdentifier)
  {
    [(WFSplitScreenAppAction *)self finishRunningWithError:0];
    goto LABEL_19;
  }

  v35 = [(WFSplitScreenAppAction *)self parameterValueForKey:@"WFSecondaryAppIdentifier" ofClass:objc_opt_class()];
  bundleIdentifier2 = [v35 bundleIdentifier];
  v34 = [(WFSplitScreenAppAction *)self parameterValueForKey:@"WFAppRatio" ofClass:objc_opt_class()];
  v7 = MEMORY[0x277CBEB38];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v8 = getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr;
  v46 = getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr;
  if (!getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr)
  {
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_block_invoke;
    v41 = &unk_278C222B8;
    v42 = &v43;
    v9 = SpringBoardServicesLibrary();
    v44[3] = dlsym(v9, "SBSOpenApplicationOptionKeyLayoutRole");
    getSBSOpenApplicationOptionKeyLayoutRoleSymbolLoc_ptr = *(v42[1] + 24);
    v8 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationOptionKeyLayoutRole(void)"];
    [currentHandler handleFailureInFunction:v31 file:@"WFSplitScreenAppAction.m" lineNumber:27 description:{@"%s", dlerror()}];

    goto LABEL_22;
  }

  v10 = *v8;
  v53[0] = v10;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v11 = getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr;
  v46 = getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr;
  if (!getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr)
  {
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __getSBSOpenApplicationLayoutRolePrimarySymbolLoc_block_invoke;
    v41 = &unk_278C222B8;
    v42 = &v43;
    v12 = SpringBoardServicesLibrary();
    v44[3] = dlsym(v12, "SBSOpenApplicationLayoutRolePrimary");
    getSBSOpenApplicationLayoutRolePrimarySymbolLoc_ptr = *(v42[1] + 24);
    v11 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v11)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getSBSOpenApplicationLayoutRolePrimary(void)"];
    [currentHandler2 handleFailureInFunction:v33 file:@"WFSplitScreenAppAction.m" lineNumber:28 description:{@"%s", dlerror()}];

LABEL_22:
    __break(1u);
  }

  v13 = *MEMORY[0x277D0AC58];
  v54[0] = *v11;
  v54[1] = MEMORY[0x277CBEC38];
  v14 = *MEMORY[0x277D0AC70];
  v53[1] = v13;
  v53[2] = v14;
  v53[3] = *MEMORY[0x277D0AC20];
  v54[2] = MEMORY[0x277CBEC38];
  v54[3] = &unk_28509B048;
  v15 = MEMORY[0x277CBEAC0];
  v16 = v54[0];
  v17 = [v15 dictionaryWithObjects:v54 forKeys:v53 count:4];

  v18 = [v7 dictionaryWithDictionary:v17];

  v19 = [v34 isEqualToString:@"½ + ½"];
  if (bundleIdentifier2)
  {
    if (v19)
    {
      v20 = @"[A<left>|B<right>]";
    }

    else
    {
      v20 = @"[A<leftTwoThird>|B<rightThird>]";
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:v20];
    v22 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers();
    v50[1] = bundleIdentifier2;
    v51[0] = v22;
    v50[0] = bundleIdentifier;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    v52[0] = v23;
    v24 = getSBSOpenApplicationOptionKeyWindowingFormat();
    v51[1] = v24;
    v52[1] = v21;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  }

  else
  {
    if (v19)
    {
      v26 = @"[A<left>]";
    }

    else
    {
      v26 = @"[A<leftTwoThird>]";
    }

    v21 = [MEMORY[0x277CCACA8] stringWithFormat:v26];
    v22 = getSBSOpenApplicationOptionKeyLaunchBundleIdentifiers();
    v47 = bundleIdentifier;
    v48[0] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    v49[0] = v23;
    v24 = getSBSOpenApplicationOptionKeyWindowingFormat();
    v48[1] = v24;
    v49[1] = v21;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  }

  v27 = v25;

  [v18 addEntriesFromDictionary:v27];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v29 = [MEMORY[0x277D0AD60] optionsWithDictionary:v18];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __53__WFSplitScreenAppAction_runAsynchronouslyWithInput___block_invoke;
  v37[3] = &unk_278C19820;
  v37[4] = self;
  [serviceWithDefaultShellEndpoint openApplication:bundleIdentifier withOptions:v29 completion:v37];

LABEL_19:
}

void __53__WFSplitScreenAppAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[WFSplitScreenAppAction runAsynchronouslyWithInput:]_block_invoke";
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_23DE30000, v5, OS_LOG_TYPE_ERROR, "%s Could not split screen apps with error: %@", buf, 0x16u);
    }

    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCA9B8];
    v8 = [v4 domain];
    v9 = [v4 code];
    v13 = *MEMORY[0x277CCA450];
    v10 = WFLocalizedString(@"Failed to open the specified apps in split screen mode.");
    v14 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [v7 errorWithDomain:v8 code:v9 userInfo:{v11, v13}];
    [v6 finishRunningWithError:v12];
  }

  else
  {
    [*(a1 + 32) finishRunningWithError:0];
  }
}

- (OS_dispatch_queue)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = dispatch_queue_create("com.apple.shortcuts.WFSplitScreenAppAction", 0);
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

@end