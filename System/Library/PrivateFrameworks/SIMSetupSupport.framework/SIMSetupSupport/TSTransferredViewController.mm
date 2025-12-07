@interface TSTransferredViewController
- (TSSIMSetupFlowDelegate)delegate;
- (TSTransferredViewController)initWithTransferredPlan:(id)plan;
- (void)_doneButtonTapped;
- (void)_skipButtonTapped;
- (void)viewDidLoad;
@end

@implementation TSTransferredViewController

- (TSTransferredViewController)initWithTransferredPlan:(id)plan
{
  planCopy = plan;
  v5 = [planCopy objectForKeyedSubscript:@"planItem"];
  phoneNumber = [v5 phoneNumber];
  formattedPhoneNumber = [phoneNumber formattedPhoneNumber];

  v8 = [planCopy objectForKeyedSubscript:@"deviceInfo"];
  deviceName = [v8 deviceName];

  v11 = _TSLogDomain(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(TSTransferredViewController *)planCopy initWithTransferredPlan:v11];
  }

  if ([formattedPhoneNumber length])
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v13 localizedStringForKey:@"PLAN_TRANSFERRED_DETAIL_%@" value:&stru_28753DF48 table:@"Localizable"];
    v15 = [v12 stringWithFormat:v14, formattedPhoneNumber];
  }

  else
  {
    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v13 localizedStringForKey:@"PLAN_TRANSFERRED_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"PLAN_TRANSFERRED_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v20.receiver = self;
  v20.super_class = TSTransferredViewController;
  v18 = [(TSTransferredViewController *)&v20 initWithTitle:v17 detailText:v15 icon:0];

  return v18;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = TSTransferredViewController;
  [(TSOBWelcomeController *)&v11 viewDidLoad];
  boldButton = [MEMORY[0x277D37618] boldButton];
  [boldButton addTarget:self action:sel__doneButtonTapped forControlEvents:64];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
  [boldButton setTitle:v5 forState:0];

  buttonTray = [(TSTransferredViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton addTarget:self action:sel__skipButtonTapped forControlEvents:64];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"NOT_NOW" value:&stru_28753DF48 table:@"Localizable"];
  [linkButton setTitle:v9 forState:0];

  buttonTray2 = [(TSTransferredViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];
}

- (void)_skipButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (void)_doneButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithTransferredPlan:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSTransferredViewController initWithTransferredPlan:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] transferred plan: %@ @%s", &v2, 0x16u);
}

@end