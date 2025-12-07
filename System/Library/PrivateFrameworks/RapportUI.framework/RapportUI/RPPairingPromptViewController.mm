@interface RPPairingPromptViewController
+ (id)instantiateViewController;
- (void)_retryTimer;
- (void)handlePINEntered:(id)entered;
- (void)updateWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RPPairingPromptViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.RapportUI"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"RPPairingPrompt_iOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"PINEntry"];
  view = [v4 view];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = RPPairingPromptViewController;
  [(RPPairingPromptViewController *)&v6 viewWillAppear:appear];
  navigationController = [(RPPairingPromptViewController *)self navigationController];
  [(UIButton *)self->_cancelButton setHidden:navigationController != 0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__RPPairingPromptViewController_viewWillAppear___block_invoke;
  v5[3] = &unk_279AEC628;
  v5[4] = self;
  [(RPPINEntryView *)self->_pinEntryView setTextChangedHandler:v5];
  [(RPPINEntryView *)self->_pinEntryView becomeFirstResponder];
}

void __48__RPPairingPromptViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 length];
  v4 = [*(*(a1 + 32) + 1048) labels];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [*(a1 + 32) handlePINEntered:v6];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = RPPairingPromptViewController;
  [(RPPairingPromptViewController *)&v10 viewDidDisappear:disappear];
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    v5 = retryTimer;
    dispatch_source_cancel(v5);
    v6 = self->_retryTimer;
    self->_retryTimer = 0;
  }

  [(RPPINEntryView *)self->_pinEntryView setTextChangedHandler:0];
  tryPasswordHandler = self->_tryPasswordHandler;
  self->_tryPasswordHandler = 0;

  v8 = MEMORY[0x26670B920](self->_dismissHandler);
  dismissHandler = self->_dismissHandler;
  self->_dismissHandler = 0;

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)handlePINEntered:(id)entered
{
  enteredCopy = entered;
  [(RPPINEntryView *)self->_pinEntryView setDisabled:1];
  [(UIActivityIndicatorView *)self->_progressSpinner startAnimating];
  [(UIActivityIndicatorView *)self->_progressSpinner setHidden:0];
  v4 = RPUILocalizedString(@"AUTHENTICATING");
  [(UILabel *)self->_progressLabel setText:v4];

  [(UILabel *)self->_progressLabel setHidden:0];
  v5 = MEMORY[0x26670B920](self->_tryPasswordHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, enteredCopy);
  }
}

- (void)updateWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  if ((flags & 0x10000) != 0)
  {
    v6 = RPUILocalizedString(@"PAIR_RETRY_PIN");
    [(UILabel *)self->_subTitleLabel setText:v6];

    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UILabel *)self->_subTitleLabel setTextColor:systemRedColor];

    [(RPPINEntryView *)self->_pinEntryView setText:&stru_287405838];
  }

  if ((flags & 0x20000) != 0)
  {
    [(RPPINEntryView *)self->_pinEntryView setDisabled:1, *&seconds];
    [(UIActivityIndicatorView *)self->_progressSpinner startAnimating];
    [(UIActivityIndicatorView *)self->_progressSpinner setHidden:0];
    v8 = mach_absolute_time();
    self->_retryDeadlineTicks = SecondsToUpTicks() + v8;
    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v10 = retryTimer;
      dispatch_source_cancel(v10);
      v11 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    v13 = self->_retryTimer;
    self->_retryTimer = v12;

    v14 = self->_retryTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __65__RPPairingPromptViewController_updateWithFlags_throttleSeconds___block_invoke;
    handler[3] = &unk_279AEC5E0;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
  }

  else
  {
    self->_retryDeadlineTicks = 0;
  }

  [(RPPairingPromptViewController *)self _retryTimer];
}

- (void)_retryTimer
{
  v3 = mach_absolute_time();
  retryDeadlineTicks = self->_retryDeadlineTicks;
  if (retryDeadlineTicks > v3)
  {
    UpTicksToSecondsF();
    LODWORD(v10) = vcvtpd_s64_f64(v9);
    v18 = RPUILocalizedStringF(@"PAIR_RETRY_PROGRESS_FORMAT", v11, v12, v13, v14, v15, v16, v17, v10);
    p_progressLabel = &self->_progressLabel;
    [(UILabel *)*p_progressLabel setText:v18];
  }

  else
  {
    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v6 = retryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    [(RPPINEntryView *)self->_pinEntryView setDisabled:0];
    [(RPPINEntryView *)self->_pinEntryView setText:&stru_287405838];
    [(UIActivityIndicatorView *)self->_progressSpinner stopAnimating];
    [(UIActivityIndicatorView *)self->_progressSpinner setHidden:1];
    p_progressLabel = &self->_progressLabel;
  }

  v19 = *p_progressLabel;

  [(UILabel *)v19 setHidden:retryDeadlineTicks <= v3];
}

@end