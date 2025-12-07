@interface WKSOSecretDelegate
- (WKSOSecretDelegate)initWithSession:(void *)session;
- (id).cxx_construct;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewDidClose:(id)close;
@end

@implementation WKSOSecretDelegate

- (WKSOSecretDelegate)initWithSession:(void *)session
{
  v11.receiver = self;
  v11.super_class = WKSOSecretDelegate;
  v5 = [(WKSOSecretDelegate *)&v11 init];
  if (v5)
  {
    v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(session + 1, v4);
    v8 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v6);
    m_ptr = v5->_weakSession.m_controlBlock.m_ptr;
    v5->_weakSession.m_controlBlock.m_ptr = v8;
    if (m_ptr)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(m_ptr, v7);
    }

    v5->_weakSession.m_objectOfCorrectType.m_ptr = session;
    v5->_isFirstNavigation = 1;
  }

  return v5;
}

- (void)webViewDidClose:(id)close
{
  m_ptr = self->_weakSession.m_controlBlock.m_ptr;
  if (m_ptr)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v7, m_ptr, self->_weakSession.m_objectOfCorrectType.m_ptr);
    v5 = v7;
    if (v7)
    {
      WebKit::PopUpSOAuthorizationSession::close(v7, close);

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v5 + 1, v6);
    }
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  if (self->_isFirstNavigation)
  {
    v5 = 0;
    self->_isFirstNavigation = 0;
  }

  else
  {
    v5 = 3;
  }

  (*(handler + 2))(handler, v5);
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  m_ptr = self->_weakSession.m_controlBlock.m_ptr;
  if (m_ptr)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v8, m_ptr, self->_weakSession.m_objectOfCorrectType.m_ptr);
    v6 = v8;
    if (v8)
    {
      WebKit::PopUpSOAuthorizationSession::close(v8, view);

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::SOAuthorizationSession,(WTF::DestructionThread)2>::deref(v6 + 1, v7);
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end