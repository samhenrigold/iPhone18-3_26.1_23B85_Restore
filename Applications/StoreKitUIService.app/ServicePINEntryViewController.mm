@interface ServicePINEntryViewController
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didAcceptEnteredPIN:(id)n;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ServicePINEntryViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  actions = [context actions];
  allObjects = [actions allObjects];
  firstObject = [allObjects firstObject];
  [(ServicePINEntryViewController *)self setDidAcceptPINAction:firstObject];

  completionCopy[2]();
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ServicePINEntryViewController;
  [(ServicePINEntryViewController *)&v5 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(ServicePINEntryViewController *)self view];
  [view setBackgroundColor:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = ServicePINEntryViewController;
  [(ServicePINEntryViewController *)&v8 viewDidAppear:appear];
  if (![(ServicePINEntryViewController *)self pinControllerShown])
  {
    v4 = objc_alloc_init(DevicePINController);
    v5 = [[UINavigationController alloc] initWithRootViewController:v4];
    v6 = objc_alloc_init(PSSpecifier);
    [v6 setEditPaneClass:objc_opt_class()];
    [v6 setProperty:&off_100054FD0 forKey:@"mode"];
    [v4 setSpecifier:v6];
    [v4 setPinDelegate:self];
    if ([(ServicePINEntryViewController *)self _usesModalPresentation])
    {
      [v5 setModalPresentationStyle:7];
      popoverPresentationController = [v5 popoverPresentationController];
      [popoverPresentationController setDelegate:self];
      [popoverPresentationController setPermittedArrowDirections:0];
      [popoverPresentationController setSourceView:0];
      [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];
    }

    else
    {
      [v5 setModalPresentationStyle:0];
    }

    [(ServicePINEntryViewController *)self setPinController:v4];
    [(ServicePINEntryViewController *)self presentViewController:v5 animated:1 completion:0];
    [(ServicePINEntryViewController *)self setPinControllerShown:1];
  }
}

- (void)didAcceptEnteredPIN:(id)n
{
  nCopy = n;
  didAcceptPINAction = [(ServicePINEntryViewController *)self didAcceptPINAction];
  canSendResponse = [didAcceptPINAction canSendResponse];

  if (canSendResponse)
  {
    v6 = objc_alloc_init(BSMutableSettings);
    [v6 setObject:nCopy forSetting:1];
    didAcceptPINAction2 = [(ServicePINEntryViewController *)self didAcceptPINAction];
    v8 = [BSActionResponse responseWithInfo:v6];
    [didAcceptPINAction2 sendResponse:v8];
  }

  [(ServicePINEntryViewController *)self _dismiss];
}

- (void)_dismiss
{
  _remoteViewControllerProxy = [(ServicePINEntryViewController *)self _remoteViewControllerProxy];
  pinController = [(ServicePINEntryViewController *)self pinController];

  if (pinController)
  {
    pinController2 = [(ServicePINEntryViewController *)self pinController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000A208;
    v6[3] = &unk_100051148;
    v7 = _remoteViewControllerProxy;
    [pinController2 dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [_remoteViewControllerProxy dismiss];
  }
}

@end