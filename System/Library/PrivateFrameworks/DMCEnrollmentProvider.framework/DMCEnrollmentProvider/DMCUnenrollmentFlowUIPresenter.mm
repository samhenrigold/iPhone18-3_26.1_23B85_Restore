@interface DMCUnenrollmentFlowUIPresenter
- (void)dismissUnenrollmentSceneWithError:(id)error;
- (void)presentUnenrollmentActivityPageIsAppleMAID:(BOOL)d;
- (void)requestDevicePasscodeDataWithCompletionHandler:(id)handler;
- (void)requestUserConfirmationIsAppleMAID:(BOOL)d completionHandler:(id)handler;
@end

@implementation DMCUnenrollmentFlowUIPresenter

- (void)requestUserConfirmationIsAppleMAID:(BOOL)d completionHandler:(id)handler
{
  handlerCopy = handler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke;
  block[3] = &unk_278EE8228;
  dCopy = d;
  block[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = DMCLocalizedString();
  v4 = MEMORY[0x277D75110];
  v5 = DMCLocalizedString();
  v6 = [v4 alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v7 = MEMORY[0x277D750F8];
  v8 = DMCLocalizedString();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_2;
  v19[3] = &unk_278EE7358;
  v20 = *(a1 + 40);
  v9 = [v7 actionWithTitle:v8 style:1 handler:v19];

  v10 = MEMORY[0x277D750F8];
  v11 = DMCLocalizedString();
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_3;
  v17 = &unk_278EE7358;
  v18 = *(a1 + 40);
  v12 = [v10 actionWithTitle:v11 style:2 handler:&v14];

  [v6 addAction:{v9, v14, v15, v16, v17}];
  [v6 addAction:v12];
  v13 = [*(a1 + 32) baseViewController];
  [v13 dmc_presentAlert:v6 completion:0];
}

uint64_t __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __87__DMCUnenrollmentFlowUIPresenter_requestUserConfirmationIsAppleMAID_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)requestDevicePasscodeDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = DMCLocalizedStringByDevice();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__DMCUnenrollmentFlowUIPresenter_requestDevicePasscodeDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_278EE7448;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(DMCEnrollmentFlowUIPresenterBase *)self requestDevicePasscodeWithDescriptionText:v5 completionHandler:v7];
}

- (void)presentUnenrollmentActivityPageIsAppleMAID:(BOOL)d
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__DMCUnenrollmentFlowUIPresenter_presentUnenrollmentActivityPageIsAppleMAID___block_invoke;
  v3[3] = &unk_278EE7A58;
  dCopy = d;
  v3[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __77__DMCUnenrollmentFlowUIPresenter_presentUnenrollmentActivityPageIsAppleMAID___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = DMCLocalizedString();
  v3 = *(a1 + 32);
  v4 = DMCLocalizedString();
  [v3 presentActivityPageWithTitle:v4 text:v5 showButtomView:0];
}

- (void)dismissUnenrollmentSceneWithError:(id)error
{
  errorCopy = error;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__DMCUnenrollmentFlowUIPresenter_dismissUnenrollmentSceneWithError___block_invoke;
  v6[3] = &unk_278EE77B8;
  v7 = errorCopy;
  selfCopy = self;
  v5 = errorCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __68__DMCUnenrollmentFlowUIPresenter_dismissUnenrollmentSceneWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 localizedDescription];
    if ([MEMORY[0x277D034F8] isAppleInternal])
    {
      v4 = [*(a1 + 32) underlyingErrors];

      if (v4)
      {
        v5 = MEMORY[0x277CCACA8];
        v6 = [*(a1 + 32) underlyingErrors];
        v7 = [v6 firstObject];
        v8 = [v7 description];
        v9 = [v5 stringWithFormat:@"%@\n\n[Internal only]\n%@", v3, v8];

        v3 = v9;
      }
    }

    v10 = *(a1 + 40);
    v11 = DMCLocalizedString();
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__DMCUnenrollmentFlowUIPresenter_dismissUnenrollmentSceneWithError___block_invoke_2;
    v13[3] = &unk_278EE74C0;
    v13[4] = *(a1 + 40);
    [v10 presentOKAlertWithTitle:v11 message:v3 action:v13];
  }

  else
  {
    v12 = *(a1 + 40);

    [v12 dismissWithCompletion:0];
  }
}

@end