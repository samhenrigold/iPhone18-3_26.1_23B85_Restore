@interface NPKTransientPassAssertion
- (NPKTransientPassAssertion)initWithPassWithUniqueID:(id)d;
- (void)_resyncState;
- (void)setDisableCardSelection:(BOOL)selection;
- (void)setRequestServiceMode:(BOOL)mode;
@end

@implementation NPKTransientPassAssertion

- (NPKTransientPassAssertion)initWithPassWithUniqueID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NPKTransientPassAssertion;
  v6 = [(NPKTransientAssertion *)&v9 initWithQueue:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uniqueID, d);
    [(NPKTransientPassAssertion *)v7 _resyncState];
  }

  return v7;
}

- (void)setRequestServiceMode:(BOOL)mode
{
  if (self->_requestServiceMode != mode)
  {
    modeCopy = mode;
    self->_requestServiceMode = mode;
    _remoteObjectProxy = [(NPKTransientAssertion *)self _remoteObjectProxy];
    [_remoteObjectProxy setServiceModeRequested:modeCopy];
  }
}

- (void)setDisableCardSelection:(BOOL)selection
{
  if (self->_disableCardSelection != selection)
  {
    selectionCopy = selection;
    self->_disableCardSelection = selection;
    _remoteObjectProxy = [(NPKTransientAssertion *)self _remoteObjectProxy];
    [_remoteObjectProxy setDisableCardSelection:selectionCopy];
  }
}

- (void)_resyncState
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = pk_General_log(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = pk_General_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 138412290;
      *&v11[4] = objc_opt_class();
      v7 = *&v11[4];
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@: Transient pass assertion: resyncing state", v11, 0xCu);
    }
  }

  v8 = [(NPKTransientAssertion *)self _remoteObjectProxy:*v11];
  [v8 setTransientPassUniqueID:self->_uniqueID];

  _remoteObjectProxy = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [_remoteObjectProxy setServiceModeRequested:self->_requestServiceMode];

  _remoteObjectProxy2 = [(NPKTransientAssertion *)self _remoteObjectProxy];
  [_remoteObjectProxy2 setDisableCardSelection:self->_disableCardSelection];
}

@end