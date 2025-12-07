@interface _GCBluetoothDeviceDisconnectionRequest
- (_GCBluetoothDeviceDisconnectionRequest)init;
- (_GCBluetoothDeviceDisconnectionRequest)initWithDeviceIdentifier:(id)identifier;
- (void)performRequest:(id)request;
@end

@implementation _GCBluetoothDeviceDisconnectionRequest

- (_GCBluetoothDeviceDisconnectionRequest)init
{
  [(_GCBluetoothDeviceDisconnectionRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCBluetoothDeviceDisconnectionRequest)initWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9.receiver = self;
    v9.super_class = _GCBluetoothDeviceDisconnectionRequest;
    v6 = [(_GCBluetoothDeviceDisconnectionRequest *)&v9 init];
    objc_storeStrong(&v6->_deviceIdentifier, identifier);
    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)performRequest:(id)request
{
  v24 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  queue = [(_GCBluetoothDeviceDisconnectionRequest *)self queue];
  v6 = queue;
  if (queue)
  {
    v7 = queue;
  }

  else
  {
    v7 = dispatch_queue_create("_GCBluetoothDeviceDisconnectionRequest", 0);
  }

  v8 = v7;

  btAddress = [(_GCBluetoothDeviceIdentifier *)self->_deviceIdentifier btAddress];
  v10 = _gc_log_bluetooth(btAddress);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    deviceIdentifier = self->_deviceIdentifier;
    *buf = 138412290;
    v23 = deviceIdentifier;
    _os_log_debug_impl(&dword_1D2CD5000, v10, OS_LOG_TYPE_DEBUG, "Request disconnection of %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695D288]);
  [v11 setDiscoveryFlags:0x200000];
  [v11 setErrorHandler:&__block_literal_global_23];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57___GCBluetoothDeviceDisconnectionRequest_performRequest___block_invoke_52;
  v17[3] = &unk_1E841A398;
  v18 = v11;
  v19 = v8;
  v20 = btAddress;
  v21 = requestCopy;
  v12 = btAddress;
  v13 = v8;
  v14 = v11;
  v15 = requestCopy;
  [v14 activateWithCompletion:v17];
}

@end