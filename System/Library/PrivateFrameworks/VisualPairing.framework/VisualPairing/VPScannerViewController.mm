@interface VPScannerViewController
+ (id)instantiateViewController;
- (void)handleCancelButton:(id)button;
- (void)handlePairManuallyButton:(id)button;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VPScannerViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.VisualPairing"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"VPScanner_iOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"ScannerProx"];

  return v4;
}

- (void)viewDidLoad
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = VPScannerViewController;
  [(VPScannerViewController *)&v9 viewDidLoad];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  horizontalSizeClass = [currentTraitCollection horizontalSizeClass];

  if (horizontalSizeClass != 1)
  {
    v5 = MEMORY[0x277CCAAD0];
    widthAnchor = [(UIView *)self->_containerView widthAnchor];
    v7 = [widthAnchor constraintLessThanOrEqualToConstant:400.0];
    v10[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    [v5 activateConstraints:v8];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (gLogCategory_SVC <= 30 && (gLogCategory_SVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SVC, "[VPScannerViewController viewWillAppear:]", 30, "ViewWillAppear\n");
  }

  v7.receiver = self;
  v7.super_class = VPScannerViewController;
  [(VPScannerViewController *)&v7 viewWillAppear:appearCopy];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  [currentTraitCollection displayCornerRadius];
  [(UIView *)self->_containerView _setContinuousCornerRadius:?];

  if (self->_titleMessage)
  {
    [(UILabel *)self->_titleLabel setText:?];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__VPScannerViewController_viewWillAppear___block_invoke;
  v6[3] = &unk_279E320A0;
  v6[4] = self;
  [(VPScannerView *)self->_scannerView setScannedCodeHandler:v6];
  [(VPScannerView *)self->_scannerView start];
}

uint64_t __42__VPScannerViewController_viewWillAppear___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 1000);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (gLogCategory_SVC <= 30 && (gLogCategory_SVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SVC, "[VPScannerViewController viewDidDisappear:]", 30, "ViewDidDisappear\n");
  }

  v7.receiver = self;
  v7.super_class = VPScannerViewController;
  [(VPScannerViewController *)&v7 viewDidDisappear:disappearCopy];
  [(VPScannerView *)self->_scannerView setScannedCodeHandler:0];
  [(VPScannerView *)self->_scannerView stop];
  eventHandler = self->_eventHandler;
  self->_eventHandler = 0;

  scannedCodeHandler = self->_scannedCodeHandler;
  self->_scannedCodeHandler = 0;
}

- (void)handleCancelButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_SVC <= 30 && (gLogCategory_SVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SVC, "[VPScannerViewController handleCancelButton:]", 30, "Cancel\n");
  }

  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    eventHandler[2](eventHandler, 1);
  }
}

- (void)handlePairManuallyButton:(id)button
{
  buttonCopy = button;
  if (gLogCategory_SVC <= 30 && (gLogCategory_SVC != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SVC, "[VPScannerViewController handlePairManuallyButton:]", 30, "PairManually\n");
  }

  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    eventHandler[2](eventHandler, 2);
  }
}

@end