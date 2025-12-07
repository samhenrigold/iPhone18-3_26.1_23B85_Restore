@interface APKRemoteInspectorCSSAgent
- (APKRemoteInspectorCSSAgent)initWithDispatcher:(id)dispatcher;
- (APKRemoteInspectorCSSAgentDelegate)delegate;
- (void)getComputedStyleForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id;
- (void)getInlineStylesForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id;
@end

@implementation APKRemoteInspectorCSSAgent

- (APKRemoteInspectorCSSAgent)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorCSSAgent;
  v6 = [(APKRemoteInspectorCSSAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, dispatcher);
  }

  return v7;
}

- (void)getInlineStylesForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id
{
  v5 = *&id;
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  delegate = [(APKRemoteInspectorCSSAgent *)self delegate];

  if (delegate)
  {
    delegate2 = [(APKRemoteInspectorCSSAgent *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__APKRemoteInspectorCSSAgent_getInlineStylesForNodeWithErrorCallback_successCallback_nodeId___block_invoke;
    v12[3] = &unk_278C5DD20;
    v13 = successCallbackCopy;
    v14 = callbackCopy;
    [delegate2 CSSAgent:self onInlineStylesRequestWithIdentifier:v5 completion:v12];
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, @"Not supported");
  }
}

void __93__APKRemoteInspectorCSSAgent_getInlineStylesForNodeWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 32) + 16))();
    v7 = v6;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [a3 localizedDescription];
    (*(v8 + 16))(v8, v9);
  }
}

- (void)getComputedStyleForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id
{
  v5 = *&id;
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  delegate = [(APKRemoteInspectorCSSAgent *)self delegate];

  if (delegate)
  {
    delegate2 = [(APKRemoteInspectorCSSAgent *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__APKRemoteInspectorCSSAgent_getComputedStyleForNodeWithErrorCallback_successCallback_nodeId___block_invoke;
    v12[3] = &unk_278C5DD48;
    v13 = successCallbackCopy;
    v14 = callbackCopy;
    [delegate2 CSSAgent:self onComputedStylesRequestWithIdentifier:v5 completion:v12];
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, @"Not supported");
  }
}

void __94__APKRemoteInspectorCSSAgent_getComputedStyleForNodeWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [a3 localizedDescription];
    (*(v5 + 16))(v5, v6);
  }
}

- (APKRemoteInspectorCSSAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end