@interface SBActionHandler
+ (id)sharedInstance;
- (BOOL)_shouldPromptForSecureDrawViolations;
- (void)_captureRadarAttachmentsWithCompletion:(id)completion;
- (void)_executeRestartAction:(id)action fromProcess:(id)process;
- (void)_reportAndKillInsecureProcesses:(id)processes;
- (void)addActionHandler:(id)handler;
- (void)handleActions:(id)actions origin:(id)origin withResult:(id)result;
@end

@implementation SBActionHandler

+ (id)sharedInstance
{
  if (sharedInstance___once_5 != -1)
  {
    +[SBActionHandler sharedInstance];
  }

  v3 = sharedInstance___instance_7;

  return v3;
}

uint64_t __33__SBActionHandler_sharedInstance__block_invoke()
{
  kdebug_trace();
  v0 = objc_alloc_init(SBActionHandler);
  v1 = sharedInstance___instance_7;
  sharedInstance___instance_7 = v0;

  return kdebug_trace();
}

- (void)handleActions:(id)actions origin:(id)origin withResult:(id)result
{
  v131 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  originCopy = origin;
  resultCopy = result;
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke;
  v121[3] = &unk_2783B8B50;
  v11 = resultCopy;
  v122 = v11;
  v12 = MEMORY[0x223D6F7F0](v121);
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2;
  v118[3] = &unk_2783B8B78;
  v13 = originCopy;
  v119 = v13;
  v14 = v12;
  v120 = v14;
  v15 = MEMORY[0x223D6F7F0](v118);
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_37;
  v116[3] = &unk_2783B8BC8;
  v16 = v15;
  v117 = v16;
  v17 = MEMORY[0x223D6F7F0](v116);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v18 = actionsCopy;
  v19 = [v18 countByEnumeratingWithState:&v112 objects:v130 count:16];
  v90 = v17;
  if (!v19)
  {

LABEL_83:
    (*(v14 + 2))(v14, 0);
    goto LABEL_84;
  }

  v77 = v16;
  v78 = v14;
  v79 = v11;
  v92 = *v113;
  v81 = *MEMORY[0x277CCA068];
  v88 = *MEMORY[0x277D67008];
  v20 = 1;
  v80 = *MEMORY[0x277D67028];
  v76 = *MEMORY[0x277D67018];
  v74 = *MEMORY[0x277D67010];
  v75 = *MEMORY[0x277D67020];
  v82 = v13;
  v83 = *MEMORY[0x277D67000];
  selfCopy = self;
  v87 = v18;
  v21 = v17;
  v22 = v19;
  while (2)
  {
    v23 = 0;
    v89 = v22;
    do
    {
      if (*v113 != v92)
      {
        objc_enumerationMutation(v18);
      }

      if ((v20 & 1) == 0)
      {

        v14 = v78;
        v11 = v79;
        v16 = v77;
        goto LABEL_84;
      }

      v24 = *(*(&v112 + 1) + 8 * v23);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v111[0] = MEMORY[0x277D85DD0];
        v111[1] = 3221225472;
        v111[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_3;
        v111[3] = &unk_2783A92D8;
        v111[4] = self;
        v111[5] = v24;
        v20 = (v21)[2](v21, v24, @"com.apple.backboardd", v111);
        goto LABEL_77;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_4;
        v107[3] = &unk_2783A8ED8;
        v108 = v13;
        selfCopy2 = self;
        v110 = v24;
        v20 = (v21)[2](v21, v24, @"com.apple.frontboard.shutdown", v107);

        goto LABEL_77;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v20 = 1;
            goto LABEL_77;
          }

          locations = [v24 locations];
          v39 = +[SBWallpaperController sharedInstance];
          wallpaperConfigurationManager = [v39 wallpaperConfigurationManager];
          v20 = 1;
          [wallpaperConfigurationManager wallpaperDidChangeForVariants:locations shouldNotify:1];

          goto LABEL_64;
        }

        v31 = objc_opt_class();
        v32 = v24;
        if (v31)
        {
          if (objc_opt_isKindOfClass())
          {
            v33 = v32;
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v46 = v33;

        v85 = v46;
        persistedIdentifiers = [v46 persistedIdentifiers];
        v91 = v32;
        v84 = persistedIdentifiers;
        if (persistedIdentifiers)
        {
          v48 = persistedIdentifiers;
          v49 = [MEMORY[0x277CBEB58] set];
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v50 = v48;
          v51 = [v50 countByEnumeratingWithState:&v95 objects:v129 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v96;
            do
            {
              for (i = 0; i != v52; ++i)
              {
                if (*v96 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v95 + 1) + 8 * i);
                v56 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
                v57 = [v56 existingSceneHandleForPersistenceIdentifier:v55];

                if (v57)
                {
                  [v49 addObject:v57];
                }

                else
                {
                  v58 = SBLogCommon();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v126 = 0;
                    v127 = 2112;
                    v128 = v91;
                  }
                }
              }

              v52 = [v50 countByEnumeratingWithState:&v95 objects:v129 count:16];
            }

            while (v52);
          }

          if ([v49 count])
          {
            v59 = SBApplicationSceneEntityDestructionMakeIntent([v85 preferredAnimationType], objc_msgSend(v85, "destroySceneSession"));
            v93[0] = MEMORY[0x277D85DD0];
            v93[1] = 3221225472;
            v93[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_55;
            v93[3] = &unk_2783B8C10;
            v93[4] = v91;
            v94 = &__block_literal_global_51_3;
            SBWorkspaceDestroyApplicationSceneHandlesWithIntent(v49, v59, v93);

            v60 = 0;
            v61 = 0;
          }

          else
          {
            v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to retrive SBDeviceApplicationSceneHandle-s from the provided persisted identifiers: %@", v50];
            v60 = 2;
          }

          v13 = v82;
          v18 = v87;
          v21 = v90;

          if (!v61)
          {
            goto LABEL_63;
          }
        }

        else
          v61 = {;
          v60 = 1;
          if (!v61)
          {
LABEL_63:

            v20 = 1;
            self = selfCopy;
LABEL_64:
            v22 = v89;
            goto LABEL_77;
          }
        }

        v65 = SBLogCommon();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v126 = v61;
          _os_log_error_impl(&dword_21ED4E000, v65, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v66 = MEMORY[0x277CCA9B8];
        v67 = SBActionHandlerErrorDomain;
        v123 = v81;
        v124 = v61;
        v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
        v69 = [v66 errorWithDomain:v67 code:v60 userInfo:v68];

        __51__SBActionHandler_handleActions_origin_withResult___block_invoke_9(v70, v91, v69);
        v18 = v87;
        goto LABEL_63;
      }

      v25 = v24;
      identifier = [v25 identifier];

      slot = [v25 slot];
      if ([slot isEqualToString:v88])
      {
        windowSceneManager = [SBApp windowSceneManager];
        activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
        isContinuityDisplayWindowScene = [activeDisplayWindowScene isContinuityDisplayWindowScene];

        v20 = 1;
        if (isContinuityDisplayWindowScene)
        {
          self = selfCopy;
LABEL_73:
          v18 = v87;
          goto LABEL_74;
        }

        self = selfCopy;
        v18 = v87;
        if (!identifier)
        {
          goto LABEL_74;
        }
      }

      else
      {

        if (!identifier)
        {
          v20 = 1;
          goto LABEL_74;
        }
      }

      slot2 = [v25 slot];
      v35 = [slot2 isEqualToString:v88];

      if (v35)
      {
        if ([v25 secureAppType])
        {
          v105[0] = MEMORY[0x277D85DD0];
          v105[1] = 3221225472;
          v105[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_5;
          v105[3] = &unk_2783A8C18;
          v36 = v25;
          v106 = v36;
          if ((v90)[2](v90, v36, @"com.apple.springboard.lockScreenContentAssertion", v105))
          {
            v20 = 1;
            v37 = v106;
LABEL_75:
            v22 = v89;

            goto LABEL_76;
          }

          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_6;
          v103[3] = &unk_2783A8C18;
          v104 = v36;
          v44 = (v90)[2](v90, v104, @"com.apple.springboard.secureAppAssertion", v103);

          v45 = v106;
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      slot3 = [v25 slot];
      v42 = [slot3 isEqualToString:v80];

      if (v42)
      {
        identifier2 = [v25 identifier];

        if (identifier2)
        {
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_7;
          v101[3] = &unk_2783A8C18;
          v102 = v25;
          v44 = (v90)[2](v90, v102, @"com.apple.springboard.lockScreenContentAssertion", v101);
          v45 = v102;
LABEL_66:

          if (v44)
          {
            goto LABEL_67;
          }

          v20 = 0;
LABEL_74:
          v37 = [MEMORY[0x277CCA9B8] errorWithDomain:v83 code:2 userInfo:0];
          v73 = [MEMORY[0x277CF0B68] responseForError:v37];
          [v25 sendResponse:v73];

          goto LABEL_75;
        }

LABEL_67:
        v20 = 1;
        goto LABEL_68;
      }

      slot4 = [v25 slot];
      if ([slot4 isEqualToString:v76])
      {
        goto LABEL_54;
      }

      slot5 = [v25 slot];
      if ([slot5 isEqualToString:v75])
      {

LABEL_54:
        goto LABEL_55;
      }

      slot6 = [v25 slot];
      v72 = [slot6 isEqualToString:v74];

      if ((v72 & 1) == 0)
      {
        v20 = 1;
        goto LABEL_73;
      }

LABEL_55:
      v99[0] = MEMORY[0x277D85DD0];
      v99[1] = 3221225472;
      v99[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_8;
      v99[3] = &unk_2783A92D8;
      v99[4] = self;
      v100 = v25;
      v64 = (v90)[2](v90, v100, @"com.apple.springboard.lockScreenContentAssertion", v99);

      if ((v64 & 1) == 0)
      {
        v20 = 0;
        goto LABEL_73;
      }

      v20 = 1;
      v18 = v87;
LABEL_68:
      v22 = v89;
LABEL_76:

      v21 = v90;
LABEL_77:
      ++v23;
    }

    while (v23 != v22);
    v22 = [v18 countByEnumeratingWithState:&v112 objects:v130 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

  v14 = v78;
  v11 = v79;
  v16 = v77;
  if (v20)
  {
    goto LABEL_83;
  }

LABEL_84:
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([*(a1 + 32) hasEntitlement:v8])
  {
    if (v9)
    {
      v10 = v9[2](v9);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v11 = SBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "Entitlement %{public}@ required for action: %{public}@", &v15, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
    v10 = 0;
  }

  return v10;
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2_38;
  v13[3] = &unk_2783B8BA0;
  v14 = v7;
  v9 = *(v8 + 16);
  v10 = v7;
  v11 = v9(v8, a2, a3, v13);

  return v11;
}

uint64_t __51__SBActionHandler_handleActions_origin_withResult___block_invoke_2_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 1;
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277D0AAC0] sharedInstance];
  v3 = [v2 processForPID:{objc_msgSend(*(a1 + 32), "pid")}];

  [*(a1 + 40) _executeRestartAction:*(a1 + 48) fromProcess:v3];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_5(uint64_t a1)
{
  v2 = +[SBSecureAppManager sharedInstance];
  [v2 addLockScreenContentAction:*(a1 + 32)];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_6(uint64_t a1)
{
  v2 = +[SBSecureAppManager sharedInstance];
  [v2 addLockScreenContentAction:*(a1 + 32)];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_7(uint64_t a1)
{
  v2 = +[SBSecureAppManager sharedInstance];
  [v2 addLockScreenContentAction:*(a1 + 32)];
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_8(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v8 + 1) + 8 * v6);
      if ([v7 handlesActionWithClass:{objc_opt_class(), v8}])
      {
        if ([v7 handleAction:*(a1 + 40) forProvider:*(a1 + 32)])
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __51__SBActionHandler_handleActions_origin_withResult___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  if ([v6 canSendResponse])
  {
    v5 = [objc_alloc(MEMORY[0x277D75408]) initWithInfo:0 error:v4];
    [v6 sendResponse:v5];
  }
}

- (void)addActionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    externalHandlers = self->_externalHandlers;
    v8 = handlerCopy;
    if (!externalHandlers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_externalHandlers;
      self->_externalHandlers = weakObjectsHashTable;

      externalHandlers = self->_externalHandlers;
    }

    [(NSHashTable *)externalHandlers addObject:v8];
    handlerCopy = v8;
  }
}

- (void)_executeRestartAction:(id)action fromProcess:(id)process
{
  actionCopy = action;
  v4 = MEMORY[0x277CCACA8];
  v5 = FBSProcessPrettyDescription();
  reason = [actionCopy reason];
  v7 = [v4 stringWithFormat:@"RestartTransitionRequest-(%@)-reason:%@", v5, reason];

  v8 = [SBRestartTransitionRequest alloc];
  reason2 = [actionCopy reason];
  v10 = [(SBRestartTransitionRequest *)v8 initWithRequester:v7 reason:reason2];

  options = [actionCopy options];
  v12 = options;
  if (options)
  {
    v13 = 2;
  }

  else
  {
    v13 = (options >> 2) & 1;
  }

  [(SBRestartTransitionRequest *)v10 setRestartType:v13];
  if ((v12 & 2) != 0)
  {
    [(SBRestartTransitionRequest *)v10 setWantsPersistentSnapshot:1];
  }

  targetURL = [actionCopy targetURL];
  [(SBRestartTransitionRequest *)v10 setApplicationLaunchURL:targetURL];

  restartManager = [SBApp restartManager];
  [restartManager restartWithTransitionRequest:v10];
}

- (void)_reportAndKillInsecureProcesses:(id)processes
{
  v75 = *MEMORY[0x277D85DE8];
  processesCopy = processes;
  secureModeViolations = [processesCopy secureModeViolations];
  v6 = SBLogWorkspace(secureModeViolations);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = processesCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Received insecure drawing action %@", buf, 0xCu);
  }

  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  killsInsecureDrawingApps = [rootSettings killsInsecureDrawingApps];
  if (killsInsecureDrawingApps)
  {
    selfCopy = self;
    v45 = rootSettings;
    v46 = processesCopy;
    v44 = getpid();
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = secureModeViolations;
    v10 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v68;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v68 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v67 + 1) + 8 * i);
          layerNamesByContext = [v14 layerNamesByContext];
          v16 = [layerNamesByContext count];

          if (v16)
          {
            layerNamesByContext2 = [v14 layerNamesByContext];
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke;
            v63[3] = &unk_2783B8C38;
            v64 = v9;
            v65 = v48;
            v66 = v14;
            [layerNamesByContext2 enumerateKeysAndObjectsUsingBlock:v63];

            processId = v64;
          }

          else
          {
            processId = [v14 processId];
            [v48 addObject:processId];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v11);
    }

    if ([v9 count])
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v19 = v9;
      v20 = [v19 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v60;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v60 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v59 + 1) + 8 * j);
            v54 = MEMORY[0x277D85DD0];
            v55 = 3221225472;
            v56 = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2;
            v57 = &unk_2783AC3E8;
            v58 = v24;
            AnalyticsSendEventLazy();
          }

          v21 = [v19 countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v21);
      }
    }

    if (![v48 count])
    {
      v25 = +[SBDefaults localDefaults];
      securityDefaults = [v25 securityDefaults];
      enableLayerBasedViewSecurity = [securityDefaults enableLayerBasedViewSecurity];

      if ((enableLayerBasedViewSecurity & 1) == 0)
      {
        v34 = SBLogWorkspace(v28);
        rootSettings = v45;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "Disregarding insecure drawing action because only layer-based violations were reported.", buf, 2u);
        }

        processesCopy = v46;
        goto LABEL_42;
      }
    }

    v29 = +[SBDefaults localDefaults];
    securityDefaults2 = [v29 securityDefaults];
    enableLayerBasedViewSecurity2 = [securityDefaults2 enableLayerBasedViewSecurity];

    if (enableLayerBasedViewSecurity2)
    {
      v32 = MEMORY[0x277CBEB98];
      v33 = [obj bs_map:&__block_literal_global_86_3];
      v34 = [v32 setWithArray:v33];
    }

    else
    {
      v34 = v48;
    }

    rootSettings = v45;
    v35 = MEMORY[0x277CBEB98];
    v36 = [MEMORY[0x277CCABB0] numberWithInt:v44];
    v37 = [v35 setWithObject:v36];
    v38 = [v34 isEqualToSet:v37];

    if (v38)
    {
      v40 = SBLogWorkspace(v39);
      processesCopy = v46;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v41 = "Disregarding insecure drawing action because only SpringBoard violations were reported.";
LABEL_40:
        _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
      }
    }

    else
    {
      processesCopy = v46;
      if ([v34 count])
      {
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_88;
        v49[3] = &unk_2783B8CA8;
        v50 = obj;
        v53 = v44;
        v51 = v34;
        v52 = v43;
        [v43 _captureRadarAttachmentsWithCompletion:v49];

        v40 = v50;
      }

      else
      {
        v40 = SBLogWorkspace(0);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v41 = "Disregarding insecure drawing action because no processes were selected for reporting.";
          goto LABEL_40;
        }
      }
    }

LABEL_42:
    goto LABEL_43;
  }

  v9 = SBLogWorkspace(killsInsecureDrawingApps);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Disregarding insecure drawing actions per configuration settings.", buf, 2u);
  }

LABEL_43:
}

void __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 count])
  {
    [*(a1 + 32) unionSet:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) processId];
    [v4 addObject:v5];
  }
}

id __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"layerName";
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

void __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_88(uint64_t a1, void *a2, int a3)
{
  v117 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = SBLogWorkspace(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Disregarding insecure drawing actions because attachments are still being gathered for a previous report.";
LABEL_64:
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
    }
  }

  else
  {
    v9 = +[SBLockStateAggregator sharedInstance];
    v10 = [v9 hasAnyLockState];

    if (v10)
    {
      v7 = [MEMORY[0x277D0AAC0] sharedInstance];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = *(a1 + 32);
      v77 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
      if (v77)
      {
        v69 = v7;
        v70 = 0;
        v64 = v6;
        v12 = 0;
        v76 = *v103;
        v65 = 0;
        v74 = a1;
        do
        {
          v13 = 0;
          do
          {
            if (*v103 != v76)
            {
              objc_enumerationMutation(obj);
            }

            v78 = v13;
            v14 = *(*(&v102 + 1) + 8 * v13);
            v15 = [v14 processId];
            v16 = [v15 intValue];

            if (v16 >= 1 && v16 != *(a1 + 56))
            {
              v17 = *(a1 + 40);
              v18 = [MEMORY[0x277CCABB0] numberWithInt:v16];
              LODWORD(v17) = objc_msgSend_containsObject_(v17);

              if (v17)
              {
                v19 = [v69 processForPID:v16];
                a1 = v74;
                if (v19)
                {
                  v20 = [MEMORY[0x277D0AAD8] sharedInstance];
                  v100[0] = MEMORY[0x277D85DD0];
                  v100[1] = 3221225472;
                  v100[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_91;
                  v100[3] = &unk_2783B1488;
                  v72 = v19;
                  v21 = v19;
                  v101 = v21;
                  v73 = [v20 scenesPassingTest:v100];
                  v98[0] = MEMORY[0x277D85DD0];
                  v98[1] = 3221225472;
                  v98[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2_93;
                  v98[3] = &unk_2783B1488;
                  v99 = v21;
                  v71 = v20;
                  v22 = v20;
                  v23 = v99;
                  v24 = [v22 scenesPassingTest:v98];
                  v25 = [v23 bundleIdentifier];
                  v26 = SBLogWorkspace(v25);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    v61 = [v23 state];
                    *buf = 67109890;
                    v109 = v16;
                    v110 = 2114;
                    v111 = v25;
                    v112 = 2112;
                    v113 = v61;
                    v114 = 2114;
                    v115 = v24;
                    _os_log_error_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_ERROR, "Killing process with pid %i (bundleID: %{public}@, state: %@, foreground scenes: %{public}@) for view security", buf, 0x26u);

                    a1 = v74;
                  }

                  if (!v70)
                  {
                    v27 = [v23 handle];
                    v28 = [v27 name];
                    v70 = [v28 copy];

                    v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
                    v30 = [v14 layerNamesByContext];
                    v96[0] = MEMORY[0x277D85DD0];
                    v96[1] = 3221225472;
                    v96[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_94;
                    v96[3] = &unk_2783B8C80;
                    v31 = v29;
                    v97 = v31;
                    [v30 enumerateKeysAndObjectsUsingBlock:v96];

                    if ([v31 count])
                    {
                      v32 = [v31 copy];

                      v65 = v32;
                    }

                    a1 = v74;
                  }

                  if ([v23 isApplicationProcess])
                  {
                    v66 = v23;
                    v67 = v25;
                    v68 = v24;
                    v33 = +[SBLockStateAggregator sharedInstance];
                    v34 = [v33 lockState];

                    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process detected doing insecure drawing while in secure mode | isUILocked:%d", v34 & 1];
                    v92 = 0u;
                    v93 = 0u;
                    v94 = 0u;
                    v95 = 0u;
                    v79 = v73;
                    v81 = [v79 countByEnumeratingWithState:&v92 objects:v107 count:16];
                    if (v81)
                    {
                      v80 = *v93;
                      do
                      {
                        v36 = 0;
                        do
                        {
                          if (*v93 != v80)
                          {
                            objc_enumerationMutation(v79);
                          }

                          v37 = *(*(&v92 + 1) + 8 * v36);
                          v38 = [v37 settings];
                          v39 = [v37 identifier];
                          v40 = [v35 stringByAppendingFormat:@" \n Scene %@ isOccluded:%d", v39, objc_msgSend(v38, "isOccluded")];

                          objc_opt_class();
                          v82 = v38;
                          v83 = v36;
                          if (objc_opt_isKindOfClass())
                          {
                            v35 = [v40 stringByAppendingFormat:@" isUnderlock:%d", objc_msgSend(v38, "underLock")];
                          }

                          else
                          {
                            v35 = v40;
                          }

                          v90 = 0u;
                          v91 = 0u;
                          v88 = 0u;
                          v89 = 0u;
                          v41 = [v14 contextIds];
                          v42 = [v41 countByEnumeratingWithState:&v88 objects:v106 count:16];
                          if (v42)
                          {
                            v43 = v42;
                            v44 = *v89;
                            do
                            {
                              for (i = 0; i != v43; ++i)
                              {
                                if (*v89 != v44)
                                {
                                  objc_enumerationMutation(v41);
                                }

                                v46 = *(*(&v88 + 1) + 8 * i);
                                v47 = [v46 unsignedIntValue];
                                v48 = [v35 stringByAppendingFormat:@" \n contextId:0x%x", v47];

                                v49 = [v37 layerManager];
                                v50 = [v49 layerWithContextID:v47];

                                if (v50)
                                {
                                  [v50 level];
                                  v52 = [v48 stringByAppendingFormat:@" level:%.1f", v51];

                                  v48 = v52;
                                }

                                v53 = [v14 layerNamesByContext];
                                v54 = [v53 objectForKey:v46];

                                if ([v54 count])
                                {
                                  v35 = [v48 stringByAppendingFormat:@"\n   violating layer names:%@", v54];
                                }

                                else
                                {
                                  v35 = v48;
                                }
                              }

                              v43 = [v41 countByEnumeratingWithState:&v88 objects:v106 count:16];
                            }

                            while (v43);
                          }

                          v36 = v83 + 1;
                        }

                        while (v83 + 1 != v81);
                        v81 = [v79 countByEnumeratingWithState:&v92 objects:v107 count:16];
                      }

                      while (v81);
                    }

                    [v66 killForReason:8 andReport:1 withDescription:v35];
                    a1 = v74;
                    v55 = v72;
                    v25 = v67;
                    v24 = v68;
                  }

                  else
                  {
                    kill(v16, 9);
                    v55 = v72;
                  }

                  v12 = 1;
                  v13 = v78;
                  v57 = v71;
                }

                else
                {
                  v56 = BSExecutablePathForPID();
                  v57 = [v56 lastPathComponent];

                  v58 = kill(v16, 9);
                  v59 = v58;
                  v60 = SBLogWorkspace(v58);
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109634;
                    v109 = v16;
                    v110 = 2114;
                    v111 = v57;
                    v112 = 1024;
                    LODWORD(v113) = v59;
                    _os_log_error_impl(&dword_21ED4E000, v60, OS_LOG_TYPE_ERROR, "Killing unknown process with pid %i for view security: %{public}@ (result: %i)", buf, 0x18u);
                  }

                  if (v59 == 3)
                  {
                    a1 = v74;
                    v55 = 0;
                  }

                  else
                  {
                    a1 = v74;
                    v55 = 0;
                    if (v57)
                    {
                      if (v70)
                      {
                        v12 = 1;
                      }

                      else
                      {
                        v57 = v57;
                        v12 = 1;
                        v70 = v57;
                      }
                    }
                  }
                }
              }

              else
              {
                a1 = v74;
              }
            }

            ++v13;
          }

          while (v13 != v77);
          v62 = [obj countByEnumeratingWithState:&v102 objects:v116 count:16];
          v77 = v62;
        }

        while (v62);

        if ((v12 & 1) != 0 && [*(a1 + 48) _shouldPromptForSecureDrawViolations])
        {
          v63 = dispatch_time(0, 1000000000);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_114;
          block[3] = &unk_2783A8ED8;
          v70 = v70;
          v85 = v70;
          v65 = v65;
          v86 = v65;
          v6 = v64;
          v87 = v64;
          dispatch_after(v63, MEMORY[0x277D85CD0], block);

          v7 = v69;
        }

        else
        {
          v6 = v64;
          v7 = v69;
        }
      }

      else
      {
        v70 = 0;
        v65 = 0;
      }
    }

    else
    {
      v7 = SBLogWorkspace(v11);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "Disregarding insecure drawing actions because the UI is not locked.";
        goto LABEL_64;
      }
    }
  }
}

uint64_t __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_91(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientProcess];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    v7 = [v3 settings];
    v8 = [v7 sb_displayIdentityForSceneManagers];
    v9 = [v8 isCarDisplay];

    v6 = v9 ^ 1u;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_2_93(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 clientProcess];
  v5 = *(a1 + 32);

  if (v4 == v5 && ([v3 settings], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "sb_displayIdentityForSceneManagers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isCarDisplay"), v7, v6, (v8 & 1) == 0))
  {
    v11 = [v3 settings];
    if ([v11 isForeground])
    {
      v9 = [v11 isOccluded] ^ 1;
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

  return v9;
}

void __51__SBActionHandler__reportAndKillInsecureProcesses___block_invoke_114(void *a1)
{
  v3 = objc_alloc_init(SBInsecureDrawingAlertItem);
  [(SBInsecureDrawingAlertItem *)v3 setProcessName:a1[4]];
  [(SBInsecureDrawingAlertItem *)v3 setLayerNames:a1[5]];
  [(SBDiagnosticRequestAlertItem *)v3 setRadarAttachments:a1[6]];
  v2 = +[SBAlertItemsController sharedInstance];
  [v2 activateAlertItem:v3];
}

- (BOOL)_shouldPromptForSecureDrawViolations
{
  v2 = +[SBPlatformController sharedInstance];
  if ([v2 isInternalInstall])
  {
    v3 = +[SBDefaults localDefaults];
    securityDefaults = [v3 securityDefaults];
    reportSecureDrawViolations = [securityDefaults reportSecureDrawViolations];
  }

  else
  {
    reportSecureDrawViolations = 0;
  }

  return reportSecureDrawViolations;
}

- (void)_captureRadarAttachmentsWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SBActionHandler *)self _shouldPromptForSecureDrawViolations])
  {
    if (self->_capturingDisplayDump)
    {
      completionCopy[2](completionCopy, 0, 1);
    }

    else
    {
      self->_capturingDisplayDump = 1;
      v5 = completionCopy;
      BKSDisplayServicesArchiveWithOptionsAndCompletion();
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }
}

void __58__SBActionHandler__captureRadarAttachmentsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v20 = v4;
    v18 = a1;
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];

    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 temporaryDirectory];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"secureDrawViolation-%@-%@.caar", v14, v6];
          v16 = [v8 URLByAppendingPathComponent:v15];
          v17 = [v9 objectForKeyedSubscript:v14];
          if ([v17 writeToURL:v16 atomically:0])
          {
            [v20 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    a1 = v18;
    v3 = v19;
    v4 = v20;
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SBActionHandler__captureRadarAttachmentsWithCompletion___block_invoke_2;
    block[3] = &unk_2783A9878;
    v23 = *(a1 + 40);
    v22 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  *(*(a1 + 32) + 8) = 0;
}

@end