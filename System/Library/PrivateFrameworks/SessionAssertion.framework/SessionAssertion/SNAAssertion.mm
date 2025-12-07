@interface SNAAssertion
- (SNAAssertion)initWithExplanation:(id)explanation target:(id)target invalidateOnSessionRequest:(BOOL)request invalidationHandler:(id)handler;
@end

@implementation SNAAssertion

- (SNAAssertion)initWithExplanation:(id)explanation target:(id)target invalidateOnSessionRequest:(BOOL)request invalidationHandler:(id)handler
{
  requestCopy = request;
  explanationCopy = explanation;
  targetCopy = target;
  handlerCopy = handler;
  v22.receiver = self;
  v22.super_class = SNAAssertion;
  v13 = [(SNAAssertion *)&v22 init];
  if (v13)
  {
    v14 = [_TtC16SessionAssertion23SessionRequestAssertion alloc];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __90__SNAAssertion_initWithExplanation_target_invalidateOnSessionRequest_invalidationHandler___block_invoke;
    v19[3] = &unk_279B9F670;
    v21 = handlerCopy;
    v15 = v13;
    v20 = v15;
    v16 = [(SessionRequestAssertion *)v14 initWithExplanation:explanationCopy target:targetCopy invalidateOnSessionRequest:requestCopy invalidationHandler:v19];
    sessionAssertion = v15->_sessionAssertion;
    v15->_sessionAssertion = v16;
  }

  return v13;
}

uint64_t __90__SNAAssertion_initWithExplanation_target_invalidateOnSessionRequest_invalidationHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end