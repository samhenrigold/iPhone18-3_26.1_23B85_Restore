@interface SFCertificatePresentationController
- (SFCertificatePresentationController)initWithCertificatePresentationRequest:(id)request;
- (SFCertificatePresentationControllerDelegate)delegate;
- (void)certificateViewControllerDidDismiss:(id)dismiss;
- (void)dismissWithCompletion:(id)completion;
- (void)presentWithCompletion:(id)completion;
@end

@implementation SFCertificatePresentationController

- (SFCertificatePresentationController)initWithCertificatePresentationRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = SFCertificatePresentationController;
  v6 = [(SFCertificatePresentationController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationRequest, request);
  }

  return v7;
}

- (void)presentWithCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = SFLogSFCertificatePresentationController(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[SFCertificatePresentationController presentWithCompletion:]";
    _os_log_impl(&dword_23AA9F000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = [v8 presentationViewControllerForCertificatePresentationController:self];
    presentationAnchor = self->_presentationAnchor;
    self->_presentationAnchor = v9;
  }

  if (!self->_presentationAnchor)
  {
    _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
    rootViewController = [_applicationKeyWindow rootViewController];
    v13 = self->_presentationAnchor;
    self->_presentationAnchor = rootViewController;
  }

  v14 = [[SFCertificateViewController alloc] initWithCertificatePresentationRequest:self->_presentationRequest];
  [(SFCertificateViewController *)v14 setDelegate:self];
  v15 = self->_presentationAnchor;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SFCertificatePresentationController_presentWithCompletion___block_invoke;
  v17[3] = &unk_278B69FE0;
  v18 = completionCopy;
  v16 = completionCopy;
  [(UIViewController *)v15 presentViewController:v14 animated:1 completion:v17];
}

void __61__SFCertificatePresentationController_presentWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SFCertificatePresentationController_presentWithCompletion___block_invoke_2;
  block[3] = &unk_278B69FE0;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__SFCertificatePresentationController_presentWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)dismissWithCompletion:(id)completion
{
  v7 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = SFLogSFCertificatePresentationController(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SFCertificatePresentationController dismissWithCompletion:]";
    _os_log_impl(&dword_23AA9F000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)certificateViewControllerDidDismiss:(id)dismiss
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = SFLogSFCertificatePresentationController(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[SFCertificatePresentationController certificateViewControllerDidDismiss:]";
    _os_log_impl(&dword_23AA9F000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v8 = SFLogSFCertificatePresentationController(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23AA9F000, v8, OS_LOG_TYPE_DEFAULT, "calling certificatePresentationControllerDidDismiss", &v10, 2u);
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 certificatePresentationControllerDidDismiss:self];
  }
}

- (SFCertificatePresentationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end