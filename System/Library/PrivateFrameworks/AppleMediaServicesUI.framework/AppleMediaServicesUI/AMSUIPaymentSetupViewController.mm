@interface AMSUIPaymentSetupViewController
- (AMSUIPaymentSetupViewController)initWithPaymentSetupRequest:(id)request;
- (AMSUIPaymentSetupViewControllerDelegate)delegate;
- (void)_setup;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation AMSUIPaymentSetupViewController

- (AMSUIPaymentSetupViewController)initWithPaymentSetupRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = AMSUIPaymentSetupViewController;
  v6 = [(AMSUIPaymentSetupViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentSetupRequest, request);
    [(AMSUIPaymentSetupViewController *)v7 _setup];
  }

  return v7;
}

- (void)_setup
{
  v3 = [(AMSUIPaymentSetupViewController *)self setModalPresentationStyle:5];
  v4 = objc_alloc(getPKPaymentSetupViewControllerClass(v3));
  paymentSetupRequest = [(AMSUIPaymentSetupViewController *)self paymentSetupRequest];
  v5 = [v4 initWithPaymentSetupRequest:paymentSetupRequest];
  childViewController = self->_childViewController;
  self->_childViewController = v5;
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setUserInteractionEnabled:0];
  [(AMSUIPaymentSetupViewController *)self setView:v4];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = AMSUIPaymentSetupViewController;
  [(AMSUIPaymentSetupViewController *)&v6 viewDidAppear:appear];
  childViewController = [(AMSUIPaymentSetupViewController *)self childViewController];

  if (childViewController)
  {
    childViewController2 = [(AMSUIPaymentSetupViewController *)self childViewController];
    [(AMSUIPaymentSetupViewController *)self presentViewController:childViewController2 animated:1 completion:0];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(AMSUIPaymentSetupViewController *)self setChildViewController:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__AMSUIPaymentSetupViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E7F245E0;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = AMSUIPaymentSetupViewController;
  v7 = completionCopy;
  [(AMSUIPaymentSetupViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
}

uint64_t __76__AMSUIPaymentSetupViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = [*(a1 + 32) delegate];
  [v3 paymentSetupViewControllerDidDismiss];

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (AMSUIPaymentSetupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end