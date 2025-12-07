@interface TPSCallingLineIdRestrictionController
- (TPSCallingLineIdRestrictionController)init;
- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)context;
- (TPSCallingLineIdRestrictionControllerDelegate)delegate;
- (void)requestController:(id)controller didReceiveResponse:(id)response;
- (void)requestStateChange:(int64_t)change;
- (void)requestStateForSubscriptionContext:(id)context;
@end

@implementation TPSCallingLineIdRestrictionController

- (TPSCallingLineIdRestrictionController)init
{
  [(TPSCallingLineIdRestrictionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TPSCallingLineIdRestrictionController;
  v6 = [(TPSCallingLineIdRestrictionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallingLineIdRestrictionRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSRequestController *)v7->_requestController addDelegate:v7 queue:MEMORY[0x277D85CD0]];
    [(TPSCallingLineIdRestrictionController *)v7 requestStateForSubscriptionContext:contextCopy];
  }

  return v7;
}

- (void)requestStateForSubscriptionContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [[TPSCallingLineIdRestrictionRequest alloc] initWithSubscriptionContext:contextCopy];

  v8 = TPSLog(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction request %@.", &v9, 0xCu);
  }

  [(TPSRequestController *)self->_requestController addRequest:v5];
}

- (void)requestStateChange:(int64_t)change
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(TPSCallingLineIdRestrictionController *)self state]!= change)
  {
    [(TPSCallingLineIdRestrictionController *)self setState:0];
    v5 = [TPSCallingLineIdRestrictionSetRequest alloc];
    subscriptionContext = [(TPSCallingLineIdRestrictionController *)self subscriptionContext];
    v7 = [(TPSCallingLineIdRestrictionSetRequest *)v5 initWithSubscriptionContext:subscriptionContext state:change];

    v10 = TPSLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction set request %@.", &v12, 0xCu);
    }

    requestController = [(TPSCallingLineIdRestrictionController *)self requestController];
    [requestController addRequest:v7];
  }
}

- (void)requestController:(id)controller didReceiveResponse:(id)response
{
  v18 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v7 = TPSLog(responseCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = responseCopy;
    v8 = v15;
    _os_log_impl(&dword_21B8E9000, v7, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", &v14, 0x16u);
  }

  -[TPSCallingLineIdRestrictionController setEditable:](self, "setEditable:", [responseCopy isEditable]);
  -[TPSCallingLineIdRestrictionController setState:](self, "setState:", [responseCopy state]);
  delegate = [(TPSCallingLineIdRestrictionController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(TPSCallingLineIdRestrictionController *)self delegate];
    state = [responseCopy state];
    error = [responseCopy error];
    [delegate2 callingLineIdController:self didChangeState:state error:error];
  }
}

- (TPSCallingLineIdRestrictionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end