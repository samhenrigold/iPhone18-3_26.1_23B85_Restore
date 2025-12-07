@interface AISRepairViewController
- (AISRepairViewController)initWithContext:(id)context;
- (void)_updateAutoDismissal;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation AISRepairViewController

- (AISRepairViewController)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = AISRepairViewController;
  v6 = [(AISRepairViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v7->_shouldAutoDismiss = 1;
  }

  return v7;
}

- (void)viewDidLoad
{
  v54[6] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = AISRepairViewController;
  [(AISRepairViewController *)&v53 viewDidLoad];
  v3 = [__AISRepairViewController alloc];
  context = [(AISRepairViewController *)self context];
  reportHandler = [(AISRepairViewController *)self reportHandler];
  v6 = [(__AISRepairViewController *)v3 initWithContext:context reportHandler:reportHandler];
  viewController = self->_viewController;
  self->_viewController = v6;

  viewController = [(AISRepairViewController *)self viewController];
  view = [viewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  viewController2 = [(AISRepairViewController *)self viewController];
  [viewController2 willMoveToParentViewController:self];

  [(AISRepairViewController *)self addChildViewController:self->_viewController];
  view2 = [(AISRepairViewController *)self view];
  viewController3 = [(AISRepairViewController *)self viewController];
  view3 = [viewController3 view];
  [view2 addSubview:view3];

  v36 = MEMORY[0x277CCAAD0];
  viewController4 = [(AISRepairViewController *)self viewController];
  view4 = [viewController4 view];
  topAnchor = [view4 topAnchor];
  view5 = [(AISRepairViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v54[0] = v47;
  viewController5 = [(AISRepairViewController *)self viewController];
  view6 = [viewController5 view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(AISRepairViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v41 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v54[1] = v41;
  viewController6 = [(AISRepairViewController *)self viewController];
  view8 = [viewController6 view];
  leadingAnchor = [view8 leadingAnchor];
  view9 = [(AISRepairViewController *)self view];
  leadingAnchor2 = [view9 leadingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v54[2] = v34;
  viewController7 = [(AISRepairViewController *)self viewController];
  view10 = [viewController7 view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(AISRepairViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v54[3] = v28;
  viewController8 = [(AISRepairViewController *)self viewController];
  view12 = [viewController8 view];
  centerXAnchor = [view12 centerXAnchor];
  view13 = [(AISRepairViewController *)self view];
  centerXAnchor2 = [view13 centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v54[4] = v15;
  viewController9 = [(AISRepairViewController *)self viewController];
  view14 = [viewController9 view];
  centerYAnchor = [view14 centerYAnchor];
  view15 = [(AISRepairViewController *)self view];
  centerYAnchor2 = [view15 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v54[5] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:6];
  [v36 activateConstraints:v22];

  viewController10 = [(AISRepairViewController *)self viewController];
  [viewController10 didMoveToParentViewController:self];

  [(AISRepairViewController *)self _updateAutoDismissal];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AISRepairViewController;
  [(AISRepairViewController *)&v4 viewDidAppear:appear];
  [(AISRepairViewController *)self _updateAutoDismissal];
}

- (void)_updateAutoDismissal
{
  viewController = [(AISRepairViewController *)self viewController];

  if (viewController)
  {
    if ([(AISRepairViewController *)self shouldAutoDismiss])
    {
      navigationController = [(AISRepairViewController *)self navigationController];
      v5 = navigationController == 0;
    }

    else
    {
      v5 = 0;
    }

    viewController2 = [(AISRepairViewController *)self viewController];
    [viewController2 setShouldAutoDismiss:v5];
  }
}

@end