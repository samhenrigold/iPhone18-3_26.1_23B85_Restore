@interface ILClassificationUIExtensionHostViewController
- (ILClassificationUIExtensionHostViewController)initWithClassificationRequest:(id)request sender:(id)sender isoCountryCode:(id)code;
- (ILClassificationUIExtensionHostViewControllerDelegate)delegate;
- (id)initUnactivatedVCWithRequest:(id)request sender:(id)sender isoCountryCode:(id)code;
- (id)logErrorWithMessage:(id)message;
- (void)activateExtensionWithCompletion:(id)completion;
- (void)blockNumber:(id)number withCountryCode:(id)code;
- (void)context:(id)context didBecomeReadyForClassificationResponse:(BOOL)response;
- (void)didCompleteClassificationRequestWithResponse:(id)response;
- (void)finish;
- (void)launchSettings;
- (void)presentBlockAlertWithCompletion:(id)completion;
- (void)userDidFinishForExtensionShellViewController:(id)controller;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation ILClassificationUIExtensionHostViewController

- (ILClassificationUIExtensionHostViewController)initWithClassificationRequest:(id)request sender:(id)sender isoCountryCode:(id)code
{
  v5 = [(ILClassificationUIExtensionHostViewController *)self initUnactivatedVCWithRequest:request sender:sender isoCountryCode:code];
  [(ILClassificationUIExtensionHostViewController *)v5 activateExtensionWithCompletion:0];
  return v5;
}

- (id)initUnactivatedVCWithRequest:(id)request sender:(id)sender isoCountryCode:(id)code
{
  requestCopy = request;
  senderCopy = sender;
  codeCopy = code;
  v21.receiver = self;
  v21.super_class = ILClassificationUIExtensionHostViewController;
  v12 = [(ILClassificationUIExtensionHostViewController *)&v21 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v13->_classificationRequest, request);
    objc_storeStrong(&v13->_sender, sender);
    objc_storeStrong(&v13->_isoCountryCode, code);
    v14 = [[ILClassificationReportingController alloc] initWithHostViewController:v13];
    reportingController = v13->_reportingController;
    v13->_reportingController = v14;

    v16 = objc_alloc_init(ILClassificationExtensionShellViewController);
    shellViewController = v13->_shellViewController;
    v13->_shellViewController = v16;

    [(ILClassificationExtensionShellViewController *)v13->_shellViewController setDelegate:v13];
    v18 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13->_shellViewController];
    navigationController = v13->_navigationController;
    v13->_navigationController = v18;
  }

  return v13;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ILClassificationUIExtensionHostViewController;
  [(ILClassificationUIExtensionHostViewController *)&v10 viewDidLoad];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  view = [(ILClassificationUIExtensionHostViewController *)self view];
  [view setBackgroundColor:whiteColor];

  view2 = [(ILClassificationUIExtensionHostViewController *)self view];
  navigationController = [(ILClassificationUIExtensionHostViewController *)self navigationController];
  view3 = [navigationController view];
  [view2 addSubview:view3];

  navigationController2 = [(ILClassificationUIExtensionHostViewController *)self navigationController];
  [(ILClassificationUIExtensionHostViewController *)self addChildViewController:navigationController2];

  navigationController3 = [(ILClassificationUIExtensionHostViewController *)self navigationController];
  [navigationController3 didMoveToParentViewController:self];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = ILClassificationUIExtensionHostViewController;
  [(ILClassificationUIExtensionHostViewController *)&v6 viewDidDisappear:disappear];
  extension = [(ILClassificationUIExtensionHostViewController *)self extension];
  extensionRequestIdentifier = [(ILClassificationUIExtensionHostViewController *)self extensionRequestIdentifier];
  [extension cancelExtensionRequestWithIdentifier:extensionRequestIdentifier];
}

- (void)activateExtensionWithCompletion:(id)completion
{
  completionCopy = completion;
  mEMORY[0x277CD2C18] = [MEMORY[0x277CD2C18] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke;
  v7[3] = &unk_278A5F430;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [mEMORY[0x277CD2C18] activateWithCompletion:v7];
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = ILDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 identifier];
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_238A6C000, v7, OS_LOG_TYPE_DEFAULT, "Instantiating remote view controller for extension identifier %@", buf, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_12;
    v16[3] = &unk_278A5F3E0;
    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v16[4] = v10;
    v11 = v5;
    v17 = v11;
    v18 = v9[1];
    [v11 instantiateViewControllerWithInputItems:MEMORY[0x277CBEBF8] connectionHandler:v16];
    objc_initWeak(buf, *v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22;
    v14[3] = &unk_278A5F408;
    objc_copyWeak(&v15, buf);
    [v11 setRequestInterruptionBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12 = [*(a1 + 32) logErrorWithMessage:@"Failed to determine ui classification extension"];
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v12);
    }
  }
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v10);

  v11 = v9;
  if (v7 && v8)
  {
    [*(a1 + 32) setExtension:*(a1 + 40)];
    [*(a1 + 32) setExtensionRequestIdentifier:v7];
    v12 = [*(a1 + 40) _extensionContextForUUID:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = ILDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_238A6C000, v13, OS_LOG_TYPE_DEFAULT, "Successfully instantiated remote view controller %@", buf, 0xCu);
      }

      v14 = *(a1 + 32);
      v15 = [v14 queue];
      [v12 setDelegate:v14 queue:v15];

      [*(a1 + 32) setExtensionHostContext:v12];
      v16 = ILDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [*(a1 + 32) classificationRequest];
        *buf = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v17;
        _os_log_impl(&dword_238A6C000, v16, OS_LOG_TYPE_DEFAULT, "Preparing view controller %@ for classification request %@", buf, 0x16u);
      }

      v18 = [*(a1 + 32) classificationRequest];
      [v12 prepareForClassificationRequest:v18];

      v19 = [*(a1 + 32) shellViewController];
      [v19 displayExtensionViewController:v8 forExtension:*(a1 + 40)];

      v20 = v11;
    }

    else
    {
      v25 = *(a1 + 32);
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not obtain extension host context of class %@: %@", objc_opt_class(), v12];
      v20 = [v25 logErrorWithMessage:v26];
    }
  }

  else
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = *(a1 + 32);
    v23 = [*(a1 + 40) identifier];
    v24 = [v21 stringWithFormat:@"Failed to instantiate view controller with extension identifier %@: %@", v23, v11];
    v20 = [v22 logErrorWithMessage:v24];
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, v20);
  }
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finish];
}

- (void)userDidFinishForExtensionShellViewController:(id)controller
{
  extensionHostContext = [(ILClassificationUIExtensionHostViewController *)self extensionHostContext];
  classificationRequest = [(ILClassificationUIExtensionHostViewController *)self classificationRequest];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __94__ILClassificationUIExtensionHostViewController_userDidFinishForExtensionShellViewController___block_invoke;
  v6[3] = &unk_278A5F458;
  v6[4] = self;
  [extensionHostContext classificationResponseForRequest:classificationRequest completion:v6];
}

id *__94__ILClassificationUIExtensionHostViewController_userDidFinishForExtensionShellViewController___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] didCompleteClassificationRequestWithResponse:a2];
  }

  return result;
}

- (void)context:(id)context didBecomeReadyForClassificationResponse:(BOOL)response
{
  responseCopy = response;
  shellViewController = [(ILClassificationUIExtensionHostViewController *)self shellViewController];
  [shellViewController setEnableFinishOption:responseCopy];
}

- (void)didCompleteClassificationRequestWithResponse:(id)response
{
  v28 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  queue = [(ILClassificationUIExtensionHostViewController *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ILClassificationUIExtensionHostViewController *)self setClassificationResponse:responseCopy];
  v6 = ILDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    classificationRequest = [(ILClassificationUIExtensionHostViewController *)self classificationRequest];
    *buf = 138412546;
    v25 = classificationRequest;
    v26 = 2112;
    v27 = responseCopy;
    _os_log_impl(&dword_238A6C000, v6, OS_LOG_TYPE_DEFAULT, "Host VC didCompleteClassificationRequest: %@ with response: %@", buf, 0x16u);
  }

  action = [responseCopy action];
  if ((action - 1) < 2)
  {
    reportingController = [(ILClassificationUIExtensionHostViewController *)self reportingController];
    extension = [(ILClassificationUIExtensionHostViewController *)self extension];
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke;
    v22 = &unk_278A5F4A8;
    selfCopy = self;
    v13 = &v19;
    goto LABEL_8;
  }

  if (!action)
  {
    [(ILClassificationUIExtensionHostViewController *)self finish];
    goto LABEL_10;
  }

  if (action == 3)
  {
    sender = [(ILClassificationUIExtensionHostViewController *)self sender];
    isoCountryCode = [(ILClassificationUIExtensionHostViewController *)self isoCountryCode];
    [(ILClassificationUIExtensionHostViewController *)self blockNumber:sender withCountryCode:isoCountryCode];

    reportingController = [(ILClassificationUIExtensionHostViewController *)self reportingController];
    extension = [(ILClassificationUIExtensionHostViewController *)self extension];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_3;
    v17 = &unk_278A5F4A8;
    selfCopy2 = self;
    v13 = &v14;
LABEL_8:
    [reportingController reportResponse:responseCopy forExtension:extension withCompletion:{v13, v14, v15, v16, v17, selfCopy2, v19, v20, v21, v22, selfCopy}];
  }

LABEL_10:
}

uint64_t __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  v3 = *(a1 + 32);
  if (v2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_2;
    v5[3] = &unk_278A5F480;
    v5[4] = v3;
    return [v3 dismissViewControllerAnimated:0 completion:v5];
  }

  else
  {

    return [v3 finish];
  }
}

uint64_t __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  v3 = *(a1 + 32);
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_4;
    v6[3] = &unk_278A5F480;
    v6[4] = v3;
    return [v3 dismissViewControllerAnimated:0 completion:v6];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_6;
    v5[3] = &unk_278A5F480;
    v5[4] = v3;
    return [v3 presentBlockAlertWithCompletion:v5];
  }
}

uint64_t __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __94__ILClassificationUIExtensionHostViewController_didCompleteClassificationRequestWithResponse___block_invoke_5;
  v3[3] = &unk_278A5F480;
  v3[4] = v1;
  return [v1 presentBlockAlertWithCompletion:v3];
}

- (void)finish
{
  v3 = ILDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238A6C000, v3, OS_LOG_TYPE_DEFAULT, "Finished, invoking didCompleteClassificationRequest", v7, 2u);
  }

  delegate = [(ILClassificationUIExtensionHostViewController *)self delegate];
  classificationRequest = [(ILClassificationUIExtensionHostViewController *)self classificationRequest];
  classificationResponse = [(ILClassificationUIExtensionHostViewController *)self classificationResponse];
  [delegate controller:self didCompleteClassificationRequest:classificationRequest withResponse:classificationResponse];
}

- (void)presentBlockAlertWithCompletion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sender = [(ILClassificationUIExtensionHostViewController *)self sender];
    *buf = 138412290;
    v38 = sender;
    _os_log_impl(&dword_238A6C000, v4, OS_LOG_TYPE_DEFAULT, "Present block alert for: %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"%@_HAS_BLOCKED_%@_MESSAGE" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  extension = [(ILClassificationUIExtensionHostViewController *)self extension];
  _plugIn = [extension _plugIn];
  localizedContainingName = [_plugIn localizedContainingName];
  sender2 = [(ILClassificationUIExtensionHostViewController *)self sender];
  v13 = [v6 stringWithFormat:v8, localizedContainingName, sender2];

  v14 = MEMORY[0x277D75110];
  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"NUMBER_HAS_BEEN_BLOCKED" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v17 = [v14 alertControllerWithTitle:v16 message:v13 preferredStyle:1];

  v18 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"OKAY" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke;
  v35[3] = &unk_278A5F4D0;
  v21 = completionCopy;
  v36 = v21;
  v22 = [v18 actionWithTitle:v20 style:0 handler:v35];
  [v17 addAction:v22];

  v23 = MEMORY[0x277D750F8];
  v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SETTINGS" value:&stru_284B5F1D8 table:@"IdentityLookupUI"];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_53;
  v33[3] = &unk_278A5F4F8;
  v33[4] = self;
  v34 = v21;
  v26 = v21;
  v27 = [v23 actionWithTitle:v25 style:0 handler:v33];
  [v17 addAction:v27];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_54;
  block[3] = &unk_278A5F520;
  v31 = v17;
  selfCopy = self;
  v28 = v17;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke(uint64_t a1)
{
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "User dismissed report and block alert controller", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_53(uint64_t a1)
{
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "User launched settings", v4, 2u);
  }

  [*(a1 + 32) launchSettings];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __81__ILClassificationUIExtensionHostViewController_presentBlockAlertWithCompletion___block_invoke_54(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_238A6C000, v2, OS_LOG_TYPE_DEFAULT, "Present reportAndBlockAlert: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) presentViewController:*(a1 + 32) animated:1 completion:0];
}

- (void)launchSettings
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_238A6C000, log, OS_LOG_TYPE_ERROR, "Error opening url: %@ (%@)", &v3, 0x16u);
}

- (void)blockNumber:(id)number withCountryCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  codeCopy = code;
  v7 = ILDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = numberCopy;
    v14 = 2112;
    v15 = codeCopy;
    _os_log_impl(&dword_238A6C000, v7, OS_LOG_TYPE_DEFAULT, "blocking number: %@ with country code: %@", &v12, 0x16u);
  }

  v8 = CUTWeakLinkClass();
  v9 = CUTWeakLinkClass();
  sharedPrivacyManager = [v8 sharedPrivacyManager];
  v11 = [v9 phoneNumberWithDigits:numberCopy countryCode:codeCopy];
  [sharedPrivacyManager setBlockIncomingCommunication:1 forPhoneNumber:v11];
}

- (id)logErrorWithMessage:(id)message
{
  v10[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ILClassificationUIExtensionHostViewController *)messageCopy logErrorWithMessage:v4];
  }

  v5 = MEMORY[0x277CCA9B8];
  v9 = @"ErrorMessage";
  v10[0] = messageCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 errorWithDomain:@"ILClassificationUIExtensionHostViewController" code:0 userInfo:v6];

  return v7;
}

- (ILClassificationUIExtensionHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __81__ILClassificationUIExtensionHostViewController_activateExtensionWithCompletion___block_invoke_22_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "handling interruption for extension with identifier: %@", &v2, 0xCu);
}

- (void)logErrorWithMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

@end