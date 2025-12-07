@interface TSProximityPINCodeViewController
- (TSProximityPINCodeViewController)initWithPIN:(id)n;
- (TSSIMSetupFlowDelegate)delegate;
- (void)updatePIN:(id)n;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSProximityPINCodeViewController

- (TSProximityPINCodeViewController)initWithPIN:(id)n
{
  nCopy = n;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PROXIMITY_TRANSFER_PIN_CODE_DETAIL" value:&stru_28753DF48 table:@"Localizable"];

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PROXIMITY_TRANSFER_PIN_CODE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v12.receiver = self;
  v12.super_class = TSProximityPINCodeViewController;
  v10 = [(TSProximityPINCodeViewController *)&v12 initWithTitle:v9 detailText:v7 icon:0 contentLayout:2];

  if (v10)
  {
    objc_storeStrong(&v10->_pin, n);
  }

  return v10;
}

- (void)updatePIN:(id)n
{
  nCopy = n;
  objc_storeStrong(&self->_pin, n);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__TSProximityPINCodeViewController_updatePIN___block_invoke;
  v7[3] = &unk_279B44490;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __46__TSProximityPINCodeViewController_updatePIN___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) pinCodeLabel];
  [v2 setText:v1];
}

- (void)viewDidLoad
{
  v27[3] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = TSProximityPINCodeViewController;
  [(TSOBWelcomeController *)&v26 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  pinCodeLabel = self->_pinCodeLabel;
  self->_pinCodeLabel = v4;

  [(UILabel *)self->_pinCodeLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)self->_pinCodeLabel setTextColor:labelColor];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [(UILabel *)self->_pinCodeLabel setBackgroundColor:systemBackgroundColor];

  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  [(UILabel *)self->_pinCodeLabel setFont:v8];

  [(UILabel *)self->_pinCodeLabel setTextAlignment:1];
  [(UILabel *)self->_pinCodeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_pinCodeLabel setContentHuggingPriority:1 forAxis:v9];
  [(UILabel *)self->_pinCodeLabel setText:self->_pin];
  contentView = [(TSProximityPINCodeViewController *)self contentView];
  [contentView addSubview:self->_pinCodeLabel];

  v21 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UILabel *)self->_pinCodeLabel centerXAnchor];
  contentView2 = [(TSProximityPINCodeViewController *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v22 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v27[0] = v22;
  centerYAnchor = [(UILabel *)self->_pinCodeLabel centerYAnchor];
  view = [(TSProximityPINCodeViewController *)self view];
  centerYAnchor2 = [view centerYAnchor];
  v14 = [centerYAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor2];
  v27[1] = v14;
  topAnchor = [(UILabel *)self->_pinCodeLabel topAnchor];
  headerView = [(TSProximityPINCodeViewController *)self headerView];
  bottomAnchor = [headerView bottomAnchor];
  v18 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v27[2] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
  [v21 activateConstraints:v19];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained setCancelNavigationBarItems:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  self->_isIdleTimerDisabled = [mEMORY[0x277D75128] isIdleTimerDisabled];

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 setIdleTimerDisabled:1];

  v7.receiver = self;
  v7.super_class = TSProximityPINCodeViewController;
  [(TSProximityPINCodeViewController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setIdleTimerDisabled:self->_isIdleTimerDisabled];

  v6.receiver = self;
  v6.super_class = TSProximityPINCodeViewController;
  [(OBBaseWelcomeController *)&v6 viewDidDisappear:disappearCopy];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end