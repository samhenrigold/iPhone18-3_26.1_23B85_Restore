@interface SBStartupTransitionController
- (SBStartupTransitionController)initWithInitialRestartState:(id)state;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)initializeAndRunStartupTransition:(id)transition;
- (void)transactionDidBegin:(id)begin;
- (void)transactionDidComplete:(id)complete;
@end

@implementation SBStartupTransitionController

- (SBStartupTransitionController)initWithInitialRestartState:(id)state
{
  v19 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v16.receiver = self;
  v16.super_class = SBStartupTransitionController;
  v6 = [(SBStartupTransitionController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v8 = SBLogWorkspace(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = stateCopy;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Startup transition controller initialized with initial state: %@", buf, 0xCu);
    }

    objc_storeStrong(&v7->_initialRestartState, state);
    v9 = [[SBStartupTransitionFactory alloc] initWithInitialRestartState:v7->_initialRestartState];
    transitionFactory = v7->_transitionFactory;
    v7->_transitionFactory = v9;

    v11 = [SBStartupTransitionContextPersistence alloc];
    bootDefaults = [(SBInitialRestartState *)v7->_initialRestartState bootDefaults];
    v13 = [(SBStartupTransitionContextPersistence *)v11 initWithBootDefaults:bootDefaults loginSession:[(SBInitialRestartState *)v7->_initialRestartState isLoginSession]];
    transitionContextPersistence = v7->_transitionContextPersistence;
    v7->_transitionContextPersistence = v13;
  }

  return v7;
}

- (void)initializeAndRunStartupTransition:(id)transition
{
  v54 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  kdebug_trace();
  BSDispatchQueueAssertMain();
  if (self->_ranOnce)
  {
    [SBStartupTransitionController initializeAndRunStartupTransition:];
  }

  self->_ranOnce = 1;
  readTransitionContext = [(SBStartupTransitionContextPersistence *)self->_transitionContextPersistence readTransitionContext];
  v4 = readTransitionContext;
  if ([readTransitionContext hasUserSwitchOverlayMismatch])
  {
    overlay = [readTransitionContext overlay];
    v6 = [MEMORY[0x277CF0B70] settingsWithDuration:0.5];
    [overlay dismissWithAnimation:v6];

    v4 = readTransitionContext;
  }

  v45 = 0;
  v7 = [(SBStartupTransitionFactory *)self->_transitionFactory transitionForContext:v4 outDestination:&v45];
  transition = self->_transition;
  self->_transition = v7;

  if (!self->_transition)
  {
    [SBStartupTransitionController initializeAndRunStartupTransition:];
  }

  objc_initWeak(&location, self);
  v9 = self->_transition;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke;
  v42[3] = &unk_2783B59B8;
  objc_copyWeak(&v43, &location);
  v42[4] = self;
  [(SBStartupTransition *)v9 registerBlockObserver:v42];
  dismissActions = [MEMORY[0x277CF05E8] dismissActions];
  renderOverlayDismissActions = self->_renderOverlayDismissActions;
  self->_renderOverlayDismissActions = dismissActions;

  v12 = [(NSSet *)self->_renderOverlayDismissActions count];
  if (v12 >= 2)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = self->_renderOverlayDismissActions;
    v15 = [(NSSet *)v14 countByEnumeratingWithState:&v38 objects:v53 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          overlayDescriptor = [v19 overlayDescriptor];
          isInterstitial = [overlayDescriptor isInterstitial];

          if (isInterstitial)
          {
            [v13 addObject:v19];
          }

          else
          {
            v16 = 1;
          }
        }

        v15 = [(NSSet *)v14 countByEnumeratingWithState:&v38 objects:v53 count:16];
      }

      while (v15);

      if ((v16 & 1) == 0 || ![v13 count])
      {
        goto LABEL_29;
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = v13;
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v52 count:16];
      if (v23)
      {
        v24 = *v35;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v35 != v24)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v34 + 1) + 8 * j) dismiss];
          }

          v23 = [v22 countByEnumeratingWithState:&v34 objects:v52 count:16];
        }

        while (v23);
      }

      v14 = [MEMORY[0x277CBEB58] setWithSet:self->_renderOverlayDismissActions];
      [(NSSet *)v14 minusSet:v22];
      v26 = [MEMORY[0x277CBEB98] setWithSet:v14];
      v27 = self->_renderOverlayDismissActions;
      self->_renderOverlayDismissActions = v26;
    }

LABEL_29:
  }

  if (v32)
  {
    v12 = (v32)[2](v32, self->_transitionObserver, self->_transition);
  }

  v28 = SBLogWorkspace(v12);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = NSStringFromStartupTransitionDestination(v45);
    v30 = self->_transition;
    *buf = 138543874;
    v47 = v29;
    v48 = 2114;
    v49 = v30;
    v50 = 2114;
    v51 = readTransitionContext;
    _os_log_impl(&dword_21ED4E000, v28, OS_LOG_TYPE_DEFAULT, "Startup transition destination: %{public}@, with transition: %{public}@ (context=%{public}@).", buf, 0x20u);
  }

  [(SBStartupTransition *)self->_transition begin];
  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke_2;
  v12[3] = &unk_2783B5990;
  v8 = WeakRetained;
  v13 = v8;
  [v7 addTransactionDidBeginBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SBStartupTransitionController_initializeAndRunStartupTransition___block_invoke_3;
  v10[3] = &unk_2783B5990;
  v11 = v8;
  v9 = v8;
  [v7 addTransactionDidCompleteBlock:v10];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBStartupTransitionController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBStartupTransitionController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBStartupTransitionController *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBStartupTransitionController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v5 = succinctDescriptionBuilder;
  v10 = v5;
  selfCopy = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

- (void)transactionDidBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (!beginCopy)
  {
    [SBStartupTransitionController transactionDidBegin:];
    beginCopy = 0;
  }

  if (self->_transition != beginCopy)
  {
    [SBStartupTransitionController transactionDidBegin:];
  }

  [(SBStartupTransitionContextPersistence *)self->_transitionContextPersistence saveContext:0];
}

- (void)transactionDidComplete:(id)complete
{
  completeCopy = complete;
  v5 = completeCopy;
  if (!completeCopy)
  {
    [SBStartupTransitionController transactionDidComplete:];
  }

  if (self->_transition != v5)
  {
    [SBStartupTransitionController transactionDidComplete:];
  }

  v6 = SBLogWorkspace(completeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Startup transition completed.", buf, 2u);
  }

  transition = self->_transition;
  self->_transition = 0;

  transitionObserver = self->_transitionObserver;
  self->_transitionObserver = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SBStartupTransitionController_transactionDidComplete___block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__SBStartupTransitionController_transactionDidComplete___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D76620];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__SBStartupTransitionController_transactionDidComplete___block_invoke_2;
  v3[3] = &unk_2783A8C18;
  v3[4] = *(a1 + 32);
  return [v1 _performBlockAfterCATransactionCommits:v3];
}

uint64_t __56__SBStartupTransitionController_transactionDidComplete___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v1 = *(*(a1 + 32) + 56);
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    v5 = *MEMORY[0x277CDA7B8];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 overlayDescriptor];
        v9 = [v8 isInterstitial];

        v10 = MEMORY[0x277CF0B70];
        if (v9)
        {
          v11 = [MEMORY[0x277CD9EF8] functionWithName:v5];
          v12 = [v10 settingsWithDuration:v11 timingFunction:0.75];
          [v7 dismissWithAnimation:v12];
        }

        else
        {
          v11 = [MEMORY[0x277CF0B70] settingsWithDuration:1.0];
          [v7 dismissWithAnimation:v11];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  return kdebug_trace();
}

- (void)initializeAndRunStartupTransition:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initializeAndRunStartupTransition:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transactionDidBegin:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transition" object:? file:? lineNumber:? description:?];
}

- (void)transactionDidBegin:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)transactionDidComplete:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"transition" object:? file:? lineNumber:? description:?];
}

- (void)transactionDidComplete:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end