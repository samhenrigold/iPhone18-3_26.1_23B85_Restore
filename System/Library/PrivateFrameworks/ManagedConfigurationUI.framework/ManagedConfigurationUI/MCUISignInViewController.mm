@interface MCUISignInViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (MCUISignInViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MCUISignInViewControllerDelegate)delegate;
- (NSString)orgName;
- (void)setContext:(id)context;
- (void)setOrgName:(id)name;
- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error;
- (void)signInViewController:(id)controller willPerformAuthenticationWithContext:(id)context completionHandler:(id)handler;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MCUISignInViewController

- (MCUISignInViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = MCUISignInViewController;
  v4 = [(MCUISignInViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_opt_new();
    titleSectionController = v4->_titleSectionController;
    v4->_titleSectionController = v5;

    v7 = objc_opt_new();
    authSectionController = v4->_authSectionController;
    v4->_authSectionController = v7;

    inlineSignInViewController = [(MCSignInPageAuthenticationSectionController *)v4->_authSectionController inlineSignInViewController];
    [inlineSignInViewController setDelegate:v4];

    v13[0] = v4->_titleSectionController;
    v13[1] = v4->_authSectionController;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    [(MCSectionBasedTableViewController *)v4 setSectionControllers:v10];
  }

  return v4;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MCUISignInViewController;
  [(MCSectionBasedTableViewController *)&v7 viewDidLoad];
  authSectionController = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController = [authSectionController inlineSignInViewController];
  [(MCUISignInViewController *)self addChildViewController:inlineSignInViewController];

  authSectionController2 = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController2 = [authSectionController2 inlineSignInViewController];
  [inlineSignInViewController2 didMoveToParentViewController:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = MCUISignInViewController;
  [(MCUISignInViewController *)&v17 viewWillAppear:appear];
  v4 = MEMORY[0x277D755B8];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [v4 MCUIImageWithColor:systemBackgroundColor];

  navigationController = [(MCUISignInViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundImage:v6 forBarMetrics:0];

  navigationController2 = [(MCUISignInViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  v11 = objc_opt_new();
  [navigationBar2 setShadowImage:v11];

  navigationController3 = [(MCUISignInViewController *)self navigationController];
  navigationBar3 = [navigationController3 navigationBar];
  [navigationBar3 setTranslucent:1];

  systemBackgroundColor2 = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(MCUISignInViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor2];

  navigationItem = [(MCUISignInViewController *)self navigationItem];
  [navigationItem setTitle:&stru_286946728];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MCUISignInViewController;
  [(MCUISignInViewController *)&v6 viewDidAppear:appear];
  if (![(MCUISignInViewController *)self signInButtonTapped])
  {
    authSectionController = [(MCUISignInViewController *)self authSectionController];
    inlineSignInViewController = [authSectionController inlineSignInViewController];
    [inlineSignInViewController signInButtonWasTapped:0];

    [(MCUISignInViewController *)self setSignInButtonTapped:1];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = MCUISignInViewController;
  [(MCUISignInViewController *)&v7 viewDidDisappear:disappear];
  presentingViewController = [(MCUISignInViewController *)self presentingViewController];
  if (!presentingViewController && ![(MCUISignInViewController *)self authenticationFinished])
  {
    delegate = [(MCUISignInViewController *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    presentingViewController = [(MCUISignInViewController *)self delegate];
    [presentingViewController signInViewControllerDidCancelAuthentication:self];
  }
}

- (AKAppleIDAuthenticationInAppContext)context
{
  authSectionController = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController = [authSectionController inlineSignInViewController];
  context = [inlineSignInViewController context];

  return context;
}

- (void)setContext:(id)context
{
  contextCopy = context;
  authSectionController = [(MCUISignInViewController *)self authSectionController];
  inlineSignInViewController = [authSectionController inlineSignInViewController];
  [inlineSignInViewController setContext:contextCopy];
}

- (void)setOrgName:(id)name
{
  v5 = [name copy];
  titleSectionController = [(MCUISignInViewController *)self titleSectionController];
  [titleSectionController setOrgName:v5];
}

- (NSString)orgName
{
  titleSectionController = [(MCUISignInViewController *)self titleSectionController];
  orgName = [titleSectionController orgName];

  return orgName;
}

- (void)signInViewController:(id)controller willPerformAuthenticationWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(MCUISignInViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(MCUISignInViewController *)self delegate];
    [delegate2 signInViewController:self willAuthenticateWithCompletionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2]();
  }
}

- (void)signInViewController:(id)controller didAuthenticateWithResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__MCUISignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke;
  block[3] = &unk_279861DF8;
  block[4] = self;
  v12 = errorCopy;
  v13 = resultsCopy;
  v9 = resultsCopy;
  v10 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__MCUISignInViewController_signInViewController_didAuthenticateWithResults_error___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isBeingDismissed] & 1) == 0)
  {
    v2 = [*(a1 + 32) presentingViewController];

    if (v2)
    {
      if (!*(a1 + 40))
      {
        [*(a1 + 32) setAuthenticationFinished:1];
        v3 = [*(a1 + 32) delegate];
        v4 = objc_opt_respondsToSelector();

        if (v4)
        {
          v5 = [*(a1 + 32) delegate];
          [v5 signInViewController:*(a1 + 32) didAuthenticateWithResults:*(a1 + 48) error:*(a1 + 40)];
        }
      }
    }
  }
}

- (MCUISignInViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end