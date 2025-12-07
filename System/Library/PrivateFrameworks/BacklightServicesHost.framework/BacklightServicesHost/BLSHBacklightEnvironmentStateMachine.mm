@interface BLSHBacklightEnvironmentStateMachine
- (BLSHBacklightEnvironmentPresentation)presentation;
- (BLSHBacklightEnvironmentStateMachine)initWithPresentation:(id)presentation backlightState:(int64_t)state delegate:(id)delegate inactiveBudgetPolicy:(id)policy osTimerProvider:(id)provider platformProvider:(id)platformProvider;
- (BLSHBacklightEnvironmentStateMachineDelegate)lock_delegate;
- (BOOL)_lock_transitionCompleteAfterCompletingTransitionState:(uint64_t)state;
- (BOOL)isUpdatingPresentation;
- (BOOL)isUpdatingState;
- (BOOL)pendingNotifyBeganUpdatingState;
- (NSSet)updatingDateSpecifierTransitionStates;
- (NSSet)updatingVisualStateTransitionStates;
- (NSString)debugDescription;
- (NSString)description;
- (id)_descriptionOfTransitionStates:(int)states shouldFilter:(char)filter countOnly:(void *)only environmentFilter:(void *)environmentFilter filter:;
- (id)_lock_descriptionOfUpdatingTransitionStatesToBacklightState:(int)state shouldFilter:(char)filter countOnly:;
- (id)_lock_etsLoggingStringForBacklightState:(uint64_t)state;
- (id)_lock_transitionStateForEnvironment:(uint64_t)environment;
- (id)transitionStateForEnvironment:(os_unfair_lock_s *)environment;
- (int)_lock_debugDescription;
- (uint64_t)_lock_allTransitionsDidBeginUpdateBacklightState:(void *)state environmentFilter:;
- (uint64_t)_lock_isActiveTransitionState:(uint64_t)state;
- (uint64_t)_lock_isSetPresentationOperationComplete:(uint64_t)complete;
- (uint64_t)_lock_numTransitionsDidNotBeginUpdateBacklightState:(uint64_t)state;
- (uint64_t)isInvalid;
- (void)_checkCompletedOperationsToBacklightState:(void *)state transitionState:(int)transitionState shouldCompleteTransitionState:(void *)completeTransitionState setupWithLock:(void *)lock completeWithoutLock:;
- (void)_lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:(char)filter countOnly:;
- (void)_lock_ifPossibleStopTrackingTransitionState:(uint64_t)state;
- (void)_lock_updateHistory:(uint64_t)history backlightState:(void *)state transitionState:(uint64_t)transitionState pendingTransitionStateCount:;
- (void)checkCompletedOperationsToBacklightState:(void *)state visualState:(void *)visualState transitionState:(int)transitionState isBeginUpdate:;
- (void)completedOperation:(uint64_t)operation;
- (void)dealloc;
- (void)endAddingEnvironments;
- (void)enumerateRemoteEnvironmentsFirstFromSource:(void *)source environmentTransformer:(void *)transformer block:;
- (void)invalidate;
- (void)onMain_performEvent:(void *)event withInitialSpecifier:(void *)specifier performBacklightRamp:;
- (void)onMain_setPresentation:(void *)presentation withTargetBacklightState:;
- (void)onMain_updateEnvironment:(uint64_t)environment;
- (void)onMain_updateToSpecifier:(uint64_t)specifier;
- (void)performEvent:(id)event withInitialSpecifier:(id)specifier performBacklightRamp:(id)ramp;
- (void)populateEnvironmentStateMachineStruct:(id *)struct;
- (void)populateOperationCompletedMismatchedBacklightStatesStruct:(uint64_t)struct backlightState:(uint64_t)state targetBacklightState:(void *)backlightState performEventHistory:(void *)history didBeginUpdateHistory:(void *)updateHistory didCompleteUpdateHistory:;
- (void)setPresentation:(id)presentation withTargetBacklightState:(int64_t)state;
- (void)transitionState:(id)state didUpdateToDateSpecifier:(id)specifier;
- (void)updateAllEnvironmentsInPresentation;
- (void)updateEnvironment:(id)environment;
- (void)updateRemovedEnvironmentsToActiveOn;
- (void)updateToSpecifier:(id)specifier;
- (void)updateTransitionStatesForEnvironments:(uint64_t)environments toBacklightState:(void *)state forEvent:(void *)event withInitialSpecifier:(void *)specifier forReason:(void *)reason performBacklightRamp:(void *)ramp environmentTransformer:;
@end

@implementation BLSHBacklightEnvironmentStateMachine

- (BLSHBacklightEnvironmentPresentation)presentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)endAddingEnvironments
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_lock_addingEnvironmentsCount == 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(self);
    v5 = objc_opt_class();
    v13 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHBacklightEnvironmentStateMachine)initWithPresentation:(id)presentation backlightState:(int64_t)state delegate:(id)delegate inactiveBudgetPolicy:(id)policy osTimerProvider:(id)provider platformProvider:(id)platformProvider
{
  presentationCopy = presentation;
  delegateCopy = delegate;
  policyCopy = policy;
  providerCopy = provider;
  platformProviderCopy = platformProvider;
  v36.receiver = self;
  v36.super_class = BLSHBacklightEnvironmentStateMachine;
  v19 = [(BLSHBacklightEnvironmentStateMachine *)&v36 init];
  v20 = v19;
  if (v19)
  {
    if (!presentationCopy)
    {
      [BLSHBacklightEnvironmentStateMachine initWithPresentation:v19 backlightState:a2 delegate:? inactiveBudgetPolicy:? osTimerProvider:? platformProvider:?];
    }

    v19->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v19->_lock_presentation, presentation);
    v20->_lock_targetBacklightState = state;
    v20->_lock_performEventTargetBacklightState = state;
    array = [MEMORY[0x277CBEB18] array];
    performEventHistory = v20->_performEventHistory;
    v20->_performEventHistory = array;

    array2 = [MEMORY[0x277CBEB18] array];
    didBeginUpdateHistory = v20->_didBeginUpdateHistory;
    v20->_didBeginUpdateHistory = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    didCompleteUpdateHistory = v20->_didCompleteUpdateHistory;
    v20->_didCompleteUpdateHistory = array3;

    objc_storeWeak(&v20->_lock_delegate, delegateCopy);
    objc_storeStrong(&v20->_inactiveBudgetPolicy, policy);
    objc_storeStrong(&v20->_osTimerProvider, provider);
    objc_storeStrong(&v20->_platformProvider, platformProvider);
    v27 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:517 capacity:4];
    transitionStates = v20->_transitionStates;
    v20->_transitionStates = v27;

    v29 = [MEMORY[0x277CBEB58] set];
    lock_updatingVisualStateTransitionStates = v20->_lock_updatingVisualStateTransitionStates;
    v20->_lock_updatingVisualStateTransitionStates = v29;

    objc_initWeak(&location, v20);
    objc_copyWeak(&v34, &location);
    v20->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v20;
}

uint64_t __139__BLSHBacklightEnvironmentStateMachine_initWithPresentation_backlightState_delegate_inactiveBudgetPolicy_osTimerProvider_platformProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained debugDescription];
  v4 = BLSStateDataWithTitleDescriptionAndHints();

  return v4;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHBacklightEnvironmentStateMachine;
  [(BLSHBacklightEnvironmentStateMachine *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  if (self->_lock_addingEnvironmentsCount >= 1)
  {
    v5 = [v3 appendInt:? withName:?];
  }

  v6 = [v3 appendBool:self->_lock_invalidated withName:@"invalidated" ifEqualTo:1];
  v7 = [(BLSHBacklightEnvironmentStateMachine *)self _lock_descriptionOfUpdatingTransitionStatesToBacklightState:0 shouldFilter:0 countOnly:?];
  v8 = [v3 appendObject:v7 withName:@"updatingVisualState"];

  v9 = [(BLSHBacklightEnvironmentStateMachine *)&self->super.isa _lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:0 countOnly:?];
  v10 = [v3 appendObject:v9 withName:@"updatingDateSpecifier" skipIfNil:1];

  v11 = [v3 appendObject:self->_lock_presentation withName:@"presentation"];
  v12 = [v3 appendObject:self->_updatingSpecifier withName:@"updatingSpecifier"];
  v13 = NSStringFromBLSBacklightState();
  [v3 appendString:v13 withName:@"target"];

  if (self->_lock_targetBacklightState != self->_lock_performEventTargetBacklightState)
  {
    v14 = NSStringFromBLSBacklightState();
    [v3 appendString:v14 withName:@"performEventTarget"];
  }

  v15 = [v3 appendBool:self->_pendingNotifyBeganUpdatingState withName:@"pendingNotifyBeganUpdatingState"];
  v16 = [v3 appendBool:self->_updatingState withName:@"updatingState"];
  v17 = [v3 appendBool:self->_lock_setPresentationOperation != 0 withName:@"updatingPresentation"];
  if ([(NSMutableSet *)self->_lock_staleEnvironmentsThatNeedDeferredUpdate count])
  {
    allObjects = [(NSMutableSet *)self->_lock_staleEnvironmentsThatNeedDeferredUpdate allObjects];
    v19 = [allObjects valueForKey:@"identifier"];
    v20 = [v19 componentsJoinedByString:{@", "}];
    [v3 appendString:v20 withName:@"removedEnvsForStateUpdateLater"];
  }

  os_unfair_lock_unlock(&self->_lock);
  build = [v3 build];

  return build;
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self->_lock_presentation presentationEntries];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [presentationEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(presentationEntries);
        }

        environment = [*(*(&v13 + 1) + 8 * v7) environment];
        [environment deactivateClient];

        ++v7;
      }

      while (v5 != v7);
      v5 = [presentationEntries countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  lock_presentation = self->_lock_presentation;
  self->_lock_presentation = 0;

  objc_storeWeak(&self->_lock_delegate, 0);
  [(NSMutableSet *)self->_lock_updatingVisualStateTransitionStates removeAllObjects];
  lock_updatingVisualStateTransitionStates = self->_lock_updatingVisualStateTransitionStates;
  self->_lock_updatingVisualStateTransitionStates = 0;

  [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates removeAllObjects];
  lock_updatingDateSpecifierTransitionStates = self->_lock_updatingDateSpecifierTransitionStates;
  self->_lock_updatingDateSpecifierTransitionStates = 0;

  transitionStates = self->_transitionStates;
  self->_transitionStates = 0;

  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightEnvironmentStateMachine *)self updateRemovedEnvironmentsToActiveOn];
}

- (void)updateRemovedEnvironmentsToActiveOn
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"environment for later update must implement updateToVisualState:presentationDateSpecifier: from BLSHBacklightSceneHostEnvironment_Private"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHBacklightEnvironmentStateMachine.m";
    v16 = 1024;
    v17 = 676;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setPresentation:(id)presentation withTargetBacklightState:(int64_t)state
{
  presentationCopy = presentation;
  v4 = presentationCopy;
  BSDispatchMain();
}

- (void)onMain_setPresentation:(void *)presentation withTargetBacklightState:
{
  v83 = *MEMORY[0x277D85DE8];
  v52 = a2;
  if (self)
  {
    if ([(BLSHBacklightEnvironmentStateMachine *)self isInvalid])
    {
      oslog = bls_backlight_log();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
      {
        [(BLSHBacklightEnvironmentStateMachine *)self onMain_setPresentation:v52 withTargetBacklightState:oslog];
      }

      goto LABEL_58;
    }

    if (!v52)
    {
      [BLSHBacklightEnvironmentStateMachine onMain_setPresentation:self withTargetBacklightState:sel_onMain_setPresentation_withTargetBacklightState_];
    }

    os_unfair_lock_lock((self + 8));
    v5 = *(self + 16);
    *(self + 112) = presentation;
    oslog = v5;
    objc_storeStrong((self + 16), a2);
    v50 = [v52 differenceFromPresentation:oslog];
    insertions = [v50 insertions];
    v7 = *(self + 104);
    v46 = v7;
    if (v7)
    {
      v8 = insertions;
      additions = [v7 additions];
      presentationEntries = [v52 presentationEntries];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke;
      v76[3] = &unk_27841F488;
      v77 = v8;
      v11 = additions;
      v78 = v11;
      v12 = [presentationEntries bs_compactMap:v76];

      backlightState = [v46 backlightState];
      v14 = backlightState != presentation;
      if (backlightState == presentation)
      {
        v48 = v8;
      }

      else
      {
        v48 = v12;
      }

      v47 = v12;
    }

    else
    {
      v14 = 0;
      v47 = insertions;
      v48 = insertions;
    }

    v15 = [[BLSSetPresentationOperation alloc] initWithBacklightState:presentation additions:v47];
    v16 = *(self + 104);
    v45 = v15;
    *(self + 104) = v15;

    os_unfair_lock_unlock((self + 8));
    hasChanges = [v50 hasChanges];
    v18 = hasChanges;
    if ((v14 | hasChanges) != 1)
    {
      removals = bls_backlight_log();
      if (os_log_type_enabled(removals, OS_LOG_TYPE_INFO))
      {
        v26 = NSStringFromBLSBacklightState();
        *buf = 134218242;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        _os_log_impl(&dword_21FD11000, removals, OS_LOG_TYPE_INFO, "ESM:%p setPresentation (redundant) targetBacklightState:%{public}@", buf, 0x16u);
      }

      v27 = 0;
      goto LABEL_57;
    }

    removals = [v50 removals];
    v44 = [v48 count];
    v19 = [removals count];
    v20 = bls_backlight_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);

    if (v21)
    {
      log = bls_backlight_log();
      v22 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
      if (v18)
      {
        if (!v19)
        {
          if (v22)
          {
            v31 = [v48 bs_map:&__block_literal_global_139];
            v32 = NSStringFromBLSBacklightState();
            *buf = 134218498;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v31;
            *&buf[22] = 2114;
            v80 = v32;
            _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation by adding:%{public}@ targetBacklightState:%{public}@", buf, 0x20u);
          }

          goto LABEL_51;
        }

        if (v44)
        {
          if (v22)
          {
            v23 = [v48 bs_map:&__block_literal_global_145];
            v24 = [removals bs_map:&__block_literal_global_148];
            v25 = NSStringFromBLSBacklightState();
            *buf = 134218754;
            *&buf[4] = self;
            *&buf[12] = 2114;
            *&buf[14] = v23;
            *&buf[22] = 2114;
            v80 = v24;
            LOWORD(v81) = 2114;
            *(&v81 + 2) = v25;
            _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation by adding:%{public}@ and removing:%{public}@ targetBacklightState:%{public}@", buf, 0x2Au);
          }
        }

        else if (v22)
        {
          v33 = [removals bs_map:&__block_literal_global_142];
          v34 = NSStringFromBLSBacklightState();
          *buf = 134218498;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = v33;
          *&buf[22] = 2114;
          v80 = v34;
          _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation by removing:%{public}@ targetBacklightState:%{public}@", buf, 0x20u);
        }

LABEL_32:
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        log = [v50 removals];
        v35 = [log countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v35)
        {
          v27 = 0;
          v36 = *v73;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v73 != v36)
              {
                objc_enumerationMutation(log);
              }

              v38 = *(*(&v72 + 1) + 8 * i);
              os_unfair_lock_lock((self + 8));
              v39 = [*(self + 48) objectForKey:v38];
              if (v39)
              {
                v40 = bls_backlight_log();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  *buf = 134218242;
                  *&buf[4] = self;
                  *&buf[12] = 2114;
                  *&buf[14] = v39;
                  _os_log_impl(&dword_21FD11000, v40, OS_LOG_TYPE_INFO, "ESM:%p removal— no longer active transitionState:%{public}@", buf, 0x16u);
                }

                [*(self + 56) removeObject:v39];
                [*(self + 64) removeObject:v39];
                os_unfair_lock_unlock((self + 8));
                [v39 performBacklightRampIfPendingForReason:@"removed"];
              }

              else
              {
                os_unfair_lock_unlock((self + 8));
              }

              [v38 deactivateClient];
              if (presentation != 2 && (objc_opt_respondsToSelector() & 1) != 0 && [v38 wantsStateUpdateToActiveAfterRemovalFromPresentation])
              {
                if (!v27)
                {
                  v27 = [MEMORY[0x277CBEB58] set];
                }

                [v27 addObject:v38];
              }
            }

            v35 = [log countByEnumeratingWithState:&v72 objects:v82 count:16];
          }

          while (v35);
          goto LABEL_52;
        }

LABEL_51:
        v27 = 0;
LABEL_52:

LABEL_53:
        if (v44)
        {
          v41 = bls_backlight_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            [(BLSHBacklightEnvironmentStateMachine *)presentation onMain_setPresentation:v48 withTargetBacklightState:v41];
          }

          [(BLSHBacklightEnvironmentStateMachine *)self updateTransitionStatesForEnvironments:v48 toBacklightState:presentation forEvent:0 withInitialSpecifier:0 forReason:@"setPresentation" performBacklightRamp:0 environmentTransformer:&__block_literal_global_160];
        }

LABEL_57:

        v70[0] = 0;
        v70[1] = v70;
        v70[2] = 0x2020000000;
        v71 = 0;
        v68[0] = 0;
        v68[1] = v68;
        v68[2] = 0x2020000000;
        v69 = 0;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v80 = __Block_byref_object_copy__5;
        *&v81 = __Block_byref_object_dispose__5;
        *(&v81 + 1) = 0;
        v66[0] = 0;
        v66[1] = v66;
        v66[2] = 0x3032000000;
        v66[3] = __Block_byref_object_copy__5;
        v66[4] = __Block_byref_object_dispose__5;
        v67 = 0;
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_161;
        v56[3] = &unk_27841F4F0;
        v42 = v27;
        v57 = v42;
        selfCopy = self;
        v43 = v48;
        v59 = v43;
        v61 = v70;
        v62 = buf;
        v63 = v66;
        v64 = v68;
        presentationCopy = presentation;
        v60 = v52;
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_167;
        v55[3] = &unk_27841F518;
        v55[6] = v66;
        v55[7] = buf;
        v55[4] = self;
        v55[5] = v70;
        v55[8] = v68;
        [(BLSHBacklightEnvironmentStateMachine *)self _checkCompletedOperationsToBacklightState:presentation transitionState:0 shouldCompleteTransitionState:0 setupWithLock:v56 completeWithoutLock:v55];

        _Block_object_dispose(v66, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(v68, 8);
        _Block_object_dispose(v70, 8);

LABEL_58:
        goto LABEL_59;
      }

      if (v22)
      {
        [v46 backlightState];
        v28 = NSStringFromBLSBacklightState();
        v29 = NSStringFromBLSBacklightState();
        v30 = [v48 bs_map:&__block_literal_global_9];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v28;
        *&buf[22] = 2114;
        v80 = v29;
        LOWORD(v81) = 2114;
        *(&v81 + 2) = v30;
        _os_log_impl(&dword_21FD11000, log, OS_LOG_TYPE_INFO, "ESM:%p setPresentation (redundant) targetBacklightState:%{public}@->%{public}@ additions:%{public}@", buf, 0x2Au);
      }
    }

    if (!v19)
    {
      v27 = 0;
      goto LABEL_53;
    }

    goto LABEL_32;
  }

LABEL_59:
}

- (NSSet)updatingVisualStateTransitionStates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_updatingVisualStateTransitionStates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSSet)updatingDateSpecifierTransitionStates
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)pendingNotifyBeganUpdatingState
{
  os_unfair_lock_lock(&self->_lock);
  pendingNotifyBeganUpdatingState = self->_pendingNotifyBeganUpdatingState;
  os_unfair_lock_unlock(&self->_lock);
  return pendingNotifyBeganUpdatingState;
}

- (BOOL)isUpdatingState
{
  os_unfair_lock_lock(&self->_lock);
  updatingState = self->_updatingState;
  os_unfair_lock_unlock(&self->_lock);
  return updatingState;
}

- (BOOL)isUpdatingPresentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_setPresentationOperation != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 environment];
  if (([*(a1 + 32) containsObject:v3] & 1) != 0 || objc_msgSend(*(a1 + 40), "containsObject:", v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_137(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_140(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_143(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

id __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_2_146(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 visualState];
  BLSBacklightStateForVisuaState();
  v6 = NSStringFromBLSBacklightState();
  v7 = [v2 stringWithFormat:@"%p:%@(%@)", v3, v4, v6];

  return v7;
}

void __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_161(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v46 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v10 = *(a1 + 40);
    v13 = *(v10 + 128);
    v11 = (v10 + 128);
    v12 = v13;
    if (v13)
    {
      [v12 unionSet:*(a1 + 32)];
    }

    else
    {
      objc_storeStrong(v11, *(a1 + 32));
    }

    v14 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 48)];
    [*(*(a1 + 40) + 128) minusSet:v14];
    v15 = bls_backlight_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 40);
      v17 = [*(v16 + 128) valueForKey:@"identifier"];
      v38 = 134218242;
      v39 = v16;
      v40 = 2114;
      v41 = v17;
      _os_log_impl(&dword_21FD11000, v15, OS_LOG_TYPE_INFO, "ESM:%p setPresentation: staleEnvironmentsThatNeedDeferredUpdate:%{public}@", &v38, 0x16u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(*(a1 + 40) + 64) count] == 0;
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 152));
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = WeakRetained;

  objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(*(a1 + 40) + 72));
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v21 = *(a1 + 40);
    v22 = *(v21 + 64);
    *(v21 + 64) = 0;

    v23 = *(a1 + 40);
    v24 = *(v23 + 72);
    *(v23 + 72) = 0;
  }

  *(*(*(a1 + 88) + 8) + 24) = *(a1 + 96) != *(*(a1 + 40) + 112);
  if (a4 | a5 | a6) != 1 || (*(*(*(a1 + 88) + 8) + 24))
  {
    v25 = bls_backlight_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v30 = *(a1 + 40);
      if (*(*(*(a1 + 88) + 8) + 24))
      {
        v31 = "obsolete";
      }

      else
      {
        v31 = "waiting";
      }

      v32 = *(a1 + 56);
      v33 = [(BLSHBacklightEnvironmentStateMachine *)*(a1 + 40) _lock_descriptionOfUpdatingTransitionStatesToBacklightState:0 shouldFilter:0 countOnly:?];
      v38 = 134218754;
      v39 = v30;
      v40 = 2080;
      v41 = v31;
      v42 = 2048;
      v43 = v32;
      v44 = 2114;
      v45 = v33;
      _os_log_debug_impl(&dword_21FD11000, v25, OS_LOG_TYPE_DEBUG, "ESM:%p (finishing - %s) setPresentation:%p transitionStates:%{public}@", &v38, 0x2Au);
    }

    goto LABEL_36;
  }

  if (a4)
  {
    v25 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess])
    {
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v26 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_36;
    }

    v27 = *(a1 + 40);
    v28 = *(a1 + 56);
    v38 = 134218242;
    v39 = v27;
    v40 = 2114;
    v41 = v28;
    v29 = "ESM:%p finishing (immediate complete - update end also) setPresentation:%{public}@";
    goto LABEL_35;
  }

  if (a5)
  {
    v25 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess])
    {
      v26 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v26 = OS_LOG_TYPE_DEBUG;
    }

    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_36;
    }

    v34 = *(a1 + 40);
    v35 = *(a1 + 56);
    v38 = 134218242;
    v39 = v34;
    v40 = 2114;
    v41 = v35;
    v29 = "ESM:%p finishing (immediate complete - update begin also) setPresentation:%{public}@";
    goto LABEL_35;
  }

  if (!a6)
  {
    return;
  }

  v25 = bls_backlight_log();
  if ([MEMORY[0x277CF09B8] isHostProcess])
  {
    v26 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v26 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v25, v26))
  {
    v36 = *(a1 + 40);
    v37 = *(a1 + 56);
    v38 = 134218242;
    v39 = v36;
    v40 = 2114;
    v41 = v37;
    v29 = "ESM:%p finishing (immediate complete) setPresentation:%{public}@";
LABEL_35:
    _os_log_impl(&dword_21FD11000, v25, v26, v29, &v38, 0x16u);
  }

LABEL_36:
}

BOOL __88__BLSHBacklightEnvironmentStateMachine_onMain_setPresentation_withTargetBacklightState___block_invoke_167(void *a1)
{
  if (*(*(a1[5] + 8) + 24) == 1 && *(*(a1[6] + 8) + 40))
  {
    [*(*(a1[7] + 8) + 40) environmentStateMachine:a1[4] didUpdateToSpecifier:?];
  }

  return (*(*(a1[8] + 8) + 24) & 1) == 0;
}

void __179__BLSHBacklightEnvironmentStateMachine_updateTransitionStatesForEnvironments_toBacklightState_forEvent_withInitialSpecifier_forReason_performBacklightRamp_environmentTransformer___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v4 = *(a1 + 80);
  v5 = *(*(a1 + 32) + 112);
  v6 = bls_backlight_log();
  v7 = 2 * (v4 == v5);
  if (os_log_type_enabled(v6, v7))
  {
    if (v4 == v5)
    {
      v8 = "";
    }

    else
    {
      v8 = "(OBSOLETE - ignoring) ";
    }

    v9 = NSStringFromBLSBacklightState();
    v10 = [v3 identifier];
    v27 = 136315906;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v3;
    _os_log_impl(&dword_21FD11000, v6, v7, "ESM: %supdateTransitionStatesForEnvironments: -> %@ environment %@: %@", &v27, 0x2Au);
  }

  v11 = *(a1 + 32);
  if (v4 == v5)
  {
    v12 = [*(v11 + 16) containsEnvironment:v3];
    v13 = *(a1 + 32);
    if (v12)
    {
      v14 = [(BLSHBacklightEnvironmentStateMachine *)v13 _lock_transitionStateForEnvironment:v3];
      [*(*(a1 + 32) + 56) addObject:v14];
      os_unfair_lock_unlock((*(a1 + 32) + 8));
      v15 = *(a1 + 40);
      if (v15)
      {
        v16 = [v15 dateSpecifierForEnvironment:v3];
      }

      else
      {
        v16 = 0;
      }

      v20 = *(a1 + 80);
      v22 = *(a1 + 48);
      v21 = *(a1 + 56);
      if (v22 == v3)
      {
        v23 = *(a1 + 88);
      }

      else
      {
        v23 = 0;
      }

      v24 = [v16 date];
      v25 = [v16 userObject];
      if (v22 == v3)
      {
        v26 = *(a1 + 72);
      }

      else
      {
        v26 = 0;
      }

      [v14 updateToBacklightState:v20 forEvent:v21 touchTargetable:v23 & 1 presentationDate:v24 sceneUpdate:v25 performBacklightRamp:v26];
    }

    else
    {
      os_unfair_lock_unlock(v13 + 2);
      v14 = bls_backlight_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 32);
        v18 = *(a1 + 64);
        v19 = [v3 identifier];
        v27 = 134218754;
        v28 = v17;
        v29 = 2114;
        v30 = v18;
        v31 = 2048;
        v32 = v3;
        v33 = 2114;
        v34 = v19;
        _os_log_debug_impl(&dword_21FD11000, v14, OS_LOG_TYPE_DEBUG, "ESM:%p will skip environment update, no longer in presentation — updateTransitionStatesForReason:%{public}@ environment:%p:%{public}@", &v27, 0x2Au);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v11 + 8));
  }
}

BLSHEnvironmentAndSource *__112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v5 = v3(v2, v4);
  v6 = [[BLSHEnvironmentAndSource alloc] initWithEnvironment:v5 environmentSource:v4];

  return v6;
}

void __112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke_2(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 environment];
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 isLocal];
        }

        else
        {
          v11 = 1;
        }

        if (v11 == a2)
        {
          v12 = *(a1 + 40);
          v13 = [v9 environmentSource];
          (*(v12 + 16))(v12, v10, v13);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)performEvent:(id)event withInitialSpecifier:(id)specifier performBacklightRamp:(id)ramp
{
  eventCopy = event;
  specifierCopy = specifier;
  rampCopy = ramp;
  v8 = rampCopy;
  v9 = specifierCopy;
  v10 = eventCopy;
  BSDispatchMain();
}

- (void)onMain_performEvent:(void *)event withInitialSpecifier:(void *)specifier performBacklightRamp:
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  eventCopy = event;
  specifierCopy = specifier;
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v10 = *(self + 142);
    os_unfair_lock_unlock((self + 8));
    if (v10 == 1)
    {
      v11 = bls_backlight_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        v12 = [self debugDescription];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2114;
        v31 = v7;
        v32 = 2114;
        v33 = eventCopy;
        _os_log_fault_impl(&dword_21FD11000, v11, OS_LOG_TYPE_FAULT, "ESM:%p calling performEvent on invalidated state machine:%{public}@ event:%{public}@ initialSpecifier:%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      os_unfair_lock_lock((self + 8));
      previousState = [v7 previousState];
      state = [v7 state];
      v15 = *(self + 80);
      v16 = [[BLSHEnvironmentPerformEventData alloc] initWithStateMachineOldBacklightState:*(self + 112) eventPreviousBacklightState:previousState eventNewBacklightState:state];
      [v15 addObject:v16];

      v17 = [*(self + 80) count];
      if (v17 >= 6)
      {
        [*(self + 80) removeObjectsInRange:{0, v17 - 5}];
      }

      *(self + 112) = state;
      *(self + 120) = state;
      *(self + 140) = 257;
      v11 = *(self + 16);
      presentationEntries = [v11 presentationEntries];
      os_unfair_lock_unlock((self + 8));
      if ([presentationEntries count])
      {
        [v7 setAninmationPropertiesWithPlatformProvider:*(self + 40)];
        v19 = bls_backlight_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v24 = NSStringFromBLSBacklightState();
          v22 = [presentationEntries valueForKeyPath:@"environment.identifier"];
          bls_shortLoggingString = [v7 bls_shortLoggingString];
          *buf = 138412802;
          *&buf[4] = v24;
          *&buf[12] = 2112;
          *&buf[14] = v22;
          *&buf[22] = 2112;
          v31 = bls_shortLoggingString;
          _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "ESM: performEvent: -> %@ environments:%@ event:%@", buf, 0x20u);
        }

        [(BLSHBacklightEnvironmentStateMachine *)self updateTransitionStatesForEnvironments:presentationEntries toBacklightState:state forEvent:v7 withInitialSpecifier:eventCopy forReason:@"performEvent" performBacklightRamp:specifierCopy environmentTransformer:&__block_literal_global_185];
      }

      else if (specifierCopy)
      {
        isEnvironmentTransitionAnimated = [v7 isEnvironmentTransitionAnimated];
        v21.n128_u64[0] = 0;
        if (isEnvironmentTransitionAnimated)
        {
          v21.n128_f64[0] = 0.5;
        }

        specifierCopy[2](specifierCopy, v21);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v31) = 0;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2;
      v26[3] = &unk_27841F5E0;
      v28 = buf;
      v29 = state;
      v26[4] = self;
      v27 = v7;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_186;
      v25[3] = &unk_27841F608;
      v25[4] = buf;
      [(BLSHBacklightEnvironmentStateMachine *)self _checkCompletedOperationsToBacklightState:state transitionState:0 shouldCompleteTransitionState:0 setupWithLock:v26 completeWithoutLock:v25];

      _Block_object_dispose(buf, 8);
    }
  }
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a1 + 32;
  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 56) != *(*(a1 + 32) + 112);
  if (a4 | a5 | a6) != 1 || (*(*(*(a1 + 48) + 8) + 24))
  {
    v9 = bls_backlight_log();
    v8 = v9;
    v10 = *(*(*(a1 + 48) + 8) + 24);
    if (*(*(*(a1 + 48) + 8) + 24))
    {
      v11 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v11 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v9, v11))
    {
      if (v10)
      {
        v12 = "obsolete";
      }

      else
      {
        v12 = "waiting";
      }

      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) bls_shortLoggingString];
      v15 = [(BLSHBacklightEnvironmentStateMachine *)*(a1 + 32) _lock_descriptionOfUpdatingTransitionStatesToBacklightState:0 shouldFilter:0 countOnly:?];
      v16 = 134218754;
      v17 = v13;
      v18 = 2080;
      v19 = v12;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_21FD11000, v8, v11, "ESM:%p (performEvent finishing - %s) performEvent:%{public}@ transitionStates:%{public}@ ", &v16, 0x2Au);
    }

    goto LABEL_10;
  }

  if (a4)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_3(v7, a1);
    }

LABEL_10:

    return;
  }

  if (a5)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_2(v7, a1);
    }

    goto LABEL_10;
  }

  if (a6)
  {
    v8 = bls_backlight_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_1(v7, a1);
    }

    goto LABEL_10;
  }
}

void __75__BLSHBacklightEnvironmentStateMachine_updateAllEnvironmentsInPresentation__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) environment];
        [(BLSHBacklightEnvironmentStateMachine *)v7 onMain_updateEnvironment:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)updateEnvironment:(id)environment
{
  environmentCopy = environment;
  v3 = environmentCopy;
  BSDispatchMain();
}

- (void)updateToSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v3 = specifierCopy;
  BSDispatchMain();
}

void __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 dateSpecifierForEnvironment:a2];
  [v5 updateToDateSpecifier:v6];
}

- (void)populateEnvironmentStateMachineStruct:(id *)struct
{
  lock_presentation = self->_lock_presentation;
  lock_addingEnvironmentsCount = self->_lock_addingEnvironmentsCount;
  allObjects = [(NSMutableSet *)self->_lock_updatingVisualStateTransitionStates allObjects];
  allObjects2 = [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates allObjects];
  BYTE2(v8) = self->_lock_setPresentationOperation != 0;
  LOWORD(v8) = *&self->_pendingNotifyBeganUpdatingState;
  [BLSHBacklightEnvironmentStateMachineAbortPayload populateEnvironmentStateMachineStruct:"populateEnvironmentStateMachineStruct:machineIsNil:presentation:addingEnvironmentsCount:updatingVisualStateTransitionStates:updatingDateSpecifierTransitionStates:backlightState:previousBacklightState:pendingNotifyBeganUpdatingState:updatingState:updatingPresentation:" machineIsNil:struct presentation:0 addingEnvironmentsCount:lock_presentation updatingVisualStateTransitionStates:lock_addingEnvironmentsCount updatingDateSpecifierTransitionStates:allObjects backlightState:allObjects2 previousBacklightState:self->_lock_targetBacklightState pendingNotifyBeganUpdatingState:self->_lock_performEventTargetBacklightState updatingState:v8 updatingPresentation:?];
}

uint64_t __123__BLSHBacklightEnvironmentStateMachine__lock_descriptionOfUpdatingTransitionStatesToBacklightState_shouldFilter_countOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUpdatingInitialState])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isUpdatedToBacklightState:*(a1 + 32)] ^ 1;
  }

  return v4;
}

- (id)_descriptionOfTransitionStates:(int)states shouldFilter:(char)filter countOnly:(void *)only environmentFilter:(void *)environmentFilter filter:
{
  v10 = a2;
  onlyCopy = only;
  environmentFilterCopy = environmentFilter;
  if (self)
  {
    v12 = [v10 count];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v13 = objc_opt_new();
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke;
    v27[3] = &unk_27841F6E8;
    v28 = v10;
    v14 = environmentFilterCopy;
    v31 = v14;
    v32 = &v38;
    v34 = onlyCopy != 0;
    v29 = onlyCopy;
    v33 = v37;
    filterCopy = filter;
    statesCopy = states;
    v15 = v13;
    v30 = v15;
    [v15 appendBodySectionWithName:0 block:v27];
    v16 = objc_opt_new();
    v17 = v16;
    if (v14)
    {
      if (onlyCopy)
      {
        v18 = v24;
      }

      else
      {
        v24[1] = MEMORY[0x277D85DD0];
        v24[2] = 3221225472;
        v24[3] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_4;
        v24[4] = &unk_27841F730;
        v24[5] = &v38;
        v18 = v25;
      }
    }

    else
    {
      v25[1] = MEMORY[0x277D85DD0];
      v25[2] = 3221225472;
      v25[3] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_3;
      v25[4] = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
      v18 = &v26;
    }

    *v18 = v12;
    [v16 appendCustomFormatWithName:0 block:?];
    if (filter)
    {
      goto LABEL_13;
    }

    if (states)
    {
      if (v39[3] <= 0)
      {
        goto LABEL_13;
      }
    }

    else if (v12 < 1)
    {
LABEL_13:
      v20 = [v17 description];

      _Block_object_dispose(v37, 8);
      _Block_object_dispose(&v38, 8);
      goto LABEL_14;
    }

    v19 = [v15 description];
    [v17 appendString:v19 withName:0];

    goto LABEL_13;
  }

  v20 = 0;
LABEL_14:

  return v20;
}

void __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = *(a1 + 56);
        if (v8 && !(*(v8 + 16))(v8, *(*(&v16 + 1) + 8 * v6)))
        {
          v9 = 0;
        }

        else
        {
          ++*(*(*(a1 + 64) + 8) + 24);
          v9 = 1;
        }

        if (*(a1 + 80) == 1)
        {
          v10 = *(a1 + 40);
          v11 = [v7 environment];
          v12 = [v10 containsObject:v11];

          if ((v9 & v12) == 1)
          {
            ++*(*(*(a1 + 72) + 8) + 24);
            LOBYTE(v12) = 1;
          }
        }

        else
        {
          LOBYTE(v12) = 0;
        }

        if ((*(a1 + 81) & 1) == 0 && ((v9 & 1) != 0 || (*(a1 + 82) & 1) == 0))
        {
          v13 = *(a1 + 48);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_2;
          v14[3] = &unk_27841F6C0;
          v15 = v12;
          v14[4] = v7;
          [v13 appendCustomFormatWithName:0 block:v14];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

void __119__BLSHBacklightEnvironmentStateMachine__descriptionOfTransitionStates_shouldFilter_countOnly_environmentFilter_filter___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v2 = "+";
  }

  else
  {
    v2 = "";
  }

  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 bls_shortLoggingString];
  [v4 appendFormat:@"%s%@", v2, v5];
}

void __80__BLSHBacklightEnvironmentStateMachine__lock_etsLoggingStringForBacklightState___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = NSStringFromBLSBacklightState();
  [v2 appendString:v3 withName:@"mismatch"];

  v4 = a1[4];
  v5 = NSStringFromBLSBacklightState();
  [v4 appendString:v5 withName:@"targ"];

  if (*(a1[5] + 112) != *(a1[5] + 120))
  {
    v6 = a1[4];
    v7 = NSStringFromBLSBacklightState();
    [v6 appendString:v7 withName:@"ev"];
  }
}

- (uint64_t)_lock_isSetPresentationOperationComplete:(uint64_t)complete
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (complete && v3)
  {
    backlightState = [v3 backlightState];
    additions = [v4 additions];
    v5 = [(BLSHBacklightEnvironmentStateMachine *)complete _lock_allTransitionsDidBeginUpdateBacklightState:backlightState environmentFilter:additions];
  }

  return v5;
}

uint64_t __59__BLSHBacklightEnvironmentStateMachine_completedOperation___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"BLSHCriticalAssertDidFailNotification", 0, 0, 4u);
  [*(a1 + 32) UTF8String];
  v3 = abort_with_payload();
  return __92__BLSHBacklightEnvironmentStateMachine__lock_numTransitionsDidNotBeginUpdateBacklightState___block_invoke(v3, v4);
}

uint64_t __92__BLSHBacklightEnvironmentStateMachine__lock_numTransitionsDidNotBeginUpdateBacklightState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isUpdatingInitialState])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isUpdatedToBacklightState:*(a1 + 32)] ^ 1;
  }

  return v4;
}

- (BLSHBacklightEnvironmentStateMachineDelegate)lock_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);

  return WeakRetained;
}

- (int)_lock_debugDescription
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x277CF0C00] builderWithObject:self];
    v3 = v2;
    if (selfCopy[34] >= 1)
    {
      v4 = [v2 appendInt:? withName:?];
    }

    v5 = [v3 appendObject:*(selfCopy + 7) withName:@"updatingVisualState"];
    v6 = [OUTLINED_FUNCTION_9_0() appendObject:? withName:? skipIfNil:?];
    v7 = [v3 appendObject:*(selfCopy + 2) withName:@"presentation"];
    v8 = [v3 appendObject:*(selfCopy + 9) withName:@"updatingSpecifier"];
    v9 = NSStringFromBLSBacklightState();
    [v3 appendString:v9 withName:@"target"];

    if (*(selfCopy + 14) != *(selfCopy + 15))
    {
      v10 = NSStringFromBLSBacklightState();
      [v3 appendString:v10 withName:@"performEventTarget"];
    }

    v11 = [v3 appendBool:*(selfCopy + 140) withName:@"pendingNotifyBeganUpdatingState"];
    v12 = [v3 appendBool:*(selfCopy + 141) withName:@"updatingState"];
    v13 = [OUTLINED_FUNCTION_9_0() appendObject:? withName:? skipIfNil:?];
    [OUTLINED_FUNCTION_9_0() appendArraySection:? withName:? skipIfEmpty:?];
    [OUTLINED_FUNCTION_9_0() appendArraySection:? withName:? skipIfEmpty:?];
    [OUTLINED_FUNCTION_9_0() appendArraySection:? withName:? skipIfEmpty:?];
    selfCopy = [v3 build];
  }

  return selfCopy;
}

- (id)_lock_descriptionOfUpdatingTransitionStatesToBacklightState:(int)state shouldFilter:(char)filter countOnly:
{
  if (self)
  {
    v8 = *(self + 56);
    additions = [*(self + 104) additions];
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v13 = __123__BLSHBacklightEnvironmentStateMachine__lock_descriptionOfUpdatingTransitionStatesToBacklightState_shouldFilter_countOnly___block_invoke;
    v14 = &__block_descriptor_40_e40_B16__0__BLSHEnvironmentTransitionState_8l;
    v15 = a2;
    v10 = [(BLSHBacklightEnvironmentStateMachine *)self _descriptionOfTransitionStates:v8 shouldFilter:state countOnly:filter environmentFilter:additions filter:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:(char)filter countOnly:
{
  if (self)
  {
    self = [(BLSHBacklightEnvironmentStateMachine *)self _descriptionOfTransitionStates:a2 shouldFilter:filter countOnly:0 environmentFilter:0 filter:?];
    v3 = vars8;
  }

  return self;
}

- (NSString)debugDescription
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  _lock_debugDescription = [(BLSHBacklightEnvironmentStateMachine *)self _lock_debugDescription];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_debugDescription;
}

- (uint64_t)isInvalid
{
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 142);
    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)updateTransitionStatesForEnvironments:(uint64_t)environments toBacklightState:(void *)state forEvent:(void *)event withInitialSpecifier:(void *)specifier forReason:(void *)reason performBacklightRamp:(void *)ramp environmentTransformer:
{
  stateCopy = state;
  eventCopy = event;
  specifierCopy = specifier;
  reasonCopy = reason;
  if (self)
  {
    rampCopy = ramp;
    v19 = a2;
    os_unfair_lock_lock(self + 2);
    ++self[34]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(self + 2);
    [v19 firstObject];
    v20 = reasonCopy;
    v22 = v21 = eventCopy;
    v23 = rampCopy[2](rampCopy, v22);

    eventCopy = v21;
    reasonCopy = v20;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __179__BLSHBacklightEnvironmentStateMachine_updateTransitionStatesForEnvironments_toBacklightState_forEvent_withInitialSpecifier_forReason_performBacklightRamp_environmentTransformer___block_invoke;
    v26[3] = &unk_27841F540;
    v26[4] = self;
    environmentsCopy = environments;
    v27 = eventCopy;
    v28 = v23;
    v29 = stateCopy;
    v33 = stateCopy != 0;
    v31 = v20;
    v30 = specifierCopy;
    v24 = v23;
    [(BLSHBacklightEnvironmentStateMachine *)self enumerateRemoteEnvironmentsFirstFromSource:v19 environmentTransformer:rampCopy block:v26];

    [(BLSHBacklightEnvironmentStateMachine *)self endAddingEnvironments];
  }
}

- (id)_lock_transitionStateForEnvironment:(uint64_t)environment
{
  v3 = a2;
  if (environment)
  {
    v4 = [*(environment + 48) objectForKey:v3];
    if (!v4)
    {
      v4 = [BLSHEnvironmentTransitionState createStateForEnvironment:v3 delegate:environment];
      [*(environment + 48) setObject:v4 forKey:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerateRemoteEnvironmentsFirstFromSource:(void *)source environmentTransformer:(void *)transformer block:
{
  sourceCopy = source;
  transformerCopy = transformer;
  if (self)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke;
    v19[3] = &unk_27841F568;
    v20 = sourceCopy;
    v9 = [a2 bs_map:v19];
    OUTLINED_FUNCTION_0_5();
    v14 = 3221225472;
    v15 = __112__BLSHBacklightEnvironmentStateMachine_enumerateRemoteEnvironmentsFirstFromSource_environmentTransformer_block___block_invoke_2;
    v16 = &unk_27841F590;
    v17 = v10;
    v18 = transformerCopy;
    v11 = v9;
    v12 = MEMORY[0x223D70730](v13);
    v12[2](v12, 0);
    v12[2](v12, 1);
  }
}

- (void)updateAllEnvironmentsInPresentation
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(BLSHBacklightEnvironmentStateMachine *)self isInvalid])
  {
    v3 = bls_backlight_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v4 = [(BLSHBacklightEnvironmentStateMachine *)self debugDescription];
      *buf = 134218242;
      selfCopy = self;
      v9 = 2114;
      v10 = v4;
      _os_log_fault_impl(&dword_21FD11000, v3, OS_LOG_TYPE_FAULT, "ESM:%p calling updateAllEnvironmentsInPresentation on invalidated state machine:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    presentationEntries = [(BLSHBacklightEnvironmentPresentation *)self->_lock_presentation presentationEntries];
    os_unfair_lock_unlock(&self->_lock);
    OUTLINED_FUNCTION_12();
    v6 = presentationEntries;
    v3 = presentationEntries;
    BSDispatchMain();
  }
}

- (void)onMain_updateEnvironment:(uint64_t)environment
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (environment)
  {
    os_unfair_lock_lock((environment + 8));
    v4 = *(environment + 142);
    os_unfair_lock_unlock((environment + 8));
    if (v4 == 1)
    {
      visualState = bls_backlight_log();
      if (os_log_type_enabled(visualState, OS_LOG_TYPE_FAULT))
      {
        v6 = [environment debugDescription];
        OUTLINED_FUNCTION_1_0();
        v27 = v7;
        v28 = v8;
        v29 = v3;
        _os_log_fault_impl(&dword_21FD11000, visualState, OS_LOG_TYPE_FAULT, "ESM:%p calling updateEnvironment on invalidated state machine:%{public}@ environment:%{public}@", v26, 0x20u);
      }

      goto LABEL_11;
    }

    presentation = [environment presentation];
    os_unfair_lock_lock((environment + 8));
    v10 = *(environment + 112);
    v11 = [*(environment + 16) containsEnvironment:v3];
    presentationEntries = [*(environment + 16) presentationEntries];
    firstObject = [presentationEntries firstObject];
    environment = [firstObject environment];

    os_unfair_lock_unlock((environment + 8));
    if (!v11)
    {
      visualState = bls_backlight_log();
      if (!os_log_type_enabled(visualState, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      identifier = [v3 identifier];
      v22 = NSStringFromBLSBacklightState();
      OUTLINED_FUNCTION_1_0();
      v27 = identifier;
      v28 = v23;
      v29 = v24;
      _os_log_debug_impl(&dword_21FD11000, visualState, OS_LOG_TYPE_DEBUG, "ESM:%p will not update environment:%{public}@ (not in presentation) to backlightState:%{public}@", v26, 0x20u);

LABEL_9:
LABEL_11:

      goto LABEL_12;
    }

    visualState = [v3 visualState];
    identifier = BLSVisualStateForBacklightState(v10, [visualState updateFidelity], v3, *(environment + 24), *(environment + 32));
    if (([visualState isEqual:identifier]& 1) != 0)
    {
      v16 = bls_backlight_log();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_8:

        goto LABEL_9;
      }

      identifier2 = [v3 identifier];
      v25 = NSStringFromBLSBacklightState();
      OUTLINED_FUNCTION_1_0();
      v27 = identifier2;
      OUTLINED_FUNCTION_12_1();
      _os_log_debug_impl(&dword_21FD11000, v16, OS_LOG_TYPE_DEBUG, "ESM:%p not will update environment:%{public}@ (unchanged) to backlightState:%{public}@ visualState:%{public}@", v26, 0x2Au);
    }

    else
    {
      v16 = [(BLSHBacklightEnvironmentStateMachine *)environment transitionStateForEnvironment:v3];
      os_unfair_lock_lock((environment + 8));
      [*(environment + 56) addObject:v16];
      os_unfair_lock_unlock((environment + 8));
      v17 = bls_backlight_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        identifier3 = [v3 identifier];
        v19 = NSStringFromBLSBacklightState();
        OUTLINED_FUNCTION_1_0();
        v27 = identifier3;
        OUTLINED_FUNCTION_12_1();
        _os_log_impl(&dword_21FD11000, v17, OS_LOG_TYPE_INFO, "ESM:%p will update environment:%{public}@ to backlightState:%{public}@ visualState:%{public}@", v26, 0x2Au);
      }

      v20 = environment == v3;

      identifier2 = [v3 presentationDate];
      [v16 updateToBacklightState:v10 forEvent:0 touchTargetable:v20 presentationDate:identifier2 sceneUpdate:0 performBacklightRamp:0];
    }

    goto LABEL_8;
  }

LABEL_12:
}

- (id)transitionStateForEnvironment:(os_unfair_lock_s *)environment
{
  if (environment)
  {
    v3 = a2;
    os_unfair_lock_lock(environment + 2);
    v4 = [(BLSHBacklightEnvironmentStateMachine *)environment _lock_transitionStateForEnvironment:v3];

    os_unfair_lock_unlock(environment + 2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)onMain_updateToSpecifier:(uint64_t)specifier
{
  v4 = a2;
  if (specifier)
  {
    os_unfair_lock_lock((specifier + 8));
    v5 = *(specifier + 64);
    *(specifier + 64) = 0;

    v6 = *(specifier + 16);
    presentationEntries = [v6 presentationEntries];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke;
    v14[3] = &unk_27841F630;
    v14[4] = specifier;
    v8 = [presentationEntries bs_map:v14];
    v9 = [v8 mutableCopy];
    v10 = *(specifier + 64);
    *(specifier + 64) = v9;

    objc_storeStrong((specifier + 72), a2);
    WeakRetained = objc_loadWeakRetained((specifier + 152));
    os_unfair_lock_unlock((specifier + 8));
    if ([v8 count])
    {
      OUTLINED_FUNCTION_12();
      v12[1] = 3221225472;
      v12[2] = __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke_3;
      v12[3] = &unk_27841F678;
      v13 = v4;
      [(BLSHBacklightEnvironmentStateMachine *)specifier enumerateRemoteEnvironmentsFirstFromSource:v8 environmentTransformer:&__block_literal_global_189 block:v12];
    }

    else
    {
      [WeakRetained environmentStateMachine:specifier didUpdateToSpecifier:v4];
    }
  }
}

id __65__BLSHBacklightEnvironmentStateMachine_onMain_updateToSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 environment];
  v4 = [(BLSHBacklightEnvironmentStateMachine *)v2 _lock_transitionStateForEnvironment:v3];

  return v4;
}

- (void)populateOperationCompletedMismatchedBacklightStatesStruct:(uint64_t)struct backlightState:(uint64_t)state targetBacklightState:(void *)backlightState performEventHistory:(void *)history didBeginUpdateHistory:(void *)updateHistory didCompleteUpdateHistory:
{
  if (self)
  {
    v12 = *(self + 16);
    v13 = *(self + 136);
    v14 = *(self + 56);
    updateHistoryCopy = updateHistory;
    historyCopy = history;
    backlightStateCopy = backlightState;
    allObjects = [v14 allObjects];
    allObjects2 = [*(self + 64) allObjects];
    BYTE2(v21) = *(self + 104) != 0;
    LOWORD(v21) = *(self + 140);
    LODWORD(v20) = v13;
    LOBYTE(v19) = 0;
    [BLSHBacklightEnvironmentStateMachineAbortPayload populateOperationCompletedMismatchedBacklightStatesStruct:"populateOperationCompletedMismatchedBacklightStatesStruct:backlightState:targetBacklightState:performEventHistory:didBeginUpdateHistory:didCompleteUpdateHistory:envStateMachineIsNil:envStateMachinePresentation:addingEnvironmentsCount:envStateMachineUpdatingVisualStateTransitionStates:envStateMachineUpdatingDateSpecifierTransitionStates:envStateMachineBacklightState:envStateMachinePreviousBacklightState:envStateMachinePendingNotifyBeganUpdatingState:envStateMachineUpdatingState:envStateMachineUpdatingPresentation:" backlightState:a2 targetBacklightState:struct performEventHistory:state didBeginUpdateHistory:backlightStateCopy didCompleteUpdateHistory:historyCopy envStateMachineIsNil:updateHistoryCopy envStateMachinePresentation:v19 addingEnvironmentsCount:v12 envStateMachineUpdatingVisualStateTransitionStates:v20 envStateMachineUpdatingDateSpecifierTransitionStates:allObjects envStateMachineBacklightState:allObjects2 envStateMachinePreviousBacklightState:*(self + 112) envStateMachinePendingNotifyBeganUpdatingState:*(self + 120) envStateMachineUpdatingState:v21 envStateMachineUpdatingPresentation:?];
  }
}

- (id)_lock_etsLoggingStringForBacklightState:(uint64_t)state
{
  if (state)
  {
    if (*(state + 112) == a2 && *(state + 120) == a2)
    {
      v4 = NSStringFromBLSBacklightState();
    }

    else
    {
      objc_opt_new();
      OUTLINED_FUNCTION_0_5();
      OUTLINED_FUNCTION_18();
      v9 = __80__BLSHBacklightEnvironmentStateMachine__lock_etsLoggingStringForBacklightState___block_invoke;
      v10 = &unk_27841E510;
      stateCopy = state;
      v13 = a2;
      v11 = v5;
      v6 = v5;
      [v6 appendProem:0 block:v8];
      v4 = [v6 description];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_lock_updateHistory:(uint64_t)history backlightState:(void *)state transitionState:(uint64_t)transitionState pendingTransitionStateCount:
{
  v15 = a2;
  stateCopy = state;
  if (self)
  {
    v10 = [BLSHEnvironmentUpdateData alloc];
    environment = [stateCopy environment];
    identifier = [environment identifier];
    v13 = [(BLSHEnvironmentUpdateData *)v10 initWithEnvironmentIdentifier:identifier newBacklightState:history pendingTransitionStateCount:transitionState];
    [v15 addObject:v13];

    v14 = [v15 count];
    if (v14 >= 6)
    {
      [v15 removeObjectsInRange:{0, v14 - 5}];
    }
  }
}

- (void)_checkCompletedOperationsToBacklightState:(void *)state transitionState:(int)transitionState shouldCompleteTransitionState:(void *)completeTransitionState setupWithLock:(void *)lock completeWithoutLock:
{
  stateCopy = state;
  completeTransitionStateCopy = completeTransitionState;
  if (self)
  {
    lockCopy = lock;
    os_unfair_lock_lock((self + 8));
    v12 = *(self + 104);
    v13 = *(self + 112);
    if (stateCopy)
    {
      v14 = [*(self + 56) containsObject:?] ^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    v15 = *(self + 140);
    if (transitionState)
    {
      v16 = [(BLSHBacklightEnvironmentStateMachine *)self _lock_transitionCompleteAfterCompletingTransitionState:stateCopy];
    }

    else
    {
      v16 = 0;
    }

    v32 = v15;
    if (v13 != a2 || *(self + 136))
    {
      v17 = v12;
      v18 = 0;
      v19 = 0;
      goto LABEL_10;
    }

    if (transitionState)
    {
      if (!v16)
      {
LABEL_24:
        v24 = OUTLINED_FUNCTION_14_1();
        v18 = [(BLSHBacklightEnvironmentStateMachine *)v24 _lock_allTransitionsDidBeginUpdateBacklightState:v25 environmentFilter:0];
        if (v18 && (v15 & 1) != 0)
        {
          v17 = v12;
          v16 = 0;
          v19 = 0;
          v18 = 1;
        }

        else
        {
          v17 = v12;
          v19 = [(BLSHBacklightEnvironmentStateMachine *)self _lock_isSetPresentationOperationComplete:v12];
          v16 = 0;
        }

LABEL_10:
        OUTLINED_FUNCTION_7_1();
        v20();
        os_unfair_lock_unlock((self + 8));
        OUTLINED_FUNCTION_7_1();
        v22 = v21();
        if (v13 == a2)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (!(v14 & 1 | ((v23 & 1) == 0)))
        {
          if (v16)
          {
            v26 = [BLSHCompletedUpdateOperation didCompleteUpdateToBacklightState:a2];
          }

          else
          {
            if ((v18 & v32) != 1)
            {
              if (v19)
              {
                v30 = OUTLINED_FUNCTION_13_1();
                [(BLSHBacklightEnvironmentStateMachine *)v30 completedOperation:v31];
              }

              goto LABEL_18;
            }

            v26 = [BLSHBegunUpdateOperation didBeginUpdateToBacklightState:a2];
          }

          v27 = v26;
          v28 = OUTLINED_FUNCTION_14_1();
          [(BLSHBacklightEnvironmentStateMachine *)v28 completedOperation:v29];
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else if ([*(self + 56) count])
    {
      goto LABEL_24;
    }

    v17 = v12;
    v18 = 0;
    v19 = 0;
    v16 = 1;
    goto LABEL_10;
  }

LABEL_19:
}

- (BOOL)_lock_transitionCompleteAfterCompletingTransitionState:(uint64_t)state
{
  v3 = a2;
  if (state)
  {
    [*(state + 56) removeObject:v3];
    v4 = *(state + 136) <= 0 && [*(state + 56) count] == 0;
    v5 = OUTLINED_FUNCTION_13_1();
    [(BLSHBacklightEnvironmentStateMachine *)v5 _lock_ifPossibleStopTrackingTransitionState:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)completedOperation:(uint64_t)operation
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (operation)
  {
    os_unfair_lock_lock((operation + 8));
    backlightState = [v3 backlightState];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    v8 = v6 & *(operation + 141);
    v60 = backlightState;
    if (v8)
    {
      *(operation + 141) = 0;
      v9 = *(operation + 112);
      if (v9 != backlightState && *(operation + 120) != backlightState)
      {
        v47 = backlightState;
        v48 = malloc_type_calloc(1uLL, 0x290uLL, 0x3EC24470uLL);
        [(BLSHBacklightEnvironmentStateMachine *)operation populateOperationCompletedMismatchedBacklightStatesStruct:v48 backlightState:v9 targetBacklightState:v47 performEventHistory:*(operation + 80) didBeginUpdateHistory:*(operation + 88) didCompleteUpdateHistory:*(operation + 96)];
        v49 = MEMORY[0x277CCACA8];
        v50 = NSStringFromBLSBacklightState();
        v51 = NSStringFromBLSBacklightState();
        v52 = NSStringFromBLSBacklightState();
        v53 = [v49 stringWithFormat:@"no more transitionStates but state:%@ != target:%@ and != performEventTarget:%@ eventHistory:%@ didBeginUpdateHistory:%@ didCompleteHistory:%@", v50, v51, v52, *(operation + 80), *(operation + 88), *(operation + 96)];

        BLSHRecordCriticalAssertFailure(v53, 1, 0);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __59__BLSHBacklightEnvironmentStateMachine_completedOperation___block_invoke;
        v62[3] = &unk_27841F7C8;
        v65 = 656;
        v63 = v53;
        v64 = v48;
        v54 = v53;
        v55 = MEMORY[0x223D70730](v62);
        if (BLSHIsUnitTestRunning())
        {
          v55[2](v55);
        }

        else
        {
          v56 = dispatch_time(0, 1000000000);
          dispatch_after(v56, MEMORY[0x277D85CD0], v55);
        }
      }

      v10 = (operation + 140);
      if (*(operation + 140) != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = (operation + 140);
      if ((*(operation + 140) & isKindOfClass & 1) == 0 || backlightState != *(operation + 120))
      {
LABEL_10:
        v11 = 0;
        goto LABEL_11;
      }
    }

    *v10 = 0;
    v11 = 1;
LABEL_11:
    v12 = *(operation + 104);
    if ((v7 & (v12 == v3)) != 0 || (v13 = OUTLINED_FUNCTION_14_1(), [(BLSHBacklightEnvironmentStateMachine *)v13 _lock_isSetPresentationOperationComplete:v14]))
    {
      v15 = *(operation + 104);
      *(operation + 104) = 0;

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(operation + 16);
    WeakRetained = objc_loadWeakRetained((operation + 152));
    os_unfair_lock_unlock((operation + 8));
    v19 = bls_backlight_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v59 = NSStringFromBLSBacklightState();
      v57 = NSStringFromBLSBacklightState();
      OUTLINED_FUNCTION_5_4();
      v71 = v59;
      v72 = v40;
      v73 = v41;
      OUTLINED_FUNCTION_3_4();
      v79 = v11;
      v80 = v42;
      v81 = v43;
      v82 = v44;
      v83 = v12;
      v84 = v44;
      v85 = v45;
      v86 = v44;
      v87 = v46;
      _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "ESM:%p completedOperation:%{public}@ target:%{public}@ performEventTarget:%{public}@ updatingState:%{BOOL}u shouldNotifyUpdatedPresentation:%{BOOL}u shouldNotifyBegan:%{BOOL}u shouldNotifyCompleted:%{BOOL}u, setPresentationOperation:%{public}@ eventHistory:%{public}@ updateHistory:%{public}@", buf, 0x60u);
    }

    if (v16)
    {
      [WeakRetained environmentStateMachine:operation didUpdateToPresentation:v17];
    }

    v20 = &off_21FDA5000;
    if (v11)
    {
      os_unfair_lock_lock((operation + 8));
      if (*v10 == 1)
      {
        v21 = bls_backlight_log();
        v22 = v60;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v58 = NSStringFromBLSBacklightState();
          NSStringFromBLSBacklightState();
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_5_4();
          v71 = v58;
          v72 = v23;
          v73 = v24;
          v25 = v24;
          OUTLINED_FUNCTION_3_4();
          v79 = 0;
          v80 = v26;
          v81 = v27;
          v82 = v28;
          v83 = v29;
          v84 = v28;
          v85 = v30;
          _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_INFO, "ESM:%p (dropping didBeginUpdateToState callback) completedOperation:%{public}@ target:%{public}@ performEventTarget:%{public}@ updatingState:%{BOOL}u shouldNotifyUpdatedPresentation:%{BOOL}u shouldNotifyBegan:%{BOOL}u shouldNotifyCompleted:%{BOOL}u eventHistory:%{public}@ updateHistory:%{public}@", buf, 0x56u);
        }

        v31 = v8;

        os_unfair_lock_unlock((operation + 8));
        v32 = 0;
        v20 = &off_21FDA5000;
        if ((v31 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v34 = v8;
      os_unfair_lock_unlock((operation + 8));
      v22 = v60;
      [WeakRetained environmentStateMachine:operation didBeginUpdateToState:v60];
      v32 = 1;
      if (v34)
      {
LABEL_28:
        os_unfair_lock_lock((operation + 8));
        if (*(operation + 112) == v22 && *(operation + 120) == v22)
        {
          os_unfair_lock_unlock((operation + 8));
          [WeakRetained environmentStateMachine:operation didCompleteUpdateToState:v22];
        }

        else
        {
          v35 = bls_backlight_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            NSStringFromBLSBacklightState();
            v36 = v61 = v17;
            v37 = NSStringFromBLSBacklightState();
            v38 = *(operation + 80);
            v39 = *(operation + 96);
            *buf = *(v20 + 83);
            operationCopy = operation;
            v68 = 2114;
            v69 = v3;
            v70 = 2114;
            v71 = v36;
            v72 = 2114;
            v73 = v37;
            v74 = 1024;
            v75 = 1;
            v76 = 1024;
            v77 = v16;
            v78 = 1024;
            v79 = v32;
            v80 = 1024;
            v81 = 0;
            v82 = 2114;
            v83 = v38;
            v84 = 2114;
            v85 = v39;
            _os_log_impl(&dword_21FD11000, v35, OS_LOG_TYPE_INFO, "ESM:%p (dropping didCompleteUpdateToState callback) completedOperation:%{public}@ target:%{public}@ performEventTarget:%{public}@ updatingState:%{BOOL}u shouldNotifyUpdatedPresentation:%{BOOL}u shouldNotifyBegan:%{BOOL}u shouldNotifyCompleted:%{BOOL}u eventHistory:%{public}@ updateHistory:%{public}@", buf, 0x56u);

            v17 = v61;
          }

          os_unfair_lock_unlock((operation + 8));
        }
      }
    }

    else
    {
      v33 = v8;
      v32 = 0;
      v22 = v60;
      if (v33)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
  }
}

- (void)checkCompletedOperationsToBacklightState:(void *)state visualState:(void *)visualState transitionState:(int)transitionState isBeginUpdate:
{
  stateCopy = state;
  visualStateCopy = visualState;
  if (self)
  {
    OUTLINED_FUNCTION_0_5();
    OUTLINED_FUNCTION_18();
    v12 = __123__BLSHBacklightEnvironmentStateMachine_checkCompletedOperationsToBacklightState_visualState_transitionState_isBeginUpdate___block_invoke;
    v13 = &unk_27841F780;
    transitionStateCopy = transitionState;
    selfCopy = self;
    v17 = a2;
    v15 = visualStateCopy;
    v16 = stateCopy;
    [(BLSHBacklightEnvironmentStateMachine *)self _checkCompletedOperationsToBacklightState:a2 transitionState:v15 shouldCompleteTransitionState:transitionState ^ 1 setupWithLock:v11 completeWithoutLock:&__block_literal_global_234];
  }
}

void __123__BLSHBacklightEnvironmentStateMachine_checkCompletedOperationsToBacklightState_visualState_transitionState_isBeginUpdate___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v69 = *MEMORY[0x277D85DE8];
  v11 = bls_backlight_log();
  v12 = v11;
  v13 = *(a1 + 64);
  if ((v13 & a4) != 0)
  {
    v14 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    v14 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v11, v14))
  {
    v15 = "etsDidCompleteUpdateTo";
    if (v13)
    {
      v15 = "etsDidBeginUpdateTo";
    }

    v32 = v15;
    v33 = *(a1 + 32);
    v36 = [(BLSHBacklightEnvironmentStateMachine *)v33 _lock_etsLoggingStringForBacklightState:?];
    v34 = [*(a1 + 40) bls_shortLoggingString];
    v37 = a6;
    v38 = a3;
    v35 = a5;
    if (*(a1 + 64))
    {
      v16 = "";
    }

    else
    {
      v16 = "";
      if ([*(a1 + 40) isUpdatingInitialState] && objc_msgSend(*(a1 + 40), "isUpdatedToBacklightState:", *(*(a1 + 32) + 112)))
      {
        v16 = "completed before begun! ";
      }
    }

    v17 = [(BLSHBacklightEnvironmentStateMachine *)*(a1 + 32) _lock_descriptionOfUpdatingTransitionStatesToBacklightState:*(a1 + 64) shouldFilter:0 countOnly:?];
    v18 = *(a1 + 32);
    v19 = *(v18 + 136);
    v20 = *(v18 + 140);
    v21 = *(v18 + 104) != 0;
    v31 = *(v18 + 141);
    v22 = [*(a1 + 48) bls_shortLoggingString];
    *buf = 134221570;
    v40 = v33;
    v41 = 2080;
    v42 = v32;
    v43 = 2114;
    v44 = v36;
    v45 = 2114;
    v46 = v34;
    v47 = 2080;
    v48 = v16;
    v49 = 2114;
    v50 = v17;
    v51 = 1024;
    v52 = v19;
    v53 = 1024;
    v54 = v20;
    v55 = 1024;
    v56 = v35;
    v57 = 1024;
    v58 = v21;
    v59 = 1024;
    v60 = v37;
    v61 = 1024;
    v62 = v31;
    v63 = 1024;
    v64 = a4;
    v65 = 2114;
    v66 = v22;
    v67 = 1024;
    v68 = v38;
    _os_log_impl(&dword_21FD11000, v12, v14, "ESM:%p %s:%{public}@ for:%{public}@ %sets:%{public}@ ∂env:%d ∂begin:%{BOOL}u/%{BOOL}u ∂end:%{BOOL}u/%{BOOL}u ∂pres:%{BOOL}u/%{BOOL}u %{public}@ stale:%{BOOL}u", buf, 0x78u);
  }

  v23 = *(a1 + 64);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 56);
  if (v23)
  {
    v27 = OUTLINED_FUNCTION_13_1();
    [BLSHBacklightEnvironmentStateMachine _lock_numTransitionsDidNotBeginUpdateBacklightState:v27];
  }

  else
  {
    [*(v24 + 56) count];
  }

  v28 = OUTLINED_FUNCTION_14_1();
  [(BLSHBacklightEnvironmentStateMachine *)v28 _lock_updateHistory:v29 backlightState:v26 transitionState:v25 pendingTransitionStateCount:v30];
}

- (uint64_t)_lock_numTransitionsDidNotBeginUpdateBacklightState:(uint64_t)state
{
  if (!state)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_18();
  v7 = __92__BLSHBacklightEnvironmentStateMachine__lock_numTransitionsDidNotBeginUpdateBacklightState___block_invoke;
  v8 = &__block_descriptor_40_e44_B24__0__BLSHEnvironmentTransitionState_8_B16l;
  v9 = v1;
  v3 = [v2 objectsPassingTest:v6];
  v4 = [v3 count];

  return v4;
}

- (uint64_t)_lock_isActiveTransitionState:(uint64_t)state
{
  v3 = a2;
  if (state)
  {
    if ([*(state + 56) containsObject:v3])
    {
      state = 1;
    }

    else
    {
      state = [*(state + 64) containsObject:v3];
    }
  }

  return state;
}

- (void)_lock_ifPossibleStopTrackingTransitionState:(uint64_t)state
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (state)
  {
    v4 = OUTLINED_FUNCTION_13_1();
    v6 = [(BLSHBacklightEnvironmentStateMachine *)v4 _lock_isActiveTransitionState:v5];
    if (v6 & 1) != 0 || ([v3 isUpdatingInitialState] & 1) != 0 || (objc_msgSend(v3, "isUpdatingVisualState"))
    {
      environment = bls_backlight_log();
      if (os_log_type_enabled(environment, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_8_0();
        v12 = 1024;
        v13 = v6;
        _os_log_debug_impl(&dword_21FD11000, environment, OS_LOG_TYPE_DEBUG, "ESM:%p will not stop tracking transitionState:%{public}@ (isActiveTransitionState:%{BOOL}u)", v11, 0x1Cu);
      }
    }

    else
    {
      v8 = bls_backlight_log();
      if ([MEMORY[0x277CF09B8] isHostProcess])
      {
        v9 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v9 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_8_0();
        _os_log_impl(&dword_21FD11000, v8, v9, "ESM:%p will stop tracking transitionState:%{public}@", v11, 0x16u);
      }

      v10 = *(state + 48);
      environment = [v3 environment];
      [v10 removeObjectForKey:environment];
    }
  }
}

- (void)transitionState:(id)state didUpdateToDateSpecifier:(id)specifier
{
  v36 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  specifierCopy = specifier;
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_updatingSpecifier;
  if (v8 && [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates containsObject:stateCopy])
  {
    environment = [stateCopy environment];
    v10 = [(BLSHPresentationDateSpecifier *)v8 dateSpecifierForEnvironment:environment];
    date = [v10 date];

    if (specifierCopy)
    {
      date2 = [specifierCopy date];
      if ([date2 isEqualToDate:date])
      {
      }

      else
      {

        if (date)
        {
LABEL_16:
          v20 = 0;
          goto LABEL_17;
        }
      }
    }

    else if (date)
    {
      goto LABEL_16;
    }

    [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates removeObject:stateCopy];
    v20 = 1;
LABEL_17:
    v21 = [(NSMutableSet *)self->_lock_updatingDateSpecifierTransitionStates count];
    v22 = bls_backlight_log();
    if ([MEMORY[0x277CF09B8] isHostProcess] | v20 ^ 1)
    {
      v23 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v23 = OS_LOG_TYPE_DEBUG;
    }

    if (os_log_type_enabled(v22, v23))
    {
      bls_shortLoggingString = [specifierCopy bls_shortLoggingString];
      bls_shortLoggingString2 = [stateCopy bls_shortLoggingString];
      v29 = bls_backlight_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [(BLSHBacklightEnvironmentStateMachine *)&self->super.isa _lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:0 countOnly:?];
      }

      else
      {
        [MEMORY[0x277CCABB0] numberWithLong:v21];
      }
      v24 = ;
      OUTLINED_FUNCTION_15_0();
      v33 = bls_shortLoggingString;
      v34 = 1024;
      *v35 = v20;
      *&v35[4] = v25;
      *&v35[6] = bls_shortLoggingString2;
      *&v35[14] = v25;
      *&v35[16] = v26;
      _os_log_impl(&dword_21FD11000, v22, v23, "ESM:%p etsUpdateTo:%{public}@ dateMatch:%{BOOL}u for:%{public}@ ets:%{public}@", buf, 0x30u);
    }

    v17 = v21 == 0;
    if (!v21)
    {
      lock_updatingDateSpecifierTransitionStates = self->_lock_updatingDateSpecifierTransitionStates;
      self->_lock_updatingDateSpecifierTransitionStates = 0;

      updatingSpecifier = self->_updatingSpecifier;
      self->_updatingSpecifier = 0;

      v17 = 1;
    }

    goto LABEL_9;
  }

  date = bls_backlight_log();
  if (os_log_type_enabled(date, OS_LOG_TYPE_DEBUG))
  {
    bls_shortLoggingString3 = [specifierCopy bls_shortLoggingString];
    bls_shortLoggingString4 = [stateCopy bls_shortLoggingString];
    v14 = [(BLSHBacklightEnvironmentStateMachine *)&self->super.isa _lock_descriptionOfDateSpecifierTransitionStatesShouldFilter:0 countOnly:?];
    OUTLINED_FUNCTION_15_0();
    v33 = bls_shortLoggingString3;
    v34 = v15;
    *v35 = bls_shortLoggingString4;
    *&v35[8] = v15;
    *&v35[10] = v16;
    _os_log_debug_impl(&dword_21FD11000, date, OS_LOG_TYPE_DEBUG, "ESM:%p (stale) etsUpdateTo:%{public}@ for:%{public}@ ets:%{public}@", buf, 0x2Au);
  }

  v17 = 0;
LABEL_9:

  WeakRetained = objc_loadWeakRetained(&self->_lock_delegate);
  [(BLSHBacklightEnvironmentStateMachine *)self _lock_ifPossibleStopTrackingTransitionState:stateCopy];
  os_unfair_lock_unlock(&self->_lock);
  if (v17)
  {
    [WeakRetained environmentStateMachine:self didUpdateToSpecifier:v8];
  }
}

- (uint64_t)_lock_allTransitionsDidBeginUpdateBacklightState:(void *)state environmentFilter:
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (self && *(self + 136) <= 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = *(self + 56);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          if (!stateCopy || ([*(*(&v16 + 1) + 8 * v11) environment], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(stateCopy, "containsObject:", v13), v13, v14))
          {
            if (([v12 isUpdatingInitialState] & 1) != 0 || !objc_msgSend(v12, "isUpdatedToBacklightState:", a2))
            {
              v6 = 0;
              goto LABEL_17;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 1;
LABEL_17:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)initWithPresentation:(int *)a1 backlightState:(const char *)a2 delegate:inactiveBudgetPolicy:osTimerProvider:platformProvider:.cold.1(int *a1, const char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(BLSHBacklightEnvironmentStateMachine *)a1 _lock_debugDescription];
  v6 = [v4 stringWithFormat:@"%p cannot initialize with nil presentation, %@", a1, v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)onMain_setPresentation:(NSObject *)a3 withTargetBacklightState:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromBLSBacklightState();
  v6 = [a2 valueForKeyPath:@"identifier"];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "ESM: setPresentation: -> %@ environments %@", &v7, 0x16u);
}

- (void)onMain_setPresentation:(void *)a1 withTargetBacklightState:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [a1 debugDescription];
  v6 = [v4 stringWithFormat:@"%p cannot set nil presentation, %@", a1, v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v16, v17);
  }

  v15 = v6;
  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)onMain_setPresentation:(NSObject *)a3 withTargetBacklightState:.cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = [a1 debugDescription];
  v7 = 134218498;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  v11 = 2114;
  v12 = a2;
  _os_log_fault_impl(&dword_21FD11000, a3, OS_LOG_TYPE_FAULT, "ESM:%p calling setPresentation on invalidated state machine:%{public}@ presentation:%{public}@", &v7, 0x20u);
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_6_3(a1 a2)];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_21FD11000, v3, v4, "ESM:%p finishing (performEvent immediate setPresentation complete) performEvent:%{public}@", v5, v6, v7, v8);
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_6_3(a1 a2)];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_21FD11000, v3, v4, "ESM:%p finishing (performEvent immediate begin update) performEvent:%{public}@", v5, v6, v7, v8);
}

void __102__BLSHBacklightEnvironmentStateMachine_onMain_performEvent_withInitialSpecifier_performBacklightRamp___block_invoke_2_cold_3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_6_3(a1 a2)];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_4_3(&dword_21FD11000, v3, v4, "ESM:%p finishing (performEvent immediate complete) performEvent:%{public}@", v5, v6, v7, v8);
}

@end