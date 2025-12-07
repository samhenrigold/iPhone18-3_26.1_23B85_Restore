@interface TRDeviceSetupBrowser
- (TRDeviceSetupBrowser)init;
- (TRDeviceSetupBrowserDelegate)delegate;
- (void)browser:(id)browser didStartTransferWithSendDataHandler:(id)handler;
- (void)browserDidChangeState:(id)state;
- (void)browserDidDisconnect:(id)disconnect;
@end

@implementation TRDeviceSetupBrowser

- (TRDeviceSetupBrowser)init
{
  v6.receiver = self;
  v6.super_class = TRDeviceSetupBrowser;
  v2 = [(TRDeviceSetupBrowser *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TRTransferBrowser);
    transferBrowser = v2->_transferBrowser;
    v2->_transferBrowser = v3;

    [(TRTransferBrowser *)v2->_transferBrowser setDelegate:v2];
  }

  return v2;
}

- (void)browserDidChangeState:(id)state
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 deviceSetupBrowserDidChangeState:self];
  }
}

- (void)browser:(id)browser didStartTransferWithSendDataHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  browserCopy = browser;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (self->_peripheral)
  {
    if (_TRLogEnabled == 1)
    {
      v9 = TRLogHandle(handlerCopy);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        peripheral = self->_peripheral;
        v16 = 138412290;
        v17 = peripheral;
        _os_log_impl(&dword_26F2A2000, v9, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupBrowser] Already have peripheral: %@", &v16, 0xCu);
      }
    }

    v8[2](v8, 0);
  }

  else
  {
    v11 = objc_alloc_init(TRDeviceSetupPeripheral);
    v12 = self->_peripheral;
    self->_peripheral = v11;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 deviceSetupBrowser:self didFindPeripheral:self->_peripheral];
    }

    [(TRDeviceSetupPeripheral *)self->_peripheral _didTapWithSendDataHandler:v8];
  }
}

- (void)browserDidDisconnect:(id)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = disconnectCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(disconnectCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      peripheral = self->_peripheral;
      v13 = 138412290;
      v14 = peripheral;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "[TRDeviceSetupBrowser] Peripheral disconnected: %@", &v13, 0xCu);
    }
  }

  v8 = self->_peripheral;
  [(TRDeviceSetupPeripheral *)self->_peripheral _didDisconnect];
  v9 = self->_peripheral;
  self->_peripheral = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 deviceSetupBrowser:self didRemovePeripheral:v8];
  }
}

- (TRDeviceSetupBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end