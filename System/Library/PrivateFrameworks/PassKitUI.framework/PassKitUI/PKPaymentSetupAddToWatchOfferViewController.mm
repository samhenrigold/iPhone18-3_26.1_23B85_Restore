@interface PKPaymentSetupAddToWatchOfferViewController
+ (void)shouldShowAddToWatchOfferForPass:(id)pass inContext:(int64_t)context externalProvisioningDeviceSerialNumbers:(id)numbers completion:(id)completion;
+ (void)shouldShowAddToWatchOfferForPass:(id)pass inContext:(int64_t)context withCompletion:(id)completion;
- (PKPaymentSetupAddToWatchOfferViewController)initWithPaymentPass:(id)pass context:(int64_t)context dismissalHandler:(id)handler;
- (void)_handleBridgeProvisioningError:(id)error;
- (void)_handleDismissal:(BOOL)dismissal;
- (void)addToWatchOfferViewControllerDidNotRequestToAddToWatch;
- (void)addToWatchOfferViewControllerDidRequestToAddToWatch;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PKPaymentSetupAddToWatchOfferViewController

+ (void)shouldShowAddToWatchOfferForPass:(id)pass inContext:(int64_t)context withCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_withCompletion___block_invoke;
  v9[3] = &unk_1E8019160;
  v10 = completionCopy;
  v8 = completionCopy;
  [PKPaymentSetupAddToWatchOfferViewController shouldShowAddToWatchOfferForPass:pass inContext:context externalProvisioningDeviceSerialNumbers:0 completion:v9];
}

+ (void)shouldShowAddToWatchOfferForPass:(id)pass inContext:(int64_t)context externalProvisioningDeviceSerialNumbers:(id)numbers completion:(id)completion
{
  passCopy = pass;
  numbersCopy = numbers;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Checking add to watch offer for pass", buf, 2u);
    }

    if (PKPaymentSetupContextIsBridge())
    {
      completionCopy[2](completionCopy, 0, @"FlowType is bridge");
      goto LABEL_19;
    }

    if (PKPaymentSetupContextIsSetupAssistant())
    {
      completionCopy[2](completionCopy, 0, @"FlowType is setup assistant");
      goto LABEL_19;
    }

    if (PKPaymentSetupContextIsIssuerApp())
    {
      completionCopy[2](completionCopy, 0, @"FlowType is issuer app");
      goto LABEL_19;
    }

    if (PKPaymentSetupContextIsMerchantApp())
    {
      completionCopy[2](completionCopy, 0, @"FlowType is merchant app");
      goto LABEL_19;
    }

    if ((PKIsPhone() & 1) == 0)
    {
      completionCopy[2](completionCopy, 0, @"Companion is not supported on device");
      goto LABEL_19;
    }

    if (!passCopy || ([passCopy supportsSerialNumberBasedProvisioning] & 1) == 0)
    {
      completionCopy[2](completionCopy, 0, @"pass doesn't support serial number based provisioning");
      goto LABEL_19;
    }

    requiresTransferSerialNumberBasedProvisioning = [passCopy requiresTransferSerialNumberBasedProvisioning];
    if (requiresTransferSerialNumberBasedProvisioning)
    {
      completionCopy[2](completionCopy, 0, @"pass requires transfer");
      goto LABEL_19;
    }

    if (numbersCopy)
    {
      v13 = PKPairedOrPairingDevice();
      v14 = PKSerialNumberFromNRDevice();

      if ([numbersCopy containsObject:v14])
      {
        completionCopy[2](completionCopy, 0, @"pass already provisioned onto watch earlier in flow");
LABEL_26:

        goto LABEL_19;
      }
    }

    v14 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3(requiresTransferSerialNumberBasedProvisioning));
    if (v14)
    {
      paymentPass = [passCopy paymentPass];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __141__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_externalProvisioningDeviceSerialNumbers_completion___block_invoke;
      v16[3] = &unk_1E80158C0;
      v17 = v14;
      v18 = completionCopy;
      [v17 shouldShowWatchOfferForPaymentPass:paymentPass withCompletion:v16];
    }

    goto LABEL_26;
  }

LABEL_19:
}

void __141__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_externalProvisioningDeviceSerialNumbers_completion___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __141__PKPaymentSetupAddToWatchOfferViewController_shouldShowAddToWatchOfferForPass_inContext_externalProvisioningDeviceSerialNumbers_completion___block_invoke_2;
  v2[3] = &unk_1E8010FA8;
  v4 = a2;
  v3 = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (PKPaymentSetupAddToWatchOfferViewController)initWithPaymentPass:(id)pass context:(int64_t)context dismissalHandler:(id)handler
{
  handlerCopy = handler;
  v9 = [(PKAddToWatchOfferViewController *)self initWithPass:pass context:context];
  if (v9)
  {
    v10 = [handlerCopy copy];
    dismissalHandler = v9->_dismissalHandler;
    v9->_dismissalHandler = v10;
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = PKPaymentSetupAddToWatchOfferViewController;
  [(PKPaymentSetupAddToWatchOfferViewController *)&v8 viewDidAppear:appear];
  reportViewAppeared = [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  v5 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3(reportViewAppeared));
  pass = [(PKAddToWatchOfferViewController *)self pass];
  paymentPass = [pass paymentPass];
  [v5 noteWatchOfferShownForPaymentPass:paymentPass];
}

- (void)_handleBridgeProvisioningError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportError:errorCopy context:0];
    v5 = MEMORY[0x1E69DC650];
    v6 = PKTitleForDisplayableError();
    v7 = MEMORY[0x1BFB42D10](errorCopy);
    v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    localizedRecoveryOptions = [errorCopy localizedRecoveryOptions];
    firstObject = [localizedRecoveryOptions firstObject];

    userInfo = [errorCopy userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69BB898]];

    v13 = @"OK_BUTTON_TITLE";
    if (firstObject && v12)
    {
      v14 = MEMORY[0x1E69DC648];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __78__PKPaymentSetupAddToWatchOfferViewController__handleBridgeProvisioningError___block_invoke;
      v21 = &unk_1E8011310;
      v22 = v12;
      selfCopy = self;
      v15 = [v14 actionWithTitle:firstObject style:0 handler:&v18];
      [v8 addAction:{v15, v18, v19, v20, v21}];

      v13 = @"CANCEL";
    }

    v16 = PKLocalizedString(&v13->isa);
    v17 = [MEMORY[0x1E69DC648] actionWithTitle:v16 style:1 handler:0];
    [v8 addAction:v17];
    [(PKPaymentSetupAddToWatchOfferViewController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    [(PKPaymentSetupAddToWatchOfferViewController *)self _handleDismissal:0];
  }
}

uint64_t __78__PKPaymentSetupAddToWatchOfferViewController__handleBridgeProvisioningError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];

  v3 = *(a1 + 40);

  return [v3 _handleDismissal:0];
}

- (void)_handleDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportPageCompleted:dismissal context:0];
  dismissalHandler = self->_dismissalHandler;
  if (dismissalHandler)
  {
    v6 = *(dismissalHandler + 2);

    v6();
  }

  else
  {
    presentingViewController = [(PKPaymentSetupAddToWatchOfferViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:!dismissalCopy completion:0];
  }
}

- (void)addToWatchOfferViewControllerDidNotRequestToAddToWatch
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];

  [(PKPaymentSetupAddToWatchOfferViewController *)self _handleDismissal:0];
}

- (void)addToWatchOfferViewControllerDidRequestToAddToWatch
{
  v3 = [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  v4 = objc_alloc_init(getNPKCompanionAgentConnectionClass_3(v3));
  [(PKAddToWatchOfferViewController *)self showSpinner:1];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke;
  v16[3] = &unk_1E8011A18;
  v16[4] = &v17;
  v6 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"com.apple.passbook.watchOffer" expirationHandler:v16];
  v18[3] = v6;

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Asking bridge to open from watch offer", buf, 2u);
  }

  pass = [(PKAddToWatchOfferViewController *)self pass];
  paymentPass = [pass paymentPass];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_57;
  v11[3] = &unk_1E8019188;
  v10 = v4;
  v12 = v10;
  selfCopy = self;
  v14 = &v17;
  [v10 beginProvisioningFromWatchOfferForPaymentPass:paymentPass withCompletion:v11];

  _Block_object_dispose(&v17, 8);
}

void __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_57(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_2;
  v8[3] = &unk_1E8015378;
  v11 = a2;
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) showSpinner:0];
  if (*(a1 + 56) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "Success opening bridge", buf, 2u);
    }

    v3 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__PKPaymentSetupAddToWatchOfferViewController_addToWatchOfferViewControllerDidRequestToAddToWatch__block_invoke_58;
    block[3] = &unk_1E8010970;
    block[4] = *(a1 + 32);
    dispatch_after(v3, MEMORY[0x1E69E96A0], block);
    goto LABEL_15;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x1E69BB840]])
    {
      v6 = [*(a1 + 40) code];

      if (v6 == 10)
      {
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Bridge failed to open from watch offer. Wallet not installed in Watch", buf, 2u);
        }

        [*(*(a1 + 32) + 1120) reportPageCompleted:0 context:0];
        v8 = PKCreateAlertControllerForWatchWalletUninstalled(0);
        [*(a1 + 32) presentViewController:v8 animated:1 completion:0];

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "Bridge failed to open from watch offer showing error", buf, 2u);
  }

  [*(a1 + 32) _handleBridgeProvisioningError:*(a1 + 40)];
LABEL_15:
  v10 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 48) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    [v11 endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];

    *(*(*(a1 + 48) + 8) + 24) = v10;
  }
}

@end