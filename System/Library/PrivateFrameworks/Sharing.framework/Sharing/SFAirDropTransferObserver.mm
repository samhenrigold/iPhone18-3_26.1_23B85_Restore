@interface SFAirDropTransferObserver
- (SFAirDropTransferObserver)init;
- (SFAirDropTransferObserverDelegate)delegate;
- (void)activate;
- (void)invalidate;
- (void)removedTransfer:(id)transfer;
- (void)updatedTransfer:(id)transfer;
@end

@implementation SFAirDropTransferObserver

void __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transferIdentifierToTransfer];
  v5 = [v3 transferIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v8 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke_2;
    v10[3] = &unk_1E788A680;
    v11 = v6;
    v12 = v3;
    [v8 _getRemoteObjectProxyOnQueue:v10];

    v9 = v11;
  }

  else
  {
    v9 = airdrop_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke_cold_1(v3, a1, v9);
    }
  }
}

- (SFAirDropTransferObserver)init
{
  v7.receiver = self;
  v7.super_class = SFAirDropTransferObserver;
  v2 = [(SFAirDropTransferObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_isModern = 0;
    v4 = objc_alloc_init(_SFAirDropTransferObserver);
    legacyObserver = v3->_legacyObserver;
    v3->_legacyObserver = v4;

    [(_SFAirDropTransferObserver *)v3->_legacyObserver setDelegate:v3];
  }

  return v3;
}

- (void)activate
{
  if ([(SFAirDropTransferObserver *)self isModern])
  {
    [(SFAirDropTransferObserver *)self modernObserver];
  }

  else
  {
    [(SFAirDropTransferObserver *)self legacyObserver];
  }
  v3 = ;
  [v3 activate];
}

- (void)invalidate
{
  if ([(SFAirDropTransferObserver *)self isModern])
  {
    [(SFAirDropTransferObserver *)self modernObserver];
  }

  else
  {
    [(SFAirDropTransferObserver *)self legacyObserver];
  }
  v3 = ;
  [v3 activate];
}

- (void)updatedTransfer:(id)transfer
{
  transferCopy = transfer;
  delegate = [(SFAirDropTransferObserver *)self delegate];
  [delegate updatedTransfer:transferCopy];
}

- (void)removedTransfer:(id)transfer
{
  transferCopy = transfer;
  delegate = [(SFAirDropTransferObserver *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SFAirDropTransferObserver *)self delegate];
    [delegate2 removedTransfer:transferCopy];
  }
}

- (SFAirDropTransferObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __61___SFAirDropTransferObserver_updateActionHandlersOnTransfer___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a2 + 40));
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = WeakRetained;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Unable to trigger action %@ for unknown transfer: %@", &v6, 0x16u);
}

@end