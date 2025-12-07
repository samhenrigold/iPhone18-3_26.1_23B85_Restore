@interface NPKDoublePressDelegationAssertion
- (NPKDoublePressDelegationAssertion)initWithQueue:(id)queue;
- (NPKDoublePressDelegationAssertionDelegate)delegate;
- (void)_resyncState;
- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)source;
- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)d;
@end

@implementation NPKDoublePressDelegationAssertion

- (NPKDoublePressDelegationAssertion)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = NPKDoublePressDelegationAssertion;
  v3 = [(NPKTransientAssertion *)&v6 initWithQueue:queue];
  v4 = v3;
  if (v3)
  {
    [(NPKDoublePressDelegationAssertion *)v3 _resyncState];
  }

  return v4;
}

- (void)handleDelegatedDoublePressEventWithSource:(unint64_t)source
{
  v5 = pk_General_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Double-press delegation assertion: received delegated event", v10, 2u);
    }
  }

  delegate = [(NPKDoublePressDelegationAssertion *)self delegate];
  [delegate doublePressDelegationAssertionDidReceiveDelegatedDoublePressEvent:self authIntentSource:source];
}

- (void)handleTerminalAuthenticationRequestedForPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = pk_General_log(dCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Double-press delegation assertion: received terminal authentication request event", v10, 2u);
    }
  }

  delegate = [(NPKDoublePressDelegationAssertion *)self delegate];
  [delegate doublePressDelegationAssertion:self didReceiveTerminalAuthenticationRequestForPassWithUniqueID:dCopy];
}

- (void)_resyncState
{
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Double-press delegation assertion: resyncing state", v8, 2u);
    }
  }

  _remoteObjectProxy = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [_remoteObjectProxy setDoublePressDelegationRequested:1];
}

- (NPKDoublePressDelegationAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end