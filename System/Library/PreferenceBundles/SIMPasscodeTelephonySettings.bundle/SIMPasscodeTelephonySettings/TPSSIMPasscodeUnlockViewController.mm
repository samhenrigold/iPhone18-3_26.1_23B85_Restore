@interface TPSSIMPasscodeUnlockViewController
- (NSNumberFormatter)numberFormatter;
- (TPSSIMPasscodeUnlockViewController)initWithSubscriberController:(id)controller forLocking:(BOOL)locking;
- (TPSSIMPasscodeUnlockViewControllerDelegate)delegate;
- (void)dealloc;
- (void)loadView;
- (void)setPINViewControllerFinished:(id)finished success:(BOOL)success oldPIN:(id)n newPIN:(id)iN;
- (void)subscriberController:(id)controller SIMLockDidCompleteWithResult:(BOOL)result;
@end

@implementation TPSSIMPasscodeUnlockViewController

- (TPSSIMPasscodeUnlockViewController)initWithSubscriberController:(id)controller forLocking:(BOOL)locking
{
  lockingCopy = locking;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = TPSSIMPasscodeUnlockViewController;
  v8 = [(TPSSIMPasscodeUnlockViewController *)&v24 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_subscriberController, controller);
    [(TPSSubscriberTelephonyController *)v9->_subscriberController addDelegate:v9 queue:&_dispatch_main_q];
    v9->_locking = lockingCopy;
    v10 = [[TPSetPINViewController alloc] initForNewPINWithMinLength:4 maxLength:8 confirmPIN:0];
    v11 = objc_alloc_init(UIView);
    v12 = +[UIColor blackColor];
    [v11 setBackgroundColor:v12];

    [v10 setCustomBackgroundView:v11];
    [v10 setDelegate:v9];
    v13 = [NSNumber numberWithInteger:[(TPSSubscriberTelephonyController *)v9->_subscriberController SIMPasscodeRemainingAttempts]];
    v14 = TPSPasscodeStringForRemainingSIMPINAttempts(v13, lockingCopy, 0);
    [v10 setPromptTextForNewPIN:v14];

    if (lockingCopy)
    {
      v15 = @"LOCKING";
    }

    else
    {
      v15 = @"UNLOCKING";
    }

    v16 = [TPSSIMPasscodeLocalizedString localizedStringForKey:v15];
    [v10 setPromptTextForSavingPIN:v16];

    navigationItem = [v10 navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    navigationItem2 = [(TPSSIMPasscodeUnlockViewController *)v9 navigationItem];
    [navigationItem2 setLeftBarButtonItem:leftBarButtonItem];

    navigationItem3 = [v10 navigationItem];
    rightBarButtonItem = [navigationItem3 rightBarButtonItem];
    navigationItem4 = [(TPSSIMPasscodeUnlockViewController *)v9 navigationItem];
    [navigationItem4 setRightBarButtonItem:rightBarButtonItem];

    [(TPSSIMPasscodeUnlockViewController *)v9 setSetPINViewController:v10];
    [(TPSSIMPasscodeUnlockViewController *)v9 addChildViewController:v10];
  }

  return v9;
}

- (void)dealloc
{
  [(TPSetPINViewController *)self->_setPINViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = TPSSIMPasscodeUnlockViewController;
  [(TPSSIMPasscodeUnlockViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [UIView alloc];
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v7 = [v3 initWithFrame:?];

  setPINViewController = [(TPSSIMPasscodeUnlockViewController *)self setPINViewController];
  view = [setPINViewController view];
  [v7 addSubview:view];

  [(TPSSIMPasscodeUnlockViewController *)self setView:v7];
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(NSNumberFormatter);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (void)setPINViewControllerFinished:(id)finished success:(BOOL)success oldPIN:(id)n newPIN:(id)iN
{
  successCopy = success;
  nCopy = n;
  iNCopy = iN;
  v12 = TPSSIMPasscodeLog(iNCopy, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109634;
    *v20 = successCopy;
    *&v20[4] = 2112;
    *&v20[6] = nCopy;
    v21 = 2112;
    v22 = iNCopy;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Asked to set PIN view controller finished with success: %d oldPIN: %@ newPIN: %@", &v19, 0x1Cu);
  }

  if (successCopy)
  {
    v15 = TPSSIMPasscodeLog(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      isLocking = [(TPSSIMPasscodeUnlockViewController *)self isLocking];
      v17 = @"unlock";
      if (isLocking)
      {
        v17 = @"lock";
      }

      v19 = 138412290;
      *v20 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Issuing request to %@ the SIM.", &v19, 0xCu);
    }

    subscriberController = [(TPSSIMPasscodeUnlockViewController *)self subscriberController];
    [subscriberController setSIMLockEnabled:-[TPSSIMPasscodeUnlockViewController isLocking](self pin:{"isLocking"), iNCopy}];
  }

  else
  {
    subscriberController = [(TPSSIMPasscodeUnlockViewController *)self delegate];
    [subscriberController SIMPINUnlockViewControllerCanceled:self];
  }
}

- (void)subscriberController:(id)controller SIMLockDidCompleteWithResult:(BOOL)result
{
  resultCopy = result;
  controllerCopy = controller;
  v8 = TPSSIMPasscodeLog(controllerCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"unsuccessful";
    if (resultCopy)
    {
      v9 = @"successful";
    }

    v15 = 138412290;
    v16 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "SIM lock save request was %@.", &v15, 0xCu);
  }

  if (resultCopy)
  {
    delegate = [(TPSSIMPasscodeUnlockViewController *)self delegate];
    [delegate SIMPINUnlockViewController:self finishedSuccessfullyWithSIMLocked:{objc_msgSend(controllerCopy, "isSIMPasscodeLockEnabled")}];
  }

  else
  {
    sIMPasscodeRemainingAttempts = [controllerCopy SIMPasscodeRemainingAttempts];
    if (sIMPasscodeRemainingAttempts < 1)
    {
      delegate = [(TPSSIMPasscodeUnlockViewController *)self delegate];
      [delegate SIMPINUnlockViewControllerFailedWithZeroAttemptsRemaining:self];
    }

    else
    {
      v12 = [NSNumber numberWithInteger:sIMPasscodeRemainingAttempts];
      v13 = TPSPasscodeStringForRemainingSIMPINAttempts(v12, [(TPSSIMPasscodeUnlockViewController *)self isLocking], 1);
      setPINViewController = [(TPSSIMPasscodeUnlockViewController *)self setPINViewController];
      [setPINViewController setPromptTextForNewPIN:v13];

      delegate = [(TPSSIMPasscodeUnlockViewController *)self setPINViewController];
      [delegate resetWithErrorPrompt:0];
    }
  }
}

- (TPSSIMPasscodeUnlockViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end