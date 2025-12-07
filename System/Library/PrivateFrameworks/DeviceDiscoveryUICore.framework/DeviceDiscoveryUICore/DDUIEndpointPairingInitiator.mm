@interface DDUIEndpointPairingInitiator
- (id)initForDeviceTypes:(unsigned int)types withTransport:(id)transport;
- (id)pairingSessionForDevice:(id)device bundleID:(id)d serviceIdentifier:(id)identifier error:(id *)error;
- (void)beginWithCompletion:(id)completion;
- (void)invalidate;
- (void)setAvailableDevicesChangedHandler:(id)handler;
@end

@implementation DDUIEndpointPairingInitiator

- (id)initForDeviceTypes:(unsigned int)types withTransport:(id)transport
{
  v20 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  v13.receiver = self;
  v13.super_class = DDUIEndpointPairingInitiator;
  v8 = [(DDUIEndpointPairingInitiator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_acceptedDeviceTypes = types;
    objc_storeStrong(&v8->_transport, transport);
    v10 = _DDUICoreLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = DDUIDeviceTypeString(types);
      *buf = 134218498;
      v15 = v9;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = transportCopy;
      _os_log_impl(&dword_230EF9000, v10, OS_LOG_TYPE_DEFAULT, "[DDUIEndpointPairingInitiator init] {self: %p, deviceTypes: %@, transport: %@}", buf, 0x20u);
    }
  }

  return v9;
}

- (void)setAvailableDevicesChangedHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_availableDevicesChangedHandler != handlerCopy)
  {
    v5 = _DDUICoreLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = _Block_copy(handlerCopy);
      v9 = 134218242;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator set devices changed handler {self: %p, availableDevicesChangedHandler: %@}", &v9, 0x16u);
    }

    v7 = _Block_copy(handlerCopy);
    availableDevicesChangedHandler = self->_availableDevicesChangedHandler;
    self->_availableDevicesChangedHandler = v7;

    [(DDUIEndpointPairingBrowsingTransport *)self->_transport setAvailableDevicesChangedHandler:handlerCopy];
  }
}

- (void)beginWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _DDUICoreLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(completionCopy);
    v7 = 134218242;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_230EF9000, v5, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator beginning {self: %p, completion: %@}", &v7, 0x16u);
  }

  [(DDUIEndpointPairingBrowsingTransport *)self->_transport activateForDeviceTypes:self->_acceptedDeviceTypes withCompletion:completionCopy];
}

- (id)pairingSessionForDevice:(id)device bundleID:(id)d serviceIdentifier:(id)identifier error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  transport = self->_transport;
  v21 = 0;
  v12 = [(DDUIEndpointPairingBrowsingTransport *)transport sessionForDevice:deviceCopy bundleID:d serviceIdentifier:identifier error:&v21];
  v13 = v21;
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v19 = _DDUICoreLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v24 = 2112;
      v25 = deviceCopy;
      _os_log_impl(&dword_230EF9000, v19, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator creating pairing session {self: %p, device: %@}", buf, 0x16u);
    }

    v18 = [[DDUIEndpointPairingSession alloc] initWithTransportSession:v12 mode:0];
  }

  else
  {
    if (error)
    {
      v16 = v13;
      *error = v14;
    }

    v17 = _DDUICoreLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      selfCopy2 = self;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = deviceCopy;
      _os_log_impl(&dword_230EF9000, v17, OS_LOG_TYPE_DEFAULT, "DDUIEndpointPairingInitiator failed to creater a pairing session {self: %p, sessionCreationError: %@, device: %@}", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)invalidate
{
  [(DDUIEndpointPairingBrowsingTransport *)self->_transport invalidate];
  transport = self->_transport;
  self->_transport = 0;
}

@end