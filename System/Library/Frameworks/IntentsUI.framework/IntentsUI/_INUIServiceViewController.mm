@interface _INUIServiceViewController
- (CGSize)_constrainedSizeForDesiredSize:(CGSize)size;
- (_INUIServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addChildViewController:(id)controller;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion;
- (void)desiresInteractivity:(id)interactivity;
- (void)queryRepresentedPropertiesWithCompletion:(id)completion;
- (void)viewWasCancelled;
- (void)viewWillLayoutSubviews;
@end

@implementation _INUIServiceViewController

- (CGSize)_constrainedSizeForDesiredSize:(CGSize)size
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (size.width != *MEMORY[0x277CBF3A8] || size.height != v4)
  {
    height = size.height;
    width = size.width;
    extensionContext = [(_INUIServiceViewController *)self extensionContext];
    [extensionContext hostedViewMinimumAllowedSize];
    v3 = v9;
    v4 = v10;
    [extensionContext hostedViewMaximumAllowedSize];
    if (v11 >= width)
    {
      v11 = width;
    }

    if (v3 < v11)
    {
      v3 = v11;
    }

    if (v12 >= height)
    {
      v13 = height;
    }

    else
    {
      v13 = v12;
    }

    if (v4 < v13)
    {
      v4 = v13;
    }
  }

  v14 = v3;
  v15 = v4;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)queryRepresentedPropertiesWithCompletion:(id)completion
{
  if (completion)
  {
    v4 = MEMORY[0x277CBEB18];
    completionCopy = completion;
    v8 = objc_alloc_init(v4);
    if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B90])
    {
      v6 = self->_hostedViewController;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(INUIHostedViewControlling *)v6 displaysMessage])
      {
        [v8 addObject:@"SendMessageIntent.recipient"];
        [v8 addObject:@"SendMessageIntent.recipients"];
        [v8 addObject:@"SendMessageIntent.content"];
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [(INUIHostedViewControlling *)v6 displaysMap])
      {
        [v8 addObject:@"RequestRideIntent.pickupLocation.map"];
        [v8 addObject:@"GetRideStatusIntentResponse.rideStatus.vehicle.location.map"];
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [(INUIHostedViewControlling *)v6 displaysPaymentTransaction])
      {
        [v8 addObject:@"SendPaymentIntent.payee"];
        [v8 addObject:@"SendPaymentIntent.currencyAmount"];
        [v8 addObject:@"SendPaymentIntent.note"];
        [v8 addObject:@"RequestPaymentIntent.payer"];
        [v8 addObject:@"RequestPaymentIntent.currencyAmount"];
        [v8 addObject:@"RequestPaymentIntent.note"];
        [v8 addObject:@"BillDetails.billType"];
        [v8 addObject:@"BillDetails.amountDue"];
        [v8 addObject:@"BillDetails.paymentDate"];
        [v8 addObject:@"BillDetails.billPayee"];
        [v8 addObject:@"PayBillIntent.billPayee"];
        [v8 addObject:@"PayBillIntent.fromAccount"];
        [v8 addObject:@"PayBillIntent.transactionAmount"];
        [v8 addObject:@"PayBillIntent.transactionScheduledDate"];
        [v8 addObject:@"PayBillIntent.transactionNote"];
        [v8 addObject:@"PayBillIntent.billType"];
        [v8 addObject:@"PayBillIntent.dueDate"];
        [v8 addObject:@"PayBillIntentResponse.fromAccount"];
        [v8 addObject:@"PayBillIntentResponse.billDetails"];
        [v8 addObject:@"PayBillIntentResponse.transactionAmount"];
        [v8 addObject:@"PayBillIntentResponse.transactionScheduledDate"];
        [v8 addObject:@"PayBillIntentResponse.transactionNote"];
      }
    }

    v7 = [v8 copy];
    completionCopy[2](completionCopy, v7);
  }
}

- (void)desiresInteractivity:(id)interactivity
{
  interactivityCopy = interactivity;
  if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B30]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(INUIHostedViewControlling *)self->_hostedViewController desiresInteractivity:interactivityCopy];
  }

  else
  {
    interactivityCopy[2](interactivityCopy, 0);
  }
}

- (void)viewWasCancelled
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B30]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      hostedViewController = self->_hostedViewController;
      v5 = 136315394;
      v6 = "[_INUIServiceViewController viewWasCancelled]";
      v7 = 2112;
      v8 = hostedViewController;
      _os_log_impl(&dword_22CA36000, v3, OS_LOG_TYPE_INFO, "%s Alerting remote view controller %@ of cancellation", &v5, 0x16u);
    }

    [(INUIHostedViewControlling *)self->_hostedViewController viewWasCancelled];
  }
}

- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v13 = INTypedInteractionWithInteraction();
  objc_storeStrong(&self->_currentInteraction, v13);
  self->_currentContext = context;
  v14 = objc_opt_respondsToSelector();
  hostedViewController = self->_hostedViewController;
  if (v14)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke;
    v24[3] = &unk_27872BB08;
    v25 = completionCopy;
    [(INUIHostedViewControlling *)hostedViewController configureViewForParameters:parametersCopy ofInteraction:v13 interactiveBehavior:behavior context:context completion:v24];
    v16 = v25;
LABEL_8:

    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = self->_hostedViewController;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2;
    v22[3] = &unk_27872BB08;
    v23 = completionCopy;
    [(INUIHostedViewControlling *)v17 configureViewForParameters:parametersCopy ofInteraction:v13 context:context completion:v22];
    v16 = v23;
    goto LABEL_8;
  }

  if (![parametersCopy count])
  {
    v18 = self->_hostedViewController;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_3;
    v19[3] = &unk_27872BB58;
    v21 = completionCopy;
    v19[4] = self;
    v20 = v13;
    [(INUIHostedViewControlling *)v18 configureWithInteraction:v20 context:context completion:v19];

    v16 = v21;
    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
LABEL_9:
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v8 beginRequestWithExtensionContext:contextCopy];
  v5 = contextCopy;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v5 viewWillLayoutSubviews];
  view = [(INUIHostedViewControlling *)self->_hostedViewController view];
  view2 = [(_INUIServiceViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v10 addChildViewController:controllerCopy];
  if ([controllerCopy conformsToProtocol:&unk_283FF3EE0])
  {
    objc_storeStrong(&self->_hostedViewController, controller);
    view = [(INUIHostedViewControlling *)self->_hostedViewController view];
    view2 = [(_INUIServiceViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(_INUIServiceViewController *)self view];
    view4 = [(INUIHostedViewControlling *)self->_hostedViewController view];
    [view3 addSubview:view4];
  }
}

- (_INUIServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = _INUIServiceViewController;
  v4 = [(_INUIServiceViewController *)&v11 initWithNibName:name bundle:bundle];
  if (v4)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v6 = *MEMORY[0x277CB8020];
    v10 = 0;
    [mEMORY[0x277CB83F8] setCategory:v6 withOptions:1 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[_INUIServiceViewController initWithNibName:bundle:]";
        v14 = 2114;
        v15 = v7;
        _os_log_error_impl(&dword_22CA36000, v8, OS_LOG_TYPE_ERROR, "%s Unable to set AVAudioSession category: %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

@end