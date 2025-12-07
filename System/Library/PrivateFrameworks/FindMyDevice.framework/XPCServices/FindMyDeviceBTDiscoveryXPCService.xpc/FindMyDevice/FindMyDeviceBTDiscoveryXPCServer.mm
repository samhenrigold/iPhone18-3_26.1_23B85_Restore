@interface FindMyDeviceBTDiscoveryXPCServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation FindMyDeviceBTDiscoveryXPCServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = sub_1000012D0(connectionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received new XPC connection %@", &v15, 0xCu);
  }

  v6 = [connectionCopy valueForEntitlement:@"com.apple.icloud.FindMyDevice.FindMyDeviceBTDiscoveryXPCService.access"];
  v7 = v6;
  if (v6 && (v6 = [&__kCFBooleanTrue isEqual:v6], (v6 & 1) != 0))
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceBTDiscoveryDelegateXPCInterface];
    [connectionCopy setRemoteObjectInterface:v8];
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___FindMyDeviceBTDiscoveryXPCInterface];
    [connectionCopy setExportedInterface:v9];
    remoteObjectProxy = [connectionCopy remoteObjectProxy];
    v11 = objc_alloc_init(FMDBluetoothDiscovery);
    v12 = [[FMDDeviceDiscoveringXPCAdapter alloc] initWithDiscovery:v11 delegate:remoteObjectProxy];
    [connectionCopy setExportedObject:v12];
    [connectionCopy resume];

    v13 = 1;
  }

  else
  {
    v8 = sub_1000012D0(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100003E78(v8);
    }

    v13 = 0;
  }

  return v13;
}

@end