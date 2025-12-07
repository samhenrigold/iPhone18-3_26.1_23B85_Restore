@interface SBModalViewControllerStack
- (NSArray)viewControllers;
- (SBModalViewControllerStack)initWithPresentingViewController:(id)controller;
- (SBModalViewControllerStackDelegate)delegate;
- (id)_popNextPendingTransition;
- (void)_addPendingTransition:(id)transition;
- (void)_addViewController:(id)controller completion:(id)completion;
- (void)_noteDidDismissViewController:(id)controller;
- (void)_noteDidPresentViewController:(id)controller;
- (void)_noteWillDismissViewController:(id)controller animated:(BOOL)animated;
- (void)_noteWillPresentViewController:(id)controller;
- (void)_performPendingTransitionIfNecessary;
- (void)_queuePendingTransition:(id)transition;
- (void)_removePendingTransition:(id)transition forSuccess:(BOOL)success;
- (void)_removeViewController:(id)controller completion:(id)completion;
- (void)_setCurrentTransition:(id)transition;
- (void)addViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)removeViewControllerAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation SBModalViewControllerStack

- (SBModalViewControllerStack)initWithPresentingViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [SBModalViewControllerStack initWithPresentingViewController:];
  }

  v13.receiver = self;
  v13.super_class = SBModalViewControllerStack;
  v6 = [(SBModalViewControllerStack *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentingViewController, controller);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingTransitions = v7->_pendingTransitions;
    v7->_pendingTransitions = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    viewControllerStack = v7->_viewControllerStack;
    v7->_viewControllerStack = v10;
  }

  return v7;
}

- (NSArray)viewControllers
{
  v2 = [(NSMutableArray *)self->_viewControllerStack copy];

  return v2;
}

- (void)removeViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  topViewController = [(SBModalViewControllerStack *)self topViewController];
  [(SBModalViewControllerStack *)self removeViewController:topViewController animated:animatedCopy completion:completionCopy];
}

- (void)_addPendingTransition:(id)transition
{
  if (transition)
  {
    [(NSMutableArray *)self->_pendingTransitions addObject:?];
  }
}

- (void)_removePendingTransition:(id)transition forSuccess:(BOOL)success
{
  successCopy = success;
  transitionCopy = transition;
  v7 = transitionCopy;
  if (transitionCopy)
  {
    v8 = transitionCopy[4];
    v10 = v7;
    if (v8)
    {
      (*(v8 + 16))(v8, successCopy);
      v9 = v10[4];
      v10[4] = 0;
    }

    [(NSMutableArray *)self->_pendingTransitions removeObject:v10];
    v7 = v10;
  }
}

- (id)_popNextPendingTransition
{
  firstObject = [(NSMutableArray *)self->_pendingTransitions firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_pendingTransitions removeObjectAtIndex:0];
  }

  return firstObject;
}

- (void)_setCurrentTransition:(id)transition
{
  v12 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  currentTransition = self->_currentTransition;
  p_currentTransition = &self->_currentTransition;
  if (currentTransition != transitionCopy)
  {
    objc_storeStrong(p_currentTransition, transition);
    v9 = SBLogAlertItemStack(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = transitionCopy;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_INFO, "Set new current transition: %@", &v10, 0xCu);
    }
  }
}

- (void)_queuePendingTransition:(id)transition
{
  v33 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v6 = transitionCopy;
  if (!transitionCopy)
  {
    v8 = 0;
LABEL_4:
    [(NSMutableArray *)self->_viewControllerStack removeObject:v8];
    v7 = [(NSMutableArray *)self->_viewControllerStack addObject:v8];
    goto LABEL_8;
  }

  v7 = *(transitionCopy + 1);
  v8 = v7;
  v9 = v6[2];
  if (v9 != 1)
  {
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

  if ((objc_msgSend_containsObject_(self->_viewControllerStack) & 1) == 0)
  {
    [(SBModalViewControllerStack *)a2 _queuePendingTransition:v8];
  }

  v7 = [(NSMutableArray *)self->_viewControllerStack removeObject:v8];
LABEL_8:
  currentTransition = self->_currentTransition;
  v11 = SBLogAlertItemStack(v7);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!currentTransition)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "No current transition is on-going, but pending it for immediate execution.", buf, 2u);
    }

    if ([(NSMutableArray *)self->_pendingTransitions count])
    {
      [SBModalViewControllerStack _queuePendingTransition:];
    }

    goto LABEL_37;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_INFO, "We have a current transition on-going; attempting to pend the next operation.", buf, 2u);
  }

  if (!v6 || v6[2] != 1)
  {
LABEL_37:
    [(SBModalViewControllerStack *)self _addPendingTransition:v6, v23];
    goto LABEL_38;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [(NSMutableArray *)self->_pendingTransitions copy];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v14)
  {

    goto LABEL_37;
  }

  v16 = v14;
  v17 = *v25;
  v18 = 1;
  *&v15 = 138412546;
  v23 = v15;
  do
  {
    v19 = 0;
    do
    {
      if (*v25 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v24 + 1) + 8 * v19);
      if (v20)
      {
        v21 = *(v20 + 8);
      }

      else
      {
        v21 = 0;
      }

      if (v21 == v6[1] && (!v20 || !*(v20 + 16)))
      {
        v22 = SBLogAlertItemStack(v14);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = v23;
          v29 = v20;
          v30 = 2112;
          v31 = v6;
          _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_INFO, "Found a previously queued activation for this view controller (%@), and this is a dismissal (%@), so removing both from the pending queue.", buf, 0x16u);
        }

        [(SBModalViewControllerStack *)self _removePendingTransition:v20 forSuccess:1];
        [_SBModalViewControllerStackTransition invokeCompletionIfNecessaryWithResult:v6];
        v18 = 0;
      }

      ++v19;
    }

    while (v16 != v19);
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    v16 = v14;
  }

  while (v14);

  if (v18)
  {
    goto LABEL_37;
  }

LABEL_38:
}

- (void)_performPendingTransitionIfNecessary
{
  lastObject = [*self lastObject];
  v6 = [_SBModalViewControllerStackTransition transitionForViewController:lastObject operation:0 animated:*(a2 + 24) completion:0];

  [a3 _queuePendingTransition:v6];
}

uint64_t __66__SBModalViewControllerStack__performPendingTransitionIfNecessary__block_invoke_39(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogAlertItemStack(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Finished processing add view controller: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

uint64_t __66__SBModalViewControllerStack__performPendingTransitionIfNecessary__block_invoke_40(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogAlertItemStack(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "Finished processing remove view controller: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_addViewController:(id)controller completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy)
  {
    if (controllerCopy[2])
    {
      [SBModalViewControllerStack _addViewController:completion:];
    }

    selfCopy = self;
    v9 = controllerCopy[1];
  }

  else
  {
    selfCopy2 = self;
    v9 = 0;
  }

  v10 = v9;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__SBModalViewControllerStack__addViewController_completion___block_invoke;
  v25[3] = &unk_2783A8EB0;
  selfCopy3 = self;
  v26 = selfCopy3;
  v12 = v10;
  v27 = v12;
  v13 = controllerCopy;
  v28 = v13;
  v14 = completionCopy;
  v29 = v14;
  v15 = MEMORY[0x223D6F7F0](v25);
  presentedViewController = [(UIViewController *)selfCopy3->_presentingViewController presentedViewController];
  v17 = presentedViewController;
  if (presentedViewController)
  {
    v18 = SBLogAlertItemStack(presentedViewController);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17 == v12)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Current view-controller is already presented, so we have nothing to do.", buf, 2u);
      }

      if (v14)
      {
        v14[2](v14);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 138412546;
        v31 = v17;
        v32 = 2112;
        v33 = v12;
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_INFO, "Need to dismiss current presented view controller (%@) in order to present ourself (%@)", buf, 0x16u);
      }

      v21 = [_SBModalViewControllerStackTransition transitionForViewController:v17 operation:1uLL animated:0 completion:0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __60__SBModalViewControllerStack__addViewController_completion___block_invoke_45;
      v23[3] = &unk_2783A9348;
      v24 = v15;
      [(SBModalViewControllerStack *)selfCopy3 _removeViewController:v21 completion:v23];
    }
  }

  else
  {
    v20 = SBLogAlertItemStack(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_INFO, "No current presented view controller, presenting straight away.", buf, 2u);
    }

    v15[2](v15);
  }
}

void __60__SBModalViewControllerStack__addViewController_completion___block_invoke_44(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = *(a1 + 32);
  v4 = SBLogAlertItemStack(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Really finished presenting view controller: %@", &v7, 0xCu);
  }

  [v3 _noteDidPresentViewController:*(a1 + 40)];
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

- (void)_removeViewController:(id)controller completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  if (controllerCopy)
  {
    if (controllerCopy[2] != 1)
    {
      [SBModalViewControllerStack _removeViewController:completion:];
    }

    v8 = controllerCopy[1];
  }

  else
  {
    [SBModalViewControllerStack _removeViewController:completion:];
    v8 = 0;
  }

  v9 = v8;
  presentedViewController = [(UIViewController *)self->_presentingViewController presentedViewController];

  v12 = SBLogAlertItemStack(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (presentedViewController == v9)
  {
    if (v13)
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "Really begin dismissing topmost view controller: %@", buf, 0xCu);
    }

    if (controllerCopy)
    {
      [(SBModalViewControllerStack *)self _noteWillDismissViewController:v9 animated:*(controllerCopy + 24)];
      v14 = *(controllerCopy + 24);
    }

    else
    {
      [(SBModalViewControllerStack *)self _noteWillDismissViewController:v9 animated:0];
      v14 = 0;
    }

    presentingViewController = self->_presentingViewController;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SBModalViewControllerStack__removeViewController_completion___block_invoke;
    v16[3] = &unk_2783AA1E8;
    v17 = v9;
    selfCopy = self;
    v19 = completionCopy;
    [(UIViewController *)presentingViewController dismissViewControllerAnimated:v14 & 1 completion:v16];
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "There is no presented view-controller to dismiss.", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __63__SBModalViewControllerStack__removeViewController_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = BSDispatchQueueAssertMain();
  v4 = SBLogAlertItemStack(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Really finished dismissing topmost view controller: %@", &v7, 0xCu);
  }

  [*(a1 + 40) _noteDidDismissViewController:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_noteWillPresentViewController:(id)controller
{
  v10 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = BSDispatchQueueAssertMain();
  v6 = SBLogAlertItemStack(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = controllerCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Calling out to delegate for willPresent: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self willPresentViewController:controllerCopy];
  }
}

- (void)_noteDidPresentViewController:(id)controller
{
  v10 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = BSDispatchQueueAssertMain();
  v6 = SBLogAlertItemStack(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = controllerCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Calling out to delegate for didPresent: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self didPresentViewController:controllerCopy];
  }
}

- (void)_noteWillDismissViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = BSDispatchQueueAssertMain();
  v8 = SBLogAlertItemStack(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = controllerCopy;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_INFO, "Calling out to delegate for willDismiss: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self willDismissViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)_noteDidDismissViewController:(id)controller
{
  v10 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v5 = BSDispatchQueueAssertMain();
  v6 = SBLogAlertItemStack(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = controllerCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "Calling out to delegate for didDismiss: %@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained modalViewControllerStack:self didDismissViewController:controllerCopy];
  }
}

- (SBModalViewControllerStackDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  OUTLINED_FUNCTION_3_31();
  v10 = v9;
  v11 = v7;
  v12 = BSDispatchQueueAssertMain();
  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v8 object:v5 file:@"SBModalViewControllerStack.m" lineNumber:102 description:@"View controller to add to the stack must be non-nil."];
  }

  v13 = SBLogAlertItemStack(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_47();
    OUTLINED_FUNCTION_4_15(&dword_21ED4E000, v14, v15, "Adding view controller to pending transition list for presentation (animated? %d): %@", v16, v17, v18, v19);
  }

  v20 = [_SBModalViewControllerStackTransition transitionForViewController:v10 operation:0 animated:v6 completion:v11];

  [v5 _queuePendingTransition:v20];
  [v5 _performPendingTransitionIfNecessary];
}

- (void)removeViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  OUTLINED_FUNCTION_3_31();
  v10 = v9;
  v11 = v7;
  v12 = BSDispatchQueueAssertMain();
  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:v8 object:v5 file:@"SBModalViewControllerStack.m" lineNumber:112 description:@"View controller to remove from the stack must be non-nil."];
  }

  v13 = SBLogAlertItemStack(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_47();
    OUTLINED_FUNCTION_4_15(&dword_21ED4E000, v14, v15, "Adding view controller to pending transition list for dismissal (animated? %d): %@", v16, v17, v18, v19);
  }

  v20 = [_SBModalViewControllerStackTransition transitionForViewController:v10 operation:1uLL animated:v6 completion:v11];

  [v5 _queuePendingTransition:v20];
  [v5 _performPendingTransitionIfNecessary];
}

void __66__SBModalViewControllerStack__performPendingTransitionIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  BSDispatchQueueAssertMain();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3;
  [_SBModalViewControllerStackTransition invokeCompletionIfNecessaryWithResult:v4];
  [v5 _setCurrentTransition:0];
  [v5 _performPendingTransitionIfNecessary];
}

void __60__SBModalViewControllerStack__addViewController_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = *(a1 + 32);
  v4 = SBLogAlertItemStack(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = v3[2];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_INFO, "Really begin presenting view controller: %@ (presentingVC = %@)", buf, 0x16u);
  }

  [v3 _noteWillPresentViewController:*(a1 + 40)];
  v7 = v3[2];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    v10 = *(v8 + 24);
  }

  else
  {
    v10 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SBModalViewControllerStack__addViewController_completion___block_invoke_44;
  v11[3] = &unk_2783AA1E8;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  [v7 presentViewController:v9 animated:v10 & 1 completion:v11];
}

- (void)initWithPresentingViewController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"viewController" object:? file:? lineNumber:? description:?];
}

- (void)_queuePendingTransition:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBModalViewControllerStack.m" lineNumber:168 description:{@"View controller (%@) can't be removed from the modal stack when it doesn't already exist.", a3}];
}

- (void)_queuePendingTransition:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_addViewController:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_removeViewController:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end