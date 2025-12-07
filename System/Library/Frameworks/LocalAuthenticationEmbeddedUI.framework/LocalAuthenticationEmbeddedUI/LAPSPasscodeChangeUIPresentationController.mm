@interface LAPSPasscodeChangeUIPresentationController
- (LAPSPasscodeChangeUIPresentationController)initWithParentVC:(id)c containerVC:(id)vC;
- (void)_dismissWithCompletion:(id)completion;
- (void)_restoreParentModalInPresentationFlag;
- (void)_setupParentVCIfNeededAnimated:(BOOL)animated;
- (void)_storeParentModalInPresentationFlag;
- (void)dismissWithCompletion:(id)completion;
- (void)presentAlertVC:(id)c;
- (void)presentVC:(id)c animated:(BOOL)animated;
- (void)presentVC:(id)c transitionStyle:(int64_t)style;
@end

@implementation LAPSPasscodeChangeUIPresentationController

- (LAPSPasscodeChangeUIPresentationController)initWithParentVC:(id)c containerVC:(id)vC
{
  cCopy = c;
  vCCopy = vC;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v11.receiver = self;
  v11.super_class = LAPSPasscodeChangeUIPresentationController;
  v8 = [(LAPSPasscodeChangeUIPresentationController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parentVC, cCopy);
    [(LAPSPasscodeChangeUIPresentationController *)v9 _storeParentModalInPresentationFlag];
    objc_storeStrong(&v9->_containerVC, vC);
  }

  return v9;
}

- (void)dismissWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will dismiss UI", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__LAPSPasscodeChangeUIPresentationController_dismissWithCompletion___block_invoke;
  v7[3] = &unk_278A65A20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(LAPSPasscodeChangeUIPresentationController *)self _dismissWithCompletion:v7];
}

uint64_t __68__LAPSPasscodeChangeUIPresentationController_dismissWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) resignFirstResponder];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)presentAlertVC:(id)c
{
  v13 = *MEMORY[0x277D85DE8];
  cCopy = c;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = LACLogPasscodeService();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = cCopy;
    _os_log_impl(&dword_238BCD000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will present %{public}@", &v9, 0x16u);
  }

  parentViewController = [(LACUIContainerViewController *)self->_containerVC parentViewController];
  if (parentViewController)
  {
    WeakRetained = self->_containerVC;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  }

  v8 = WeakRetained;

  [(LACUIContainerViewController *)v8 resignFirstResponder];
  [(LACUIContainerViewController *)v8 presentViewController:cCopy animated:1 completion:&__block_literal_global_5];
}

- (void)presentVC:(id)c animated:(BOOL)animated
{
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __65__LAPSPasscodeChangeUIPresentationController_presentVC_animated___block_invoke;
  v10 = &unk_278A65F38;
  LOBYTE(v12) = animated;
  selfCopy = self;
  cCopy = c;
  v6 = __65__LAPSPasscodeChangeUIPresentationController_presentVC_animated___block_invoke(&v7);
  [(LAPSPasscodeChangeUIPresentationController *)self presentVC:cCopy transitionStyle:v6, v7, v8, v9, v10, selfCopy, v12];
}

BOOL __65__LAPSPasscodeChangeUIPresentationController_presentVC_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v1 = [*(*(a1 + 32) + 32) currentViewController];
  v2 = v1 != 0;

  return v2;
}

- (void)presentVC:(id)c transitionStyle:(int64_t)style
{
  v14 = *MEMORY[0x277D85DE8];
  cCopy = c;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v7 = LACLogPasscodeService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543874;
    selfCopy = self;
    v10 = 2114;
    v11 = cCopy;
    v12 = 2048;
    styleCopy = style;
    _os_log_impl(&dword_238BCD000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will present %{public}@ with transition style %ld", &v8, 0x20u);
  }

  [(LAPSPasscodeChangeUIPresentationController *)self _setupParentVCIfNeededAnimated:1];
  [(LACUIContainerViewController *)self->_containerVC presentViewController:cCopy transitionStyle:style];
}

- (void)_dismissWithCompletion:(id)completion
{
  completionCopy = completion;
  view = [(LACUIContainerViewController *)self->_containerVC view];
  [view setUserInteractionEnabled:0];

  [(LAPSPasscodeChangeUIPresentationController *)self _restoreParentModalInPresentationFlag];
  WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    navigationItem = [(LACUIContainerViewController *)self->_containerVC navigationItem];
    v8 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v8 setTitle:&stru_284B7B4C0];
    [navigationItem setBackBarButtonItem:v8];
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_rootVC);

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_rootVC);
      [v10 dismissViewControllerAnimated:1 completion:completionCopy];

      goto LABEL_6;
    }
  }

  completionCopy[2]();
LABEL_6:
}

- (void)_storeParentModalInPresentationFlag
{
  WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  self->_parentModalInPresentationOriginalFlag = [WeakRetained isModalInPresentation];
}

- (void)_restoreParentModalInPresentationFlag
{
  WeakRetained = objc_loadWeakRetained(&self->_parentVC);
  [WeakRetained setModalInPresentation:self->_parentModalInPresentationOriginalFlag];
}

- (void)_setupParentVCIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  parentViewController = [(LACUIContainerViewController *)self->_containerVC parentViewController];

  if (!parentViewController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentVC);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      obj = objc_loadWeakRetained(&self->_parentVC);
      [obj setModalInPresentation:1];
      containerVC = self->_containerVC;
      viewControllers = [obj viewControllers];
      [obj pushViewController:containerVC animated:{objc_msgSend(viewControllers, "count") != 0}];
    }

    else
    {
      obj = [objc_alloc(MEMORY[0x277D241D0]) initWithRootViewController:self->_containerVC];
      [obj setShouldTrackPreferredContentSize:0];
      [obj setModalInPresentation:1];
      [obj setModalPresentationStyle:2];
      viewControllers = objc_loadWeakRetained(&self->_parentVC);
      [viewControllers presentViewController:obj animated:animatedCopy completion:&__block_literal_global_9];
    }

    objc_storeWeak(&self->_rootVC, obj);
  }
}

@end