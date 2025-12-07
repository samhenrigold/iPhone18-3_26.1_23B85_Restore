@interface NPKPaymentWebServiceStandaloneTargetDevice
+ (id)standalonePaymentWebServiceWithDelegate:(id)delegate;
- (NPKPaymentWebServiceStandaloneTargetDeviceDelegate)delegate;
- (void)endRequiringUpgradedPasscodeIfNecessary;
- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion;
- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)policy;
@end

@implementation NPKPaymentWebServiceStandaloneTargetDevice

+ (id)standalonePaymentWebServiceWithDelegate:(id)delegate
{
  v3 = MEMORY[0x277D380F0];
  delegateCopy = delegate;
  v5 = objc_alloc_init(v3);
  sharedPaymentWebServiceContext = [v5 sharedPaymentWebServiceContext];
  v7 = sharedPaymentWebServiceContext;
  if (sharedPaymentWebServiceContext)
  {
    v8 = sharedPaymentWebServiceContext;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277D38180]);
  }

  v9 = v8;

  v10 = objc_alloc_init(NPKPaymentWebServiceStandaloneTargetDevice);
  [(NPKPaymentWebServiceStandaloneTargetDevice *)v10 setDelegate:delegateCopy];

  v11 = objc_alloc(MEMORY[0x277D38170]);
  mEMORY[0x277D38298] = [MEMORY[0x277D38298] sharedPaymentWebServiceArchiver];
  v13 = [v11 initWithContext:v9 targetDevice:v10 archiver:mEMORY[0x277D38298]];

  return v13;
}

- (void)enforceUpgradedPasscodePolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  delegate = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];
    [delegate2 standaloneTargetDevice:self requestsEnforceUpgradedPasscodePolicyWithCompletion:completionCopy];
  }

  else
  {
    v8 = pk_Payment_log(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = pk_Payment_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Target device: No delegate to enforce upgraded passcode policy!", v13, 2u);
      }
    }

    if (completionCopy)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1000 userInfo:0];
      completionCopy[2](completionCopy, 0, v12);
    }
  }
}

- (void)startRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:(BOOL)policy
{
  policyCopy = policy;
  delegate = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];
    [delegate2 standaloneTargetDevice:self requestsStartRequiringUpgradedPasscodeWithPasscodeMeetsPolicy:policyCopy];
  }

  else
  {
    v7 = pk_Payment_log(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v10 = pk_Payment_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Warning: Target device: No delegate to start requiring upgraded passcode!", buf, 2u);
      }
    }
  }
}

- (void)endRequiringUpgradedPasscodeIfNecessary
{
  delegate = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];

  if (delegate)
  {
    delegate2 = [(NPKPaymentWebServiceStandaloneTargetDevice *)self delegate];
    [delegate2 standaloneTargetDeviceRequestsEndRequiringUpgradedPasscodeIfNecessary:self];
  }

  else
  {
    v5 = pk_Payment_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Warning: Target device: No delegate to end requiring upgraded passcode!", buf, 2u);
      }
    }
  }
}

- (NPKPaymentWebServiceStandaloneTargetDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end