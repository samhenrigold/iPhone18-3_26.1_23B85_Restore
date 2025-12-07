@interface AMSUIEngagementRemoteViewController
- (AMSUIEngagementTaskHostInterface)delegate;
- (AMSUIEngagementTaskRemoteInterface)remoteProxy;
- (CGSize)preferredContentSizeOverride;
- (void)engagementTaskDidFinishWithResult:(id)result error:(id)error completion:(id)completion;
- (void)preferredContentSizeDidChange:(CGSize)change;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation AMSUIEngagementRemoteViewController

- (AMSUIEngagementTaskRemoteInterface)remoteProxy
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AMSUIEngagementRemoteViewController_remoteProxy__block_invoke;
  v4[3] = &unk_1E7F24410;
  v4[4] = self;
  v2 = [(_UIRemoteViewController *)self serviceViewControllerProxyWithErrorHandler:v4];

  return v2;
}

void __50__AMSUIEngagementRemoteViewController_remoteProxy__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve remote proxy. Error: %{public}@", &v7, 0x20u);
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v8.receiver = self;
  v8.super_class = AMSUIEngagementRemoteViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:errorCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__AMSUIEngagementRemoteViewController_viewServiceDidTerminateWithError___block_invoke;
  v6[3] = &unk_1E7F243C0;
  v6[4] = self;
  v7 = errorCopy;
  v5 = errorCopy;
  [(AMSUIEngagementRemoteViewController *)self engagementTaskDidFinishWithResult:0 error:v5 completion:v6];
}

void __72__AMSUIEngagementRemoteViewController_viewServiceDidTerminateWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1BB036000, v3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] View service termination handled. Error: %{public}@", &v7, 0x20u);
  }
}

- (void)engagementTaskDidFinishWithResult:(id)result error:(id)error completion:(id)completion
{
  resultCopy = result;
  errorCopy = error;
  completionCopy = completion;
  delegate = [(AMSUIEngagementRemoteViewController *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    delegate2 = [(AMSUIEngagementRemoteViewController *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      delegate3 = [(AMSUIEngagementRemoteViewController *)self delegate];
      [delegate3 engagementTaskDidFinishWithResult:resultCopy error:errorCopy completion:completionCopy];
    }
  }
}

- (void)preferredContentSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  delegate = [(AMSUIEngagementRemoteViewController *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(AMSUIEngagementRemoteViewController *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(AMSUIEngagementRemoteViewController *)self delegate];
      [delegate3 preferredContentSizeDidChange:{width, height}];
    }
  }
}

- (AMSUIEngagementTaskHostInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)preferredContentSizeOverride
{
  width = self->_preferredContentSizeOverride.width;
  height = self->_preferredContentSizeOverride.height;
  result.height = height;
  result.width = width;
  return result;
}

@end