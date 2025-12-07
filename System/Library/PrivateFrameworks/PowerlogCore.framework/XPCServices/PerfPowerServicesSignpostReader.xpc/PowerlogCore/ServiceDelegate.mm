@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = PLLogSignpostReader(connectionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A838(listenerCopy, connectionCopy, v7);
  }

  processIdentifier = [connectionCopy processIdentifier];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.PerfPowerServices.signpost-reading"];
  if (objc_opt_respondsToSelector() & 1) != 0 && (v10 = [v9 BOOLValue], (v10))
  {
    v11 = PLLogSignpostReader(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A938(processIdentifier, v11, v12, v13, v14, v15, v16, v17);
    }

    NSLog(@"In the listener of the Signpost Reader XPCService");
    v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___XPCSignpostReaderProtocol];
    [connectionCopy setExportedInterface:v18];

    v19 = objc_opt_new();
    [connectionCopy setExportedObject:v19];
    v20 = _os_feature_enabled_impl();
    if (v20)
    {
      v21 = PLLogSignpostReader(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A9A4(v21);
      }

      [connectionCopy setInterruptionHandler:&stru_1000143E8];
      [connectionCopy setInvalidationHandler:&stru_1000143E8];
    }

    [connectionCopy resume];
    v22 = 1;
  }

  else
  {
    v19 = PLLogSignpostReader([connectionCopy invalidate]);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000A8C0(processIdentifier, v19);
    }

    v22 = 0;
  }

  return v22;
}

@end