@interface QLInteractiveTransitionController
- (void)_performForcedDismissal;
- (void)setCompleteProgress:(double)progress;
- (void)startInteractiveTransition:(id)transition;
- (void)updateTransitionWithProgress:(double)progress isFinal:(BOOL)final;
@end

@implementation QLInteractiveTransitionController

- (void)startInteractiveTransition:(id)transition
{
  [(QLTransitionController *)self setUpWithTransitionContext:transition completionHandler:0];
  [(QLInteractiveTransitionController *)self setCompleteProgress:0.0];
  animatedController = [(QLTransitionController *)self animatedController];
  transitioningView = [animatedController transitioningView];
  [transitioningView frame];
  self->_initialTransitioningViewWidth = CGRectGetWidth(v7);
}

- (void)setCompleteProgress:(double)progress
{
  v3 = fmax(progress, 0.0);
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  self->_completeProgress = v3;
  v4 = -(v3 * (v3 + -2.0));
  transitionContext = [(QLTransitionController *)self transitionContext];
  [transitionContext updateInteractiveTransition:v4];
}

- (void)updateTransitionWithProgress:(double)progress isFinal:(BOOL)final
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = 0.999;
  if (final)
  {
    v4 = 1.0;
  }

  if (v4 >= progress)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = v4;
  }

  v6 = MEMORY[0x277D43EF8];
  v7 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v7 = *v6;
  }

  v8 = fmax(progressCopy, 0.0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
    v10 = NSStringFromBOOL();
    *buf = 134218242;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_INFO, "[QLInteractiveTransitionController updateTransitionWithProgress:%f isFinal:%@] #AppearanceTransition", buf, 0x16u);
  }

  QLRunInMainThread();
}

id __74__QLInteractiveTransitionController_updateTransitionWithProgress_isFinal___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCompleteProgress:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 104);
  v4.receiver = *(a1 + 32);
  v4.super_class = QLInteractiveTransitionController;
  return objc_msgSendSuper2(&v4, sel_updateTransitionWithProgress_, v2);
}

void __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) hasPerformedTransition] & 1) == 0)
  {
    [*(a1 + 32) setHasPerformedTransition:1];
    v2 = MEMORY[0x277D43EF8];
    v3 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = NSStringFromBOOL();
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_INFO, "[QLInteractiveTransitionController completeTransition didComplete:%@] #AppearanceTransition", buf, 0xCu);
    }

    [*(a1 + 32) setDuration:*(a1 + 40)];
    v6 = *(a1 + 40);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke_1;
    v12[3] = &unk_278B57340;
    v13 = *(a1 + 32);
    v14 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke_3;
    v10[3] = &unk_278B57F18;
    v10[4] = v13;
    v11 = v14;
    [MEMORY[0x277D75D18] animateWithDuration:v12 animations:v10 completion:v6];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 32) transitionContext];
    v9 = v8;
    if (v7 == 1)
    {
      [v8 finishInteractiveTransition];
    }

    else
    {
      [v8 cancelInteractiveTransition];
    }
  }
}

void __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke_1(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v12 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v12.minimum;
  maximum = v12.maximum;
  preferred = v12.preferred;
  v6 = [*(a1 + 32) transitionContext];
  if (v6)
  {
    v9 = 2097154;
  }

  else
  {
    v9 = 2097155;
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke_2;
  v10[3] = &unk_278B57340;
  v10[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  *&v7 = maximum;
  *&v8 = preferred;
  [v2 _modifyAnimationsWithPreferredFrameRateRange:v9 updateReason:v10 animations:{COERCE_DOUBLE(LODWORD(minimum)), v7, v8}];
}

uint64_t __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke_2(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(a1 + 32) updateTransitionWithProgress:1 isFinal:v1];
}

uint64_t __69__QLInteractiveTransitionController_completeTransition_withDuration___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) completeTransition:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 tearDownTransition:v3];
}

- (void)_performForcedDismissal
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_FAULT, "QLInteractiveTransitionController (%@) had to performed a forced dismissal. #AppearanceTransition", buf, 0xCu);
  }

  if ([(QLTransitionController *)self showing])
  {
    [QLInteractiveTransitionController _performForcedDismissal];
  }

  QLRunInMainThread();
}

@end