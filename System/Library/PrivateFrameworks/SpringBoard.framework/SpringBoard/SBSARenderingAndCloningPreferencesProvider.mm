@interface SBSARenderingAndCloningPreferencesProvider
- (id)preferencesFromContext:(id)context;
@end

@implementation SBSARenderingAndCloningPreferencesProvider

- (id)preferencesFromContext:(id)context
{
  v88 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = contextCopy;
  if (contextCopy)
  {
    v6 = contextCopy;
    v7 = objc_opt_self();
    v8 = v5;
    if (v7)
    {
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

    v10 = v9;

    if (!v10)
    {
      [(SBSARenderingAndCloningPreferencesProvider *)v8 preferencesFromContext:a2, self];
      v10 = 0;
      v5 = v6;
    }
  }

  else
  {
    v10 = 0;
  }

  v61 = v5;

  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__15;
  v82 = __Block_byref_object_dispose__15;
  preferences = [v10 preferences];
  v12 = objc_opt_class();
  v13 = preferences;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v83 = v15;
  v16 = SBSAContextAndPreferencesRepresentAnyContentVisible(v10, v79[5]);
  isAnimatedTransitionInProgress = [v10 isAnimatedTransitionInProgress];
  activeDisplay = [v10 activeDisplay];
  cloningStyle = [v10 cloningStyle];
  defaultsContext = [v10 defaultsContext];
  alwaysRenderSystemApertureFillOnGPU = [defaultsContext alwaysRenderSystemApertureFillOnGPU];

  defaultsContext2 = [v10 defaultsContext];
  neverRenderSystemApertureFillOnGPU = [defaultsContext2 neverRenderSystemApertureFillOnGPU];

  v24 = MGGetBoolAnswer();
  v25 = 0;
  if (((v16 | isAnimatedTransitionInProgress) & 1) == 0 && ((neverRenderSystemApertureFillOnGPU ^ 1) & alwaysRenderSystemApertureFillOnGPU & 1) == 0)
  {
    v26 = v24;
    isKeyLineRequiredForTransition = [v10 isKeyLineRequiredForTransition];
    if (activeDisplay == 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = isKeyLineRequiredForTransition;
    }

    v29 = 1;
    if (v26)
    {
      v29 = 2;
    }

    if (v28)
    {
      v25 = 0;
    }

    else
    {
      v25 = v29;
    }
  }

  overrideRenderingStyle = [v10 overrideRenderingStyle];
  if (overrideRenderingStyle != -1)
  {
    v25 = overrideRenderingStyle;
  }

  defaultsContext3 = [v10 defaultsContext];
  alwaysShowSystemApertureInSnapshots = [defaultsContext3 alwaysShowSystemApertureInSnapshots];

  isClearModeEnabled = [v10 isClearModeEnabled];
  if (([v10 isReachabilityActiveOrAnimating] & 1) != 0 || objc_msgSend(v10, "isAccessibilityZoomActiveAndEnabled"))
  {
    secureFlipBookElementContexts = [v10 secureFlipBookElementContexts];
    v60 = [secureFlipBookElementContexts count] != 0;

    v35 = 3;
  }

  else
  {
    v60 = 0;
    v35 = v25;
  }

  if (isClearModeEnabled)
  {
    v36 = 4;
  }

  else
  {
    v36 = v35;
  }

  if (isClearModeEnabled)
  {
    v37 = 4;
  }

  else
  {
    v37 = v25;
  }

  v76 = 0uLL;
  v77 = 0;
  SBSystemApertureContainerRenderingConfigurationMake(v36, cloningStyle, alwaysShowSystemApertureInSnapshots, &v76);
  v74 = 0uLL;
  v75 = 0;
  SBSystemApertureContainerRenderingConfigurationMake(v36, cloningStyle, alwaysShowSystemApertureInSnapshots, &v74);
  v72 = 0uLL;
  v73 = 0;
  v38 = SBSystemApertureContainerRenderingConfigurationMake(v37, cloningStyle, alwaysShowSystemApertureInSnapshots, &v72);
  if (isClearModeEnabled)
  {
    cloningStyle = 0;
  }

  if (self->_previousCloningStyle != cloningStyle || self->_previousCurtainRenderingStyle != v37 || self->_previousContainerRenderingStyle != v36)
  {
    if (v36 == v37)
    {
      v39 = SBLogSystemAperturePreferencesStackRenderingCloning(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = SBStringFromSystemApertureContainerRenderingStyle(v36);
        v41 = SBStringFromSystemApertureContainerCloningStyle(cloningStyle);
        *buf = 138543618;
        v85 = v40;
        v86 = 2114;
        v87 = v41;
        _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "Updating curtain and container rendering style to: %{public}@, cloning style: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v42 = SBLogSystemAperturePreferencesStackRenderingCloning(v38);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = SBStringFromSystemApertureContainerRenderingStyle(v37);
        v44 = SBStringFromSystemApertureContainerCloningStyle(cloningStyle);
        *buf = 138543618;
        v85 = v43;
        v86 = 2114;
        v87 = v44;
        _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEFAULT, "Updating curtain rendering style to: %{public}@, cloning style: %{public}@", buf, 0x16u);
      }

      v39 = SBLogSystemAperturePreferencesStackRenderingCloning(v45);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v46 = SBStringFromSystemApertureContainerRenderingStyle(v36);
        v47 = SBStringFromSystemApertureContainerCloningStyle(cloningStyle);
        *buf = 138543618;
        v85 = v46;
        v86 = 2114;
        v87 = v47;
        _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "Updating container rendering style to: %{public}@, cloning style: %{public}@", buf, 0x16u);
      }
    }
  }

  self->_previousContainerRenderingStyle = v36;
  self->_previousCurtainRenderingStyle = v37;
  self->_previousCloningStyle = cloningStyle;
  v48 = v79[5];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke;
  v64[3] = &unk_2783ADFF0;
  v71 = v60;
  v64[4] = self;
  v64[5] = &v78;
  v64[6] = a2;
  v65 = v74;
  v66 = v75;
  v67 = v76;
  v68 = v77;
  v70 = v73;
  v69 = v72;
  v49 = [v48 copyWithBlock:v64];
  v50 = v79[5];
  v79[5] = v49;

  v51 = [v10 copyByUpdatingPreferences:v79[5]];
  v63.receiver = self;
  v63.super_class = SBSARenderingAndCloningPreferencesProvider;
  v52 = [(SBSABasePreferencesProvider *)&v63 preferencesFromContext:v51];
  v53 = objc_opt_class();
  v54 = v52;
  if (v53)
  {
    if (objc_opt_isKindOfClass())
    {
      v55 = v54;
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;

  v57 = v79[5];
  v79[5] = v56;

  v58 = v79[5];
  _Block_object_dispose(&v78, 8);

  return v58;
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  [v3 setSystemApertureForcedToHardwareAdjacentPosition:*(a1 + 128)];
  v8 = [*(*(*(a1 + 40) + 8) + 40) containerViewDescriptions];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndex:v10];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2;
      v23[3] = &unk_2783ADFC8;
      v12 = *(a1 + 48);
      v23[4] = *(a1 + 32);
      v23[5] = v12;
      v24 = *(a1 + 56);
      v25 = *(a1 + 72);
      v13 = [v11 copyWithBlock:v23];

      [v9 replaceObjectAtIndex:v10 withObject:v13];
      ++v10;
    }

    while (v10 < [v9 count]);
  }

  v14 = [*(*(*(a1 + 40) + 8) + 40) indicatorContainerViewDescription];
  if (v14)
  {
    v15 = v14;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3;
    v20[3] = &unk_2783ADFC8;
    v16 = *(a1 + 48);
    v20[4] = *(a1 + 32);
    v20[5] = v16;
    v21 = *(a1 + 56);
    v22 = *(a1 + 72);
    v17 = [v14 copyWithBlock:v20];

    [v7 setIndicatorContainerViewDescription:v17];
  }

  [v7 setContainerViewDescriptions:v9];
  v18 = *(a1 + 80);
  v19 = *(a1 + 96);
  [v7 setCurtainRenderingConfiguration:&v18];
  v18 = *(a1 + 104);
  v19 = *(a1 + 120);
  [v7 setHighLevelCurtainRenderingConfiguration:&v18];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  [v7 setRenderingConfiguration:&v8];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  [v7 setRenderingConfiguration:&v8];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSARenderingAndCloningPreferencesProvider.m" lineNumber:28 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

@end