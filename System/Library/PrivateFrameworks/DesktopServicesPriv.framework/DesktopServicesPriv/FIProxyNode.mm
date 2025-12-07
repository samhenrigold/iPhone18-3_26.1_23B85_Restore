@interface FIProxyNode
- (FIProxyNode)initWithSubject:(id)subject;
- (id)nodesToObserve;
- (void)dispatchEvent:(id)event forObserver:(id)observer;
@end

@implementation FIProxyNode

- (FIProxyNode)initWithSubject:(id)subject
{
  subjectCopy = subject;
  v8.receiver = self;
  v8.super_class = FIProxyNode;
  v5 = [(FICustomNode *)&v8 init];
  subjectNode = v5->_subjectNode;
  v5->_subjectNode = subjectCopy;

  return v5;
}

- (id)nodesToObserve
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = self->_subjectNode;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (void)dispatchEvent:(id)event forObserver:(id)observer
{
  observerCopy = observer;
  NodeEventFromNodeEventRef(&v13, event);
  obj = self;
  v12 = v13;
  TNodeEventPtr::operator->(&v13);
  v7 = TNodeFromFINode(obj);
  v8 = *(TNodeEventPtr::operator->(&v12) + 64);
  v16 = v8;
  if (v8)
  {
    TDSNotifier::AddPtrReference(v8);
  }

  v9 = *v8;
  v10 = *(v8 + 1);
  v17 = v9;
  v18 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  TNodePtr::TNodePtr(&v15, v7);
  TNodePtr::TNodePtr(&v14, v7);
  TDSNotifier::Make();
}

@end