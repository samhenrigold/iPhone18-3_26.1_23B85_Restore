@interface TSPRXIdentityShareViewController
- (TSPRXIdentityShareViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (id)_createPKGlyphView;
- (void)_failIdentityShare;
- (void)_maybeFlowCompleted:(unint64_t)completed;
- (void)_registerLockState;
- (void)_reloadScreen;
- (void)_startNFCIdentityShare;
- (void)_stopNFCIdentityShare;
- (void)_successIdentityShare;
- (void)_unlockScreen;
- (void)_unregisterLockState;
- (void)_updateCurrentAction:(id)action;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TSPRXIdentityShareViewController

- (TSPRXIdentityShareViewController)init
{
  v9.receiver = self;
  v9.super_class = TSPRXIdentityShareViewController;
  v2 = [(TSPRXIdentityShareViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_isNFCDataSuccessTransfer = 0;
    v2->_NFCTransferStatus = 1;
    v4 = objc_alloc(MEMORY[0x277CC37B0]);
    v5 = [v4 initWithQueue:MEMORY[0x277D85CD0]];
    ctClient = v3->_ctClient;
    v3->_ctClient = v5;

    primaryAction = v3->_primaryAction;
    v3->_primaryAction = 0;
  }

  return v3;
}

- (void)dealloc
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController dealloc]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, self, a3, "[Db] Stop NFC in dealloc @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_updateCurrentAction:(id)action
{
  actionCopy = action;
  primaryAction = self->_primaryAction;
  if (primaryAction)
  {
    [(TSPRXIdentityShareViewController *)self replaceAction:primaryAction withNewAction:actionCopy];
  }

  else
  {
    v6 = [(TSPRXIdentityShareViewController *)self addAction:actionCopy];
  }

  v7 = self->_primaryAction;
  self->_primaryAction = actionCopy;
}

- (id)_createPKGlyphView
{
  v2 = [objc_alloc(MEMORY[0x277D38BA8]) initWithStyle:0];

  return v2;
}

- (void)viewDidLoad
{
  v93[8] = *MEMORY[0x277D85DE8];
  v92.receiver = self;
  v92.super_class = TSPRXIdentityShareViewController;
  [(TSPRXIdentityShareViewController *)&v92 viewDidLoad];
  [(TSPRXIdentityShareViewController *)self _registerLockState];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(TSPRXIdentityShareViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  LODWORD(view) = +[TSUtilities isDeviceLocked];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (view)
  {
    v7 = @"PRXCARD_IN_STORE_ESIM_LOCKED_TITLE";
  }

  else
  {
    v7 = @"PRXCARD_IN_STORE_ESIM_TITLE";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setTitle:v8];

  if (+[TSUtilities isDeviceLocked])
  {
    v9 = @"PRXCARD_IN_STORE_ESIM_LOCKED_SUBTITLE";
  }

  else
  {
    v9 = @"PRXCARD_IN_STORE_ESIM_SUBTITLE";
  }

  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:v9 value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setSubtitle:v11];

  [(TSPRXIdentityShareViewController *)self setDismissalType:3];
  _createPKGlyphView = [(TSPRXIdentityShareViewController *)self _createPKGlyphView];
  nfcAnimationView = self->_nfcAnimationView;
  self->_nfcAnimationView = _createPKGlyphView;

  [(PKGlyphView *)self->_nfcAnimationView setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = self->_nfcAnimationView;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  [(PKGlyphView *)v14 updateRasterizationScale:?];

  v16 = +[TSUtilities isDeviceLocked];
  v17 = self->_nfcAnimationView;
  if (v16)
  {
    [(PKGlyphView *)v17 setState:10 animated:1 completionHandler:0];
    v18 = [MEMORY[0x277D755B8] systemImageNamed:@"lock.iphone"];
    v19 = [MEMORY[0x277D755D0] configurationWithPointSize:70.0];
    v20 = [v18 imageByApplyingSymbolConfiguration:v19];
    primaryColor = [(PKGlyphView *)self->_nfcAnimationView primaryColor];
    v22 = [v20 _flatImageWithColor:primaryColor];

    v23 = self->_nfcAnimationView;
    v24 = v22;
    cGImage = [v22 CGImage];
    [v22 alignmentRectInsets];
    [(PKGlyphView *)v23 setCustomImage:cGImage withAlignmentEdgeInsets:?];
  }

  else
  {
    [(PKGlyphView *)v17 setState:9 animated:1 completionHandler:0];
  }

  contentView = [(TSPRXIdentityShareViewController *)self contentView];
  [contentView addSubview:self->_nfcAnimationView];

  objc_initWeak(&location, self);
  v27 = MEMORY[0x277D432F0];
  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v29 = [v28 localizedStringForKey:@"CANCEL" value:&stru_28753DF48 table:@"Localizable"];
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke;
  v89[3] = &unk_279B448A0;
  objc_copyWeak(&v90, &location);
  v30 = [v27 actionWithTitle:v29 style:0 handler:v89];
  cancelAction = self->_cancelAction;
  self->_cancelAction = v30;

  v32 = MEMORY[0x277D432F0];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_FAIL_BUTTON" value:&stru_28753DF48 table:@"Localizable"];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke_2;
  v87[3] = &unk_279B448A0;
  objc_copyWeak(&v88, &location);
  v35 = [v32 actionWithTitle:v34 style:0 handler:v87];
  retryAction = self->_retryAction;
  self->_retryAction = v35;

  v37 = MEMORY[0x277D432F0];
  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"DEVICE_UNLOCK_TO_CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke_3;
  v85[3] = &unk_279B448A0;
  objc_copyWeak(&v86, &location);
  v40 = [v37 actionWithTitle:v39 style:0 handler:v85];
  unlockAction = self->_unlockAction;
  self->_unlockAction = v40;

  v42 = MEMORY[0x277D432F0];
  v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v44 = [v43 localizedStringForKey:@"DONE" value:&stru_28753DF48 table:@"Localizable"];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke_4;
  v83[3] = &unk_279B448A0;
  objc_copyWeak(&v84, &location);
  v45 = [v42 actionWithTitle:v44 style:0 handler:v83];
  continueAction = self->_continueAction;
  self->_continueAction = v45;

  if (+[TSUtilities isDeviceLocked])
  {
    [(TSPRXIdentityShareViewController *)self _updateCurrentAction:self->_unlockAction];
  }

  else
  {
    [(TSPRXIdentityShareViewController *)self _updateCurrentAction:self->_cancelAction];
    [(TSPRXIdentityShareViewController *)self _startNFCIdentityShare];
  }

  v57 = MEMORY[0x277CCAAD0];
  heightAnchor = [(PKGlyphView *)self->_nfcAnimationView heightAnchor];
  v81 = [heightAnchor constraintEqualToConstant:116.0];
  v93[0] = v81;
  widthAnchor = [(PKGlyphView *)self->_nfcAnimationView widthAnchor];
  v79 = [widthAnchor constraintEqualToConstant:116.0];
  v93[1] = v79;
  centerXAnchor = [(PKGlyphView *)self->_nfcAnimationView centerXAnchor];
  contentView2 = [(TSPRXIdentityShareViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v74 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v93[2] = v74;
  centerYAnchor = [(PKGlyphView *)self->_nfcAnimationView centerYAnchor];
  contentView3 = [(TSPRXIdentityShareViewController *)self contentView];
  mainContentGuide2 = [contentView3 mainContentGuide];
  centerYAnchor2 = [mainContentGuide2 centerYAnchor];
  v69 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v93[3] = v69;
  leadingAnchor = [(PKGlyphView *)self->_nfcAnimationView leadingAnchor];
  contentView4 = [(TSPRXIdentityShareViewController *)self contentView];
  mainContentGuide3 = [contentView4 mainContentGuide];
  leadingAnchor2 = [mainContentGuide3 leadingAnchor];
  v64 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v93[4] = v64;
  trailingAnchor = [(PKGlyphView *)self->_nfcAnimationView trailingAnchor];
  contentView5 = [(TSPRXIdentityShareViewController *)self contentView];
  mainContentGuide4 = [contentView5 mainContentGuide];
  trailingAnchor2 = [mainContentGuide4 trailingAnchor];
  v59 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v93[5] = v59;
  topAnchor = [(PKGlyphView *)self->_nfcAnimationView topAnchor];
  contentView6 = [(TSPRXIdentityShareViewController *)self contentView];
  mainContentGuide5 = [contentView6 mainContentGuide];
  topAnchor2 = [mainContentGuide5 topAnchor];
  v50 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v93[6] = v50;
  bottomAnchor = [(PKGlyphView *)self->_nfcAnimationView bottomAnchor];
  contentView7 = [(TSPRXIdentityShareViewController *)self contentView];
  mainContentGuide6 = [contentView7 mainContentGuide];
  bottomAnchor2 = [mainContentGuide6 bottomAnchor];
  v55 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v93[7] = v55;
  v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:8];
  [v57 activateConstraints:v56];

  objc_destroyWeak(&v84);
  objc_destroyWeak(&v86);
  objc_destroyWeak(&v88);
  objc_destroyWeak(&v90);
  objc_destroyWeak(&location);
}

void __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 _maybeFlowCompleted:{objc_msgSend(v1, "NFCTransferStatus")}];
}

void __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadScreen];
}

void __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unlockScreen];
}

void __47__TSPRXIdentityShareViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 _maybeFlowCompleted:{objc_msgSend(v1, "NFCTransferStatus")}];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = TSPRXIdentityShareViewController;
  [(TSPRXIdentityShareViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v12.receiver = self;
  v12.super_class = TSPRXIdentityShareViewController;
  [(TSPRXIdentityShareViewController *)&v12 viewWillDisappear:disappear];
  v4 = _TSLogDomain([(TSPRXIdentityShareViewController *)self _unregisterLockState]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(TSPRXIdentityShareViewController *)v4 viewWillDisappear:v5, v6, v7, v8, v9, v10, v11];
  }

  [(TSPRXIdentityShareViewController *)self _stopNFCIdentityShare];
}

- (void)_reloadScreen
{
  [(PKGlyphView *)self->_nfcAnimationView setState:9 animated:1 completionHandler:0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setSubtitle:v6];

  [(TSPRXIdentityShareViewController *)self _updateCurrentAction:self->_cancelAction];
  self->_NFCTransferStatus = 1;

  [(TSPRXIdentityShareViewController *)self _startNFCIdentityShare];
}

- (void)_successIdentityShare
{
  [(PKGlyphView *)self->_nfcAnimationView setColorMode:2 animated:1];
  [(PKGlyphView *)self->_nfcAnimationView setState:11 animated:1 completionHandler:0];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_SUCCESS_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setTitle:v4];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_SUCCESS_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setSubtitle:v6];

  [(TSPRXIdentityShareViewController *)self _updateCurrentAction:self->_continueAction];
  self->_NFCTransferStatus = 2;

  AudioServicesPlaySystemSoundWithCompletion(0x488u, 0);
}

- (void)_failIdentityShare
{
  [(PKGlyphView *)self->_nfcAnimationView setColorMode:3 animated:1];
  [(PKGlyphView *)self->_nfcAnimationView setState:10 animated:1 completionHandler:0];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark"];
  v4 = [MEMORY[0x277D755D0] configurationWithPointSize:70.0];
  v5 = [v3 imageByApplyingSymbolConfiguration:v4];
  primaryColor = [(PKGlyphView *)self->_nfcAnimationView primaryColor];
  v14 = [v5 _flatImageWithColor:primaryColor];

  nfcAnimationView = self->_nfcAnimationView;
  v8 = v14;
  cGImage = [v14 CGImage];
  [v14 alignmentRectInsets];
  [(PKGlyphView *)nfcAnimationView setCustomImage:cGImage withAlignmentEdgeInsets:?];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_FAIL_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setTitle:v11];

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"PRXCARD_IN_STORE_ESIM_FAIL_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXIdentityShareViewController *)self setSubtitle:v13];

  [(TSPRXIdentityShareViewController *)self _updateCurrentAction:self->_retryAction];
  self->_NFCTransferStatus = 3;
  AudioServicesPlaySystemSoundWithCompletion(0x576u, 0);
}

- (void)_startNFCIdentityShare
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController _startNFCIdentityShare]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, self, a3, "[Db] Start NFC @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __58__TSPRXIdentityShareViewController__startNFCIdentityShare__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _failIdentityShare];
  }

  else
  {
    [WeakRetained _successIdentityShare];
  }
}

- (void)_stopNFCIdentityShare
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController _stopNFCIdentityShare]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, self, a3, "[Db] Stop NFC @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_unlockScreen
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController _unlockScreen]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, self, a3, "[Db] requesting unlock @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__TSPRXIdentityShareViewController__unlockScreen__block_invoke(uint64_t a1, int a2)
{
  if (a2 || (v3 = +[TSUtilities isDeviceLocked], !v3))
  {
    if (!+[TSUtilities isDeviceLocked])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      [WeakRetained _unregisterLockState];

      v13 = objc_loadWeakRetained((a1 + 32));
      [v13 _reloadScreen];
    }
  }

  else
  {
    v4 = _TSLogDomain(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __49__TSPRXIdentityShareViewController__unlockScreen__block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

- (void)_registerLockState
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSPRXIdentityShareViewController _registerLockState]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]unable to register @%s", &v1, 0xCu);
}

void __54__TSPRXIdentityShareViewController__registerLockState__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = _TSLogDomain(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __54__TSPRXIdentityShareViewController__registerLockState__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 _maybeFlowCompleted:{objc_msgSend(v11, "NFCTransferStatus")}];
}

- (void)_unregisterLockState
{
  springBoardLockStateNotifyToken = self->springBoardLockStateNotifyToken;
  if (springBoardLockStateNotifyToken != -1)
  {
    notify_cancel(springBoardLockStateNotifyToken);
    self->springBoardLockStateNotifyToken = -1;
  }
}

- (void)_maybeFlowCompleted:(unint64_t)completed
{
  v5 = _TSLogDomain(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(TSPRXIdentityShareViewController *)completed _maybeFlowCompleted:v5];
  }

  [(TSPRXIdentityShareViewController *)self _stopNFCIdentityShare];
  if (completed == 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained viewControllerDidComplete:self];
  }

  else
  {
    [(TSPRXIdentityShareViewController *)self dismissViewControllerWithTransition:7 completion:0];
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillDisappear:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController viewWillDisappear:]";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] Stop NFC in viewWillDisappear @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __49__TSPRXIdentityShareViewController__unlockScreen__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController _unlockScreen]_block_invoke";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] unlock canceled @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__TSPRXIdentityShareViewController__registerLockState__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[TSPRXIdentityShareViewController _registerLockState]_block_invoke";
  OUTLINED_FUNCTION_0_3(&dword_262AA8000, a1, a3, "[Db] Stop NFC in device lock handler @%s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_maybeFlowCompleted:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  v3 = "[TSPRXIdentityShareViewController _maybeFlowCompleted:]";
  v4 = 2048;
  v5 = a1;
  v6 = 2080;
  v7 = "[TSPRXIdentityShareViewController _maybeFlowCompleted:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] %s with completionType:%ld @%s", &v2, 0x20u);
}

@end