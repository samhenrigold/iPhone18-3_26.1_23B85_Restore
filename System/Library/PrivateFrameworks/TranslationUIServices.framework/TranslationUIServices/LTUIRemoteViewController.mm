@interface LTUIRemoteViewController
- (LTUIViewServiceExtensionHostProtocol)delegate;
- (void)confirmUserConsent;
- (void)dismiss;
- (void)expandSheet;
- (void)finishWithTranslation:(id)translation;
- (void)remoteIsReady;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation LTUIRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = _LTOSLogSystemTranslation(errorCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(LTUIRemoteViewController *)errorCopy viewServiceDidTerminateWithError:v5];
  }
}

- (void)dismiss
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate dismiss];
}

- (void)confirmUserConsent
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate confirmUserConsent];
}

- (void)expandSheet
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate expandSheet];
}

- (void)remoteIsReady
{
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate remoteIsReady];
}

- (void)finishWithTranslation:(id)translation
{
  translationCopy = translation;
  delegate = [(LTUIRemoteViewController *)self delegate];
  [delegate finishWithTranslation:translationCopy];
}

- (LTUIViewServiceExtensionHostProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceDidTerminateWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26F4D2000, a2, OS_LOG_TYPE_ERROR, "View service terminated during system translation with error: %@", &v2, 0xCu);
}

@end