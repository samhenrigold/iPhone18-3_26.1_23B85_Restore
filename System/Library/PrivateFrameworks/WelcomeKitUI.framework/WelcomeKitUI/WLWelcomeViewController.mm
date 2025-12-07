@interface WLWelcomeViewController
- (id)_initWithForceUITestMode:(BOOL)mode forceUITestModeDownloadError:(BOOL)error;
- (void)_continueTapped:(id)tapped;
- (void)_qrcodeTapped:(id)tapped;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WLWelcomeViewController

- (id)_initWithForceUITestMode:(BOOL)mode forceUITestModeDownloadError:(BOOL)error
{
  errorCopy = error;
  modeCopy = mode;
  v7 = WLLocalizedString();
  v8 = WLLocalizedString();
  v9 = MEMORY[0x277D755B8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 imageNamed:@"MoveToiOS" inBundle:v10];
  v21.receiver = self;
  v21.super_class = WLWelcomeViewController;
  v12 = [(WLWelcomeViewController *)&v21 initWithTitle:v7 detailText:v8 icon:v11 contentLayout:2];

  if (v12)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    continueButton = v12->_continueButton;
    v12->_continueButton = boldButton;

    v15 = v12->_continueButton;
    v16 = WLLocalizedString();
    [(OBTrayButton *)v15 setTitle:v16 forState:0];

    [(OBTrayButton *)v12->_continueButton addTarget:v12 action:sel__continueTapped_ forControlEvents:64];
    buttonTray = [(WLWelcomeViewController *)v12 buttonTray];
    [buttonTray addButton:v12->_continueButton];

    v18 = [[WLWelcomeController alloc] initWithWelcomeViewController:v12 forceUITestMode:modeCopy forceUITestModeDownloadError:errorCopy];
    welcomeController = v12->_welcomeController;
    v12->_welcomeController = v18;
  }

  return v12;
}

- (void)dealloc
{
  _WLLog();
  v4.receiver = self;
  v4.super_class = WLWelcomeViewController;
  [(WLWelcomeViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WLWelcomeViewController;
  [(WLOnboardingViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"qrcode"];
  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithImage:v3 style:2 target:self action:sel__qrcodeTapped_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
}

- (void)_qrcodeTapped:(id)tapped
{
  if (!self->_qrcodeLoaded)
  {
    self->_qrcodeLoaded = 1;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:MEMORY[0x277CBEC38] forKey:@"qrcode_loaded"];
    [standardUserDefaults synchronize];
  }

  view = [(WLWelcomeViewController *)self view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v9 = v8;

  v11 = [[WLQRCodeDefaultViewController alloc] initWithDefaultQRCode:v9];
  navigationController = [(WLWelcomeViewController *)self navigationController];
  [navigationController pushViewController:v11 animated:1];
}

- (void)_continueTapped:(id)tapped
{
  [(OBTrayButton *)self->_continueButton showsBusyIndicator];
  if (self->_qrcodeLoaded)
  {
    bOOLValue = 1;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [standardUserDefaults objectForKey:@"qrcode_loaded"];
    bOOLValue = [v6 BOOLValue];
  }

  mEMORY[0x277D7B8D0] = [MEMORY[0x277D7B8D0] sharedInstance];
  [mEMORY[0x277D7B8D0] didLoadQRCode:bOOLValue];

  continueHandler = self->_continueHandler;
  if (continueHandler)
  {
    v9 = *(continueHandler + 2);

    v9();
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WLWelcomeViewController;
  [(WLWelcomeViewController *)&v4 viewWillAppear:appear];
  [(OBTrayButton *)self->_continueButton hidesBusyIndicator];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WLWelcomeViewController;
  [(OBBaseWelcomeController *)&v6 viewDidAppear:appear];
  navigationController = [(WLWelcomeViewController *)self navigationController];
  if (!navigationController)
  {
    [WLWelcomeViewController viewDidAppear:];
  }

  navigationController2 = [(WLWelcomeViewController *)self navigationController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [WLWelcomeViewController viewDidAppear:];
  }

  [(WLWelcomeController *)self->_welcomeController setNavigationController:navigationController2];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = WLWelcomeViewController;
  [(OBBaseWelcomeController *)&v4 viewDidDisappear:disappear];
  [(OBTrayButton *)self->_continueButton hidesBusyIndicator];
}

@end