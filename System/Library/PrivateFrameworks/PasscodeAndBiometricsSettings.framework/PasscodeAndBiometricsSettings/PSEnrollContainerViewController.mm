@interface PSEnrollContainerViewController
- (BOOL)isModalInPresentation;
- (CGSize)preferredContentSize;
- (void)dealloc;
- (void)teardown;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PSEnrollContainerViewController

- (void)dealloc
{
  [(PSEnrollContainerViewController *)self teardown];
  v3.receiver = self;
  v3.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v3 dealloc];
}

- (void)teardown
{
  [(BiometricKitUIEnrollViewController *)self->_enrollController setDelegate:0];
  enrollController = self->_enrollController;
  self->_enrollController = 0;
}

- (BOOL)isModalInPresentation
{
  enrollController = [(PSEnrollContainerViewController *)self enrollController];
  isModalInPresentation = [enrollController isModalInPresentation];

  return isModalInPresentation;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v8 viewDidLoad];
  view = [(PSEnrollContainerViewController *)self view];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [view setBackgroundColor:whiteColor];

  v5 = objc_opt_new();
  [v5 configureWithTransparentBackground];
  navigationItem = [(PSEnrollContainerViewController *)self navigationItem];
  [navigationItem setScrollEdgeAppearance:v5];

  navigationItem2 = [(PSEnrollContainerViewController *)self navigationItem];
  [navigationItem2 setStandardAppearance:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v12 viewWillAppear:appear];
  enrollController = [(PSEnrollContainerViewController *)self enrollController];
  [(PSEnrollContainerViewController *)self addChildViewController:enrollController];

  enrollController2 = [(PSEnrollContainerViewController *)self enrollController];
  view = [enrollController2 view];
  view2 = [(PSEnrollContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [(PSEnrollContainerViewController *)self view];
  enrollController3 = [(PSEnrollContainerViewController *)self enrollController];
  view4 = [enrollController3 view];
  [view3 addSubview:view4];

  enrollController4 = [(PSEnrollContainerViewController *)self enrollController];
  [enrollController4 didMoveToParentViewController:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v6 viewDidDisappear:disappear];
  if (objc_opt_class())
  {
    enrollController = [(PSEnrollContainerViewController *)self enrollController];
    [enrollController beginAppearanceTransition:0 animated:1];
    [enrollController willMoveToParentViewController:0];
    view = [enrollController view];
    [view removeFromSuperview];

    [enrollController removeFromParentViewController];
    [enrollController endAppearanceTransition];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PSEnrollContainerViewController;
  [(PSEnrollContainerViewController *)&v6 viewDidLayoutSubviews];
  enrollController = [(PSEnrollContainerViewController *)self enrollController];
  view = [enrollController view];
  view2 = [(PSEnrollContainerViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (CGSize)preferredContentSize
{
  enrollController = [(PSEnrollContainerViewController *)self enrollController];
  [enrollController preferredContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

@end