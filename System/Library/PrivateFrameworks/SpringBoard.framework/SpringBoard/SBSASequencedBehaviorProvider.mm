@interface SBSASequencedBehaviorProvider
- (BOOL)_isTimerExpired:(id)expired duration:(double *)duration;
- (SBSASequencedBehaviorProvider)initWithParticipantIdentifier:(id)identifier;
- (id)nameForPhase:(int64_t)phase;
- (id)preferencesFromContext:(id)context;
- (void)_setActivePhase:(int64_t)phase context:(id)context reason:(id)reason;
- (void)_startTimerIfNecessary:(id)necessary withInterval:(double)interval;
@end

@implementation SBSASequencedBehaviorProvider

- (SBSASequencedBehaviorProvider)initWithParticipantIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBSASequencedBehaviorProvider;
  v5 = [(SBSABasePreferencesProvider *)&v13 initWithParentProvider:0];
  if (v5)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v6 = [SBSAElementIdentification alloc];
      participatingInterfaceElementIdentifier = [identifierCopy clientIdentifier];
      elementIdentifier = [identifierCopy elementIdentifier];
      v9 = [(SBSAElementIdentification *)v6 initWithClientIdentifier:participatingInterfaceElementIdentifier elementIdentifier:elementIdentifier];
      participatingElementIdentification = v5->_participatingElementIdentification;
      v5->_participatingElementIdentification = v9;

LABEL_7:
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [identifierCopy copy];
      participatingInterfaceElementIdentifier = v5->_participatingInterfaceElementIdentifier;
      v5->_participatingInterfaceElementIdentifier = v11;
      goto LABEL_7;
    }
  }

LABEL_8:

  return v5;
}

- (id)preferencesFromContext:(id)context
{
  v120 = *MEMORY[0x277D85DE8];
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
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  else
  {
    v8 = 0;
  }

  preferences = [v8 preferences];
  if (preferences)
  {
    v10 = objc_opt_self();
    v11 = preferences;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  else
  {
    v13 = 0;
  }

  elementContexts = [v8 elementContexts];
  v104 = 0;
  v84 = elementContexts;
  if (!self->_activePhase && ![(SBSASequencedBehaviorProvider *)self canProceedWithContext:v8 shouldRetry:&v104])
  {
LABEL_45:
    [(SBSASequencedBehaviorProvider *)self _setActivePhase:0 context:v8 reason:&__block_literal_global_45_0];
LABEL_46:
    v30 = 1;
    goto LABEL_76;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v83 = v13;
  gestureDescriptions = [v13 gestureDescriptions];
  v16 = [gestureDescriptions countByEnumeratingWithState:&v100 objects:v119 count:16];
  if (v16)
  {
    v17 = *v101;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v101 != v17)
        {
          objc_enumerationMutation(gestureDescriptions);
        }

        if ([*(*(&v100 + 1) + 8 * i) gestureRecognizerState] < 0)
        {
          LODWORD(v16) = 1;
          goto LABEL_31;
        }
      }

      v16 = [gestureDescriptions countByEnumeratingWithState:&v100 objects:v119 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  elementContexts = self->_elementContexts;
  if (elementContexts)
  {
    v20 = contextCopy;
    v21 = SBSAAreElementLayoutsEqualToLayouts(elementContexts, elementContexts);
    activePhase = self->_activePhase;
    finalPhase = [(SBSASequencedBehaviorProvider *)self finalPhase];
    v24 = activePhase == finalPhase;
    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v27 = [elementContexts copy];
      v25 = ![(SBSASequencedBehaviorProvider *)self canPersistAcrossLayoutStateChangesToNewElementContexts:v27];
    }
  }

  else
  {
    v20 = contextCopy;
    v26 = self->_activePhase;
    finalPhase = [(SBSASequencedBehaviorProvider *)self finalPhase];
    v25 = 0;
    v24 = v26 == finalPhase;
  }

  v13 = v83;
  if (((v16 | v25) & 1) != 0 || v24)
  {
    v29 = SBLogSystemAperturePreferencesStackSequencedBehaviors(finalPhase);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v78 = NSStringFromBOOL();
      v79 = NSStringFromBOOL();
      v80 = NSStringFromBOOL();
      *buf = 138413058;
      *&buf[4] = self;
      v113 = 2112;
      v114 = v78;
      v115 = 2112;
      v116 = v79;
      v117 = 2112;
      v118 = v80;
      _os_log_debug_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEBUG, "Will remove behavior provider %@ (gestureActive:%@, layoutStateChange:%@, finalPhase:%@)", buf, 0x2Au);
    }

    contextCopy = v20;
    elementContexts = v84;
    if (v24)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (self->_elementContexts)
  {
    v28 = self->_activePhase;
    contextCopy = v20;
    if ([(SBSASequencedBehaviorProvider *)self phaseIsTimeDelayBased:v28 + 1])
    {
      *buf = 0;
      if ([(SBSASequencedBehaviorProvider *)self _isTimerExpired:v8 duration:buf])
      {
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_3;
        v94[3] = &__block_descriptor_40_e15___NSString_8__0l;
        v94[4] = *buf;
        [(SBSASequencedBehaviorProvider *)self _setActivePhase:v28 + 1 context:v8 reason:v94];
      }

      goto LABEL_75;
    }

    if (self->_pendingPhaseTransitionPropertyIdentity)
    {
      [(SBSASequencedBehaviorProvider *)self milestoneForPhase:v28 + 1];
      v35 = v34;
      [&unk_28336F620 bs_CGFloatValue];
      v36 = BSFloatEqualToFloat() && [(SBSASequencedBehaviorProvider *)self milestoneForPhaseRequiresAnimationFinished:v28 + 1];
      if (v35 > 0.0)
      {
        v85 = v28;
        v86 = v8;
        v81 = v20;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        animatedTransitionResults = [v8 animatedTransitionResults];
        v38 = [animatedTransitionResults countByEnumeratingWithState:&v96 objects:v111 count:16];
        if (!v38)
        {
          goto LABEL_74;
        }

        v39 = v38;
        v40 = *v97;
        while (1)
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v97 != v40)
            {
              objc_enumerationMutation(animatedTransitionResults);
            }

            v42 = *(*(&v96 + 1) + 8 * j);
            associatedInterfaceElementPropertyIdentity = [v42 associatedInterfaceElementPropertyIdentity];
            if (!BSEqualObjects())
            {
              goto LABEL_71;
            }

            [v42 targetedMilestone];
            if (!BSFloatApproximatelyEqualToFloat())
            {
              goto LABEL_71;
            }

            if (!v36)
            {

LABEL_70:
              v95[0] = MEMORY[0x277D85DD0];
              v95[1] = 3221225472;
              v95[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_2;
              v95[3] = &unk_2783B1D60;
              v95[4] = v42;
              associatedInterfaceElementPropertyIdentity = MEMORY[0x223D6F7F0](v95);
              [(SBSASequencedBehaviorProvider *)self _setActivePhase:v85 + 1 context:v86 reason:associatedInterfaceElementPropertyIdentity];
              pendingPhaseTransitionPropertyIdentity = self->_pendingPhaseTransitionPropertyIdentity;
              self->_pendingPhaseTransitionPropertyIdentity = 0;

LABEL_71:
              continue;
            }

            finished = [v42 finished];

            if (finished)
            {
              goto LABEL_70;
            }
          }

          v39 = [animatedTransitionResults countByEnumeratingWithState:&v96 objects:v111 count:16];
          if (!v39)
          {
LABEL_74:

            contextCopy = v81;
            v8 = v86;
            v13 = v83;
            elementContexts = v84;
            break;
          }
        }
      }
    }
  }

  else
  {
    if (elementContexts)
    {
      v31 = elementContexts;
    }

    else
    {
      v31 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&self->_elementContexts, v31);
    finalPhase2 = [(SBSASequencedBehaviorProvider *)self finalPhase];
    if (finalPhase2 >= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = finalPhase2;
    }

    [(SBSASequencedBehaviorProvider *)self _setActivePhase:v33 context:v8 reason:&__block_literal_global_282];
    contextCopy = v20;
  }

LABEL_75:
  v46 = [(SBSASequencedBehaviorProvider *)self updatedContextFromContext:v8];

  v30 = 0;
  v8 = v46;
LABEL_76:
  v93.receiver = self;
  v93.super_class = SBSASequencedBehaviorProvider;
  v47 = [(SBSABasePreferencesProvider *)&v93 preferencesFromContext:v8];
  if (v47)
  {
    v48 = objc_opt_self();
    v49 = v47;
    if (v48)
    {
      if (objc_opt_isKindOfClass())
      {
        v50 = v49;
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
    }

    v51 = v50;

    elementContexts = v84;
    if (!v51)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  else
  {
    v51 = 0;
  }

  if (v30)
  {
    v52 = v8;
    v53 = [(SBSASequencedBehaviorProvider *)self updatedPreferencesFromPreferences:v51 context:v8 relevantPropertyIdentity:0];

    if (v104 == 1)
    {
      v54 = [SBSAPreferencesDidChangeAction alloc];
      v105 = @"containerSequencedBehaviorProvider.retry";
      v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v105 count:1];
      v56 = [(SBSAPreferencesDidChangeAction *)v54 initWithReasons:v55];
      v106 = v56;
      v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v106 count:1];
      v58 = [v53 copyByAddingActions:v57];

      v53 = v58;
    }

    else
    {
      [(SBSABasePreferencesProvider *)self removeFromParentProvider];
    }
  }

  else
  {
    v59 = self->_activePhase;
    v60 = [(SBSASequencedBehaviorProvider *)self phaseIsTimeDelayBased:v59 + 1];
    v61 = v59 + 1;
    if (v60)
    {
      [(SBSASequencedBehaviorProvider *)self delayForPhase:v61];
      v63 = v62;
      v52 = v8;
      v53 = [(SBSASequencedBehaviorProvider *)self updatedPreferencesFromPreferences:v51 context:v8 relevantPropertyIdentity:0];

      if (!self->_pendingTimerIdentifier)
      {
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v87[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6;
        v87[3] = &unk_2783ACD90;
        v87[4] = self;
        v87[5] = a2;
        v87[6] = v63;
        v64 = [v53 copyWithBlock:v87];

        v65 = [SBSAPreferencesDidChangeAction alloc];
        v107 = @"containerSequencedBehaviorProvider.phaseChange";
        v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v107 count:1];
        v67 = [(SBSAPreferencesDidChangeAction *)v65 initWithReasons:v66];
        v108 = v67;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v108 count:1];
        v53 = [v64 copyByAddingActions:v68];
      }
    }

    else
    {
      [(SBSASequencedBehaviorProvider *)self milestoneForPhase:v61];
      if (v69 <= 0.0)
      {
        v52 = v8;
        v53 = v51;
      }

      else
      {
        v70 = v69;
        v92 = 0;
        v52 = v8;
        v53 = [(SBSASequencedBehaviorProvider *)self updatedPreferencesFromPreferences:v51 context:v8 relevantPropertyIdentity:&v92];
        v71 = v92;

        if (!self->_pendingPhaseTransitionPropertyIdentity)
        {
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5;
          v88[3] = &unk_2783AF498;
          v90 = a2;
          v88[4] = self;
          v91 = v70;
          v89 = v71;
          v72 = [v53 copyWithBlock:v88];

          v73 = [SBSAPreferencesDidChangeAction alloc];
          v109 = @"containerSequencedBehaviorProvider.phaseChange";
          v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v109 count:1];
          v75 = [(SBSAPreferencesDidChangeAction *)v73 initWithReasons:v74];
          v110 = v75;
          v76 = [MEMORY[0x277CBEA60] arrayWithObjects:&v110 count:1];
          v53 = [v72 copyByAddingActions:v76];

          elementContexts = v84;
        }
      }
    }

    if (self->_pendingTimerIdentifier && self->_pendingPhaseTransitionPropertyIdentity)
    {
      [SBSASequencedBehaviorProvider preferencesFromContext:];
    }
  }

  return v53;
}

id __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isTransitionEndTargeted])
  {
    v2 = [*(a1 + 32) finished];
    v3 = @"<end>";
    if (v2)
    {
      v3 = @"<end, finished>";
    }

    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    [*(a1 + 32) targetedMilestone];
    v4 = [v5 stringWithFormat:@"%f", v6];
  }

  v7 = v4;
  v8 = [*(a1 + 32) associatedInterfaceElementPropertyIdentity];
  v9 = [v8 interfaceElementProperty];

  v10 = [*(a1 + 32) associatedInterfaceElementPropertyIdentity];
  v11 = [v10 associatedInterfaceElementIdentifier];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reached Milestone: (%@, %@, %@)", v7, v9, v11];

  return v12;
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = objc_opt_self();
    v4 = v13;
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
      __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v9 = [v7 initWithObjects:{v8, 0}];
  [v6 addMilestones:v9 forPropertyIdentity:*(a1 + 40)];

  v10 = [*(a1 + 40) copy];
  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  *(v11 + 48) = v10;
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6(uint64_t a1, void *a2)
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
      __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _startTimerIfNecessary:v6 withInterval:*(a1 + 48)];
}

- (void)_setActivePhase:(int64_t)phase context:(id)context reason:(id)reason
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  reasonCopy = reason;
  v10 = reasonCopy;
  if (self->_activePhase != phase)
  {
    v11 = SBLogSystemAperturePreferencesStackSequencedBehaviors(reasonCopy);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      v13 = [(SBSASequencedBehaviorProvider *)self nameForPhase:self->_activePhase];
      v14 = [(SBSASequencedBehaviorProvider *)self nameForPhase:phase];
      v15 = v14;
      if (v10)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = v10[2](v10);
        v18 = [v16 stringWithFormat:@" - %@", v17];
      }

      else
      {
        v18 = &stru_283094718;
      }

      v19 = SBLogSystemAperturePreferencesStackSequencedBehaviors(v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134350082;
        queryIteration = [contextCopy queryIteration];
        v22 = 2112;
        selfCopy = self;
        v24 = 2112;
        v25 = v13;
        v26 = 2112;
        v27 = v15;
        v28 = 2112;
        v29 = v18;
        _os_log_debug_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEBUG, "[%{public}lu] %@ Phase Transition: (%@ -> %@)%@", buf, 0x34u);
      }
    }

    self->_activePhase = phase;
  }
}

- (BOOL)_isTimerExpired:(id)expired duration:(double *)duration
{
  elapsedTimerDescriptions = [expired elapsedTimerDescriptions];
  if ([elapsedTimerDescriptions count])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__SBSASequencedBehaviorProvider__isTimerExpired_duration___block_invoke;
    v14[3] = &unk_2783BD9C0;
    v14[4] = self;
    v7 = [elapsedTimerDescriptions indexOfObjectPassingTest:v14];
    v8 = v7 != 0x7FFFFFFFFFFFFFFFLL;
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v7;
      pendingTimerIdentifier = self->_pendingTimerIdentifier;
      self->_pendingTimerIdentifier = 0;

      if (duration)
      {
        v11 = [elapsedTimerDescriptions objectAtIndex:v9];
        [v11 timeInterval];
        *duration = v12;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __58__SBSASequencedBehaviorProvider__isTimerExpired_duration___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (void)_startTimerIfNecessary:(id)necessary withInterval:(double)interval
{
  necessaryCopy = necessary;
  if (!self->_pendingTimerIdentifier)
  {
    v13 = necessaryCopy;
    v7 = [[SBSATimerDescription alloc] initWithTimeInterval:interval];
    timerDescriptionIdentifier = [(SBSATimerDescription *)v7 timerDescriptionIdentifier];
    pendingTimerIdentifier = self->_pendingTimerIdentifier;
    self->_pendingTimerIdentifier = timerDescriptionIdentifier;

    timerDescriptions = [v13 timerDescriptions];
    if (timerDescriptions)
    {
      timerDescriptions2 = [v13 timerDescriptions];
      v12 = [timerDescriptions2 mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v12 addObject:v7];
    [v13 setTimerDescriptions:v12];

    necessaryCopy = v13;
  }
}

- (id)nameForPhase:(int64_t)phase
{
  if (phase)
  {
    phase = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", phase];
  }

  else
  {
    phase = @"Idle";
  }

  return phase;
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_3();
  [v4 handleFailureInMethod:v1 object:v3 file:? lineNumber:? description:?];
}

- (void)preferencesFromContext:.cold.4()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_5_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v4 file:@"SBSASequencedBehaviorProvider.m" lineNumber:132 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __56__SBSASequencedBehaviorProvider_preferencesFromContext___block_invoke_6_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v9 handleFailureInMethod:v4 object:v3 file:@"SBSASequencedBehaviorProvider.m" lineNumber:144 description:{@"Unexpected class – expected '%@', got '%@'", v6, v8}];
}

@end