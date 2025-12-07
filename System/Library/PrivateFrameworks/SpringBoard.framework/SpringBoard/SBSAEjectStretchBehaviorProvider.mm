@interface SBSAEjectStretchBehaviorProvider
- (BOOL)_checkContextForExpiredContractionMilestone:(id)milestone;
- (BOOL)_isTimerExpired:(id)expired;
- (id)preferencesFromContext:(id)context;
- (void)_startTimerIfNecessary:(id)necessary context:(id)context;
@end

@implementation SBSAEjectStretchBehaviorProvider

- (id)preferencesFromContext:(id)context
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__65;
  v50 = __Block_byref_object_dispose__65;
  v51 = 0;
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
      [(SBSAEjectStretchBehaviorProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v47[5];
  v47[5] = v9;

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__65;
  v44 = __Block_byref_object_dispose__65;
  preferences = [v47[5] preferences];
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

  v45 = v15;
  settings = [objc_opt_class() settings];
  v17 = v41[5];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke;
  v35[3] = &unk_2783B79F8;
  v39 = a2;
  v35[4] = self;
  v37 = &v46;
  v18 = settings;
  v36 = v18;
  v38 = &v40;
  v19 = [v17 copyWithBlock:v35];
  v20 = v41[5];
  v41[5] = v19;

  v21 = v47[5];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29;
  v34[3] = &unk_2783B01E8;
  v34[5] = &v40;
  v34[6] = a2;
  v34[4] = self;
  v22 = [v21 copyWithBlock:v34];
  v23 = v47[5];
  v47[5] = v22;

  v24 = v47[5];
  v33.receiver = self;
  v33.super_class = SBSAEjectStretchBehaviorProvider;
  v25 = [(SBSABasePreferencesProvider *)&v33 preferencesFromContext:v24];
  v26 = objc_opt_class();
  v27 = v25;
  if (v26)
  {
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = v41[5];
  v41[5] = v29;

  if (self->_phase == 3)
  {
    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  v31 = v41[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v31;
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_1(a1, v5);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (*(v8 + 32) <= 1uLL)
  {
    *(v8 + 32) = 1;
    v9 = [*(a1 + 32) _isTimerExpired:*(*(*(a1 + 48) + 8) + 40)];
    v10 = *(a1 + 32);
    if (v9)
    {
      v10[4] = 2;
      v11 = SBLogSystemAperturePreferencesStackDynamicsAnimations(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_2(a1 + 48);
      }
    }

    else
    {
      v76 = v3;
      [v10 _startTimerIfNecessary:v7 context:*(*(*(a1 + 48) + 8) + 40)];
      v12 = [v7 containerViewDescriptions];
      v11 = [v12 mutableCopy];

      v13 = [v11 firstObject];
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2;
      v78[3] = &unk_2783AD778;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v81 = *(a1 + 64);
      v78[4] = v14;
      v79 = v15;
      v16 = v13;
      v80 = v16;
      v17 = [v16 copyWithBlock:v78];
      [v11 replaceObjectAtIndex:0 withObject:v17];
      [v7 setContainerViewDescriptions:v11];
      v18 = [*(a1 + 40) ejectionStretchSettings];
      v19 = [SBSAInterfaceElementPropertyIdentity alloc];
      v20 = [v17 interfaceElementIdentifier];
      v21 = [(SBSAInterfaceElementPropertyIdentity *)v19 initWithAssociatedInterfaceElementIdentifier:v20 andProperty:@"bounds"];

      v74 = v18;
      v22 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v18];
      [v7 setAnimatedTransitionDescription:v22 forProperty:v21 withMilestones:0];

      v23 = [SBSAInterfaceElementPropertyIdentity alloc];
      v24 = [v17 interfaceElementIdentifier];
      v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"center"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v25 withMilestones:0];

      v26 = [SBSAInterfaceElementPropertyIdentity alloc];
      v27 = [v17 interfaceElementIdentifier];
      v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"cornerRadius"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v28 withMilestones:0];

      v29 = [*(*(*(a1 + 56) + 8) + 40) indicatorContainerViewDescription];
      if (v29)
      {
        v30 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v29 interfaceElementIdentifier];
        v31 = v73 = v16;
        v32 = [(SBSAInterfaceElementPropertyIdentity *)v30 initWithAssociatedInterfaceElementIdentifier:v31 andProperty:@"bounds"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v32 withMilestones:0];

        v33 = [SBSAInterfaceElementPropertyIdentity alloc];
        v34 = [v29 interfaceElementIdentifier];
        v35 = [(SBSAInterfaceElementPropertyIdentity *)v33 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"center"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v35 withMilestones:0];

        v36 = [SBSAInterfaceElementPropertyIdentity alloc];
        v37 = [v29 interfaceElementIdentifier];
        v38 = [(SBSAInterfaceElementPropertyIdentity *)v36 initWithAssociatedInterfaceElementIdentifier:v37 andProperty:@"cornerRadius"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v38 withMilestones:0];

        v16 = v73;
      }

      v3 = v76;
    }
  }

  v39 = *(a1 + 32);
  if (v39[4] == 2)
  {
    v40 = [v39 _checkContextForExpiredContractionMilestone:*(*(*(a1 + 48) + 8) + 40)];
    if (v40)
    {
      *(*(a1 + 32) + 32) = 3;
      v41 = SBLogSystemAperturePreferencesStackDynamicsAnimations(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_3(a1 + 48);
      }
    }

    else
    {
      v42 = [v7 containerViewDescriptions];
      v41 = [v42 mutableCopy];

      v43 = [v41 firstObject];
      v44 = [*(a1 + 40) ejectionContractionSettings];
      v45 = [SBSAInterfaceElementPropertyIdentity alloc];
      v46 = [v43 interfaceElementIdentifier];
      v47 = [(SBSAInterfaceElementPropertyIdentity *)v45 initWithAssociatedInterfaceElementIdentifier:v46 andProperty:@"bounds"];

      if (!*(*(a1 + 32) + 48))
      {
        v48 = [(SBSAInterfaceElementPropertyIdentity *)v47 copy];
        v49 = *(a1 + 32);
        v50 = *(v49 + 48);
        *(v49 + 48) = v48;
      }

      v75 = v44;
      v51 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v44];
      v52 = [MEMORY[0x277CBEB98] setWithObject:0x28336F620];
      [v7 setAnimatedTransitionDescription:v51 forProperty:v47 withMilestones:v52];

      v53 = [SBSAInterfaceElementPropertyIdentity alloc];
      v54 = [v43 interfaceElementIdentifier];
      v55 = [(SBSAInterfaceElementPropertyIdentity *)v53 initWithAssociatedInterfaceElementIdentifier:v54 andProperty:@"center"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v47 withProperty:v55 withMilestones:0];

      v56 = [SBSAInterfaceElementPropertyIdentity alloc];
      v57 = [v43 interfaceElementIdentifier];
      v58 = [(SBSAInterfaceElementPropertyIdentity *)v56 initWithAssociatedInterfaceElementIdentifier:v57 andProperty:@"cornerRadius"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v47 withProperty:v58 withMilestones:0];

      v59 = v43;
      v60 = [*(*(*(a1 + 56) + 8) + 40) indicatorContainerViewDescription];
      if ([v41 count]== 1 && v60)
      {
        v61 = [SBSAInterfaceElementPropertyIdentity alloc];
        v62 = [v59 interfaceElementIdentifier];
        v63 = [(SBSAInterfaceElementPropertyIdentity *)v61 initWithAssociatedInterfaceElementIdentifier:v62 andProperty:?];
        v64 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v60 interfaceElementIdentifier];
        v65 = v77 = v3;
        v66 = [(SBSAInterfaceElementPropertyIdentity *)v64 initWithAssociatedInterfaceElementIdentifier:v65 andProperty:@"center"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v63 withProperty:v66 withMilestones:0];

        v67 = [SBSAInterfaceElementPropertyIdentity alloc];
        v68 = [v59 interfaceElementIdentifier];
        v69 = [(SBSAInterfaceElementPropertyIdentity *)v67 initWithAssociatedInterfaceElementIdentifier:v68 andProperty:@"cornerRadius"];
        v70 = [SBSAInterfaceElementPropertyIdentity alloc];
        v71 = [v60 interfaceElementIdentifier];
        v72 = [(SBSAInterfaceElementPropertyIdentity *)v70 initWithAssociatedInterfaceElementIdentifier:v71 andProperty:@"cornerRadius"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v69 withProperty:v72 withMilestones:0];

        v3 = v77;
      }
    }
  }
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = objc_opt_self();
    v4 = v9;
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
      __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) ejectionMaxCornerRadius];
  v8 = v7;
  [*(a1 + 48) bounds];
  [*(a1 + 48) center];
  SBUnintegralizedRectCenteredAboutPoint();
  [*(a1 + 40) ejectionYUpOffset];
  [*(a1 + 40) ejectionYStretch];
  SBRectWithSize();
  [v6 setBounds:?];
  UIRectGetCenter();
  [v6 setCenter:?];
  [v6 setCornerRadius:v8];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29(uint64_t a1, void *a2)
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
      __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setKeyLineRequiredForTransition:1];
  [v6 setPreferences:*(*(*(a1 + 40) + 8) + 40)];
}

- (BOOL)_isTimerExpired:(id)expired
{
  expiredCopy = expired;
  elapsedTimerDescriptions = [expiredCopy elapsedTimerDescriptions];
  if ([elapsedTimerDescriptions count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__SBSAEjectStretchBehaviorProvider__isTimerExpired___block_invoke;
    v12[3] = &unk_2783B2950;
    v12[4] = self;
    v6 = [elapsedTimerDescriptions indexOfObjectPassingTest:v12];
    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      identifierOfActiveTimer = self->_identifierOfActiveTimer;
      self->_identifierOfActiveTimer = 0;

      v10 = SBLogSystemAperturePreferencesStackDynamicsAnimations(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [SBSAEjectStretchBehaviorProvider _isTimerExpired:expiredCopy];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __52__SBSAEjectStretchBehaviorProvider__isTimerExpired___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (void)_startTimerIfNecessary:(id)necessary context:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  if (!self->_identifierOfActiveTimer)
  {
    v8 = [SBSATimerDescription alloc];
    settings = [objc_opt_class() settings];
    [settings ejectionStretchDuration];
    v10 = [(SBSATimerDescription *)v8 initWithTimeInterval:?];

    timerDescriptionIdentifier = [(SBSATimerDescription *)v10 timerDescriptionIdentifier];
    identifierOfActiveTimer = self->_identifierOfActiveTimer;
    self->_identifierOfActiveTimer = timerDescriptionIdentifier;

    timerDescriptions = [necessaryCopy timerDescriptions];
    if (timerDescriptions)
    {
      timerDescriptions2 = [necessaryCopy timerDescriptions];
      v15 = [timerDescriptions2 mutableCopy];
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v15 addObject:v10];
    v16 = SBLogSystemAperturePreferencesStackDynamicsAnimations([necessaryCopy setTimerDescriptions:v15]);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SBSAEjectStretchBehaviorProvider _startTimerIfNecessary:contextCopy context:?];
    }
  }
}

- (BOOL)_checkContextForExpiredContractionMilestone:(id)milestone
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_pendingCollapsePropertyIdentity)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  animatedTransitionResults = [milestone animatedTransitionResults];
  v5 = [animatedTransitionResults countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(animatedTransitionResults);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        associatedInterfaceElementPropertyIdentity = [v9 associatedInterfaceElementPropertyIdentity];
        if (BSEqualObjects())
        {
          isTransitionEndTargeted = [v9 isTransitionEndTargeted];

          if (isTransitionEndTargeted)
          {
            pendingCollapsePropertyIdentity = self->_pendingCollapsePropertyIdentity;
            self->_pendingCollapsePropertyIdentity = 0;

            v13 = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [animatedTransitionResults countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 handleFailureInMethod:a2 object:a3 file:@"SBSAEjectStretchBehaviorProvider.m" lineNumber:38 description:{@"Unexpected class – expected '%@', got '%@'", v6, v8}];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_3_18(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Moving to Contracting phase", v3, v4, v5, v6);
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_3_18(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Complete", v3, v4, v5, v6);
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29_cold_1(uint64_t a1, uint64_t a2)
{
  v11 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

- (void)_isTimerExpired:(void *)a1 .cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Timer Expired", v3, v4, v5, v6);
}

- (void)_startTimerIfNecessary:(void *)a1 context:.cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Stretching, starting timer", v3, v4, v5, v6);
}

@end