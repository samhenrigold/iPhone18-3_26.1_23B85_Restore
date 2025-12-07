@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = PPSLogReaderService(connectionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100001478(listenerCopy, connectionCopy, v7);
  }

  processIdentifier = [connectionCopy processIdentifier];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.PerfPowerServices.data-read-xpc"];
  if (objc_opt_respondsToSelector() & 1) != 0 && (v10 = [v9 BOOLValue], (v10))
  {
    v11 = PPSLogReaderService(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100001578(processIdentifier, v11);
    }

    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PerfPowerServicesReaderProtocol];
    [connectionCopy setExportedInterface:v12];

    [connectionCopy setInterruptionHandler:&stru_100004200];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100001094;
    v30[3] = &unk_100004220;
    v31 = processIdentifier;
    [connectionCopy setInvalidationHandler:v30];
    v13 = objc_opt_new();
    [connectionCopy setExportedObject:v13];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [NSSet setWithObjects:v14, v15, v16, v17, v18, objc_opt_class(), 0];
    exportedInterface = [connectionCopy exportedInterface];
    [exportedInterface setClasses:v19 forSelector:"dataForRequest:withReply:" argumentIndex:0 ofReply:0];

    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [NSSet setWithObjects:v21, v22, v23, objc_opt_class(), 0];
    v25 = [NSSet setWithObjects:objc_opt_class(), 0];
    exportedInterface2 = [connectionCopy exportedInterface];
    v27 = 1;
    [exportedInterface2 setClasses:v24 forSelector:"dataForRequest:withReply:" argumentIndex:0 ofReply:1];

    exportedInterface3 = [connectionCopy exportedInterface];
    [exportedInterface3 setClasses:v25 forSelector:"dataForRequest:withReply:" argumentIndex:1 ofReply:1];

    [connectionCopy resume];
  }

  else
  {
    v13 = PPSLogReaderService([connectionCopy invalidate]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100001500(processIdentifier, v13);
    }

    v27 = 0;
  }

  return v27;
}

@end