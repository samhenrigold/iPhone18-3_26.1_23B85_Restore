@interface RSDRemoteCoreDeviceDevice
- (RSDRemoteCoreDeviceDevice)initWithClientEndpoint:(id)endpoint controlPeer:(id)peer interfaceName:(const char *)name connectTimeout:(unsigned int)timeout;
- (RSDRemoteCoreDeviceDevice)initWithGeneratedName;
- (RSDRemoteCoreDeviceDevice)initWithServerListener:(id)listener controlPeer:(id)peer interfaceName:(const char *)name interfaceIndex:(unsigned int)index connectTimeout:(unsigned int)timeout;
- (const)local_address;
- (const)remote_address;
- (unsigned)type;
- (void)attach;
- (void)cancelListener;
- (void)connected;
- (void)dealloc;
- (void)disconnect;
- (void)needsConnect;
@end

@implementation RSDRemoteCoreDeviceDevice

- (unsigned)type
{
  client_endpoint = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];

  if (client_endpoint)
  {
    return 10;
  }

  else
  {
    return 13;
  }
}

- (RSDRemoteCoreDeviceDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C14++;
  snprintf(__str, 0x20uLL, "coredevice-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteCoreDeviceDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (RSDRemoteCoreDeviceDevice)initWithClientEndpoint:(id)endpoint controlPeer:(id)peer interfaceName:(const char *)name connectTimeout:(unsigned int)timeout
{
  v6 = *&timeout;
  endpointCopy = endpoint;
  peerCopy = peer;
  initWithGeneratedName = [(RSDRemoteCoreDeviceDevice *)self initWithGeneratedName];
  v13 = initWithGeneratedName;
  if (!initWithGeneratedName)
  {
    goto LABEL_7;
  }

  [(RSDRemoteCoreDeviceDevice *)initWithGeneratedName setControl_peer:peerCopy];
  [(RSDRemoteCoreDeviceDevice *)v13 setClient_endpoint:endpointCopy];
  [(RSDRemoteCoreDeviceDevice *)v13 setIf_name:strdup(name)];
  [(RSDRemoteCoreDeviceDevice *)v13 setConnect_timeout:v6];
  client_endpoint = [(RSDRemoteCoreDeviceDevice *)v13 client_endpoint];
  if (client_endpoint)
  {
    control_peer = [(RSDRemoteCoreDeviceDevice *)v13 control_peer];
    if (control_peer)
    {
      v16 = control_peer;
      if_name = [(RSDRemoteCoreDeviceDevice *)v13 if_name];

      if (if_name)
      {
        client_endpoint = v13;
        goto LABEL_8;
      }
    }

    else
    {
    }

LABEL_7:
    client_endpoint = 0;
  }

LABEL_8:

  return client_endpoint;
}

- (RSDRemoteCoreDeviceDevice)initWithServerListener:(id)listener controlPeer:(id)peer interfaceName:(const char *)name interfaceIndex:(unsigned int)index connectTimeout:(unsigned int)timeout
{
  v7 = *&timeout;
  v8 = *&index;
  listenerCopy = listener;
  peerCopy = peer;
  initWithGeneratedName = [(RSDRemoteCoreDeviceDevice *)self initWithGeneratedName];
  v15 = initWithGeneratedName;
  if (!initWithGeneratedName)
  {
    goto LABEL_8;
  }

  [(RSDRemoteCoreDeviceDevice *)initWithGeneratedName setControl_peer:peerCopy];
  [(RSDRemoteCoreDeviceDevice *)v15 setServer_listener:listenerCopy];
  [(RSDRemoteCoreDeviceDevice *)v15 setIf_name:strdup(name)];
  [(RSDRemoteCoreDeviceDevice *)v15 setIf_index:v8];
  [(RSDRemoteCoreDeviceDevice *)v15 setConnect_timeout:v7];
  server_listener = [(RSDRemoteCoreDeviceDevice *)v15 server_listener];
  if (server_listener)
  {
    control_peer = [(RSDRemoteCoreDeviceDevice *)v15 control_peer];
    if (control_peer && [(RSDRemoteCoreDeviceDevice *)v15 if_name])
    {
      if_index = [(RSDRemoteCoreDeviceDevice *)v15 if_index];

      if (if_index)
      {
        server_listener = v15;
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    server_listener = 0;
  }

LABEL_9:

  return server_listener;
}

- (void)attach
{
  [(RSDRemoteDevice *)self setBackendProperty:"InterfaceName" withString:[(RSDRemoteCoreDeviceDevice *)self if_name]];
  if ([(RSDRemoteCoreDeviceDevice *)self if_index])
  {
    [(RSDRemoteDevice *)self setBackendProperty:"InterfaceIndex" withUint:[(RSDRemoteCoreDeviceDevice *)self if_index]];
  }

  [qword_100064330 addObject:self];
  v3.receiver = self;
  v3.super_class = RSDRemoteCoreDeviceDevice;
  [(RSDRemoteDevice *)&v3 attach];
}

- (void)disconnect
{
  v5.receiver = self;
  v5.super_class = RSDRemoteCoreDeviceDevice;
  [(RSDRemoteDevice *)&v5 disconnect];
  client_connection = [(RSDRemoteCoreDeviceDevice *)self client_connection];

  if (client_connection)
  {
    client_connection2 = [(RSDRemoteCoreDeviceDevice *)self client_connection];
    nw_connection_cancel(client_connection2);

    [(RSDRemoteCoreDeviceDevice *)self setClient_connection:0];
  }

  [qword_100064330 removeObject:self];
}

- (void)cancelListener
{
  server_listener = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (server_listener)
  {
    server_listener2 = [(RSDRemoteCoreDeviceDevice *)self server_listener];
    nw_listener_cancel(server_listener2);

    [(RSDRemoteCoreDeviceDevice *)self setServer_listener:0];
  }
}

- (void)dealloc
{
  server_listener = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (server_listener)
  {
    server_listener2 = [(RSDRemoteCoreDeviceDevice *)self server_listener];
    nw_listener_cancel(server_listener2);
  }

  free([(RSDRemoteCoreDeviceDevice *)self if_name]);
  [(RSDRemoteCoreDeviceDevice *)self setIf_name:0];
  [(RSDRemoteCoreDeviceDevice *)self setControl_peer:0];
  [(RSDRemoteCoreDeviceDevice *)self setClient_endpoint:0];
  [(RSDRemoteCoreDeviceDevice *)self setServer_listener:0];
  v5.receiver = self;
  v5.super_class = RSDRemoteCoreDeviceDevice;
  [(RSDRemoteDevice *)&v5 dealloc];
}

- (void)connected
{
  connection = [(RSDRemoteDevice *)self connection];
  v4 = xpc_remote_connection_copy_remote_endpoint();
  [(RSDRemoteCoreDeviceDevice *)self setAddress_endpoint:v4];

  address_endpoint = [(RSDRemoteCoreDeviceDevice *)self address_endpoint];

  if (!address_endpoint)
  {
    v7 = sub_100004B08(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100038450();
    }
  }
}

- (void)needsConnect
{
  v3 = sub_100004B08(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", &v17, 0xCu);
  }

  server_listener = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (server_listener)
  {
    client_connection = [(RSDRemoteCoreDeviceDevice *)self client_connection];

    v7 = sub_100004B08(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (client_connection)
    {
      if (v8)
      {
        v17 = 138543362;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> server using established client connection", &v17, 0xCu);
      }

      client_connection2 = [(RSDRemoteCoreDeviceDevice *)self client_connection];
      [(RSDRemoteCoreDeviceDevice *)self setClient_connection:0];
      if (client_connection2)
      {
LABEL_8:
        xpc_remote_connection_get_failsafe_version_flags();
        v10 = xpc_remote_connection_create_with_nw_connection();
LABEL_16:
        [(RSDRemoteDevice *)self connect:v10];

LABEL_17:
        return;
      }

LABEL_15:
      v10 = 0;
      goto LABEL_16;
    }

    if (v8)
    {
      v17 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> server waiting for connection from client", &v17, 0xCu);
    }
  }

  else
  {
    client_endpoint = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];

    v13 = sub_100004B08(v12);
    v7 = v13;
    if (client_endpoint)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@> client connecting to remote remoted", &v17, 0xCu);
      }

      v17 = 0;
      v14 = sub_100004E28([(RSDRemoteCoreDeviceDevice *)self if_name], 2, &v17);
      v10 = v14;
      if (!v14 || !v17)
      {
        v16 = sub_100004B08(v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          sub_100038498();
        }

        goto LABEL_17;
      }

      [(RSDRemoteCoreDeviceDevice *)self setIf_index:?];
      client_endpoint2 = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];
      client_connection2 = nw_connection_create(client_endpoint2, v10);

      if (client_connection2)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1000384CC();
    }
  }
}

- (const)local_address
{
  p_local_address_storage = &self->local_address_storage;
  if (!self->local_address_storage.__u6_addr32[0] && !self->local_address_storage.__u6_addr32[1] && !self->local_address_storage.__u6_addr32[2] && !self->local_address_storage.__u6_addr32[3])
  {
    v3 = sub_1000244F8([(RSDRemoteCoreDeviceDevice *)self if_name], p_local_address_storage, 0);
    if (v3)
    {
      v4 = sub_100004B08(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000385EC();
      }
    }
  }

  return p_local_address_storage;
}

- (const)remote_address
{
  address_endpoint = [(RSDRemoteCoreDeviceDevice *)self address_endpoint];
  address = nw_endpoint_get_address(address_endpoint);

  return &address->sa_data[6];
}

@end