@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = [connectionCopy valueForEntitlement:@"com.apple.PerfPowerServices.signpost-reading"];
  if (objc_opt_respondsToSelector() & 1) != 0 && (v7 = [v6 BOOLValue], (v7))
  {
    v8 = PPSLogSignpostService(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000075A8(processIdentifier, v8);
    }

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSSignpostServiceDelegate];
    [connectionCopy setExportedInterface:v9];

    v10 = objc_opt_new();
    [connectionCopy setExportedObject:v10];
    [connectionCopy resume];
    v11 = 1;
  }

  else
  {
    v10 = PPSLogSignpostService([connectionCopy invalidate]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100007530(processIdentifier, v10);
    }

    v11 = 0;
  }

  return v11;
}

@end