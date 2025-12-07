@interface TSPRXDeviceUnlockViewController
- (TSPRXDeviceUnlockViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_handleLockState:(int)state;
- (void)_registerLockState;
- (void)_screenStateChanged;
- (void)_startSystemMonitor;
- (void)_stopSystemMonitor;
- (void)_unlockScreen;
- (void)_unregisterLockState;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation TSPRXDeviceUnlockViewController

- (TSPRXDeviceUnlockViewController)init
{
  v5.receiver = self;
  v5.super_class = TSPRXDeviceUnlockViewController;
  v2 = [(TSPRXDeviceUnlockViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSPRXDeviceUnlockViewController *)v2 _registerLockState];
    [(TSPRXDeviceUnlockViewController *)v3 _startSystemMonitor];
  }

  return v3;
}

- (void)dealloc
{
  [(TSPRXDeviceUnlockViewController *)self _stopSystemMonitor];
  [(TSPRXDeviceUnlockViewController *)self _unregisterLockState];
  v3.receiver = self;
  v3.super_class = TSPRXDeviceUnlockViewController;
  [(TSPRXDeviceUnlockViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v60[5] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = TSPRXDeviceUnlockViewController;
  [(TSPRXDeviceUnlockViewController *)&v59 viewDidLoad];
  v3 = +[TSUtilities isPad];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
  {
    v6 = @"TRANSFER_SIM";
  }

  else
  {
    v6 = @"PRXCARD_START_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXDeviceUnlockViewController *)self setTitle:v7];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PRXCARD_START_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
  [(TSPRXDeviceUnlockViewController *)self setSubtitle:v9];

  [(TSPRXDeviceUnlockViewController *)self setDismissalType:3];
  v55 = [MEMORY[0x277D755B8] systemImageNamed:@"antenna.radiowaves.left.and.right"];
  v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v55];
  radioImageView = self->_radioImageView;
  self->_radioImageView = v10;

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(UIImageView *)self->_radioImageView setTintColor:systemBlueColor];

  [(UIImageView *)self->_radioImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TSPRXDeviceUnlockViewController *)self contentView];
  [contentView addSubview:self->_radioImageView];

  objc_initWeak(&location, self);
  v14 = MEMORY[0x277D432F0];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"DEVICE_UNLOCK_TO_CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __46__TSPRXDeviceUnlockViewController_viewDidLoad__block_invoke;
  v56[3] = &unk_279B448A0;
  objc_copyWeak(&v57, &location);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v56];
  action = self->_action;
  self->_action = v17;

  v19 = [(TSPRXDeviceUnlockViewController *)self addAction:self->_action];
  contentView2 = [(TSPRXDeviceUnlockViewController *)self contentView];
  [contentView2 bounds];
  v22 = v21;
  v24 = v23;

  [v55 size];
  v26 = v25;
  [v55 size];
  v28 = v24 * 0.3 / v27;
  if (v22 * 0.3 / v26 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v22 * 0.3 / v26;
  }

  [v55 size];
  v31 = v30;
  [v55 size];
  v33 = v32;
  v43 = MEMORY[0x277CCAAD0];
  topAnchor = [(UIImageView *)self->_radioImageView topAnchor];
  contentView3 = [(TSPRXDeviceUnlockViewController *)self contentView];
  mainContentGuide = [contentView3 mainContentGuide];
  topAnchor2 = [mainContentGuide topAnchor];
  v50 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v60[0] = v50;
  centerXAnchor = [(UIImageView *)self->_radioImageView centerXAnchor];
  contentView4 = [(TSPRXDeviceUnlockViewController *)self contentView];
  mainContentGuide2 = [contentView4 mainContentGuide];
  centerXAnchor2 = [mainContentGuide2 centerXAnchor];
  v45 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v60[1] = v45;
  centerYAnchor = [(UIImageView *)self->_radioImageView centerYAnchor];
  contentView5 = [(TSPRXDeviceUnlockViewController *)self contentView];
  mainContentGuide3 = [contentView5 mainContentGuide];
  centerYAnchor2 = [mainContentGuide3 centerYAnchor];
  v37 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v60[2] = v37;
  widthAnchor = [(UIImageView *)self->_radioImageView widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:v29 * v31];
  v60[3] = v39;
  heightAnchor = [(UIImageView *)self->_radioImageView heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:v29 * v33];
  v60[4] = v41;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:5];
  [v43 activateConstraints:v42];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
}

void __46__TSPRXDeviceUnlockViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unlockScreen];
}

- (void)_unlockScreen
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[TSPRXDeviceUnlockViewController _unlockScreen]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "requesting unlock @%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v4, buf);
  SBSRequestPasscodeUnlockUI();
  objc_destroyWeak(&v4);
  objc_destroyWeak(buf);
}

void __48__TSPRXDeviceUnlockViewController__unlockScreen__block_invoke(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2 || (v3 = +[TSUtilities isDeviceLocked], !v3))
  {
    if (+[TSUtilities isDeviceLocked])
    {
      return;
    }

    v7 = objc_opt_new();
    v8 = MEMORY[0x277D0AD60];
    v12 = *MEMORY[0x277D0AC70];
    v13 = MEMORY[0x277CBEC38];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v10 = [v8 optionsWithDictionary:v9];
    [v7 openApplication:@"com.apple.springboard" withOptions:v10 completion:&__block_literal_global_2];

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _unregisterLockState];

    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 delegate];
    [v6 viewControllerDidComplete:*(a1 + 32)];
  }

  else
  {
    v4 = _TSLogDomain(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[TSPRXDeviceUnlockViewController _unlockScreen]_block_invoke";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "unlock canceled @%s", buf, 0xCu);
    }

    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 delegate];
    [v6 userDidTapCancel];
  }
}

void __48__TSPRXDeviceUnlockViewController__unlockScreen__block_invoke_58(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = _TSLogDomain(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__TSPRXDeviceUnlockViewController__unlockScreen__block_invoke_58_cold_1(v4, v5);
    }
  }
}

- (void)_registerLockState
{
  v19 = *MEMORY[0x277D85DE8];
  self->springBoardLockStateNotifyToken = -1;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__TSPRXDeviceUnlockViewController__registerLockState__block_invoke;
  v10[3] = &unk_279B44910;
  objc_copyWeak(&v11, &location);
  v3 = MEMORY[0x2667315D0](v10);
  v4 = *MEMORY[0x277D67770];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  v7 = notify_register_dispatch(v4, &self->springBoardLockStateNotifyToken, v5, v3);

  if (v7)
  {
    v9 = _TSLogDomain(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v14 = v7;
      v15 = 2080;
      v16 = v4;
      v17 = 2080;
      v18 = "[TSPRXDeviceUnlockViewController _registerLockState]";
      _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Error %u settingup notification handler for %s @%s", buf, 0x1Cu);
    }
  }

  else
  {
    v3[2](v3, self->springBoardLockStateNotifyToken);
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __53__TSPRXDeviceUnlockViewController__registerLockState__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLockState:a2];
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

- (void)_handleLockState:(int)state
{
  v17 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state(state, &state64);
  if (state)
  {
    v5 = 0;
  }

  else
  {
    v5 = state64 == 0;
  }

  v6 = v5;
  v7 = _TSLogDomain(state);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "locked";
    if (v6)
    {
      v8 = "unlocked";
    }

    *buf = 136315650;
    v12 = v8;
    v13 = 2048;
    v14 = state64;
    v15 = 2080;
    v16 = "[TSPRXDeviceUnlockViewController _handleLockState:]";
    _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "SB lock state : %s, raw state : %llu @%s", buf, 0x20u);
  }

  if (v6)
  {
    [(TSPRXDeviceUnlockViewController *)self _unregisterLockState];
    delegate = [(TSPRXDeviceUnlockViewController *)self delegate];
    [delegate viewControllerDidComplete:self];
  }
}

- (void)_startSystemMonitor
{
  if (!self->_systemMonitor)
  {
    v3 = objc_alloc_init(MEMORY[0x277D02938]);
    systemMonitor = self->_systemMonitor;
    self->_systemMonitor = v3;

    [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:MEMORY[0x277D85CD0]];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __54__TSPRXDeviceUnlockViewController__startSystemMonitor__block_invoke;
    v8 = &unk_279B44400;
    objc_copyWeak(&v9, &location);
    [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:&v5];
    [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:&__block_literal_global_67, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __54__TSPRXDeviceUnlockViewController__startSystemMonitor__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _screenStateChanged];
}

void __54__TSPRXDeviceUnlockViewController__startSystemMonitor__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "[TSPRXDeviceUnlockViewController _startSystemMonitor]_block_invoke_2";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_INFO, "[I] screen on monitor activated @%s", &v3, 0xCu);
  }
}

- (void)_stopSystemMonitor
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[TSPRXDeviceUnlockViewController _stopSystemMonitor]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_INFO, "[I] stop screen on monitor @%s", &v5, 0xCu);
  }

  [(CUSystemMonitor *)self->_systemMonitor invalidate];
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = 0;
}

- (void)_screenStateChanged
{
  v8 = *MEMORY[0x277D85DE8];
  screenOn = [(CUSystemMonitor *)self->_systemMonitor screenOn];
  if ((screenOn & 1) == 0)
  {
    v4 = _TSLogDomain(screenOn);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[TSPRXDeviceUnlockViewController _screenStateChanged]";
      _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "app enter background, dismiss. @%s", &v6, 0xCu);
    }

    delegate = [(TSPRXDeviceUnlockViewController *)self delegate];
    [delegate viewControllerDidComplete:self];
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __48__TSPRXDeviceUnlockViewController__unlockScreen__block_invoke_58_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412546;
  v5 = v3;
  v6 = 2080;
  v7 = "[TSPRXDeviceUnlockViewController _unlockScreen]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]failed to move to home screen: %@ @%s", &v4, 0x16u);
}

@end