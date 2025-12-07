@interface SBSAIndicatorAppearanceStateTransitionProvider
- (BOOL)_areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:(id)context;
- (BOOL)_milestoneDidReachExpectedMilestone:(double)milestone property:(id)property context:(id)context;
- (id)_attemptRecombinationWithPreferences:(id)preferences context:(id)context interSensorIndicatorNeedsAppearing:(BOOL)appearing;
- (id)_ensureMicroRegionIndicatorOnlyVisible:(id)visible context:(id)context;
- (id)_startMicroMitosisIfNecessary:(id)necessary context:(id)context;
- (id)_startMicroRecombinationIfNecessary:(id)necessary context:(id)context;
- (id)_transitionInterSensorRegionToAppearingIfNecessary:(id)necessary context:(id)context;
- (id)_transitionInterSensorRegionToDisappearingIfNecessary:(id)necessary context:(id)context;
- (id)_transitionMicroRegionToAcceptingAndDisappearingIfNecessary:(id)necessary context:(id)context;
- (id)_transitionMicroRegionToEjectingAndAppearingIfNecessary:(id)necessary context:(id)context;
- (id)_updateIndicatorAppearStateWithPreferences:(id)preferences context:(id)context;
- (id)_updatedPreferencesAddingMilestonesIfNeededWithPreferences:(id)preferences context:(id)context;
- (id)_updatedPreferencesForCompletedMilestonesWithContext:(id)context;
- (id)preferencesFromContext:(id)context;
- (void)_cleanupMicroMitosisIfNecessary;
- (void)_cleanupMicroRecombinationIfNecessary;
@end

@implementation SBSAIndicatorAppearanceStateTransitionProvider

- (void)_cleanupMicroMitosisIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorMitosisProvider);
  [WeakRetained removeFromParentProvider];

  objc_storeWeak(&self->_indicatorMitosisProvider, 0);
}

- (void)_cleanupMicroRecombinationIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_indicatorRecombinationProvider);
  [WeakRetained removeFromParentProvider];

  objc_storeWeak(&self->_indicatorRecombinationProvider, 0);
}

- (id)preferencesFromContext:(id)context
{
  v70[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy)
  {
    v5 = objc_opt_self();
    v6 = contextCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v8 = 0;
  }

  v60 = contextCopy;

  v9 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _updatedPreferencesForCompletedMilestonesWithContext:v8];
  maintainedPreferences = [v9 maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];

  preferences = [v8 preferences];
  maintainedPreferences2 = [preferences maintainedPreferences];
  indicatorAppearanceStateContext2 = [maintainedPreferences2 indicatorAppearanceStateContext];

  LOBYTE(preferences) = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:indicatorAppearanceStateContext2];
  v15 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:indicatorAppearanceStateContext];
  if ((preferences & 1) == 0 && v15)
  {
    v16 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336E6D0];
    v70[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
    v18 = [v9 copyByAddingActions:v17];

    v9 = v18;
  }

  indicatorElementContext = [v8 indicatorElementContext];
  v61 = indicatorElementContext;
  if (indicatorAppearanceStateContext)
  {
    if (indicatorElementContext)
    {
      v59 = indicatorAppearanceStateContext2;
      backlightLuminanceLevel = [v8 backlightLuminanceLevel];
      isReachabilityActiveOrAnimating = [v8 isReachabilityActiveOrAnimating];
      isAccessibilityZoomActiveAndEnabled = [v8 isAccessibilityZoomActiveAndEnabled];
      secureFlipBookElementContexts = [v8 secureFlipBookElementContexts];
      v24 = [secureFlipBookElementContexts count] == 0;

      elementContexts = [v8 elementContexts];
      if ([elementContexts count])
      {
        [v8 elementContexts];
        v27 = v26 = isReachabilityActiveOrAnimating;
        v58 = [v27 bs_containsObjectPassingTest:&__block_literal_global_221] ^ 1;

        isReachabilityActiveOrAnimating = v26;
      }

      else
      {
        v58 = 0;
      }

      isDisappeared = [indicatorAppearanceStateContext isDisappeared];
      if (isDisappeared)
      {
        indicatorContainerViewDescription = [v9 indicatorContainerViewDescription];
        interfaceElementIdentifier = [indicatorContainerViewDescription interfaceElementIdentifier];

        activeIndicatorContainerIdentifier = self->_activeIndicatorContainerIdentifier;
        v37 = SBLogSystemAperturePreferencesStackIndicator(v36);
        v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG);
        indicatorAppearanceStateContext2 = v59;
        if (activeIndicatorContainerIdentifier == interfaceElementIdentifier)
        {
          if (v38)
          {
            *buf = 134349570;
            queryIteration = [v8 queryIteration];
            v65 = 2112;
            *v66 = v61;
            *&v66[8] = 2112;
            v67 = indicatorAppearanceStateContext;
            _os_log_debug_impl(&dword_21ED4E000, v37, OS_LOG_TYPE_DEBUG, "[%{public}lu] Both indicators are disappeared but there is an element context: %@, so transition the interSensorRegion indicator to appear %@", buf, 0x20u);
          }

          v41 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureInterSensorRegionIndicatorOnlyVisible:v9 context:v8];
        }

        else
        {
          if (v38)
          {
            [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:v8];
          }

          objc_storeStrong(&self->_activeIndicatorContainerIdentifier, interfaceElementIdentifier);
          self->_hasAppearedOnce = 0;
          v39 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336E6E8];
          v69 = v39;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
          v41 = [v9 copyByAddingActions:v40];

          v9 = v39;
        }

        goto LABEL_41;
      }

      indicatorAppearanceStateContext2 = v59;
      if (backlightLuminanceLevel < 1) | (isReachabilityActiveOrAnimating | isAccessibilityZoomActiveAndEnabled) & v24 & 1 || ((v58 ^ 1) & 1) != 0 || (isDisappeared = [v61 indicatorNeedsDisplayWellKnownLocation], (isDisappeared))
      {
        v42 = SBLogSystemAperturePreferencesStackIndicator(isDisappeared);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134350082;
          queryIteration = [v8 queryIteration];
          v65 = 1024;
          *v66 = isReachabilityActiveOrAnimating;
          *&v66[4] = 1024;
          *&v66[6] = backlightLuminanceLevel > 0;
          LOWORD(v67) = 1024;
          *(&v67 + 2) = v58;
          HIWORD(v67) = 2112;
          v68 = indicatorAppearanceStateContext;
          _os_log_debug_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEBUG, "[%{public}lu] Ejection is not viable, so ensure the intersensor region indicator is visible, and the micro is accepted. Reachability active: %{BOOL}u; Backlight On: %{BOOL}u; Are there portrait elements in Jindo: %{BOOL}u; AppearanceStateContext: %@", buf, 0x28u);
        }

        v31 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureInterSensorRegionIndicatorOnlyVisible:v9 context:v8];
      }

      else
      {
        v43 = SBLogSystemAperturePreferencesStackIndicator(isDisappeared);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
        }

        v31 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureMicroRegionIndicatorOnlyVisible:v9 context:v8];
      }
    }

    else
    {
      v31 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _ensureBothIndicatorsHidden:v9 context:v8];
    }

    v41 = v31;

LABEL_41:
    v9 = v41;
    goto LABEL_42;
  }

  indicatorContainerViewDescription2 = [v9 indicatorContainerViewDescription];
  interfaceElementIdentifier2 = [indicatorContainerViewDescription2 interfaceElementIdentifier];

  if (interfaceElementIdentifier2)
  {
    [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
  }

  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
  v30 = self->_activeIndicatorContainerIdentifier;
  self->_activeIndicatorContainerIdentifier = 0;

  self->_hasAppearedOnce = 0;
LABEL_42:
  v44 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _updateIndicatorAppearStateWithPreferences:v9 context:v8];

  v45 = [v8 copyByUpdatingPreferences:v44];
  v62.receiver = self;
  v62.super_class = SBSAIndicatorAppearanceStateTransitionProvider;
  v46 = [(SBSABasePreferencesProvider *)&v62 preferencesFromContext:v45];
  if (v46)
  {
    v47 = objc_opt_self();
    v48 = v46;
    if (v47)
    {
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;

    if (!v50)
    {
      [SBSAIndicatorAppearanceStateTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v50 = 0;
  }

  maintainedPreferences3 = [v50 maintainedPreferences];
  indicatorAppearanceStateContext3 = [maintainedPreferences3 indicatorAppearanceStateContext];

  v53 = BSEqualObjects();
  if ((v53 & 1) == 0)
  {
    v54 = SBLogSystemAperturePreferencesStackIndicator(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      queryIteration2 = [v8 queryIteration];
      *buf = 134349570;
      queryIteration = queryIteration2;
      v65 = 2112;
      *v66 = indicatorAppearanceStateContext3;
      *&v66[8] = 2112;
      v67 = indicatorAppearanceStateContext2;
      _os_log_debug_impl(&dword_21ED4E000, v54, OS_LOG_TYPE_DEBUG, "[%{public}lu] indicator layout context updated: %@; from: %@", buf, 0x20u);
    }

    v55 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _updatedPreferencesAddingMilestonesIfNeededWithPreferences:v50 context:v8];

    v50 = v55;
  }

  return v50;
}

- (id)_ensureMicroRegionIndicatorOnlyVisible:(id)visible context:(id)context
{
  visibleCopy = visible;
  contextCopy = context;
  elementLayoutTransition = [visibleCopy elementLayoutTransition];
  isLayoutChange = [elementLayoutTransition isLayoutChange];

  if (isLayoutChange)
  {
    [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
    v10 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionMicroRegionToEjectingAndAppearingIfNecessary:visibleCopy context:contextCopy];
    v11 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToDisappearingIfNecessary:v10 context:contextCopy];
  }

  else
  {
    v11 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _startMicroMitosisIfNecessary:visibleCopy context:contextCopy];
  }

  return v11;
}

- (id)_updateIndicatorAppearStateWithPreferences:(id)preferences context:(id)context
{
  contextCopy = context;
  preferencesCopy = preferences;
  maintainedPreferences = [preferencesCopy maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];

  indicatorElementDescription = [preferencesCopy indicatorElementDescription];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke;
  v21[3] = &unk_2783AD778;
  v21[4] = self;
  v22 = contextCopy;
  v23 = indicatorAppearanceStateContext;
  v24 = a2;
  v12 = contextCopy;
  v13 = indicatorAppearanceStateContext;
  v14 = [indicatorElementDescription copyWithBlock:v21];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2;
  v18[3] = &unk_2783AD750;
  v19 = v14;
  v20 = a2;
  v18[4] = self;
  v15 = v14;
  v16 = [preferencesCopy copyWithBlock:v18];

  return v16;
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v11;
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

    v3 = v11;
    if (!v7)
    {
      __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_cold_1();
      v3 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 appearState] != 3 && objc_msgSend(v7, "appearState") != 1;
  v9 = [*(a1 + 40) indicatorElementContext];

  if (v9)
  {
    if (*(*(a1 + 32) + 104) & v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }
  }

  else if ([*(a1 + 48) isDisappeared])
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  [v7 setAppearState:v10];
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2(uint64_t a1, void *a2)
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
      __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorElementDescription:*(a1 + 40)];
}

- (id)_attemptRecombinationWithPreferences:(id)preferences context:(id)context interSensorIndicatorNeedsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  preferencesCopy = preferences;
  contextCopy = context;
  v10 = preferencesCopy;
  maintainedPreferences = [v10 maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  isMicroVisible = [indicatorAppearanceStateContext isMicroVisible];

  if (isMicroVisible)
  {
    elementLayoutTransition = [v10 elementLayoutTransition];
    isLayoutChange = [elementLayoutTransition isLayoutChange];

    if (isLayoutChange)
    {
      [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
      v16 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionMicroRegionToAcceptingAndDisappearingIfNecessary:v10 context:contextCopy];

      if (appearingCopy)
      {
        [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToAppearingIfNecessary:v16 context:contextCopy];
      }

      else
      {
        [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToDisappearingIfNecessary:v16 context:contextCopy];
      }
      v18 = ;
      goto LABEL_13;
    }

    v17 = [(SBSAIndicatorAppearanceStateTransitionProvider *)self _startMicroRecombinationIfNecessary:v10 context:contextCopy];
  }

  else
  {
    if (appearingCopy)
    {
      [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToAppearingIfNecessary:v10 context:contextCopy];
    }

    else
    {
      [(SBSAIndicatorAppearanceStateTransitionProvider *)self _transitionInterSensorRegionToDisappearingIfNecessary:v10 context:contextCopy];
    }
    v17 = ;
  }

  v18 = v17;
  v16 = v10;
LABEL_13:

  return v18;
}

- (id)_transitionInterSensorRegionToAppearingIfNecessary:(id)necessary context:(id)context
{
  contextCopy = context;
  necessaryCopy = necessary;
  maintainedPreferences = [necessaryCopy maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = contextCopy;
  v20 = a2;
  v18[4] = self;
  v11 = contextCopy;
  v12 = [indicatorAppearanceStateContext copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke_40;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [necessaryCopy copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 interSensorIndicatorPhase];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    *(v9 + 56) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
    v14 = 134349314;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to appearing from: %@", &v14, 0x16u);
  }

  [v7 setInterSensorIndicatorPhase:2];
LABEL_16:
}

- (id)_transitionInterSensorRegionToDisappearingIfNecessary:(id)necessary context:(id)context
{
  contextCopy = context;
  necessaryCopy = necessary;
  maintainedPreferences = [necessaryCopy maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = contextCopy;
  v20 = a2;
  v18[4] = self;
  v11 = contextCopy;
  v12 = [indicatorAppearanceStateContext copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke_42;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [necessaryCopy copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
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
      __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 interSensorIndicatorPhase];
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    *(v9 + 32) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
    v14 = 134349314;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to disappearing from: %@", &v14, 0x16u);
  }

  [v7 setInterSensorIndicatorPhase:1];
LABEL_16:
}

- (id)_transitionMicroRegionToEjectingAndAppearingIfNecessary:(id)necessary context:(id)context
{
  contextCopy = context;
  necessaryCopy = necessary;
  maintainedPreferences = [necessaryCopy maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = contextCopy;
  v20 = a2;
  v18[4] = self;
  v11 = contextCopy;
  v12 = [indicatorAppearanceStateContext copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke_43;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [necessaryCopy copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 microIndicatorPhase];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
    v20 = 134349314;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to appearing from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorPhase:2];
LABEL_16:
  v14 = [v7 microIndicatorEjectionPhase];
  if (v14)
  {
    if (v14 != 1)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = 0;
  }

  v17 = SBLogSystemAperturePreferencesStackIndicator(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) queryIteration];
    v19 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
    v20 = 134349314;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to ejecting from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorEjectionPhase:2];
LABEL_22:
}

- (id)_transitionMicroRegionToAcceptingAndDisappearingIfNecessary:(id)necessary context:(id)context
{
  contextCopy = context;
  necessaryCopy = necessary;
  maintainedPreferences = [necessaryCopy maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke;
  v18[3] = &unk_2783AD750;
  v19 = contextCopy;
  v20 = a2;
  v18[4] = self;
  v11 = contextCopy;
  v12 = [indicatorAppearanceStateContext copyWithBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke_44;
  v16[3] = &unk_2783BA0B0;
  v17 = v12;
  v13 = v12;
  v14 = [necessaryCopy copyByUpdatingMaintainedPreferences:v16];

  return v14;
}

void __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 microIndicatorPhase];
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  v11 = SBLogSystemAperturePreferencesStackIndicator(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) queryIteration];
    v13 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
    v20 = 134349314;
    v21 = v12;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to disappearing from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorPhase:1];
LABEL_16:
  v14 = [v7 microIndicatorEjectionPhase];
  if (v14 != 3)
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 32);
    v16 = *(v15 + 72);
    *(v15 + 72) = 0;
  }

  v17 = SBLogSystemAperturePreferencesStackIndicator(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [*(a1 + 40) queryIteration];
    v19 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
    v20 = 134349314;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change Micro indicator state to accepting from: %@", &v20, 0x16u);
  }

  [v7 setMicroIndicatorEjectionPhase:1];
LABEL_22:
}

- (id)_startMicroMitosisIfNecessary:(id)necessary context:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  v8 = necessaryCopy;
  maintainedPreferences = [v8 maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  microIndicatorPhase = [indicatorAppearanceStateContext microIndicatorPhase];

  if (microIndicatorPhase)
  {
    if (microIndicatorPhase != 1)
    {
      goto LABEL_16;
    }

    pendingMicroRegionDisappearanceProperty = self->_pendingMicroRegionDisappearanceProperty;
    self->_pendingMicroRegionDisappearanceProperty = 0;
  }

  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_indicatorMitosisProvider);
  parentProvider = [WeakRetained parentProvider];

  if (parentProvider == self)
  {
    containerViewDescriptions = SBLogSystemAperturePreferencesStackIndicator(v15);
    if (os_log_type_enabled(containerViewDescriptions, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroMitosisIfNecessary:context:];
    }
  }

  else
  {
    [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
    containerViewDescriptions = [v8 containerViewDescriptions];
    lastObject = [containerViewDescriptions lastObject];
    elementContexts = [contextCopy elementContexts];
    v19 = SBSAElementContextAssociatedWithContainerViewDescription(lastObject, elementContexts, 0);

    layoutMode = [v19 layoutMode];
    if (layoutMode + 1 >= 3)
    {
      if (layoutMode == 3)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      layoutMode = [containerViewDescriptions count];
      v21 = layoutMode > 1;
    }

    v22 = SBLogSystemAperturePreferencesStackIndicator(layoutMode);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroMitosisIfNecessary:context:];
    }

    v23 = [[SBSAIndicatorMitosisTransitionProvider alloc] initWithType:v21 reversed:0];
    objc_storeWeak(&self->_indicatorMitosisProvider, v23);
    [(SBSABasePreferencesProvider *)self setChildProvider:v23];

    WeakRetained = v23;
  }

LABEL_16:

  return v8;
}

- (id)_startMicroRecombinationIfNecessary:(id)necessary context:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  v8 = necessaryCopy;
  maintainedPreferences = [v8 maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
  microIndicatorPhase = [indicatorAppearanceStateContext microIndicatorPhase];

  if (microIndicatorPhase != 3)
  {
    if (microIndicatorPhase != 2)
    {
      goto LABEL_16;
    }

    pendingMicroRegionAppearanceProperty = self->_pendingMicroRegionAppearanceProperty;
    self->_pendingMicroRegionAppearanceProperty = 0;
  }

  [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroMitosisIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_indicatorRecombinationProvider);
  parentProvider = [WeakRetained parentProvider];

  if (parentProvider == self)
  {
    containerViewDescriptions = SBLogSystemAperturePreferencesStackIndicator(v15);
    if (os_log_type_enabled(containerViewDescriptions, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroRecombinationIfNecessary:context:];
    }
  }

  else
  {
    [(SBSAIndicatorAppearanceStateTransitionProvider *)self _cleanupMicroRecombinationIfNecessary];
    containerViewDescriptions = [v8 containerViewDescriptions];
    lastObject = [containerViewDescriptions lastObject];
    elementContexts = [contextCopy elementContexts];
    v19 = SBSAElementContextAssociatedWithContainerViewDescription(lastObject, elementContexts, 0);

    layoutMode = [v19 layoutMode];
    if (layoutMode + 1 >= 3)
    {
      if (layoutMode == 3)
      {
        v21 = 2;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      layoutMode = [containerViewDescriptions count];
      v21 = layoutMode > 1;
    }

    v22 = SBLogSystemAperturePreferencesStackIndicator(layoutMode);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [SBSAIndicatorAppearanceStateTransitionProvider _startMicroRecombinationIfNecessary:context:];
    }

    v23 = [[SBSAIndicatorMitosisTransitionProvider alloc] initWithType:v21 reversed:1];
    objc_storeWeak(&self->_indicatorRecombinationProvider, v23);
    [(SBSABasePreferencesProvider *)self setChildProvider:v23];

    WeakRetained = v23;
  }

LABEL_16:

  return v8;
}

- (id)_updatedPreferencesAddingMilestonesIfNeededWithPreferences:(id)preferences context:(id)context
{
  contextCopy = context;
  preferencesCopy = preferences;
  maintainedPreferences = [preferencesCopy maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];

  indicatorContainerViewDescription = [preferencesCopy indicatorContainerViewDescription];
  interfaceElementIdentifier = [indicatorContainerViewDescription interfaceElementIdentifier];

  indicatorElementDescription = [preferencesCopy indicatorElementDescription];
  interfaceElementIdentifier2 = [indicatorElementDescription interfaceElementIdentifier];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke;
  v21[3] = &unk_2783BA0D8;
  v21[4] = self;
  v22 = indicatorAppearanceStateContext;
  v23 = contextCopy;
  v24 = interfaceElementIdentifier2;
  v25 = interfaceElementIdentifier;
  v26 = a2;
  v15 = interfaceElementIdentifier;
  v16 = interfaceElementIdentifier2;
  v17 = contextCopy;
  v18 = indicatorAppearanceStateContext;
  v19 = [preferencesCopy copyWithBlock:v21];

  return v19;
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
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
      __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 40) interSensorIndicatorPhase] == 2)
  {
    v8 = *(a1 + 32);
    if (!*(v8 + 32))
    {
      v9 = *(v8 + 56);
      v10 = SBLogSystemAperturePreferencesStackIndicator(2);
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_2(a1);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v12;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating appearance milestone for intersensor region: disappearance milestone does not exist", buf, 0xCu);
      }

      v13 = *(a1 + 32);
      v14 = *(v13 + 56);
      *(v13 + 56) = 0;

      v15 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"fixedIndicatorViewAlpha"];
      v16 = *(a1 + 32);
      v17 = *(v16 + 32);
      *(v16 + 32) = v15;

      v18 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v18 forPropertyIdentity:*(*(a1 + 32) + 32)];
    }
  }

  if ([*(a1 + 40) interSensorIndicatorPhase] == 1)
  {
    v19 = *(a1 + 32);
    if (!*(v19 + 56))
    {
      v20 = *(v19 + 32);
      v21 = SBLogSystemAperturePreferencesStackIndicator(1);
      v22 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_3(a1);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v23;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating disappearance milestone for intersensor region: appearance milestone does not exist", buf, 0xCu);
      }

      v24 = *(a1 + 32);
      v25 = *(v24 + 32);
      *(v24 + 32) = 0;

      v26 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"fixedIndicatorViewAlpha"];
      v27 = *(a1 + 32);
      v28 = *(v27 + 56);
      *(v27 + 56) = v26;

      v29 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v29 forPropertyIdentity:*(*(a1 + 32) + 56)];
    }
  }

  if ([*(a1 + 40) microIndicatorPhase] == 2)
  {
    v30 = *(a1 + 32);
    if (!*(v30 + 40))
    {
      v31 = *(v30 + 64);
      v32 = SBLogSystemAperturePreferencesStackIndicator(2);
      v33 = v32;
      if (v31)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_4(a1);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v34;
        _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating appearance milestone for micro region: disappearance milestone does not exist", buf, 0xCu);
      }

      v35 = *(a1 + 32);
      v36 = *(v35 + 64);
      *(v35 + 64) = 0;

      v37 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"indicatorViewAlpha"];
      v38 = *(a1 + 32);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      v40 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v40 forPropertyIdentity:*(*(a1 + 32) + 40)];
    }
  }

  if ([*(a1 + 40) microIndicatorPhase] == 1)
  {
    v41 = *(a1 + 32);
    if (!*(v41 + 64))
    {
      v42 = *(v41 + 40);
      v43 = SBLogSystemAperturePreferencesStackIndicator(1);
      v44 = v43;
      if (v42)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_5(a1);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v45;
        _os_log_impl(&dword_21ED4E000, v44, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating disappearance milestone for micro region: appearance milestone does not exist", buf, 0xCu);
      }

      v46 = *(a1 + 32);
      v47 = *(v46 + 40);
      *(v46 + 40) = 0;

      v48 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 56) andProperty:@"indicatorViewAlpha"];
      v49 = *(a1 + 32);
      v50 = *(v49 + 64);
      *(v49 + 64) = v48;

      v51 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v51 forPropertyIdentity:*(*(a1 + 32) + 64)];
    }
  }

  if ([*(a1 + 40) microIndicatorEjectionPhase] == 1)
  {
    v52 = *(a1 + 32);
    if (!*(v52 + 48))
    {
      v53 = *(v52 + 72);
      v54 = SBLogSystemAperturePreferencesStackIndicator(1);
      v55 = v54;
      if (v53)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_6(a1);
        }
      }

      else if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v56;
        _os_log_impl(&dword_21ED4E000, v55, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating appearance milestone for micro region: ejected milestone does not exist", buf, 0xCu);
      }

      v57 = *(a1 + 32);
      v58 = *(v57 + 72);
      *(v57 + 72) = 0;

      v59 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"center"];
      v60 = *(a1 + 32);
      v61 = *(v60 + 48);
      *(v60 + 48) = v59;

      v62 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v62 forPropertyIdentity:*(*(a1 + 32) + 48)];
    }
  }

  if ([*(a1 + 40) microIndicatorEjectionPhase] == 2)
  {
    v63 = *(a1 + 32);
    if (!*(v63 + 72))
    {
      v64 = *(v63 + 48);
      v65 = SBLogSystemAperturePreferencesStackIndicator(2);
      v66 = v65;
      if (v64)
      {
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_7(a1);
        }
      }

      else if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [*(a1 + 48) queryIteration];
        *buf = 134349056;
        v75 = v67;
        _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Creating disappearance milestone for micro region: accepted milestone does not exist", buf, 0xCu);
      }

      v68 = *(a1 + 32);
      v69 = *(v68 + 48);
      *(v68 + 48) = 0;

      v70 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:*(a1 + 64) andProperty:@"center"];
      v71 = *(a1 + 32);
      v72 = *(v71 + 72);
      *(v71 + 72) = v70;

      v73 = [MEMORY[0x277CBEB98] setWithObjects:{0x28336F620, 0}];
      [v7 addMilestones:v73 forPropertyIdentity:*(*(a1 + 32) + 72)];
    }
  }
}

- (id)_updatedPreferencesForCompletedMilestonesWithContext:(id)context
{
  contextCopy = context;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  preferences = [contextCopy preferences];
  maintainedPreferences = [preferences maintainedPreferences];
  indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke;
  v15[3] = &unk_2783BA100;
  v18 = a2;
  v15[4] = self;
  v9 = contextCopy;
  v16 = v9;
  v17 = &v19;
  v10 = [indicatorAppearanceStateContext copyWithBlock:v15];

  if (*(v20 + 24) == 1)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke_57;
    v13[3] = &unk_2783BA0B0;
    v14 = v10;
    v11 = [preferences copyByUpdatingMaintainedPreferences:v13];
  }

  else
  {
    v11 = preferences;
  }

  _Block_object_dispose(&v19, 8);

  return v11;
}

void __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
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
      __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 interSensorIndicatorPhase] == 2)
  {
    v8 = *(a1 + 32);
    if (v8[4])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v8 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 32) property:*(a1 + 40) context:?])
      {
        v9 = *(a1 + 32);
        v10 = *(v9 + 32);
        *(v9 + 32) = 0;

        *(*(a1 + 32) + 104) = 1;
        v12 = SBLogSystemAperturePreferencesStackIndicator(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(a1 + 40) queryIteration];
          v14 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
          v50 = 134349314;
          v51 = v13;
          v52 = 2112;
          v53 = v14;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to appeared from: %@", &v50, 0x16u);
        }

        [v7 setInterSensorIndicatorPhase:3];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 interSensorIndicatorPhase] == 1)
  {
    v15 = *(a1 + 32);
    if (v15[7])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v15 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 56) property:*(a1 + 40) context:?])
      {
        v16 = *(a1 + 32);
        v17 = *(v16 + 56);
        *(v16 + 56) = 0;

        v19 = SBLogSystemAperturePreferencesStackIndicator(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [*(a1 + 40) queryIteration];
          v21 = NSStringFromSBSAIndicatorAppearancePhase([v7 interSensorIndicatorPhase]);
          v50 = 134349314;
          v51 = v20;
          v52 = 2112;
          v53 = v21;
          _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change InterSensor indicator state to disappeared from: %@", &v50, 0x16u);
        }

        [v7 setInterSensorIndicatorPhase:0];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorPhase] == 2)
  {
    v22 = *(a1 + 32);
    if (v22[5])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v22 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 40) property:*(a1 + 40) context:?])
      {
        v23 = *(a1 + 32);
        v24 = *(v23 + 40);
        *(v23 + 40) = 0;

        v26 = SBLogSystemAperturePreferencesStackIndicator(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [*(a1 + 40) queryIteration];
          v28 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
          v50 = 134349314;
          v51 = v27;
          v52 = 2112;
          v53 = v28;
          _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator state to appeared from: %@", &v50, 0x16u);
        }

        [v7 setMicroIndicatorPhase:3];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorPhase] == 1)
  {
    v29 = *(a1 + 32);
    if (v29[8])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v29 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 64) property:*(a1 + 40) context:?])
      {
        v30 = *(a1 + 32);
        v31 = *(v30 + 64);
        *(v30 + 64) = 0;

        v33 = SBLogSystemAperturePreferencesStackIndicator(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [*(a1 + 40) queryIteration];
          v35 = NSStringFromSBSAIndicatorAppearancePhase([v7 microIndicatorPhase]);
          v50 = 134349314;
          v51 = v34;
          v52 = 2112;
          v53 = v35;
          _os_log_impl(&dword_21ED4E000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator state to disappeared from: %@", &v50, 0x16u);
        }

        [v7 setMicroIndicatorPhase:0];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorEjectionPhase] == 1)
  {
    v36 = *(a1 + 32);
    if (v36[6])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v36 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 48) property:*(a1 + 40) context:?])
      {
        v37 = *(a1 + 32);
        v38 = *(v37 + 48);
        *(v37 + 48) = 0;

        v40 = SBLogSystemAperturePreferencesStackIndicator(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = [*(a1 + 40) queryIteration];
          v42 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
          v50 = 134349314;
          v51 = v41;
          v52 = 2112;
          v53 = v42;
          _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator ejecting state to accepted from: %@", &v50, 0x16u);
        }

        [v7 setMicroIndicatorEjectionPhase:0];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }

  if ([v7 microIndicatorEjectionPhase] == 2)
  {
    v43 = *(a1 + 32);
    if (v43[9])
    {
      [&unk_28336F620 bs_CGFloatValue];
      if ([v43 _milestoneDidReachExpectedMilestone:*(*(a1 + 32) + 72) property:*(a1 + 40) context:?])
      {
        v44 = *(a1 + 32);
        v45 = *(v44 + 72);
        *(v44 + 72) = 0;

        v47 = SBLogSystemAperturePreferencesStackIndicator(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [*(a1 + 40) queryIteration];
          v49 = NSStringFromSBSAIndicatorEjectionPhase([v7 microIndicatorEjectionPhase]);
          v50 = 134349314;
          v51 = v48;
          v52 = 2112;
          v53 = v49;
          _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "[%{public}lu] Change micro indicator ejecting state to ejected from: %@", &v50, 0x16u);
        }

        [v7 setMicroIndicatorEjectionPhase:3];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }
  }
}

- (BOOL)_milestoneDidReachExpectedMilestone:(double)milestone property:(id)property context:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  contextCopy = context;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  animatedTransitionResults = [contextCopy animatedTransitionResults];
  v10 = [animatedTransitionResults countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v10)
  {

    goto LABEL_15;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v41;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v41 != v13)
      {
        objc_enumerationMutation(animatedTransitionResults);
      }

      v15 = *(*(&v40 + 1) + 8 * i);
      associatedInterfaceElementPropertyIdentity = [v15 associatedInterfaceElementPropertyIdentity];
      v17 = BSEqualObjects();

      if (v17 && (([v15 isTransitionEndTargeted] & 1) != 0 || (objc_msgSend(v15, "finished") & 1) == 0))
      {
        v12 = 1;
      }
    }

    v11 = [animatedTransitionResults countByEnumeratingWithState:&v40 objects:v52 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
LABEL_15:
    preferences = [contextCopy preferences];
    indicatorElementDescription = [preferences indicatorElementDescription];
    interfaceElementIdentifier = [indicatorElementDescription interfaceElementIdentifier];
    associatedInterfaceElementIdentifier = [propertyCopy associatedInterfaceElementIdentifier];
    v23 = [interfaceElementIdentifier isEqual:associatedInterfaceElementIdentifier];
    v24 = v23;
    if (v23)
    {
    }

    else
    {
      v38 = v23;
      v39 = contextCopy;
      preferences2 = [contextCopy preferences];
      indicatorContainerViewDescription = [preferences2 indicatorContainerViewDescription];
      interfaceElementIdentifier2 = [indicatorContainerViewDescription interfaceElementIdentifier];
      associatedInterfaceElementIdentifier2 = [propertyCopy associatedInterfaceElementIdentifier];
      v29 = [interfaceElementIdentifier2 isEqual:associatedInterfaceElementIdentifier2];

      if (v29)
      {
        v18 = 0;
        contextCopy = v39;
        goto LABEL_23;
      }

      preferences = SBLogSystemAperturePreferencesStackIndicator(v30);
      contextCopy = v39;
      if (os_log_type_enabled(preferences, OS_LOG_TYPE_ERROR))
      {
        queryIteration = [v39 queryIteration];
        v33 = [propertyCopy description];
        preferences3 = [v39 preferences];
        maintainedPreferences = [preferences3 maintainedPreferences];
        indicatorAppearanceStateContext = [maintainedPreferences indicatorAppearanceStateContext];
        v37 = [indicatorAppearanceStateContext description];
        *buf = 134349826;
        v45 = queryIteration;
        v46 = 2112;
        v47 = v33;
        v48 = 2048;
        milestoneCopy = milestone;
        v50 = 2112;
        v51 = v37;
        _os_log_error_impl(&dword_21ED4E000, preferences, OS_LOG_TYPE_ERROR, "[%{public}lu] Container property identifier %@ is no longer being tracked for milestone: %f; assume that indicates the milestone is completed and we can push forward our state machine. IndicatorAppearStateContext is currently: %@", buf, 0x2Au);
      }

      v24 = v38;
    }

    v18 = v24 ^ 1;

    goto LABEL_23;
  }

  v18 = 1;
LABEL_23:

  return v18;
}

- (BOOL)_areBothIndicatorsHiddenWithIndicatorAppearanceStateContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    if ([contextCopy microIndicatorPhase])
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 interSensorIndicatorPhase] == 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInMethod:v1 object:v0 file:@"SBSAIndicatorAppearanceStateTransitionProvider.m" lineNumber:46 description:{@"Unexpected class – expected '%@', got '%@'", v2, v4}];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:(void *)a1 .cold.3(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAIndicatorAppearanceStateTransitionProvider.m" lineNumber:91 description:@"there shouldn't be a container"];
}

- (void)preferencesFromContext:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAIndicatorAppearanceStateTransitionProvider.m" lineNumber:99 description:{@"Unexpected class – expected '%@', got '%@'", v3, v5}];
}

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_cold_1()
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

void __101__SBSAIndicatorAppearanceStateTransitionProvider__updateIndicatorAppearStateWithPreferences_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __109__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToAppearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __112__SBSAIndicatorAppearanceStateTransitionProvider__transitionInterSensorRegionToDisappearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __114__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToEjectingAndAppearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __118__SBSAIndicatorAppearanceStateTransitionProvider__transitionMicroRegionToAcceptingAndDisappearingIfNecessary_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_startMicroMitosisIfNecessary:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_startMicroMitosisIfNecessary:context:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v1 queryIteration];
  v2 = [OUTLINED_FUNCTION_11_1() type];
  v3 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v2);
  v4 = [v0 debugDescription];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

- (void)_startMicroRecombinationIfNecessary:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v1);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)_startMicroRecombinationIfNecessary:context:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v1 queryIteration];
  v2 = [OUTLINED_FUNCTION_11_1() type];
  v3 = NSStringFromSBSAIndicatorMitosisTransitionProviderType(v2);
  v4 = [v0 debugDescription];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_1()
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

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating appearance milestone for intersensor region: disappearance milestone exists", v3, v4, v5, v6);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating disappearance milestone for intersensor region: appearance milestone exists", v3, v4, v5, v6);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_4(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating appearance milestone for micro region: disappearance milestone exists", v3, v4, v5, v6);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_5(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating disappearance milestone for micro region: appearance milestone exists", v3, v4, v5, v6);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating appearance milestone for micro region: ejected milestone exists", v3, v4, v5, v6);
}

void __117__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesAddingMilestonesIfNeededWithPreferences_context___block_invoke_cold_7(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v1, v2, "[%{public}lu] Creating disappearance milestone for micro region: accepted milestone exists", v3, v4, v5, v6);
}

void __103__SBSAIndicatorAppearanceStateTransitionProvider__updatedPreferencesForCompletedMilestonesWithContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end