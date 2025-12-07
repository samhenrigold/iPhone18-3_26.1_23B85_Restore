@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = +[(ZhuGeSingletonService *)ZhuGeService];
  [connectionCopy setExportedObject:v6];

  if (isZhuGeInRestoreOS(v7, v8))
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ZhuGeRestoreLogProtocol];
    [connectionCopy setRemoteObjectInterface:v9];
  }

  [connectionCopy activate];
  v10 = +[(ZhuGeSingletonService *)ZhuGeLockerService];
  [v10 setXpcConnection:connectionCopy];

  v14 = 0;
  v11 = [ZhuGeSupportAssistant getSharedInstanceByName:@"OBJC_CLASS_$_ZhuGeLockerArmory" withError:&v14];
  v12 = v11;
  if (v11)
  {
    [v11 setXpcConnection:connectionCopy];
  }

  return 1;
}

@end