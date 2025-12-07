@interface AMSUIWebProtocolHandler
- (AMSUIWebProtocolDelegate)delegate;
- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error;
@end

@implementation AMSUIWebProtocolHandler

- (void)reconfigureNewRequest:(id)request originalTask:(id)task redirect:(BOOL)redirect error:(id *)error
{
  redirectCopy = redirect;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = AMSUIWebProtocolHandler;
  [(AMSURLProtocolHandler *)&v13 reconfigureNewRequest:requestCopy originalTask:task redirect:redirectCopy error:error];
  delegate = [(AMSUIWebProtocolHandler *)self delegate];
  LOBYTE(redirectCopy) = objc_opt_respondsToSelector();

  if (redirectCopy)
  {
    delegate2 = [(AMSUIWebProtocolHandler *)self delegate];
    [delegate2 protocolHandler:self didEncodeNetworkRequest:requestCopy];
  }
}

- (AMSUIWebProtocolDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end