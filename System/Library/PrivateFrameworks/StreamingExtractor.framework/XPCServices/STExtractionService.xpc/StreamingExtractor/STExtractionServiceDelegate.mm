@interface STExtractionServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation STExtractionServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = proc_pidpath(processIdentifier, buffer, 0x1000u);
  if (v6 < 1)
  {
    v9 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", processIdentifier];
  }

  else
  {
    v7 = [[NSString alloc] initWithBytes:buffer length:v6 encoding:4];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [NSString stringWithFormat:@"%@ (pid %d)", lastPathComponent, processIdentifier];
  }

  [connectionCopy processIdentifier];
  memset(buffer, 0, 32);
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  v10 = [connectionCopy valueForEntitlement:@"com.apple.private.STRemoteExtractor.privileged"];
  if ([v10 BOOLValue])
  {

    goto LABEL_9;
  }

  v13 = [connectionCopy valueForEntitlement:@"com.apple.private.STRemoteExtractor"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
LABEL_9:
    v15 = sub_100000D08(v11, v12);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:

      v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionServiceProtocol];
      [connectionCopy setExportedInterface:v20];

      v21 = [[STExtractionService alloc] initForClient:v9 connection:connectionCopy];
      [connectionCopy setExportedObject:v21];
      v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionOriginatorProtocol];
      [connectionCopy setRemoteObjectInterface:v22];

      [v21 setXpcConnection:connectionCopy];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100001424;
      v30[3] = &unk_100008370;
      v23 = v9;
      v31 = v23;
      v24 = v21;
      v32 = v24;
      [connectionCopy setInterruptionHandler:v30];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100001504;
      v27[3] = &unk_100008370;
      v28 = v23;
      v29 = v24;
      v25 = v24;
      [connectionCopy setInvalidationHandler:v27];
      [connectionCopy resume];

      v19 = 1;
      goto LABEL_29;
    }

    v16 = qos_class_self();
    if (v16 > 20)
    {
      switch(v16)
      {
        case 0x15:
          v17 = @"DEFAULT";
          goto LABEL_27;
        case 0x21:
          v17 = @"USER_INTERACTIVE";
          goto LABEL_27;
        case 0x19:
          v17 = @"USER_INITIATED";
          goto LABEL_27;
      }
    }

    else
    {
      switch(v16)
      {
        case 0:
          v17 = @"UNSPECIFIED";
          goto LABEL_27;
        case 9:
          v17 = @"BACKGROUND";
          goto LABEL_27;
        case 0x11:
          v17 = @"UTILITY";
LABEL_27:
          *buf = 136446722;
          v34 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
          v35 = 2112;
          v36 = v9;
          v37 = 2112;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %@ at qos %@", buf, 0x20u);

          goto LABEL_28;
      }
    }

    v17 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v16];
    goto LABEL_27;
  }

  v18 = sub_100000D08(v11, v12);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100003690(v9, v18);
  }

  [connectionCopy invalidate];
  v19 = 0;
LABEL_29:

  return v19;
}

@end