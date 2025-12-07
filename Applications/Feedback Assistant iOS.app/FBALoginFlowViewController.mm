@interface FBALoginFlowViewController
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation FBALoginFlowViewController

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = FBALoginFlowViewController;
  [(FBALoginFlowViewController *)&v4 viewDidAppear:appear];
  if (([(FBALoginFlowViewController *)self pendingUI]& 2) != 0)
  {
    [(FBALoginFlowViewController *)self performSegueWithIdentifier:@"FBAStartupLicensePresentation" sender:self];
    [(FBALoginFlowViewController *)self setPendingUI:[(FBALoginFlowViewController *)self pendingUI]& 0xFFFFFFFFFFFFFFFDLL];
  }

  else if (([(FBALoginFlowViewController *)self pendingUI]& 4) == 0)
  {
    [(FBALoginFlowViewController *)self performSegueWithIdentifier:@"FBAUnwindLoginFlow" sender:self];
  }
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  segueCopy = segue;
  senderCopy = sender;
  identifier = [segueCopy identifier];
  v9 = [identifier isEqualToString:@"FBAStartupLicensePresentation"];

  if (v9)
  {
    destinationViewController = [segueCopy destinationViewController];
    topViewController = [destinationViewController topViewController];

    objc_initWeak(&location, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002CDDC;
    v12[3] = &unk_1000DE618;
    objc_copyWeak(&v13, &location);
    v12[4] = self;
    [topViewController setCompletion:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

@end