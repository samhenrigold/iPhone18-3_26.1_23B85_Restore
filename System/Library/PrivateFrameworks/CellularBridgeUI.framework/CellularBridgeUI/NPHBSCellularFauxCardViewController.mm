@interface NPHBSCellularFauxCardViewController
- (NPHBSCellularFauxCardViewController)init;
- (UIButton)bypassFauxCardButton;
- (UIButton)enterFauxCardDataManuallyButton;
- (UILabel)activationCodeLabel;
- (UILabel)fauxDataLabel;
- (UIView)cutoutView;
- (UIView)fauxScanView;
- (void)_setFauxCardData:(id)data;
- (void)addNewRemotePlanWithCardData:(id)data confirmationCode:(id)code;
- (void)bypassFauxCard:(id)card;
- (void)cancelAction:(id)action;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)captureSession:(id)session isRunning:(BOOL)running;
- (void)cellularConfirmationCodeViewController:(id)controller confirmedWithCode:(id)code;
- (void)enterFauxCardDataManually:(id)manually;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)presentConfirmationCodeRequest;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NPHBSCellularFauxCardViewController

- (NPHBSCellularFauxCardViewController)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6.receiver = self;
  v6.super_class = NPHBSCellularFauxCardViewController;
  v4 = [(NPHBSCellularFauxCardViewController *)&v6 initWithNibName:@"NPHBSCellularFauxCard" bundle:v3];

  v4->_userConsentResponse = 0;
  return v4;
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = NPHBSCellularFauxCardViewController;
  [(NPHBSCellularFauxCardViewController *)&v30 viewDidLoad];
  WeakRetained = objc_loadWeakRetained(&self->_bypassFauxCardButton);
  v4 = BPSBridgeTintColor();
  [WeakRetained setTintColor:v4];

  v5 = objc_loadWeakRetained(&self->_enterFauxCardDataManuallyButton);
  v6 = BPSBridgeTintColor();
  [v5 setTintColor:v6];

  v7 = self->_codelessActivationBlock == 0;
  v8 = objc_loadWeakRetained(&self->_bypassFauxCardButton);
  [v8 setHidden:v7];

  if (!self->_scannerView)
  {
    v9 = [NPHCellularBridgeBarcodeScannerView alloc];
    v10 = [(NPHCellularBridgeBarcodeScannerView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    scannerView = self->_scannerView;
    self->_scannerView = v10;

    [(NPHCellularBridgeBarcodeScannerView *)self->_scannerView setDelegate:self];
    [(NPHCellularBridgeBarcodeScannerView *)self->_scannerView setupCameraSession];
    v12 = objc_loadWeakRetained(&self->_fauxScanView);
    [v12 addSubview:self->_scannerView];

    layer = [MEMORY[0x277CD9F90] layer];
    fillWithHoleLayer = self->_fillWithHoleLayer;
    self->_fillWithHoleLayer = layer;

    [(CAShapeLayer *)self->_fillWithHoleLayer setFillRule:*MEMORY[0x277CDA248]];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v16 = [blackColor colorWithAlphaComponent:0.5];
    -[CAShapeLayer setFillColor:](self->_fillWithHoleLayer, "setFillColor:", [v16 CGColor]);

    v17 = *MEMORY[0x277CDA6E0];
    [(CAShapeLayer *)self->_fillWithHoleLayer setContentsGravity:*MEMORY[0x277CDA6E0]];
    v18 = objc_loadWeakRetained(&self->_cutoutView);
    layer2 = [v18 layer];
    [layer2 addSublayer:self->_fillWithHoleLayer];

    layer3 = [MEMORY[0x277CD9F90] layer];
    holeOutlineLayer = self->_holeOutlineLayer;
    self->_holeOutlineLayer = layer3;

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](self->_holeOutlineLayer, "setFillColor:", [clearColor CGColor]);

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    -[CAShapeLayer setStrokeColor:](self->_holeOutlineLayer, "setStrokeColor:", [whiteColor CGColor]);

    [(CAShapeLayer *)self->_holeOutlineLayer setContentsGravity:v17];
    v24 = objc_loadWeakRetained(&self->_cutoutView);
    layer4 = [v24 layer];
    [layer4 addSublayer:self->_holeOutlineLayer];

    v26 = objc_loadWeakRetained(&self->_cutoutView);
    [v26 setAlpha:0.0];
  }

  v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction_];
  navigationItem = [(NPHBSCellularFauxCardViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v27];

  navigationController = [(NPHBSCellularFauxCardViewController *)self navigationController];
  [navigationController setDelegate:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = NPHBSCellularFauxCardViewController;
  [(NPHBSCellularFauxCardViewController *)&v4 viewWillAppear:appear];
  [(NPHCellularBridgeBarcodeScannerView *)self->_scannerView startRunning];
}

- (void)viewDidLayoutSubviews
{
  scannerView = self->_scannerView;
  WeakRetained = objc_loadWeakRetained(&self->_fauxScanView);
  [WeakRetained bounds];
  [(NPHCellularBridgeBarcodeScannerView *)scannerView setFrame:?];

  v5 = objc_loadWeakRetained(&self->_cutoutView);
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CAShapeLayer *)self->_fillWithHoleLayer setFrame:v7, v9, v11, v13];
  if (v11 * 0.7 >= v13 * 0.7)
  {
    v14 = v13 * 0.7;
  }

  else
  {
    v14 = v11 * 0.7;
  }

  v15 = (v11 - v14) * 0.5;
  v16 = MEMORY[0x277D75208];
  v17 = objc_loadWeakRetained(&self->_cutoutView);
  [v17 bounds];
  v21 = [v16 bezierPathWithRect:?];

  v18 = [MEMORY[0x277D75208] bezierPathWithRect:{v15, (v13 - v14) * 0.5, v14, v14}];
  [v21 appendPath:v18];
  [v21 setUsesEvenOddFillRule:1];
  v19 = v21;
  -[CAShapeLayer setPath:](self->_fillWithHoleLayer, "setPath:", [v21 CGPath]);
  v20 = [MEMORY[0x277D75208] bezierPathWithRect:{v15, (v13 - v14) * 0.5, v14, v14}];
  -[CAShapeLayer setPath:](self->_holeOutlineLayer, "setPath:", [v20 CGPath]);
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if (viewController == self)
  {
    navigationBar = [controller navigationBar];
    [navigationBar setBarStyle:1];
    [navigationBar _setHidesShadow:1];
    v6 = BPSBridgeTintColor();
    [navigationBar setTintColor:v6];
  }

  else
  {
    v5 = [(NPHBSCellularFauxCardViewController *)self navigationController:controller];
    navigationBar = [v5 navigationBar];

    [navigationBar setBarStyle:0];
    [navigationBar _setHidesShadow:0];
    [navigationBar setTintColor:0];
  }
}

- (void)bypassFauxCard:(id)card
{
  presentingViewController = [(NPHBSCellularFauxCardViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  codelessActivationBlock = [(NPHBSCellularFauxCardViewController *)self codelessActivationBlock];
  codelessActivationBlock[2]();
}

- (void)cancelAction:(id)action
{
  presentingViewController = [(NPHBSCellularFauxCardViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];

  completion = [(NPHBSCellularFauxCardViewController *)self completion];

  if (completion)
  {
    completion2 = [(NPHBSCellularFauxCardViewController *)self completion];
    completion2[2](completion2, 0);
  }
}

- (void)enterFauxCardDataManually:(id)manually
{
  v7 = objc_alloc_init(NPHBSCellularFauxCardInfoViewController);
  completion = [(NPHBSCellularFauxCardViewController *)self completion];
  [(NPHBSCellularFauxCardInfoViewController *)v7 setCompletion:completion];

  subscriptionContext = [(NPHBSCellularFauxCardViewController *)self subscriptionContext];
  [(NPHBSCellularFauxCardInfoViewController *)v7 setSubscriptionContext:subscriptionContext];

  navigationController = [(NPHBSCellularFauxCardViewController *)self navigationController];
  [navigationController pushViewController:v7 animated:1];
}

- (void)captureSession:(id)session isRunning:(BOOL)running
{
  runningCopy = running;
  v13 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[NPHBSCellularFauxCardViewController captureSession:isRunning:]";
    v9 = 2112;
    v10 = sessionCopy;
    v11 = 1024;
    v12 = runningCopy;
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s captureSession: %@ isRunning: %d", &v7, 0x1Cu);
  }
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  objectsCopy = objects;
  v9 = nph_general_log(objectsCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[NPHBSCellularFauxCardViewController captureOutput:didOutputMetadataObjects:fromConnection:]";
    v20 = 2112;
    v21 = outputCopy;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (!self->_nextTimeToAcceptScan || ([MEMORY[0x277CBEAA8] date], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "compare:", self->_nextTimeToAcceptScan), v10, v11 != -1))
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:5.0];
    nextTimeToAcceptScan = self->_nextTimeToAcceptScan;
    self->_nextTimeToAcceptScan = v12;

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke;
    block[3] = &unk_278DAC9F0;
    v15 = objectsCopy;
    objc_copyWeak(&v17, buf);
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v17);

    objc_destroyWeak(buf);
  }
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] firstObject];
  v3 = [v2 stringValue];
  v4 = nph_general_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "########### scannedCode %@", buf, 0xCu);
  }

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = [WeakRetained bypassFauxCardButton];
    [v6 setEnabled:0];

    v7 = objc_loadWeakRetained(a1 + 6);
    v8 = [v7 enterFauxCardDataManuallyButton];
    [v8 setEnabled:0];

    [a1[5] _setFauxCardData:v3];
    v9 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_18;
    v11[3] = &unk_278DAC9C8;
    objc_copyWeak(&v12, a1 + 6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_2;
    v10[3] = &unk_278DAC7D8;
    v10[4] = a1[5];
    [v9 animateWithDuration:v11 animations:v10 completion:0.25];
    objc_destroyWeak(&v12);
  }
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cutoutView];
  [v1 setAlpha:1.0];
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    AudioServicesPlaySystemSound(0xFFFu);
    v3 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_3;
    block[3] = &unk_278DAC7B0;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x277D85CD0], block);
  }
}

void __93__NPHBSCellularFauxCardViewController_captureOutput_didOutputMetadataObjects_fromConnection___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _getFauxCardData];
  [v1 addNewRemotePlanWithCardData:v2 confirmationCode:0];
}

- (void)addNewRemotePlanWithCardData:(id)data confirmationCode:(id)code
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  codeCopy = code;
  v8 = nph_general_log(codeCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[NPHBSCellularFauxCardViewController addNewRemotePlanWithCardData:confirmationCode:]";
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  mEMORY[0x277CF96D8] = [MEMORY[0x277CF96D8] sharedManager];
  v10 = IsCurrentDevicePairing();
  v11 = +[NPHCellularBridgeUIManager sharedInstance];
  _currentDeviceCSN = [v11 _currentDeviceCSN];
  subscriptionContext = self->_subscriptionContext;
  userConsentResponse = self->_userConsentResponse;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke;
  v15[3] = &unk_278DACA18;
  objc_copyWeak(&v16, buf);
  v15[4] = self;
  [mEMORY[0x277CF96D8] addNewRemotePlanWithCardData:dataCopy confirmationCode:codeCopy isPairing:v10 withCSN:_currentDeviceCSN withContext:subscriptionContext userConsent:userConsentResponse completion:v15];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = nph_general_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[NPHBSCellularFauxCardViewController addNewRemotePlanWithCardData:confirmationCode:]_block_invoke";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke_23;
  v6[3] = &unk_278DAC9F0;
  v5 = v3;
  v7 = v5;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = *(a1 + 32);
  nph_ensure_on_main_queue(v6);
  objc_destroyWeak(&v9);
}

void __85__NPHBSCellularFauxCardViewController_addNewRemotePlanWithCardData_confirmationCode___block_invoke_23(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained subscriptionContext];
  v6 = [v2 NPHCellularSanitizedError:v3 forSubscriptionContext:v5];

  v8 = nph_general_log(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = "[NPHBSCellularFauxCardViewController addNewRemotePlanWithCardData:confirmationCode:]_block_invoke";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s sanitizedError:%@", &v20, 0x16u);
  }

  if (!v6)
  {
    v11 = [*(a1 + 40) navigationController];
    [v11 dismissViewControllerAnimated:1 completion:0];

    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = [v12 completion];

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 completion];
    v15[2](v15, 0);
LABEL_11:

    goto LABEL_12;
  }

  v9 = [v6 domain];
  if (![v9 isEqualToString:*MEMORY[0x277CF9680]])
  {

    goto LABEL_10;
  }

  v10 = [v6 code];

  if (v10 != 19)
  {
LABEL_10:
    [NPHCellularBridgeUIManager presentCellularError:v6 onViewController:*(a1 + 40)];
    v16 = objc_loadWeakRetained((a1 + 48));
    v17 = [v16 cutoutView];
    [v17 setAlpha:0.0];

    v18 = objc_loadWeakRetained((a1 + 48));
    v19 = [v18 bypassFauxCardButton];
    [v19 setEnabled:1];

    v14 = objc_loadWeakRetained((a1 + 48));
    v15 = [v14 enterFauxCardDataManuallyButton];
    [v15 setEnabled:1];
    goto LABEL_11;
  }

  [*(a1 + 40) presentConfirmationCodeRequest];
LABEL_12:
}

- (void)presentConfirmationCodeRequest
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NPHBSCellularFauxCardViewController presentConfirmationCodeRequest]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = objc_alloc_init(NPHBSCellularConfirmationCodeViewController);
  [(NPHBSCellularConfirmationCodeViewController *)v4 setDelegate:self];
  navigationController = [(NPHBSCellularFauxCardViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:0];
}

- (void)cellularConfirmationCodeViewController:(id)controller confirmedWithCode:(id)code
{
  v10 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v6 = nph_general_log(codeCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHBSCellularFauxCardViewController cellularConfirmationCodeViewController:confirmedWithCode:]";
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  _getFauxCardData = [(NPHBSCellularFauxCardViewController *)self _getFauxCardData];
  [(NPHBSCellularFauxCardViewController *)self addNewRemotePlanWithCardData:_getFauxCardData confirmationCode:codeCopy];
}

- (void)_setFauxCardData:(id)data
{
  self->_fauxCardData = [data copy];

  MEMORY[0x2821F96F8]();
}

- (UIView)fauxScanView
{
  WeakRetained = objc_loadWeakRetained(&self->_fauxScanView);

  return WeakRetained;
}

- (UIView)cutoutView
{
  WeakRetained = objc_loadWeakRetained(&self->_cutoutView);

  return WeakRetained;
}

- (UIButton)bypassFauxCardButton
{
  WeakRetained = objc_loadWeakRetained(&self->_bypassFauxCardButton);

  return WeakRetained;
}

- (UIButton)enterFauxCardDataManuallyButton
{
  WeakRetained = objc_loadWeakRetained(&self->_enterFauxCardDataManuallyButton);

  return WeakRetained;
}

- (UILabel)fauxDataLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_fauxDataLabel);

  return WeakRetained;
}

- (UILabel)activationCodeLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_activationCodeLabel);

  return WeakRetained;
}

@end