@interface WFInteractionCardProgressViewController
- (void)handleEvent:(unint64_t)event;
- (void)loadView;
@end

@implementation WFInteractionCardProgressViewController

- (void)handleEvent:(unint64_t)event
{
  [(WFInteractionCardProgressViewController *)self loadViewIfNeeded];
  v5 = 2;
  if (event != 1)
  {
    v5 = -1;
  }

  if (event)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  progressEventViewController = [(WFInteractionCardProgressViewController *)self progressEventViewController];
  [progressEventViewController handleEvent:v6];
}

- (void)loadView
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = WFInteractionCardProgressViewController;
  loadView = [(WFInteractionCardProgressViewController *)&v22 loadView];
  v4 = objc_alloc_init(getSUICProgressEventViewControllerClass(loadView));
  [(WFInteractionCardProgressViewController *)self addChildViewController:v4];
  view = [v4 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(WFInteractionCardProgressViewController *)self view];
  [view2 addSubview:view];

  v17 = MEMORY[0x277CCAAD0];
  heightAnchor = [view heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:20.0];
  v23[0] = v20;
  widthAnchor = [view widthAnchor];
  v18 = [widthAnchor constraintEqualToConstant:20.0];
  v23[1] = v18;
  centerXAnchor = [view centerXAnchor];
  view3 = [(WFInteractionCardProgressViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v23[2] = v8;
  centerYAnchor = [view centerYAnchor];
  view4 = [(WFInteractionCardProgressViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v23[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  [v17 activateConstraints:v13];

  [v4 didMoveToParentViewController:self];
  [v4 handleEvent:0];
  progressEventViewController = self->_progressEventViewController;
  self->_progressEventViewController = v4;
}

@end