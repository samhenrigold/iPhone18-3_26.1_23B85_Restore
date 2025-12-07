@interface SBSASecureFlipBookElementPreferencesProvider
- (BOOL)_isTimerExpiredWithIdentifier:(id)identifier context:(id)context;
- (BOOL)_isTransitionAllowedTo:(id)to givenContext:(id)context iterationStartTime:(double)time requestRetryAfterDelay:(double *)delay;
- (BOOL)_isTransitionSecureFromState:(id)state toState:(id)toState forComponent:(id)component indefinitely:(BOOL)indefinitely givenMap:(id)map;
- (id)_startTimerForDuration:(double)duration preferencesMutator:(id)mutator;
- (id)preferencesFromContext:(id)context;
- (void)_fallbackUpdateSecureStateStatusForInitialTransitionsWithRenderingContext:(id)context;
- (void)_updateSecureStateStatusBeforeAnyTransitions:(id)transitions iterationStartTime:(double)time;
- (void)_updateSecureStateStatusWithRequestedTransitionToSecureElementContext:(id)context renderingContext:(id)renderingContext;
- (void)_updateSecureStateStatusWithTransitionToNilSecureElementContext;
@end

@implementation SBSASecureFlipBookElementPreferencesProvider

- (id)preferencesFromContext:(id)context
{
  contextCopy = context;
  BSContinuousMachTimeNow();
  v7 = v6;
  v8 = contextCopy;
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (!v12)
    {
      [(SBSASecureFlipBookElementPreferencesProvider *)v10 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v12 = 0;
  }

  preferences = [v12 preferences];
  lastChangingElementLayoutTransition = [preferences lastChangingElementLayoutTransition];

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastChangingElementLayoutTransition, lastChangingElementLayoutTransition);
    self->_collisionPending = [(SBSAElementLayoutTransition *)self->_lastChangingElementLayoutTransition isCollisionRequired];
  }

  if ([v12 containsAnyOfSignals:1])
  {
    self->_collisionPending = 0;
  }

  v15 = [(SBSASecureFlipBookElementPreferencesProvider *)self _isTimerExpiredWithIdentifier:self->_pendingTimerIdentifier context:v12];
  if (v15)
  {
    v16 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "Re-evaluating secure flipbook element state as result of timer firing", buf, 2u);
    }

    pendingTimerIdentifier = self->_pendingTimerIdentifier;
    self->_pendingTimerIdentifier = 0;
  }

  secureFlipBookRenderingContext = [v12 secureFlipBookRenderingContext];
  activeSecureElementIdentity = [secureFlipBookRenderingContext activeSecureElementIdentity];
  preferences2 = [v12 preferences];
  v21 = objc_opt_class();
  v22 = preferences2;
  if (v21)
  {
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke;
  v36[3] = &unk_2783B9BA0;
  v37 = v12;
  selfCopy = self;
  v25 = secureFlipBookRenderingContext;
  v39 = v25;
  v41 = v7;
  v26 = activeSecureElementIdentity;
  v40 = v26;
  v27 = v12;
  v28 = [v24 copyWithBlock:v36];

  v29 = [v27 copyByUpdatingPreferences:v28];
  v35.receiver = self;
  v35.super_class = SBSASecureFlipBookElementPreferencesProvider;
  v30 = [(SBSABasePreferencesProvider *)&v35 preferencesFromContext:v29];
  v31 = objc_opt_class();
  v32 = v30;
  if (v31)
  {
    if (objc_opt_isKindOfClass())
    {
      v31 = v32;
    }

    else
    {
      v31 = 0;
    }
  }

  v33 = v31;

  return v31;
}

void __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 secureFlipBookElementPreferences];
  v5 = [*(a1 + 32) secureFlipBookElementContexts];
  v6 = [v5 firstObject];

  v7 = *(a1 + 40);
  if (v6)
  {
    if (*(v7 + 41) == 1)
    {

      v6 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    *(v7 + 41) = 1;
  }

  [*(a1 + 40) _updateSecureStateStatusBeforeAnyTransitions:*(a1 + 48) iterationStartTime:*(a1 + 64)];
  v45 = 0.0;
  if (![*(a1 + 40) _isTransitionAllowedTo:v6 givenContext:*(a1 + 48) iterationStartTime:&v45 requestRetryAfterDelay:*(a1 + 64)])
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 40);
  if ((v9[40] & 1) == 0 && v6)
  {
    [v9 _updateSecureStateStatusWithRequestedTransitionToSecureElementContext:v6 renderingContext:*(a1 + 48)];
    v10 = [SBSAElementIdentification alloc];
    v11 = [v6 clientIdentifier];
    v12 = [v6 elementIdentifier];
    v13 = [(SBSAElementIdentification *)v10 initWithClientIdentifier:v11 elementIdentifier:v12];

    v14 = [*(a1 + 32) elementContexts];
    v15 = SBSAObjectInCollectionAssociatedWithElementIdentity(v13, v14, 0);

    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_3;
    v39[3] = &unk_2783B9B50;
    v40 = v13;
    v16 = v6;
    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v41 = v16;
    v42 = v17;
    v43 = v15;
    v44 = v18;
    v19 = v15;
    v20 = v13;
    v21 = MEMORY[0x223D6F7F0](v39);

    goto LABEL_17;
  }

  if (!v9[40])
  {
    v31 = [v9 _updateSecureStateStatusWithTransitionToNilSecureElementContext];
    *(*(a1 + 40) + 41) = 0;
    if (!v8)
    {
      v21 = &__block_literal_global_214;
      if (v4)
      {
        goto LABEL_18;
      }

LABEL_24:
      v30 = [(SBSAAbstractDictionaryBackedPreferences *)SBSASecureFlipBookElementPreferences instanceWithBlock:v21];
      goto LABEL_25;
    }

    v32 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Transitioning through Empty due to previous nil secure element context.", buf, 2u);
    }

    v33 = [v3 actions];
    v20 = [v33 mutableCopy];

    v34 = [[SBSAPreferencesDidChangeAction alloc] initWithReasons:&unk_28336E688];
    [(SBSAElementIdentification *)v20 addObject:v34];

    [v3 setActions:v20];
    v21 = &__block_literal_global_214;
  }

  else
  {
LABEL_11:
    [*(a1 + 40) _fallbackUpdateSecureStateStatusForInitialTransitionsWithRenderingContext:*(a1 + 48)];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_4;
    v35[3] = &unk_2783B9B78;
    v36 = *(a1 + 56);
    v22 = *(a1 + 48);
    v23 = *(a1 + 40);
    v37 = v22;
    v38 = v23;
    v21 = MEMORY[0x223D6F7F0](v35);
    if ((BSFloatIsZero() & 1) == 0)
    {
      v24 = *(a1 + 40);
      if (!v24[8])
      {
        v25 = [v24 _startTimerForDuration:v3 preferencesMutator:v45];
        v26 = *(a1 + 40);
        v27 = *(v26 + 64);
        *(v26 + 64) = v25;

        v29 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v47 = v45;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "Starting timer to re-evaluate secure flipbook element state after: %f", buf, 0xCu);
        }
      }
    }

    v20 = v36;
  }

LABEL_17:

  if (!v4)
  {
    goto LABEL_24;
  }

LABEL_18:
  v30 = [v4 copyWithBlock:v21];

LABEL_25:
  [v3 setSecureFlipBookElementPreferences:v30];
}

void __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setActiveSecureElementIdentity:v3];
  v4 = [*(a1 + 40) requestedConfigurationName];
  [v6 setRequestedConfigurationName:v4];

  v5 = [*(a1 + 40) requestedComponentsToStates];
  [v6 setRequestedComponentsToStates:v5];

  *(*(a1 + 48) + 80) = [*(a1 + 56) interfaceOrientation];
  [v6 setOrientation:*(*(a1 + 48) + 80)];
  *(*(a1 + 48) + 88) = [*(a1 + 64) layoutDirection] == 1;
  [v6 setLayoutDirection:*(*(a1 + 48) + 88)];
  *(*(a1 + 48) + 96) = [*(a1 + 56) layoutMode];
  [v6 setActiveLayoutMode:*(*(a1 + 48) + 96)];
}

void __71__SBSASecureFlipBookElementPreferencesProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 setActiveSecureElementIdentity:v3];
  v4 = [*(a1 + 40) activeConfigurationName];
  [v6 setRequestedConfigurationName:v4];

  v5 = [*(a1 + 40) requestedComponentsToStates];
  [v6 setRequestedComponentsToStates:v5];

  [v6 setOrientation:*(*(a1 + 48) + 80)];
  [v6 setLayoutDirection:*(*(a1 + 48) + 88)];
  [v6 setActiveLayoutMode:*(*(a1 + 48) + 96)];
}

- (void)_updateSecureStateStatusBeforeAnyTransitions:(id)transitions iterationStartTime:(double)time
{
  v57 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  v7 = transitionsCopy;
  secureStateStatus = self->_secureStateStatus;
  if (secureStateStatus == 2)
  {
    if (self->_secureStateDisplayStartTime + 1.1 - time <= 0.0)
    {
      self->_secureStateDisplayStartTime = 0.0;
      self->_secureStateStatus = 3;
      log = SBLogSystemAperturePreferencesStackSecureFlipBookElements(transitionsCopy);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_secureStateStatus - 1;
        if (v21 > 2)
        {
          v22 = @"Insecure";
        }

        else
        {
          v22 = off_2783B9BC0[v21];
        }

        *buf = 138412290;
        v50 = v22;
        _os_log_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEFAULT, "Provisional MOT Timer Satisfied. (_secureStateStatus->%@)", buf, 0xCu);
      }

LABEL_31:
    }
  }

  else if (secureStateStatus == 1)
  {
    log = [transitionsCopy activeComponentsToStates];
    appliedComponentsToStates = [v7 appliedComponentsToStates];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = 72;
    obj = [(NSDictionary *)self->_pendingTransitionsOfComponentsToSecureStates allKeys];
    v10 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v35 = v7;
      v12 = *v46;
      selfCopy = self;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v46 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          v15 = [appliedComponentsToStates objectForKeyedSubscript:v14];
          v16 = [*(&self->super.super.isa + v9) objectForKeyedSubscript:v14];
          if ([v15 isEqualToString:v16])
          {
            v18 = v9;

LABEL_18:
            v23 = [*(&selfCopy->super.super.isa + v18) objectForKeyedSubscript:v14];
            [dictionary setObject:v23 forKey:v14];

            v24 = *(&selfCopy->super.super.isa + v18);
            *(&selfCopy->super.super.isa + v18) = 0;

            selfCopy->_secureStateDisplayStartTime = time;
            selfCopy->_secureStateStatus = 2;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            obj = [dictionary allKeys];
            v25 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v42;
              do
              {
                v28 = 0;
                do
                {
                  if (*v42 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v41 + 1) + 8 * v28);
                  v30 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v25);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    v31 = [dictionary objectForKeyedSubscript:v29];
                    v32 = v31;
                    v33 = selfCopy->_secureStateStatus - 1;
                    v34 = @"Insecure";
                    if (v33 <= 2)
                    {
                      v34 = off_2783B9BC0[v33];
                    }

                    *buf = 138412802;
                    v50 = v29;
                    v51 = 2112;
                    v52 = v31;
                    v53 = 2112;
                    v54 = v34;
                    _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "Secure transition detected component: %@ (->%@), starting Provisional MOT Timer. (_secureStateStatus->%@)", buf, 0x20u);
                  }

                  ++v28;
                }

                while (v26 != v28);
                v25 = [obj countByEnumeratingWithState:&v41 objects:v55 count:16];
                v26 = v25;
              }

              while (v25);
            }

            goto LABEL_29;
          }

          v17 = [log objectForKeyedSubscript:v14];
          v18 = v9;
          v19 = [*(&self->super.super.isa + v9) objectForKeyedSubscript:v14];
          v20 = [v17 isEqualToString:v19];

          if (v20)
          {
            goto LABEL_18;
          }

          self = selfCopy;
          v9 = v18;
        }

        v11 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_29:
      v7 = v35;
    }

    goto LABEL_31;
  }
}

- (void)_updateSecureStateStatusWithRequestedTransitionToSecureElementContext:(id)context renderingContext:(id)renderingContext
{
  v83 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  renderingContextCopy = renderingContext;
  componentToSecureTransitionMapping = [renderingContextCopy componentToSecureTransitionMapping];
  activeComponentsToStates = [renderingContextCopy activeComponentsToStates];
  requestedComponentsToStates = [contextCopy requestedComponentsToStates];
  v60 = requestedComponentsToStates;
  v61 = componentToSecureTransitionMapping;
  if (componentToSecureTransitionMapping)
  {
    v54 = renderingContextCopy;
    v56 = contextCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    allKeys = [activeComponentsToStates allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v71;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v71 != v15)
          {
            objc_enumerationMutation(allKeys);
          }

          v17 = *(*(&v70 + 1) + 8 * i);
          v18 = activeComponentsToStates;
          v19 = [activeComponentsToStates objectForKeyedSubscript:v17];
          v20 = [v60 objectForKeyedSubscript:v17];
          if ([(SBSASecureFlipBookElementPreferencesProvider *)self _isTransitionSecureFromState:v19 toState:v20 forComponent:v17 indefinitely:0 givenMap:v61])
          {
            [dictionary setObject:v20 forKey:v17];
          }

          activeComponentsToStates = v18;
        }

        v14 = [allKeys countByEnumeratingWithState:&v70 objects:v82 count:16];
      }

      while (v14);
    }

    v21 = activeComponentsToStates;

    allKeys2 = [dictionary allKeys];
    v23 = [allKeys2 count];

    if (v23)
    {
      v24 = [dictionary copy];
    }

    else
    {
      v24 = 0;
    }

    renderingContextCopy = v54;
    contextCopy = v56;
    activeComponentsToStates = v21;
  }

  else
  {
    dictionary = SBLogSystemAperturePreferencesStackSecureFlipBookElements(requestedComponentsToStates);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, dictionary, OS_LOG_TYPE_INFO, "Secure transition map is nil; cannot identify any possibly secure transitions", buf, 2u);
    }

    v24 = 0;
  }

  secureStateStatus = self->_secureStateStatus;
  if (secureStateStatus > 1)
  {
    if (secureStateStatus == 2)
    {
      if (![v24 count])
      {
        v26 = 262;
        goto LABEL_56;
      }

LABEL_52:
      v51 = v24;
      pendingTransitionsOfComponentsToSecureStates = self->_pendingTransitionsOfComponentsToSecureStates;
      self->_pendingTransitionsOfComponentsToSecureStates = v51;
LABEL_53:

      goto LABEL_54;
    }

    if (secureStateStatus == 3 && ![v24 count])
    {
      v27 = self->_pendingTransitionsOfComponentsToSecureStates;
      self->_pendingTransitionsOfComponentsToSecureStates = 0;

      self->_secureStateStatus = 0;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      pendingTransitionsOfComponentsToSecureStates = [v24 allKeys];
      v29 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = v24;
        v57 = contextCopy;
        v52 = activeComponentsToStates;
        v32 = *v63;
        do
        {
          v33 = 0;
          do
          {
            if (*v63 != v32)
            {
              objc_enumerationMutation(pendingTransitionsOfComponentsToSecureStates);
            }

            v34 = *(*(&v62 + 1) + 8 * v33);
            v35 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v29);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v31 objectForKey:v34];
              v37 = v36;
              v38 = self->_secureStateStatus - 1;
              v39 = @"Insecure";
              if (v38 <= 2)
              {
                v39 = off_2783B9BC0[v38];
              }

              *buf = 138412802;
              v76 = v34;
              v77 = 2112;
              v78 = v36;
              v79 = 2112;
              v80 = v39;
              _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "Insecure transition requested component %@ (->%@). (_secureStateStatus->%@)", buf, 0x20u);
            }

            ++v33;
          }

          while (v30 != v33);
          v29 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v62 objects:v74 count:16];
          v30 = v29;
        }

        while (v29);
        activeComponentsToStates = v52;
        contextCopy = v57;
        v24 = v31;
      }

      goto LABEL_53;
    }
  }

  else if (secureStateStatus)
  {
    if (secureStateStatus == 1)
    {
      if (![v24 count])
      {
        v26 = 255;
LABEL_56:
        [(SBSASecureFlipBookElementPreferencesProvider *)a2 _updateSecureStateStatusWithRequestedTransitionToSecureElementContext:v26 renderingContext:?];
        goto LABEL_52;
      }

      goto LABEL_52;
    }
  }

  else if ([v24 count])
  {
    objc_storeStrong(&self->_pendingTransitionsOfComponentsToSecureStates, v24);
    self->_secureStateStatus = 1;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    pendingTransitionsOfComponentsToSecureStates = [v24 allKeys];
    v40 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v66 objects:v81 count:16];
    if (v40)
    {
      v41 = v40;
      v55 = renderingContextCopy;
      v58 = contextCopy;
      v53 = activeComponentsToStates;
      v42 = *v67;
      do
      {
        v43 = 0;
        do
        {
          if (*v67 != v42)
          {
            objc_enumerationMutation(pendingTransitionsOfComponentsToSecureStates);
          }

          v44 = *(*(&v66 + 1) + 8 * v43);
          v45 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v40);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v24;
            v47 = [v24 objectForKey:v44];
            v48 = v47;
            v49 = self->_secureStateStatus - 1;
            v50 = @"Insecure";
            if (v49 <= 2)
            {
              v50 = off_2783B9BC0[v49];
            }

            *buf = 138412802;
            v76 = v44;
            v77 = 2112;
            v78 = v47;
            v79 = 2112;
            v80 = v50;
            _os_log_impl(&dword_21ED4E000, v45, OS_LOG_TYPE_DEFAULT, "Secure transition requested component %@ (->%@). (_secureStateStatus->%@)", buf, 0x20u);

            v24 = v46;
          }

          ++v43;
        }

        while (v41 != v43);
        v40 = [pendingTransitionsOfComponentsToSecureStates countByEnumeratingWithState:&v66 objects:v81 count:16];
        v41 = v40;
      }

      while (v40);
      activeComponentsToStates = v53;
      renderingContextCopy = v55;
      contextCopy = v58;
    }

    goto LABEL_53;
  }

LABEL_54:
}

- (void)_fallbackUpdateSecureStateStatusForInitialTransitionsWithRenderingContext:(id)context
{
  v50 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  componentToSecureTransitionMapping = [contextCopy componentToSecureTransitionMapping];
  activeComponentsToStates = [contextCopy activeComponentsToStates];
  appliedComponentsToStates = [contextCopy appliedComponentsToStates];
  v33 = componentToSecureTransitionMapping;
  if (componentToSecureTransitionMapping)
  {
    v29 = contextCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    allKeys = [appliedComponentsToStates allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [activeComponentsToStates objectForKeyedSubscript:v13];
          v15 = [appliedComponentsToStates objectForKeyedSubscript:v13];
          if ([(SBSASecureFlipBookElementPreferencesProvider *)self _isTransitionSecureFromState:v14 toState:v15 forComponent:v13 indefinitely:0 givenMap:v33])
          {
            [dictionary setObject:v15 forKey:v13];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v10);
    }

    allKeys2 = [dictionary allKeys];
    v17 = [allKeys2 count];

    if (v17)
    {
      obj = [dictionary copy];
    }

    else
    {
      obj = 0;
    }

    contextCopy = v29;
  }

  else
  {
    obj = 0;
  }

  if (!self->_secureStateStatus && [obj count])
  {
    v30 = contextCopy;
    objc_storeStrong(&self->_pendingTransitionsOfComponentsToSecureStates, obj);
    self->_secureStateStatus = 1;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    allKeys3 = [obj allKeys];
    v19 = [allKeys3 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        v22 = 0;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(allKeys3);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          v24 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v19);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [obj objectForKey:v23];
            v26 = v25;
            v27 = self->_secureStateStatus - 1;
            v28 = @"Insecure";
            if (v27 <= 2)
            {
              v28 = off_2783B9BC0[v27];
            }

            *buf = 138412802;
            v43 = v23;
            v44 = 2112;
            v45 = v25;
            v46 = 2112;
            v47 = v28;
            _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Secure transition already applied for component %@ (->%@). (_secureStateStatus->%@)", buf, 0x20u);
          }

          ++v22;
        }

        while (v20 != v22);
        v19 = [allKeys3 countByEnumeratingWithState:&v34 objects:v48 count:16];
        v20 = v19;
      }

      while (v19);
    }

    contextCopy = v30;
  }
}

- (void)_updateSecureStateStatusWithTransitionToNilSecureElementContext
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_secureStateStatus)
  {
    self->_secureStateStatus = 0;
    v3 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = self->_secureStateStatus - 1;
      if (v4 > 2)
      {
        v5 = @"Insecure";
      }

      else
      {
        v5 = off_2783B9BC0[v4];
      }

      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "Insecure transition requested (remove secure element context). (_secureStateStatus->%@)", &v7, 0xCu);
    }
  }

  self->_secureStateDisplayStartTime = 0.0;
  pendingTransitionsOfComponentsToSecureStates = self->_pendingTransitionsOfComponentsToSecureStates;
  self->_pendingTransitionsOfComponentsToSecureStates = 0;
}

- (BOOL)_isTransitionAllowedTo:(id)to givenContext:(id)context iterationStartTime:(double)time requestRetryAfterDelay:(double *)delay
{
  v52 = *MEMORY[0x277D85DE8];
  toCopy = to;
  contextCopy = context;
  activeSecureElementIdentity = [contextCopy activeSecureElementIdentity];
  v12 = activeSecureElementIdentity;
  if (toCopy && activeSecureElementIdentity)
  {
    v13 = SAElementIdentityEqualToIdentity();
    if ((v13 & 1) == 0)
    {
      self->_requiresTransitionThroughEmpty = 1;
      componentToSecureTransitionMapping = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v13);
      if (os_log_type_enabled(componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v15 = "Transition not allowed. Existing rendered secure element different than requested, deferring transition";
LABEL_10:
        _os_log_impl(&dword_21ED4E000, componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  else if (!activeSecureElementIdentity)
  {
    goto LABEL_15;
  }

  transitionInProgress = [contextCopy transitionInProgress];
  if (!transitionInProgress)
  {
    if (SAElementIdentityEqualToIdentity())
    {
      requestedConfigurationName = [toCopy requestedConfigurationName];
      activeConfigurationName = [contextCopy activeConfigurationName];
      v20 = [requestedConfigurationName isEqualToString:activeConfigurationName];

      if ((v20 & 1) == 0)
      {
        componentToSecureTransitionMapping = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v21);
        if (!os_log_type_enabled(componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_11;
        }

        *buf = 0;
        v15 = "Transition not allowed. Existing secure element requesting transition to new configuration while registered";
        goto LABEL_10;
      }
    }

LABEL_15:
    secureStateStatus = self->_secureStateStatus;
    if (secureStateStatus)
    {
      v23 = secureStateStatus == 3;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      v17 = 1;
      goto LABEL_21;
    }

    if (!toCopy)
    {
      v17 = 0;
      goto LABEL_21;
    }

    componentToSecureTransitionMapping = [contextCopy componentToSecureTransitionMapping];
    activeComponentsToStates = [contextCopy activeComponentsToStates];
    [toCopy requestedComponentsToStates];
    v44 = v43 = activeComponentsToStates;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    allKeys = [activeComponentsToStates allKeys];
    v27 = [allKeys countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      delayCopy = delay;
      selfCopy = self;
      v30 = componentToSecureTransitionMapping;
      v40 = v12;
      v41 = contextCopy;
      v42 = toCopy;
      v31 = 0;
      v32 = *v46;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v46 != v32)
          {
            objc_enumerationMutation(allKeys);
          }

          v34 = *(*(&v45 + 1) + 8 * i);
          v35 = [v43 objectForKeyedSubscript:v34];
          v36 = [v44 objectForKeyedSubscript:v34];
          v31 |= [(SBSASecureFlipBookElementPreferencesProvider *)selfCopy _isTransitionSecureFromState:v35 toState:v36 forComponent:v34 indefinitely:1 givenMap:v30];
        }

        v28 = [allKeys countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v28);

      contextCopy = v41;
      toCopy = v42;
      delay = delayCopy;
      v12 = v40;
      componentToSecureTransitionMapping = v30;
      self = selfCopy;
      if (v31)
      {
        v17 = 1;
LABEL_43:

        goto LABEL_12;
      }
    }

    else
    {
    }

    if (self->_secureStateStatus == 2)
    {
      if (delay)
      {
        *delay = 1.1;
      }

      v38 = SBLogSystemAperturePreferencesStackSecureFlipBookElements(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v50 = 0x3FF199999999999ALL;
        _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "Transition not allowed. Transition would result in insecure state before MOT is satisfied (MOT timer pending), deferring transition with retry interval %f", buf, 0xCu);
      }

      v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_43;
  }

  componentToSecureTransitionMapping = SBLogSystemAperturePreferencesStackSecureFlipBookElements(transitionInProgress);
  if (os_log_type_enabled(componentToSecureTransitionMapping, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v15 = "Transition not allowed. Existing secure element transition in progress, deferring transition";
    goto LABEL_10;
  }

LABEL_11:
  v17 = 0;
LABEL_12:

LABEL_21:
  return v17;
}

- (BOOL)_isTransitionSecureFromState:(id)state toState:(id)toState forComponent:(id)component indefinitely:(BOOL)indefinitely givenMap:(id)map
{
  indefinitelyCopy = indefinitely;
  componentCopy = component;
  mapCopy = map;
  v13 = MEMORY[0x277CCACA8];
  toStateCopy = toState;
  state = [v13 stringWithFormat:@"presented.%@", state];
  toStateCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"presented.%@", toStateCopy];

  v17 = [mapCopy objectForKeyedSubscript:componentCopy];
  v18 = [v17 objectForKeyedSubscript:state];

  v19 = objc_msgSend_containsObject_(v18);
  if (v19)
  {
    v20 = !indefinitelyCopy;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = [mapCopy objectForKeyedSubscript:componentCopy];
    v22 = [v21 objectForKeyedSubscript:toStateCopy];

    LOBYTE(v19) = objc_msgSend_containsObject_(v22);
  }

  return v19;
}

- (BOOL)_isTimerExpiredWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  elapsedTimerDescriptions = [context elapsedTimerDescriptions];
  if ([elapsedTimerDescriptions count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__SBSASecureFlipBookElementPreferencesProvider__isTimerExpiredWithIdentifier_context___block_invoke;
    v9[3] = &unk_2783B2950;
    v10 = identifierCopy;
    v7 = [elapsedTimerDescriptions indexOfObjectPassingTest:v9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __86__SBSASecureFlipBookElementPreferencesProvider__isTimerExpiredWithIdentifier_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (id)_startTimerForDuration:(double)duration preferencesMutator:(id)mutator
{
  mutatorCopy = mutator;
  v6 = [[SBSATimerDescription alloc] initWithTimeInterval:duration];
  timerDescriptionIdentifier = [(SBSATimerDescription *)v6 timerDescriptionIdentifier];
  timerDescriptions = [mutatorCopy timerDescriptions];
  if (timerDescriptions)
  {
    timerDescriptions2 = [mutatorCopy timerDescriptions];
    v10 = [timerDescriptions2 mutableCopy];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  [v10 addObject:v6];
  [mutatorCopy setTimerDescriptions:v10];

  return timerDescriptionIdentifier;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSASecureFlipBookElementPreferencesProvider.m" lineNumber:71 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)_updateSecureStateStatusWithRequestedTransitionToSecureElementContext:(uint64_t)a3 renderingContext:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSASecureFlipBookElementPreferencesProvider.m" lineNumber:a3 description:@"Can't transition to insecure states while pending MOT"];
}

@end