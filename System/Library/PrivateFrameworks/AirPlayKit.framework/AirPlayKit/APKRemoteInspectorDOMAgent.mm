@interface APKRemoteInspectorDOMAgent
- (APKRemoteInspectorDOMAgent)initWithDispatcher:(id)dispatcher;
- (APKRemoteInspectorDOMAgentDelegate)delegate;
- (void)getAttributesWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id;
- (void)getDocumentWithErrorCallback:(id)callback successCallback:(id)successCallback;
- (void)getOuterHTMLWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id;
- (void)requestChildNodesWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id depth:(int *)depth;
@end

@implementation APKRemoteInspectorDOMAgent

- (APKRemoteInspectorDOMAgent)initWithDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  v9.receiver = self;
  v9.super_class = APKRemoteInspectorDOMAgent;
  v6 = [(APKRemoteInspectorDOMAgent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatcher, dispatcher);
  }

  return v7;
}

- (void)getDocumentWithErrorCallback:(id)callback successCallback:(id)successCallback
{
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  delegate = [(APKRemoteInspectorDOMAgent *)self delegate];

  if (delegate)
  {
    delegate2 = [(APKRemoteInspectorDOMAgent *)self delegate];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __75__APKRemoteInspectorDOMAgent_getDocumentWithErrorCallback_successCallback___block_invoke;
    v10[3] = &unk_278C5DD90;
    v11 = successCallbackCopy;
    v12 = callbackCopy;
    [delegate2 DOMAgent:self onDocumentWithCompletion:v10];
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, @"Not supported");
  }
}

void __75__APKRemoteInspectorDOMAgent_getDocumentWithErrorCallback_successCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = v5;
  if (v5)
  {
    [v5 setFrameId:@"AirPlayKit.DisplayTree"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = [a3 localizedDescription];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)getOuterHTMLWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id
{
  v5 = *&id;
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  delegate = [(APKRemoteInspectorDOMAgent *)self delegate];

  if (delegate)
  {
    delegate2 = [(APKRemoteInspectorDOMAgent *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__APKRemoteInspectorDOMAgent_getOuterHTMLWithErrorCallback_successCallback_nodeId___block_invoke;
    v12[3] = &unk_278C5DDB8;
    v13 = successCallbackCopy;
    v14 = callbackCopy;
    [delegate2 DOMAgent:self onOuterHTMLRequestWithIdentifier:v5 completion:v12];
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, @"Not supported");
  }
}

void __83__APKRemoteInspectorDOMAgent_getOuterHTMLWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)getAttributesWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id
{
  v5 = *&id;
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  delegate = [(APKRemoteInspectorDOMAgent *)self delegate];

  if (delegate)
  {
    delegate2 = [(APKRemoteInspectorDOMAgent *)self delegate];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__APKRemoteInspectorDOMAgent_getAttributesWithErrorCallback_successCallback_nodeId___block_invoke;
    v12[3] = &unk_278C5DD48;
    v13 = successCallbackCopy;
    v14 = callbackCopy;
    [delegate2 DOMAgent:self onAttributesRequestWithIdentifier:v5 completion:v12];
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, @"Not supported");
  }
}

void __84__APKRemoteInspectorDOMAgent_getAttributesWithErrorCallback_successCallback_nodeId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)requestChildNodesWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id depth:(int *)depth
{
  v7 = *&id;
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  delegate = [(APKRemoteInspectorDOMAgent *)self delegate];

  if (delegate)
  {
    if (depth)
    {
      v13 = *depth;
    }

    else
    {
      v13 = 3;
    }

    objc_initWeak(&location, self);
    delegate2 = [(APKRemoteInspectorDOMAgent *)self delegate];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __94__APKRemoteInspectorDOMAgent_requestChildNodesWithErrorCallback_successCallback_nodeId_depth___block_invoke;
    v15[3] = &unk_278C5DDE0;
    objc_copyWeak(&v18, &location);
    v19 = v7;
    v16 = successCallbackCopy;
    v17 = callbackCopy;
    [delegate2 DOMAgent:self onChildNodeRequestWithParentIdentifier:v7 depth:v13 completion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, @"Not supported");
  }
}

void __94__APKRemoteInspectorDOMAgent_requestChildNodesWithErrorCallback_successCallback_nodeId_depth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [WeakRetained dispatcher];
    [v6 setChildNodesWithParentId:*(a1 + 56) nodes:v9];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [a3 localizedDescription];
    (*(v7 + 16))(v7, v8);
  }
}

- (APKRemoteInspectorDOMAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end