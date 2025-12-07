@interface SBSCaptureButtonRestrictionService
- (SBSCaptureButtonRestrictionService)init;
- (id)acquireCaptureButtonSuppressionAssertionWithOptions:(unint64_t)options reason:(id)reason;
- (void)init;
- (void)invalidate;
@end

@implementation SBSCaptureButtonRestrictionService

- (SBSCaptureButtonRestrictionService)init
{
  v29.receiver = self;
  v29.super_class = SBSCaptureButtonRestrictionService;
  v3 = [(SBSCaptureButtonRestrictionService *)&v29 init];
  if (v3)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

    if (v6)
    {
      [(SBSCaptureButtonRestrictionService *)a2 init];
    }

    v3->_isValid = 1;
    objc_initWeak(&location, v3);
    v7 = MEMORY[0x1E698E658];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __42__SBSCaptureButtonRestrictionService_init__block_invoke;
    v26[3] = &unk_1E735F778;
    objc_copyWeak(&v27, &location);
    v8 = [v7 assertionWithIdentifier:@"CaptureButtonInhibitAction" stateDidChangeHandler:v26];
    inhibitActionAssertion = v3->_inhibitActionAssertion;
    v3->_inhibitActionAssertion = v8;

    v10 = v3->_inhibitActionAssertion;
    v12 = SBLogCameraCaptureRestriction(v11);
    [(BSCompoundAssertion *)v10 setLog:v12];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v3->_connectionQueue;
    v3->_connectionQueue = v14;

    v16 = MEMORY[0x1E698F498];
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v18 = +[SBSCaptureButtonRestrictionServiceSpecification identifier];
    v19 = [v16 endpointForMachName:defaultShellMachName service:v18 instance:0];

    v20 = [MEMORY[0x1E698F490] connectionWithEndpoint:v19];
    connection = v3->_connection;
    v3->_connection = v20;

    v22 = v3->_connection;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __42__SBSCaptureButtonRestrictionService_init__block_invoke_2;
    v24[3] = &unk_1E735ED88;
    v25 = v3;
    [(BSServiceConnection *)v22 configureConnection:v24];
    [(BSServiceConnection *)v3->_connection activate];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __42__SBSCaptureButtonRestrictionService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 context];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SBSCombineSupressionOptions_block_invoke;
  v10[3] = &unk_1E735F7A0;
  v10[4] = &v11;
  [v5 bs_each:v10];
  v6 = v12[3];
  _Block_object_dispose(&v11, 8);

  v7 = [WeakRetained[1] remoteTarget];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isActive")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  [v7 setCaptureButtonActionInhibited:v8 options:v9];
}

void __42__SBSCaptureButtonRestrictionService_init__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSCaptureButtonRestrictionServiceSpecification interface];
  [v5 setInterface:v3];

  [v5 setInterfaceTarget:*(a1 + 32)];
  v4 = +[SBSCaptureButtonRestrictionServiceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setTargetQueue:*(*(a1 + 32) + 16)];
  [v5 setInvalidationHandler:&__block_literal_global_11];
  [v5 setInterruptionHandler:&__block_literal_global_21];
}

void __42__SBSCaptureButtonRestrictionService_init__block_invoke_3(uint64_t a1)
{
  v1 = SBLogCameraCaptureRestriction(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __42__SBSCaptureButtonRestrictionService_init__block_invoke_3_cold_1(v1);
  }
}

void __42__SBSCaptureButtonRestrictionService_init__block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogCameraCaptureRestriction(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __42__SBSCaptureButtonRestrictionService_init__block_invoke_19_cold_1(v3);
  }

  [v2 activate];
}

- (void)invalidate
{
  if (self->_isValid)
  {
    [(BSServiceConnection *)self->_connection invalidate];
    connection = self->_connection;
    self->_connection = 0;

    [(BSCompoundAssertion *)self->_inhibitActionAssertion invalidate];
    inhibitActionAssertion = self->_inhibitActionAssertion;
    self->_inhibitActionAssertion = 0;

    self->_isValid = 0;
  }
}

- (id)acquireCaptureButtonSuppressionAssertionWithOptions:(unint64_t)options reason:(id)reason
{
  inhibitActionAssertion = self->_inhibitActionAssertion;
  v6 = MEMORY[0x1E696AD98];
  reasonCopy = reason;
  v8 = [v6 numberWithUnsignedInteger:options];
  v9 = [(BSCompoundAssertion *)inhibitActionAssertion acquireForReason:reasonCopy withContext:v8];

  return v9;
}

- (void)init
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Within SpringBoard, use SBCaptureButtonRestrictionCoordinator IPI directly."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(self);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBSCaptureButtonRestrictionService.m";
    v17 = 1024;
    v18 = 43;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end