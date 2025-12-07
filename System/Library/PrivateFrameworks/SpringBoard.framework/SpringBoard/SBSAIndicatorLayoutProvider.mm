@interface SBSAIndicatorLayoutProvider
- (id)preferencesFromContext:(id)context;
@end

@implementation SBSAIndicatorLayoutProvider

- (id)preferencesFromContext:(id)context
{
  v96 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v6 = objc_opt_self();
    v7 = contextCopy;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      [(SBSAIndicatorLayoutProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  preferences = [v9 preferences];
  indicatorContainerViewDescription = [preferences indicatorContainerViewDescription];

  preferences2 = [v9 preferences];
  indicatorElementDescription = [preferences2 indicatorElementDescription];

  preferences3 = [v9 preferences];
  maintainedPreferences = [preferences3 maintainedPreferences];

  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  if (indicatorContainerViewDescription && indicatorElementDescription)
  {
    v70 = maintainedPreferences;
    v67 = a2;
    preferences4 = [v9 preferences];
    maintainedPreferences2 = [preferences4 maintainedPreferences];
    indicatorAppearanceStateContext2 = [maintainedPreferences2 indicatorAppearanceStateContext];
    activeIndicatorElementContext = [indicatorAppearanceStateContext2 activeIndicatorElementContext];

    microIndicatorPhase = [indicatorAppearanceStateContext microIndicatorPhase];
    interSensorIndicatorPhase = [indicatorAppearanceStateContext interSensorIndicatorPhase];
    microIndicatorEjectionPhase = [indicatorAppearanceStateContext microIndicatorEjectionPhase];
    preferences5 = [v9 preferences];
    containerViewDescriptions = [preferences5 containerViewDescriptions];
    lastObject = [containerViewDescriptions lastObject];

    [lastObject bounds];
    [lastObject center];
    SBUnintegralizedRectCenteredAboutPoint();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = *(MEMORY[0x277CBF2C0] + 16);
    v87 = *MEMORY[0x277CBF2C0];
    v88 = v32;
    v89 = *(MEMORY[0x277CBF2C0] + 32);
    v66 = activeIndicatorElementContext;
    v68 = lastObject;
    if ([activeIndicatorElementContext supportsMicroIndicatorPosition])
    {
      elementContexts = [v9 elementContexts];
      v34 = SBSAElementContextAssociatedWithContainerViewDescription(lastObject, elementContexts, 0);

      layoutMode = [v34 layoutMode];
      systemApertureCustomLayout = 0;
      if (layoutMode == 3)
      {
        systemApertureCustomLayout = [v34 systemApertureCustomLayout];
      }

      v37 = SBSAMicroIndicatorFrameNearContainer(systemApertureCustomLayout, microIndicatorEjectionPhase > 1, &v87, indicatorAppearanceStateContext, v9, v25, v27, v29, v31);
      v39 = v38;
      v41 = v40;
      v43 = v42;
    }

    else
    {
      inertContainerFrame = [v9 inertContainerFrame];
      v37 = v45;
      v39 = v46;
      v41 = v47;
      v43 = v48;
    }

    v69 = contextCopy;
    v49 = SBLogSystemAperturePreferencesStackIndicator(inertContainerFrame);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      queryIteration = [v9 queryIteration];
      v98.origin.x = v37;
      v98.origin.y = v39;
      v98.size.width = v41;
      v98.size.height = v43;
      v60 = NSStringFromCGRect(v98);
      v61 = [v70 description];
      v62 = v61;
      v63 = @"nil";
      *buf = 134349570;
      v91 = queryIteration;
      if (v61)
      {
        v63 = v61;
      }

      v92 = 2112;
      v93 = v60;
      v94 = 2112;
      v95 = v63;
      _os_log_debug_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEBUG, "[%{public}lu] Setting indicator frame: %@; persistedState: %@", buf, 0x20u);
    }

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke;
    v86[3] = &unk_2783B5508;
    v86[4] = self;
    v86[5] = v67;
    *&v86[6] = v37;
    *&v86[7] = v39;
    *&v86[8] = v41;
    *&v86[9] = v43;
    v50 = [indicatorContainerViewDescription copyWithBlock:v86];

    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2;
    v78[3] = &unk_2783B5530;
    v80 = v67;
    v78[4] = self;
    v51 = v66;
    v79 = v51;
    v84 = microIndicatorPhase > 1;
    v81 = v87;
    v82 = v88;
    v83 = v89;
    v85 = interSensorIndicatorPhase > 1;
    v52 = [indicatorElementDescription copyWithBlock:v78];

    preferences6 = [v9 preferences];
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3;
    v74[3] = &unk_2783AD778;
    v77 = v67;
    v74[4] = self;
    indicatorElementDescription = v52;
    v75 = indicatorElementDescription;
    indicatorContainerViewDescription = v50;
    v76 = indicatorContainerViewDescription;
    v54 = [preferences6 copyWithBlock:v74];

    if ((microIndicatorEjectionPhase - 1) <= 1)
    {
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4;
      v73[3] = &unk_2783A93E8;
      v73[4] = self;
      v73[5] = v67;
      v55 = [v54 copyWithBlock:v73];

      v54 = v55;
    }

    contextCopy = v69;
    maintainedPreferences = v70;
    v56 = [v9 copyByUpdatingPreferences:v54];

    v9 = v56;
  }

  v72.receiver = self;
  v72.super_class = SBSAIndicatorLayoutProvider;
  v57 = [(SBSABasePreferencesProvider *)&v72 preferencesFromContext:v9];

  return v57;
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke(double *a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v2 = objc_opt_self();
    v3 = v14;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 setBounds:?];
  UIRectGetCenter();
  [v5 setCenter:?];
  [v5 setContentBounds:{v7, v9, v11, v13}];
  UIRectGetCenter();
  [v5 setContentCenter:?];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 40) supportsMicroIndicatorPosition])
  {
    if (*(a1 + 104) == 1)
    {
      [v7 setIndicatorViewAlpha:1.0];
      [v7 setIndicatorViewBlurProgress:0.0];
      v8 = *(a1 + 72);
      v11 = *(a1 + 56);
      v12 = v8;
      v13 = *(a1 + 88);
      [v7 setIndicatorViewTransform:&v11];
    }

    if (*(a1 + 105) == 1)
    {
      [v7 setFixedIndicatorViewAlpha:1.0];
      [v7 setFixedIndicatorViewBlurProgress:0.0];
      v9 = *(MEMORY[0x277CBF2C0] + 16);
      v11 = *MEMORY[0x277CBF2C0];
      v12 = v9;
      v13 = *(MEMORY[0x277CBF2C0] + 32);
      [v7 setFixedIndicatorViewTransform:&v11];
    }
  }

  else
  {
    [v7 setIndicatorViewAlpha:1.0];
    [v7 setIndicatorViewBlurProgress:0.0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v11 = *MEMORY[0x277CBF2C0];
    v12 = v10;
    v13 = *(MEMORY[0x277CBF2C0] + 32);
    [v7 setIndicatorViewTransform:&v11];
  }
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorElementDescription:*(a1 + 40)];
  [v6 setIndicatorContainerViewDescription:*(a1 + 48)];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v2 = objc_opt_self();
    v3 = v6;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setBlobEnabled:1];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAIndicatorLayoutProvider.m" lineNumber:27 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaindicatore.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end