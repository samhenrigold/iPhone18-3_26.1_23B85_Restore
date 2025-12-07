@interface SPUIViewController
- (BOOL)isActiveViewController:(id)controller;
- (BOOL)respondsToSelector:(SEL)selector;
- (SPUIViewController)init;
- (SPUIViewControllerDelegate)delegate;
- (id)activeViewController;
- (id)contentScrollView;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)activateViewController:(id)controller animate:(BOOL)animate;
- (void)didTapInEmptyRegion;
@end

@implementation SPUIViewController

- (SPUIViewController)init
{
  v9.receiver = self;
  v9.super_class = SPUIViewController;
  v2 = [(SPUIViewController *)&v9 init];
  if (v2)
  {
    v3 = [SPUIResultsViewController alloc];
    v4 = +[SPUISearchModel sharedGeneralInstance];
    v5 = [(SPUIResultsViewController *)v3 initWithSearchModel:v4];
    [(SPUIViewController *)v2 setSearchResultViewController:v5];

    searchResultViewController = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController setDelegate:v2];

    searchResultViewController2 = [(SPUIViewController *)v2 searchResultViewController];
    [searchResultViewController2 setFeedbackListener:v2];
  }

  return v2;
}

- (id)activeViewController
{
  childViewControllers = [(SPUIViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

- (id)contentScrollView
{
  activeViewController = [(SPUIViewController *)self activeViewController];
  contentScrollView = [activeViewController contentScrollView];

  return contentScrollView;
}

- (SPUIViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)activateViewController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  activeViewController = [(SPUIViewController *)self activeViewController];
  if (activeViewController != controllerCopy)
  {
    v8 = MEMORY[0x277D65D40];
    v9 = *(MEMORY[0x277D65D40] + 40);
    if (!v9)
    {
      SPUIInitLogging();
      v9 = *(v8 + 40);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26B837000, v9, OS_LOG_TYPE_DEFAULT, "activating vc", buf, 2u);
    }

    [activeViewController removeFromParentViewController];
    if (controllerCopy)
    {
      [(SPUIViewController *)self addChildViewController:controllerCopy];
      [(SPUIViewController *)self willUpdateActiveViewController];
      view = [(SPUIViewController *)self view];
      view2 = [controllerCopy view];
      [view addSubview:view2];

      v12 = MEMORY[0x277D4C828];
      view3 = [controllerCopy view];
      [v12 constrainViewToContainer:view3];

      view4 = [controllerCopy view];
      [view4 setAlpha:0.0];

      v15 = MEMORY[0x277D4C898];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __53__SPUIViewController_activateViewController_animate___block_invoke;
      v19[3] = &unk_279D070B8;
      v20 = controllerCopy;
      v21 = activeViewController;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __53__SPUIViewController_activateViewController_animate___block_invoke_2;
      v16[3] = &unk_279D070B8;
      v17 = v21;
      selfCopy = self;
      [v15 performAnimatableChanges:v19 animated:animateCopy completion:v16];
    }
  }
}

void __53__SPUIViewController_activateViewController_animate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 40) view];
  [v3 setAlpha:0.0];
}

uint64_t __53__SPUIViewController_activateViewController_animate___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) activeViewController];

  if (v2 != v3)
  {
    v4 = [*(a1 + 32) view];
    [v4 removeFromSuperview];
  }

  v5 = *(a1 + 40);

  return [v5 didUpdateActiveViewController];
}

- (void)didTapInEmptyRegion
{
  delegate = [(SPUIViewController *)self delegate];
  [delegate dismissSearchViewWithReason:2];
}

- (BOOL)isActiveViewController:(id)controller
{
  controllerCopy = controller;
  activeViewController = [(SPUIViewController *)self activeViewController];

  return activeViewController == controllerCopy;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if ([objc_opt_class() isFeedbackSelector:selector] && !-[SPUIViewController isInStateRestoration](self, "isInStateRestoration"))
  {
    v5 = +[SPUIFeedbackManager feedbackListener];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SPUIViewController;
    v5 = [(SPUIViewController *)&v7 forwardingTargetForSelector:selector];
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = SPUIViewController;
  if ([(SPUIViewController *)&v7 respondsToSelector:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [objc_opt_class() isFeedbackSelector:selector];
    if (v5)
    {
      LOBYTE(v5) = ![(SPUIViewController *)self isInStateRestoration];
    }
  }

  return v5;
}

@end