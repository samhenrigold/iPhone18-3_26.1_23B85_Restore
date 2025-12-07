@interface _SLAuthHostViewController
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation _SLAuthHostViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  _SLLog(v3, 3, @"_SLAuthHostViewController: (this may be harmless) viewServiceDidTerminateWithError: %@", v6, v7, v8, v9, v10, errorCopy);
  v13.receiver = self;
  v13.super_class = _SLAuthHostViewController;
  [(_UIRemoteViewController *)&v13 viewServiceDidTerminateWithError:errorCopy];

  viewServiceTerminationBlock = [(_SLAuthHostViewController *)self viewServiceTerminationBlock];

  if (viewServiceTerminationBlock)
  {
    viewServiceTerminationBlock2 = [(_SLAuthHostViewController *)self viewServiceTerminationBlock];
    viewServiceTerminationBlock2[2]();
  }
}

@end