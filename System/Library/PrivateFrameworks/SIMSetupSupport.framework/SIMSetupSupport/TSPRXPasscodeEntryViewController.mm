@interface TSPRXPasscodeEntryViewController
- (TSPRXPasscodeEntryViewController)initWithBtDevice:(id)device passcodeType:(int)type;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_handlePINCodeUpdate:(id)update;
- (void)retry;
@end

@implementation TSPRXPasscodeEntryViewController

- (TSPRXPasscodeEntryViewController)initWithBtDevice:(id)device passcodeType:(int)type
{
  deviceCopy = device;
  v23.receiver = self;
  v23.super_class = TSPRXPasscodeEntryViewController;
  v8 = [(TSPRXPasscodeEntryViewController *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_btDevice, device);
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"PRXCARD_AUTHENTICATION_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    [(TSPRXPasscodeEntryViewController *)v9 setTitle:v11];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"PRXCARD_AUTHENTICATION_SUBTITLE" value:&stru_28753DF48 table:@"Localizable"];
    [(TSPRXPasscodeEntryViewController *)v9 setSubtitle:v13];

    [(TSPRXPasscodeEntryViewController *)v9 setDismissalType:3];
    v14 = [(PRXPasscodeEntryViewController *)v9 setNumberOfDigits:6];
    v15 = type + 1;
    if ((type + 1) <= 0xA)
    {
      if (((1 << v15) & 0x7C1) != 0)
      {
        v16 = _TSLogDomain(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [TSPRXPasscodeEntryViewController initWithBtDevice:type passcodeType:v16];
        }

        goto LABEL_12;
      }

      if (((1 << v15) & 0x24) != 0)
      {
        v17 = v9;
        v18 = 4;
LABEL_11:
        [(PRXPasscodeEntryViewController *)v17 setNumberOfDigits:v18];
        goto LABEL_12;
      }

      if (type == 3)
      {
        v17 = v9;
        v18 = 8;
        goto LABEL_11;
      }
    }

LABEL_12:
    objc_initWeak(&location, v9);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __66__TSPRXPasscodeEntryViewController_initWithBtDevice_passcodeType___block_invoke;
    v20[3] = &unk_279B45108;
    objc_copyWeak(&v21, &location);
    [(PRXPasscodeEntryViewController *)v9 setTextEntryCompletionHandler:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __66__TSPRXPasscodeEntryViewController_initWithBtDevice_passcodeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePINCodeUpdate:v3];
}

- (void)retry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__TSPRXPasscodeEntryViewController_retry__block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __41__TSPRXPasscodeEntryViewController_retry__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) passcodeEntryView];
  [v1 setText:&stru_28753DF48];
}

- (void)_handlePINCodeUpdate:(id)update
{
  v10 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = _TSLogDomain(updateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = updateCopy;
    v8 = 2080;
    v9 = "[TSPRXPasscodeEntryViewController _handlePINCodeUpdate:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "auth code = %@ @%s", &v6, 0x16u);
  }

  [(SSProximityDevice *)self->_btDevice verifyPIN:updateCopy];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)initWithBtDevice:(int)a1 passcodeType:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 67109378;
  v2[1] = a1;
  v3 = 2080;
  v4 = "[TSPRXPasscodeEntryViewController initWithBtDevice:passcodeType:]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]unsupported passcode type : %d @%s", v2, 0x12u);
}

@end