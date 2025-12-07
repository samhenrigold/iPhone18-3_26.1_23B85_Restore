@interface NPKBridgeInstructionViewController
- (NPKBridgeInstructionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIActivityIndicatorView)activityIndicatorView;
- (UIBarButtonItem)spinnerItem;
- (void)_cancel;
- (void)_setNavigationBarEnabled:(BOOL)enabled;
- (void)handleErrorWithTitle:(id)title message:(id)message acknowledgeButtonTitle:(id)buttonTitle;
- (void)showNavigationBarSpinner:(BOOL)spinner;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NPKBridgeInstructionViewController

- (NPKBridgeInstructionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = NPKBridgeInstructionViewController;
  v4 = [(NPKBridgeInstructionViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:v4 action:"_cancel"];
    navigationItem = [(NPKBridgeInstructionViewController *)v4 navigationItem];
    [navigationItem setLeftBarButtonItem:v5];
  }

  return v4;
}

- (UIActivityIndicatorView)activityIndicatorView
{
  activityIndicatorView = self->_activityIndicatorView;
  if (!activityIndicatorView)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    v5 = self->_activityIndicatorView;
    self->_activityIndicatorView = v4;

    activityIndicatorView = self->_activityIndicatorView;
  }

  return activityIndicatorView;
}

- (UIBarButtonItem)spinnerItem
{
  spinnerItem = self->_spinnerItem;
  if (!spinnerItem)
  {
    v4 = [UIBarButtonItem alloc];
    activityIndicatorView = [(NPKBridgeInstructionViewController *)self activityIndicatorView];
    v6 = [v4 initWithCustomView:activityIndicatorView];
    v7 = self->_spinnerItem;
    self->_spinnerItem = v6;

    spinnerItem = self->_spinnerItem;
  }

  return spinnerItem;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = NPKBridgeInstructionViewController;
  [(NPKBridgeInstructionViewController *)&v13 viewDidLoad];
  _instructionTitle = [(NPKBridgeInstructionViewController *)self _instructionTitle];
  [(NPKBridgeInstructionViewController *)self setTitle:_instructionTitle];

  _instructionMessage = [(NPKBridgeInstructionViewController *)self _instructionMessage];
  instructionLabel = [(NPKBridgeInstructionViewController *)self instructionLabel];
  [instructionLabel setText:_instructionMessage];

  v6 = objc_alloc_init(UILabel);
  _instructionMessage2 = [(NPKBridgeInstructionViewController *)self _instructionMessage];
  [v6 setText:_instructionMessage2];

  instructionLabelTextColor = [(NPKBridgeInstructionViewController *)self instructionLabelTextColor];
  if (instructionLabelTextColor)
  {
    [v6 setTextColor:instructionLabelTextColor];
  }

  else
  {
    v9 = BPSTextColor();
    [v6 setTextColor:v9];
  }

  v10 = [UIFont systemFontOfSize:15.0];
  [v6 setFont:v10];

  [v6 setNumberOfLines:0];
  [v6 setTextAlignment:1];
  [(NPKBridgeInstructionViewController *)self setInstructionLabel:v6];
  view = [(NPKBridgeInstructionViewController *)self view];
  [view addSubview:v6];
  v12 = BPSSetupBackgroundColor();
  [view setBackgroundColor:v12];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = NPKBridgeInstructionViewController;
  [(NPKBridgeInstructionViewController *)&v12 viewWillLayoutSubviews];
  view = [(NPKBridgeInstructionViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  instructionLabel = [(NPKBridgeInstructionViewController *)self instructionLabel];
  [instructionLabel sizeThatFits:{v5 + -80.0, v7 + -80.0}];

  navigationController = [(NPKBridgeInstructionViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  CGRectGetHeight(v13);
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  UIRectIntegralWithScale();
  [(UILabel *)self->_instructionLabel setFrame:?];
}

- (void)showNavigationBarSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  if ([(NPKBridgeInstructionViewController *)self showingSpinner]!= spinner)
  {
    [(NPKBridgeInstructionViewController *)self setShowingSpinner:spinnerCopy];
    showingSpinner = [(NPKBridgeInstructionViewController *)self showingSpinner];
    navigationController = [(NPKBridgeInstructionViewController *)self navigationController];
    view = [navigationController view];
    v8 = view;
    if (view)
    {
      view2 = view;
    }

    else
    {
      view2 = [(NPKBridgeInstructionViewController *)self view];
    }

    v17 = view2;

    [(NPKBridgeInstructionViewController *)self _setNavigationBarEnabled:showingSpinner ^ 1];
    navigationItem = [(NPKBridgeInstructionViewController *)self navigationItem];
    if ([(NPKBridgeInstructionViewController *)self showingSpinner])
    {
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      [(NPKBridgeInstructionViewController *)self setHiddenRightBarButtonItem:rightBarButtonItem];

      -[NPKBridgeInstructionViewController setHidesBackButton:](self, "setHidesBackButton:", [navigationItem hidesBackButton]);
      activityIndicatorView = [(NPKBridgeInstructionViewController *)self activityIndicatorView];
      [activityIndicatorView startAnimating];

      spinnerItem = [(NPKBridgeInstructionViewController *)self spinnerItem];
      [navigationItem setRightBarButtonItem:spinnerItem];

      hidesBackButton = 1;
    }

    else
    {
      activityIndicatorView2 = [(NPKBridgeInstructionViewController *)self activityIndicatorView];
      [activityIndicatorView2 stopAnimating];

      hiddenRightBarButtonItem = [(NPKBridgeInstructionViewController *)self hiddenRightBarButtonItem];
      [navigationItem setRightBarButtonItem:hiddenRightBarButtonItem];

      hidesBackButton = [(NPKBridgeInstructionViewController *)self hidesBackButton];
    }

    [navigationItem setHidesBackButton:hidesBackButton];
    [v17 setNeedsLayout];
  }
}

- (void)handleErrorWithTitle:(id)title message:(id)message acknowledgeButtonTitle:(id)buttonTitle
{
  buttonTitleCopy = buttonTitle;
  v9 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_19B4;
  v11[3] = &unk_2C698;
  v11[4] = self;
  v10 = [UIAlertAction actionWithTitle:buttonTitleCopy style:1 handler:v11];

  [v9 addAction:v10];
  [(NPKBridgeInstructionViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_cancel
{
  cancellationHandler = [(NPKBridgeInstructionViewController *)self cancellationHandler];
  [(NPKBridgeInstructionViewController *)self setCancellationHandler:0];
  v3 = cancellationHandler;
  if (cancellationHandler)
  {
    (*(cancellationHandler + 16))(cancellationHandler);
    v3 = cancellationHandler;
  }
}

- (void)_setNavigationBarEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  navigationController = [(NPKBridgeInstructionViewController *)self navigationController];
  if (navigationController)
  {
    navigationBar = [navigationController navigationBar];
    [navigationBar setUserInteractionEnabled:enabledCopy];

    interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
    [interactivePopGestureRecognizer setEnabled:enabledCopy];
  }

  navigationItem = [(NPKBridgeInstructionViewController *)self navigationItem];
  v8 = navigationItem;
  if (navigationItem)
  {
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setEnabled:enabledCopy];

    rightBarButtonItem = [v8 rightBarButtonItem];
    [rightBarButtonItem setEnabled:enabledCopy];
  }
}

@end