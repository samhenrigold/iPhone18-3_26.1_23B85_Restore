@interface BLSBacklightFBSSceneEnvironmentDiffAction
- (BLSBacklightFBSSceneEnvironmentDiffActionDelegate)delegate;
- (NSObject)sceneUpdateForUpdatedFBSScene:(void *)scene fromSettings:(void *)settings transitionContext:(void *)context environment:;
- (id)desiredFidelityRequestForUpdatedFBSScene:(uint64_t)scene fromSettings:(uint64_t)settings transitionContext:;
- (id)frameSpecifiersRequestForUpdatedFBSScene:(uint64_t)scene fromSettings:(uint64_t)settings transitionContext:;
- (void)completeBLSActionsForUpdatedFBSScene:(void *)scene transitionContext:;
- (void)environmentDiffInspector;
- (void)performActionsForUpdatedFBSScene:(id)scene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context;
@end

@implementation BLSBacklightFBSSceneEnvironmentDiffAction

- (void)environmentDiffInspector
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      v4 = objc_alloc_init(BLSBacklightSceneSettingsDiffInspector);
      v5 = selfCopy[1];
      selfCopy[1] = v4;

      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (BLSBacklightFBSSceneEnvironmentDiffActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if ((a3 & 0x1C) != 0)
  {
    v5 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) sceneUpdateForUpdatedFBSScene:*(a1 + 48) fromSettings:v5 transitionContext:*(a1 + 56) environment:?];
    v7 = v5;
    if (v5)
    {
      v14 = bls_scenes_log(v5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke_cold_1((a1 + 56));
      }

      v8 = OS_LOG_TYPE_INFO;
      if (a3)
      {
        goto LABEL_5;
      }

LABEL_11:
      [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) completeBLSActionsForUpdatedFBSScene:v6 transitionContext:?];
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = OS_LOG_TYPE_DEBUG;
  if ((a3 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v9 = bls_scenes_log(v5);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = *(a1 + 56);
    v29 = 134218498;
    v30 = v10;
    v31 = 2114;
    v32 = v7;
    v33 = 2114;
    v34 = v10;
    _os_log_impl(&dword_21FE25000, v9, v8, "%p updated with sceneUpdate:%{public}@ environment:%{public}@", &v29, 0x20u);
  }

  v11 = [*(a1 + 56) updater];
  [v11 updatedEnvironmentWithDelta:a3 backlightSceneUpdate:v7];

LABEL_12:
  v15 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) desiredFidelityRequestForUpdatedFBSScene:v12 fromSettings:v13 transitionContext:v6];
  v18 = v15;
  if (v15)
  {
    v19 = bls_scenes_log(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 56);
      v21 = [v20 identifier];
      v29 = 134218498;
      v30 = v20;
      v31 = 2114;
      v32 = v21;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_21FE25000, v19, OS_LOG_TYPE_INFO, "%p environment:%{public}@ will perform desiredFidelityRequest:%@", &v29, 0x20u);
    }

    v22 = [*(a1 + 56) updater];
    [v22 performDesiredFidelityRequest:v18];
  }

  v23 = [(BLSBacklightFBSSceneEnvironmentDiffAction *)*(a1 + 32) frameSpecifiersRequestForUpdatedFBSScene:v16 fromSettings:v17 transitionContext:v6];
  v24 = v23;
  if (v23)
  {
    v25 = bls_scenes_log(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = *(a1 + 56);
      v27 = [v26 identifier];
      v29 = 134218498;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_21FE25000, v25, OS_LOG_TYPE_INFO, "%p environment:%{public}@ will perform frameSpecifiersRequest:%@", &v29, 0x20u);
    }

    v28 = [*(a1 + 56) updater];
    [v28 performFrameSpecifiersRequest:v24];
  }
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) canSendResponse];
  v4 = v3;
  v5 = bls_scenes_log(v3);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10_cold_1(a1);
    }

    v7 = *v2;
    v6 = [MEMORY[0x277CF0B68] response];
    [v7 sendResponse:v6];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    v9 = [v8 identifier];
    v10 = *(a1 + 32);
    v11 = 134218498;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_21FE25000, v6, OS_LOG_TYPE_INFO, "%p:%{public}@ unable to send response to updateAction:%{public}@", &v11, 0x20u);
  }
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12(uint64_t a1)
{
  v2 = bls_scenes_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12_cold_1(a1);
  }
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_13(uint64_t a1, double a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) canSendResponse];
  v5 = v4;
  v6 = bls_scenes_log(v4);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      v13 = [v12 identifier];
      v14 = *(a1 + 32);
      v15 = 134218754;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2048;
      v20 = a2;
      v21 = 2114;
      v22 = v14;
      _os_log_debug_impl(&dword_21FE25000, &v7->super.super, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will send duration:%lf response to rampAction:%{public}@", &v15, 0x2Au);
    }

    v8 = *(a1 + 32);
    v7 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:a2];
    [v8 sendResponse:v7];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 40);
    v10 = [v9 identifier];
    v11 = *(a1 + 32);
    v15 = 134218754;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2048;
    v20 = a2;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_21FE25000, &v7->super.super, OS_LOG_TYPE_INFO, "%p:%{public}@ unable to send duration:%lf response to rampAction:%{public}@", &v15, 0x2Au);
  }
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  [*(a1 + 32) setAnimatingVisualState:0];
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = [v4 canSendResponse];
  v6 = v5;
  v7 = bls_scenes_log(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15_cold_1(v2);
    }

    v9 = *v3;
    v8 = [MEMORY[0x277CF0B68] response];
    [v9 sendResponse:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = *v2;
    v11 = [v10 identifier];
    v12 = *v3;
    v13 = 134218498;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_21FE25000, v8, OS_LOG_TYPE_INFO, "%p:%{public}@ unable to send response to animationCompleteAction:%{public}@", &v13, 0x20u);
  }
}

- (void)performActionsForUpdatedFBSScene:(id)scene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  environmentDiffInspector = [(BLSBacklightFBSSceneEnvironmentDiffAction *)self environmentDiffInspector];
  v15 = [environmentDiffInspector inspectDiff:diffCopy];
  backlightSceneEnvironment = [sceneCopy backlightSceneEnvironment];
  v17 = bls_scenes_log(backlightSceneEnvironment);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    identifier = [backlightSceneEnvironment identifier];
    v22 = BLSBacklightFBSSceneEnvironmentDeltaDescription(v15);
    v32 = MEMORY[0x277CCACA8];
    v34 = v22;
    visualState = [backlightSceneEnvironment visualState];
    presentationDate = [backlightSceneEnvironment presentationDate];
    bls_shortLoggingString = [presentationDate bls_shortLoggingString];
    v33 = [v32 stringWithFormat:@"%@ %@", visualState, bls_shortLoggingString];
    v25 = MEMORY[0x277CCACA8];
    bls_visualState = [settingsCopy bls_visualState];
    bls_presentationDate = [settingsCopy bls_presentationDate];
    bls_shortLoggingString2 = [bls_presentationDate bls_shortLoggingString];
    v26 = [v25 stringWithFormat:@"%@ %@", bls_visualState, bls_shortLoggingString2];
    [backlightSceneEnvironment frameSpecifier];
    *buf = 134219522;
    v41 = backlightSceneEnvironment;
    v42 = 2114;
    v43 = identifier;
    v44 = 2114;
    v45 = v34;
    v46 = 2114;
    v47 = diffCopy;
    v48 = 2114;
    v49 = v33;
    v50 = 2114;
    v51 = v26;
    v53 = v52 = 2114;
    v23 = v53;
    _os_log_debug_impl(&dword_21FE25000, v17, OS_LOG_TYPE_DEBUG, "%p environment updated:%{public}@\n  delta:%{public}@\n  diff:%{public}@\n  new:%{public}@\n  old:%{public}@\n  new:%{public}@", buf, 0x48u);
  }

  delegate = [(BLSBacklightFBSSceneEnvironmentDiffAction *)self delegate];
  if (!delegate)
  {
    delegate = objc_alloc_init(BLSBacklightFBSSceneEnvironmentDiffActionNullDelegate);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke;
  v36[3] = &unk_278428A68;
  v36[4] = self;
  v37 = sceneCopy;
  v38 = settingsCopy;
  v39 = backlightSceneEnvironment;
  v19 = backlightSceneEnvironment;
  v20 = settingsCopy;
  v21 = sceneCopy;
  [(BLSBacklightFBSSceneEnvironmentDiffActionNullDelegate *)delegate performChangesWithTransitionContext:contextCopy environmentDelta:v15 performActionsBlock:v36];
}

- (NSObject)sceneUpdateForUpdatedFBSScene:(void *)scene fromSettings:(void *)settings transitionContext:(void *)context environment:
{
  v128 = *MEMORY[0x277D85DE8];
  v9 = a2;
  sceneCopy = scene;
  settingsCopy = settings;
  contextCopy = context;
  if (self)
  {
    settings = [v9 settings];
    bls_visualState = [settings bls_visualState];
    if (!bls_visualState)
    {
      v27 = bls_scenes_log(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [contextCopy identifier];
        *buf = 134218242;
        v120 = contextCopy;
        OUTLINED_FUNCTION_5_0();
        v121 = v29;
        _os_log_impl(&dword_21FE25000, v27, OS_LOG_TYPE_DEFAULT, "%p:%{public}@ settings visualState nil", buf, 0x16u);
      }

      v30 = 0;
      goto LABEL_71;
    }

    v94 = settings;
    v95 = v9;
    v96 = settingsCopy;
    v97 = sceneCopy;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    actions = [settingsCopy actions];
    v15 = [actions countByEnumeratingWithState:&v115 objects:v127 count:16];
    v98 = bls_visualState;
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v100 = 0;
      v101 = 0;
      v18 = *v116;
      while (1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v116 != v18)
          {
            objc_enumerationMutation(actions);
          }

          v20 = *(*(&v115 + 1) + 8 * i);
          v21 = objc_opt_class();
          if (OUTLINED_FUNCTION_6(v21))
          {
            v22 = v101;
            v23 = v17;
            v101 = v20;
          }

          else
          {
            v24 = objc_opt_class();
            if (OUTLINED_FUNCTION_6(v24))
            {
              v22 = v100;
              v23 = v17;
              v100 = v20;
            }

            else
            {
              v25 = objc_opt_class();
              v22 = v17;
              v23 = v20;
              if ((OUTLINED_FUNCTION_6(v25) & 1) == 0)
              {
                continue;
              }
            }
          }

          v26 = v20;

          v17 = v23;
        }

        v16 = [actions countByEnumeratingWithState:&v115 objects:v127 count:16];
        if (!v16)
        {
          goto LABEL_21;
        }
      }
    }

    v17 = 0;
    v100 = 0;
    v101 = 0;
LABEL_21:

    v31 = v101;
    isAnimated = [v101 isAnimated];
    v33 = isAnimated;
    bls_visualState = v98;
    v34 = v100;
    if (!v101 && v100 | v17)
    {
      v35 = bls_scenes_log(isAnimated);
      v9 = v95;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        actions2 = [v96 actions];
        v73 = [actions2 bs_map:&__block_literal_global_4];
        *buf = 134218498;
        v120 = contextCopy;
        OUTLINED_FUNCTION_5_0();
        v121 = v74;
        v122 = v75;
        v123 = v76;
        _os_log_error_impl(&dword_21FE25000, v35, OS_LOG_TYPE_ERROR, "%p scene settings change did not contain an update action, but did contain a ramp or animation complete action \nenvironment:%{public}@ \nactions:%{public}@", buf, 0x20u);

        v31 = 0;
      }

      if (v100)
      {
        v36 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:0.0];
        [v100 sendResponse:v36];
      }

      if (v17)
      {
        response = [MEMORY[0x277CF0B68] response];
        v38 = v17;
LABEL_39:
        [v38 sendResponse:response];
        v42 = 0;
LABEL_69:

        goto LABEL_70;
      }

      goto LABEL_48;
    }

    if (v17)
    {
      v39 = 0;
    }

    else
    {
      v39 = isAnimated;
    }

    v9 = v95;
    if (v39 == 1)
    {
      v40 = bls_scenes_log(isAnimated);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [contextCopy identifier];
        v64 = [v96 debugDescription];
        v65 = [v95 debugDescription];
        *buf = 134218754;
        v120 = contextCopy;
        v34 = v100;
        OUTLINED_FUNCTION_5_0();
        *(v66 + 78) = identifier2;
        v122 = v67;
        v123 = v64;
        v124 = v67;
        *(v66 + 98) = v68;
        _os_log_error_impl(&dword_21FE25000, v40, OS_LOG_TYPE_ERROR, "%p:%{public}@ scene settings change animated but did not contain animationComplete action, transitionContext:%{public}@ scene:%{public}@", buf, 0x2Au);

        v31 = v101;
      }

      if (v31)
      {
        response2 = [MEMORY[0x277CF0B68] response];
        [v31 sendResponse:response2];
      }

      if (v34)
      {
        response = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:0.0];
        v38 = v34;
        goto LABEL_39;
      }

LABEL_48:
      v42 = 0;
LABEL_70:
      v27 = v42;

      v30 = v27;
      settingsCopy = v96;
      settings = v94;
LABEL_71:

      goto LABEL_72;
    }

    bls_visualState2 = [sceneCopy bls_visualState];
    v44 = contextCopy;
    frameSpecifier = [contextCopy frameSpecifier];
    [frameSpecifier setGrantedFidelity:{objc_msgSend(v98, "updateFidelity")}];
    event = [v101 event];
    v93 = frameSpecifier;
    if (!frameSpecifier)
    {
      presentationDate = [contextCopy presentationDate];
      v47 = presentationDate;
      if (presentationDate)
      {
        v48 = bls_scenes_log(presentationDate);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          identifier3 = [contextCopy identifier];
          bls_shortLoggingString = [v47 bls_shortLoggingString];
          [contextCopy alwaysOnSession];
          objc_claimAutoreleasedReturnValue();
          *buf = 134218754;
          v120 = contextCopy;
          OUTLINED_FUNCTION_5_0();
          *(v78 + 78) = identifier3;
          v122 = v79;
          v123 = bls_shortLoggingString;
          v124 = v79;
          *(v78 + 98) = v80;
          v81 = v80;
          _os_log_error_impl(&dword_21FE25000, v48, OS_LOG_TYPE_ERROR, "%p:%{public}@ unexpectedly nil frameSpecifier. presentationDate:%{public}@ alwaysOnSession:%{public}@", buf, 0x2Au);
        }

        v31 = v101;
      }
    }

    if (v31)
    {
      v49 = v112;
      v112[0] = MEMORY[0x277D85DD0];
      v112[1] = 3221225472;
      v112[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10;
      v112[3] = &unk_278428688;
      v88 = &v113;
      v113 = v31;
      v50 = &v114;
      v51 = contextCopy;
      v87 = &v114;
    }

    else
    {
      v49 = v108;
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12;
      v108[3] = &unk_278428AB0;
      v88 = &v109;
      v109 = contextCopy;
      v87 = &v110;
      v110 = v98;
      v50 = &v111;
      v51 = v93;
    }

    *v50 = v51;
    v90 = MEMORY[0x223D716E0](v49);
    if (v100)
    {
      v52 = v105;
      v105[0] = MEMORY[0x277D85DD0];
      v105[1] = 3221225472;
      v105[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_13;
      v105[3] = &unk_278428AD8;
      v84 = &v106;
      v106 = v100;
      v83 = &v107;
      v107 = contextCopy;
    }

    else
    {
      v52 = 0;
    }

    v53 = MEMORY[0x223D716E0](v52);
    if (v17)
    {
      v54 = v33;
    }

    else
    {
      v54 = 0;
    }

    v89 = bls_visualState2;
    v85 = v50;
    if (v54 == 1)
    {
      [contextCopy setAnimatingVisualState:1];
    }

    else if (!v17)
    {
      v55 = 0;
      v56 = contextCopy;
      goto LABEL_60;
    }

    v55 = v102;
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15;
    v102[3] = &unk_278428688;
    v86 = &v103;
    v103 = contextCopy;
    v56 = contextCopy;
    v44 = &v104;
    v104 = v17;
LABEL_60:
    v57 = MEMORY[0x223D716E0](v55);
    v58 = [BLSBacklightSceneUpdate alloc];
    isTouchTargetable = [v101 isTouchTargetable];
    BYTE1(v82) = [v101 isUpdateToDateSpecifier];
    LOBYTE(v82) = isTouchTargetable;
    v60 = v56;
    bls_visualState = v98;
    response = v89;
    v42 = [(BLSBacklightSceneUpdate *)v58 initForEnvironment:v60 visualState:v98 previousVisualState:v89 frameSpecifier:v93 animated:v33 triggerEvent:event touchTargetable:v82 isUpdateToDateSpecifier:v90 sceneContentsUpdated:v53 performBacklightRamp:v57 sceneContentsAnimationComplete:?];
    v61 = bls_scenes_log(v42);
    v34 = v100;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      identifier4 = [contextCopy identifier];
      *buf = 134219266;
      v120 = contextCopy;
      response = v89;
      OUTLINED_FUNCTION_5_0();
      *(v71 + 78) = v70;
      v122 = 2112;
      v123 = v42;
      v124 = 2112;
      *(v71 + 98) = v101;
      v125 = 2112;
      *(v71 + 108) = v100;
      v126 = 2112;
      *(v71 + 118) = v17;
      _os_log_debug_impl(&dword_21FE25000, v61, OS_LOG_TYPE_DEBUG, "%p:%{public}@ created sceneUpdate %@ from actions\n\t%@\n\t%@\n\t%@", buf, 0x3Eu);

      bls_visualState = v98;
    }

    if (v17)
    {
    }

    v31 = v101;
    if (v100)
    {
    }

    sceneCopy = v97;
    if (!v101)
    {
    }

    goto LABEL_69;
  }

  v30 = 0;
LABEL_72:

  return v30;
}

- (void)completeBLSActionsForUpdatedFBSScene:(void *)scene transitionContext:
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a2;
  sceneCopy = scene;
  v7 = sceneCopy;
  if (!self)
  {
    goto LABEL_43;
  }

  actions = [sceneCopy actions];
  v9 = [actions count];

  if (!v9)
  {
    goto LABEL_43;
  }

  v73 = v7;
  v74 = v5;
  *v78 = 0u;
  v79 = 0u;
  *v76 = 0u;
  v77 = 0u;
  actions2 = [v7 actions];
  v11 = [actions2 countByEnumeratingWithState:v76 objects:v81 count:16];
  if (!v11)
  {
    v13 = 0;
    v75 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = 0;
  v75 = 0;
  v14 = 0;
  v15 = *v77;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v77 != v15)
      {
        objc_enumerationMutation(actions2);
      }

      v17 = *(v76[1] + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v14;
        v19 = v13;
        v14 = v17;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v75;
          v19 = v13;
          v75 = v17;
        }

        else
        {
          objc_opt_class();
          v18 = v13;
          v19 = v17;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }
      }

      v20 = v17;

      v13 = v19;
    }

    v12 = [actions2 countByEnumeratingWithState:v76 objects:v81 count:16];
  }

  while (v12);
LABEL_18:

  backlightSceneEnvironment = [v5 backlightSceneEnvironment];
  identifier = [backlightSceneEnvironment identifier];
  v23 = v75;
  if (v14)
  {
    canSendResponse = [v14 canSendResponse];
    v25 = canSendResponse;
    v26 = bls_scenes_log(canSendResponse);
    response = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_1();
        v80 = v14;
        OUTLINED_FUNCTION_3_0(&dword_21FE25000, v54, v55, "%p nothing changed in updateAction for %{public}@, completing inline:%{public}@", v56, v57, v58, v59, v72, v73, v5, v75, v76[0], v76[1], v77, *(&v77 + 1), v78[0], v78[1], v79, *(&v79 + 1));
      }

      response = [MEMORY[0x277CF0B68] response];
      [v14 sendResponse:response];
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_0_1();
      v80 = v14;
      OUTLINED_FUNCTION_4_0(&dword_21FE25000, v28, v29, "%p nothing changed in updateAction for %{public}@, unable to send response:%{public}@", v30, v31, v32, v33, v72, v73, v5, v75, v76[0], v76[1], v77, *(&v77 + 1), v78[0], v78[1], v79, *(&v79 + 1));
    }
  }

  v7 = v73;
  if (v23)
  {
    canSendResponse2 = [v23 canSendResponse];
    v35 = canSendResponse2;
    v36 = bls_scenes_log(canSendResponse2);
    v37 = v36;
    if (v35)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_1();
        v80 = v23;
        OUTLINED_FUNCTION_3_0(&dword_21FE25000, v60, v61, "%p nothing changed in rampAction for %{public}@, completing inline:%{public}@", v62, v63, v64, v65, v72, v73, v74, v75, v76[0], v76[1], v77, *(&v77 + 1), v78[0], v78[1], v79, *(&v79 + 1));
      }

      v37 = [[BLSBacklightSceneUpdateBacklightRampResponse alloc] initWithRampDuration:0.0];
      [v23 sendResponse:v37];
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_0_1();
      v80 = v23;
      OUTLINED_FUNCTION_4_0(&dword_21FE25000, v38, v39, "%p nothing changed in rampAction for %{public}@, unable to send response:%{public}@", v40, v41, v42, v43, v72, v73, v74, v75, v76[0], v76[1], v77, *(&v77 + 1), v78[0], v78[1], v79, *(&v79 + 1));
    }
  }

  if (v13)
  {
    canSendResponse3 = [v13 canSendResponse];
    v45 = canSendResponse3;
    v46 = bls_scenes_log(canSendResponse3);
    response2 = v46;
    if (v45)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0_1();
        v80 = v13;
        OUTLINED_FUNCTION_3_0(&dword_21FE25000, v66, v67, "%p nothing changed in animationCompleteAction for %{public}@, completing inline:%{public}@", v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v77, *(&v77 + 1), v78[0], v78[1], v79, *(&v79 + 1));
      }

      response2 = [MEMORY[0x277CF0B68] response];
      [v13 sendResponse:response2];
    }

    else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_0_1();
      v80 = v13;
      OUTLINED_FUNCTION_4_0(&dword_21FE25000, v48, v49, "%p nothing changed in animationCompleteAction for %{public}@, unable to send response:%{public}@", v50, v51, v52, v53, v72, v73, v74, v75, v76[0], v76[1], v77, *(&v77 + 1), v78[0], v78[1], v79, *(&v79 + 1));
    }
  }

LABEL_43:
}

- (id)desiredFidelityRequestForUpdatedFBSScene:(uint64_t)scene fromSettings:(uint64_t)settings transitionContext:
{
  if (self)
  {
    v4 = [OUTLINED_FUNCTION_7_0(self a2];
    OUTLINED_FUNCTION_8_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v13 + 8 * i);
          v10 = objc_opt_class();
          if (OUTLINED_FUNCTION_6(v10))
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_8_0();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v11 = [BLSBacklightFBSSceneEnvironmentActionHandler desiredFidelityRequestFromAction:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)frameSpecifiersRequestForUpdatedFBSScene:(uint64_t)scene fromSettings:(uint64_t)settings transitionContext:
{
  if (self)
  {
    v4 = [OUTLINED_FUNCTION_7_0(self a2];
    OUTLINED_FUNCTION_8_0();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v13 + 8 * i);
          v10 = objc_opt_class();
          if (OUTLINED_FUNCTION_6(v10))
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        OUTLINED_FUNCTION_8_0();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v11 = [BLSBacklightFBSSceneEnvironmentActionHandler frameSpecifiersRequestFromAction:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __122__BLSBacklightFBSSceneEnvironmentDiffAction_performActionsForUpdatedFBSScene_settingsDiff_fromSettings_transitionContext___block_invoke_cold_1(id *a1)
{
  v6 = [*a1 identifier];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_10_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_12_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) bls_shortLoggingString];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void __118__BLSBacklightFBSSceneEnvironmentDiffAction_sceneUpdateForUpdatedFBSScene_fromSettings_transitionContext_environment___block_invoke_15_cold_1(id *a1)
{
  v1 = [*a1 identifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end