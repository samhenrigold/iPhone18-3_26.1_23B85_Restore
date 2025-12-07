@interface SLRemoteComposeViewController
- (SLRemoteComposeViewControllerDelegateProtocol)delegate;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SLRemoteComposeViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  _SLLog(v3, 3, @"SLRemoteComposeViewController: (this may be harmless) viewServiceDidTerminateWithError: %@", v6, v7, v8, v9, v10, errorCopy);
  v13.receiver = self;
  v13.super_class = SLRemoteComposeViewController;
  [(_UIRemoteViewController *)&v13 viewServiceDidTerminateWithError:errorCopy];
  delegate = [(SLRemoteComposeViewController *)self delegate];
  v12 = delegate;
  if (delegate)
  {
    [delegate remoteViewController:self didTerminateWithError:errorCopy];
  }
}

- (SLRemoteComposeViewControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end