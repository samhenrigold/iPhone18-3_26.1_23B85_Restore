@interface TSSubFlowViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSSubFlowViewController)initWithFlow:(id)flow navigationController:(id)controller delegate:(id)delegate;
- (TSSubFlowViewController)initWithOptions:(id)options navigationController:(id)controller delegate:(id)delegate;
- (UIViewController)prevViewController;
- (void)_presentFirstViewController;
- (void)prepare:(id)prepare;
- (void)setDelegate:(id)delegate;
- (void)simSetupFlowCompleted:(unint64_t)completed;
- (void)takeScreenShot:(id)shot;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSSubFlowViewController

- (TSSubFlowViewController)initWithOptions:(id)options navigationController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  controllerCopy = controller;
  v10 = [TSSIMSetupFlow flowWithOptions:options];
  v11 = [(TSSubFlowViewController *)self initWithFlow:v10 navigationController:controllerCopy delegate:delegateCopy];

  return v11;
}

- (TSSubFlowViewController)initWithFlow:(id)flow navigationController:(id)controller delegate:(id)delegate
{
  flowCopy = flow;
  controllerCopy = controller;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = TSSubFlowViewController;
  v12 = [(TSSubFlowViewController *)&v16 initWithTitle:&stru_28753DF48 detailText:0 icon:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_subFlow, flow);
    [(TSSIMSetupFlow *)v13->_subFlow setDelegate:v13];
    v13->_subFlowType = [flowCopy flowType];
    [(TSSIMSetupFlow *)v13->_subFlow setNavigationController:controllerCopy];
    v13->_isViewControllerPresenting = 0;
    v13->_isViewControllerPresented = 0;
    [(TSSIMSetupFlow *)v13->_subFlow setParentFlow:delegateCopy];
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14 = v13;
  }

  return v13;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = objc_loadWeakRetained(&self->_delegate);

    if (v7 != delegateCopy)
    {
      v9 = _TSLogDomain(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(TSSubFlowViewController *)delegateCopy setDelegate:v9];
      }
    }
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)takeScreenShot:(id)shot
{
  shotCopy = shot;
  objc_storeWeak(&self->_prevViewController, shotCopy);
  view = [shotCopy view];

  v5 = [view snapshotViewAfterScreenUpdates:0];
  snapshot = self->_snapshot;
  self->_snapshot = v5;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TSSubFlowViewController;
  [(TSOBWelcomeController *)&v5 viewDidLoad];
  if (self->_snapshot)
  {
    view = [(TSSubFlowViewController *)self view];
    [view addSubview:self->_snapshot];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(TSSubFlowViewController *)self _presentFirstViewController];
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v19 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = TSSubFlowViewController;
  [(TSSubFlowViewController *)&v14 viewWillAppear:appear];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(TSSubFlowViewController *)self _presentFirstViewController];
  }

  navigationController = [(TSSubFlowViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  firstViewController = self->_firstViewController;

  if (visibleViewController == firstViewController)
  {
    v8 = _TSLogDomain(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      navigationController2 = [(TSSubFlowViewController *)self navigationController];
      visibleViewController2 = [navigationController2 visibleViewController];
      *buf = 138412546;
      v16 = visibleViewController2;
      v17 = 2080;
      v18 = "[TSSubFlowViewController viewWillAppear:]";
      _os_log_impl(&dword_262AA8000, v8, OS_LOG_TYPE_DEFAULT, "user tap back to cancel with top visible view controller: %@ @%s", buf, 0x16u);
    }

    navigationController3 = [(TSSubFlowViewController *)self navigationController];
    WeakRetained = objc_loadWeakRetained(&self->_prevViewController);
    v13 = [navigationController3 popToViewController:WeakRetained animated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSSubFlowViewController;
  [(OBBaseWelcomeController *)&v4 viewDidAppear:appear];
  if (_os_feature_enabled_impl())
  {
    [(TSSubFlowViewController *)self _presentFirstViewController];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v25 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = TSSubFlowViewController;
  [(OBBaseWelcomeController *)&v19 viewDidDisappear:disappear];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  navigationController = [(TSSubFlowViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];

  v6 = [viewControllers countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(viewControllers);
        }

        if (*(*(&v15 + 1) + 8 * v9) == self->_firstViewController)
        {
          v10 = _TSLogDomain(v6);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            firstViewController = self->_firstViewController;
            *buf = 138412546;
            v21 = firstViewController;
            v22 = 2080;
            v23 = "[TSSubFlowViewController viewDidDisappear:]";
            _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "%@ presented @%s", buf, 0x16u);
          }

          self->_isViewControllerPresented = 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [viewControllers countByEnumeratingWithState:&v15 objects:v24 count:16];
      v7 = v6;
    }

    while (v6);
  }

  if (!self->_usingFirstViewControllerParadigm)
  {
    v13 = _TSLogDomain(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      *buf = 138412546;
      v21 = v14;
      v22 = 2080;
      v23 = "[TSSubFlowViewController viewDidDisappear:]";
      _os_log_impl(&dword_262AA8000, v13, OS_LOG_TYPE_DEFAULT, "flow %@ presents ViewController by itself @%s", buf, 0x16u);
    }

    self->_isViewControllerPresented = 1;
  }
}

- (void)_presentFirstViewController
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_firstViewController)
  {
    if (!self->_isViewControllerPresenting)
    {
      navigationController = [(TSSubFlowViewController *)self navigationController];

      if (navigationController)
      {
        self->_isViewControllerPresenting = 1;
        v5 = _TSLogDomain(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          firstViewController = self->_firstViewController;
          v8 = 138412546;
          v9 = firstViewController;
          v10 = 2080;
          v11 = "[TSSubFlowViewController _presentFirstViewController]";
          _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "presenting : %@ @%s", &v8, 0x16u);
        }

        navigationController2 = [(TSSubFlowViewController *)self navigationController];
        [navigationController2 pushViewController:self->_firstViewController animated:1];
      }
    }
  }
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  v5 = prepareCopy;
  if (self->_subFlow)
  {
    objc_initWeak(&location, self);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_usingFirstViewControllerParadigm = 0;
      subFlow = self->_subFlow;
      navigationController = [(TSSIMSetupFlow *)subFlow navigationController];
      topViewController = [navigationController topViewController];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __35__TSSubFlowViewController_prepare___block_invoke;
      v14[3] = &unk_279B45618;
      v15 = v5;
      [(TSSIMSetupFlow *)subFlow showFirstViewControllerWithHostController:topViewController completion:v14];
      v9 = &v15;
    }

    else
    {
      self->_usingFirstViewControllerParadigm = 1;
      v10 = self->_subFlow;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __35__TSSubFlowViewController_prepare___block_invoke_2;
      v11[3] = &unk_279B458D0;
      v12 = v5;
      objc_copyWeak(&v13, &location);
      [(TSSIMSetupFlow *)v10 firstViewController:v11];
      v9 = &v12;
      objc_destroyWeak(&v13);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    (*(prepareCopy + 2))(prepareCopy, 0);
  }
}

void __35__TSSubFlowViewController_prepare___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setFirstViewController:v4];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)simSetupFlowCompleted:(unint64_t)completed
{
  v26 = *MEMORY[0x277D85DE8];
  subFlow = [(TSSubFlowViewController *)self subFlow];
  parentFlow = [subFlow parentFlow];
  if (parentFlow)
  {
    v7 = parentFlow;
    subFlow2 = [(TSSubFlowViewController *)self subFlow];
    parentFlow2 = [subFlow2 parentFlow];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (parentFlow2 == WeakRetained)
    {
      goto LABEL_6;
    }

    subFlow = _TSLogDomain(v11);
    if (os_log_type_enabled(subFlow, OS_LOG_TYPE_FAULT))
    {
      [(TSSubFlowViewController *)self simSetupFlowCompleted:subFlow];
    }
  }

LABEL_6:
  v12 = _TSLogDomain(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    subFlow = self->_subFlow;
    v14 = objc_loadWeakRetained(&self->_delegate);
    v18 = 138413058;
    v19 = subFlow;
    v20 = 2048;
    completedCopy = completed;
    v22 = 2112;
    v23 = v14;
    v24 = 2080;
    v25 = "[TSSubFlowViewController simSetupFlowCompleted:]";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "sub flow %@ completed with type:%ld, delegate: %@ @%s", &v18, 0x2Au);
  }

  if (completed == 3)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 attemptFailed];
    goto LABEL_17;
  }

  if (completed == 2)
  {
LABEL_16:
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 viewControllerDidComplete:self];
    goto LABEL_17;
  }

  if (completed != 1)
  {
    v17 = _TSLogDomain(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [TSSubFlowViewController simSetupFlowCompleted:v17];
    }

    goto LABEL_16;
  }

  v16 = objc_loadWeakRetained(&self->_delegate);
  [v16 userDidTapCancel];
LABEL_17:
}

- (UIViewController)prevViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_prevViewController);

  return WeakRetained;
}

- (void)setDelegate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSSubFlowViewController setDelegate:]";
  _os_log_fault_impl(&dword_262AA8000, a2, OS_LOG_TYPE_FAULT, "[F]unexpect change of delegate: %@ @%s", &v2, 0x16u);
}

- (void)simSetupFlowCompleted:(NSObject *)a3 .cold.1(void *a1, id *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [a1 subFlow];
  v6 = [v5 parentFlow];
  WeakRetained = objc_loadWeakRetained(a2);
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = WeakRetained;
  v12 = 2080;
  v13 = "[TSSubFlowViewController simSetupFlowCompleted:]";
  _os_log_fault_impl(&dword_262AA8000, a3, OS_LOG_TYPE_FAULT, "[F]delegate is wrong. expected: %@, actual: %@ @%s", &v8, 0x20u);
}

- (void)simSetupFlowCompleted:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSSubFlowViewController simSetupFlowCompleted:]";
  _os_log_fault_impl(&dword_262AA8000, log, OS_LOG_TYPE_FAULT, "[F]unhandled completion type @%s", &v1, 0xCu);
}

@end