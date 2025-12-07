@interface InProcessDispatcher.PerformActionExecutorDelegate
- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsChoiceWithRequest:(id)request;
- (void)executor:(id)executor needsConfirmationWithRequest:(id)request;
- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request;
- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request;
- (void)executor:(id)executor needsValueWithRequest:(id)request;
@end

@implementation InProcessDispatcher.PerformActionExecutorDelegate

- (void)executor:(id)executor needsDisambiguationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2219F18C8(executorCopy, requestCopy, "[%s] %s Received disambiguation request %{private}@", "[%s] %s Received disambiguation request %{sensitive}@", &unk_283514A50, &unk_221BD2CB8);
}

- (void)executor:(id)executor needsChoiceWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2219F3E58(executorCopy, requestCopy, "[%s] %s Received choice request %{private}@", "[%s] %s Received choice request %{sensitive}@", &unk_283514A28, &unk_221BD2CA0);
}

- (void)executor:(id)executor needsValueWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2219F18C8(executorCopy, requestCopy, "[%s] %s Received needsValue request %{private}@", "[%s] %s Received needsValue request %{sensitive}@", &unk_2835149D8, &unk_221BD2C88);
}

- (void)executor:(id)executor needsConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2219F18C8(executorCopy, requestCopy, "[%s] %s Received needsConfirmation request %{private}@", "[%s] %s Received needsConfirmation request %{sensitive}@", &unk_283514988, &unk_221BD2C78);
}

- (void)executor:(id)executor needsActionConfirmationWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2219F3E58(executorCopy, requestCopy, "[%s] %s Received needsActionConfirmation request %{private}@", "[%s] %s Received needsActionConfirmation request %{sensitive}@", &unk_283514938, &unk_221BD2C68);
}

- (void)executor:(id)executor needsContinueInAppWithRequest:(id)request
{
  executorCopy = executor;
  requestCopy = request;
  selfCopy = self;
  sub_2219F3E58(executorCopy, requestCopy, "[%s] %s Received needsContinueInAppWith request %{private}@", "[%s] %s Received needsContinueInAppWith request %{sensitive}@", &unk_283514910, &unk_221BD2C50);
}

@end