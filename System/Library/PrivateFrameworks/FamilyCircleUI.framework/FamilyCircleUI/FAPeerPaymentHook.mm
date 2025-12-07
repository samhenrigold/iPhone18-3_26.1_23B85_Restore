@interface FAPeerPaymentHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_handlePeerPaymentActionWithAttributes:(id)attributes completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation FAPeerPaymentHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"family:peerPayment"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [v4 isEqualToString:@"family:peerPayment"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  attributes = [element attributes];
  [(FAPeerPaymentHook *)self _handlePeerPaymentActionWithAttributes:attributes completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  completionCopy = completion;
  clientInfo = [model clientInfo];
  [(FAPeerPaymentHook *)self _handlePeerPaymentActionWithAttributes:clientInfo completion:completionCopy];
}

- (void)_handlePeerPaymentActionWithAttributes:(id)attributes completion:(id)completion
{
  attributesCopy = attributes;
  completionCopy = completion;
  v8 = [attributesCopy objectForKeyedSubscript:@"handleInHook"];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = [WeakRetained presentationContextForHook:self];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v12 = v10;
      v13 = [[FAAppleCashPresentationHandler alloc] initWithNavigationController:v12];

      [(FAPeerPaymentHook *)self setAppleCashPresentationHandler:v13];
      appleCashPresentationHandler = [(FAPeerPaymentHook *)self appleCashPresentationHandler];
      [appleCashPresentationHandler presentPeerPaymentControllerWithAttributes:attributesCopy completion:&__block_literal_global_0];
    }

    else
    {
      appleCashPresentationHandler = _FALogSystem(isKindOfClass);
      if (os_log_type_enabled(appleCashPresentationHandler, OS_LOG_TYPE_ERROR))
      {
        [FAPeerPaymentHook _handlePeerPaymentActionWithAttributes:v10 completion:appleCashPresentationHandler];
      }
    }
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePeerPaymentActionWithAttributes:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_21BB35000, a2, OS_LOG_TYPE_ERROR, "FAPeerPaymentHook - Expected Navigation controller but got %@", &v4, 0xCu);
}

@end