@interface DADiagnosticsRemoteViewController
+ (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler;
- (BOOL)prefersStatusBarHidden;
- (DADiagnosticsRemoteViewControllerDelegate)delegate;
- (id)_stringForReason:(unint64_t)reason;
- (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler;
- (void)requiredSerialNumbers:(id)numbers;
- (void)selectableSerialNumbers:(id)numbers;
- (void)sessionToken:(id)token;
- (void)setHostApplicationBundleIdentifier:(id)identifier;
- (void)setStartingFlow:(id)flow;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewServiceDidEnableVolumeHUD:(BOOL)d;
- (void)viewServiceDidFinishWithReason:(unint64_t)reason;
- (void)viewServiceDidSetScreenToBrightness:(float)brightness animate:(BOOL)animate;
- (void)viewServiceDidSuspend;
@end

@implementation DADiagnosticsRemoteViewController

+ (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = objc_alloc_init(self);
  [v8 requestViewControllerWithHostBundleID:dCopy handler:handlerCopy];
}

- (void)requestViewControllerWithHostBundleID:(id)d handler:(id)handler
{
  v34[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];

  if (!hostingController)
  {
    [(DADiagnosticsRemoteViewController *)self _beginDelayingPresentation:&__block_literal_global_0 cancellationHandler:3.0];
    v31 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:@"com.apple.Diagnostics"];
    specification = [MEMORY[0x277D761F8] specification];
    v9 = [objc_alloc(MEMORY[0x277D761E0]) initWithProcessIdentity:v31 sceneSpecification:specification];
    [(DADiagnosticsRemoteViewController *)self setHostingController:v9];

    hostingController2 = [(DADiagnosticsRemoteViewController *)self hostingController];
    [hostingController2 setDelegate:self];

    hostingController3 = [(DADiagnosticsRemoteViewController *)self hostingController];
    sceneViewController = [hostingController3 sceneViewController];

    v29 = sceneViewController;
    [(DADiagnosticsRemoteViewController *)self addChildViewController:sceneViewController];
    view = [sceneViewController view];
    view2 = [(DADiagnosticsRemoteViewController *)self view];
    [view2 addSubview:view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    leadingAnchor2 = [view2 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[0] = v26;
    trailingAnchor = [view trailingAnchor];
    trailingAnchor2 = [view2 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[1] = v22;
    topAnchor = [view topAnchor];
    [view2 topAnchor];
    v16 = v32 = handlerCopy;
    v17 = [topAnchor constraintEqualToAnchor:v16];
    v34[2] = v17;
    [view bottomAnchor];
    v18 = v33 = dCopy;
    bottomAnchor = [view2 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:bottomAnchor];
    v34[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    [v23 activateConstraints:v21];

    dCopy = v33;
    handlerCopy = v32;

    [v29 didMoveToParentViewController:self];
    [(DADiagnosticsRemoteViewController *)self setHostApplicationBundleIdentifier:v33];
    handlerCopy[2](handlerCopy, self, 0);
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DADiagnosticsRemoteViewController;
  [(DADiagnosticsRemoteViewController *)&v7 viewDidLoad];
  v3 = +[DADiagnosticFlow defaultFlow];
  startingFlow = self->_startingFlow;
  self->_startingFlow = v3;

  v5 = +[DADiagnosticResponder sharedInstance];
  [(DADiagnosticsRemoteViewController *)self setResponder:v5];

  BKSDisplayBrightnessGetCurrent();
  [(DADiagnosticsRemoteViewController *)self setOriginalScreenBrightness:?];
  [(DADiagnosticsRemoteViewController *)self setModalPresentationStyle:0];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13.receiver = self;
  v13.super_class = DADiagnosticsRemoteViewController;
  [(DADiagnosticsRemoteViewController *)&v13 viewDidDisappear:disappear];
  v4 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:5 object:0];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v4];

  responder = [(DADiagnosticsRemoteViewController *)self responder];
  [responder enableVolumeHUD:1];

  view = [(DADiagnosticsRemoteViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [(DADiagnosticsRemoteViewController *)self originalScreenBrightness];
  [screen setBrightness:v11];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:0];
}

- (BOOL)prefersStatusBarHidden
{
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  sceneViewController = [hostingController sceneViewController];
  prefersStatusBarHidden = [sceneViewController prefersStatusBarHidden];

  return prefersStatusBarHidden;
}

- (void)requiredSerialNumbers:(id)numbers
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:4 object:numbers];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)selectableSerialNumbers:(id)numbers
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:3 object:numbers];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)setStartingFlow:(id)flow
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:1 object:flow];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)sessionToken:(id)token
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:2 object:token];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)setHostApplicationBundleIdentifier:(id)identifier
{
  v5 = [DADiagnosticsRemoteViewControllerHostToServiceAction actionWithType:0 object:identifier];
  hostingController = [(DADiagnosticsRemoteViewController *)self hostingController];
  [hostingController sendAction:v5];
}

- (void)viewServiceDidFinishWithReason:(unint64_t)reason
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(DADiagnosticsRemoteViewController *)self finished])
  {
    [(DADiagnosticsRemoteViewController *)self setFinished:1];
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DADiagnosticsRemoteViewController *)self _stringForReason:reason];
      *buf = 136315394;
      v11 = "[DADiagnosticsRemoteViewController viewServiceDidFinishWithReason:]";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "%s reason: %@", buf, 0x16u);
    }

    delegate = [(DADiagnosticsRemoteViewController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __68__DADiagnosticsRemoteViewController_viewServiceDidFinishWithReason___block_invoke;
      v9[3] = &unk_27A66EC98;
      v9[4] = self;
      v9[5] = reason;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __68__DADiagnosticsRemoteViewController_viewServiceDidFinishWithReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewController:*(a1 + 32) didFinishWithReason:*(a1 + 40)];
}

- (void)viewServiceDidEnableVolumeHUD:(BOOL)d
{
  dCopy = d;
  v12 = *MEMORY[0x277D85DE8];
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[DADiagnosticsRemoteViewController viewServiceDidEnableVolumeHUD:]";
    v10 = 1024;
    v11 = dCopy;
    _os_log_impl(&dword_275BB3000, v5, OS_LOG_TYPE_DEFAULT, "%s enableVolumeHUD: %d", buf, 0x12u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__DADiagnosticsRemoteViewController_viewServiceDidEnableVolumeHUD___block_invoke;
  v6[3] = &unk_27A66ECC0;
  v6[4] = self;
  v7 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __67__DADiagnosticsRemoteViewController_viewServiceDidEnableVolumeHUD___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responder];
  [v2 enableVolumeHUD:*(a1 + 40)];
}

- (void)viewServiceDidSetScreenToBrightness:(float)brightness animate:(BOOL)animate
{
  animateCopy = animate;
  v17 = *MEMORY[0x277D85DE8];
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[DADiagnosticsRemoteViewController viewServiceDidSetScreenToBrightness:animate:]";
    v13 = 2048;
    brightnessCopy = brightness;
    v15 = 1024;
    v16 = animateCopy;
    _os_log_impl(&dword_275BB3000, v7, OS_LOG_TYPE_DEFAULT, "%s brightness: %f animate: %d", buf, 0x1Cu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__DADiagnosticsRemoteViewController_viewServiceDidSetScreenToBrightness_animate___block_invoke;
  v8[3] = &unk_27A66EB70;
  v8[4] = self;
  brightnessCopy2 = brightness;
  v10 = animateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __81__DADiagnosticsRemoteViewController_viewServiceDidSetScreenToBrightness_animate___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) responder];
  LODWORD(v2) = *(a1 + 40);
  [v3 setScreenToBrightness:*(a1 + 44) animate:v2];
}

- (void)viewServiceDidSuspend
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[DADiagnosticsRemoteViewController viewServiceDidSuspend]";
    _os_log_impl(&dword_275BB3000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_22);
}

- (id)_stringForReason:(unint64_t)reason
{
  if (reason > 0xF)
  {
    return @"UnknownReason";
  }

  else
  {
    return off_27A66ECE0[reason];
  }
}

- (DADiagnosticsRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end